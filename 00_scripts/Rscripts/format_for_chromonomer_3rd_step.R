#this R script uses the file from the map (LG female pos)
#it outputs the file formatted for chromonomer in .tsv tab-delimited file with 3 columns
#LG, marker_id, female_pos

argv <- commandArgs(T)
MAP1 <- argv[1]
INDIR <-argv[2]
CHROMODIR <-argv[3]

map<-read.table(paste0(INDIR, MAP1), header=T, stringsAsFactors=F)
map_LG_id_pos<-map[,c(1,2,4)]
head (map_LG_id_pos)
write.table (map_LG_id_pos, paste0(CHROMODIR, MAP1,".tsv"), col.names=F, row.names=F, quote=F, sep="\t")

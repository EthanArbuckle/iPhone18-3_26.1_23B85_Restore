@interface EDAMNoteMetadata
+ (id)structFields;
@end

@implementation EDAMNoteMetadata

+ (id)structFields
{
  v20[12] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_600;
  if (!structFields_structFields_600)
  {
    v19 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"guid"];
    v20[0] = v19;
    v18 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"title"];
    v20[1] = v18;
    v17 = [FATField fieldWithIndex:5 type:8 optional:1 name:@"contentLength"];
    v20[2] = v17;
    v16 = [FATField fieldWithIndex:6 type:10 optional:1 name:@"created"];
    v20[3] = v16;
    v3 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"updated"];
    v20[4] = v3;
    v4 = [FATField fieldWithIndex:8 type:10 optional:1 name:@"deleted"];
    v20[5] = v4;
    v5 = [FATField fieldWithIndex:10 type:8 optional:1 name:@"updateSequenceNum"];
    v20[6] = v5;
    v6 = [FATField fieldWithIndex:11 type:11 optional:1 name:@"notebookGuid"];
    v20[7] = v6;
    v7 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v8 = [FATField fieldWithIndex:12 type:15 optional:1 name:@"tagGuids" valueField:v7];
    v20[8] = v8;
    v9 = [FATField fieldWithIndex:14 type:12 optional:1 name:@"attributes" structClass:objc_opt_class()];
    v20[9] = v9;
    v10 = [FATField fieldWithIndex:20 type:11 optional:1 name:@"largestResourceMime"];
    v20[10] = v10;
    v11 = [FATField fieldWithIndex:21 type:8 optional:1 name:@"largestResourceSize"];
    v20[11] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:12];
    v13 = structFields_structFields_600;
    structFields_structFields_600 = v12;

    v2 = structFields_structFields_600;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
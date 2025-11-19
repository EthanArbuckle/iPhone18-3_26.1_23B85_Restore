@interface EDAMNote
+ (id)structFields;
@end

@implementation EDAMNote

+ (id)structFields
{
  v29[18] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1784;
  if (!structFields_structFields_1784)
  {
    v28 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"guid"];
    v29[0] = v28;
    v27 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"title"];
    v29[1] = v27;
    v26 = [FATField fieldWithIndex:3 type:11 optional:1 name:@"content"];
    v29[2] = v26;
    v25 = [FATField fieldWithIndex:4 type:16 optional:1 name:@"contentHash"];
    v29[3] = v25;
    v24 = [FATField fieldWithIndex:5 type:8 optional:1 name:@"contentLength"];
    v29[4] = v24;
    v23 = [FATField fieldWithIndex:6 type:10 optional:1 name:@"created"];
    v29[5] = v23;
    v22 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"updated"];
    v29[6] = v22;
    v21 = [FATField fieldWithIndex:8 type:10 optional:1 name:@"deleted"];
    v29[7] = v21;
    v20 = [FATField fieldWithIndex:9 type:2 optional:1 name:@"active"];
    v29[8] = v20;
    v19 = [FATField fieldWithIndex:10 type:8 optional:1 name:@"updateSequenceNum"];
    v29[9] = v19;
    v18 = [FATField fieldWithIndex:11 type:11 optional:1 name:@"notebookGuid"];
    v29[10] = v18;
    v17 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v3 = [FATField fieldWithIndex:12 type:15 optional:1 name:@"tagGuids" valueField:v17];
    v29[11] = v3;
    v4 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v5 = [FATField fieldWithIndex:13 type:15 optional:1 name:@"resources" valueField:v4];
    v29[12] = v5;
    v6 = [FATField fieldWithIndex:14 type:12 optional:1 name:@"attributes" structClass:objc_opt_class()];
    v29[13] = v6;
    v7 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v8 = [FATField fieldWithIndex:15 type:15 optional:1 name:@"tagNames" valueField:v7];
    v29[14] = v8;
    v9 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v10 = [FATField fieldWithIndex:16 type:15 optional:1 name:@"sharedNotes" valueField:v9];
    v29[15] = v10;
    v11 = [FATField fieldWithIndex:17 type:12 optional:1 name:@"restrictions" structClass:objc_opt_class()];
    v29[16] = v11;
    v12 = [FATField fieldWithIndex:18 type:12 optional:1 name:@"limits" structClass:objc_opt_class()];
    v29[17] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:18];
    v14 = structFields_structFields_1784;
    structFields_structFields_1784 = v13;

    v2 = structFields_structFields_1784;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
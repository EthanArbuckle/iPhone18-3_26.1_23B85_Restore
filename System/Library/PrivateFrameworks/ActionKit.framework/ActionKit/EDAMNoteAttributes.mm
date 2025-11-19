@interface EDAMNoteAttributes
+ (id)structFields;
@end

@implementation EDAMNoteAttributes

+ (id)structFields
{
  v31[22] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1524;
  if (!structFields_structFields_1524)
  {
    v30 = [FATField fieldWithIndex:1 type:10 optional:1 name:@"subjectDate"];
    v31[0] = v30;
    v29 = [FATField fieldWithIndex:10 type:4 optional:1 name:@"latitude"];
    v31[1] = v29;
    v28 = [FATField fieldWithIndex:11 type:4 optional:1 name:@"longitude"];
    v31[2] = v28;
    v27 = [FATField fieldWithIndex:12 type:4 optional:1 name:@"altitude"];
    v31[3] = v27;
    v26 = [FATField fieldWithIndex:13 type:11 optional:1 name:@"author"];
    v31[4] = v26;
    v25 = [FATField fieldWithIndex:14 type:11 optional:1 name:@"source"];
    v31[5] = v25;
    v24 = [FATField fieldWithIndex:15 type:11 optional:1 name:@"sourceURL"];
    v31[6] = v24;
    v23 = [FATField fieldWithIndex:16 type:11 optional:1 name:@"sourceApplication"];
    v31[7] = v23;
    v22 = [FATField fieldWithIndex:17 type:10 optional:1 name:@"shareDate"];
    v31[8] = v22;
    v21 = [FATField fieldWithIndex:18 type:10 optional:1 name:@"reminderOrder"];
    v31[9] = v21;
    v20 = [FATField fieldWithIndex:19 type:10 optional:1 name:@"reminderDoneTime"];
    v31[10] = v20;
    v19 = [FATField fieldWithIndex:20 type:10 optional:1 name:@"reminderTime"];
    v31[11] = v19;
    v18 = [FATField fieldWithIndex:21 type:11 optional:1 name:@"placeName"];
    v31[12] = v18;
    v17 = [FATField fieldWithIndex:22 type:11 optional:1 name:@"contentClass"];
    v31[13] = v17;
    v3 = [FATField fieldWithIndex:23 type:12 optional:1 name:@"applicationData" structClass:objc_opt_class()];
    v31[14] = v3;
    v4 = [FATField fieldWithIndex:24 type:11 optional:1 name:@"lastEditedBy"];
    v31[15] = v4;
    v5 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v6 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v7 = [FATField fieldWithIndex:26 type:13 optional:1 name:@"classifications" keyField:v5 valueField:v6];
    v31[16] = v7;
    v8 = [FATField fieldWithIndex:27 type:8 optional:1 name:@"creatorId"];
    v31[17] = v8;
    v9 = [FATField fieldWithIndex:28 type:8 optional:1 name:@"lastEditorId"];
    v31[18] = v9;
    v10 = [FATField fieldWithIndex:29 type:2 optional:1 name:@"sharedWithBusiness"];
    v31[19] = v10;
    v11 = [FATField fieldWithIndex:30 type:11 optional:1 name:@"conflictSourceNoteGuid"];
    v31[20] = v11;
    v12 = [FATField fieldWithIndex:31 type:8 optional:1 name:@"noteTitleQuality"];
    v31[21] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:22];
    v14 = structFields_structFields_1524;
    structFields_structFields_1524 = v13;

    v2 = structFields_structFields_1524;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
@interface EDAMNotebookRestrictions
+ (id)structFields;
@end

@implementation EDAMNotebookRestrictions

+ (id)structFields
{
  v29[22] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2222;
  if (!structFields_structFields_2222)
  {
    v28 = [FATField fieldWithIndex:1 type:2 optional:1 name:@"noReadNotes"];
    v29[0] = v28;
    v27 = [FATField fieldWithIndex:2 type:2 optional:1 name:@"noCreateNotes"];
    v29[1] = v27;
    v26 = [FATField fieldWithIndex:3 type:2 optional:1 name:@"noUpdateNotes"];
    v29[2] = v26;
    v25 = [FATField fieldWithIndex:4 type:2 optional:1 name:@"noExpungeNotes"];
    v29[3] = v25;
    v24 = [FATField fieldWithIndex:5 type:2 optional:1 name:@"noShareNotes"];
    v29[4] = v24;
    v23 = [FATField fieldWithIndex:6 type:2 optional:1 name:@"noEmailNotes"];
    v29[5] = v23;
    v22 = [FATField fieldWithIndex:7 type:2 optional:1 name:@"noSendMessageToRecipients"];
    v29[6] = v22;
    v21 = [FATField fieldWithIndex:8 type:2 optional:1 name:@"noUpdateNotebook"];
    v29[7] = v21;
    v20 = [FATField fieldWithIndex:9 type:2 optional:1 name:@"noExpungeNotebook"];
    v29[8] = v20;
    v19 = [FATField fieldWithIndex:10 type:2 optional:1 name:@"noSetDefaultNotebook"];
    v29[9] = v19;
    v18 = [FATField fieldWithIndex:11 type:2 optional:1 name:@"noSetNotebookStack"];
    v29[10] = v18;
    v17 = [FATField fieldWithIndex:12 type:2 optional:1 name:@"noPublishToPublic"];
    v29[11] = v17;
    v3 = [FATField fieldWithIndex:13 type:2 optional:1 name:@"noPublishToBusinessLibrary"];
    v29[12] = v3;
    v4 = [FATField fieldWithIndex:14 type:2 optional:1 name:@"noCreateTags"];
    v29[13] = v4;
    v5 = [FATField fieldWithIndex:15 type:2 optional:1 name:@"noUpdateTags"];
    v29[14] = v5;
    v6 = [FATField fieldWithIndex:16 type:2 optional:1 name:@"noExpungeTags"];
    v29[15] = v6;
    v7 = [FATField fieldWithIndex:17 type:2 optional:1 name:@"noSetParentTag"];
    v29[16] = v7;
    v8 = [FATField fieldWithIndex:18 type:2 optional:1 name:@"noCreateSharedNotebooks"];
    v29[17] = v8;
    v9 = [FATField fieldWithIndex:19 type:8 optional:1 name:@"updateWhichSharedNotebookRestrictions"];
    v29[18] = v9;
    v10 = [FATField fieldWithIndex:20 type:8 optional:1 name:@"expungeWhichSharedNotebookRestrictions"];
    v29[19] = v10;
    v11 = [FATField fieldWithIndex:21 type:2 optional:1 name:@"noShareNotesWithBusiness"];
    v29[20] = v11;
    v12 = [FATField fieldWithIndex:22 type:2 optional:1 name:@"noRenameNotebook"];
    v29[21] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:22];
    v14 = structFields_structFields_2222;
    structFields_structFields_2222 = v13;

    v2 = structFields_structFields_2222;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
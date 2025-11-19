@interface EDAMSyncChunk
+ (id)structFields;
@end

@implementation EDAMSyncChunk

+ (id)structFields
{
  v39[18] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_159;
  if (!structFields_structFields_159)
  {
    v38 = [FATField fieldWithIndex:1 type:10 optional:0 name:@"currentTime"];
    v39[0] = v38;
    v37 = [FATField fieldWithIndex:2 type:8 optional:1 name:@"chunkHighUSN"];
    v39[1] = v37;
    v36 = [FATField fieldWithIndex:3 type:8 optional:0 name:@"updateCount"];
    v39[2] = v36;
    v35 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v34 = [FATField fieldWithIndex:4 type:15 optional:1 name:@"notes" valueField:v35];
    v39[3] = v34;
    v33 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v32 = [FATField fieldWithIndex:5 type:15 optional:1 name:@"notebooks" valueField:v33];
    v39[4] = v32;
    v31 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v30 = [FATField fieldWithIndex:6 type:15 optional:1 name:@"tags" valueField:v31];
    v39[5] = v30;
    v29 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v28 = [FATField fieldWithIndex:7 type:15 optional:1 name:@"searches" valueField:v29];
    v39[6] = v28;
    v27 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v26 = [FATField fieldWithIndex:8 type:15 optional:1 name:@"resources" valueField:v27];
    v39[7] = v26;
    v25 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v24 = [FATField fieldWithIndex:9 type:15 optional:1 name:@"expungedNotes" valueField:v25];
    v39[8] = v24;
    v23 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v22 = [FATField fieldWithIndex:10 type:15 optional:1 name:@"expungedNotebooks" valueField:v23];
    v39[9] = v22;
    v21 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v20 = [FATField fieldWithIndex:11 type:15 optional:1 name:@"expungedTags" valueField:v21];
    v39[10] = v20;
    v19 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v18 = [FATField fieldWithIndex:12 type:15 optional:1 name:@"expungedSearches" valueField:v19];
    v39[11] = v18;
    v17 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v3 = [FATField fieldWithIndex:13 type:15 optional:1 name:@"linkedNotebooks" valueField:v17];
    v39[12] = v3;
    v4 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v5 = [FATField fieldWithIndex:14 type:15 optional:1 name:@"expungedLinkedNotebooks" valueField:v4];
    v39[13] = v5;
    v6 = [FATField fieldWithIndex:15 type:12 optional:1 name:@"preferences" structClass:objc_opt_class()];
    v39[14] = v6;
    v7 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v8 = [FATField fieldWithIndex:16 type:15 optional:1 name:@"notesNoLongerSharedWithMe" valueField:v7];
    v39[15] = v8;
    v9 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v10 = [FATField fieldWithIndex:17 type:15 optional:1 name:@"linkedAccounts" valueField:v9];
    v39[16] = v10;
    v11 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v12 = [FATField fieldWithIndex:18 type:15 optional:1 name:@"expungedLinkedAccounts" valueField:v11];
    v39[17] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:18];
    v14 = structFields_structFields_159;
    structFields_structFields_159 = v13;

    v2 = structFields_structFields_159;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
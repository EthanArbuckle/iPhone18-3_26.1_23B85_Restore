@interface EDAMSyncChunkFilter
+ (id)structFields;
@end

@implementation EDAMSyncChunkFilter

+ (id)structFields
{
  v28[20] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_299;
  if (!structFields_structFields_299)
  {
    v27 = [FATField fieldWithIndex:1 type:2 optional:1 name:@"includeNotes"];
    v28[0] = v27;
    v26 = [FATField fieldWithIndex:2 type:2 optional:1 name:@"includeNoteResources"];
    v28[1] = v26;
    v25 = [FATField fieldWithIndex:3 type:2 optional:1 name:@"includeNoteAttributes"];
    v28[2] = v25;
    v24 = [FATField fieldWithIndex:4 type:2 optional:1 name:@"includeNotebooks"];
    v28[3] = v24;
    v23 = [FATField fieldWithIndex:5 type:2 optional:1 name:@"includeTags"];
    v28[4] = v23;
    v22 = [FATField fieldWithIndex:6 type:2 optional:1 name:@"includeSearches"];
    v28[5] = v22;
    v21 = [FATField fieldWithIndex:7 type:2 optional:1 name:@"includeResources"];
    v28[6] = v21;
    v20 = [FATField fieldWithIndex:8 type:2 optional:1 name:@"includeLinkedNotebooks"];
    v28[7] = v20;
    v19 = [FATField fieldWithIndex:9 type:2 optional:1 name:@"includeExpunged"];
    v28[8] = v19;
    v18 = [FATField fieldWithIndex:10 type:2 optional:1 name:@"includeNoteApplicationDataFullMap"];
    v28[9] = v18;
    v17 = [FATField fieldWithIndex:12 type:2 optional:1 name:@"includeResourceApplicationDataFullMap"];
    v28[10] = v17;
    v3 = [FATField fieldWithIndex:13 type:2 optional:1 name:@"includeNoteResourceApplicationDataFullMap"];
    v28[11] = v3;
    v4 = [FATField fieldWithIndex:14 type:2 optional:1 name:@"includePreferences"];
    v28[12] = v4;
    v5 = [FATField fieldWithIndex:17 type:2 optional:1 name:@"includeSharedNotes"];
    v28[13] = v5;
    v6 = [FATField fieldWithIndex:18 type:2 optional:1 name:@"includeNotesSharedWithMe"];
    v28[14] = v6;
    v7 = [FATField fieldWithIndex:20 type:2 optional:1 name:@"includeLinkedAccounts"];
    v28[15] = v7;
    v8 = [FATField fieldWithIndex:16 type:2 optional:1 name:@"omitSharedNotebooks"];
    v28[16] = v8;
    v9 = [FATField fieldWithIndex:11 type:11 optional:1 name:@"requireNoteContentClass"];
    v28[17] = v9;
    v10 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v11 = [FATField fieldWithIndex:15 type:14 optional:1 name:@"notebookGuids" valueField:v10];
    v28[18] = v11;
    v12 = [FATField fieldWithIndex:19 type:8 optional:1 name:@"inAccountUserId"];
    v28[19] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:20];
    v14 = structFields_structFields_299;
    structFields_structFields_299 = v13;

    v2 = structFields_structFields_299;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
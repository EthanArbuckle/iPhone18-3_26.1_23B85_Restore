@interface EDAMNotesMetadataList
+ (id)structFields;
@end

@implementation EDAMNotesMetadataList

+ (id)structFields
{
  v16[6] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_683;
  if (!structFields_structFields_683)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:0 name:@"startIndex"];
    v16[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:8 optional:0 name:@"totalNotes"];
    v16[1] = v4;
    v5 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v6 = [FATField fieldWithIndex:3 type:15 optional:0 name:@"notes" valueField:v5];
    v16[2] = v6;
    v7 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v8 = [FATField fieldWithIndex:4 type:15 optional:1 name:@"stoppedWords" valueField:v7];
    v16[3] = v8;
    v9 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v10 = [FATField fieldWithIndex:5 type:15 optional:1 name:@"searchedWords" valueField:v9];
    v16[4] = v10;
    v11 = [FATField fieldWithIndex:6 type:8 optional:1 name:@"updateCount"];
    v16[5] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:6];
    v13 = structFields_structFields_683;
    structFields_structFields_683 = v12;

    v2 = structFields_structFields_683;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
@interface EDAMBusinessQueryResult
+ (id)structFields;
@end

@implementation EDAMBusinessQueryResult

+ (id)structFields
{
  v15[4] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1440;
  if (!structFields_structFields_1440)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"totalNotebooks"];
    v15[0] = v3;
    v4 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v5 = [FATField fieldWithIndex:0 type:8 optional:1 name:0];
    v6 = [FATField fieldWithIndex:2 type:13 optional:1 name:@"totalNotesByNotebook" keyField:v4 valueField:v5];
    v15[1] = v6;
    v7 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v8 = [FATField fieldWithIndex:3 type:15 optional:1 name:@"experts" valueField:v7];
    v15[2] = v8;
    v9 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v10 = [FATField fieldWithIndex:4 type:15 optional:1 name:@"matchingNotebooks" valueField:v9];
    v15[3] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    v12 = structFields_structFields_1440;
    structFields_structFields_1440 = v11;

    v2 = structFields_structFields_1440;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
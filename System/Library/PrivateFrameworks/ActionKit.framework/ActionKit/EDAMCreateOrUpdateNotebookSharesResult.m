@interface EDAMCreateOrUpdateNotebookSharesResult
+ (id)structFields;
@end

@implementation EDAMCreateOrUpdateNotebookSharesResult

+ (id)structFields
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1824;
  if (!structFields_structFields_1824)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"updateSequenceNum"];
    v10[0] = v3;
    v4 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v5 = [FATField fieldWithIndex:2 type:15 optional:1 name:@"matchingShares" valueField:v4];
    v10[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v7 = structFields_structFields_1824;
    structFields_structFields_1824 = v6;

    v2 = structFields_structFields_1824;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
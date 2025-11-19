@interface EDAMManageNoteSharesResult
+ (id)structFields;
@end

@implementation EDAMManageNoteSharesResult

+ (id)structFields
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1966;
  if (!structFields_structFields_1966)
  {
    v3 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v4 = [FATField fieldWithIndex:1 type:15 optional:1 name:@"errors" valueField:v3];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = structFields_structFields_1966;
    structFields_structFields_1966 = v5;

    v2 = structFields_structFields_1966;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
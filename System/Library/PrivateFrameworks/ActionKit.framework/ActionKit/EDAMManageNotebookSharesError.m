@interface EDAMManageNotebookSharesError
+ (id)structFields;
@end

@implementation EDAMManageNotebookSharesError

+ (id)structFields
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1735;
  if (!structFields_structFields_1735)
  {
    v3 = [FATField fieldWithIndex:1 type:12 optional:1 name:@"userIdentity" structClass:objc_opt_class()];
    v4 = [FATField fieldWithIndex:2 type:12 optional:1 name:@"userException" structClass:objc_opt_class(), v3];
    v10[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:12 optional:1 name:@"notFoundException" structClass:objc_opt_class()];
    v10[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    v7 = structFields_structFields_1735;
    structFields_structFields_1735 = v6;

    v2 = structFields_structFields_1735;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
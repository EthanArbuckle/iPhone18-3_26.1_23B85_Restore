@interface EDAMManageNoteSharesError
+ (id)structFields;
@end

@implementation EDAMManageNoteSharesError

+ (id)structFields
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1941;
  if (!structFields_structFields_1941)
  {
    v3 = [FATField fieldWithIndex:1 type:10 optional:1 name:@"identityID"];
    v11[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:8 optional:1 name:@"userID"];
    v11[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:12 optional:1 name:@"userException" structClass:objc_opt_class()];
    v11[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:12 optional:1 name:@"notFoundException" structClass:objc_opt_class()];
    v11[3] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
    v8 = structFields_structFields_1941;
    structFields_structFields_1941 = v7;

    v2 = structFields_structFields_1941;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
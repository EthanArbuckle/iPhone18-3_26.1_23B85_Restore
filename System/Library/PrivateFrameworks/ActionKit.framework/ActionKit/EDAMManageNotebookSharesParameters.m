@interface EDAMManageNotebookSharesParameters
+ (id)structFields;
@end

@implementation EDAMManageNotebookSharesParameters

+ (id)structFields
{
  v15[5] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1694;
  if (!structFields_structFields_1694)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"notebookGuid"];
    v4 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"inviteMessage", v3];
    v15[1] = v4;
    v5 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v6 = [FATField fieldWithIndex:3 type:15 optional:1 name:@"membershipsToUpdate" valueField:v5];
    v15[2] = v6;
    v7 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v8 = [FATField fieldWithIndex:4 type:15 optional:1 name:@"invitationsToCreateOrUpdate" valueField:v7];
    v15[3] = v8;
    v9 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v10 = [FATField fieldWithIndex:5 type:15 optional:1 name:@"unshares" valueField:v9];
    v15[4] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:5];
    v12 = structFields_structFields_1694;
    structFields_structFields_1694 = v11;

    v2 = structFields_structFields_1694;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
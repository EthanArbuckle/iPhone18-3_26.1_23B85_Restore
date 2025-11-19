@interface EDAMManageNoteSharesParameters
+ (id)structFields;
@end

@implementation EDAMManageNoteSharesParameters

+ (id)structFields
{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1908;
  if (!structFields_structFields_1908)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"noteGuid"];
    v4 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class(), v3];
    v5 = [FATField fieldWithIndex:2 type:15 optional:1 name:@"membershipsToUpdate" valueField:v4];
    v16[1] = v5;
    v6 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v7 = [FATField fieldWithIndex:3 type:15 optional:1 name:@"invitationsToUpdate" valueField:v6];
    v16[2] = v7;
    v8 = [FATField fieldWithIndex:0 type:8 optional:1 name:0];
    v9 = [FATField fieldWithIndex:4 type:15 optional:1 name:@"membershipsToUnshare" valueField:v8];
    v16[3] = v9;
    v10 = [FATField fieldWithIndex:0 type:10 optional:1 name:0];
    v11 = [FATField fieldWithIndex:5 type:15 optional:1 name:@"invitationsToUnshare" valueField:v10];
    v16[4] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];
    v13 = structFields_structFields_1908;
    structFields_structFields_1908 = v12;

    v2 = structFields_structFields_1908;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
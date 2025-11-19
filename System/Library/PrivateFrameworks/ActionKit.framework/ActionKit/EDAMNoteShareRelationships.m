@interface EDAMNoteShareRelationships
+ (id)structFields;
@end

@implementation EDAMNoteShareRelationships

+ (id)structFields
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1896;
  if (!structFields_structFields_1896)
  {
    v3 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v4 = [FATField fieldWithIndex:1 type:15 optional:1 name:@"invitations" valueField:v3];
    v5 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class(), v4];
    v6 = [FATField fieldWithIndex:2 type:15 optional:1 name:@"memberships" valueField:v5];
    v12[1] = v6;
    v7 = [FATField fieldWithIndex:3 type:12 optional:1 name:@"invitationRestrictions" structClass:objc_opt_class()];
    v12[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    v9 = structFields_structFields_1896;
    structFields_structFields_1896 = v8;

    v2 = structFields_structFields_1896;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
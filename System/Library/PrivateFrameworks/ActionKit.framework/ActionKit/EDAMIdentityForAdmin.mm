@interface EDAMIdentityForAdmin
+ (id)structFields;
@end

@implementation EDAMIdentityForAdmin

+ (id)structFields
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1245;
  if (!structFields_structFields_1245)
  {
    v3 = [FATField fieldWithIndex:1 type:12 optional:1 name:@"identity" structClass:objc_opt_class()];
    v4 = [FATField fieldWithIndex:2 type:8 optional:1 name:@"state", v3];
    v10[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:10 optional:1 name:@"stateChanged"];
    v10[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    v7 = structFields_structFields_1245;
    structFields_structFields_1245 = v6;

    v2 = structFields_structFields_1245;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
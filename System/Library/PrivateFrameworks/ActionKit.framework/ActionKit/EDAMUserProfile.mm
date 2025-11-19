@interface EDAMUserProfile
+ (id)structFields;
@end

@implementation EDAMUserProfile

+ (id)structFields
{
  v16[9] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2560;
  if (!structFields_structFields_2560)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"id"];
    v4 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"name", v3];
    v16[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:11 optional:1 name:@"email"];
    v16[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"username"];
    v16[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:12 optional:1 name:@"attributes" structClass:objc_opt_class()];
    v16[4] = v7;
    v8 = [FATField fieldWithIndex:6 type:10 optional:1 name:@"joined"];
    v16[5] = v8;
    v9 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"photoLastUpdated"];
    v16[6] = v9;
    v10 = [FATField fieldWithIndex:8 type:11 optional:1 name:@"photoUrl"];
    v16[7] = v10;
    v11 = [FATField fieldWithIndex:9 type:8 optional:1 name:@"role"];
    v16[8] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:9];
    v13 = structFields_structFields_2560;
    structFields_structFields_2560 = v12;

    v2 = structFields_structFields_2560;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
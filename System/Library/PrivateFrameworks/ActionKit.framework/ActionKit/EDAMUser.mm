@interface EDAMUser
+ (id)structFields;
@end

@implementation EDAMUser

+ (id)structFields
{
  v28[21] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_969;
  if (!structFields_structFields_969)
  {
    v27 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"id"];
    v28[0] = v27;
    v26 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"username"];
    v28[1] = v26;
    v25 = [FATField fieldWithIndex:3 type:11 optional:1 name:@"email"];
    v28[2] = v25;
    v24 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"name"];
    v28[3] = v24;
    v23 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"timezone"];
    v28[4] = v23;
    v22 = [FATField fieldWithIndex:7 type:8 optional:1 name:@"privilege"];
    v28[5] = v22;
    v21 = [FATField fieldWithIndex:21 type:8 optional:1 name:@"serviceLevel"];
    v28[6] = v21;
    v20 = [FATField fieldWithIndex:9 type:10 optional:1 name:@"created"];
    v28[7] = v20;
    v19 = [FATField fieldWithIndex:10 type:10 optional:1 name:@"updated"];
    v28[8] = v19;
    v18 = [FATField fieldWithIndex:11 type:10 optional:1 name:@"deleted"];
    v28[9] = v18;
    v17 = [FATField fieldWithIndex:13 type:2 optional:1 name:@"active"];
    v28[10] = v17;
    v3 = [FATField fieldWithIndex:14 type:11 optional:1 name:@"shardId"];
    v28[11] = v3;
    v4 = [FATField fieldWithIndex:15 type:12 optional:1 name:@"attributes" structClass:objc_opt_class()];
    v28[12] = v4;
    v5 = [FATField fieldWithIndex:16 type:12 optional:1 name:@"accounting" structClass:objc_opt_class()];
    v28[13] = v5;
    v6 = [FATField fieldWithIndex:17 type:12 optional:1 name:@"premiumInfo" structClass:objc_opt_class()];
    v28[14] = v6;
    v7 = [FATField fieldWithIndex:18 type:12 optional:1 name:@"businessUserInfo" structClass:objc_opt_class()];
    v28[15] = v7;
    v8 = [FATField fieldWithIndex:19 type:11 optional:1 name:@"photoUrl"];
    v28[16] = v8;
    v9 = [FATField fieldWithIndex:20 type:10 optional:1 name:@"photoLastUpdated"];
    v28[17] = v9;
    v10 = [FATField fieldWithIndex:22 type:12 optional:1 name:@"accountLimits" structClass:objc_opt_class()];
    v28[18] = v10;
    v11 = [FATField fieldWithIndex:23 type:12 optional:1 name:@"subscriptionInfo" structClass:objc_opt_class()];
    v28[19] = v11;
    v12 = [FATField fieldWithIndex:24 type:12 optional:1 name:@"pricingModel" structClass:objc_opt_class()];
    v28[20] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:21];
    v14 = structFields_structFields_969;
    structFields_structFields_969 = v13;

    v2 = structFields_structFields_969;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
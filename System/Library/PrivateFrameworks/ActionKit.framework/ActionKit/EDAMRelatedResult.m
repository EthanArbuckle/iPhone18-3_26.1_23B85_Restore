@interface EDAMRelatedResult
+ (id)structFields;
@end

@implementation EDAMRelatedResult

+ (id)structFields
{
  v22[9] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1122;
  if (!structFields_structFields_1122)
  {
    v21 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v20 = [FATField fieldWithIndex:1 type:15 optional:1 name:@"notes" valueField:v21];
    v22[0] = v20;
    v19 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v18 = [FATField fieldWithIndex:2 type:15 optional:1 name:@"notebooks" valueField:v19];
    v22[1] = v18;
    v17 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v3 = [FATField fieldWithIndex:3 type:15 optional:1 name:@"tags" valueField:v17];
    v22[2] = v3;
    v4 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v5 = [FATField fieldWithIndex:4 type:15 optional:1 name:@"containingNotebooks" valueField:v4];
    v22[3] = v5;
    v6 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"debugInfo"];
    v22[4] = v6;
    v7 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v8 = [FATField fieldWithIndex:6 type:15 optional:1 name:@"experts" valueField:v7];
    v22[5] = v8;
    v9 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v10 = [FATField fieldWithIndex:7 type:15 optional:1 name:@"relatedContent" valueField:v9];
    v22[6] = v10;
    v11 = [FATField fieldWithIndex:8 type:11 optional:1 name:@"cacheKey"];
    v22[7] = v11;
    v12 = [FATField fieldWithIndex:9 type:8 optional:1 name:@"cacheExpires"];
    v22[8] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:9];
    v14 = structFields_structFields_1122;
    structFields_structFields_1122 = v13;

    v2 = structFields_structFields_1122;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
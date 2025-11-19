@interface EDAMAdParameters
+ (id)structFields;
@end

@implementation EDAMAdParameters

+ (id)structFields
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_921;
  if (!structFields_structFields_921)
  {
    v3 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"clientLanguage"];
    v14[0] = v3;
    v4 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v5 = [FATField fieldWithIndex:4 type:15 optional:1 name:@"impressions" valueField:v4];
    v14[1] = v5;
    v6 = [FATField fieldWithIndex:5 type:2 optional:1 name:@"supportHtml"];
    v14[2] = v6;
    v7 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v8 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v9 = [FATField fieldWithIndex:6 type:13 optional:1 name:@"clientProperties" keyField:v7 valueField:v8];
    v14[3] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
    v11 = structFields_structFields_921;
    structFields_structFields_921 = v10;

    v2 = structFields_structFields_921;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
@interface EDAMPricingModel
+ (id)structFields;
@end

@implementation EDAMPricingModel

+ (id)structFields
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_757;
  if (!structFields_structFields_757)
  {
    v3 = [FATField fieldWithIndex:1 type:2 optional:1 name:@"gnomeActive"];
    v4 = [FATField fieldWithIndex:2 type:2 optional:1 name:@"gnomeWarmingPeriod", v3];
    v10[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:10 optional:1 name:@"pricingModelStart"];
    v10[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    v7 = structFields_structFields_757;
    structFields_structFields_757 = v6;

    v2 = structFields_structFields_757;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
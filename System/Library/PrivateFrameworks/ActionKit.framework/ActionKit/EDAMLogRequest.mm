@interface EDAMLogRequest
+ (id)structFields;
@end

@implementation EDAMLogRequest

+ (id)structFields
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2049;
  if (!structFields_structFields_2049)
  {
    v3 = [FATField fieldWithIndex:1 type:12 optional:1 name:@"searchRecord" structClass:objc_opt_class()];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v5 = structFields_structFields_2049;
    structFields_structFields_2049 = v4;

    v2 = structFields_structFields_2049;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
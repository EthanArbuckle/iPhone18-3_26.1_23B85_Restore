@interface EDAMLazyMap
+ (id)structFields;
@end

@implementation EDAMLazyMap

+ (id)structFields
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1313;
  if (!structFields_structFields_1313)
  {
    v3 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v4 = [FATField fieldWithIndex:1 type:14 optional:1 name:@"keysOnly" valueField:v3];
    v12[0] = v4;
    v5 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v6 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v7 = [FATField fieldWithIndex:2 type:13 optional:1 name:@"fullMap" keyField:v5 valueField:v6];
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v9 = structFields_structFields_1313;
    structFields_structFields_1313 = v8;

    v2 = structFields_structFields_1313;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
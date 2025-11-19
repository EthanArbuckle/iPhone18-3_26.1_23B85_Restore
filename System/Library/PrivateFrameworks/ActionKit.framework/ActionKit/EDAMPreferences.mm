@interface EDAMPreferences
+ (id)structFields;
@end

@implementation EDAMPreferences

+ (id)structFields
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_133;
  if (!structFields_structFields_133)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"updateSequenceNum"];
    v12[0] = v3;
    v4 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v5 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v6 = [FATField fieldWithIndex:0 type:15 optional:1 name:0 valueField:v5];
    v7 = [FATField fieldWithIndex:2 type:13 optional:1 name:@"preferences" keyField:v4 valueField:v6];
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v9 = structFields_structFields_133;
    structFields_structFields_133 = v8;

    v2 = structFields_structFields_133;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
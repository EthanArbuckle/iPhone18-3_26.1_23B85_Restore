@interface EDAMBusinessNotebook
+ (id)structFields;
@end

@implementation EDAMBusinessNotebook

+ (id)structFields
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1923;
  if (!structFields_structFields_1923)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"notebookDescription"];
    v4 = [FATField fieldWithIndex:2 type:8 optional:1 name:@"privilege", v3];
    v10[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:2 optional:1 name:@"recommended"];
    v10[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    v7 = structFields_structFields_1923;
    structFields_structFields_1923 = v6;

    v2 = structFields_structFields_1923;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
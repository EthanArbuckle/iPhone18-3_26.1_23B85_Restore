@interface EDAMBusinessQuery
+ (id)structFields;
@end

@implementation EDAMBusinessQuery

+ (id)structFields
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1415;
  if (!structFields_structFields_1415)
  {
    v3 = [FATField fieldWithIndex:1 type:12 optional:1 name:@"filter" structClass:objc_opt_class()];
    v11[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:8 optional:1 name:@"numExperts"];
    v11[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:2 optional:1 name:@"includeNotebooks"];
    v11[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:2 optional:1 name:@"includeNotesCounts"];
    v11[3] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
    v8 = structFields_structFields_1415;
    structFields_structFields_1415 = v7;

    v2 = structFields_structFields_1415;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
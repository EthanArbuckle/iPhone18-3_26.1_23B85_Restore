@interface EDAMUpdateNoteIfUsnMatchesResult
+ (id)structFields;
@end

@implementation EDAMUpdateNoteIfUsnMatchesResult

+ (id)structFields
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1531;
  if (!structFields_structFields_1531)
  {
    v3 = [FATField fieldWithIndex:1 type:12 optional:1 name:@"note" structClass:objc_opt_class()];
    v9[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:2 optional:1 name:@"updated"];
    v9[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v6 = structFields_structFields_1531;
    structFields_structFields_1531 = v5;

    v2 = structFields_structFields_1531;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
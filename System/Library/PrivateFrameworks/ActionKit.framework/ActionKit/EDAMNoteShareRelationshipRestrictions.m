@interface EDAMNoteShareRelationshipRestrictions
+ (id)structFields;
@end

@implementation EDAMNoteShareRelationshipRestrictions

+ (id)structFields
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1842;
  if (!structFields_structFields_1842)
  {
    v3 = [FATField fieldWithIndex:1 type:2 optional:1 name:@"noSetReadNote"];
    v4 = [FATField fieldWithIndex:2 type:2 optional:1 name:@"noSetModifyNote", v3];
    v10[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:2 optional:1 name:@"noSetFullAccess"];
    v10[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
    v7 = structFields_structFields_1842;
    structFields_structFields_1842 = v6;

    v2 = structFields_structFields_1842;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
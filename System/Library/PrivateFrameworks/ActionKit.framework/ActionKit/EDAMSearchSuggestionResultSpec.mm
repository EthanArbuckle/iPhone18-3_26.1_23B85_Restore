@interface EDAMSearchSuggestionResultSpec
+ (id)structFields;
@end

@implementation EDAMSearchSuggestionResultSpec

+ (id)structFields
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1280;
  if (!structFields_structFields_1280)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"maxTypeAheadSuggestions"];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v5 = structFields_structFields_1280;
    structFields_structFields_1280 = v4;

    v2 = structFields_structFields_1280;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
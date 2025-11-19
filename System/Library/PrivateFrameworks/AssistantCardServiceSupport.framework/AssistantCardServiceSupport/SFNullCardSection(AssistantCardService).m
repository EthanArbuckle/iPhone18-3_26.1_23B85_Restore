@interface SFNullCardSection(AssistantCardService)
+ (id)acs_wildCardSection;
@end

@implementation SFNullCardSection(AssistantCardService)

+ (id)acs_wildCardSection
{
  v0 = [MEMORY[0x277D4C4C0] acs_uniquelyIdentifiedCardSection];
  [v0 acs_setParameters:MEMORY[0x277CBEBF8]];

  return v0;
}

@end
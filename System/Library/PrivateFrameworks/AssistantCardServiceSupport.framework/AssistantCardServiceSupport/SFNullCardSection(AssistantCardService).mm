@interface SFNullCardSection(AssistantCardService)
+ (id)acs_wildCardSection;
@end

@implementation SFNullCardSection(AssistantCardService)

+ (id)acs_wildCardSection
{
  acs_uniquelyIdentifiedCardSection = [MEMORY[0x277D4C4C0] acs_uniquelyIdentifiedCardSection];
  [acs_uniquelyIdentifiedCardSection acs_setParameters:MEMORY[0x277CBEBF8]];

  return acs_uniquelyIdentifiedCardSection;
}

@end
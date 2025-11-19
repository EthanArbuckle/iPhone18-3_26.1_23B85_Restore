@interface SAGuidanceCheckForGuideUpdates(AssistantUIAdditions)
+ (id)afui_guideCheckSupportedFeatures;
@end

@implementation SAGuidanceCheckForGuideUpdates(AssistantUIAdditions)

+ (id)afui_guideCheckSupportedFeatures
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  if (MGGetBoolAnswer())
  {
    [v0 addObject:*MEMORY[0x277D47D80]];
  }

  if (MGGetBoolAnswer())
  {
    [v0 addObject:*MEMORY[0x277D47D88]];
  }

  if (MGGetBoolAnswer())
  {
    [v0 addObject:*MEMORY[0x277D47D90]];
  }

  if (MGGetBoolAnswer())
  {
    [v0 addObject:*MEMORY[0x277D47D98]];
  }

  if (ShouldShowWeibo())
  {
    [v0 addObject:*MEMORY[0x277D47DA0]];
  }

  return v0;
}

@end
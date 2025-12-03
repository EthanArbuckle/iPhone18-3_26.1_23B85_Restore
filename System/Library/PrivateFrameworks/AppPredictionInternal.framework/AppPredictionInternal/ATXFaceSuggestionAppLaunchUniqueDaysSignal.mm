@interface ATXFaceSuggestionAppLaunchUniqueDaysSignal
- (ATXFaceSuggestionAppLaunchUniqueDaysSignal)initWithAppLaunchDictionary:(id)dictionary;
- (double)valueForDescriptor:(id)descriptor;
@end

@implementation ATXFaceSuggestionAppLaunchUniqueDaysSignal

- (ATXFaceSuggestionAppLaunchUniqueDaysSignal)initWithAppLaunchDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ATXFaceSuggestionAppLaunchUniqueDaysSignal;
  v5 = [(ATXFaceSuggestionAppLaunchUniqueDaysSignal *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    appLaunchDictionary = v5->_appLaunchDictionary;
    v5->_appLaunchDictionary = v6;
  }

  return v5;
}

- (double)valueForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  containerBundleIdentifier = [descriptorCopy containerBundleIdentifier];

  if (containerBundleIdentifier)
  {
    appLaunchDictionary = self->_appLaunchDictionary;
    containerBundleIdentifier2 = [descriptorCopy containerBundleIdentifier];
    v8 = [(NSDictionary *)appLaunchDictionary objectForKeyedSubscript:containerBundleIdentifier2];
    uniqueDaysLaunched = [v8 uniqueDaysLaunched];
  }

  else
  {
    uniqueDaysLaunched = 0.0;
  }

  return uniqueDaysLaunched;
}

@end
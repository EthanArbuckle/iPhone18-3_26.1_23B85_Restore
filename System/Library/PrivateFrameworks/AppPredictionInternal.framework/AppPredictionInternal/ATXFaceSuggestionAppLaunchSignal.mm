@interface ATXFaceSuggestionAppLaunchSignal
- (ATXFaceSuggestionAppLaunchSignal)initWithAppLaunchDictionary:(id)dictionary;
- (double)valueForDescriptor:(id)descriptor;
@end

@implementation ATXFaceSuggestionAppLaunchSignal

- (ATXFaceSuggestionAppLaunchSignal)initWithAppLaunchDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ATXFaceSuggestionAppLaunchSignal;
  v5 = [(ATXFaceSuggestionAppLaunchSignal *)&v9 init];
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
    rawLaunchCount = [v8 rawLaunchCount];
  }

  else
  {
    rawLaunchCount = 0.0;
  }

  return rawLaunchCount;
}

@end
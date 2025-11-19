@interface ATXFaceSuggestionAppLaunchSignal
- (ATXFaceSuggestionAppLaunchSignal)initWithAppLaunchDictionary:(id)a3;
- (double)valueForDescriptor:(id)a3;
@end

@implementation ATXFaceSuggestionAppLaunchSignal

- (ATXFaceSuggestionAppLaunchSignal)initWithAppLaunchDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXFaceSuggestionAppLaunchSignal;
  v5 = [(ATXFaceSuggestionAppLaunchSignal *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    appLaunchDictionary = v5->_appLaunchDictionary;
    v5->_appLaunchDictionary = v6;
  }

  return v5;
}

- (double)valueForDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 containerBundleIdentifier];

  if (v5)
  {
    appLaunchDictionary = self->_appLaunchDictionary;
    v7 = [v4 containerBundleIdentifier];
    v8 = [(NSDictionary *)appLaunchDictionary objectForKeyedSubscript:v7];
    v9 = [v8 rawLaunchCount];
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

@end
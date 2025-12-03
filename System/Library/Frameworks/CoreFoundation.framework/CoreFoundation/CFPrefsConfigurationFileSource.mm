@interface CFPrefsConfigurationFileSource
- (CFPrefsConfigurationFileSource)initWithConfigurationPropertyList:(__CFDictionary *)list containingPreferences:(id)preferences;
@end

@implementation CFPrefsConfigurationFileSource

- (CFPrefsConfigurationFileSource)initWithConfigurationPropertyList:(__CFDictionary *)list containingPreferences:(id)preferences
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CFPrefsConfigurationFileSource;
  v5 = [(CFPrefsSource *)&v8 initWithContainingPreferences:preferences];
  if (v5)
  {
    CFDictionaryApplyFunction(list, mergeFunc, v5);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
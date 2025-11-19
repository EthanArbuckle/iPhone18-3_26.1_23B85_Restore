@interface CFPrefsConfigurationFileSource
- (CFPrefsConfigurationFileSource)initWithConfigurationPropertyList:(__CFDictionary *)a3 containingPreferences:(id)a4;
@end

@implementation CFPrefsConfigurationFileSource

- (CFPrefsConfigurationFileSource)initWithConfigurationPropertyList:(__CFDictionary *)a3 containingPreferences:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CFPrefsConfigurationFileSource;
  v5 = [(CFPrefsSource *)&v8 initWithContainingPreferences:a4];
  if (v5)
  {
    CFDictionaryApplyFunction(a3, mergeFunc, v5);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
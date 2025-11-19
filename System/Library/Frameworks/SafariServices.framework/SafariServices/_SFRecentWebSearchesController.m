@interface _SFRecentWebSearchesController
- (id)_recentSearchDictionariesFromUserDefaultsUsingKey:(id)a3;
- (void)_saveRecentSearchDictionaries:(id)a3 toUserDefaultsUsingKey:(id)a4;
@end

@implementation _SFRecentWebSearchesController

- (void)_saveRecentSearchDictionaries:(id)a3 toUserDefaultsUsingKey:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v6 setObject:v7 forKey:v5];
}

- (id)_recentSearchDictionariesFromUserDefaultsUsingKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v5 = [v4 arrayForKey:v3];

  return v5;
}

@end
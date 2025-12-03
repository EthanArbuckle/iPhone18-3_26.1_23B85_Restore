@interface _SFRecentWebSearchesController
- (id)_recentSearchDictionariesFromUserDefaultsUsingKey:(id)key;
- (void)_saveRecentSearchDictionaries:(id)dictionaries toUserDefaultsUsingKey:(id)key;
@end

@implementation _SFRecentWebSearchesController

- (void)_saveRecentSearchDictionaries:(id)dictionaries toUserDefaultsUsingKey:(id)key
{
  dictionariesCopy = dictionaries;
  keyCopy = key;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults setObject:dictionariesCopy forKey:keyCopy];
}

- (id)_recentSearchDictionariesFromUserDefaultsUsingKey:(id)key
{
  keyCopy = key;
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v5 = [safari_browserDefaults arrayForKey:keyCopy];

  return v5;
}

@end
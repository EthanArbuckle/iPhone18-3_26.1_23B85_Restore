@interface NSUserDefaults(ARAppleGlobalDomain)
+ (id)appleGlobalDomain;
+ (id)appleGlobalDomainARKitDefaults;
+ (id)appleGlobalDomainARKitKeys;
@end

@implementation NSUserDefaults(ARAppleGlobalDomain)

+ (id)appleGlobalDomain
{
  if (appleGlobalDomain_onceToken != -1)
  {
    +[NSUserDefaults(ARAppleGlobalDomain) appleGlobalDomain];
  }

  v1 = appleGlobalDomain_defaults;

  return v1;
}

+ (id)appleGlobalDomainARKitKeys
{
  appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
  dictionaryRepresentation = [appleGlobalDomain dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_5_0];
  v4 = [allKeys filteredArrayUsingPredicate:v3];

  return v4;
}

+ (id)appleGlobalDomainARKitDefaults
{
  v17 = *MEMORY[0x1E69E9840];
  appleGlobalDomainARKitKeys = [MEMORY[0x1E695E000] appleGlobalDomainARKitKeys];
  appleGlobalDomain = [MEMORY[0x1E695E000] appleGlobalDomain];
  dictionaryRepresentation = [appleGlobalDomain dictionaryRepresentation];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = appleGlobalDomainARKitKeys;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [dictionaryRepresentation objectForKey:{v9, v12}];
        [dictionary setObject:v10 forKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return dictionary;
}

@end
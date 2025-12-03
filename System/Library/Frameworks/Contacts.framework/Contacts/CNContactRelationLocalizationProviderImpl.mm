@interface CNContactRelationLocalizationProviderImpl
+ (id)preferredLanguages;
+ (id)supplementalLabelDictionaryPairsForLanguages:(id)languages bundlePath:(id)path;
@end

@implementation CNContactRelationLocalizationProviderImpl

+ (id)supplementalLabelDictionaryPairsForLanguages:(id)languages bundlePath:(id)path
{
  v41 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  pathCopy = path;
  v7 = [languagesCopy mutableCopy];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v28 = pathCopy;
  if (pathCopy)
  {
    [MEMORY[0x1E696AAE8] bundleWithPath:pathCopy];
  }

  else
  {
    [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  }
  v30 = ;
  localizations = [v30 localizations];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = languagesCopy;
  v10 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:localizations forPreferences:v7];
        firstObject = [v15 firstObject];

        [orderedSet addObject:firstObject];
        [v7 removeObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = orderedSet;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        v24 = [v30 localizedStringsForTable:@"CNLabeledValue" localization:v23];
        if ([v24 count])
        {
          v25 = [MEMORY[0x1E69967A8] pairWithFirst:v24 second:v23];
          [orderedSet2 addObject:v25];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  if (![orderedSet2 count])
  {
    NSLog(&cfstr_NoSupplemental.isa, obj, v28);
  }

  array = [orderedSet2 array];

  return array;
}

+ (id)preferredLanguages
{
  v2 = MEMORY[0x1E695DF58];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v4 = [v2 languagesByAddingRelatedLanguagesToLanguages:preferredLanguages];

  return v4;
}

@end
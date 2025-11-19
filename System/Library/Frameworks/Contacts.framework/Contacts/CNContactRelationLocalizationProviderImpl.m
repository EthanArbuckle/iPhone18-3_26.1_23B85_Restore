@interface CNContactRelationLocalizationProviderImpl
+ (id)preferredLanguages;
+ (id)supplementalLabelDictionaryPairsForLanguages:(id)a3 bundlePath:(id)a4;
@end

@implementation CNContactRelationLocalizationProviderImpl

+ (id)supplementalLabelDictionaryPairsForLanguages:(id)a3 bundlePath:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 mutableCopy];
  v8 = [MEMORY[0x1E695DFA0] orderedSet];
  v28 = v6;
  if (v6)
  {
    [MEMORY[0x1E696AAE8] bundleWithPath:v6];
  }

  else
  {
    [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  }
  v30 = ;
  v9 = [v30 localizations];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
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
        v15 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v9 forPreferences:v7];
        v16 = [v15 firstObject];

        [v8 addObject:v16];
        [v7 removeObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  v17 = [MEMORY[0x1E695DFA0] orderedSet];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v8;
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
          [v17 addObject:v25];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  if (![v17 count])
  {
    NSLog(&cfstr_NoSupplemental.isa, obj, v28);
  }

  v26 = [v17 array];

  return v26;
}

+ (id)preferredLanguages
{
  v2 = MEMORY[0x1E695DF58];
  v3 = [MEMORY[0x1E695DF58] preferredLanguages];
  v4 = [v2 languagesByAddingRelatedLanguagesToLanguages:v3];

  return v4;
}

@end
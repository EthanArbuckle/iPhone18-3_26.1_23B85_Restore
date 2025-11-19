@interface AFPreferenceAdditionalGoodFitSystemLocales
@end

@implementation AFPreferenceAdditionalGoodFitSystemLocales

void ___AFPreferenceAdditionalGoodFitSystemLocales_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:&unk_1F056FFC0];
  v1 = _AFPreferencesAlternativeLocaleLanguages();
  v2 = [v1 allKeys];
  [v0 addObjectsFromArray:v2];

  v3 = [&unk_1F056F248 allKeys];
  [v0 addObjectsFromArray:v3];

  [v0 removeObject:@"hi-IN"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v0 copy];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
        [v0 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v0 copy];
  v11 = _AFPreferenceAdditionalGoodFitSystemLocales_sSpecialCases;
  _AFPreferenceAdditionalGoodFitSystemLocales_sSpecialCases = v10;

  v12 = *MEMORY[0x1E69E9840];
}

@end
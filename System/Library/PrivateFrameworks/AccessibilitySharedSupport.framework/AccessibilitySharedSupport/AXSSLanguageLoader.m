@interface AXSSLanguageLoader
+ (id)_characterSetForRanges:(id)a3;
+ (id)loadLanguages;
@end

@implementation AXSSLanguageLoader

+ (id)loadLanguages
{
  v54 = *MEMORY[0x1E69E9840];
  v30 = [MEMORY[0x1E695DF70] array];
  v40 = a1;
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"SynthesizerLanguageMap" ofType:@"plist"];

  v27 = v4;
  [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v26 = v51 = 0u;
  obj = [v26 objectForKeyedSubscript:@"languageMaps"];
  v31 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v31)
  {
    v29 = *v49;
    do
    {
      v5 = 0;
      do
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v5;
        v6 = *(*(&v48 + 1) + 8 * v5);
        v37 = [v6 objectForKeyedSubscript:@"languageID"];
        v36 = [v6 objectForKeyedSubscript:@"alternateLanguageIDs"];
        v35 = [v6 objectForKeyedSubscript:@"ambiguousWithLanguages"];
        v7 = [v6 objectForKeyedSubscript:@"isAmbiguous"];
        v34 = [v7 BOOLValue];

        v8 = [v6 objectForKeyedSubscript:@"isWestern"];
        v33 = [v8 BOOLValue];

        v9 = [v6 objectForKeyedSubscript:@"isRTL"];
        v32 = [v9 BOOLValue];

        v42 = [MEMORY[0x1E695DF70] array];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v39 = [v6 objectForKeyedSubscript:@"localeLanguageMaps"];
        v43 = [v39 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v43)
        {
          v41 = *v45;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v45 != v41)
              {
                objc_enumerationMutation(v39);
              }

              v11 = *(*(&v44 + 1) + 8 * i);
              v12 = [v11 objectForKeyedSubscript:@"localeID"];
              v13 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v12];
              v14 = [v11 objectForKeyedSubscript:@"voiceName"];
              v15 = [v11 objectForKeyedSubscript:@"languageID"];
              v16 = [v11 objectForKeyedSubscript:@"speakableCharacterRanges"];
              v17 = [v40 _characterSetForRanges:v16];
              v18 = [v11 objectForKeyedSubscript:@"supplementaryCharacterRanges"];

              v19 = [v40 _characterSetForRanges:v18];
              [v17 formUnionWithCharacterSet:v19];
              v20 = [v11 objectForKeyedSubscript:@"secondaryLanguageRange"];
              v21 = [v40 _characterSetForRanges:v20];

              v22 = [[AXSSDialectMap alloc] initWithLocale:v13 voiceName:v14 specificLanguageID:v15 voiceIdentifier:0 speakableCharacters:v17 secondaryLanguageRange:v21];
              [v42 addObject:v22];
            }

            v43 = [v39 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v43);
        }

        v23 = [[AXSSLanguageMap alloc] initWithLanguageID:v37 isWestern:v33 isAmbiguous:v34 isRTL:v32 dialects:v42 alternateLanguageIDs:v36 associatedAmbiguousLanguages:v35];
        [v30 addObject:v23];

        v5 = v38 + 1;
      }

      while (v38 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v31);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)_characterSetForRanges:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD48]);
  if ([v3 length])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = v3;
    obj = [v3 componentsSeparatedByString:@" "];
    v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"-"];
          v10 = [v9 objectAtIndex:0];
          v11 = [v10 integerValue];
          v12 = [v9 objectAtIndex:1];
          v13 = [v12 integerValue];

          [v4 addCharactersInRange:{v11, v13}];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v3 = v16;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

@end
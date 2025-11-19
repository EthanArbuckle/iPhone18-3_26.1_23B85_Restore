@interface AXSSLanguageMap
- (AXSSDialectMap)userLocaleDialect;
- (AXSSLanguageMap)initWithLanguageID:(id)a3 isWestern:(BOOL)a4 isAmbiguous:(BOOL)a5 isRTL:(BOOL)a6 dialects:(id)a7 alternateLanguageIDs:(id)a8 associatedAmbiguousLanguages:(id)a9;
- (id)description;
- (id)dialectWithLocaleIdentifier:(id)a3;
@end

@implementation AXSSLanguageMap

- (AXSSLanguageMap)initWithLanguageID:(id)a3 isWestern:(BOOL)a4 isAmbiguous:(BOOL)a5 isRTL:(BOOL)a6 dialects:(id)a7 alternateLanguageIDs:(id)a8 associatedAmbiguousLanguages:(id)a9
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v28 = a7;
  v16 = a8;
  v17 = a9;
  v34.receiver = self;
  v34.super_class = AXSSLanguageMap;
  v18 = [(AXSSLanguageMap *)&v34 init];
  v19 = v18;
  if (v18)
  {
    v18->_western = a4;
    v18->_ambiguous = a5;
    v18->_rtl = a6;
    objc_storeStrong(&v18->_generalLanguageID, a3);
    objc_storeStrong(&v19->_alternateLanguageIDs, a8);
    objc_storeStrong(&v19->_dialects, a7);
    objc_storeStrong(&v19->_associatedAmbiguousLanguages, a9);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = [(AXSSLanguageMap *)v19 dialects:v28];
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v30 + 1) + 8 * i) setValue:v19 forKey:@"languageMap"];
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v22);
    }

    v25 = v19;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(AXSSLanguageMap *)self alternateLanguageIDs];
  v4 = [v3 count];

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(AXSSLanguageMap *)self alternateLanguageIDs];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v9 = @" AltLangs:";
      do
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [(__CFString *)v11 stringByAppendingFormat:@"%@ ", *(*(&v19 + 1) + 8 * v10)];

          ++v10;
          v11 = v9;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = @" AltLangs:";
    }
  }

  else
  {
    v9 = &stru_1F405A428;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(AXSSLanguageMap *)self generalLanguageID];
  if ([(AXSSLanguageMap *)self isWestern])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(AXSSLanguageMap *)self isAmbiguous])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [v12 stringWithFormat:@"AXSSLanguage <%p>. LangID:%@%@ western:%@ ambiguous:%@", self, v13, v9, v14, v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (AXSSDialectMap)userLocaleDialect
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[AXSSLanguageManager shared];
  v4 = [v3 userLocale];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = self;
  v5 = [(AXSSLanguageMap *)self dialects];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 locale];
        v12 = [v11 localeIdentifier];
        v13 = [v4 localeIdentifier];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v15 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(AXSSLanguageMap *)v19 dialects];
  v15 = [v5 firstObject];
LABEL_11:
  v16 = v15;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)dialectWithLocaleIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(AXSSLanguageMap *)self dialects];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 locale];
        v11 = [v10 localeIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

@end
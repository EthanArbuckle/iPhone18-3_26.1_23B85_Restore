@interface AXLangMap
- (AXDialectMap)defaultDialect;
- (AXDialectMap)userLocaleDialect;
- (AXDialectMap)userPreferredDialect;
- (AXLangMap)initWithLanguageID:(id)a3 isWestern:(BOOL)a4 isAmbiguous:(BOOL)a5 isRTL:(BOOL)a6 dialects:(id)a7 alternateLanguageIDs:(id)a8 associatedAmbiguousLanguages:(id)a9;
- (id)basicDescription;
- (id)debugDescription;
- (id)dialectWithLocaleIdentifier:(id)a3;
@end

@implementation AXLangMap

- (AXLangMap)initWithLanguageID:(id)a3 isWestern:(BOOL)a4 isAmbiguous:(BOOL)a5 isRTL:(BOOL)a6 dialects:(id)a7 alternateLanguageIDs:(id)a8 associatedAmbiguousLanguages:(id)a9
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v51 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v49.receiver = self;
  v49.super_class = AXLangMap;
  v19 = [(AXLangMap *)&v49 init];
  v20 = v19;
  if (v19)
  {
    [(AXLangMap *)v19 setWestern:v13];
    [(AXLangMap *)v20 setAmbiguous:v12];
    [(AXLangMap *)v20 setRtl:v11];
    v42 = v15;
    [(AXLangMap *)v20 setGeneralLanguageID:v15];
    v40 = v17;
    [(AXLangMap *)v20 setAlternateLanguageIDs:v17];
    v41 = v16;
    [(AXLangMap *)v20 setDialects:v16];
    v39 = v18;
    [(AXLangMap *)v20 setAssociatedAmbiguousLanguages:v18];
    v21 = _AXSQuickSpeakCopyPreferredLocalesForLanguages();
    v22 = [(AXLangMap *)v20 generalLanguageID];
    v38 = v21;
    v23 = [v21 objectForKey:v22];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [(AXLangMap *)v20 dialects];
    v24 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (!v24)
    {
      goto LABEL_13;
    }

    v25 = v24;
    v26 = *v46;
    v27 = @"langMap";
    v44 = v23;
    while (1)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v45 + 1) + 8 * i);
        [v29 setValue:v20 forKey:v27];
        v30 = [v29 specificLanguageID];
        if ([v30 isEqualToString:v23])
        {
        }

        else
        {
          v31 = [v29 locale];
          [v31 localeIdentifier];
          v32 = v20;
          v34 = v33 = v27;
          v35 = [v34 isEqualToString:v23];

          v27 = v33;
          v20 = v32;

          if (!v35)
          {
            goto LABEL_11;
          }
        }

        [(AXLangMap *)v20 setUserPreferredDialect:v29];
LABEL_11:
        v23 = v44;
      }

      v25 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (!v25)
      {
LABEL_13:

        v36 = v20;
        v16 = v41;
        v15 = v42;
        v18 = v39;
        v17 = v40;
        break;
      }
    }
  }

  return v20;
}

- (id)basicDescription
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(AXLangMap *)self alternateLanguageIDs];
  v4 = [v3 count];

  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(AXLangMap *)self alternateLanguageIDs];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      v9 = @" AltLangs:";
      do
      {
        v10 = 0;
        v11 = v9;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [(__CFString *)v11 stringByAppendingFormat:@"%@ ", *(*(&v18 + 1) + 8 * v10)];

          ++v10;
          v11 = v9;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
    v9 = &stru_1EFE6D570;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(AXLangMap *)self generalLanguageID];
  if ([(AXLangMap *)self isWestern])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(AXLangMap *)self isAmbiguous])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [v12 stringWithFormat:@"AXLang <%p>. LangID:%@%@ western:%@ ambiguous:%@", self, v13, v9, v14, v15];

  return v16;
}

- (id)debugDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"\nDialects:\n"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AXLangMap *)self dialects];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v13 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = [(AXLangMap *)self userPreferredDialect];
  [v3 appendFormat:@"Preferred Dialect:%@\n", v9];

  v10 = [(AXLangMap *)self basicDescription];
  v11 = [v10 stringByAppendingString:v3];

  return v11;
}

- (AXDialectMap)userLocaleDialect
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = +[AXLanguageManager sharedInstance];
  v4 = [v3 userLocale];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = self;
  v5 = [(AXLangMap *)self dialects];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
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

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(AXLangMap *)v18 dialects];
  v15 = [v5 firstObject];
LABEL_11:
  v16 = v15;

  return v16;
}

- (AXDialectMap)defaultDialect
{
  v3 = [(AXLangMap *)self userPreferredDialect];

  if (v3)
  {
    [(AXLangMap *)self userPreferredDialect];
  }

  else
  {
    [(AXLangMap *)self userLocaleDialect];
  }
  v4 = ;

  return v4;
}

- (id)dialectWithLocaleIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AXLangMap *)self dialects];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 locale];
        v11 = [v10 localeIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (AXDialectMap)userPreferredDialect
{
  WeakRetained = objc_loadWeakRetained(&self->_userPreferredDialect);

  return WeakRetained;
}

@end
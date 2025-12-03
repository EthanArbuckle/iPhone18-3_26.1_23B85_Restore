@interface AXSSLanguageMap
- (AXSSDialectMap)userLocaleDialect;
- (AXSSLanguageMap)initWithLanguageID:(id)d isWestern:(BOOL)western isAmbiguous:(BOOL)ambiguous isRTL:(BOOL)l dialects:(id)dialects alternateLanguageIDs:(id)ds associatedAmbiguousLanguages:(id)languages;
- (id)description;
- (id)dialectWithLocaleIdentifier:(id)identifier;
@end

@implementation AXSSLanguageMap

- (AXSSLanguageMap)initWithLanguageID:(id)d isWestern:(BOOL)western isAmbiguous:(BOOL)ambiguous isRTL:(BOOL)l dialects:(id)dialects alternateLanguageIDs:(id)ds associatedAmbiguousLanguages:(id)languages
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dialectsCopy = dialects;
  dsCopy = ds;
  languagesCopy = languages;
  v34.receiver = self;
  v34.super_class = AXSSLanguageMap;
  v18 = [(AXSSLanguageMap *)&v34 init];
  v19 = v18;
  if (v18)
  {
    v18->_western = western;
    v18->_ambiguous = ambiguous;
    v18->_rtl = l;
    objc_storeStrong(&v18->_generalLanguageID, d);
    objc_storeStrong(&v19->_alternateLanguageIDs, ds);
    objc_storeStrong(&v19->_dialects, dialects);
    objc_storeStrong(&v19->_associatedAmbiguousLanguages, languages);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = [(AXSSLanguageMap *)v19 dialects:dialectsCopy];
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
  alternateLanguageIDs = [(AXSSLanguageMap *)self alternateLanguageIDs];
  v4 = [alternateLanguageIDs count];

  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    alternateLanguageIDs2 = [(AXSSLanguageMap *)self alternateLanguageIDs];
    v6 = [alternateLanguageIDs2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(alternateLanguageIDs2);
          }

          v9 = [(__CFString *)v11 stringByAppendingFormat:@"%@ ", *(*(&v19 + 1) + 8 * v10)];

          ++v10;
          v11 = v9;
        }

        while (v7 != v10);
        v7 = [alternateLanguageIDs2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  generalLanguageID = [(AXSSLanguageMap *)self generalLanguageID];
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

  v16 = [v12 stringWithFormat:@"AXSSLanguage <%p>. LangID:%@%@ western:%@ ambiguous:%@", self, generalLanguageID, v9, v14, v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (AXSSDialectMap)userLocaleDialect
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = +[AXSSLanguageManager shared];
  userLocale = [v3 userLocale];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  dialects = [(AXSSLanguageMap *)self dialects];
  v6 = [dialects countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(dialects);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        locale = [v10 locale];
        localeIdentifier = [locale localeIdentifier];
        localeIdentifier2 = [userLocale localeIdentifier];
        v14 = [localeIdentifier isEqualToString:localeIdentifier2];

        if (v14)
        {
          firstObject = v10;
          goto LABEL_11;
        }
      }

      v7 = [dialects countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  dialects = [(AXSSLanguageMap *)selfCopy dialects];
  firstObject = [dialects firstObject];
LABEL_11:
  v16 = firstObject;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)dialectWithLocaleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [identifier stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dialects = [(AXSSLanguageMap *)self dialects];
  v6 = [dialects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(dialects);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        locale = [v9 locale];
        localeIdentifier = [locale localeIdentifier];
        v12 = [localeIdentifier isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [dialects countByEnumeratingWithState:&v15 objects:v19 count:16];
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
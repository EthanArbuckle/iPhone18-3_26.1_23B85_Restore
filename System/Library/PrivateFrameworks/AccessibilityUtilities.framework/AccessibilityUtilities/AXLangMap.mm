@interface AXLangMap
- (AXDialectMap)defaultDialect;
- (AXDialectMap)userLocaleDialect;
- (AXDialectMap)userPreferredDialect;
- (AXLangMap)initWithLanguageID:(id)d isWestern:(BOOL)western isAmbiguous:(BOOL)ambiguous isRTL:(BOOL)l dialects:(id)dialects alternateLanguageIDs:(id)ds associatedAmbiguousLanguages:(id)languages;
- (id)basicDescription;
- (id)debugDescription;
- (id)dialectWithLocaleIdentifier:(id)identifier;
@end

@implementation AXLangMap

- (AXLangMap)initWithLanguageID:(id)d isWestern:(BOOL)western isAmbiguous:(BOOL)ambiguous isRTL:(BOOL)l dialects:(id)dialects alternateLanguageIDs:(id)ds associatedAmbiguousLanguages:(id)languages
{
  lCopy = l;
  ambiguousCopy = ambiguous;
  westernCopy = western;
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dialectsCopy = dialects;
  dsCopy = ds;
  languagesCopy = languages;
  v49.receiver = self;
  v49.super_class = AXLangMap;
  v19 = [(AXLangMap *)&v49 init];
  v20 = v19;
  if (v19)
  {
    [(AXLangMap *)v19 setWestern:westernCopy];
    [(AXLangMap *)v20 setAmbiguous:ambiguousCopy];
    [(AXLangMap *)v20 setRtl:lCopy];
    v42 = dCopy;
    [(AXLangMap *)v20 setGeneralLanguageID:dCopy];
    v40 = dsCopy;
    [(AXLangMap *)v20 setAlternateLanguageIDs:dsCopy];
    v41 = dialectsCopy;
    [(AXLangMap *)v20 setDialects:dialectsCopy];
    v39 = languagesCopy;
    [(AXLangMap *)v20 setAssociatedAmbiguousLanguages:languagesCopy];
    v21 = _AXSQuickSpeakCopyPreferredLocalesForLanguages();
    generalLanguageID = [(AXLangMap *)v20 generalLanguageID];
    v38 = v21;
    v23 = [v21 objectForKey:generalLanguageID];

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
        specificLanguageID = [v29 specificLanguageID];
        if ([specificLanguageID isEqualToString:v23])
        {
        }

        else
        {
          locale = [v29 locale];
          [locale localeIdentifier];
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
        dialectsCopy = v41;
        dCopy = v42;
        languagesCopy = v39;
        dsCopy = v40;
        break;
      }
    }
  }

  return v20;
}

- (id)basicDescription
{
  v23 = *MEMORY[0x1E69E9840];
  alternateLanguageIDs = [(AXLangMap *)self alternateLanguageIDs];
  v4 = [alternateLanguageIDs count];

  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    alternateLanguageIDs2 = [(AXLangMap *)self alternateLanguageIDs];
    v6 = [alternateLanguageIDs2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(alternateLanguageIDs2);
          }

          v9 = [(__CFString *)v11 stringByAppendingFormat:@"%@ ", *(*(&v18 + 1) + 8 * v10)];

          ++v10;
          v11 = v9;
        }

        while (v7 != v10);
        v7 = [alternateLanguageIDs2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  generalLanguageID = [(AXLangMap *)self generalLanguageID];
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

  v16 = [v12 stringWithFormat:@"AXLang <%p>. LangID:%@%@ western:%@ ambiguous:%@", self, generalLanguageID, v9, v14, v15];

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
  dialects = [(AXLangMap *)self dialects];
  v5 = [dialects countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(dialects);
        }

        [v3 appendFormat:@"\t%@\n", *(*(&v13 + 1) + 8 * i)];
      }

      v6 = [dialects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  userPreferredDialect = [(AXLangMap *)self userPreferredDialect];
  [v3 appendFormat:@"Preferred Dialect:%@\n", userPreferredDialect];

  basicDescription = [(AXLangMap *)self basicDescription];
  v11 = [basicDescription stringByAppendingString:v3];

  return v11;
}

- (AXDialectMap)userLocaleDialect
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = +[AXLanguageManager sharedInstance];
  userLocale = [v3 userLocale];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  dialects = [(AXLangMap *)self dialects];
  v6 = [dialects countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(dialects);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
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

      v7 = [dialects countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  dialects = [(AXLangMap *)selfCopy dialects];
  firstObject = [dialects firstObject];
LABEL_11:
  v16 = firstObject;

  return v16;
}

- (AXDialectMap)defaultDialect
{
  userPreferredDialect = [(AXLangMap *)self userPreferredDialect];

  if (userPreferredDialect)
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

- (id)dialectWithLocaleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [identifier stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dialects = [(AXLangMap *)self dialects];
  v6 = [dialects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(dialects);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        locale = [v9 locale];
        localeIdentifier = [locale localeIdentifier];
        v12 = [localeIdentifier isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [dialects countByEnumeratingWithState:&v14 objects:v18 count:16];
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
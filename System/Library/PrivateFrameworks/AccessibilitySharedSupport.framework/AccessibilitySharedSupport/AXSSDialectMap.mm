@interface AXSSDialectMap
- (AXSSDialectMap)initWithLocale:(id)a3 voiceName:(id)a4 specificLanguageID:(id)a5 voiceIdentifier:(id)a6 speakableCharacters:(id)a7 secondaryLanguageRange:(id)a8;
- (AXSSLanguageMap)languageMap;
- (BOOL)canSpeakString:(id)a3 letterOnly:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)regionID;
- (id)description;
@end

@implementation AXSSDialectMap

- (AXSSDialectMap)initWithLocale:(id)a3 voiceName:(id)a4 specificLanguageID:(id)a5 voiceIdentifier:(id)a6 speakableCharacters:(id)a7 secondaryLanguageRange:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v34.receiver = self;
  v34.super_class = AXSSDialectMap;
  v19 = [(AXSSDialectMap *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_locale, a3);
    objc_storeStrong(&v20->_voiceName, a4);
    objc_storeStrong(&v20->_speakableCharacters, a7);
    objc_storeStrong(&v20->_secondaryLanguageRange, a8);
    if (v16)
    {
      v21 = [v16 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      specificLanguageID = v20->_specificLanguageID;
      v20->_specificLanguageID = v21;
    }

    else
    {
      specificLanguageID = [(AXSSDialectMap *)v20 locale];
      v23 = [specificLanguageID localeIdentifier];
      v24 = [v23 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      v25 = v20->_specificLanguageID;
      v20->_specificLanguageID = v24;
    }

    v26 = [(AXSSDialectMap *)v20 specificLanguageID];
    v27 = [v26 hasPrefix:@"zh"];

    if (v27)
    {
      v28 = [(AXSSDialectMap *)v20 specificLanguageID];
      v29 = [v28 stringByReplacingOccurrencesOfString:@"Hant-" withString:&stru_1F405A428];
      [(AXSSDialectMap *)v20 setSpecificLanguageID:v29];

      v30 = [(AXSSDialectMap *)v20 specificLanguageID];
      v31 = [v30 stringByReplacingOccurrencesOfString:@"Hans-" withString:&stru_1F405A428];
      [(AXSSDialectMap *)v20 setSpecificLanguageID:v31];
    }

    v32 = v20;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXSSDialectMap *)self voiceName];
  v5 = [(AXSSDialectMap *)self locale];
  v6 = [v5 localeIdentifier];
  v7 = [(AXSSDialectMap *)self specificLanguageID];
  v8 = [v3 stringWithFormat:@"AXSSDialect Voice:%@. LocaleID:%@ LangID:%@", v4, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(AXSSDialectMap *)self specificLanguageID];
    v7 = [v5 specificLanguageID];
    if ([v6 isEqual:v7])
    {
      v8 = [(AXSSDialectMap *)self voiceIdentifier];
      v9 = [v5 voiceIdentifier];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)canSpeakString:(id)a3 letterOnly:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v5)
  {
    v6 = +[AXSSLanguageManager shared];
    v7 = [v5 length];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = [v5 characterAtIndex:v10];
        if (v4)
        {
          v12 = [MEMORY[0x1E696AB08] letterCharacterSet];
          if (([v12 characterIsMember:v11] & 1) == 0)
          {

            goto LABEL_13;
          }

          v13 = [MEMORY[0x1E696AB08] nonBaseCharacterSet];
          v14 = [v13 characterIsMember:v11];

          if (v14)
          {
            goto LABEL_13;
          }
        }

        else if ([v6 isCharacterIgnored:v11])
        {
          goto LABEL_13;
        }

        if (([v6 isCharacterCommon:v11] & 1) == 0 && !-[AXSSDialectMap canSpeakCharacter:](self, "canSpeakCharacter:", v11))
        {
          goto LABEL_17;
        }

LABEL_13:
        v9 = ++v10 >= v8;
        if (v8 == v10)
        {
          goto LABEL_17;
        }
      }
    }

    v9 = 1;
LABEL_17:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)regionID
{
  v2 = [(AXSSDialectMap *)self locale];
  v3 = [v2 localeIdentifier];

  return v3;
}

- (AXSSLanguageMap)languageMap
{
  WeakRetained = objc_loadWeakRetained(&self->_languageMap);

  return WeakRetained;
}

@end
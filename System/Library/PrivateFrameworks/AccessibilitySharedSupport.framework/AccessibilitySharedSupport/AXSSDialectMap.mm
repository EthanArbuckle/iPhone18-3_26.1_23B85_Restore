@interface AXSSDialectMap
- (AXSSDialectMap)initWithLocale:(id)locale voiceName:(id)name specificLanguageID:(id)d voiceIdentifier:(id)identifier speakableCharacters:(id)characters secondaryLanguageRange:(id)range;
- (AXSSLanguageMap)languageMap;
- (BOOL)canSpeakString:(id)string letterOnly:(BOOL)only;
- (BOOL)isEqual:(id)equal;
- (NSString)regionID;
- (id)description;
@end

@implementation AXSSDialectMap

- (AXSSDialectMap)initWithLocale:(id)locale voiceName:(id)name specificLanguageID:(id)d voiceIdentifier:(id)identifier speakableCharacters:(id)characters secondaryLanguageRange:(id)range
{
  localeCopy = locale;
  nameCopy = name;
  dCopy = d;
  charactersCopy = characters;
  rangeCopy = range;
  v34.receiver = self;
  v34.super_class = AXSSDialectMap;
  v19 = [(AXSSDialectMap *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_locale, locale);
    objc_storeStrong(&v20->_voiceName, name);
    objc_storeStrong(&v20->_speakableCharacters, characters);
    objc_storeStrong(&v20->_secondaryLanguageRange, range);
    if (dCopy)
    {
      v21 = [dCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      specificLanguageID = v20->_specificLanguageID;
      v20->_specificLanguageID = v21;
    }

    else
    {
      specificLanguageID = [(AXSSDialectMap *)v20 locale];
      localeIdentifier = [specificLanguageID localeIdentifier];
      v24 = [localeIdentifier stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      v25 = v20->_specificLanguageID;
      v20->_specificLanguageID = v24;
    }

    specificLanguageID = [(AXSSDialectMap *)v20 specificLanguageID];
    v27 = [specificLanguageID hasPrefix:@"zh"];

    if (v27)
    {
      specificLanguageID2 = [(AXSSDialectMap *)v20 specificLanguageID];
      v29 = [specificLanguageID2 stringByReplacingOccurrencesOfString:@"Hant-" withString:&stru_1F405A428];
      [(AXSSDialectMap *)v20 setSpecificLanguageID:v29];

      specificLanguageID3 = [(AXSSDialectMap *)v20 specificLanguageID];
      v31 = [specificLanguageID3 stringByReplacingOccurrencesOfString:@"Hans-" withString:&stru_1F405A428];
      [(AXSSDialectMap *)v20 setSpecificLanguageID:v31];
    }

    v32 = v20;
  }

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  voiceName = [(AXSSDialectMap *)self voiceName];
  locale = [(AXSSDialectMap *)self locale];
  localeIdentifier = [locale localeIdentifier];
  specificLanguageID = [(AXSSDialectMap *)self specificLanguageID];
  v8 = [v3 stringWithFormat:@"AXSSDialect Voice:%@. LocaleID:%@ LangID:%@", voiceName, localeIdentifier, specificLanguageID];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    specificLanguageID = [(AXSSDialectMap *)self specificLanguageID];
    specificLanguageID2 = [v5 specificLanguageID];
    if ([specificLanguageID isEqual:specificLanguageID2])
    {
      voiceIdentifier = [(AXSSDialectMap *)self voiceIdentifier];
      voiceIdentifier2 = [v5 voiceIdentifier];
      v10 = [voiceIdentifier isEqual:voiceIdentifier2];
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

- (BOOL)canSpeakString:(id)string letterOnly:(BOOL)only
{
  onlyCopy = only;
  stringCopy = string;
  if (stringCopy)
  {
    v6 = +[AXSSLanguageManager shared];
    v7 = [stringCopy length];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = [stringCopy characterAtIndex:v10];
        if (onlyCopy)
        {
          letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
          if (([letterCharacterSet characterIsMember:v11] & 1) == 0)
          {

            goto LABEL_13;
          }

          nonBaseCharacterSet = [MEMORY[0x1E696AB08] nonBaseCharacterSet];
          v14 = [nonBaseCharacterSet characterIsMember:v11];

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
  locale = [(AXSSDialectMap *)self locale];
  localeIdentifier = [locale localeIdentifier];

  return localeIdentifier;
}

- (AXSSLanguageMap)languageMap
{
  WeakRetained = objc_loadWeakRetained(&self->_languageMap);

  return WeakRetained;
}

@end
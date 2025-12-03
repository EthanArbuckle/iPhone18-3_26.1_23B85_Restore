@interface NSBundle(AFUIUtilities)
- (CFArrayRef)_assistantUIlocalizationArrayForLanguageCode:()AFUIUtilities;
- (id)_assistantUILocalizedStringForKey:()AFUIUtilities value:table:language:;
- (id)_assistantUIStringForKey:()AFUIUtilities value:table:localizationLanguageCode:;
- (id)assistantUILocalizedStringForKey:()AFUIUtilities value:table:;
- (id)assistantUILocalizedStringFromSiriLanguageForKey:()AFUIUtilities table:;
- (id)assistantUILocalizedStringFromSystemLanguageForKey:()AFUIUtilities table:;
- (uint64_t)assistantLanguageIsRTL;
@end

@implementation NSBundle(AFUIUtilities)

- (uint64_t)assistantLanguageIsRTL
{
  v0 = MEMORY[0x277CBEAF8];
  v1 = SRUIFGetLanguageCode();
  if ([v0 characterDirectionForLanguage:v1] == 2)
  {
    assistantLanguageForceRTL = 1;
  }

  else
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    assistantLanguageForceRTL = [mEMORY[0x277CEF368] assistantLanguageForceRTL];
  }

  return assistantLanguageForceRTL;
}

- (id)assistantUILocalizedStringFromSiriLanguageForKey:()AFUIUtilities table:
{
  v6 = MEMORY[0x277CEF368];
  v7 = a4;
  v8 = a3;
  sharedPreferences = [v6 sharedPreferences];
  languageCode = [sharedPreferences languageCode];
  v11 = [self _assistantUILocalizedStringForKey:v8 value:0 table:v7 language:languageCode];

  return v11;
}

- (id)assistantUILocalizedStringFromSystemLanguageForKey:()AFUIUtilities table:
{
  v6 = MEMORY[0x277CBEAF8];
  v7 = a4;
  v8 = a3;
  preferredLanguages = [v6 preferredLanguages];
  v10 = [preferredLanguages objectAtIndex:0];
  v11 = [self _assistantUILocalizedStringForKey:v8 value:0 table:v7 language:v10];

  return v11;
}

- (id)assistantUILocalizedStringForKey:()AFUIUtilities value:table:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = SRUIFGetLanguageCode();
  v12 = [self _assistantUILocalizedStringForKey:v10 value:v9 table:v8 language:v11];

  return v12;
}

- (id)_assistantUILocalizedStringForKey:()AFUIUtilities value:table:language:
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    goto LABEL_19;
  }

  [self _assistantUIlocalizationArrayForLanguageCode:v13];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v28 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v15)
  {

LABEL_19:
    v17 = 0;
LABEL_20:
    v21 = v10;
    if (v11)
    {
      if ([v11 length])
      {
        v21 = v11;
      }

      else
      {
        v21 = v10;
      }
    }

    v22 = v21;

    v17 = v22;
    goto LABEL_25;
  }

  v16 = v15;
  v24 = v13;
  v17 = 0;
  v18 = *v26;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      v20 = v17;
      if (*v26 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v17 = [self _assistantUIStringForKey:v10 value:v11 table:v12 localizationLanguageCode:*(*(&v25 + 1) + 8 * i)];

      if (v17 && ([v17 isEqualToString:v10] & 1) == 0 && (!v11 || !objc_msgSend(v17, "isEqualToString:", v11)))
      {

        goto LABEL_16;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  if (!v17)
  {
    v13 = v24;
    goto LABEL_20;
  }

LABEL_16:
  v13 = v24;
  if (![v17 length])
  {
    goto LABEL_20;
  }

LABEL_25:

  return v17;
}

- (CFArrayRef)_assistantUIlocalizationArrayForLanguageCode:()AFUIUtilities
{
  v4 = a3;
  localizations = [self localizations];
  v6 = [MEMORY[0x277CBEA60] arrayWithObject:v4];

  v7 = CFBundleCopyLocalizationsForPreferences(localizations, v6);

  return v7;
}

- (id)_assistantUIStringForKey:()AFUIUtilities value:table:localizationLanguageCode:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  CFBundleGetBundleWithIdentifier([self bundleIdentifier]);
  v14 = CFBundleCopyLocalizedStringForLocalization();

  return v14;
}

@end
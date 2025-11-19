@interface NSLocale(LTLocaleIdentifier)
+ (id)lt_bestMatchForPreferredLocales:()LTLocaleIdentifier fromSupportedLocales:;
+ (id)lt_defaultTargetForSource:()LTLocaleIdentifier systemLocale:availableLocales:targetMap:;
+ (id)lt_fallbackForLocale:()LTLocaleIdentifier;
+ (id)lt_localeWithLTIdentifier:()LTLocaleIdentifier;
+ (id)lt_preferredLocales;
+ (void)lt_bestMatchesForPreferredLocales:()LTLocaleIdentifier fromSupportedLocales:;
- (id)_ltCsLocaleIdentifier;
- (id)_ltLocaleIdentifier;
- (id)_vsLocaleIdentifier;
- (id)lt_displayNameForContext:()LTLocaleIdentifier inTargetLocale:;
- (id)lt_displaySubnameForContext:()LTLocaleIdentifier inTargetLocale:;
- (id)lt_nlLanguageCode;
- (uint64_t)_ltEqual:()LTLocaleIdentifier;
- (uint64_t)_lt_isChinese;
- (uint64_t)_lt_isSimplifiedChinese;
- (uint64_t)_lt_isTraditionalChinese;
- (uint64_t)_lt_shouldCapitalizeDisplayNameForContext:()LTLocaleIdentifier inTargetLocale:;
@end

@implementation NSLocale(LTLocaleIdentifier)

- (id)_ltLocaleIdentifier
{
  v1 = [a1 localeIdentifier];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  return v2;
}

+ (id)lt_localeWithLTIdentifier:()LTLocaleIdentifier
{
  v4 = [a3 lt_localeIdentifier];
  v5 = [a1 localeWithLocaleIdentifier:v4];

  return v5;
}

- (id)_ltCsLocaleIdentifier
{
  v1 = [a1 localeIdentifier];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v2;
}

- (id)_vsLocaleIdentifier
{
  v1 = [a1 localeIdentifier];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v2;
}

- (uint64_t)_ltEqual:()LTLocaleIdentifier
{
  v4 = a3;
  v5 = [a1 _ltLocaleIdentifier];
  v6 = [v4 _ltLocaleIdentifier];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

- (id)lt_nlLanguageCode
{
  v1 = MEMORY[0x277CBEAF8];
  v2 = [a1 localeIdentifier];
  v3 = [v1 baseLanguageFromLanguage:v2];

  return v3;
}

+ (id)lt_preferredLocales
{
  v0 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v1 = [v0 _ltCompactMap:&__block_literal_global_17];

  return v1;
}

+ (id)lt_bestMatchForPreferredLocales:()LTLocaleIdentifier fromSupportedLocales:
{
  v1 = [a1 lt_bestMatchesForPreferredLocales:? fromSupportedLocales:?];
  v2 = [v1 firstObject];

  return v2;
}

+ (void)lt_bestMatchesForPreferredLocales:()LTLocaleIdentifier fromSupportedLocales:
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    v7 = [MEMORY[0x277CBEAF8] lt_preferredLocales];

    v5 = v7;
  }

  v8 = [v6 _ltCompactMap:&__block_literal_global_7_0];
  v9 = [v5 _ltCompactMap:&__block_literal_global_9_0];
  v10 = [MEMORY[0x277CBEB18] array];
  v28 = v9;
  v29 = v8;
  v11 = [MEMORY[0x277CBEAF8] matchedLanguagesFromAvailableLanguages:v8 forPreferredLanguages:v9];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v34 + 1) + 8 * v15)];
        if (v16)
        {
          [v10 addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v13);
  }

  v17 = v10;
  if (![v10 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        v22 = 0;
        do
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v30 + 1) + 8 * v22) _ltLocaleIdentifier];
          v24 = _LTLanguageCodeToSupportedLocale(v23, v6);

          if (v24)
          {
            [v10 addObject:v24];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }

    if ([v10 count])
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }
  }

  v25 = v17;

  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)lt_fallbackForLocale:()LTLocaleIdentifier
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = a3;
  v5 = [v3 localeWithLocaleIdentifier:@"en_US"];
  v6 = [[_LTLocalePair alloc] initWithSourceLocale:v4 targetLocale:v5];
  v7 = [v4 _ltLocaleIdentifier];

  v8 = [v5 _ltLocaleIdentifier];
  if ([v7 isEqualToString:v8])
  {

LABEL_4:
    v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"es_ES"];
    goto LABEL_6;
  }

  v9 = [(_LTLocalePair *)v6 isVariantPair];

  if (v9)
  {
    goto LABEL_4;
  }

  v10 = v5;
LABEL_6:
  v11 = v10;

  return v11;
}

+ (id)lt_defaultTargetForSource:()LTLocaleIdentifier systemLocale:availableLocales:targetMap:
{
  v66[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v13)
  {
    v50 = a1;
    v53 = v12;
    v55 = v11;
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 URLForResource:@"DefaultTargets" withExtension:@"plist"];
    v17 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v16];
    v63 = 0;
    v18 = [MEMORY[0x277CCAC58] propertyListWithData:v17 options:0 format:0 error:&v63];
    v19 = v63;
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = v18;
    if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v14 = v22, ([v22 lt_ensureTypesForKeys:v20 values:v21] & 1) == 0))
    {

      v14 = 0;
    }

    if (!v14 || v19)
    {
      v23 = _LTOSLogAssets();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [NSLocale(LTLocaleIdentifier) lt_defaultTargetForSource:v19 systemLocale:v23 availableLocales:? targetMap:?];
      }
    }

    v12 = v53;
    v11 = v55;
    a1 = v50;
    v13 = 0;
  }

  v57 = [v11 regionCode];
  v24 = [v14 objectForKeyedSubscript:?];
  v25 = [v24 objectForKeyedSubscript:@"source"];
  if (v25)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v58 = v26;

  v27 = [v24 objectForKeyedSubscript:@"target"];
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v30 = v58;
  if (v14 && v24 && v58 && v29)
  {
    v52 = v13;
    v56 = v11;
    v31 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v58];
    v66[0] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
    v33 = [a1 lt_bestMatchForPreferredLocales:v32 fromSupportedLocales:v12];

    v49 = v29;
    v34 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v29];
    v65 = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    v36 = [a1 lt_bestMatchForPreferredLocales:v35 fromSupportedLocales:v12];

    v37 = [MEMORY[0x277CBEB18] array];
    if (v33 && ([v10 _ltEqual:v33] & 1) == 0)
    {
      [v37 addObject:v33];
    }

    v48 = v33;
    v51 = a1;
    v54 = v12;
    if (v36)
    {
      [v37 addObject:v36];
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v38 = v37;
    v39 = [v38 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v60;
      while (2)
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v60 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v59 + 1) + 8 * i);
          v44 = [[_LTLocalePair alloc] initWithSourceLocale:v10 targetLocale:v43];
          if (![(_LTLocalePair *)v44 isVariantPair])
          {
            v45 = v43;

            goto LABEL_41;
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v59 objects:v64 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v45 = [v51 lt_fallbackForLocale:v10];
LABEL_41:

    v12 = v54;
    v11 = v56;
    v13 = v52;
    v29 = v49;
    v30 = v58;
  }

  else
  {
    v45 = [a1 lt_fallbackForLocale:v10];
  }

  v46 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)lt_displayNameForContext:()LTLocaleIdentifier inTargetLocale:
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v9 = v8;
  v10 = [a1 languageCode];
  if (!v10)
  {
    a3 = 0;
    goto LABEL_39;
  }

  v11 = [v9 localizedStringForLanguageCode:v10];
  v12 = [v11 capitalizedString];

  v13 = [a1 lt_displaySubnameForContext:a3 inTargetLocale:v7];
  v14 = [MEMORY[0x277CBEAF8] currentLocale];
  v15 = [v14 _ltLocaleIdentifier];
  v16 = [v9 _ltLocaleIdentifier];
  if (![v15 isEqualToString:v16])
  {

    goto LABEL_10;
  }

  v28 = v9;
  v17 = v13;
  v18 = [a1 _lt_isChinese];

  if (v18)
  {
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    [v14 localizedStringForKey:@"MANDARIN_TITLE" value:&stru_284DBB9B8 table:0];
    v12 = v15 = v12;
    v13 = v17;
    v9 = v28;
LABEL_10:

    goto LABEL_12;
  }

  v13 = v17;
  v9 = v28;
LABEL_12:
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if ([a1 _lt_isChinese])
      {
        v19 = a1;
        v20 = 4;
        goto LABEL_26;
      }

      v24 = v9;
      v25 = v10;
      v26 = 4;
LABEL_32:
      v23 = [v24 localizedStringForLanguage:v25 context:v26];
LABEL_33:
      v21 = v23;

      if ([v13 length])
      {
        v22 = concatenate(v21, v13);
LABEL_37:
        a3 = v22;
        goto LABEL_38;
      }

      v22 = v21;
LABEL_36:
      v21 = v22;
      goto LABEL_37;
    }

    if (a3 != 4)
    {
      if (a3 == 3)
      {
        if ([a1 _lt_isChinese])
        {
          v19 = a1;
          v20 = 5;
LABEL_26:
          if ([v19 _lt_shouldCapitalizeDisplayNameForContext:v20 inTargetLocale:v9])
          {
            [v12 capitalizedStringWithLocale:v9];
          }

          else
          {
            [v12 lowercaseStringWithLocale:v9];
          }
          v23 = ;
          goto LABEL_33;
        }

        v24 = v9;
        v25 = v10;
        v26 = 5;
        goto LABEL_32;
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_21:
    if ([v13 length])
    {
      a3 = concatenate(v12, v13);
      v21 = v12;
      goto LABEL_38;
    }

LABEL_23:
    v22 = v12;
    goto LABEL_36;
  }

  if (a3 == 1)
  {
    goto LABEL_23;
  }

LABEL_20:
  v21 = v12;
LABEL_38:

LABEL_39:

  return a3;
}

- (id)lt_displaySubnameForContext:()LTLocaleIdentifier inTargetLocale:
{
  v6 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v7 = [a1 regionCode];
  v8 = [a1 languageCode];
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v11 = [MEMORY[0x277CBEB98] setWithArray:&unk_284DC98B8];
    if (![v11 containsObject:v9])
    {
      v12 = 0;
LABEL_15:
      v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_284DC98D0];
      v16 = v15;
      if (!a3 && [v15 containsObject:v9])
      {
        v17 = [v6 localizedStringForRegion:v7 context:3 short:0];

        v12 = v17;
      }

      v12 = v12;

      v10 = v12;
      goto LABEL_19;
    }

    v12 = [v6 localizedStringForRegion:v7 context:3 short:1];
    if ([a1 _lt_isTraditionalChinese] && a3 <= 4)
    {
      if (((1 << a3) & 0xB) == 0)
      {
        goto LABEL_23;
      }

      v13 = _LTLocalizedString(@"MANDARIN_TRADITIONAL_SUBTITLE");

      v12 = v13;
    }

    if (![a1 _lt_isSimplifiedChinese] || a3 > 4)
    {
      goto LABEL_15;
    }

    if (((1 << a3) & 0xB) != 0)
    {
      v14 = _LTLocalizedString(@"MANDARIN_SIMPLIFIED_SUBTITLE");

      v12 = v14;
      goto LABEL_15;
    }

LABEL_23:
    v10 = 0;
LABEL_19:
  }

  return v10;
}

- (uint64_t)_lt_isTraditionalChinese
{
  v2 = [a1 _ltLocaleIdentifier];
  if ([v2 isEqualToString:@"zh_TW"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 scriptCode];
    v5 = [v4 capitalizedString];
    if ([v5 isEqualToString:@"HANT"])
    {
      v3 = 1;
    }

    else
    {
      v6 = [a1 languageIdentifier];
      v3 = [v6 containsString:@"-Hant-"];
    }
  }

  return v3;
}

- (uint64_t)_lt_isSimplifiedChinese
{
  v2 = [a1 _ltLocaleIdentifier];
  if ([v2 isEqualToString:@"zh_CN"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 scriptCode];
    v5 = [v4 capitalizedString];
    if ([v5 isEqualToString:@"HANS"])
    {
      v3 = 1;
    }

    else
    {
      v6 = [a1 languageIdentifier];
      v3 = [v6 containsString:@"-Hans-"];
    }
  }

  return v3;
}

- (uint64_t)_lt_isChinese
{
  v1 = [a1 languageCode];
  v2 = [v1 hasPrefix:@"zh-"];

  return v2;
}

- (uint64_t)_lt_shouldCapitalizeDisplayNameForContext:()LTLocaleIdentifier inTargetLocale:
{
  v6 = a4;
  v7 = [a1 languageCode];
  v8 = v7;
  v9 = @"und";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v6 localizedStringForLanguage:v10 context:a3];

  v12 = [v11 capitalizedStringWithLocale:v6];

  v13 = [v11 isEqualToString:v12];
  return v13;
}

+ (void)lt_defaultTargetForSource:()LTLocaleIdentifier systemLocale:availableLocales:targetMap:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23AAF5000, a2, OS_LOG_TYPE_ERROR, "Failed to read default target locale mapping: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
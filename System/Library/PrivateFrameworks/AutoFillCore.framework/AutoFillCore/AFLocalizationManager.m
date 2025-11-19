@interface AFLocalizationManager
- (AFLocalizationManager)init;
- (AFLocalizationManager)initWithLocaleIdentifier:(id)a3;
- (id)_truncationSentinel;
- (id)accessibilityLabelForAFTextContentType:(id)a3;
- (id)accessibilityLabelsForSecureHeaders:(id)a3 secureContents:(id)a4 truncationSentinel:(id)a5;
- (id)initForLocalizedStrings;
- (id)localizedStringForKey:(id)a3;
- (void)setLocaleIdentifier:(id)a3;
@end

@implementation AFLocalizationManager

- (AFLocalizationManager)init
{
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 localeIdentifier];
  v5 = [(AFLocalizationManager *)self initWithLocaleIdentifier:v4];

  return v5;
}

- (id)initForLocalizedStrings
{
  v7.receiver = self;
  v7.super_class = AFLocalizationManager;
  v2 = [(AFLocalizationManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAF8] currentLocale];
    v4 = [v3 localeIdentifier];
    localeIdentifier = v2->_localeIdentifier;
    v2->_localeIdentifier = v4;
  }

  return v2;
}

- (AFLocalizationManager)initWithLocaleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AFLocalizationManager;
  v6 = [(AFLocalizationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, a3);
  }

  return v7;
}

- (void)setLocaleIdentifier:(id)a3
{
  v5 = a3;
  localeIdentifier = self->_localeIdentifier;
  p_localeIdentifier = &self->_localeIdentifier;
  v8 = v5;
  if (([v5 isEqualToString:localeIdentifier] & 1) == 0)
  {
    objc_storeStrong(p_localeIdentifier, a3);
  }
}

- (id)localizedStringForKey:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v6 = [v4 preferredLocalizations];
  v7 = MEMORY[0x277CCA8D8];
  v16[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [v7 preferredLocalizationsFromArray:v6 forPreferences:v8];

  v10 = [v9 firstObject];
  v11 = [v4 localizedStringForKey:v3 value:0 table:@"SuggestionContent" localization:v10];
  if ([v11 isEqual:v3])
  {
    v12 = [v4 localizedStringForKey:v3 value:&stru_28537ABC8 table:@"SuggestionContent"];
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_truncationSentinel
{
  __buf[2] = *MEMORY[0x277D85DE8];
  __buf[0] = 0;
  __buf[1] = 0;
  arc4random_buf(__buf, 0x10uLL);
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:__buf];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 UUIDString];
  v5 = [v3 stringWithFormat:@"*%@*", v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)accessibilityLabelsForSecureHeaders:(id)a3 secureContents:(id)a4 truncationSentinel:(id)a5
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  if ([v7 count])
  {
    v11 = 0;
    v26 = v9;
    do
    {
      v12 = [v7 objectAtIndex:v11];
      v13 = [v12 stringByReplacingOccurrencesOfString:v9 withString:&stru_28537ABC8];

      v14 = [v8 objectAtIndex:v11];
      if ([v13 length] && objc_msgSend(v14, "length"))
      {
        v15 = v10;
        v16 = v8;
        v17 = [(AFLocalizationManager *)self localizedStringForKey:@"PROACTIVE_CANDIDATE_ACCESSIBILITY_LABEL"];
        v28 = 0;
        v18 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@%@" error:&v28, v13, v14];
        v19 = v28;
        v20 = &stru_28537ABC8;
        if (v18)
        {
          v20 = v18;
        }

        v21 = v20;

        if (v19)
        {
          v22 = AFLocalizationManagerOSLogFacility();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(AFLocalizationManager *)v29 accessibilityLabelsForSecureHeaders:v19 secureContents:v30 truncationSentinel:v22];
          }
        }

        v8 = v16;
        v10 = v15;
        v9 = v26;
        goto LABEL_17;
      }

      if ([v13 length])
      {
        v23 = v13;
      }

      else
      {
        if (![v14 length])
        {
          v21 = &stru_28537ABC8;
          goto LABEL_17;
        }

        v23 = v14;
      }

      v21 = v23;
LABEL_17:
      [v10 addObject:v21];

      ++v11;
    }

    while (v11 < [v7 count]);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)accessibilityLabelForAFTextContentType:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v6 = [v4 preferredLocalizations];
  v7 = MEMORY[0x277CCA8D8];
  v16[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [v7 preferredLocalizationsFromArray:v6 forPreferences:v8];

  v10 = [v9 firstObject];
  v11 = [v4 localizedStringForKey:v3 value:0 table:@"AXAFTextContentType" localization:v10];
  if ([v11 isEqual:v3])
  {
    v12 = [v4 localizedStringForKey:v3 value:&stru_28537ABC8 table:@"AXAFTextContentType"];
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)accessibilityLabelsForSecureHeaders:(void *)a3 secureContents:(NSObject *)a4 truncationSentinel:.cold.1(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s ERROR: invalid localized format for key PROACTIVE_CANDIDATE_ACCESSIBILITY_LABEL: %@", "-[AFLocalizationManager accessibilityLabelsForSecureHeaders:secureContents:truncationSentinel:]", a2];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_2418BE000, a4, OS_LOG_TYPE_ERROR, "%@", a1, 0xCu);
}

@end
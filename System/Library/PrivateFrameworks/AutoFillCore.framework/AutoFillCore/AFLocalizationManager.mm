@interface AFLocalizationManager
- (AFLocalizationManager)init;
- (AFLocalizationManager)initWithLocaleIdentifier:(id)identifier;
- (id)_truncationSentinel;
- (id)accessibilityLabelForAFTextContentType:(id)type;
- (id)accessibilityLabelsForSecureHeaders:(id)headers secureContents:(id)contents truncationSentinel:(id)sentinel;
- (id)initForLocalizedStrings;
- (id)localizedStringForKey:(id)key;
- (void)setLocaleIdentifier:(id)identifier;
@end

@implementation AFLocalizationManager

- (AFLocalizationManager)init
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v5 = [(AFLocalizationManager *)self initWithLocaleIdentifier:localeIdentifier];

  return v5;
}

- (id)initForLocalizedStrings
{
  v7.receiver = self;
  v7.super_class = AFLocalizationManager;
  v2 = [(AFLocalizationManager *)&v7 init];
  if (v2)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    localeIdentifier = v2->_localeIdentifier;
    v2->_localeIdentifier = localeIdentifier;
  }

  return v2;
}

- (AFLocalizationManager)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = AFLocalizationManager;
  v6 = [(AFLocalizationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localeIdentifier, identifier);
  }

  return v7;
}

- (void)setLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  localeIdentifier = self->_localeIdentifier;
  p_localeIdentifier = &self->_localeIdentifier;
  v8 = identifierCopy;
  if (([identifierCopy isEqualToString:localeIdentifier] & 1) == 0)
  {
    objc_storeStrong(p_localeIdentifier, identifier);
  }
}

- (id)localizedStringForKey:(id)key
{
  v16[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
  preferredLocalizations = [v4 preferredLocalizations];
  v7 = MEMORY[0x277CCA8D8];
  v16[0] = _deviceLanguage;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [v7 preferredLocalizationsFromArray:preferredLocalizations forPreferences:v8];

  firstObject = [v9 firstObject];
  v11 = [v4 localizedStringForKey:keyCopy value:0 table:@"SuggestionContent" localization:firstObject];
  if ([v11 isEqual:keyCopy])
  {
    v12 = [v4 localizedStringForKey:keyCopy value:&stru_28537ABC8 table:@"SuggestionContent"];
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
  uUIDString = [v2 UUIDString];
  v5 = [v3 stringWithFormat:@"*%@*", uUIDString];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)accessibilityLabelsForSecureHeaders:(id)headers secureContents:(id)contents truncationSentinel:(id)sentinel
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  contentsCopy = contents;
  sentinelCopy = sentinel;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(headersCopy, "count")}];
  if ([headersCopy count])
  {
    v11 = 0;
    v26 = sentinelCopy;
    do
    {
      v12 = [headersCopy objectAtIndex:v11];
      v13 = [v12 stringByReplacingOccurrencesOfString:sentinelCopy withString:&stru_28537ABC8];

      v14 = [contentsCopy objectAtIndex:v11];
      if ([v13 length] && objc_msgSend(v14, "length"))
      {
        v15 = v10;
        v16 = contentsCopy;
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

        contentsCopy = v16;
        v10 = v15;
        sentinelCopy = v26;
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

    while (v11 < [headersCopy count]);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)accessibilityLabelForAFTextContentType:(id)type
{
  v16[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
  preferredLocalizations = [v4 preferredLocalizations];
  v7 = MEMORY[0x277CCA8D8];
  v16[0] = _deviceLanguage;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [v7 preferredLocalizationsFromArray:preferredLocalizations forPreferences:v8];

  firstObject = [v9 firstObject];
  v11 = [v4 localizedStringForKey:typeCopy value:0 table:@"AXAFTextContentType" localization:firstObject];
  if ([v11 isEqual:typeCopy])
  {
    v12 = [v4 localizedStringForKey:typeCopy value:&stru_28537ABC8 table:@"AXAFTextContentType"];
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
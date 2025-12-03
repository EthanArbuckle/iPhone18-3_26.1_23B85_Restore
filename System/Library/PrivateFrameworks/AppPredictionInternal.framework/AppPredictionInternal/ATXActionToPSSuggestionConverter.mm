@interface ATXActionToPSSuggestionConverter
- (id)convertSuggestions:(id)suggestions;
- (id)proactiveSuggestionForPeopleSuggestion:(id)suggestion originalSuggestion:(id)originalSuggestion;
- (id)psRecipientFromINPerson:(id)person;
- (id)psSuggesetionFromINStartCallIntent:(id)intent;
- (id)psSuggestionFromINSendMessageIntent:(id)intent;
@end

@implementation ATXActionToPSSuggestionConverter

- (id)convertSuggestions:(id)suggestions
{
  v41 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v40 = [suggestionsCopy count];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Starting ATXAction to PSSuggestion conversion with %lu suggestions", buf, 0xCu);
  }

  v31 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = suggestionsCopy;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    selfCopy = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        executableSpecification = [v10 executableSpecification];
        executableClassString = [executableSpecification executableClassString];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [executableClassString isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          [v31 addObject:v10];
          goto LABEL_25;
        }

        executableSpecification2 = [v10 executableSpecification];
        executableObject = [executableSpecification2 executableObject];

        intent = [executableObject intent];
        if (intent)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }

          v20 = [(ATXActionToPSSuggestionConverter *)self psSuggestionFromINSendMessageIntent:intent];
          if (v20)
          {
            v21 = v20;
            v22 = [(ATXActionToPSSuggestionConverter *)self proactiveSuggestionForPeopleSuggestion:v20 originalSuggestion:v10];
            v23 = __atxlog_handle_blending();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              [(ATXActionToPSSuggestionConverter *)buf convertSuggestions:v23];
            }

            [v31 addObject:v22];
            self = selfCopy;
LABEL_15:
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [(ATXActionToPSSuggestionConverter *)self psSuggesetionFromINStartCallIntent:intent];
              if (v24)
              {
                v25 = [(ATXActionToPSSuggestionConverter *)self proactiveSuggestionForPeopleSuggestion:v24 originalSuggestion:v10];
                v26 = __atxlog_handle_blending();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  [(ATXActionToPSSuggestionConverter *)&v32 convertSuggestions:v33, v26];
                }

                [v31 addObject:v25];
              }

              else
              {
                [v31 addObject:v10];
              }
            }

            goto LABEL_24;
          }
        }

        [v31 addObject:v10];
LABEL_24:

LABEL_25:
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v7);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)proactiveSuggestionForPeopleSuggestion:(id)suggestion originalSuggestion:(id)originalSuggestion
{
  v5 = MEMORY[0x277D420A0];
  originalSuggestionCopy = originalSuggestion;
  suggestionCopy = suggestion;
  v8 = [v5 alloc];
  conversationIdentifier = [suggestionCopy conversationIdentifier];
  v10 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:2];
  v11 = [v8 initWithTitle:conversationIdentifier subtitle:0 preferredLayoutConfigs:v10 allowedOnLockscreen:1 allowedOnHomeScreen:1 allowedOnSpotlight:1];

  v12 = objc_alloc(MEMORY[0x277D42080]);
  v13 = [suggestionCopy description];
  v14 = objc_opt_new();
  uUIDString = [v14 UUIDString];
  v16 = [v12 initWithExecutableObject:suggestionCopy executableDescription:v13 executableIdentifier:uUIDString suggestionExecutableType:6];

  v17 = objc_alloc(MEMORY[0x277D42068]);
  clientModelSpecification = [originalSuggestionCopy clientModelSpecification];
  scoreSpecification = [originalSuggestionCopy scoreSpecification];

  v20 = [v17 initWithClientModelSpecification:clientModelSpecification executableSpecification:v16 uiSpecification:v11 scoreSpecification:scoreSpecification];

  return v20;
}

- (id)psSuggestionFromINSendMessageIntent:(id)intent
{
  intentCopy = intent;
  recipients = [intentCopy recipients];
  if ([recipients count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__ATXActionToPSSuggestionConverter_psSuggestionFromINSendMessageIntent___block_invoke;
    v14[3] = &unk_2785A0FF0;
    v14[4] = self;
    v6 = [recipients _pas_mappedArrayWithTransform:v14];
    v7 = objc_alloc(MEMORY[0x277D3A0E0]);
    launchId = [intentCopy launchId];
    conversationIdentifier = [intentCopy conversationIdentifier];
    speakableGroupName = [intentCopy speakableGroupName];
    spokenPhrase = [speakableGroupName spokenPhrase];
    v12 = [v7 initWithBundleID:launchId conversationIdentifier:conversationIdentifier groupName:spokenPhrase recipients:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)psSuggesetionFromINStartCallIntent:(id)intent
{
  intentCopy = intent;
  contacts = [intentCopy contacts];
  v6 = contacts;
  if (contacts)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__ATXActionToPSSuggestionConverter_psSuggesetionFromINStartCallIntent___block_invoke;
    v12[3] = &unk_2785A0FF0;
    v12[4] = self;
    v7 = [contacts _pas_mappedArrayWithTransform:v12];
    v8 = objc_alloc(MEMORY[0x277D3A0E0]);
    launchId = [intentCopy launchId];
    v10 = [v8 initWithBundleID:launchId conversationIdentifier:0 groupName:0 recipients:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)psRecipientFromINPerson:(id)person
{
  personCopy = person;
  v5 = objc_alloc(MEMORY[0x277D3A0C8]);
  contactIdentifier = [personCopy contactIdentifier];
  uUIDString = contactIdentifier;
  if (!contactIdentifier)
  {
    v3 = objc_opt_new();
    uUIDString = [v3 UUIDString];
  }

  personHandle = [personCopy personHandle];
  value = [personHandle value];
  displayName = [personCopy displayName];
  v11 = [v5 initWithIdentifier:uUIDString handle:value displayName:displayName contact:0];

  if (!contactIdentifier)
  {
  }

  return v11;
}

- (void)convertSuggestions:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Converted INSendMessageIntent to PSSuggestion Proactive Suggestion", buf, 2u);
}

- (void)convertSuggestions:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Converted INStartCallIntent to PSSuggestion Proactive Suggestion", buf, 2u);
}

@end
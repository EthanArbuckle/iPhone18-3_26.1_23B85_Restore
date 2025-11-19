@interface ATXActionToPSSuggestionConverter
- (id)convertSuggestions:(id)a3;
- (id)proactiveSuggestionForPeopleSuggestion:(id)a3 originalSuggestion:(id)a4;
- (id)psRecipientFromINPerson:(id)a3;
- (id)psSuggesetionFromINStartCallIntent:(id)a3;
- (id)psSuggestionFromINSendMessageIntent:(id)a3;
@end

@implementation ATXActionToPSSuggestionConverter

- (id)convertSuggestions:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v40 = [v4 count];
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Starting ATXAction to PSSuggestion conversion with %lu suggestions", buf, 0xCu);
  }

  v31 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v29 = self;
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
        v12 = [v10 executableSpecification];
        v13 = [v12 executableClassString];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [v13 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          [v31 addObject:v10];
          goto LABEL_25;
        }

        v17 = [v10 executableSpecification];
        v18 = [v17 executableObject];

        v19 = [v18 intent];
        if (v19)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }

          v20 = [(ATXActionToPSSuggestionConverter *)self psSuggestionFromINSendMessageIntent:v19];
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
            self = v29;
LABEL_15:
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [(ATXActionToPSSuggestionConverter *)self psSuggesetionFromINStartCallIntent:v19];
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

- (id)proactiveSuggestionForPeopleSuggestion:(id)a3 originalSuggestion:(id)a4
{
  v5 = MEMORY[0x277D420A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v7 conversationIdentifier];
  v10 = [MEMORY[0x277D42088] layoutConfigurationsForLayoutOptions:2];
  v11 = [v8 initWithTitle:v9 subtitle:0 preferredLayoutConfigs:v10 allowedOnLockscreen:1 allowedOnHomeScreen:1 allowedOnSpotlight:1];

  v12 = objc_alloc(MEMORY[0x277D42080]);
  v13 = [v7 description];
  v14 = objc_opt_new();
  v15 = [v14 UUIDString];
  v16 = [v12 initWithExecutableObject:v7 executableDescription:v13 executableIdentifier:v15 suggestionExecutableType:6];

  v17 = objc_alloc(MEMORY[0x277D42068]);
  v18 = [v6 clientModelSpecification];
  v19 = [v6 scoreSpecification];

  v20 = [v17 initWithClientModelSpecification:v18 executableSpecification:v16 uiSpecification:v11 scoreSpecification:v19];

  return v20;
}

- (id)psSuggestionFromINSendMessageIntent:(id)a3
{
  v4 = a3;
  v5 = [v4 recipients];
  if ([v5 count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__ATXActionToPSSuggestionConverter_psSuggestionFromINSendMessageIntent___block_invoke;
    v14[3] = &unk_2785A0FF0;
    v14[4] = self;
    v6 = [v5 _pas_mappedArrayWithTransform:v14];
    v7 = objc_alloc(MEMORY[0x277D3A0E0]);
    v8 = [v4 launchId];
    v9 = [v4 conversationIdentifier];
    v10 = [v4 speakableGroupName];
    v11 = [v10 spokenPhrase];
    v12 = [v7 initWithBundleID:v8 conversationIdentifier:v9 groupName:v11 recipients:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)psSuggesetionFromINStartCallIntent:(id)a3
{
  v4 = a3;
  v5 = [v4 contacts];
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__ATXActionToPSSuggestionConverter_psSuggesetionFromINStartCallIntent___block_invoke;
    v12[3] = &unk_2785A0FF0;
    v12[4] = self;
    v7 = [v5 _pas_mappedArrayWithTransform:v12];
    v8 = objc_alloc(MEMORY[0x277D3A0E0]);
    v9 = [v4 launchId];
    v10 = [v8 initWithBundleID:v9 conversationIdentifier:0 groupName:0 recipients:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)psRecipientFromINPerson:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D3A0C8]);
  v6 = [v4 contactIdentifier];
  v7 = v6;
  if (!v6)
  {
    v3 = objc_opt_new();
    v7 = [v3 UUIDString];
  }

  v8 = [v4 personHandle];
  v9 = [v8 value];
  v10 = [v4 displayName];
  v11 = [v5 initWithIdentifier:v7 handle:v9 displayName:v10 contact:0];

  if (!v6)
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
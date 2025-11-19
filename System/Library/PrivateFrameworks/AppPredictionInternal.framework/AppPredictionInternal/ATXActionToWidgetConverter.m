@interface ATXActionToWidgetConverter
+ (BOOL)isWidgetIntent:(id)a3 validConversionFromActionIntent:(id)a4;
- (ATXActionToWidgetConverter)initWithIntentMetadataCache:(id)a3 widgetDescriptorCache:(id)a4 infoConfidenceMapper:(id)a5 engagementRecordManager:(id)a6 metadataProvider:(id)a7 allowsSendMessageIntentConversion:(BOOL)a8;
- (id)_convertedSuggestionFromInfoSuggestion:(id)a3 originalSuggestion:(id)a4;
- (id)_infoSuggestionForAction:(id)a3;
- (id)_infoSuggestionForLinkActionContainer:(id)a3;
- (id)_peopleInfoSuggestionForSendMessageIntent:(id)a3 action:(id)a4;
- (id)_selectPersonIntentForSendMessageIntent:(id)a3;
- (id)_widgetForIntent:(id)a3;
- (id)convertSuggestions:(id)a3;
@end

@implementation ATXActionToWidgetConverter

- (ATXActionToWidgetConverter)initWithIntentMetadataCache:(id)a3 widgetDescriptorCache:(id)a4 infoConfidenceMapper:(id)a5 engagementRecordManager:(id)a6 metadataProvider:(id)a7 allowsSendMessageIntentConversion:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = ATXActionToWidgetConverter;
  v18 = [(ATXActionToWidgetConverter *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_descriptorCache, a4);
    objc_storeStrong(&v19->_intentMetadataCache, a3);
    objc_storeStrong(&v19->_infoConfidenceMapper, a5);
    objc_storeStrong(&v19->_engagementRecordManager, a6);
    objc_storeStrong(&v19->_metadataProvider, a7);
    v19->_allowsSendMessageIntentConversion = a8;
  }

  return v19;
}

- (id)convertSuggestions:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v28)
  {
    v27 = *v31;
    *&v7 = 138412546;
    v24 = v7;
    v25 = self;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 atxActionExecutableObject];
        if (v10)
        {
          v11 = [(ATXActionToWidgetConverter *)self _infoSuggestionForAction:v10];
        }

        else
        {
          v11 = 0;
        }

        v12 = [v9 linkActionExecutableObject];
        if (v12)
        {
          v13 = [(ATXActionToWidgetConverter *)self _infoSuggestionForLinkActionContainer:v12];

          v11 = v13;
        }

        if (v11)
        {
          v14 = [(ATXActionToWidgetConverter *)self _convertedSuggestionFromInfoSuggestion:v11 originalSuggestion:v9];
          if (v14)
          {
            v15 = v6;
            v16 = __atxlog_handle_blending();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v35 = v9;
              v36 = 2112;
              v37 = v14;
              _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Converted action suggestion: %@, to widget suggestion: %@", buf, 0x16u);
            }

            v17 = [v14 clientModelSpecification];
            v18 = [v17 clientModelId];

            v19 = [v5 objectForKeyedSubscript:v18];

            if (!v19)
            {
              v20 = objc_opt_new();
              [v5 setObject:v20 forKeyedSubscript:v18];
            }

            v21 = [v5 objectForKeyedSubscript:v18];
            [v21 addObject:v14];

            v6 = v15;
            [v15 addObject:v14];

            self = v25;
          }
        }

        [v6 addObject:v9];
      }

      v28 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v28);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__ATXActionToWidgetConverter_convertSuggestions___block_invoke;
  v29[3] = &unk_278597070;
  v29[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v29];

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_infoSuggestionForLinkActionContainer:(id)a3
{
  v4 = a3;
  v5 = [v4 cachedAppIntent];

  if (v5)
  {
    v6 = [v4 cachedAppIntent];
  }

  else
  {
    metadataProvider = self->_metadataProvider;
    v8 = [v4 bundleId];
    v9 = [v4 action];
    v10 = [v9 identifier];
    v24 = 0;
    v11 = [(LNMetadataProvider *)metadataProvider actionForBundleIdentifier:v8 andActionIdentifier:v10 error:&v24];
    v6 = v24;

    if (v6 || !v11)
    {
      v17 = __atxlog_handle_blending();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionToWidgetConverter *)v4 _infoSuggestionForLinkActionContainer:v6, v17];
      }

      v22 = 0;
      goto LABEL_12;
    }

    v12 = objc_alloc(MEMORY[0x277CD3A70]);
    v13 = [v4 bundleId];
    v14 = [v4 action];
    v6 = [v12 initWithAppBundleIdentifier:v13 linkAction:v14 linkActionMetadata:v11];

    [v4 setCachedAppIntent:v6];
  }

  v11 = [(ATXActionToWidgetConverter *)self _widgetForIntent:v6];
  if (!v11)
  {
    v22 = 0;
    goto LABEL_13;
  }

  v15 = MEMORY[0x277D42040];
  v6 = v6;
  v16 = [v15 alloc];
  v17 = [v6 launchId];
  v18 = [v11 extensionBundleIdentifier];
  v19 = [v11 kind];
  v20 = [v11 atx_layoutOptions];
  v21 = [v6 appIntentIdentifier];
  v22 = [v16 initWithAppBundleIdentifier:v17 widgetBundleIdentifier:v18 widgetKind:v19 criterion:&stru_2839A6058 applicableLayouts:v20 suggestionIdentifier:v21 startDate:0 endDate:0 intent:v6 metadata:0 relevanceScore:0];

LABEL_12:
LABEL_13:

  return v22;
}

- (id)_infoSuggestionForAction:(id)a3
{
  v4 = a3;
  v5 = [v4 intent];
  v6 = v5;
  if (v5)
  {
    if (!self->_allowsSendMessageIntentConversion)
    {
      goto LABEL_9;
    }

    v7 = [v5 launchId];
    if (([v7 isEqualToString:@"com.apple.MobileSMS"] & 1) == 0)
    {

      goto LABEL_9;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 || ([(ATXActionToWidgetConverter *)self _peopleInfoSuggestionForSendMessageIntent:v6 action:v4], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_9:
      v10 = [(ATXActionToWidgetConverter *)self _widgetForIntent:v6];
      if (v10)
      {
        v9 = createInfoSuggestion(v4, v10, v6);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_widgetForIntent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [(ATXIntentMetadataCache *)self->_intentMetadataCache isEligibleForWidgetsForIntent:v4])
  {
    v5 = [(ATXWidgetDescriptorCache *)self->_descriptorCache homeScreenDescriptorForIntent:v4];
    v6 = __atxlog_handle_blending();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Found descriptor %@ for eligible intent %@", &v11, 0x16u);
      }

      v8 = v5;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionToWidgetConverter *)v4 _widgetForIntent:v7];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_convertedSuggestionFromInfoSuggestion:(id)a3 originalSuggestion:(id)a4
{
  infoConfidenceMapper = self->_infoConfidenceMapper;
  v6 = a4;
  v7 = a3;
  v8 = [v6 scoreSpecification];
  [v7 setConfidenceLevel:{-[ATXInfoToBlendingConfidenceMapper minInfoConfidenceLevelForBlendingConfidenceCategory:](infoConfidenceMapper, "minInfoConfidenceLevelForBlendingConfidenceCategory:", objc_msgSend(v8, "suggestedConfidenceCategory"))}];

  v9 = MEMORY[0x277D42070];
  v10 = [v6 clientModelSpecification];
  v11 = [v10 clientModelId];
  v12 = [v9 clientModelTypeFromClientModelId:v11];

  v13 = [MEMORY[0x277D42070] actionConversionTypeForClientModelType:v12];
  v14 = MEMORY[0x277D42040];
  v15 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:v13];
  v16 = [v6 clientModelSpecification];
  v17 = [v16 clientModelVersion];
  v18 = [v6 scoreSpecification];
  [v18 rawScore];
  v20 = v19;
  v21 = [v6 scoreSpecification];

  v22 = [v14 proactiveSuggestionForInfoSuggestion:v7 withClientModelId:v15 clientModelVersion:v17 rawScore:objc_msgSend(v21 confidenceCategory:{"suggestedConfidenceCategory"), v20}];

  return v22;
}

- (id)_peopleInfoSuggestionForSendMessageIntent:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = [(ATXActionToWidgetConverter *)self _selectPersonIntentForSendMessageIntent:a3];
  if (v7)
  {
    v8 = [(ATXWidgetDescriptorCache *)self->_descriptorCache homeScreenDescriptorForIntent:v7];
    if (v8)
    {
      v9 = createInfoSuggestion(v6, v8, v7);
    }

    else
    {
      v10 = __atxlog_handle_blending();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXActionToWidgetConverter _peopleInfoSuggestionForSendMessageIntent:v7 action:v10];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_selectPersonIntentForSendMessageIntent:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 recipients];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [v3 recipients];
    v7 = [v6 firstObject];

    v8 = [v7 contactIdentifier];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CD3A70]);
      v21 = @"person";
      v10 = [v7 contactIdentifier];
      v19[1] = @"displayString";
      v20[0] = v10;
      v11 = [v7 displayName];
      v20[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
      v22 = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v14 = [v9 initWithAppBundleIdentifier:@"com.apple.PeopleViewService" appIntentIdentifier:@"SelectPersonIntent" serializedParameters:v13];

      if (v14)
      {
        goto LABEL_13;
      }

      v15 = __atxlog_handle_blending();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [ATXActionToWidgetConverter _selectPersonIntentForSendMessageIntent:v15];
      }
    }

    else
    {
      v15 = __atxlog_handle_blending();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Not converting INSendMessageIntent: no contact identifier", buf, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v3 recipients];
      *buf = 134217984;
      v24 = [v16 count];
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Not converting INSendMessageIntent: recipient count (%lu) is not 1", buf, 0xCu);
    }

    v14 = 0;
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)isWidgetIntent:(id)a3 validConversionFromActionIntent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 launchId];
  if (([v7 isEqualToString:@"com.apple.PeopleViewService"] & 1) == 0)
  {

    goto LABEL_8;
  }

  v8 = [v6 launchId];
  v9 = [v8 isEqualToString:@"com.apple.MobileSMS"];

  if (!v9)
  {
LABEL_8:
    v13 = [v5 atx_isEqualToIntent:v6];
    goto LABEL_30;
  }

  v10 = NSClassFromString(&cfstr_Insendmessagei.isa);
  v11 = v6;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;

  v15 = [v14 recipients];
  v16 = [v15 count];

  if (v16 == 1)
  {
    v17 = [v14 recipients];
    v18 = [v17 objectAtIndexedSubscript:0];
    v19 = [v18 contactIdentifier];

    if (v19)
    {
      v20 = NSClassFromString(&cfstr_Inappintent.isa);
      v21 = v5;
      if (v20)
      {
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      if (v23)
      {
        v24 = [v23 serializedParameters];
        v25 = [v24 objectForKeyedSubscript:@"person"];
        v26 = NSClassFromString(&cfstr_Nsdictionary.isa);
        v27 = v25;
        if (v26)
        {
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

        v30 = [v29 objectForKeyedSubscript:@"identifier"];

        v13 = [v19 isEqualToString:v30];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_30:
  return v13;
}

- (void)_infoSuggestionForLinkActionContainer:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "ATXActionToWidgetConverter: error fetching metadata for link action (%@): %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_widgetForIntent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXActionToWidgetConverter: Unable to find descriptor for eligible intent %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_peopleInfoSuggestionForSendMessageIntent:(uint64_t)a1 action:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXActionToWidgetConverter: Unable to find People widget descriptor for select person intent: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
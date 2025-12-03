@interface ATXActionToWidgetConverter
+ (BOOL)isWidgetIntent:(id)intent validConversionFromActionIntent:(id)actionIntent;
- (ATXActionToWidgetConverter)initWithIntentMetadataCache:(id)cache widgetDescriptorCache:(id)descriptorCache infoConfidenceMapper:(id)mapper engagementRecordManager:(id)manager metadataProvider:(id)provider allowsSendMessageIntentConversion:(BOOL)conversion;
- (id)_convertedSuggestionFromInfoSuggestion:(id)suggestion originalSuggestion:(id)originalSuggestion;
- (id)_infoSuggestionForAction:(id)action;
- (id)_infoSuggestionForLinkActionContainer:(id)container;
- (id)_peopleInfoSuggestionForSendMessageIntent:(id)intent action:(id)action;
- (id)_selectPersonIntentForSendMessageIntent:(id)intent;
- (id)_widgetForIntent:(id)intent;
- (id)convertSuggestions:(id)suggestions;
@end

@implementation ATXActionToWidgetConverter

- (ATXActionToWidgetConverter)initWithIntentMetadataCache:(id)cache widgetDescriptorCache:(id)descriptorCache infoConfidenceMapper:(id)mapper engagementRecordManager:(id)manager metadataProvider:(id)provider allowsSendMessageIntentConversion:(BOOL)conversion
{
  cacheCopy = cache;
  descriptorCacheCopy = descriptorCache;
  mapperCopy = mapper;
  managerCopy = manager;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = ATXActionToWidgetConverter;
  v18 = [(ATXActionToWidgetConverter *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_descriptorCache, descriptorCache);
    objc_storeStrong(&v19->_intentMetadataCache, cache);
    objc_storeStrong(&v19->_infoConfidenceMapper, mapper);
    objc_storeStrong(&v19->_engagementRecordManager, manager);
    objc_storeStrong(&v19->_metadataProvider, provider);
    v19->_allowsSendMessageIntentConversion = conversion;
  }

  return v19;
}

- (id)convertSuggestions:(id)suggestions
{
  v39 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = suggestionsCopy;
  v28 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v28)
  {
    v27 = *v31;
    *&v7 = 138412546;
    v24 = v7;
    selfCopy = self;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        atxActionExecutableObject = [v9 atxActionExecutableObject];
        if (atxActionExecutableObject)
        {
          v11 = [(ATXActionToWidgetConverter *)self _infoSuggestionForAction:atxActionExecutableObject];
        }

        else
        {
          v11 = 0;
        }

        linkActionExecutableObject = [v9 linkActionExecutableObject];
        if (linkActionExecutableObject)
        {
          v13 = [(ATXActionToWidgetConverter *)self _infoSuggestionForLinkActionContainer:linkActionExecutableObject];

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

            clientModelSpecification = [v14 clientModelSpecification];
            clientModelId = [clientModelSpecification clientModelId];

            v19 = [v5 objectForKeyedSubscript:clientModelId];

            if (!v19)
            {
              v20 = objc_opt_new();
              [v5 setObject:v20 forKeyedSubscript:clientModelId];
            }

            v21 = [v5 objectForKeyedSubscript:clientModelId];
            [v21 addObject:v14];

            v6 = v15;
            [v15 addObject:v14];

            self = selfCopy;
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

- (id)_infoSuggestionForLinkActionContainer:(id)container
{
  containerCopy = container;
  cachedAppIntent = [containerCopy cachedAppIntent];

  if (cachedAppIntent)
  {
    cachedAppIntent2 = [containerCopy cachedAppIntent];
  }

  else
  {
    metadataProvider = self->_metadataProvider;
    bundleId = [containerCopy bundleId];
    action = [containerCopy action];
    identifier = [action identifier];
    v24 = 0;
    v11 = [(LNMetadataProvider *)metadataProvider actionForBundleIdentifier:bundleId andActionIdentifier:identifier error:&v24];
    cachedAppIntent2 = v24;

    if (cachedAppIntent2 || !v11)
    {
      launchId = __atxlog_handle_blending();
      if (os_log_type_enabled(launchId, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionToWidgetConverter *)containerCopy _infoSuggestionForLinkActionContainer:cachedAppIntent2, launchId];
      }

      v22 = 0;
      goto LABEL_12;
    }

    v12 = objc_alloc(MEMORY[0x277CD3A70]);
    bundleId2 = [containerCopy bundleId];
    action2 = [containerCopy action];
    cachedAppIntent2 = [v12 initWithAppBundleIdentifier:bundleId2 linkAction:action2 linkActionMetadata:v11];

    [containerCopy setCachedAppIntent:cachedAppIntent2];
  }

  v11 = [(ATXActionToWidgetConverter *)self _widgetForIntent:cachedAppIntent2];
  if (!v11)
  {
    v22 = 0;
    goto LABEL_13;
  }

  v15 = MEMORY[0x277D42040];
  cachedAppIntent2 = cachedAppIntent2;
  v16 = [v15 alloc];
  launchId = [cachedAppIntent2 launchId];
  extensionBundleIdentifier = [v11 extensionBundleIdentifier];
  kind = [v11 kind];
  atx_layoutOptions = [v11 atx_layoutOptions];
  appIntentIdentifier = [cachedAppIntent2 appIntentIdentifier];
  v22 = [v16 initWithAppBundleIdentifier:launchId widgetBundleIdentifier:extensionBundleIdentifier widgetKind:kind criterion:&stru_2839A6058 applicableLayouts:atx_layoutOptions suggestionIdentifier:appIntentIdentifier startDate:0 endDate:0 intent:cachedAppIntent2 metadata:0 relevanceScore:0];

LABEL_12:
LABEL_13:

  return v22;
}

- (id)_infoSuggestionForAction:(id)action
{
  actionCopy = action;
  intent = [actionCopy intent];
  v6 = intent;
  if (intent)
  {
    if (!self->_allowsSendMessageIntentConversion)
    {
      goto LABEL_9;
    }

    launchId = [intent launchId];
    if (([launchId isEqualToString:@"com.apple.MobileSMS"] & 1) == 0)
    {

      goto LABEL_9;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 || ([(ATXActionToWidgetConverter *)self _peopleInfoSuggestionForSendMessageIntent:v6 action:actionCopy], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_9:
      v10 = [(ATXActionToWidgetConverter *)self _widgetForIntent:v6];
      if (v10)
      {
        v9 = createInfoSuggestion(actionCopy, v10, v6);
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

- (id)_widgetForIntent:(id)intent
{
  v15 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [(ATXIntentMetadataCache *)self->_intentMetadataCache isEligibleForWidgetsForIntent:intentCopy])
  {
    v5 = [(ATXWidgetDescriptorCache *)self->_descriptorCache homeScreenDescriptorForIntent:intentCopy];
    v6 = __atxlog_handle_blending();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = intentCopy;
        _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Found descriptor %@ for eligible intent %@", &v11, 0x16u);
      }

      v8 = v5;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionToWidgetConverter *)intentCopy _widgetForIntent:v7];
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

- (id)_convertedSuggestionFromInfoSuggestion:(id)suggestion originalSuggestion:(id)originalSuggestion
{
  infoConfidenceMapper = self->_infoConfidenceMapper;
  originalSuggestionCopy = originalSuggestion;
  suggestionCopy = suggestion;
  scoreSpecification = [originalSuggestionCopy scoreSpecification];
  [suggestionCopy setConfidenceLevel:{-[ATXInfoToBlendingConfidenceMapper minInfoConfidenceLevelForBlendingConfidenceCategory:](infoConfidenceMapper, "minInfoConfidenceLevelForBlendingConfidenceCategory:", objc_msgSend(scoreSpecification, "suggestedConfidenceCategory"))}];

  v9 = MEMORY[0x277D42070];
  clientModelSpecification = [originalSuggestionCopy clientModelSpecification];
  clientModelId = [clientModelSpecification clientModelId];
  v12 = [v9 clientModelTypeFromClientModelId:clientModelId];

  v13 = [MEMORY[0x277D42070] actionConversionTypeForClientModelType:v12];
  v14 = MEMORY[0x277D42040];
  v15 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:v13];
  clientModelSpecification2 = [originalSuggestionCopy clientModelSpecification];
  clientModelVersion = [clientModelSpecification2 clientModelVersion];
  scoreSpecification2 = [originalSuggestionCopy scoreSpecification];
  [scoreSpecification2 rawScore];
  v20 = v19;
  scoreSpecification3 = [originalSuggestionCopy scoreSpecification];

  v22 = [v14 proactiveSuggestionForInfoSuggestion:suggestionCopy withClientModelId:v15 clientModelVersion:clientModelVersion rawScore:objc_msgSend(scoreSpecification3 confidenceCategory:{"suggestedConfidenceCategory"), v20}];

  return v22;
}

- (id)_peopleInfoSuggestionForSendMessageIntent:(id)intent action:(id)action
{
  actionCopy = action;
  v7 = [(ATXActionToWidgetConverter *)self _selectPersonIntentForSendMessageIntent:intent];
  if (v7)
  {
    v8 = [(ATXWidgetDescriptorCache *)self->_descriptorCache homeScreenDescriptorForIntent:v7];
    if (v8)
    {
      v9 = createInfoSuggestion(actionCopy, v8, v7);
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

- (id)_selectPersonIntentForSendMessageIntent:(id)intent
{
  v25 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  recipients = [intentCopy recipients];
  v5 = [recipients count];

  if (v5 == 1)
  {
    recipients2 = [intentCopy recipients];
    firstObject = [recipients2 firstObject];

    contactIdentifier = [firstObject contactIdentifier];

    if (contactIdentifier)
    {
      v9 = objc_alloc(MEMORY[0x277CD3A70]);
      v21 = @"person";
      contactIdentifier2 = [firstObject contactIdentifier];
      v19[1] = @"displayString";
      v20[0] = contactIdentifier2;
      displayName = [firstObject displayName];
      v20[1] = displayName;
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
    firstObject = __atxlog_handle_blending();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      recipients3 = [intentCopy recipients];
      *buf = 134217984;
      v24 = [recipients3 count];
      _os_log_impl(&dword_2263AA000, firstObject, OS_LOG_TYPE_DEFAULT, "ATXActionToWidgetConverter: Not converting INSendMessageIntent: recipient count (%lu) is not 1", buf, 0xCu);
    }

    v14 = 0;
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)isWidgetIntent:(id)intent validConversionFromActionIntent:(id)actionIntent
{
  intentCopy = intent;
  actionIntentCopy = actionIntent;
  launchId = [intentCopy launchId];
  if (([launchId isEqualToString:@"com.apple.PeopleViewService"] & 1) == 0)
  {

    goto LABEL_8;
  }

  launchId2 = [actionIntentCopy launchId];
  v9 = [launchId2 isEqualToString:@"com.apple.MobileSMS"];

  if (!v9)
  {
LABEL_8:
    v13 = [intentCopy atx_isEqualToIntent:actionIntentCopy];
    goto LABEL_30;
  }

  v10 = NSClassFromString(&cfstr_Insendmessagei.isa);
  v11 = actionIntentCopy;
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

  recipients = [v14 recipients];
  v16 = [recipients count];

  if (v16 == 1)
  {
    recipients2 = [v14 recipients];
    v18 = [recipients2 objectAtIndexedSubscript:0];
    contactIdentifier = [v18 contactIdentifier];

    if (contactIdentifier)
    {
      v20 = NSClassFromString(&cfstr_Inappintent.isa);
      v21 = intentCopy;
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
        serializedParameters = [v23 serializedParameters];
        v25 = [serializedParameters objectForKeyedSubscript:@"person"];
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

        v13 = [contactIdentifier isEqualToString:v30];
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
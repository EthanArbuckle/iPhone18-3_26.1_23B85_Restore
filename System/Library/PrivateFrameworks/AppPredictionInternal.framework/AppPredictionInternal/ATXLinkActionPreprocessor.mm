@interface ATXLinkActionPreprocessor
- (id)preprocessedSuggestionsUpdatingLinkActions:(id)actions;
- (id)updatedLinkActionSuggestion:(id)suggestion;
- (id)updatedLinkActionSuggestion:(id)suggestion actionContainer:(id)container basedOnReversedPublisher:(id)publisher;
@end

@implementation ATXLinkActionPreprocessor

- (id)preprocessedSuggestionsUpdatingLinkActions:(id)actions
{
  v22 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = actionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        executableSpecification = [v11 executableSpecification];
        executableType = [executableSpecification executableType];

        if (executableType == 10)
        {
          v14 = [(ATXLinkActionPreprocessor *)self updatedLinkActionSuggestion:v11];
          if (v14)
          {
            [v5 addObject:v14];
          }
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)updatedLinkActionSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableObject = [executableSpecification executableObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    executableSpecification2 = [suggestionCopy executableSpecification];
    executableObject2 = [executableSpecification2 executableObject];

    bundleId = [executableObject2 bundleId];
    v16 = 0;
    v11 = [ATXLinkTranscriptUtil linkTranscriptPublisherForBundleId:bundleId fromDate:0 toDate:0 maxEvents:0 reversed:1 error:&v16];
    v12 = v16;

    if (v12)
    {
      v13 = __atxlog_handle_blending();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXLinkActionPreprocessor updatedLinkActionSuggestion:executableObject2];
      }

      v14 = 0;
    }

    else
    {
      v14 = [(ATXLinkActionPreprocessor *)self updatedLinkActionSuggestion:suggestionCopy actionContainer:executableObject2 basedOnReversedPublisher:v11];
    }
  }

  else
  {
    executableObject2 = __atxlog_handle_blending();
    if (os_log_type_enabled(executableObject2, OS_LOG_TYPE_ERROR))
    {
      [ATXLinkActionPreprocessor updatedLinkActionSuggestion:suggestionCopy];
    }

    v14 = 0;
  }

  return v14;
}

- (id)updatedLinkActionSuggestion:(id)suggestion actionContainer:(id)container basedOnReversedPublisher:(id)publisher
{
  suggestionCopy = suggestion;
  containerCopy = container;
  publisherCopy = publisher;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__105;
  v56 = __Block_byref_object_dispose__105;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__105;
  v50 = __Block_byref_object_dispose__105;
  v51 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __98__ATXLinkActionPreprocessor_updatedLinkActionSuggestion_actionContainer_basedOnReversedPublisher___block_invoke;
  v44[3] = &unk_278596E58;
  v45 = suggestionCopy;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __98__ATXLinkActionPreprocessor_updatedLinkActionSuggestion_actionContainer_basedOnReversedPublisher___block_invoke_16;
  v39[3] = &unk_2785A1DA0;
  v42 = &v46;
  v10 = containerCopy;
  v40 = v10;
  v11 = v45;
  v41 = v11;
  v43 = &v52;
  v12 = [publisherCopy drivableSinkWithBookmark:0 completion:v44 shouldContinue:v39];
  if (v53[5])
  {
    executableSpecification = [v11 executableSpecification];
    v14 = objc_alloc(MEMORY[0x277D42080]);
    v15 = v47[5];
    executableDescription = [executableSpecification executableDescription];
    executableIdentifier = [executableSpecification executableIdentifier];
    v36 = [v14 initWithExecutableObject:v15 executableDescription:executableDescription executableIdentifier:executableIdentifier suggestionExecutableType:{-[NSObject executableType](executableSpecification, "executableType")}];
    v33 = v10;
    v34 = publisherCopy;

    uiSpecification = [v11 uiSpecification];
    v35 = objc_alloc(MEMORY[0x277D420A0]);
    title = [v53[5] title];
    atx_efficientLocalizedString = [title atx_efficientLocalizedString];
    subtitle = [v53[5] subtitle];
    atx_efficientLocalizedString2 = [subtitle atx_efficientLocalizedString];
    reason = [uiSpecification reason];
    preferredLayoutConfigs = [uiSpecification preferredLayoutConfigs];
    allowedOnLockscreen = [uiSpecification allowedOnLockscreen];
    allowedOnHomeScreen = [uiSpecification allowedOnHomeScreen];
    LOBYTE(v15) = [uiSpecification allowedOnSpotlight];
    BYTE1(v32) = [uiSpecification shouldClearOnEngagement];
    LOBYTE(v32) = v15;
    v25 = [v35 initWithTitle:atx_efficientLocalizedString subtitle:atx_efficientLocalizedString2 predictionReason:reason preferredLayoutConfigs:preferredLayoutConfigs allowedOnLockscreen:allowedOnLockscreen allowedOnHomeScreen:allowedOnHomeScreen allowedOnSpotlight:v32 shouldClearOnEngagement:objc_msgSend(uiSpecification predictionReasons:"predictionReasons")];

    v26 = objc_alloc(MEMORY[0x277D42068]);
    clientModelSpecification = [v11 clientModelSpecification];
    scoreSpecification = [v11 scoreSpecification];
    v29 = [v26 initWithClientModelSpecification:clientModelSpecification executableSpecification:v36 uiSpecification:v25 scoreSpecification:scoreSpecification];

    v10 = v33;
    publisherCopy = v34;
    v30 = executableSpecification;
  }

  else
  {
    v30 = __atxlog_handle_blending();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [ATXLinkActionPreprocessor updatedLinkActionSuggestion:v11 actionContainer:v30 basedOnReversedPublisher:?];
    }

    v29 = 0;
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);

  return v29;
}

void __98__ATXLinkActionPreprocessor_updatedLinkActionSuggestion_actionContainer_basedOnReversedPublisher___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __98__ATXLinkActionPreprocessor_updatedLinkActionSuggestion_actionContainer_basedOnReversedPublisher___block_invoke_cold_1(v3, a1);
    }
  }
}

BOOL __98__ATXLinkActionPreprocessor_updatedLinkActionSuggestion_actionContainer_basedOnReversedPublisher___block_invoke_16(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a2 eventBody];
  v4 = objc_alloc(MEMORY[0x277CEB608]);
  v5 = [v3 bundleIdentifier];
  v6 = [v3 action];
  v7 = [v4 initWithBundleId:v5 action:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if ([*(a1 + 32) isEqual:*(*(*(a1 + 48) + 8) + 40)])
  {
    v10 = [v3 predictions];
    v11 = [v10 count];
    v12 = v11 == 0;
    if (v11)
    {
      v13 = [v10 objectAtIndexedSubscript:0];
      v14 = [v13 displayRepresentation];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = [*(*(*(a1 + 56) + 8) + 40) image];
      [*(*(*(a1 + 48) + 8) + 40) setImage:v17];
    }

    else
    {
      v17 = __atxlog_handle_blending();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v21 = 138412290;
        v22 = v18;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Blending: Skipping matching Link action event that's not predictable in transcript of %@", &v21, 0xCu);
      }
    }
  }

  else
  {
    v12 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)updatedLinkActionSuggestion:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 executableSpecification];
  v8 = [v1 executableClassString];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updatedLinkActionSuggestion:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 bundleId];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updatedLinkActionSuggestion:(uint64_t)a1 actionContainer:(NSObject *)a2 basedOnReversedPublisher:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Blending: Unable to find predictable Link suggestion in transcript: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __98__ATXLinkActionPreprocessor_updatedLinkActionSuggestion_actionContainer_basedOnReversedPublisher___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = [a1 error];
  v10 = *(a2 + 32);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end
@interface ATXHeuristicBirthdayContact
- (id)_spotlightActionWithName:(id)name email:(id)email identifier:(id)identifier startDate:(id)date endDate:(id)endDate subtitle:(id)subtitle;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicBirthdayContact

- (id)permanentRefreshTriggers
{
  v2 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v3 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v2 initWithNotification:*MEMORY[0x277CC5948] type:0];
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v3, 0}];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v65 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v4 = [ATXBirthdaysDataSource alloc];
  v36 = environmentCopy;
  heuristicDevice = [environmentCopy heuristicDevice];
  v6 = [(ATXBirthdaysDataSource *)v4 initWithDevice:heuristicDevice];

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__3;
  v59 = __Block_byref_object_dispose__3;
  v60 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__3;
  v53[4] = __Block_byref_object_dispose__3;
  v54 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __62__ATXHeuristicBirthdayContact_heuristicResultWithEnvironment___block_invoke;
  v52[3] = &unk_278C3CDA8;
  v52[4] = &v55;
  v52[5] = v53;
  [(ATXBirthdaysDataSource *)v6 birthdaysWithCallback:v52];
  v7 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v56[5] count];
    *buf = 134217984;
    v64 = v8;
    _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "ATXHeuristicBirthdayContact: heuristicResultWithEnvironment %lu birthdays", buf, 0xCu);
  }

  v35 = v6;

  v37 = objc_opt_new();
  v41 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v56[5];
  v9 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v9)
  {
    v40 = *v49;
    do
    {
      v42 = v9;
      for (i = 0; i != v42; ++i)
      {
        if (*v49 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"birthdayContact"];
        v13 = [v11 objectForKeyedSubscript:@"EKEvent"];
        v43 = [v12 objectForKeyedSubscript:@"emailAddresses"];
        v14 = [v13 obj];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = [v13 obj];
          v17 = [v12 objectForKeyedSubscript:@"fullName"];
          firstObject = [v43 firstObject];
          v19 = [v12 objectForKeyedSubscript:@"identifier"];
          startDate = [v16 startDate];
          endDate = [v16 endDate];
          v22 = [(ATXHeuristicBirthdayContact *)self _spotlightActionWithName:v17 email:firstObject identifier:v19 startDate:startDate endDate:endDate subtitle:0];

          if (v22)
          {
            [v37 addObject:v22];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v9);
  }

  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:@"CONTEXT_TITLE_BIRTHDAYS" value:&stru_2850AD368 table:0];
  if ([v37 count] == 1)
  {
    v25 = [v23 localizedStringForKey:@"CONTEXT_TITLE_BIRTHDAY" value:&stru_2850AD368 table:0];

    v24 = v25;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = v37;
  v27 = [v26 countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v27)
  {
    v28 = *v45;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = [ATXContextHeuristicSuggestionProducer suggestionWithSpotlightAction:*(*(&v44 + 1) + 8 * j) predictionReasons:0x20000000 localizedReason:v24 score:0 dateInterval:40.0];
        [v41 addObject:v30];
      }

      v27 = [v26 countByEnumeratingWithState:&v44 objects:v61 count:16];
    }

    while (v27);
  }

  v31 = objc_opt_new();
  v32 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v41 additionalRefreshTriggers:v31];

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v55, 8);

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

void __62__ATXHeuristicBirthdayContact_heuristicResultWithEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)_spotlightActionWithName:(id)name email:(id)email identifier:(id)identifier startDate:(id)date endDate:(id)endDate subtitle:(id)subtitle
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  emailCopy = email;
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  subtitleCopy = subtitle;
  v19 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138740995;
    v26 = nameCopy;
    v27 = 2117;
    v28 = emailCopy;
    v29 = 2112;
    v30 = identifierCopy;
    v31 = 2117;
    v32 = dateCopy;
    v33 = 2117;
    v34 = endDateCopy;
    _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_DEFAULT, "ATXHeuristicBirthdayContact: _spotlightActionWithName name %{sensitive}@, email %{sensitive}@, identifier %@, startDate %{sensitive}@, endDate %{sensitive}@", &v25, 0x34u);
  }

  v20 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:dateCopy endDate:endDateCopy lockScreenEligible:0 predicate:0];
  if (nameCopy && identifierCopy)
  {
    v21 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:nameCopy contactIdentifier:identifierCopy subtitle:subtitleCopy criteria:v20];
    goto LABEL_14;
  }

  if (nameCopy && emailCopy)
  {
    v21 = [objc_alloc(MEMORY[0x277CEB860]) initWithContactName:nameCopy contactEmail:emailCopy subtitle:subtitleCopy criteria:v20];
    if (v21)
    {
      goto LABEL_14;
    }

    v22 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_23E3EA000, v22, OS_LOG_TYPE_DEFAULT, "Updated api to create participant using email not available", &v25, 2u);
    }
  }

  else
  {
    v22 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ATXHeuristicBirthdayContact _spotlightActionWithName:v22 email:? identifier:? startDate:? endDate:? subtitle:?];
    }
  }

  v21 = 0;
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

@end
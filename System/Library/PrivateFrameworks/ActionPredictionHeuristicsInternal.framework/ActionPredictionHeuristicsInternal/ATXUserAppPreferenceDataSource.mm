@interface ATXUserAppPreferenceDataSource
- (ATXUserAppPreferenceDataSource)initWithDevice:(id)a3;
- (BOOL)appSupportsParameterCombination:(id)a3 forIntent:(id)a4 forBundleId:(id)a5;
- (BOOL)parametersExistInValidCombinationsForParameters:(id)a3 andValidCombinations:(id)a4;
- (void)preferredAppForIntentName:(id)a3 andParameterCombination:(id)a4 skipAppSchemaCheck:(BOOL)a5 callback:(id)a6;
@end

@implementation ATXUserAppPreferenceDataSource

- (ATXUserAppPreferenceDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXUserAppPreferenceDataSource;
  v6 = [(ATXUserAppPreferenceDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (BOOL)parametersExistInValidCombinationsForParameters:(id)a3 andValidCombinations:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v14 + 1) + 8 * i) isEqualToSet:v7])
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)appSupportsParameterCombination:(id)a3 forIntent:(id)a4 forBundleId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277CEB3B8] isSystemAppForBundleId:v10])
  {
    v11 = [v9 _parameterCombinations];
    v12 = [(ATXUserAppPreferenceDataSource *)self parametersExistInValidCombinationsForParameters:v8 andValidCombinations:v11];
  }

  else
  {
    v11 = [MEMORY[0x277CEB3B8] schemaWithoutFallbackForBundle:v10];
    if (v11)
    {
      v13 = [v9 _className];
      v14 = [v11 _parameterCombinationsForClassName:v13];
      v12 = [(ATXUserAppPreferenceDataSource *)self parametersExistInValidCombinationsForParameters:v8 andValidCombinations:v14];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)preferredAppForIntentName:(id)a3 andParameterCombination:(id)a4 skipAppSchemaCheck:(BOOL)a5 callback:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_INFO, "Looking for preferred app to handle %@ with parameter combination %@", buf, 0x16u);
  }

  v14 = objc_opt_new();
  v15 = NSClassFromString(v10);
  if (v15 && ([(objc_class *)v15 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v16 = objc_opt_new();
    v17 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v50 = __Block_byref_object_copy_;
    v51 = __Block_byref_object_dispose_;
    v52 = 0;
    v18 = +[ATXIntentToAppBundleIdCache sharedInstance];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke;
    v41[3] = &unk_278C3CAB8;
    v47 = buf;
    v19 = v17;
    v42 = v19;
    v48 = a5;
    v20 = v14;
    v43 = v20;
    v44 = self;
    v45 = v11;
    v21 = v16;
    v46 = v21;
    [v18 fetchBundleIdsForIntent:v21 completionHandler:v41];

    if ([MEMORY[0x277D425A0] waitForSemaphore:v19 timeoutSeconds:1.0] == 1 || !objc_msgSend(v20, "count"))
    {
      (*(v12 + 2))(v12, 0, *(*&buf[8] + 40));
    }

    else if ([v20 count] == 1)
    {
      v22 = [v20 objectAtIndexedSubscript:0];
      (*(v12 + 2))(v12, v22, 0);
    }

    else
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy_;
      v39 = __Block_byref_object_dispose_;
      v40 = 0;
      v31 = BiomeLibrary();
      v24 = [v31 App];
      v25 = [v24 Intent];
      v26 = [v25 atx_publisherWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_25;
      v32[3] = &unk_278C3CB00;
      v27 = v20;
      v33 = v27;
      v34 = &v35;
      v28 = [v26 sinkWithCompletion:&__block_literal_global shouldContinue:v32];

      v29 = v36[5];
      v30 = v29;
      if (!v29)
      {
        v30 = [v27 objectAtIndexedSubscript:0];
      }

      (*(v12 + 2))(v12, v30, 0);
      if (!v29)
      {
      }

      _Block_object_dispose(&v35, 8);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    (*(v12 + 2))(v12, 0, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_21;
  }

  v19 = v6;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v10 = *v21;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      v26 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      CanLearnFromApp = ATXHeuristicCanLearnFromApp(v13);

      if (CanLearnFromApp)
      {
        if (*(a1 + 80) == 1)
        {
          goto LABEL_13;
        }

        v15 = [*(a1 + 48) appSupportsParameterCombination:*(a1 + 56) forIntent:*(a1 + 64) forBundleId:v12];
        v16 = __atxlog_handle_heuristic();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (v15)
        {
          if (v17)
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_INFO, "Bundle ID %@ supports intent, adding it to candidate for user app preference.", buf, 0xCu);
          }

LABEL_13:
          [*(a1 + 40) addObject:v12];
          continue;
        }

        if (v17)
        {
          *buf = 138412290;
          v25 = v12;
          _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_INFO, "Bundle ID %@ supports intent, but it does not support the specific parameter combination we want to predict.", buf, 0xCu);
        }
      }
    }

    v9 = [v5 countByEnumeratingWithState:&v20 objects:v27 count:16];
  }

  while (v9);
LABEL_19:
  dispatch_semaphore_signal(*(a1 + 32));
  v7 = v19;
LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
}

void __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_23_cold_1(v2, v4);
    }
  }
}

uint64_t __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 bundleID];

  if (v4 && [*(a1 + 32) containsObject:v4])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __112__ATXUserAppPreferenceDataSource_preferredAppForIntentName_andParameterCombination_skipAppSchemaCheck_callback___block_invoke_23_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Could not scan intent stream to determine most recently donated intent: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
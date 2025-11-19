@interface ATXHeuristicClipboardUtilities
- (ATXHeuristicClipboardUtilities)initWithDevice:(id)a3;
- (id)_appNameFromBundleID:(id)a3;
- (id)_dataDetectorsWithContent:(id)a3;
- (id)resultWithActions:(id)a3 predictionReasons:(unint64_t)a4;
- (void)_resetContents;
- (void)fetchContents;
@end

@implementation ATXHeuristicClipboardUtilities

- (ATXHeuristicClipboardUtilities)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXHeuristicClipboardUtilities;
  v6 = [(ATXHeuristicClipboardUtilities *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heuristicDevice, a3);
  }

  return v7;
}

- (void)fetchContents
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [[ATXClipboardContents alloc] initWithDevice:self->_heuristicDevice];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __47__ATXHeuristicClipboardUtilities_fetchContents__block_invoke;
  v26[3] = &unk_278C3CCF8;
  v26[4] = &v39;
  v26[5] = &v27;
  v26[6] = &v33;
  [(ATXClipboardContents *)v3 contentsWithCallback:v26];
  v4 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v28[5];
    v6 = v34[5];
    *buf = 138478083;
    v46 = v5;
    v47 = 2113;
    v48 = v6;
    _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "ATXHeuristicClipboardUtilities: Clipboard provided creationDate : %{private}@ originatorBundleID; %{private}@", buf, 0x16u);
  }

  v7 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v40[5];
    *buf = 138739971;
    v46 = v8;
    _os_log_impl(&dword_23E3EA000, v7, OS_LOG_TYPE_DEFAULT, "ATXHeuristicClipboardUtilities content: %{sensitive}@", buf, 0xCu);
  }

  [(ATXHeuristicClipboardUtilities *)self _resetContents];
  if (v40[5] && v28[5] && v34[5])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.Spotlight", @"com.apple.SafariViewService", @"com.apple.mobilesms.compose", @"com.apple.InCallService", 0}];
    objc_autoreleasePoolPop(v9);
    LODWORD(v9) = [v10 containsObject:v34[5]];

    if (v9)
    {
      v11 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v34[5];
        *buf = 138477827;
        v46 = v12;
        v13 = "ATXHeuristicClipboardUtilities: Bundle ID blacklisted %{private}@";
        v14 = v11;
        v15 = 12;
LABEL_13:
        _os_log_impl(&dword_23E3EA000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }

    else
    {
      if ([v40[5] length] >= 0x201)
      {
        v11 = __atxlog_handle_context_heuristic();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v17 = [v40[5] length];
        *buf = 134218240;
        v46 = v17;
        v47 = 2048;
        v48 = 512;
        v13 = "Clipboard too long, length = %lu exceeds max of %lu";
        v14 = v11;
        v15 = 22;
        goto LABEL_13;
      }

      v11 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v28[5] sinceDate:600.0];
      v18 = [MEMORY[0x277CBEAA8] date];
      v19 = [v18 compare:v11] == 1;

      if (v19)
      {
        v20 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v11;
          _os_log_impl(&dword_23E3EA000, v20, OS_LOG_TYPE_DEFAULT, "Clipboard content expired at %@", buf, 0xCu);
        }
      }

      else
      {
        [(ATXHeuristicClipboardUtilities *)self setContent:v40[5]];
        v21 = [(ATXHeuristicClipboardUtilities *)self _appNameFromBundleID:v34[5]];
        [(ATXHeuristicClipboardUtilities *)self setAppName:v21];

        v22 = [(ATXHeuristicClipboardUtilities *)self _dataDetectorsWithContent:v40[5]];
        [(ATXHeuristicClipboardUtilities *)self setDataDetectors:v22];

        v20 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(ATXHeuristicClipboardUtilities *)self content];
          v24 = [(ATXHeuristicClipboardUtilities *)self dataDetectors];
          v25 = [(ATXHeuristicClipboardUtilities *)self appName];
          *buf = 138740483;
          v46 = v23;
          v47 = 2112;
          v48 = v24;
          v49 = 2112;
          v50 = v25;
          _os_log_impl(&dword_23E3EA000, v20, OS_LOG_TYPE_DEFAULT, "ATXHeuristicClipboardUtilities: content %{sensitive}@ dataDetectors:%@ appName:%@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v11 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "ATXHeuristicClipboardUtilities: no clipboard data";
      v14 = v11;
      v15 = 2;
      goto LABEL_13;
    }
  }

LABEL_14:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __47__ATXHeuristicClipboardUtilities_fetchContents__block_invoke(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (a5)
  {
    v13 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __47__ATXHeuristicClipboardUtilities_fetchContents__block_invoke_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }
}

- (void)_resetContents
{
  [(ATXHeuristicClipboardUtilities *)self setContent:0];
  [(ATXHeuristicClipboardUtilities *)self setDataDetectors:0];

  [(ATXHeuristicClipboardUtilities *)self setAppName:0];
}

- (id)_appNameFromBundleID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.Pasteboard.pbutil"])
  {
    v4 = @"pbutil";
    goto LABEL_19;
  }

  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v6 = [v5 applicationIsInstalled:v3];

  if ((v6 & 1) == 0)
  {
    v8 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_INFO, "bundleID has no installed application: %@", buf, 0xCu);
    }

    v4 = 0;
    goto LABEL_18;
  }

  v21 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v21];
  v8 = v21;
  if (v8)
  {
    v9 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicClipboardUtilities *)v3 _appNameFromBundleID:v8, v9];
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_12;
    }

    v9 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicClipboardUtilities *)v3 _appNameFromBundleID:v9, v15, v16, v17, v18, v19, v20];
    }
  }

LABEL_12:
  v10 = [v7 localizedName];
  v4 = v10;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_INFO, "LSApplicationRecord cannot find localizedName for bundleID even though it is installed: %@", buf, 0xCu);
    }
  }

LABEL_18:
LABEL_19:

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_dataDetectorsWithContent:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![(__CFString *)v3 length])
  {
LABEL_11:
    v10 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v4 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    *&buf[4] = v3;
    _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "Running data detectors on: %{sensitive}@", buf, 0xCu);
  }

  *buf = 0;
  v5 = DDScannerCreate();
  if (!v5)
  {
    v11 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicClipboardUtilities *)buf _dataDetectorsWithContent:v11, v12, v13, v14, v15, v16, v17];
    }

    goto LABEL_11;
  }

  v6 = v5;
  if (!DDScannerScanString())
  {
    v18 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      v19 = "ScanString returned no results";
LABEL_16:
      _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, v19, v22, 2u);
    }

LABEL_17:

    v10 = 0;
    goto LABEL_18;
  }

  v7 = *MEMORY[0x277D041E8];
  v8 = DDScannerCopyResultsWithOptions();
  if (!v8)
  {
    v18 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      v19 = "No detector results to copy";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = dataDetectorResultsToPlist(v8, v3, 0);
  CFRelease(v9);
LABEL_18:
  CFRelease(v6);
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)resultWithActions:(id)a3 predictionReasons:(unint64_t)a4
{
  v5 = a3;
  v6 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Generating NSUA for URL from clipboard", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__ATXHeuristicClipboardUtilities_resultWithActions_predictionReasons___block_invoke;
  v11[3] = &__block_descriptor_40_e43___ATXProactiveSuggestion_16__0__ATXAction_8l;
  v11[4] = a4;
  v7 = [v5 _pas_mappedArrayWithTransform:v11];

  v8 = objc_opt_new();
  v9 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v7 additionalRefreshTriggers:v8];

  return v9;
}

id __70__ATXHeuristicClipboardUtilities_resultWithActions_predictionReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v3 date];
  v6 = [v5 dateByAddingTimeInterval:1800.0];
  v7 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v5 endDate:v6 lockScreenEligible:0 predicate:0];
  [v4 setCriteria:v7];
  v8 = [ATXContextHeuristicSuggestionProducer suggestionWithAction:v4 predictionReasons:*(a1 + 32) localizedReason:0 score:0 dateInterval:70.0];

  return v8;
}

void __47__ATXHeuristicClipboardUtilities_fetchContents__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a1, a3, "Error querying data source %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_appNameFromBundleID:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23E3EA000, log, OS_LOG_TYPE_ERROR, "Couldn't fetch record for bundle %@, error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_appNameFromBundleID:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a2, a3, "Fetched nil record for bundle %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_dataDetectorsWithContent:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a2, a3, "Error making scanner: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end
@interface ATXHeuristicOpenURL
- (id)heuristicResultWithEnvironment:(id)a3;
- (id)permanentRefreshTriggers;
- (id)urlsFromDataDetectorResults:(id)a3;
@end

@implementation ATXHeuristicOpenURL

- (id)permanentRefreshTriggers
{
  v2 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXLocalPasteboardDidChangeNotification" type:0];
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, 0}];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)heuristicResultWithEnvironment:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [ATXHeuristicClipboardUtilities alloc];
  v6 = [v4 heuristicDevice];

  v7 = [(ATXHeuristicClipboardUtilities *)v5 initWithDevice:v6];
  [(ATXHeuristicClipboardUtilities *)v7 fetchContents];
  v8 = [(ATXHeuristicClipboardUtilities *)v7 dataDetectors];
  v9 = [(ATXHeuristicOpenURL *)self urlsFromDataDetectorResults:v8];
  v10 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v35 = v9;
    _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: urls:%{sensitive}@", buf, 0xCu);
  }

  if ([v9 count] == 1)
  {
    v11 = [v9 firstObject];
    v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];
    v13 = [v12 host];

    v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_2850BA260];
    v15 = v14;
    if (v13 && [v14 containsObject:v13])
    {
      v16 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v11;
        _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Suppressing action prediction for URL that will not actually open in Safari but punch out to an app immediately: %@", buf, 0xCu);
      }

      v17 = objc_opt_new();
    }

    else
    {
      v32 = v15;
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = MEMORY[0x277CCACA8];
      v21 = [v19 localizedStringForKey:@"OPEN_CLIPBOARD_LINK_TITLE" value:&stru_2850AD368 table:0];
      v22 = [(ATXHeuristicClipboardUtilities *)v7 appName];
      v23 = [v20 localizedStringWithFormat:v21, v22];

      v24 = MEMORY[0x277CEB2C8];
      v25 = *MEMORY[0x277CCA850];
      v26 = objc_opt_new();
      v27 = [v24 atx_userActivityActionWithTitle:v23 subtitle:0 bundleID:@"com.apple.mobilesafari" activityType:v25 urlString:v11 userInfo:v26 heuristicName:@"openUrl"];

      if (v27)
      {
        v33 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
        v17 = [(ATXHeuristicClipboardUtilities *)v7 resultWithActions:v28 predictionReasons:0x8000000];
      }

      else
      {
        v29 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(ATXHeuristicOpenURL *)v11 heuristicResultWithEnvironment:v29];
        }

        v17 = objc_opt_new();
      }

      v15 = v32;
    }
  }

  else
  {
    v18 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: action prediction for URL because did not detect exactly 1 URL.", buf, 2u);
    }

    v17 = objc_opt_new();
  }

  v30 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)urlsFromDataDetectorResults:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"value"];

        if (v11)
        {
          v12 = [v10 objectForKeyedSubscript:@"type"];
          v13 = [v12 isEqualToString:@"HttpURL"];

          if (v13)
          {
            v14 = [v10 objectForKeyedSubscript:@"value"];
            [v4 addObject:v14];
          }

          else
          {
            v15 = [v10 objectForKeyedSubscript:@"type"];
            v16 = [v15 isEqualToString:@"WebURL"];

            if (!v16)
            {
              continue;
            }

            v17 = MEMORY[0x277CCACA8];
            v14 = [v10 objectForKeyedSubscript:@"value"];
            v18 = [v17 stringWithFormat:@"http://%@", v14];
            [v4 addObject:v18];
          }
        }

        else
        {
          v14 = __atxlog_handle_context_heuristic();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            [(ATXHeuristicOpenURL *)&buf urlsFromDataDetectorResults:v22, v14];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)heuristicResultWithEnvironment:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "ATXHeuristicOpenURL heuristicResultWithEnvironment: Action created from URL %@ is nil. No results returned", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)urlsFromDataDetectorResults:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_23E3EA000, log, OS_LOG_TYPE_FAULT, "ATXHeuristicOpenURL urlsFromDataDetectorResults: nil value in result", buf, 2u);
}

@end
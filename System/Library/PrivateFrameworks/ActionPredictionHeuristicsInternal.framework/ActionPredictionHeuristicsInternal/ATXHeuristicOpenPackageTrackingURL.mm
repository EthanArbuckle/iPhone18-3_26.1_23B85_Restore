@interface ATXHeuristicOpenPackageTrackingURL
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicOpenPackageTrackingURL

- (id)permanentRefreshTriggers
{
  v2 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXLocalPasteboardDidChangeNotification" type:0];
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, 0}];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v38 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = [ATXHeuristicClipboardUtilities alloc];
  heuristicDevice = [environmentCopy heuristicDevice];

  v7 = [(ATXHeuristicClipboardUtilities *)v5 initWithDevice:heuristicDevice];
  [(ATXHeuristicClipboardUtilities *)v7 fetchContents];
  dataDetectors = [(ATXHeuristicClipboardUtilities *)v7 dataDetectors];
  appName = [(ATXHeuristicClipboardUtilities *)v7 appName];
  v10 = [appName isEqualToString:@"Safari"];

  if (v10)
  {
    v11 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Suppressing action for package tracking number copied from Safari.", buf, 2u);
    }

    v12 = objc_opt_new();
  }

  else
  {
    v13 = [(ATXHeuristicOpenPackageTrackingURL *)self packageTrackingNumbersFromDataDetectorResults:dataDetectors];

    v14 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v13;
      _os_log_impl(&dword_23E3EA000, v14, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: results:%@", buf, 0xCu);
    }

    if ([v13 count] == 1)
    {
      firstObject = [v13 firstObject];
      v16 = [firstObject objectForKeyedSubscript:@"trackingNumber"];
      v17 = [firstObject objectForKeyedSubscript:@"urlEncodedTrackingNumber"];
      v18 = [firstObject objectForKeyedSubscript:@"companyName"];
      v34 = v17;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://trackingshipment.apple.com/?Company=%@&TrackingNumber=%@", v18, v17];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = MEMORY[0x277CCACA8];
      v33 = v20;
      v22 = [v20 localizedStringForKey:@"OPEN_PACKAGE_TRACKING_LINK_TITLE" value:&stru_2850AD368 table:0];
      v23 = [v21 localizedStringWithFormat:v22, v18];

      v24 = MEMORY[0x277CEB2C8];
      v25 = *MEMORY[0x277CCA850];
      v26 = objc_opt_new();
      v27 = [v24 atx_userActivityActionWithTitle:v23 subtitle:v16 bundleID:@"com.apple.mobilesafari" activityType:v25 urlString:v19 userInfo:v26 heuristicName:@"openPackageTrackingUrl"];

      if (v27)
      {
        v35 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        v12 = [(ATXHeuristicClipboardUtilities *)v7 resultWithActions:v28 predictionReasons:0x4000000];
      }

      else
      {
        v30 = __atxlog_handle_context_heuristic();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(ATXHeuristicOpenPackageTrackingURL *)v19 heuristicResultWithEnvironment:v30];
        }

        v12 = objc_opt_new();
      }
    }

    else
    {
      v29 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E3EA000, v29, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Suppressing action prediction for package tracking number because did not detect exactly 1 URL.", buf, 2u);
      }

      v12 = objc_opt_new();
    }

    dataDetectors = v13;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __84__ATXHeuristicOpenPackageTrackingURL_packageTrackingNumbersFromDataDetectorResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"type"];
  v3 = [v2 isEqualToString:@"TrackingNumber"];

  return v3;
}

- (void)heuristicResultWithEnvironment:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "ATXHeuristicOpenPackageTrackingURL heuristicResultWithEnvironment: Action created from URL %@ is nil. No results returned", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
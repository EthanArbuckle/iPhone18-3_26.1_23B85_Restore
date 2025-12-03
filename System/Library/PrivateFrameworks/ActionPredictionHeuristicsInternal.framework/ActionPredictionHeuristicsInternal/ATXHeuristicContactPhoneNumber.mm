@interface ATXHeuristicContactPhoneNumber
- (BOOL)_containsPhonePunctuation:(id)punctuation;
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (id)phonesFromDataDetectorResults:(id)results;
@end

@implementation ATXHeuristicContactPhoneNumber

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
  v41 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = [ATXHeuristicClipboardUtilities alloc];
  heuristicDevice = [environmentCopy heuristicDevice];

  v7 = [(ATXHeuristicClipboardUtilities *)v5 initWithDevice:heuristicDevice];
  [(ATXHeuristicClipboardUtilities *)v7 fetchContents];
  dataDetectors = [(ATXHeuristicClipboardUtilities *)v7 dataDetectors];
  v9 = objc_opt_new();
  if ([v9 telephonyCapability])
  {
    v10 = [(ATXHeuristicContactPhoneNumber *)self phonesFromDataDetectorResults:dataDetectors];
    v11 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v10;
      _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: phones:%@", buf, 0xCu);
    }

    if ([v10 count] == 1)
    {
      firstObject = [v10 firstObject];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v37 = dataDetectors;
      v14 = MEMORY[0x277CCACA8];
      v15 = v13;
      v16 = [v13 localizedStringForKey:@"CALL_CLIPBOARD_NUMBER_TITLE" value:&stru_2850AD368 table:0];
      [v14 localizedStringWithFormat:v16, firstObject];
      v17 = v36 = v10;

      v18 = MEMORY[0x277CCACA8];
      v19 = v15;
      v35 = v15;
      v20 = [v15 localizedStringForKey:@"MESSAGE_CLIPBOARD_NUMBER_TITLE" value:&stru_2850AD368 table:0];
      v21 = [v18 localizedStringWithFormat:v20, firstObject];

      v22 = MEMORY[0x277CCACA8];
      v23 = [v19 localizedStringForKey:@"CLIPBOARD_NUMBER_SUBTITLE" value:&stru_2850AD368 table:0];
      appName = [(ATXHeuristicClipboardUtilities *)v7 appName];
      v25 = [v22 localizedStringWithFormat:v23, appName];

      v26 = [MEMORY[0x277CEB2C8] atx_startAudioCallActionWithTitle:v17 subtitle:v25 recipientName:0 recipientHandle:firstObject callService:@"phone" contactIdentifier:0 eventIdentifier:0 heuristicName:@"contactPhoneNumber"];
      v27 = [MEMORY[0x277CEB2C8] atx_sendMessageActionWithTitle:v21 subtitle:v25 recipientName:0 recipientHandle:firstObject text:0 contactIdentifier:0 conversationIdentifier:0 eventIdentifier:0 heuristicName:@"contactPhoneNumber"];
      v38[0] = v26;
      v38[1] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
      v29 = [(ATXHeuristicClipboardUtilities *)v7 resultWithActions:v28 predictionReasons:0x10000000];

      dataDetectors = v37;
      v10 = v36;
    }

    else
    {
      v31 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v10 count];
        *buf = 134217984;
        v40 = v32;
        _os_log_impl(&dword_23E3EA000, v31, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Required exactly 1 phone number, but found %lu numbers.", buf, 0xCu);
      }

      v29 = objc_opt_new();
    }
  }

  else
  {
    v30 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v30, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Suppressing prediction to contact copied phone number because device does not support telephony.", buf, 2u);
    }

    v29 = objc_opt_new();
  }

  v33 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)phonesFromDataDetectorResults:(id)results
{
  v22 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v15 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = resultsCopy;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"value", v15}];
        v11 = [v9 objectForKeyedSubscript:@"type"];
        if ([v11 isEqualToString:@"PhoneNumber"])
        {
          v12 = [(ATXHeuristicContactPhoneNumber *)self _containsPhonePunctuation:v10];

          if (v12)
          {
            [v15 addObject:v10];
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)_containsPhonePunctuation:(id)punctuation
{
  v3 = MEMORY[0x277CCA900];
  punctuationCopy = punctuation;
  v5 = [v3 characterSetWithCharactersInString:{@" (), -."}];
  v6 = [punctuationCopy componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 count];
  return v7 > 2;
}

@end
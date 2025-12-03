@interface BCChatAction
+ (void)openTranscript:(NSString *)businessIdentifier intentParameters:(NSDictionary *)intentParameters;
@end

@implementation BCChatAction

+ (void)openTranscript:(NSString *)businessIdentifier intentParameters:(NSDictionary *)intentParameters
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = intentParameters;
  v22 = [@"https://bcrw.apple.com/urn:biz:" stringByAppendingString:businessIdentifier];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v7 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v6 resolvingAgainstBaseURL:0];
  v8 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v5;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [(NSDictionary *)v9 objectForKey:v14];
        v16 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:v14 value:v15];
        [v8 addObject:v16];
      }

      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  [v7 setQueryItems:v8];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v18 = [v7 URL];
  v19 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __48__BCChatAction_openTranscript_intentParameters___block_invoke;
  v23[3] = &unk_278A0E898;
  v24 = v7;
  v20 = v7;
  [defaultWorkspace openURL:v18 configuration:v19 completionHandler:v23];

  v21 = *MEMORY[0x277D85DE8];
}

void __48__BCChatAction_openTranscript_intentParameters___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_Daemon();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) URL];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_236EA0000, v6, OS_LOG_TYPE_ERROR, "BCChatAction: Failed to open chat url: %@. Error %@", &v9, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) URL];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCChatAction: Success opening chat url: %@", &v9, 0xCu);
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end
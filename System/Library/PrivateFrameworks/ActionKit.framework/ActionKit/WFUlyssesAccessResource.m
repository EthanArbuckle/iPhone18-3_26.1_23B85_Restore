@interface WFUlyssesAccessResource
- (WFUlyssesAccessResource)initWithDefinition:(id)a3;
- (id)localizedProtectedResourceDescriptionWithContext:(id)a3;
- (unint64_t)status;
- (void)dealloc;
- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4;
@end

@implementation WFUlyssesAccessResource

- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CFC248] sharedContext];
  v9 = [v8 provider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
    v7[2](v7, 0, v11);
  }

  else
  {
    v11 = [(WFUlyssesAccessResource *)self scheme];
    v12 = objc_opt_new();
    v13 = [v11 scheme];
    [v12 setScheme:v13];

    [v12 setHost:@"x-callback-url"];
    [v12 setPath:@"/authorize"];
    v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"appname" value:@"Shortcuts"];
    v25[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [v12 setQueryItems:v15];

    v16 = MEMORY[0x277D7C558];
    v17 = [v12 URL];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__WFUlyssesAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
    v23[3] = &unk_278C1AC70;
    v23[4] = self;
    v24 = v7;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__WFUlyssesAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2;
    v21[3] = &unk_278C20008;
    v22 = v24;
    v18 = [v16 requestWithURL:v17 scheme:v11 userInterface:v6 bundleIdentifier:@"com.ulyssesapp.ios" successHandler:v23 failureHandler:v21];

    v19 = [MEMORY[0x277D7C548] sharedManager];
    [v19 performRequest:v18];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __76__WFUlyssesAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"access-token"];
  if (v4)
  {
    v3 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
    [v3 setObject:v4 forKey:@"WFUlyssesAccessToken"];

    [*(a1 + 32) refreshAvailabilityWithNotification];
  }

  (*(*(a1 + 40) + 16))();
}

void __76__WFUlyssesAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 code] == 4)
  {

    v3 = 0;
  }

  else
  {
    v3 = v4;
  }

  v5 = v3;
  (*(*(a1 + 32) + 16))();
}

- (unint64_t)status
{
  v2 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v3 = [v2 stringForKey:@"WFUlyssesAccessToken"];

  if ([v3 length])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"your Ulysses library", @"your Ulysses library");
  v5 = [v3 localize:v4];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"WFUlyssesAccessResourceAvailabilityChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = WFUlyssesAccessResource;
  [(WFAccessResource *)&v4 dealloc];
}

- (WFUlyssesAccessResource)initWithDefinition:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = WFUlyssesAccessResource;
  v5 = [(WFAccessResource *)&v28 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D7CCF0]];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D7CCE8]];
    v8 = [MEMORY[0x277D7C540] sharedRegistry];
    v23 = v7;
    v9 = [v8 appWithIdentifier:v7];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v9;
    v10 = [v9 schemes];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 scheme];
          v17 = [v16 isEqualToString:v6];

          if (v17)
          {
            objc_storeStrong(&v5->_scheme, v15);
            goto LABEL_12;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v5 selector:sel_refreshAvailabilityWithNotification name:@"WFUlyssesAccessResourceAvailabilityChangedNotification" object:0];

    v19 = v5;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

@end
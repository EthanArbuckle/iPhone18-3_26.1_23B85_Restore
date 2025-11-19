@interface ASCWorkspace
+ (ASCWorkspace)sharedWorkspace;
+ (OS_os_log)log;
+ (void)withSharedWorkspace:(id)a3 perform:(id)a4;
- (id)_init;
- (id)_openURL:(id)a3 frontBoardOptions:(id)a4 sensitive:(BOOL)a5;
- (id)openApplicationWithBundleIdentifier:(id)a3 payloadURL:(id)a4 universalLinkRequired:(BOOL)a5;
- (id)popPendingResultForOperationName:(id)a3;
- (void)enqueueOpenApplicationOperation:(id)a3 pendingResult:(id)a4;
- (void)openApplicationWithBundleIdentifier:(id)a3 configuration:(id)a4 pendingResult:(id)a5;
- (void)openApplicationWithBundleIdentifier:(id)a3 usingOpenResourceOperationWithPayloadURL:(id)a4 options:(id)a5 pendingResult:(id)a6;
- (void)openApplicationWithBundleIdentifier:(id)a3 usingUserActivityWithPayloadURL:(id)a4 configuration:(id)a5 pendingResult:(id)a6;
- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4;
- (void)openResourceOperationDidComplete:(id)a3;
@end

@implementation ASCWorkspace

+ (OS_os_log)log
{
  if (log_onceToken_0 != -1)
  {
    +[ASCWorkspace log];
  }

  v3 = log_log_0;

  return v3;
}

uint64_t __19__ASCWorkspace_log__block_invoke()
{
  log_log_0 = os_log_create("com.apple.AppStoreComponents", "ASCWorkspace");

  return MEMORY[0x2821F96F8]();
}

+ (ASCWorkspace)sharedWorkspace
{
  v2 = ASCWorkspace_testingWorkspace;
  if (!ASCWorkspace_testingWorkspace)
  {
    if (sharedWorkspace_onceToken != -1)
    {
      +[ASCWorkspace sharedWorkspace];
    }

    v2 = sharedWorkspace_sharedWorkspace;
  }

  v3 = v2;

  return v3;
}

uint64_t __31__ASCWorkspace_sharedWorkspace__block_invoke()
{
  sharedWorkspace_sharedWorkspace = [[ASCWorkspace alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = ASCWorkspace;
  v2 = [(ASCWorkspace *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAC60]);
    stateLock = v2->_stateLock;
    v2->_stateLock = v3;
  }

  return v2;
}

+ (void)withSharedWorkspace:(id)a3 perform:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = ASCWorkspace_testingWorkspace;
  objc_storeStrong(&ASCWorkspace_testingWorkspace, a3);
  v6[2](v6);
  v8 = ASCWorkspace_testingWorkspace;
  ASCWorkspace_testingWorkspace = v7;
}

- (id)_openURL:(id)a3 frontBoardOptions:(id)a4 sensitive:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = MEMORY[0x277CEE5F0];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  v11 = objc_alloc_init(MEMORY[0x277CC1F00]);
  v12 = v11;
  if (v5)
  {
    [v11 setSensitive:1];
  }

  [v12 setFrontBoardOptions:v7];
  v13 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ASCWorkspace__openURL_frontBoardOptions_sensitive___block_invoke;
  v16[3] = &unk_2784B17D0;
  v14 = v10;
  v17 = v14;
  [v13 openURL:v9 configuration:v12 completionHandler:v16];

  return v14;
}

uint64_t __53__ASCWorkspace__openURL_frontBoardOptions_sensitive___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithSuccess];
  }

  else
  {
    return [v2 finishWithError:?];
  }
}

- (void)enqueueOpenApplicationOperation:(id)a3 pendingResult:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(ASCWorkspace *)self stateLock];
  [v7 lock];

  if (!self->_openApplicationOperationQueue)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    openApplicationOperationQueue = self->_openApplicationOperationQueue;
    self->_openApplicationOperationQueue = v8;
  }

  if (!self->_pendingResults)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingResults = self->_pendingResults;
    self->_pendingResults = v10;
  }

  [(NSOperationQueue *)self->_openApplicationOperationQueue setSuspended:1];
  v12 = [v18 name];

  if (!v12)
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];
    [v18 setName:v14];
  }

  [(NSOperationQueue *)self->_openApplicationOperationQueue addOperation:v18];
  v15 = [(ASCWorkspace *)self pendingResults];
  v16 = [v18 name];
  [v15 setObject:v6 forKey:v16];

  [(NSOperationQueue *)self->_openApplicationOperationQueue setSuspended:0];
  v17 = [(ASCWorkspace *)self stateLock];
  [v17 unlock];
}

- (id)popPendingResultForOperationName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ASCWorkspace *)self stateLock];
    [v5 lock];

    v6 = [(ASCWorkspace *)self pendingResults];
    v7 = [v6 objectForKey:v4];

    if (v7)
    {
      v8 = [(ASCWorkspace *)self pendingResults];
      [v8 removeObjectForKey:v4];
    }

    v9 = [(ASCWorkspace *)self stateLock];
    [v9 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)openApplicationWithBundleIdentifier:(id)a3 payloadURL:(id)a4 universalLinkRequired:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  v11 = [MEMORY[0x277CBEAC0] dictionary];
  if (v9)
  {
    v12 = MEMORY[0x277CC1E48];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke;
    v17[3] = &unk_2784B1948;
    v18 = v8;
    v19 = v11;
    v20 = v10;
    v21 = self;
    v22 = v9;
    v23 = a5;
    [v12 getAppLinksWithURL:v22 completionHandler:v17];

    v13 = v18;
  }

  else
  {
    v14 = +[ASCWorkspace log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_222629000, v14, OS_LOG_TYPE_INFO, "No payload URL; opening application.", v16, 2u);
    }

    v13 = objc_alloc_init(MEMORY[0x277CC1F00]);
    [v13 setFrontBoardOptions:v11];
    [(ASCWorkspace *)self openApplicationWithBundleIdentifier:v8 configuration:v13 pendingResult:v10];
  }

  return v10;
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v33 = v6;
    v8 = +[ASCWorkspace log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_1(v5, v8);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v42;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = [v14 targetApplicationRecord];
        v16 = [v15 bundleIdentifier];
        v17 = [v16 isEqualToString:*(a1 + 32)];

        if (v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v18 = v14;

      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = +[ASCWorkspace log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_222629000, v19, OS_LOG_TYPE_INFO, "Found valid universal link, attempting to open", buf, 2u);
      }

      v20 = objc_alloc_init(MEMORY[0x277CC1F00]);
      [v20 setFrontBoardOptions:*(a1 + 40)];
      [v20 setIgnoreAppLinkEnabledProperty:1];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_5;
      v34[3] = &unk_2784B1920;
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v35 = v21;
      v36 = v22;
      v37 = *(a1 + 32);
      v38 = *(a1 + 64);
      v39 = *(a1 + 40);
      [v18 openWithConfiguration:v20 completionHandler:v34];

      v7 = v33;
      goto LABEL_32;
    }

LABEL_12:

LABEL_17:
    v23 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = [v23 bundleIdentifier];
    if ([v24 isEqualToString:@"com.apple.AppStore"])
    {

LABEL_23:
      v31 = +[ASCWorkspace log];
      v7 = v33;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_3(a1);
      }

      v18 = objc_alloc_init(MEMORY[0x277CC1F00]);
      [v18 setFrontBoardOptions:*(a1 + 40)];
      [*(a1 + 56) openApplicationWithBundleIdentifier:*(a1 + 32) usingUserActivityWithPayloadURL:*(a1 + 64) configuration:v18 pendingResult:*(a1 + 48)];
      goto LABEL_32;
    }

    v28 = [MEMORY[0x277CCA8D8] mainBundle];
    v29 = [v28 bundleIdentifier];
    v30 = [v29 isEqualToString:@"com.apple.gamed"];

    if (v30)
    {
      goto LABEL_23;
    }

    v27 = +[ASCWorkspace log];
    v7 = v33;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_2(a1);
    }

LABEL_31:

    v18 = objc_alloc_init(MEMORY[0x277CC1F00]);
    [v18 setFrontBoardOptions:*(a1 + 40)];
    [*(a1 + 56) openApplicationWithBundleIdentifier:*(a1 + 32) configuration:v18 pendingResult:*(a1 + 48)];
LABEL_32:

    goto LABEL_33;
  }

  v25 = *(a1 + 72);
  v26 = +[ASCWorkspace log];
  v27 = v26;
  if (v25 == 1)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_4(v27);
    }

    goto LABEL_31;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_222629000, v27, OS_LOG_TYPE_INFO, "Found non-universal link, opening via open resource operation", buf, 2u);
  }

  [*(a1 + 56) openApplicationWithBundleIdentifier:*(a1 + 32) usingOpenResourceOperationWithPayloadURL:*(a1 + 64) options:*(a1 + 40) pendingResult:*(a1 + 48)];
LABEL_33:

  v32 = *MEMORY[0x277D85DE8];
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[ASCWorkspace log];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_222629000, v7, OS_LOG_TYPE_INFO, "Successfully opened universal link", v8, 2u);
    }

    [*(a1 + 32) finishWithSuccess];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_5_cold_1();
    }

    [*(a1 + 40) openApplicationWithBundleIdentifier:*(a1 + 48) usingOpenResourceOperationWithPayloadURL:*(a1 + 56) options:*(a1 + 64) pendingResult:*(a1 + 32)];
  }
}

- (void)openApplicationWithBundleIdentifier:(id)a3 usingOpenResourceOperationWithPayloadURL:(id)a4 options:(id)a5 pendingResult:(id)a6
{
  v10 = MEMORY[0x277CC1E80];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 defaultWorkspace];
  v16 = [v15 operationToOpenResource:v13 usingApplication:v14 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:v12 delegate:self];

  v17 = +[ASCWorkspace log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_222629000, v17, OS_LOG_TYPE_INFO, "Enqueuing open resource URL operation", buf, 2u);
  }

  [(ASCWorkspace *)self enqueueOpenApplicationOperation:v16 pendingResult:v11];
}

- (void)openApplicationWithBundleIdentifier:(id)a3 usingUserActivityWithPayloadURL:(id)a4 configuration:(id)a5 pendingResult:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x277CCAE58];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 alloc];
  v15 = [v14 initWithActivityType:*MEMORY[0x277CCA850]];
  [v15 setWebpageURL:v12];

  v16 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v13 allowPlaceholder:0 error:0];
  v17 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __145__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_usingUserActivityWithPayloadURL_configuration_pendingResult___block_invoke;
  v19[3] = &unk_2784B18A0;
  v20 = v9;
  v18 = v9;
  [v17 openUserActivity:v15 usingApplicationRecord:v16 configuration:v11 completionHandler:v19];
}

void __145__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_usingUserActivityWithPayloadURL_configuration_pendingResult___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[ASCWorkspace log];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_222629000, v7, OS_LOG_TYPE_INFO, "Open application with URL user activity succeeded.", v8, 2u);
    }

    [*(a1 + 32) finishWithSuccess];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __145__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_usingUserActivityWithPayloadURL_configuration_pendingResult___block_invoke_cold_1();
    }

    [*(a1 + 32) finishWithError:v5];
  }
}

- (void)openApplicationWithBundleIdentifier:(id)a3 configuration:(id)a4 pendingResult:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CC1E80];
  v9 = a4;
  v10 = a3;
  v11 = [v8 defaultWorkspace];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __113__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_configuration_pendingResult___block_invoke;
  v13[3] = &unk_2784B18A0;
  v14 = v7;
  v12 = v7;
  [v11 openApplicationWithBundleIdentifier:v10 configuration:v9 completionHandler:v13];
}

void __113__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_configuration_pendingResult___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[ASCWorkspace log];
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_222629000, v7, OS_LOG_TYPE_INFO, "Open application with bundle ID succeeded.", v8, 2u);
    }

    [*(a1 + 32) finishWithSuccess];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __113__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_configuration_pendingResult___block_invoke_cold_1();
    }

    [*(a1 + 32) finishWithError:v5];
  }
}

- (void)openResourceOperationDidComplete:(id)a3
{
  v4 = a3;
  v5 = +[ASCWorkspace log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_222629000, v5, OS_LOG_TYPE_INFO, "Open resource URL operation completed", v8, 2u);
  }

  v6 = [v4 name];

  v7 = [(ASCWorkspace *)self popPendingResultForOperationName:v6];

  [v7 finishWithSuccess];
}

- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ASCWorkspace log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ASCWorkspace(ASCAppLaunchTrampolineWorkspace) openResourceOperation:didFailWithError:];
  }

  v9 = [v7 name];

  v10 = [(ASCWorkspace *)self popPendingResultForOperationName:v9];

  [v10 finishWithError:v6];
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_222629000, a2, OS_LOG_TYPE_DEBUG, "Found %lu matching apps for payload URL", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [0 targetApplicationRecord];
  v3 = [v2 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_222629000, v4, v5, "Found valid universal link with no matching app, source %{public}@, target %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [0 targetApplicationRecord];
  v3 = [v2 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_222629000, v4, v5, "Found valid universal link with no matching app, passing URL to app via UserActivity, source %{public}@, target %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_5_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_222629000, v0, v1, "Failed to open universal link, reason %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __145__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_usingUserActivityWithPayloadURL_configuration_pendingResult___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_222629000, v0, v1, "Open application with URL user activity failed, reason %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __113__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_configuration_pendingResult___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_222629000, v0, v1, "Open application with bundle ID failed, reason %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end
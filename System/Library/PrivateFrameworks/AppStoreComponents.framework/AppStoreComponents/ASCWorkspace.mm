@interface ASCWorkspace
+ (ASCWorkspace)sharedWorkspace;
+ (OS_os_log)log;
+ (void)withSharedWorkspace:(id)workspace perform:(id)perform;
- (id)_init;
- (id)_openURL:(id)l frontBoardOptions:(id)options sensitive:(BOOL)sensitive;
- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l universalLinkRequired:(BOOL)required;
- (id)openProductURL:(id)l;
- (id)popPendingResultForOperationName:(id)name;
- (void)enqueueOpenApplicationOperation:(id)operation pendingResult:(id)result;
- (void)openApplicationWithBundleIdentifier:(id)identifier configuration:(id)configuration pendingResult:(id)result;
- (void)openApplicationWithBundleIdentifier:(id)identifier usingOpenResourceOperationWithPayloadURL:(id)l options:(id)options pendingResult:(id)result;
- (void)openApplicationWithBundleIdentifier:(id)identifier usingUserActivityWithPayloadURL:(id)l configuration:(id)configuration pendingResult:(id)result;
- (void)openResourceOperation:(id)operation didFailWithError:(id)error;
- (void)openResourceOperationDidComplete:(id)complete;
@end

@implementation ASCWorkspace

+ (OS_os_log)log
{
  if (log_onceToken_5 != -1)
  {
    +[ASCWorkspace log];
  }

  v3 = log_log_5;

  return v3;
}

uint64_t __19__ASCWorkspace_log__block_invoke()
{
  log_log_5 = os_log_create("com.apple.AppStoreComponents", "ASCWorkspace");

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

+ (void)withSharedWorkspace:(id)workspace perform:(id)perform
{
  workspaceCopy = workspace;
  performCopy = perform;
  v7 = ASCWorkspace_testingWorkspace;
  objc_storeStrong(&ASCWorkspace_testingWorkspace, workspace);
  performCopy[2](performCopy);
  v8 = ASCWorkspace_testingWorkspace;
  ASCWorkspace_testingWorkspace = v7;
}

- (id)_openURL:(id)l frontBoardOptions:(id)options sensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  optionsCopy = options;
  v8 = MEMORY[0x277CEE5F0];
  lCopy = l;
  v10 = objc_alloc_init(v8);
  v11 = objc_alloc_init(MEMORY[0x277CC1F00]);
  v12 = v11;
  if (sensitiveCopy)
  {
    [v11 setSensitive:1];
  }

  [v12 setFrontBoardOptions:optionsCopy];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ASCWorkspace__openURL_frontBoardOptions_sensitive___block_invoke;
  v16[3] = &unk_2781CC7C8;
  v14 = v10;
  v17 = v14;
  [defaultWorkspace openURL:lCopy configuration:v12 completionHandler:v16];

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

- (void)enqueueOpenApplicationOperation:(id)operation pendingResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  stateLock = [(ASCWorkspace *)self stateLock];
  [stateLock lock];

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
  name = [operationCopy name];

  if (!name)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [operationCopy setName:uUIDString];
  }

  [(NSOperationQueue *)self->_openApplicationOperationQueue addOperation:operationCopy];
  pendingResults = [(ASCWorkspace *)self pendingResults];
  name2 = [operationCopy name];
  [pendingResults setObject:resultCopy forKey:name2];

  [(NSOperationQueue *)self->_openApplicationOperationQueue setSuspended:0];
  stateLock2 = [(ASCWorkspace *)self stateLock];
  [stateLock2 unlock];
}

- (id)popPendingResultForOperationName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    stateLock = [(ASCWorkspace *)self stateLock];
    [stateLock lock];

    pendingResults = [(ASCWorkspace *)self pendingResults];
    v7 = [pendingResults objectForKey:nameCopy];

    if (v7)
    {
      pendingResults2 = [(ASCWorkspace *)self pendingResults];
      [pendingResults2 removeObjectForKey:nameCopy];
    }

    stateLock2 = [(ASCWorkspace *)self stateLock];
    [stateLock2 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l universalLinkRequired:(BOOL)required
{
  v26[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  lCopy = l;
  v10 = objc_alloc_init(MEMORY[0x277CEE5F0]);
  v11 = *MEMORY[0x277D0AC70];
  v25[0] = *MEMORY[0x277D0AC58];
  v25[1] = v11;
  v26[0] = MEMORY[0x277CBEC38];
  v26[1] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  if (lCopy)
  {
    v13 = MEMORY[0x277CC1E48];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke;
    v18[3] = &unk_2781CCFA0;
    v19 = identifierCopy;
    v20 = v12;
    v21 = v10;
    selfCopy = self;
    v23 = lCopy;
    requiredCopy = required;
    [v13 getAppLinksWithURL:v23 completionHandler:v18];

    v14 = v19;
  }

  else
  {
    v15 = +[ASCWorkspace log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_21571A000, v15, OS_LOG_TYPE_INFO, "No payload URL; opening application.", v17, 2u);
    }

    v14 = objc_alloc_init(MEMORY[0x277CC1F00]);
    [v14 setFrontBoardOptions:v12];
    [(ASCWorkspace *)self openApplicationWithBundleIdentifier:identifierCopy configuration:v14 pendingResult:v10];
  }

  return v10;
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v32 = v6;
    v8 = +[ASCWorkspace log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_1(v5, v8);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        v15 = [v14 targetApplicationRecord];
        v16 = [v15 bundleIdentifier];
        v17 = [v16 isEqualToString:*(a1 + 32)];

        if (v17)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
        _os_log_impl(&dword_21571A000, v19, OS_LOG_TYPE_INFO, "Found valid universal link, attempting to open", buf, 2u);
      }

      v20 = objc_alloc_init(MEMORY[0x277CC1F00]);
      [v20 setFrontBoardOptions:*(a1 + 40)];
      [v20 setIgnoreAppLinkEnabledProperty:1];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_5;
      v33[3] = &unk_2781CCF78;
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v34 = v21;
      v35 = v22;
      v36 = *(a1 + 32);
      v37 = *(a1 + 64);
      v38 = *(a1 + 40);
      [v18 openWithConfiguration:v20 completionHandler:v33];

      v7 = v32;
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
      v7 = v32;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_3();
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
    v7 = v32;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_2();
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
    _os_log_impl(&dword_21571A000, v27, OS_LOG_TYPE_INFO, "Found non-universal link, opening via open resource operation", buf, 2u);
  }

  [*(a1 + 56) openApplicationWithBundleIdentifier:*(a1 + 32) usingOpenResourceOperationWithPayloadURL:*(a1 + 64) options:*(a1 + 40) pendingResult:*(a1 + 48)];
LABEL_33:
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
      _os_log_impl(&dword_21571A000, v7, OS_LOG_TYPE_INFO, "Successfully opened universal link", v8, 2u);
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

- (void)openApplicationWithBundleIdentifier:(id)identifier usingOpenResourceOperationWithPayloadURL:(id)l options:(id)options pendingResult:(id)result
{
  v10 = MEMORY[0x277CC1E80];
  resultCopy = result;
  optionsCopy = options;
  lCopy = l;
  identifierCopy = identifier;
  defaultWorkspace = [v10 defaultWorkspace];
  v16 = [defaultWorkspace operationToOpenResource:lCopy usingApplication:identifierCopy uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:optionsCopy delegate:self];

  v17 = +[ASCWorkspace log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21571A000, v17, OS_LOG_TYPE_INFO, "Enqueuing open resource URL operation", buf, 2u);
  }

  [(ASCWorkspace *)self enqueueOpenApplicationOperation:v16 pendingResult:resultCopy];
}

- (void)openApplicationWithBundleIdentifier:(id)identifier usingUserActivityWithPayloadURL:(id)l configuration:(id)configuration pendingResult:(id)result
{
  resultCopy = result;
  v10 = MEMORY[0x277CC1EF0];
  configurationCopy = configuration;
  lCopy = l;
  identifierCopy = identifier;
  v14 = [v10 alloc];
  v15 = [v14 initWithActivityType:*MEMORY[0x277CCA850]];
  [v15 setWebpageURL:lCopy];

  v16 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __145__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_usingUserActivityWithPayloadURL_configuration_pendingResult___block_invoke;
  v19[3] = &unk_2781CCF20;
  v20 = resultCopy;
  v18 = resultCopy;
  [defaultWorkspace openUserActivity:v15 usingApplicationRecord:v16 configuration:configurationCopy completionHandler:v19];
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
      _os_log_impl(&dword_21571A000, v7, OS_LOG_TYPE_INFO, "Open application with URL user activity succeeded.", v8, 2u);
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

- (void)openApplicationWithBundleIdentifier:(id)identifier configuration:(id)configuration pendingResult:(id)result
{
  resultCopy = result;
  v8 = MEMORY[0x277CC1E80];
  configurationCopy = configuration;
  identifierCopy = identifier;
  defaultWorkspace = [v8 defaultWorkspace];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __113__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_configuration_pendingResult___block_invoke;
  v13[3] = &unk_2781CCF20;
  v14 = resultCopy;
  v12 = resultCopy;
  [defaultWorkspace openApplicationWithBundleIdentifier:identifierCopy configuration:configurationCopy completionHandler:v13];
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
      _os_log_impl(&dword_21571A000, v7, OS_LOG_TYPE_INFO, "Open application with bundle ID succeeded.", v8, 2u);
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

- (id)openProductURL:(id)l
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D0AC70];
  v10[0] = *MEMORY[0x277D0AC58];
  v10[1] = v4;
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = MEMORY[0x277CBEC38];
  v5 = MEMORY[0x277CBEAC0];
  lCopy = l;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [(ASCWorkspace *)self openURL:lCopy frontBoardOptions:v7];

  return v8;
}

- (void)openResourceOperationDidComplete:(id)complete
{
  completeCopy = complete;
  v5 = +[ASCWorkspace log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_21571A000, v5, OS_LOG_TYPE_INFO, "Open resource URL operation completed", v8, 2u);
  }

  name = [completeCopy name];

  v7 = [(ASCWorkspace *)self popPendingResultForOperationName:name];

  [v7 finishWithSuccess];
}

- (void)openResourceOperation:(id)operation didFailWithError:(id)error
{
  errorCopy = error;
  operationCopy = operation;
  v8 = +[ASCWorkspace log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ASCWorkspace(ASCAppLaunchTrampolineWorkspace) openResourceOperation:didFailWithError:];
  }

  name = [operationCopy name];

  v10 = [(ASCWorkspace *)self popPendingResultForOperationName:name];

  [v10 finishWithError:errorCopy];
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_21571A000, a2, OS_LOG_TYPE_DEBUG, "Found %lu matching apps for payload URL", v3, 0xCu);
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_2()
{
  v0 = [0 targetApplicationRecord];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0(&dword_21571A000, v2, v3, "Found valid universal link with no matching app, source %{public}@, target %{public}@", v4, v5, v6, v7, v8);
}

void __118__ASCWorkspace_ASCAppLaunchTrampolineWorkspace__openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired___block_invoke_cold_3()
{
  v0 = [0 targetApplicationRecord];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_0(&dword_21571A000, v2, v3, "Found valid universal link with no matching app, passing URL to app via UserActivity, source %{public}@, target %{public}@", v4, v5, v6, v7, v8);
}

@end
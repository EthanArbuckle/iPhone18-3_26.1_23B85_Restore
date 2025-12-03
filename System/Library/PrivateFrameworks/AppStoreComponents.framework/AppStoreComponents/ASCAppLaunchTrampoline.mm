@interface ASCAppLaunchTrampoline
+ (OS_os_log)log;
- (ASCAppLaunchTrampoline)init;
- (ASCAppLaunchTrampoline)initWithWorkspace:(id)workspace;
- (id)handleURL:(id)l workspace:(id)workspace;
- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l universalLinkRequired:(BOOL)required workspace:(id)workspace;
- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l workspace:(id)workspace;
- (id)productPageURLForAdamId:(id)id deeplink:(id)deeplink eventId:(id)eventId encodedMetrics:(id)metrics sourceApplication:(id)application openInGamesUI:(id)i;
@end

@implementation ASCAppLaunchTrampoline

+ (OS_os_log)log
{
  if (log_onceToken_8 != -1)
  {
    +[ASCAppLaunchTrampoline log];
  }

  v3 = log_log_8;

  return v3;
}

uint64_t __29__ASCAppLaunchTrampoline_log__block_invoke()
{
  log_log_8 = os_log_create("com.apple.AppStoreComponents", "ASCAppLaunchTrampoline");

  return MEMORY[0x2821F96F8]();
}

- (ASCAppLaunchTrampoline)init
{
  v3 = +[ASCWorkspace sharedWorkspace];
  v4 = [(ASCAppLaunchTrampoline *)self initWithWorkspace:v3];

  return v4;
}

- (ASCAppLaunchTrampoline)initWithWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  +[ASCEligibility assertCurrentProcessEligibility];
  v9.receiver = self;
  v9.super_class = ASCAppLaunchTrampoline;
  v6 = [(ASCAppLaunchTrampoline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workspace, workspace);
  }

  return v7;
}

- (id)handleURL:(id)l workspace:(id)workspace
{
  v115[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  workspaceCopy = workspace;
  v6 = objc_alloc_init(MEMORY[0x277CEE600]);
  v7 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:1];
  v81 = v7;
  if (_os_feature_enabled_impl())
  {
    host = [lCopy host];
    lowercaseString = [host lowercaseString];
    v10 = [lowercaseString isEqualToString:@"restoreappstore"];

    if (v10)
    {
      v11 = +[ASCAppLaunchTrampoline log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21571A000, v11, OS_LOG_TYPE_INFO, "Received request to install app store", buf, 2u);
      }

      v12 = +[ASCUtilities shared];
      restoreAppStore = [v12 restoreAppStore];

      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke;
      v106[3] = &unk_2781CC0E8;
      v14 = v6;
      v107 = v14;
      [restoreAppStore addSuccessBlock:v106];
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_12;
      v104[3] = &unk_2781CBB80;
      v15 = v14;
      v105 = v15;
      [restoreAppStore addErrorBlock:v104];
      v16 = v15;

      v17 = v107;
      goto LABEL_64;
    }
  }

  if (!v7 || ([v7 queryItems], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, !v19))
  {
    v63 = MEMORY[0x277CCA9B8];
    v114 = *MEMORY[0x277CCA450];
    v115[0] = @"Failed while parsing input URL, URL components was nil or empty.";
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:&v114 count:1];
    v65 = v63;
    v66 = 0;
LABEL_56:
    restoreAppStore = [v65 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:v66 userInfo:v64];

    [v6 finishWithError:restoreAppStore];
    v68 = v6;
    goto LABEL_65;
  }

  host2 = [lCopy host];
  lowercaseString2 = [host2 lowercaseString];
  v22 = [lowercaseString2 isEqualToString:@"launchapp"];

  if ((v22 & 1) == 0)
  {
    v67 = MEMORY[0x277CCA9B8];
    v112 = *MEMORY[0x277CCA450];
    v113 = @"Received URL unsuitable for app launch trampoline.";
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
    v65 = v67;
    v66 = 1;
    goto LABEL_56;
  }

  v79 = v6;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  queryItems = [v7 queryItems];
  v24 = [queryItems countByEnumeratingWithState:&v100 objects:v111 count:16];
  if (!v24)
  {

    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    restoreAppStore = 0;
    v6 = v79;
    goto LABEL_59;
  }

  v25 = v24;
  v78 = lCopy;
  restoreAppStore = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v26 = *v101;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v101 != v26)
      {
        objc_enumerationMutation(queryItems);
      }

      v28 = *(*(&v100 + 1) + 8 * i);
      name = [v28 name];
      lowercaseString3 = [name lowercaseString];
      if ([lowercaseString3 isEqualToString:@"appid"])
      {
        value = [v28 value];

        if (value)
        {
          v32 = v28;

          restoreAppStore = v32;
          continue;
        }
      }

      else
      {
      }

      name2 = [v28 name];
      lowercaseString4 = [name2 lowercaseString];
      if ([lowercaseString4 isEqualToString:@"bundleid"])
      {
        value2 = [v28 value];

        if (value2)
        {
          v36 = v28;

          v88 = v36;
          continue;
        }
      }

      else
      {
      }

      name3 = [v28 name];
      lowercaseString5 = [name3 lowercaseString];
      if ([lowercaseString5 isEqualToString:@"deeplink"])
      {
        value3 = [v28 value];

        if (value3)
        {
          v40 = v28;

          v87 = v40;
          continue;
        }
      }

      else
      {
      }

      name4 = [v28 name];
      lowercaseString6 = [name4 lowercaseString];
      if ([lowercaseString6 isEqualToString:@"eventid"])
      {
        value4 = [v28 value];

        if (value4)
        {
          v44 = v28;

          v85 = v44;
          continue;
        }
      }

      else
      {
      }

      name5 = [v28 name];
      lowercaseString7 = [name5 lowercaseString];
      if ([lowercaseString7 isEqualToString:@"trampolinemetrics"])
      {
        value5 = [v28 value];

        if (value5)
        {
          v48 = v28;

          v86 = v48;
          continue;
        }
      }

      else
      {
      }

      name6 = [v28 name];
      lowercaseString8 = [name6 lowercaseString];
      if ([lowercaseString8 isEqualToString:@"sourceapplication"])
      {
        value6 = [v28 value];

        if (value6)
        {
          v52 = v28;

          v84 = v52;
          continue;
        }
      }

      else
      {
      }

      name7 = [v28 name];
      lowercaseString9 = [name7 lowercaseString];
      if ([lowercaseString9 isEqualToString:@"metrics"])
      {
        value7 = [v28 value];

        if (value7 && !v86)
        {
          v86 = v28;
          continue;
        }
      }

      else
      {
      }

      name8 = [v28 name];
      lowercaseString10 = [name8 lowercaseString];
      if ([lowercaseString10 isEqualToString:@"openingamesui"])
      {
        value8 = [v28 value];

        if (value8)
        {
          v59 = v28;

          v83 = v59;
        }
      }

      else
      {
      }
    }

    v25 = [queryItems countByEnumeratingWithState:&v100 objects:v111 count:16];
  }

  while (v25);

  if (!restoreAppStore)
  {
    lCopy = v78;
    v6 = v79;
    goto LABEL_59;
  }

  lCopy = v78;
  v6 = v79;
  if (!v88)
  {
LABEL_59:
    v69 = MEMORY[0x277CCA9B8];
    v109 = *MEMORY[0x277CCA450];
    v110 = @"Missing required parameters for app launch.";
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    value9 = [v69 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:2 userInfo:v70];

    [v6 finishWithError:value9];
    v71 = v6;
    goto LABEL_63;
  }

  value9 = [v87 value];

  if (value9)
  {
    value10 = [v87 value];
    stringByRemovingPercentEncoding = [value10 stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding)
    {
      value9 = [MEMORY[0x277CBEBC0] URLWithString:stringByRemovingPercentEncoding];
    }

    else
    {
      value9 = 0;
    }
  }

  value11 = [v88 value];
  v73 = [workspaceCopy openApplicationWithBundleIdentifier:value11 payloadURL:value9];

  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_53;
  v98[3] = &unk_2781CC0E8;
  v74 = v79;
  v99 = v74;
  [v73 addSuccessBlock:v98];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_2;
  v89[3] = &unk_2781CCF48;
  v89[4] = self;
  restoreAppStore = restoreAppStore;
  v90 = restoreAppStore;
  v87 = v87;
  v91 = v87;
  v85 = v85;
  v92 = v85;
  v86 = v86;
  v93 = v86;
  v84 = v84;
  v94 = v84;
  v83 = v83;
  v95 = v83;
  v75 = v74;
  v96 = v75;
  v97 = workspaceCopy;
  [v73 addErrorBlock:v89];
  v76 = v75;

LABEL_63:
  v17 = v88;
LABEL_64:

LABEL_65:

  return v6;
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke(uint64_t a1)
{
  v2 = +[ASCAppLaunchTrampoline log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21571A000, v2, OS_LOG_TYPE_INFO, "Successfully initiated App Store reinstall", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v3 finishWithResult:v4];
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ASCAppLaunchTrampoline log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_12_cold_1(v3, v4);
  }

  [*(a1 + 32) finishWithError:v3];
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_53(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [*(a1 + 32) finishWithResult:v2];
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ASCAppLaunchTrampoline log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = v3;
    _os_log_impl(&dword_21571A000, v4, OS_LOG_TYPE_INFO, "Unable to open application, reason %{public}@. Attempting to open product page URL", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) value];
  v7 = [*(a1 + 48) value];
  v8 = [*(a1 + 56) value];
  v9 = [*(a1 + 64) value];
  v10 = [*(a1 + 72) value];
  v11 = [*(a1 + 80) value];
  v12 = [v5 productPageURLForAdamId:v6 deeplink:v7 eventId:v8 encodedMetrics:v9 sourceApplication:v10 openInGamesUI:v11];

  if (v12)
  {
    v13 = [*(a1 + 96) openProductURL:v12];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_57;
    v16[3] = &unk_2781CCF20;
    v17 = *(a1 + 88);
    [v13 addFinishBlock:v16];
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Failed to construct product page URL.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v14 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:3 userInfo:v15];

    [*(a1 + 88) finishWithError:v13];
  }
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_57(uint64_t a1, int a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [*(a1 + 32) finishWithResult:v6];
  }

  else
  {
    v7 = +[ASCAppLaunchTrampoline log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_57_cold_1(v5, v7);
    }

    v8 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Failed to open product page.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v8 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:4 userInfo:v9];

    [*(a1 + 32) finishWithError:v6];
  }
}

- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l workspace:(id)workspace
{
  v7 = MEMORY[0x277CEE600];
  workspaceCopy = workspace;
  lCopy = l;
  identifierCopy = identifier;
  v11 = objc_alloc_init(v7);
  v12 = [workspaceCopy openApplicationWithBundleIdentifier:identifierCopy payloadURL:lCopy];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke;
  v20[3] = &unk_2781CC0E8;
  v13 = v11;
  v21 = v13;
  [v12 addSuccessBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke_2;
  v18[3] = &unk_2781CBB80;
  v14 = v13;
  v19 = v14;
  [v12 addErrorBlock:v18];
  v15 = v19;
  v16 = v14;

  return v14;
}

void __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [*(a1 + 32) finishWithResult:v2];
}

void __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Failed to open app.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:5 userInfo:v3];

  [*(a1 + 32) finishWithError:v4];
}

- (id)openApplicationWithBundleIdentifier:(id)identifier payloadURL:(id)l universalLinkRequired:(BOOL)required workspace:(id)workspace
{
  requiredCopy = required;
  v9 = MEMORY[0x277CEE600];
  workspaceCopy = workspace;
  lCopy = l;
  identifierCopy = identifier;
  v13 = objc_alloc_init(v9);
  v14 = [workspaceCopy openApplicationWithBundleIdentifier:identifierCopy payloadURL:lCopy universalLinkRequired:requiredCopy];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke;
  v22[3] = &unk_2781CC0E8;
  v15 = v13;
  v23 = v15;
  [v14 addSuccessBlock:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke_2;
  v20[3] = &unk_2781CBB80;
  v16 = v15;
  v21 = v16;
  [v14 addErrorBlock:v20];
  v17 = v21;
  v18 = v16;

  return v16;
}

void __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [*(a1 + 32) finishWithResult:v2];
}

void __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Failed to open app.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:5 userInfo:v3];

  [*(a1 + 32) finishWithError:v4];
}

- (id)productPageURLForAdamId:(id)id deeplink:(id)deeplink eventId:(id)eventId encodedMetrics:(id)metrics sourceApplication:(id)application openInGamesUI:(id)i
{
  deeplinkCopy = deeplink;
  eventIdCopy = eventId;
  metricsCopy = metrics;
  applicationCopy = application;
  iCopy = i;
  idCopy = id;
  v19 = [[ASCAdamID alloc] initWithStringValue:idCopy];

  LODWORD(idCopy) = [iCopy BOOLValue];
  if (idCopy)
  {
    [ASCLockupProductDetails gamesURLForLockupID:v19 ofKind:@"app" withOfferFlags:0];
  }

  else
  {
    [ASCLockupProductDetails URLForLockupID:v19 ofKind:@"app" withOfferFlags:0];
  }
  v20 = ;
  if (v20 && (deeplinkCopy || eventIdCopy || metricsCopy))
  {
    v21 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v20 resolvingAgainstBaseURL:0];
    queryItems = [v21 queryItems];
    v23 = [queryItems mutableCopy];

    if (!v23)
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    if (deeplinkCopy)
    {
      v24 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"deeplink" value:deeplinkCopy];
      [v23 addObject:v24];
    }

    if (eventIdCopy)
    {
      v25 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"eventid" value:eventIdCopy];
      [v23 addObject:v25];
    }

    if (metricsCopy)
    {
      v26 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"trampolineMetrics" value:metricsCopy];
      [v23 addObject:v26];
    }

    if (applicationCopy)
    {
      v27 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"sourceApplication" value:applicationCopy];
      [v23 addObject:v27];
    }

    [v21 setQueryItems:v23];
    v28 = [v21 URL];

    v20 = v28;
  }

  return v20;
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_12_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21571A000, a2, OS_LOG_TYPE_ERROR, "Failed to initiate App Store reinstall with: %@", &v2, 0xCu);
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_57_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21571A000, a2, OS_LOG_TYPE_ERROR, "Unable to open product page, reason %{public}@", &v2, 0xCu);
}

@end
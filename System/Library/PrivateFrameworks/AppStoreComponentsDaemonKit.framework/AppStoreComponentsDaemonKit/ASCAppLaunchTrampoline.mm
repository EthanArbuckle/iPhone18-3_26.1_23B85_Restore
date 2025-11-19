@interface ASCAppLaunchTrampoline
+ (OS_os_log)log;
- (ASCAppLaunchTrampoline)init;
- (ASCAppLaunchTrampoline)initWithWorkspace:(id)a3;
- (id)handleURL:(id)a3 workspace:(id)a4;
- (id)openApplicationWithBundleIdentifier:(id)a3 payloadURL:(id)a4 workspace:(id)a5;
- (id)productPageURLForAdamId:(id)a3 deeplink:(id)a4 eventId:(id)a5 encodedMetrics:(id)a6 sourceApplication:(id)a7 openInGamesUI:(id)a8;
@end

@implementation ASCAppLaunchTrampoline

+ (OS_os_log)log
{
  if (log_onceToken_1 != -1)
  {
    +[ASCAppLaunchTrampoline log];
  }

  v3 = log_log_1;

  return v3;
}

uint64_t __29__ASCAppLaunchTrampoline_log__block_invoke()
{
  log_log_1 = os_log_create("com.apple.AppStoreComponents", "ASCAppLaunchTrampoline");

  return MEMORY[0x2821F96F8]();
}

- (ASCAppLaunchTrampoline)init
{
  v3 = +[ASCWorkspace sharedWorkspace];
  v4 = [(ASCAppLaunchTrampoline *)self initWithWorkspace:v3];

  return v4;
}

- (ASCAppLaunchTrampoline)initWithWorkspace:(id)a3
{
  v5 = a3;
  +[ASCEligibility assertCurrentProcessEligibility];
  v9.receiver = self;
  v9.super_class = ASCAppLaunchTrampoline;
  v6 = [(ASCAppLaunchTrampoline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workspace, a3);
  }

  return v7;
}

- (id)handleURL:(id)a3 workspace:(id)a4
{
  v104[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v76 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CEE600]);
  v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v6 resolvingAgainstBaseURL:1];
  v75 = v8;
  if (!v8 || (v9 = v8, [v8 queryItems], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
  {
    v56 = MEMORY[0x277CCA9B8];
    v103 = *MEMORY[0x277CCA450];
    v104[0] = @"Failed while parsing input URL, URL components was nil or empty.";
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:&v103 count:1];
    v58 = v56;
    v59 = 0;
LABEL_51:
    v18 = [v58 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:v59 userInfo:v57];

    [v7 finishWithError:v18];
    v61 = v7;
    goto LABEL_52;
  }

  v74 = self;
  v12 = [v6 host];
  v13 = [v12 lowercaseString];
  v14 = [v13 isEqualToString:@"launchapp"];

  if ((v14 & 1) == 0)
  {
    v60 = MEMORY[0x277CCA9B8];
    v101 = *MEMORY[0x277CCA450];
    v102 = @"Received URL unsuitable for app launch trampoline.";
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    v58 = v60;
    v59 = 1;
    goto LABEL_51;
  }

  v73 = v7;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v15 = [v9 queryItems];
  v16 = [v15 countByEnumeratingWithState:&v94 objects:v100 count:16];
  if (!v16)
  {

    v18 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    goto LABEL_57;
  }

  v17 = v16;
  v72 = v6;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v18 = 0;
  v19 = *v95;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v95 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v94 + 1) + 8 * i);
      v22 = [v21 name];
      v23 = [v22 lowercaseString];
      if ([v23 isEqualToString:@"appid"])
      {
        v24 = [v21 value];

        if (v24)
        {
          v25 = v21;

          v18 = v25;
          continue;
        }
      }

      else
      {
      }

      v26 = [v21 name];
      v27 = [v26 lowercaseString];
      if ([v27 isEqualToString:@"bundleid"])
      {
        v28 = [v21 value];

        if (v28)
        {
          v29 = v21;

          v82 = v29;
          continue;
        }
      }

      else
      {
      }

      v30 = [v21 name];
      v31 = [v30 lowercaseString];
      if ([v31 isEqualToString:@"deeplink"])
      {
        v32 = [v21 value];

        if (v32)
        {
          v33 = v21;

          v81 = v33;
          continue;
        }
      }

      else
      {
      }

      v34 = [v21 name];
      v35 = [v34 lowercaseString];
      if ([v35 isEqualToString:@"eventid"])
      {
        v36 = [v21 value];

        if (v36)
        {
          v37 = v21;

          v79 = v37;
          continue;
        }
      }

      else
      {
      }

      v38 = [v21 name];
      v39 = [v38 lowercaseString];
      if ([v39 isEqualToString:@"trampolinemetrics"])
      {
        v40 = [v21 value];

        if (v40)
        {
          v41 = v21;

          v80 = v41;
          continue;
        }
      }

      else
      {
      }

      v42 = [v21 name];
      v43 = [v42 lowercaseString];
      if ([v43 isEqualToString:@"sourceapplication"])
      {
        v44 = [v21 value];

        if (v44)
        {
          v45 = v21;

          v78 = v45;
          continue;
        }
      }

      else
      {
      }

      v46 = [v21 name];
      v47 = [v46 lowercaseString];
      if ([v47 isEqualToString:@"metrics"])
      {
        v48 = [v21 value];

        if (v48 && !v80)
        {
          v80 = v21;
          continue;
        }
      }

      else
      {
      }

      v49 = [v21 name];
      v50 = [v49 lowercaseString];
      if ([v50 isEqualToString:@"openingamesui"])
      {
        v51 = [v21 value];

        if (v51)
        {
          v52 = v21;

          v77 = v52;
        }
      }

      else
      {
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v94 objects:v100 count:16];
  }

  while (v17);

  if (!v18)
  {
    v6 = v72;
    v7 = v73;
    goto LABEL_57;
  }

  v6 = v72;
  v7 = v73;
  if (!v82)
  {
LABEL_57:
    v64 = MEMORY[0x277CCA9B8];
    v98 = *MEMORY[0x277CCA450];
    v99 = @"Missing required parameters for app launch.";
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
    v53 = [v64 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:2 userInfo:v65];

    [v7 finishWithError:v53];
    v66 = v7;
    goto LABEL_61;
  }

  v53 = [v81 value];

  if (v53)
  {
    v54 = [v81 value];
    v55 = [v54 stringByRemovingPercentEncoding];

    if (v55)
    {
      v53 = [MEMORY[0x277CBEBC0] URLWithString:v55];
    }

    else
    {
      v53 = 0;
    }
  }

  v67 = [v82 value];
  v68 = [v76 openApplicationWithBundleIdentifier:v67 payloadURL:v53];

  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke;
  v92[3] = &unk_2784B1878;
  v69 = v73;
  v93 = v69;
  [v68 addSuccessBlock:v92];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_2;
  v83[3] = &unk_2784B18C8;
  v83[4] = v74;
  v18 = v18;
  v84 = v18;
  v81 = v81;
  v85 = v81;
  v79 = v79;
  v86 = v79;
  v80 = v80;
  v87 = v80;
  v78 = v78;
  v88 = v78;
  v77 = v77;
  v89 = v77;
  v70 = v69;
  v90 = v70;
  v91 = v76;
  [v68 addErrorBlock:v83];
  v71 = v70;

LABEL_61:
LABEL_52:

  v62 = *MEMORY[0x277D85DE8];

  return v7;
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [*(a1 + 32) finishWithResult:v2];
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ASCAppLaunchTrampoline log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v3;
    _os_log_impl(&dword_222629000, v4, OS_LOG_TYPE_INFO, "Unable to open application, reason %{public}@. Attempting to open product page URL", buf, 0xCu);
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
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_48;
    v17[3] = &unk_2784B18A0;
    v18 = *(a1 + 88);
    [v13 addFinishBlock:v17];
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"Failed to construct product page URL.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [v14 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:3 userInfo:v15];

    [*(a1 + 88) finishWithError:v13];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_48(uint64_t a1, int a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
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
      __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_48_cold_1(v5, v7);
    }

    v8 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Failed to open product page.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = [v8 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:4 userInfo:v9];

    [*(a1 + 32) finishWithError:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)openApplicationWithBundleIdentifier:(id)a3 payloadURL:(id)a4 workspace:(id)a5
{
  v7 = MEMORY[0x277CEE600];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  v12 = [v8 openApplicationWithBundleIdentifier:v10 payloadURL:v9];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke;
  v20[3] = &unk_2784B1878;
  v13 = v11;
  v21 = v13;
  [v12 addSuccessBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_workspace___block_invoke_2;
  v18[3] = &unk_2784B18F0;
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
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Failed to open app.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:5 userInfo:v3];

  [*(a1 + 32) finishWithError:v4];
  v5 = *MEMORY[0x277D85DE8];
}

void __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [*(a1 + 32) finishWithResult:v2];
}

void __105__ASCAppLaunchTrampoline_openApplicationWithBundleIdentifier_payloadURL_universalLinkRequired_workspace___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA450];
  v7[0] = @"Failed to open app.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:5 userInfo:v3];

  [*(a1 + 32) finishWithError:v4];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)productPageURLForAdamId:(id)a3 deeplink:(id)a4 eventId:(id)a5 encodedMetrics:(id)a6 sourceApplication:(id)a7 openInGamesUI:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a3;
  v19 = [[ASCAdamID alloc] initWithStringValue:v18];

  LODWORD(v18) = [v17 BOOLValue];
  if (v18)
  {
    [ASCLockupProductDetails gamesURLForLockupID:v19 ofKind:@"app" withOfferFlags:0];
  }

  else
  {
    [ASCLockupProductDetails URLForLockupID:v19 ofKind:@"app" withOfferFlags:0];
  }
  v20 = ;
  if (v20 && (v13 || v14 || v15))
  {
    v21 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v20 resolvingAgainstBaseURL:0];
    v22 = [v21 queryItems];
    v23 = [v22 mutableCopy];

    if (!v23)
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    if (v13)
    {
      v24 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"deeplink" value:v13];
      [v23 addObject:v24];
    }

    if (v14)
    {
      v25 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"eventid" value:v14];
      [v23 addObject:v25];
    }

    if (v15)
    {
      v26 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"trampolineMetrics" value:v15];
      [v23 addObject:v26];
    }

    if (v16)
    {
      v27 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"sourceApplication" value:v16];
      [v23 addObject:v27];
    }

    [v21 setQueryItems:v23];
    v28 = [v21 URL];

    v20 = v28;
  }

  return v20;
}

void __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_48_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_222629000, a2, OS_LOG_TYPE_ERROR, "Unable to open product page, reason %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
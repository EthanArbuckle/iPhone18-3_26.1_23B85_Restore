@interface ASCAppLaunchTrampoline
+ (OS_os_log)log;
- (ASCAppLaunchTrampoline)init;
- (ASCAppLaunchTrampoline)initWithWorkspace:(id)a3;
- (id)handleURL:(id)a3 workspace:(id)a4;
- (id)openApplicationWithBundleIdentifier:(id)a3 payloadURL:(id)a4 universalLinkRequired:(BOOL)a5 workspace:(id)a6;
- (id)openApplicationWithBundleIdentifier:(id)a3 payloadURL:(id)a4 workspace:(id)a5;
- (id)productPageURLForAdamId:(id)a3 deeplink:(id)a4 eventId:(id)a5 encodedMetrics:(id)a6 sourceApplication:(id)a7 openInGamesUI:(id)a8;
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
  v115[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v82 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CEE600]);
  v7 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v5 resolvingAgainstBaseURL:1];
  v81 = v7;
  if (_os_feature_enabled_impl())
  {
    v8 = [v5 host];
    v9 = [v8 lowercaseString];
    v10 = [v9 isEqualToString:@"restoreappstore"];

    if (v10)
    {
      v11 = +[ASCAppLaunchTrampoline log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21571A000, v11, OS_LOG_TYPE_INFO, "Received request to install app store", buf, 2u);
      }

      v12 = +[ASCUtilities shared];
      v13 = [v12 restoreAppStore];

      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke;
      v106[3] = &unk_2781CC0E8;
      v14 = v6;
      v107 = v14;
      [v13 addSuccessBlock:v106];
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __46__ASCAppLaunchTrampoline_handleURL_workspace___block_invoke_12;
      v104[3] = &unk_2781CBB80;
      v15 = v14;
      v105 = v15;
      [v13 addErrorBlock:v104];
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
    v13 = [v65 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:v66 userInfo:v64];

    [v6 finishWithError:v13];
    v68 = v6;
    goto LABEL_65;
  }

  v20 = [v5 host];
  v21 = [v20 lowercaseString];
  v22 = [v21 isEqualToString:@"launchapp"];

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
  v23 = [v7 queryItems];
  v24 = [v23 countByEnumeratingWithState:&v100 objects:v111 count:16];
  if (!v24)
  {

    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v13 = 0;
    v6 = v79;
    goto LABEL_59;
  }

  v25 = v24;
  v78 = v5;
  v13 = 0;
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
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v100 + 1) + 8 * i);
      v29 = [v28 name];
      v30 = [v29 lowercaseString];
      if ([v30 isEqualToString:@"appid"])
      {
        v31 = [v28 value];

        if (v31)
        {
          v32 = v28;

          v13 = v32;
          continue;
        }
      }

      else
      {
      }

      v33 = [v28 name];
      v34 = [v33 lowercaseString];
      if ([v34 isEqualToString:@"bundleid"])
      {
        v35 = [v28 value];

        if (v35)
        {
          v36 = v28;

          v88 = v36;
          continue;
        }
      }

      else
      {
      }

      v37 = [v28 name];
      v38 = [v37 lowercaseString];
      if ([v38 isEqualToString:@"deeplink"])
      {
        v39 = [v28 value];

        if (v39)
        {
          v40 = v28;

          v87 = v40;
          continue;
        }
      }

      else
      {
      }

      v41 = [v28 name];
      v42 = [v41 lowercaseString];
      if ([v42 isEqualToString:@"eventid"])
      {
        v43 = [v28 value];

        if (v43)
        {
          v44 = v28;

          v85 = v44;
          continue;
        }
      }

      else
      {
      }

      v45 = [v28 name];
      v46 = [v45 lowercaseString];
      if ([v46 isEqualToString:@"trampolinemetrics"])
      {
        v47 = [v28 value];

        if (v47)
        {
          v48 = v28;

          v86 = v48;
          continue;
        }
      }

      else
      {
      }

      v49 = [v28 name];
      v50 = [v49 lowercaseString];
      if ([v50 isEqualToString:@"sourceapplication"])
      {
        v51 = [v28 value];

        if (v51)
        {
          v52 = v28;

          v84 = v52;
          continue;
        }
      }

      else
      {
      }

      v53 = [v28 name];
      v54 = [v53 lowercaseString];
      if ([v54 isEqualToString:@"metrics"])
      {
        v55 = [v28 value];

        if (v55 && !v86)
        {
          v86 = v28;
          continue;
        }
      }

      else
      {
      }

      v56 = [v28 name];
      v57 = [v56 lowercaseString];
      if ([v57 isEqualToString:@"openingamesui"])
      {
        v58 = [v28 value];

        if (v58)
        {
          v59 = v28;

          v83 = v59;
        }
      }

      else
      {
      }
    }

    v25 = [v23 countByEnumeratingWithState:&v100 objects:v111 count:16];
  }

  while (v25);

  if (!v13)
  {
    v5 = v78;
    v6 = v79;
    goto LABEL_59;
  }

  v5 = v78;
  v6 = v79;
  if (!v88)
  {
LABEL_59:
    v69 = MEMORY[0x277CCA9B8];
    v109 = *MEMORY[0x277CCA450];
    v110 = @"Missing required parameters for app launch.";
    v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    v60 = [v69 errorWithDomain:@"ASCAppLaunchTrampolineErrorDomain" code:2 userInfo:v70];

    [v6 finishWithError:v60];
    v71 = v6;
    goto LABEL_63;
  }

  v60 = [v87 value];

  if (v60)
  {
    v61 = [v87 value];
    v62 = [v61 stringByRemovingPercentEncoding];

    if (v62)
    {
      v60 = [MEMORY[0x277CBEBC0] URLWithString:v62];
    }

    else
    {
      v60 = 0;
    }
  }

  v72 = [v88 value];
  v73 = [v82 openApplicationWithBundleIdentifier:v72 payloadURL:v60];

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
  v13 = v13;
  v90 = v13;
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
  v97 = v82;
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

- (id)openApplicationWithBundleIdentifier:(id)a3 payloadURL:(id)a4 universalLinkRequired:(BOOL)a5 workspace:(id)a6
{
  v6 = a5;
  v9 = MEMORY[0x277CEE600];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v9);
  v14 = [v10 openApplicationWithBundleIdentifier:v12 payloadURL:v11 universalLinkRequired:v6];

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
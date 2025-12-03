@interface AKAutoBugCapture
+ (BOOL)shouldCapturePromptBugForContext:(id)context;
+ (id)userInfoFromAccount:(id)account;
+ (id)userInfoFromContext:(id)context;
+ (void)triggerAutoBugCaptureWithSubType:(id)type andBundleID:(id)d userInfo:(id)info;
@end

@implementation AKAutoBugCapture

+ (void)triggerAutoBugCaptureWithSubType:(id)type andBundleID:(id)d userInfo:(id)info
{
  v23[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v16 = 0;
  objc_storeStrong(&v16, d);
  v15 = 0;
  objc_storeStrong(&v15, info);
  v19 = &triggerAutoBugCaptureWithSubType_andBundleID_userInfo__onceToken;
  v18 = 0;
  objc_storeStrong(&v18, &__block_literal_global_56);
  if (*v19 != -1)
  {
    dispatch_once(v19, v18);
  }

  objc_storeStrong(&v18, 0);
  v14 = [triggerAutoBugCaptureWithSubType_andBundleID_userInfo__diagnosticReporter signatureWithDomain:@"Application" type:@"Functional" subType:location[0] detectedProcess:v16 triggerThresholdValues:0];
  v11 = 0;
  if (v15)
  {
    v22 = @"userInfo";
    v23[0] = v15;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v11 = 1;
    v5 = MEMORY[0x1E69E5928](v12);
  }

  else
  {
    v5 = MEMORY[0x1E69E5928](0);
  }

  v13 = v5;
  if (v11)
  {
    MEMORY[0x1E69E5920](v12);
  }

  if ([triggerAutoBugCaptureWithSubType_andBundleID_userInfo__diagnosticReporter snapshotWithSignature:v14 duration:0 event:v13 payload:&__block_literal_global_26 reply:15.0])
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v20, v14);
      _os_log_impl(&dword_193225000, v8, OS_LOG_TYPE_DEFAULT, "Diagnostic Reporter sent snapshot for signature %@", v20, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v21, v14);
      _os_log_error_impl(&dword_193225000, oslog, type, "Diagnostic Reporter failed to send snapshot for signature %@", v21, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __74__AKAutoBugCapture_triggerAutoBugCaptureWithSubType_andBundleID_userInfo___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4F80]);
  v1 = triggerAutoBugCaptureWithSubType_andBundleID_userInfo__diagnosticReporter;
  triggerAutoBugCaptureWithSubType_andBundleID_userInfo__diagnosticReporter = v0;
  return MEMORY[0x1E69E5920](v1);
}

void __74__AKAutoBugCapture_triggerAutoBugCaptureWithSubType_andBundleID_userInfo___block_invoke_2(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Received response from Diagnostic Reporter - %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldCapturePromptBugForContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v5 = 0;
  v4 = 0;
  if ([location[0] _capabilityForUIDisplay] == 1)
  {
    username = [location[0] username];
    v5 = 1;
    v4 = 0;
    if (username)
    {
      v4 = [location[0] isUsernameEditable] == 0;
    }
  }

  v8 = v4;
  if (v5)
  {
    MEMORY[0x1E69E5920](username);
  }

  objc_storeStrong(location, 0);
  return v8;
}

+ (id)userInfoFromContext:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(location[0], "serviceType")}];
  [v8 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v6);
  _proxiedAppBundleID = [location[0] _proxiedAppBundleID];
  MEMORY[0x1E69E5920](_proxiedAppBundleID);
  if (_proxiedAppBundleID)
  {
    _proxiedAppBundleID2 = [location[0] _proxiedAppBundleID];
    [v8 setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](_proxiedAppBundleID2);
  }

  v4 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)userInfoFromAccount:(id)account
{
  v35[3] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v34[0] = @"altDSID";
  v18 = +[AKAccountManager sharedInstance];
  v19 = [(AKAccountManager *)v18 altDSIDForAccount:location[0]];
  v30 = 0;
  v28 = 0;
  if (v19)
  {
    v31 = +[AKAccountManager sharedInstance];
    v30 = 1;
    v29 = [(AKAccountManager *)v31 altDSIDForAccount:location[0]];
    v28 = 1;
    v3 = [v29 length];
    v4 = @"(empty)";
    if (v3)
    {
      v4 = @"(******)";
    }

    v17 = v4;
  }

  else
  {
    v17 = @"(null)";
  }

  v35[0] = v17;
  v34[1] = @"DSID";
  v15 = +[AKAccountManager sharedInstance];
  v16 = [(AKAccountManager *)v15 altDSIDForAccount:location[0]];
  v26 = 0;
  v24 = 0;
  if (v16)
  {
    v27 = +[AKAccountManager sharedInstance];
    v26 = 1;
    v25 = [(AKAccountManager *)v27 altDSIDForAccount:location[0]];
    v24 = 1;
    v5 = [v25 length];
    v6 = @"(empty)";
    if (v5)
    {
      v6 = @"(******)";
    }

    v14 = v6;
  }

  else
  {
    v14 = @"(null)";
  }

  v35[1] = v14;
  v34[2] = @"username";
  v12 = +[AKAccountManager sharedInstance];
  v13 = [(AKAccountManager *)v12 altDSIDForAccount:location[0]];
  v22 = 0;
  v20 = 0;
  if (v13)
  {
    v23 = +[AKAccountManager sharedInstance];
    v22 = 1;
    v21 = [(AKAccountManager *)v23 altDSIDForAccount:location[0]];
    v20 = 1;
    v7 = [v21 length];
    v8 = @"(empty)";
    if (v7)
    {
      v8 = @"(******)";
    }

    v11 = v8;
  }

  else
  {
    v11 = @"(null)";
  }

  v35[2] = v11;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
  if (v20)
  {
    MEMORY[0x1E69E5920](v21);
  }

  if (v22)
  {
    MEMORY[0x1E69E5920](v23);
  }

  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v12);
  if (v24)
  {
    MEMORY[0x1E69E5920](v25);
  }

  if (v26)
  {
    MEMORY[0x1E69E5920](v27);
  }

  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v15);
  if (v28)
  {
    MEMORY[0x1E69E5920](v29);
  }

  if (v30)
  {
    MEMORY[0x1E69E5920](v31);
  }

  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v18);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v9 = v33;

  return v9;
}

@end
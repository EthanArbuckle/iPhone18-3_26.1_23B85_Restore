@interface SKStoreReviewController
+ (BOOL)_isValidScene:(id)scene;
+ (unint64_t)convertInterfaceOrientation:(int64_t)orientation;
+ (void)requestReview;
+ (void)requestReviewInScene:(UIWindowScene *)windowScene;
+ (void)requestReviewViaDirectInjectionFlowInScene:(id)scene requestToken:(id)token;
@end

@implementation SKStoreReviewController

+ (void)requestReview
{
  if (![SKEntitlementChecker checkForEntitlement:@"com.apple.developer.on-demand-install-capable"])
  {
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    windowScene = [keyWindow windowScene];
    [self requestReviewInScene:windowScene];
  }
}

+ (void)requestReviewInScene:(UIWindowScene *)windowScene
{
  v4 = windowScene;
  v5 = [[SKXPCConnection alloc] initWithServiceName:0x1F29BF4C0];
  v6 = SSXPCCreateMessageDictionary();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SKStoreReviewController_requestReviewInScene___block_invoke;
  v8[3] = &unk_1E7B288C0;
  v9 = v4;
  selfCopy = self;
  v7 = v4;
  [(SKXPCConnection *)v5 sendMessage:v6 withReply:v8];
}

void __48__SKStoreReviewController_requestReviewInScene___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
  if (!v5 && v3 && MEMORY[0x1B274C210](v3) == MEMORY[0x1E69E9E80])
  {
    objc_opt_class();
    v13 = SSXPCDictionaryCopyCFObjectWithClass();
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = xpc_dictionary_get_value(v4, "2");
    v7 = [v14 initWithXPCEncoding:v15];

    if (v13)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__SKStoreReviewController_requestReviewInScene___block_invoke_2;
      block[3] = &unk_1E7B27B80;
      v16 = *(a1 + 32);
      v21 = *(a1 + 40);
      v19 = v16;
      v20 = v13;
      v6 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_19;
    }

    v6 = v7;
    if (!v7)
    {
      goto LABEL_20;
    }

LABEL_10:
    v7 = [MEMORY[0x1E69D4938] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v22 = 138412546;
      v23 = objc_opt_class();
      v24 = 2112;
      v25 = v6;
      v11 = v23;
      LODWORD(v17) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_19:

        goto LABEL_20;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v22, v17}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_19;
  }

  v6 = SSError();
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_20:
}

void __48__SKStoreReviewController_requestReviewInScene___block_invoke_2(id *a1)
{
  v2 = [a1[6] convertInterfaceOrientation:{objc_msgSend(a1[4], "interfaceOrientation")}];
  v3 = +[SKServiceBroker defaultBroker];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__SKStoreReviewController_requestReviewInScene___block_invoke_3;
  v12[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v12[4] = a1[6];
  v4 = [v3 storeKitServiceWithErrorHandler:v12];

  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [a1[4] _sceneIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SKStoreReviewController_requestReviewInScene___block_invoke_23;
  v8[3] = &unk_1E7B28898;
  v11 = a1[6];
  v9 = a1[4];
  v10 = a1[5];
  [v4 requestProductReviewWithInterfaceOrientation:v2 bundleIdentifier:v6 sceneID:v7 replyBlock:v8];
}

void __48__SKStoreReviewController_requestReviewInScene___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E69D4938] sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  *v10 = 138412546;
  *&v10[4] = objc_opt_class();
  *&v10[12] = 2112;
  *&v10[14] = v2;
  v7 = *&v10[4];
  LODWORD(v9) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, v10, v9, *v10, *&v10[16], v11}];
    free(v8);
    SSFileLog();
LABEL_9:
  }
}

uint64_t __48__SKStoreReviewController_requestReviewInScene___block_invoke_23(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 48) requestReviewViaDirectInjectionFlowInScene:*(result + 32) requestToken:*(result + 40)];
  }

  return result;
}

+ (void)requestReviewViaDirectInjectionFlowInScene:(id)scene requestToken:(id)token
{
  v23 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  tokenCopy = token;
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v21 = 138412290;
  v22 = objc_opt_class();
  v12 = v22;
  LODWORD(v16) = 12;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v21, v16}];
    free(v13);
    SSFileLog();
LABEL_9:
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__SKStoreReviewController_requestReviewViaDirectInjectionFlowInScene_requestToken___block_invoke;
  block[3] = &unk_1E7B27B80;
  v19 = tokenCopy;
  selfCopy = self;
  v18 = sceneCopy;
  v14 = tokenCopy;
  v15 = sceneCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__SKStoreReviewController_requestReviewViaDirectInjectionFlowInScene_requestToken___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 48) _isValidScene:*(a1 + 32)] & 1) == 0)
  {
    v4 = [MEMORY[0x1E69D4938] sharedConfig];
    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 2;
    }

    if (v8)
    {
      v9 = *(a1 + 32);
      v13 = 138412290;
      v14 = v9;
      LODWORD(v11) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        return;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v13, v11}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];

  v12 = [[SKStoreReviewViewController alloc] initWithReviewRequestToken:*(a1 + 40) scene:*(a1 + 32)];
  v3 = [(UIApplicationRotationFollowingWindow *)[SKStoreReviewPresentationWindow alloc] initWithWindowScene:*(a1 + 32)];
  [(SKStoreReviewPresentationWindow *)v3 setHidden:0];
  [(SKStoreReviewViewController *)v12 setPresentationWindow:v3];
  [(SKStoreReviewPresentationWindow *)v3 presentViewController:v12 animated:1 completion:0];
}

+ (BOOL)_isValidScene:(id)scene
{
  sceneCopy = scene;
  if ([sceneCopy activationState] != -1 || (objc_msgSend(MEMORY[0x1E69DC668], "sharedApplication"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "connectedScenes"), v5 = objc_claimAutoreleasedReturnValue(), v4, v6 = objc_msgSend(v5, "containsObject:", sceneCopy), v5, v6))
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

+ (unint64_t)convertInterfaceOrientation:(int64_t)orientation
{
  if ((orientation - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return orientation;
  }
}

@end
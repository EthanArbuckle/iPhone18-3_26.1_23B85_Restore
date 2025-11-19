@interface _SFNavigationResult
+ (id)resultOfLoadingRequest:(id)a3 isMainFrame:(BOOL)a4 disallowRedirectToExternalApps:(BOOL)a5 preferredApplicationBundleIdentifier:(id)a6 redirectDecisionHandler:(id)a7;
+ (id)resultOfType:(int64_t)a3 withURL:(id)a4;
+ (id)resultWithAppLink:(id)a3;
+ (id)resultWithRedirectToExternalURL:(id)a3 preferredApplicationBundleIdentifier:(id)a4;
+ (void)determineResultOfLoadingRequest:(id)a3 isMainFrame:(BOOL)a4 disallowRedirectToExternalApps:(BOOL)a5 preferredApplicationBundleIdentifier:(id)a6 redirectDecisionHandler:(id)a7 completionHandler:(id)a8;
- (BOOL)isRedirectToAppleServices;
- (BOOL)shouldPromptWithPolicy:(int64_t)a3 telephonyNavigationPolicy:(id)a4 userAction:(id)a5 inBackgroundOrPrivateBrowsing:(BOOL)a6 inLockdownMode:(BOOL)a7;
- (id)_initWithType:(int64_t)a3 URL:(id)a4 externalApplication:(id)a5 appLink:(id)a6;
@end

@implementation _SFNavigationResult

- (id)_initWithType:(int64_t)a3 URL:(id)a4 externalApplication:(id)a5 appLink:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = _SFNavigationResult;
  v13 = [(_SFNavigationResult *)&v21 init];
  externalApplication = v13->_externalApplication;
  v13->_externalApplication = v11;
  v15 = v11;

  if (a3 == 3)
  {
    v16 = categoryForURL(v10);
  }

  else
  {
    v16 = 0;
  }

  v13->_externalApplicationCategory = v16;
  v13->_type = a3;
  URL = v13->_URL;
  v13->_URL = v10;
  v18 = v10;

  appLink = v13->_appLink;
  v13->_appLink = v12;

  return v13;
}

- (BOOL)isRedirectToAppleServices
{
  v2 = [(LSApplicationProxy *)self->_externalApplication bundleIdentifier];
  if (v2)
  {
    v3 = [&unk_1F5023F50 containsObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldPromptWithPolicy:(int64_t)a3 telephonyNavigationPolicy:(id)a4 userAction:(id)a5 inBackgroundOrPrivateBrowsing:(BOOL)a6 inLockdownMode:(BOOL)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a5;
  v14 = [(LSApplicationProxy *)self->_externalApplication bundleIdentifier];
  v15 = [v14 hasPrefix:@"com.apple."];

  if (v12)
  {
    v16 = [v12 policyAppliesToURL:self->_URL];
  }

  else
  {
    v16 = 0;
  }

  switch(a3)
  {
    case 3:
      v17 = ((self->_externalApplication == 0) | v16) ^ 1;
      if (!((self->_externalApplication == 0) | v16 & 1) && !v8 && !a7)
      {
        if (([(NSURL *)self->_URL safari_hasScheme:@"icloud-sharing"]& 1) != 0 || ([(NSURL *)self->_URL safari_hasScheme:@"com.apple.tv"]& 1) != 0)
        {
          goto LABEL_18;
        }

        if ([(_SFNavigationResult *)self isRedirectToAppleServices])
        {
          v18 = [(NSURL *)self->_URL safari_hasScheme:@"itms-apps"];
          goto LABEL_23;
        }

LABEL_24:
        v17 = 1;
      }

      break;
    case 2:
      v17 = v16 ^ 1;
      if (((v16 | v8) & 1) == 0 && !a7)
      {
        if (![(_SFNavigationResult *)self appliesOneTimeUserInitiatedActionPolicy])
        {
          v17 = v15 ^ 1;
          break;
        }

        if (v13)
        {
          v18 = [v13 isConsumed];
LABEL_23:
          v17 = v18;
          break;
        }

        goto LABEL_24;
      }

      break;
    case 1:
      v17 = (self->_externalApplication != 0) & ~v16 & a7 | v15 ^ 1;
      break;
    default:
LABEL_18:
      v17 = 0;
      break;
  }

  return v17 & 1;
}

+ (id)resultOfType:(int64_t)a3 withURL:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] _initWithType:a3 URL:v6 externalApplication:0 appLink:0];

  return v7;
}

+ (id)resultWithRedirectToExternalURL:(id)a3 preferredApplicationBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6963608] defaultWorkspace];
  v9 = [v8 applicationsAvailableForOpeningURL:v6];

  if ([v9 count])
  {
    if (!v7 || (v13[0] = MEMORY[0x1E69E9820], v13[1] = 3221225472, v13[2] = __92___SFNavigationResult_resultWithRedirectToExternalURL_preferredApplicationBundleIdentifier___block_invoke, v13[3] = &unk_1E8495F78, v14 = v7, [v9 safari_firstObjectPassingTest:v13], v10 = objc_claimAutoreleasedReturnValue(), v14, !v10))
    {
      v10 = [v9 objectAtIndexedSubscript:0];
    }

    v11 = [[a1 alloc] _initWithType:3 URL:v6 externalApplication:v10 appLink:0];
  }

  else
  {
    v11 = [a1 resultOfType:0 withURL:v6];
  }

  return v11;
}

+ (id)resultWithAppLink:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 url];
  v7 = [v4 synchronousTargetApplicationProxy];
  v8 = [v5 _initWithType:3 URL:v6 externalApplication:v7 appLink:v4];

  return v8;
}

+ (id)resultOfLoadingRequest:(id)a3 isMainFrame:(BOOL)a4 disallowRedirectToExternalApps:(BOOL)a5 preferredApplicationBundleIdentifier:(id)a6 redirectDecisionHandler:(id)a7
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [v11 URL];
  v15 = v14;
  if (v10 && !v9)
  {
    if ([v14 safari_hasFeedScheme])
    {
      v16 = [_SFNavigationResult resultWithRedirectToExternalURL:v15 preferredApplicationBundleIdentifier:v12];
      goto LABEL_62;
    }

    if (v15)
    {
      v17 = [MEMORY[0x1E6963608] defaultWorkspace];
      v18 = [v17 URLOverrideForURL:v15];
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [_SFNavigationResult resultOfLoadingRequest:v19 isMainFrame:? disallowRedirectToExternalApps:? preferredApplicationBundleIdentifier:? redirectDecisionHandler:?];
      }

      v18 = 0;
    }

    v20 = [v18 scheme];
    v21 = [v15 scheme];
    if ([v20 caseInsensitiveCompare:v21])
    {
      v22 = [v18 scheme];
      if ([v22 caseInsensitiveCompare:@"fb"])
      {
        IsPad = _SFDeviceIsPad();
        v24 = IsPad;
        if (IsPad && ([v18 scheme], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "safari_isCaseInsensitiveEqualToString:", @"maps")))
        {
          v25 = [v15 host];
          if ([v25 safari_isCaseInsensitiveEqualToString:@"maps.apple.com"])
          {
            v41 = v25;
            v26 = [v15 path];
            if ([v26 safari_hasPrefix:@"/place"])
            {
              v43 = 0;
            }

            else if (v13)
            {
              v43 = v13[2](v13, v18);
            }

            else
            {
              v43 = 1;
            }

            v25 = v41;
          }

          else if (v13)
          {
            v43 = v13[2](v13, v18);
          }

          else
          {
            v43 = 1;
          }

          v27 = v42;
        }

        else
        {
          if (v13)
          {
            v43 = v13[2](v13, v18);
          }

          else
          {
            v43 = 1;
          }

          v27 = v42;
          if ((v24 & 1) == 0)
          {
LABEL_33:

            if (v43)
            {
              v28 = v18;
              v29 = 0;
LABEL_35:
              v30 = [_SFNavigationResult resultWithRedirectToExternalURL:v28 preferredApplicationBundleIdentifier:v29];
LABEL_60:
              v16 = v30;
              goto LABEL_61;
            }

            goto LABEL_36;
          }
        }

        goto LABEL_33;
      }
    }

LABEL_36:
  }

  v18 = [v15 radarWebURL];
  if (!v18)
  {
    if ([MEMORY[0x1E69E2FB8] _canHandleRequest:v11] || (objc_msgSend(v11, "URL"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "safari_isSafariWebExtensionURL"), v33, v34))
    {
LABEL_44:
      v31 = 1;
LABEL_45:
      v32 = v15;
      goto LABEL_59;
    }

    if (![v15 safari_isXWebSearchURL] && !objc_msgSend(v15, "safari_isPasskeyAuthenticationOverHybridTransportURL"))
    {
      if (categoryForURL(v15) == 1)
      {
        v35 = [v15 safari_originalDataAsString];
        v36 = [v35 length];

        if (v36 >= 0x3E9)
        {
          v31 = 0;
          goto LABEL_45;
        }

        if ([v15 isFaceTimeMultiwayURL])
        {
          v37 = [objc_alloc(MEMORY[0x1E69D8C10]) initWithURL:v15];
          v38 = v37;
          if (!v37)
          {
            v16 = [_SFNavigationResult resultOfType:0 withURL:v15];
            goto LABEL_68;
          }

          [v37 setShowUIPrompt:1];
LABEL_55:
          v39 = [v38 URL];
          v16 = [_SFNavigationResult resultWithRedirectToExternalURL:v39 preferredApplicationBundleIdentifier:0];

LABEL_68:
          goto LABEL_61;
        }

        v38 = [objc_alloc(MEMORY[0x1E69D8BD0]) initWithURL:v15];
        [v38 setShowUIPrompt:1];
        if ([v38 isValid])
        {
          goto LABEL_55;
        }
      }

      if (!v9)
      {
        if (![v15 safari_isMarketplaceKitURL])
        {
          v28 = v15;
          v29 = v12;
          goto LABEL_35;
        }

        goto LABEL_44;
      }
    }

    v31 = 0;
    v32 = 0;
    goto LABEL_59;
  }

  if (v9)
  {
LABEL_41:
    v31 = 2;
    v32 = v18;
LABEL_59:
    v30 = [_SFNavigationResult resultOfType:v31 withURL:v32];
    goto LABEL_60;
  }

  v16 = [_SFNavigationResult resultWithRedirectToExternalURL:v15 preferredApplicationBundleIdentifier:0];
  if ([v16 type] != 3)
  {

    goto LABEL_41;
  }

LABEL_61:

LABEL_62:

  return v16;
}

+ (void)determineResultOfLoadingRequest:(id)a3 isMainFrame:(BOOL)a4 disallowRedirectToExternalApps:(BOOL)a5 preferredApplicationBundleIdentifier:(id)a6 redirectDecisionHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__12;
  v29[4] = __Block_byref_object_dispose__12;
  v30 = _Block_copy(a8);
  if (navigationResultQueue_onceToken != -1)
  {
    +[_SFNavigationResult determineResultOfLoadingRequest:isMainFrame:disallowRedirectToExternalApps:preferredApplicationBundleIdentifier:redirectDecisionHandler:completionHandler:];
  }

  v17 = navigationResultQueue_navigationResultQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __177___SFNavigationResult_determineResultOfLoadingRequest_isMainFrame_disallowRedirectToExternalApps_preferredApplicationBundleIdentifier_redirectDecisionHandler_completionHandler___block_invoke;
  v21[3] = &unk_1E8495FA0;
  v27 = a4;
  v28 = a5;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v29;
  v26 = a1;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  dispatch_async(v17, v21);

  _Block_object_dispose(v29, 8);
}

@end
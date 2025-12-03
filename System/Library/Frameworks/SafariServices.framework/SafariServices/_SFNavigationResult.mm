@interface _SFNavigationResult
+ (id)resultOfLoadingRequest:(id)request isMainFrame:(BOOL)frame disallowRedirectToExternalApps:(BOOL)apps preferredApplicationBundleIdentifier:(id)identifier redirectDecisionHandler:(id)handler;
+ (id)resultOfType:(int64_t)type withURL:(id)l;
+ (id)resultWithAppLink:(id)link;
+ (id)resultWithRedirectToExternalURL:(id)l preferredApplicationBundleIdentifier:(id)identifier;
+ (void)determineResultOfLoadingRequest:(id)request isMainFrame:(BOOL)frame disallowRedirectToExternalApps:(BOOL)apps preferredApplicationBundleIdentifier:(id)identifier redirectDecisionHandler:(id)handler completionHandler:(id)completionHandler;
- (BOOL)isRedirectToAppleServices;
- (BOOL)shouldPromptWithPolicy:(int64_t)policy telephonyNavigationPolicy:(id)navigationPolicy userAction:(id)action inBackgroundOrPrivateBrowsing:(BOOL)browsing inLockdownMode:(BOOL)mode;
- (id)_initWithType:(int64_t)type URL:(id)l externalApplication:(id)application appLink:(id)link;
@end

@implementation _SFNavigationResult

- (id)_initWithType:(int64_t)type URL:(id)l externalApplication:(id)application appLink:(id)link
{
  lCopy = l;
  applicationCopy = application;
  linkCopy = link;
  v21.receiver = self;
  v21.super_class = _SFNavigationResult;
  v13 = [(_SFNavigationResult *)&v21 init];
  externalApplication = v13->_externalApplication;
  v13->_externalApplication = applicationCopy;
  v15 = applicationCopy;

  if (type == 3)
  {
    v16 = categoryForURL(lCopy);
  }

  else
  {
    v16 = 0;
  }

  v13->_externalApplicationCategory = v16;
  v13->_type = type;
  URL = v13->_URL;
  v13->_URL = lCopy;
  v18 = lCopy;

  appLink = v13->_appLink;
  v13->_appLink = linkCopy;

  return v13;
}

- (BOOL)isRedirectToAppleServices
{
  bundleIdentifier = [(LSApplicationProxy *)self->_externalApplication bundleIdentifier];
  if (bundleIdentifier)
  {
    v3 = [&unk_1F5023F50 containsObject:bundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldPromptWithPolicy:(int64_t)policy telephonyNavigationPolicy:(id)navigationPolicy userAction:(id)action inBackgroundOrPrivateBrowsing:(BOOL)browsing inLockdownMode:(BOOL)mode
{
  browsingCopy = browsing;
  navigationPolicyCopy = navigationPolicy;
  actionCopy = action;
  bundleIdentifier = [(LSApplicationProxy *)self->_externalApplication bundleIdentifier];
  v15 = [bundleIdentifier hasPrefix:@"com.apple."];

  if (navigationPolicyCopy)
  {
    v16 = [navigationPolicyCopy policyAppliesToURL:self->_URL];
  }

  else
  {
    v16 = 0;
  }

  switch(policy)
  {
    case 3:
      v17 = ((self->_externalApplication == 0) | v16) ^ 1;
      if (!((self->_externalApplication == 0) | v16 & 1) && !browsingCopy && !mode)
      {
        if (([(NSURL *)self->_URL safari_hasScheme:@"icloud-sharing"]& 1) != 0 || ([(NSURL *)self->_URL safari_hasScheme:@"com.apple.tv"]& 1) != 0)
        {
          goto LABEL_18;
        }

        if ([(_SFNavigationResult *)self isRedirectToAppleServices])
        {
          isConsumed = [(NSURL *)self->_URL safari_hasScheme:@"itms-apps"];
          goto LABEL_23;
        }

LABEL_24:
        v17 = 1;
      }

      break;
    case 2:
      v17 = v16 ^ 1;
      if (((v16 | browsingCopy) & 1) == 0 && !mode)
      {
        if (![(_SFNavigationResult *)self appliesOneTimeUserInitiatedActionPolicy])
        {
          v17 = v15 ^ 1;
          break;
        }

        if (actionCopy)
        {
          isConsumed = [actionCopy isConsumed];
LABEL_23:
          v17 = isConsumed;
          break;
        }

        goto LABEL_24;
      }

      break;
    case 1:
      v17 = (self->_externalApplication != 0) & ~v16 & mode | v15 ^ 1;
      break;
    default:
LABEL_18:
      v17 = 0;
      break;
  }

  return v17 & 1;
}

+ (id)resultOfType:(int64_t)type withURL:(id)l
{
  lCopy = l;
  v7 = [[self alloc] _initWithType:type URL:lCopy externalApplication:0 appLink:0];

  return v7;
}

+ (id)resultWithRedirectToExternalURL:(id)l preferredApplicationBundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v9 = [defaultWorkspace applicationsAvailableForOpeningURL:lCopy];

  if ([v9 count])
  {
    if (!identifierCopy || (v13[0] = MEMORY[0x1E69E9820], v13[1] = 3221225472, v13[2] = __92___SFNavigationResult_resultWithRedirectToExternalURL_preferredApplicationBundleIdentifier___block_invoke, v13[3] = &unk_1E8495F78, v14 = identifierCopy, [v9 safari_firstObjectPassingTest:v13], v10 = objc_claimAutoreleasedReturnValue(), v14, !v10))
    {
      v10 = [v9 objectAtIndexedSubscript:0];
    }

    v11 = [[self alloc] _initWithType:3 URL:lCopy externalApplication:v10 appLink:0];
  }

  else
  {
    v11 = [self resultOfType:0 withURL:lCopy];
  }

  return v11;
}

+ (id)resultWithAppLink:(id)link
{
  linkCopy = link;
  v5 = [self alloc];
  v6 = [linkCopy url];
  synchronousTargetApplicationProxy = [linkCopy synchronousTargetApplicationProxy];
  v8 = [v5 _initWithType:3 URL:v6 externalApplication:synchronousTargetApplicationProxy appLink:linkCopy];

  return v8;
}

+ (id)resultOfLoadingRequest:(id)request isMainFrame:(BOOL)frame disallowRedirectToExternalApps:(BOOL)apps preferredApplicationBundleIdentifier:(id)identifier redirectDecisionHandler:(id)handler
{
  appsCopy = apps;
  frameCopy = frame;
  requestCopy = request;
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = [requestCopy URL];
  v15 = v14;
  if (frameCopy && !appsCopy)
  {
    if ([v14 safari_hasFeedScheme])
    {
      v16 = [_SFNavigationResult resultWithRedirectToExternalURL:v15 preferredApplicationBundleIdentifier:identifierCopy];
      goto LABEL_62;
    }

    if (v15)
    {
      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      radarWebURL = [defaultWorkspace URLOverrideForURL:v15];
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [_SFNavigationResult resultOfLoadingRequest:v19 isMainFrame:? disallowRedirectToExternalApps:? preferredApplicationBundleIdentifier:? redirectDecisionHandler:?];
      }

      radarWebURL = 0;
    }

    scheme = [radarWebURL scheme];
    scheme2 = [v15 scheme];
    if ([scheme caseInsensitiveCompare:scheme2])
    {
      scheme3 = [radarWebURL scheme];
      if ([scheme3 caseInsensitiveCompare:@"fb"])
      {
        IsPad = _SFDeviceIsPad();
        v24 = IsPad;
        if (IsPad && ([radarWebURL scheme], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "safari_isCaseInsensitiveEqualToString:", @"maps")))
        {
          host = [v15 host];
          if ([host safari_isCaseInsensitiveEqualToString:@"maps.apple.com"])
          {
            v41 = host;
            path = [v15 path];
            if ([path safari_hasPrefix:@"/place"])
            {
              v43 = 0;
            }

            else if (handlerCopy)
            {
              v43 = handlerCopy[2](handlerCopy, radarWebURL);
            }

            else
            {
              v43 = 1;
            }

            host = v41;
          }

          else if (handlerCopy)
          {
            v43 = handlerCopy[2](handlerCopy, radarWebURL);
          }

          else
          {
            v43 = 1;
          }

          v27 = v42;
        }

        else
        {
          if (handlerCopy)
          {
            v43 = handlerCopy[2](handlerCopy, radarWebURL);
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
              v28 = radarWebURL;
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

  radarWebURL = [v15 radarWebURL];
  if (!radarWebURL)
  {
    if ([MEMORY[0x1E69E2FB8] _canHandleRequest:requestCopy] || (objc_msgSend(requestCopy, "URL"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "safari_isSafariWebExtensionURL"), v33, v34))
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
        safari_originalDataAsString = [v15 safari_originalDataAsString];
        v36 = [safari_originalDataAsString length];

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

      if (!appsCopy)
      {
        if (![v15 safari_isMarketplaceKitURL])
        {
          v28 = v15;
          v29 = identifierCopy;
          goto LABEL_35;
        }

        goto LABEL_44;
      }
    }

    v31 = 0;
    v32 = 0;
    goto LABEL_59;
  }

  if (appsCopy)
  {
LABEL_41:
    v31 = 2;
    v32 = radarWebURL;
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

+ (void)determineResultOfLoadingRequest:(id)request isMainFrame:(BOOL)frame disallowRedirectToExternalApps:(BOOL)apps preferredApplicationBundleIdentifier:(id)identifier redirectDecisionHandler:(id)handler completionHandler:(id)completionHandler
{
  requestCopy = request;
  identifierCopy = identifier;
  handlerCopy = handler;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__12;
  v29[4] = __Block_byref_object_dispose__12;
  v30 = _Block_copy(completionHandler);
  if (navigationResultQueue_onceToken != -1)
  {
    +[_SFNavigationResult determineResultOfLoadingRequest:isMainFrame:disallowRedirectToExternalApps:preferredApplicationBundleIdentifier:redirectDecisionHandler:completionHandler:];
  }

  v17 = navigationResultQueue_navigationResultQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __177___SFNavigationResult_determineResultOfLoadingRequest_isMainFrame_disallowRedirectToExternalApps_preferredApplicationBundleIdentifier_redirectDecisionHandler_completionHandler___block_invoke;
  v21[3] = &unk_1E8495FA0;
  frameCopy = frame;
  appsCopy = apps;
  v22 = requestCopy;
  v23 = identifierCopy;
  v24 = handlerCopy;
  v25 = v29;
  selfCopy = self;
  v18 = handlerCopy;
  v19 = identifierCopy;
  v20 = requestCopy;
  dispatch_async(v17, v21);

  _Block_object_dispose(v29, 8);
}

@end
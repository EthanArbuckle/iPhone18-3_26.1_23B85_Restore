@interface _SFReloadOptionsController
- (BOOL)_updateSettingSource:(unint64_t)source domain:(id)domain;
- (BOOL)loadedUsingDesktopUserAgent;
- (_SFReloadOptionsController)initWithWebView:(id)view activityJSController:(id)controller perSitePreferenceManager:(id)manager;
- (id)customNavigatorPlatformForSetting:(int64_t)setting;
- (id)customUserAgentForSetting:(int64_t)setting;
- (void)_loadPerSitePreferences;
- (void)_overrideSettingIfNeeded:(int64_t)needed source:(unint64_t)source domain:(id)domain completion:(id)completion;
- (void)_requestDesktopSiteWithFallbackURL:(id)l;
- (void)_requestStandardSiteWithURL:(id)l;
- (void)customUserAgentSettingForMainFrameURL:(id)l withTimeout:(double)timeout completionHandler:(id)handler;
- (void)didMarkURLAsNeedingDesktopUserAgent:(id)agent;
- (void)didMarkURLAsNeedingStandardUserAgent:(id)agent;
- (void)didSetRequestDesktopSiteDefaultValue:(int64_t)value;
- (void)didSetRequestDesktopSitePerSitePreferencesValues:(id)values;
- (void)didUpdateRequestDesktopSiteDefaultValue:(int64_t)value;
- (void)didUpdateRequestDesktopSitePerSitePreference:(id)preference;
- (void)logCompletedPageloadToDifferentialPrivacy:(id)privacy;
- (void)requestDesktopSiteWithURL:(id)l;
@end

@implementation _SFReloadOptionsController

- (void)_loadPerSitePreferences
{
  objc_initWeak(&location, self);
  perSitePreferenceManager = self->_perSitePreferenceManager;
  requestDesktopSitePreference = [(_SFRequestDesktopSitePreferenceManager *)perSitePreferenceManager requestDesktopSitePreference];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53___SFReloadOptionsController__loadPerSitePreferences__block_invoke;
  v8[3] = &unk_1E8493810;
  objc_copyWeak(&v9, &location);
  [(_SFRequestDesktopSitePreferenceManager *)perSitePreferenceManager getDefaultPreferenceValueForPreference:requestDesktopSitePreference completionHandler:v8];

  v5 = self->_perSitePreferenceManager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___SFReloadOptionsController__loadPerSitePreferences__block_invoke_3;
  v6[3] = &unk_1E8490FC8;
  objc_copyWeak(&v7, &location);
  [(_SFRequestDesktopSitePreferenceManager *)v5 getAllRequestDesktopSitePerSitePreferenceValues:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)loadedUsingDesktopUserAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v4 = [WeakRetained URL];

  domainToUserAgentPolicyMap = self->_domainToUserAgentPolicyMap;
  safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString = [v4 safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
  v7 = [(NSMutableDictionary *)domainToUserAgentPolicyMap objectForKeyedSubscript:safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
  integerValue = [v7 integerValue];

  if (integerValue)
  {
    v9 = integerValue == 1;
  }

  else
  {
    safari_userVisibleHostWithoutWWWSubdomain = [v4 safari_userVisibleHostWithoutWWWSubdomain];
    if (([(NSMutableSet *)self->_domainsOverridenAsMobile containsObject:safari_userVisibleHostWithoutWWWSubdomain]& 1) != 0)
    {
      v9 = 0;
    }

    else
    {
      v11 = [(NSDictionary *)self->_perSitePreferenceValues objectForKeyedSubscript:safari_userVisibleHostWithoutWWWSubdomain];
      v12 = v11;
      if (v11)
      {
        v9 = [v11 integerValue] == 1;
      }

      else
      {
        effectiveContentMode = self->_effectiveContentMode;
        v9 = [(NSNumber *)self->_requestDesktopSiteDefaultValue integerValue]== 1 && effectiveContentMode != 1;
      }
    }
  }

  return v9;
}

- (_SFReloadOptionsController)initWithWebView:(id)view activityJSController:(id)controller perSitePreferenceManager:(id)manager
{
  viewCopy = view;
  controllerCopy = controller;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = _SFReloadOptionsController;
  v11 = [(_SFReloadOptionsController *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_webView, viewCopy);
    objc_storeStrong(&v12->_activityJSController, controller);
    objc_storeStrong(&v12->_perSitePreferenceManager, manager);
    [(_SFRequestDesktopSitePreferenceManager *)v12->_perSitePreferenceManager addRequestDesktopSitePerSitePreferenceObserver:v12];
    [(_SFReloadOptionsController *)v12 _loadPerSitePreferences];
    v13 = v12;
  }

  return v12;
}

- (void)didUpdateRequestDesktopSiteDefaultValue:(int64_t)value
{
  v5 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_SFReloadOptionsController *)v5 didUpdateRequestDesktopSiteDefaultValue:value];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  requestDesktopSiteDefaultValue = self->_requestDesktopSiteDefaultValue;
  self->_requestDesktopSiteDefaultValue = v6;
}

- (void)didUpdateRequestDesktopSitePerSitePreference:(id)preference
{
  v22 = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  v5 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFReloadOptionsController didUpdateRequestDesktopSitePerSitePreference:v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v7 = [WeakRetained URL];
  safari_userVisibleHostWithoutWWWSubdomain = [v7 safari_userVisibleHostWithoutWWWSubdomain];
  v9 = [(NSDictionary *)self->_perSitePreferenceValues objectForKeyedSubscript:safari_userVisibleHostWithoutWWWSubdomain];
  v10 = [(NSDictionary *)preferenceCopy objectForKeyedSubscript:safari_userVisibleHostWithoutWWWSubdomain];
  if ((WBSIsEqual() & 1) == 0)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = v11;
      v14 = _SFStringFromRequestDesktopSiteSetting(v9);
      v15 = _SFStringFromRequestDesktopSiteSetting(v10);
      v16 = 138478339;
      v17 = safari_userVisibleHostWithoutWWWSubdomain;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_debug_impl(&dword_1D4644000, v13, OS_LOG_TYPE_DEBUG, "Request Desktop Website setting for domain '%{private}@' changed from %{public}@ to %{public}@; reloading web view", &v16, 0x20u);
    }

    if ([v10 BOOLValue])
    {
      [(_SFReloadOptionsController *)self _requestDesktopSiteWithFallbackURL:v7];
    }

    else
    {
      [(_SFReloadOptionsController *)self _requestStandardSiteWithURL:v7];
    }
  }

  perSitePreferenceValues = self->_perSitePreferenceValues;
  self->_perSitePreferenceValues = preferenceCopy;
}

- (BOOL)_updateSettingSource:(unint64_t)source domain:(id)domain
{
  domainCopy = domain;
  if (!self->_tryUsingMobileIfPossible)
  {
    [(NSMutableSet *)self->_domainsOverridenAsMobile removeObject:domainCopy];
    goto LABEL_7;
  }

  if (source)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  domainsOverridenAsMobile = self->_domainsOverridenAsMobile;
  if (!domainsOverridenAsMobile)
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    v9 = self->_domainsOverridenAsMobile;
    self->_domainsOverridenAsMobile = v8;

    domainsOverridenAsMobile = self->_domainsOverridenAsMobile;
  }

  [(NSMutableSet *)domainsOverridenAsMobile addObject:domainCopy];
  v10 = 1;
LABEL_8:

  return v10;
}

- (void)_overrideSettingIfNeeded:(int64_t)needed source:(unint64_t)source domain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v11 = completionCopy;
  if (needed)
  {
    v12 = [(_SFReloadOptionsController *)self _updateSettingSource:source domain:domainCopy];
    v13 = v11[2];
    if (v12)
    {
      completionCopy = v11;
      neededCopy = 0;
      sourceCopy = 3;
      goto LABEL_7;
    }

    completionCopy = v11;
    neededCopy = needed;
  }

  else
  {
    v13 = completionCopy[2];
    neededCopy = 0;
  }

  sourceCopy = source;
LABEL_7:
  v13(completionCopy, neededCopy, sourceCopy);
}

- (void)customUserAgentSettingForMainFrameURL:(id)l withTimeout:(double)timeout completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([(NSMutableDictionary *)self->_domainToUserAgentPolicyMap count])
  {
    safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString = [lCopy safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
    v11 = [(NSMutableDictionary *)self->_domainToUserAgentPolicyMap objectForKeyedSubscript:safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
    integerValue = [v11 integerValue];

    v13 = WBS_LOG_CHANNEL_PREFIXRequestDesktopSite();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_SFReloadOptionsController customUserAgentSettingForMainFrameURL:withTimeout:completionHandler:];
      if (integerValue)
      {
        goto LABEL_4;
      }
    }

    else if (integerValue)
    {
LABEL_4:
      [(_SFReloadOptionsController *)self _overrideSettingIfNeeded:integerValue == 1 source:1 domain:safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString completion:handlerCopy];
      goto LABEL_26;
    }
  }

  safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString = [lCopy safari_userVisibleHostWithoutWWWSubdomain];
  if (self->_perSitePreferenceValues)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [_SFReloadOptionsController customUserAgentSettingForMainFrameURL:v14 withTimeout:? completionHandler:?];
    }

    v15 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [_SFReloadOptionsController customUserAgentSettingForMainFrameURL:withTimeout:completionHandler:];
    }

    v16 = [(NSDictionary *)self->_perSitePreferenceValues objectForKeyedSubscript:safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
    if (v16)
    {
      v17 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [_SFReloadOptionsController customUserAgentSettingForMainFrameURL:v17 withTimeout:? completionHandler:?];
      }

      integerValue2 = [v16 integerValue];
      selfCopy2 = self;
      v20 = 2;
LABEL_20:
      [(_SFReloadOptionsController *)selfCopy2 _overrideSettingIfNeeded:integerValue2 source:v20 domain:safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString completion:handlerCopy];

      goto LABEL_26;
    }

    if (self->_requestDesktopSiteDefaultValue)
    {
      v21 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [_SFReloadOptionsController customUserAgentSettingForMainFrameURL:v21 withTimeout:? completionHandler:?];
      }

      integerValue2 = [(NSNumber *)self->_requestDesktopSiteDefaultValue integerValue];
      selfCopy2 = self;
      v20 = 0;
      goto LABEL_20;
    }
  }

  v22 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D4644000, v22, OS_LOG_TYPE_INFO, "Request Desktop Website per site preferences haven't been cached yet, falling back to fetching the preference directly", buf, 2u);
  }

  v23 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [_SFReloadOptionsController customUserAgentSettingForMainFrameURL:withTimeout:completionHandler:];
  }

  perSitePreferenceManager = self->_perSitePreferenceManager;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __98___SFReloadOptionsController_customUserAgentSettingForMainFrameURL_withTimeout_completionHandler___block_invoke;
  v25[3] = &unk_1E8495398;
  v25[4] = self;
  safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString = safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString;
  v26 = safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString;
  v27 = handlerCopy;
  [(_SFRequestDesktopSitePreferenceManager *)perSitePreferenceManager getRequestDesktopSitePreferenceForDomain:safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString withTimeout:v25 completionHandler:timeout];

LABEL_26:
}

- (id)customUserAgentForSetting:(int64_t)setting
{
  v5 = _SFCustomUserAgentStringIfNeeded();
  v6 = WBS_LOG_CHANNEL_PREFIXRequestDesktopSite();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [_SFReloadOptionsController customUserAgentForSetting:v6];
    }

    v8 = v5;
    goto LABEL_11;
  }

  if (v7)
  {
    [(_SFReloadOptionsController *)v6 customUserAgentForSetting:setting];
  }

  if (setting == 1)
  {
    v8 = _SFMacSafariUserAgentString();
LABEL_11:
    v9 = v8;
    goto LABEL_12;
  }

  if (self->_tryUsingMobileIfPossible)
  {
    v8 = _SFIPhoneSafariUserAgentString();
    goto LABEL_11;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)customNavigatorPlatformForSetting:(int64_t)setting
{
  if (setting == 1)
  {
    return @"MacIntel";
  }

  else
  {
    return 0;
  }
}

- (void)_requestDesktopSiteWithFallbackURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [v5 initWithBytesNoCopy:requestDesktopSiteUIActivitySource length:4112 encoding:4 freeWhenDone:0];
  activityJSController = self->_activityJSController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___SFReloadOptionsController__requestDesktopSiteWithFallbackURL___block_invoke;
  v9[3] = &unk_1E84953C0;
  v9[4] = self;
  v10 = lCopy;
  v8 = lCopy;
  [(_SFInjectedJavaScriptController *)activityJSController runJavaScriptForActivity:0 withScript:v6 object:@"DesktopSiteDataFinderJS" invokeMethod:@"desktopSiteData" completionHandler:v9];
}

- (void)requestDesktopSiteWithURL:(id)l
{
  lCopy = l;
  v12 = lCopy;
  if (lCopy)
  {
    initialURL = lCopy;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    backForwardList = [WeakRetained backForwardList];
    currentItem = [backForwardList currentItem];
    initialURL = [currentItem initialURL];

    if (!initialURL)
    {
      goto LABEL_9;
    }
  }

  if (!self->_domainToUserAgentPolicyMap)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    domainToUserAgentPolicyMap = self->_domainToUserAgentPolicyMap;
    self->_domainToUserAgentPolicyMap = dictionary;
  }

  safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString = [initialURL safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
  if (safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString)
  {
    [(NSMutableDictionary *)self->_domainToUserAgentPolicyMap setObject:&unk_1F50234E8 forKeyedSubscript:safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
    [(_SFReloadOptionsController *)self didMarkURLAsNeedingDesktopUserAgent:initialURL];
  }

LABEL_9:
}

- (void)_requestStandardSiteWithURL:(id)l
{
  lCopy = l;
  v12 = lCopy;
  if (lCopy || (WeakRetained = objc_loadWeakRetained(&self->_webView), [WeakRetained backForwardList], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "currentItem"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "initialURL"), lCopy = objc_claimAutoreleasedReturnValue(), v7, v6, WeakRetained, lCopy))
  {
    if (!self->_domainToUserAgentPolicyMap)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      domainToUserAgentPolicyMap = self->_domainToUserAgentPolicyMap;
      self->_domainToUserAgentPolicyMap = dictionary;
    }

    safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString = [lCopy safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
    safari_userVisibleHostWithoutWWWSubdomain = [lCopy safari_userVisibleHostWithoutWWWSubdomain];
    if (safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString)
    {
      [(NSMutableDictionary *)self->_domainToUserAgentPolicyMap setObject:&unk_1F5023500 forKeyedSubscript:safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
      [(_SFReloadOptionsController *)self didMarkURLAsNeedingStandardUserAgent:lCopy];
    }
  }
}

- (void)didMarkURLAsNeedingDesktopUserAgent:(id)agent
{
  v4 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:agent];
  v7 = [v4 safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:self->_supportsAdvancedPrivacyProtections];

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v6 = [WeakRetained loadRequest:v7];
}

- (void)didMarkURLAsNeedingStandardUserAgent:(id)agent
{
  v4 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:agent];
  v7 = [v4 safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:self->_supportsAdvancedPrivacyProtections];

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v6 = [WeakRetained loadRequest:v7];
}

- (void)didSetRequestDesktopSiteDefaultValue:(int64_t)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  requestDesktopSiteDefaultValue = self->_requestDesktopSiteDefaultValue;
  self->_requestDesktopSiteDefaultValue = v4;
}

- (void)didSetRequestDesktopSitePerSitePreferencesValues:(id)values
{
  valuesCopy = values;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v5 = [WeakRetained URL];
  safari_userVisibleHostWithoutWWWSubdomain = [v5 safari_userVisibleHostWithoutWWWSubdomain];
  v7 = [(NSDictionary *)self->_perSitePreferenceValues objectForKeyedSubscript:safari_userVisibleHostWithoutWWWSubdomain];
  v8 = [(NSDictionary *)valuesCopy objectForKeyedSubscript:safari_userVisibleHostWithoutWWWSubdomain];
  if ((WBSIsEqual() & 1) == 0)
  {
    v9 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v5];
    v10 = [WeakRetained loadRequest:v9];
  }

  perSitePreferenceValues = self->_perSitePreferenceValues;
  self->_perSitePreferenceValues = valuesCopy;
}

- (void)logCompletedPageloadToDifferentialPrivacy:(id)privacy
{
  privacyCopy = privacy;
  v4 = _SFDeviceSupportsDesktopSitesByDefault();
  v5 = privacyCopy;
  if (v4)
  {
    safari_userVisibleHostWithoutWWWSubdomain = [privacyCopy safari_userVisibleHostWithoutWWWSubdomain];
    if ([safari_userVisibleHostWithoutWWWSubdomain length])
    {
      [(_SFReloadOptionsController *)self loadedUsingDesktopUserAgent];
      WBSLogWithDifferentialPrivacy();
    }

    v5 = privacyCopy;
  }
}

- (void)didUpdateRequestDesktopSiteDefaultValue:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  v6 = _SFStringFromRequestDesktopSiteSetting(v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_5(&dword_1D4644000, v4, v7, "Updating Request Desktop Website cached default value to %{public}@", v8);
}

- (void)didUpdateRequestDesktopSitePerSitePreference:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_2() count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_7(&dword_1D4644000, v3, v4, "Updating Request Desktop Website cached mappings with %lu values", v5, v6, v7, v8, v9);
}

- (void)customUserAgentSettingForMainFrameURL:withTimeout:completionHandler:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_1D4644000, v1, OS_LOG_TYPE_DEBUG, "Manual Request Desktop Website mapping for domain '%{private}@' gave value '%ld'", v2, 0x16u);
}

- (void)customUserAgentSettingForMainFrameURL:withTimeout:completionHandler:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_5(&dword_1D4644000, v0, v1, "Checking in-memory cache of Request Desktop Website per site preferences for domain '%{private}@'", v2);
}

- (void)customUserAgentSettingForMainFrameURL:(void *)a1 withTimeout:completionHandler:.cold.4(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2();
  v4 = _SFStringFromRequestDesktopSiteSetting(v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_7(&dword_1D4644000, v5, v6, "Found Request Desktop Website in-memory cache value of %{public}@", v7, v8, v9, v10, v11);
}

- (void)customUserAgentSettingForMainFrameURL:(uint64_t)a1 withTimeout:(void *)a2 completionHandler:.cold.5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = OUTLINED_FUNCTION_2();
  v5 = _SFStringFromRequestDesktopSiteSetting(v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_7(&dword_1D4644000, v6, v7, "In-memory cache didn't have value for domain, using cached default value: %{public}@", v8, v9, v10, v11, v12);
}

- (void)customUserAgentSettingForMainFrameURL:withTimeout:completionHandler:.cold.6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_5(&dword_1D4644000, v0, v1, "Fetching stored preference for domain '%{private}@'", v2);
}

- (void)customUserAgentForSetting:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  v6 = _SFStringFromRequestDesktopSiteSetting(v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_5(&dword_1D4644000, v4, v7, "Using Request Desktop Website setting %{public}@", v8);
}

@end
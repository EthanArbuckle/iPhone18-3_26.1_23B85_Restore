@interface _SFReloadOptionsController
- (BOOL)_updateSettingSource:(unint64_t)a3 domain:(id)a4;
- (BOOL)loadedUsingDesktopUserAgent;
- (_SFReloadOptionsController)initWithWebView:(id)a3 activityJSController:(id)a4 perSitePreferenceManager:(id)a5;
- (id)customNavigatorPlatformForSetting:(int64_t)a3;
- (id)customUserAgentForSetting:(int64_t)a3;
- (void)_loadPerSitePreferences;
- (void)_overrideSettingIfNeeded:(int64_t)a3 source:(unint64_t)a4 domain:(id)a5 completion:(id)a6;
- (void)_requestDesktopSiteWithFallbackURL:(id)a3;
- (void)_requestStandardSiteWithURL:(id)a3;
- (void)customUserAgentSettingForMainFrameURL:(id)a3 withTimeout:(double)a4 completionHandler:(id)a5;
- (void)didMarkURLAsNeedingDesktopUserAgent:(id)a3;
- (void)didMarkURLAsNeedingStandardUserAgent:(id)a3;
- (void)didSetRequestDesktopSiteDefaultValue:(int64_t)a3;
- (void)didSetRequestDesktopSitePerSitePreferencesValues:(id)a3;
- (void)didUpdateRequestDesktopSiteDefaultValue:(int64_t)a3;
- (void)didUpdateRequestDesktopSitePerSitePreference:(id)a3;
- (void)logCompletedPageloadToDifferentialPrivacy:(id)a3;
- (void)requestDesktopSiteWithURL:(id)a3;
@end

@implementation _SFReloadOptionsController

- (void)_loadPerSitePreferences
{
  objc_initWeak(&location, self);
  perSitePreferenceManager = self->_perSitePreferenceManager;
  v4 = [(_SFRequestDesktopSitePreferenceManager *)perSitePreferenceManager requestDesktopSitePreference];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53___SFReloadOptionsController__loadPerSitePreferences__block_invoke;
  v8[3] = &unk_1E8493810;
  objc_copyWeak(&v9, &location);
  [(_SFRequestDesktopSitePreferenceManager *)perSitePreferenceManager getDefaultPreferenceValueForPreference:v4 completionHandler:v8];

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
  v6 = [v4 safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
  v7 = [(NSMutableDictionary *)domainToUserAgentPolicyMap objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  if (v8)
  {
    v9 = v8 == 1;
  }

  else
  {
    v10 = [v4 safari_userVisibleHostWithoutWWWSubdomain];
    if (([(NSMutableSet *)self->_domainsOverridenAsMobile containsObject:v10]& 1) != 0)
    {
      v9 = 0;
    }

    else
    {
      v11 = [(NSDictionary *)self->_perSitePreferenceValues objectForKeyedSubscript:v10];
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

- (_SFReloadOptionsController)initWithWebView:(id)a3 activityJSController:(id)a4 perSitePreferenceManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = _SFReloadOptionsController;
  v11 = [(_SFReloadOptionsController *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_webView, v8);
    objc_storeStrong(&v12->_activityJSController, a4);
    objc_storeStrong(&v12->_perSitePreferenceManager, a5);
    [(_SFRequestDesktopSitePreferenceManager *)v12->_perSitePreferenceManager addRequestDesktopSitePerSitePreferenceObserver:v12];
    [(_SFReloadOptionsController *)v12 _loadPerSitePreferences];
    v13 = v12;
  }

  return v12;
}

- (void)didUpdateRequestDesktopSiteDefaultValue:(int64_t)a3
{
  v5 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_SFReloadOptionsController *)v5 didUpdateRequestDesktopSiteDefaultValue:a3];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  requestDesktopSiteDefaultValue = self->_requestDesktopSiteDefaultValue;
  self->_requestDesktopSiteDefaultValue = v6;
}

- (void)didUpdateRequestDesktopSitePerSitePreference:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFReloadOptionsController didUpdateRequestDesktopSitePerSitePreference:v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v7 = [WeakRetained URL];
  v8 = [v7 safari_userVisibleHostWithoutWWWSubdomain];
  v9 = [(NSDictionary *)self->_perSitePreferenceValues objectForKeyedSubscript:v8];
  v10 = [(NSDictionary *)v4 objectForKeyedSubscript:v8];
  if ((WBSIsEqual() & 1) == 0)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = v11;
      v14 = _SFStringFromRequestDesktopSiteSetting(v9);
      v15 = _SFStringFromRequestDesktopSiteSetting(v10);
      v16 = 138478339;
      v17 = v8;
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
  self->_perSitePreferenceValues = v4;
}

- (BOOL)_updateSettingSource:(unint64_t)a3 domain:(id)a4
{
  v6 = a4;
  if (!self->_tryUsingMobileIfPossible)
  {
    [(NSMutableSet *)self->_domainsOverridenAsMobile removeObject:v6];
    goto LABEL_7;
  }

  if (a3)
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

  [(NSMutableSet *)domainsOverridenAsMobile addObject:v6];
  v10 = 1;
LABEL_8:

  return v10;
}

- (void)_overrideSettingIfNeeded:(int64_t)a3 source:(unint64_t)a4 domain:(id)a5 completion:(id)a6
{
  v16 = a5;
  v10 = a6;
  v11 = v10;
  if (a3)
  {
    v12 = [(_SFReloadOptionsController *)self _updateSettingSource:a4 domain:v16];
    v13 = v11[2];
    if (v12)
    {
      v10 = v11;
      v14 = 0;
      v15 = 3;
      goto LABEL_7;
    }

    v10 = v11;
    v14 = a3;
  }

  else
  {
    v13 = v10[2];
    v14 = 0;
  }

  v15 = a4;
LABEL_7:
  v13(v10, v14, v15);
}

- (void)customUserAgentSettingForMainFrameURL:(id)a3 withTimeout:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(NSMutableDictionary *)self->_domainToUserAgentPolicyMap count])
  {
    v10 = [v8 safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
    v11 = [(NSMutableDictionary *)self->_domainToUserAgentPolicyMap objectForKeyedSubscript:v10];
    v12 = [v11 integerValue];

    v13 = WBS_LOG_CHANNEL_PREFIXRequestDesktopSite();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_SFReloadOptionsController customUserAgentSettingForMainFrameURL:withTimeout:completionHandler:];
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else if (v12)
    {
LABEL_4:
      [(_SFReloadOptionsController *)self _overrideSettingIfNeeded:v12 == 1 source:1 domain:v10 completion:v9];
      goto LABEL_26;
    }
  }

  v10 = [v8 safari_userVisibleHostWithoutWWWSubdomain];
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

    v16 = [(NSDictionary *)self->_perSitePreferenceValues objectForKeyedSubscript:v10];
    if (v16)
    {
      v17 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [_SFReloadOptionsController customUserAgentSettingForMainFrameURL:v17 withTimeout:? completionHandler:?];
      }

      v18 = [v16 integerValue];
      v19 = self;
      v20 = 2;
LABEL_20:
      [(_SFReloadOptionsController *)v19 _overrideSettingIfNeeded:v18 source:v20 domain:v10 completion:v9];

      goto LABEL_26;
    }

    if (self->_requestDesktopSiteDefaultValue)
    {
      v21 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [_SFReloadOptionsController customUserAgentSettingForMainFrameURL:v21 withTimeout:? completionHandler:?];
      }

      v18 = [(NSNumber *)self->_requestDesktopSiteDefaultValue integerValue];
      v19 = self;
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
  v10 = v10;
  v26 = v10;
  v27 = v9;
  [(_SFRequestDesktopSitePreferenceManager *)perSitePreferenceManager getRequestDesktopSitePreferenceForDomain:v10 withTimeout:v25 completionHandler:a4];

LABEL_26:
}

- (id)customUserAgentForSetting:(int64_t)a3
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
    [(_SFReloadOptionsController *)v6 customUserAgentForSetting:a3];
  }

  if (a3 == 1)
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

- (id)customNavigatorPlatformForSetting:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"MacIntel";
  }

  else
  {
    return 0;
  }
}

- (void)_requestDesktopSiteWithFallbackURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [v5 initWithBytesNoCopy:requestDesktopSiteUIActivitySource length:4112 encoding:4 freeWhenDone:0];
  activityJSController = self->_activityJSController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___SFReloadOptionsController__requestDesktopSiteWithFallbackURL___block_invoke;
  v9[3] = &unk_1E84953C0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(_SFInjectedJavaScriptController *)activityJSController runJavaScriptForActivity:0 withScript:v6 object:@"DesktopSiteDataFinderJS" invokeMethod:@"desktopSiteData" completionHandler:v9];
}

- (void)requestDesktopSiteWithURL:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v7 = [WeakRetained backForwardList];
    v8 = [v7 currentItem];
    v5 = [v8 initialURL];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if (!self->_domainToUserAgentPolicyMap)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    domainToUserAgentPolicyMap = self->_domainToUserAgentPolicyMap;
    self->_domainToUserAgentPolicyMap = v9;
  }

  v11 = [v5 safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
  if (v11)
  {
    [(NSMutableDictionary *)self->_domainToUserAgentPolicyMap setObject:&unk_1F50234E8 forKeyedSubscript:v11];
    [(_SFReloadOptionsController *)self didMarkURLAsNeedingDesktopUserAgent:v5];
  }

LABEL_9:
}

- (void)_requestStandardSiteWithURL:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4 || (WeakRetained = objc_loadWeakRetained(&self->_webView), [WeakRetained backForwardList], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "currentItem"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "initialURL"), v4 = objc_claimAutoreleasedReturnValue(), v7, v6, WeakRetained, v4))
  {
    if (!self->_domainToUserAgentPolicyMap)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      domainToUserAgentPolicyMap = self->_domainToUserAgentPolicyMap;
      self->_domainToUserAgentPolicyMap = v8;
    }

    v10 = [v4 safari_highLevelDomainFromHostFallingBackToHostOrAbsoluteString];
    v11 = [v4 safari_userVisibleHostWithoutWWWSubdomain];
    if (v10)
    {
      [(NSMutableDictionary *)self->_domainToUserAgentPolicyMap setObject:&unk_1F5023500 forKeyedSubscript:v10];
      [(_SFReloadOptionsController *)self didMarkURLAsNeedingStandardUserAgent:v4];
    }
  }
}

- (void)didMarkURLAsNeedingDesktopUserAgent:(id)a3
{
  v4 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:a3];
  v7 = [v4 safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:self->_supportsAdvancedPrivacyProtections];

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v6 = [WeakRetained loadRequest:v7];
}

- (void)didMarkURLAsNeedingStandardUserAgent:(id)a3
{
  v4 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:a3];
  v7 = [v4 safari_requestBySettingAdvancedPrivacyProtectionsFlagIsEnabled:self->_supportsAdvancedPrivacyProtections];

  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v6 = [WeakRetained loadRequest:v7];
}

- (void)didSetRequestDesktopSiteDefaultValue:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  requestDesktopSiteDefaultValue = self->_requestDesktopSiteDefaultValue;
  self->_requestDesktopSiteDefaultValue = v4;
}

- (void)didSetRequestDesktopSitePerSitePreferencesValues:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v5 = [WeakRetained URL];
  v6 = [v5 safari_userVisibleHostWithoutWWWSubdomain];
  v7 = [(NSDictionary *)self->_perSitePreferenceValues objectForKeyedSubscript:v6];
  v8 = [(NSDictionary *)v4 objectForKeyedSubscript:v6];
  if ((WBSIsEqual() & 1) == 0)
  {
    v9 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v5];
    v10 = [WeakRetained loadRequest:v9];
  }

  perSitePreferenceValues = self->_perSitePreferenceValues;
  self->_perSitePreferenceValues = v4;
}

- (void)logCompletedPageloadToDifferentialPrivacy:(id)a3
{
  v7 = a3;
  v4 = _SFDeviceSupportsDesktopSitesByDefault();
  v5 = v7;
  if (v4)
  {
    v6 = [v7 safari_userVisibleHostWithoutWWWSubdomain];
    if ([v6 length])
    {
      [(_SFReloadOptionsController *)self loadedUsingDesktopUserAgent];
      WBSLogWithDifferentialPrivacy();
    }

    v5 = v7;
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
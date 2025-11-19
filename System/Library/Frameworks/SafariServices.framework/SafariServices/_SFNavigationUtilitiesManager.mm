@interface _SFNavigationUtilitiesManager
+ (id)_sharedUserAgentQuirksManager;
- (BOOL)_shouldOverrideUserAgentSettingForFacebookAuthURL:(id)a3;
- (WBSUserDefinedContentBlockerManager)userDefinedContentBlockerManager;
- (_SFBrowserDocument)browserDocument;
- (_SFNavigationUtilitiesManager)initWithPerSitePreferencesVendor:(id)a3;
- (_SFReloadOptionsController)reloadOptionsController;
- (void)_applyAutoplayQuirksToWebsitePolicies:(id)a3 desktopSiteSetting:(int64_t)a4;
- (void)websitePoliciesForURL:(id)a3 isForMainFrameNavigation:(BOOL)a4 navigationType:(int64_t)a5 completionHandler:(id)a6;
@end

@implementation _SFNavigationUtilitiesManager

- (_SFNavigationUtilitiesManager)initWithPerSitePreferencesVendor:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _SFNavigationUtilitiesManager;
  v6 = [(_SFNavigationUtilitiesManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferencesVendor, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)_sharedUserAgentQuirksManager
{
  if (_sharedUserAgentQuirksManager_onceToken != -1)
  {
    +[_SFNavigationUtilitiesManager _sharedUserAgentQuirksManager];
  }

  v3 = _sharedUserAgentQuirksManager_quirksManager;

  return v3;
}

- (void)_applyAutoplayQuirksToWebsitePolicies:(id)a3 desktopSiteSetting:(int64_t)a4
{
  v17 = a3;
  cachedPlayingPauseQuirkEnabled = self->_cachedPlayingPauseQuirkEnabled;
  if (!cachedPlayingPauseQuirkEnabled)
  {
    v7 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v8 = [v7 safari_numberForKey:*MEMORY[0x1E69B1E90]];
    v9 = self->_cachedPlayingPauseQuirkEnabled;
    self->_cachedPlayingPauseQuirkEnabled = v8;

    cachedPlayingPauseQuirkEnabled = self->_cachedPlayingPauseQuirkEnabled;
  }

  v10 = [(NSNumber *)cachedPlayingPauseQuirkEnabled BOOLValue];
  cachedPerDocumentAutoplayBehaviorQuirkEnabled = self->_cachedPerDocumentAutoplayBehaviorQuirkEnabled;
  if (!cachedPerDocumentAutoplayBehaviorQuirkEnabled)
  {
    v12 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v13 = [v12 safari_numberForKey:*MEMORY[0x1E69B1F40]];
    v14 = self->_cachedPerDocumentAutoplayBehaviorQuirkEnabled;
    self->_cachedPerDocumentAutoplayBehaviorQuirkEnabled = v13;

    cachedPerDocumentAutoplayBehaviorQuirkEnabled = self->_cachedPerDocumentAutoplayBehaviorQuirkEnabled;
  }

  v15 = a4 == 1 || v10;
  if ([(NSNumber *)cachedPerDocumentAutoplayBehaviorQuirkEnabled BOOLValue])
  {
    v16 = v15 | 8;
  }

  else
  {
    v16 = v15;
  }

  [v17 _setAllowedAutoplayQuirks:v16];
}

- (void)websitePoliciesForURL:(id)a3 isForMainFrameNavigation:(BOOL)a4 navigationType:(int64_t)a5 completionHandler:(id)a6
{
  v7 = a4;
  v9 = a3;
  v10 = a6;
  v11 = objc_alloc_init(MEMORY[0x1E69853B0]);
  v12 = [(_SFNavigationUtilitiesManager *)self reloadOptionsController];
  if (v12)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && _SFDeviceSupportsDesktopSitesByDefault())
  {
    [(_SFNavigationUtilitiesManager *)self _applyAutoplayQuirksToWebsitePolicies:v11 desktopSiteSetting:1];
  }

  v14 = [v9 safari_userVisibleHostWithoutWWWSubdomain];
  if ([v14 length])
  {
    v33 = v10;
    v15 = dispatch_group_create();
    v16 = v15;
    if (v13)
    {
      dispatch_group_enter(v15);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke;
      v59[3] = &unk_1E8494608;
      v59[4] = self;
      v60 = v9;
      v61 = v11;
      v62 = v16;
      [v12 customUserAgentSettingForMainFrameURL:v60 withTimeout:v59 completionHandler:0.02];
    }

    v32 = v12;
    v17 = [v9 host];
    v18 = [(_SFNavigationUtilitiesManager *)self userDefinedContentBlockerManager];
    v19 = v18;
    if (v7 && v18 && [v17 length] && objc_msgSend(MEMORY[0x1E69C8880], "isScribbleEnabled"))
    {
      dispatch_group_enter(v16);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_4;
      v56[3] = &unk_1E8494630;
      v56[4] = self;
      v57 = v11;
      v58 = v16;
      [v19 getAllPaintingAvoidanceSelectorsThatApplyToHost:v17 completionHandler:v56];
    }

    v31 = v19;
    Current = CFAbsoluteTimeGetCurrent();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_5;
    aBlock[3] = &unk_1E8494658;
    v21 = v14;
    v55 = Current;
    v51 = v21;
    v52 = self;
    v22 = v11;
    v53 = v22;
    v23 = v16;
    v54 = v23;
    v24 = _Block_copy(aBlock);
    dispatch_group_enter(v23);
    v25 = [(_SFPerSitePreferencesVendor *)self->_preferencesVendor contentBlockersPreferenceManager];
    [v25 getContentBlockersEnabledStateForDomain:v21 withTimeout:1 fallbackEnabledState:v24 completionHandler:0.02];

    if ([MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari])
    {
      dispatch_group_enter(v23);
      v26 = [(_SFPerSitePreferencesVendor *)self->_preferencesVendor lockdownModePreferenceManager];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_19;
      v47[3] = &unk_1E8491FC8;
      v47[4] = self;
      v48 = v22;
      v49 = v23;
      [v26 getLockdownModeEnabledForDomain:v21 withTimeout:1 fallbackEnabledState:v47 usingBlock:0.02];
    }

    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__6;
    v43[4] = __Block_byref_object_dispose__6;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_20;
    v39[3] = &unk_1E8494680;
    v42 = v45;
    v39[4] = self;
    v41 = v33;
    v40 = v22;
    v44 = _Block_copy(v39);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_2_21;
    block[3] = &unk_1E848F710;
    block[4] = v43;
    v27 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    v28 = MEMORY[0x1E69E96A0];
    dispatch_group_notify(v23, MEMORY[0x1E69E96A0], v27);
    v29 = dispatch_time(0, 20000000);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_3_22;
    v34[3] = &unk_1E84946A8;
    v36 = v45;
    v37 = v43;
    v35 = v27;
    v30 = v27;
    dispatch_after(v29, v28, v34);

    v10 = v33;
    _Block_object_dispose(v43, 8);

    _Block_object_dispose(v45, 8);
    v12 = v32;
  }

  else
  {
    (*(v10 + 2))(v10, v11);
  }
}

- (BOOL)_shouldOverrideUserAgentSettingForFacebookAuthURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_persona == 1)
  {
    v6 = [v4 host];
    if ([v6 safari_isCaseInsensitiveEqualToString:@"m.facebook.com"])
    {
      v7 = [v5 path];
      v8 = [v7 hasSuffix:@"/dialog/oauth"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_SFReloadOptionsController)reloadOptionsController
{
  WeakRetained = objc_loadWeakRetained(&self->_reloadOptionsController);

  return WeakRetained;
}

- (_SFBrowserDocument)browserDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_browserDocument);

  return WeakRetained;
}

- (WBSUserDefinedContentBlockerManager)userDefinedContentBlockerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_userDefinedContentBlockerManager);

  return WeakRetained;
}

@end
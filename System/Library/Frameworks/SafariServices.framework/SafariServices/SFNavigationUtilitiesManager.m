@interface SFNavigationUtilitiesManager
@end

@implementation SFNavigationUtilitiesManager

void __62___SFNavigationUtilitiesManager__sharedUserAgentQuirksManager__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69C90D8]);
  v1 = _sharedUserAgentQuirksManager_quirksManager;
  _sharedUserAgentQuirksManager_quirksManager = v0;
}

void __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (a2 == 1)
  {
    a2 = [*(a1 + 32) _shouldOverrideUserAgentSettingForFacebookAuthURL:*(a1 + 40)] ^ 1;
  }

  if (a2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [*(a1 + 48) setPreferredContentMode:v7];
  if (a2 == 1)
  {
    v8 = [*(a1 + 40) safari_userVisibleString];
    dispatch_group_enter(*(a1 + 56));
    v9 = +[_SFNavigationUtilitiesManager _sharedUserAgentQuirksManager];
    v10 = _SFMacSafariUserAgentString();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_2;
    v15[3] = &unk_1E84945C0;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    [v9 getQuirksForURLString:v8 withDefaultUserAgent:v10 completionHandler:v15];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_3;
  v14[3] = &__block_descriptor_48_e5_B8__0l;
  v14[4] = a3;
  v14[5] = a2;
  v11 = _Block_copy(v14);
  if (v11[2]())
  {
    [*(a1 + 48) setPreferredContentMode:0];
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) _setAllowSiteSpecificQuirksToOverrideCompatibilityMode:1];
    }
  }

  [*(a1 + 32) _applyAutoplayQuirksToWebsitePolicies:*(a1 + 48) desktopSiteSetting:a2];
  if (objc_opt_respondsToSelector())
  {
    v12 = *(a1 + 48);
    v13 = _SFApplicationNameForDesktopUserAgent();
    [v12 _setApplicationNameForUserAgentWithModernCompatibility:v13];
  }

  objc_sync_exit(v6);
  dispatch_group_leave(*(a1 + 56));
}

void __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) _setCustomUserAgentAsSiteSpecificQuirks:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32) || *(a1 + 40) != 1)
  {
    return 0;
  }

  else
  {
    return _SFDeviceSupportsDesktopSitesByDefault();
  }
}

void __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 40) _setVisibilityAdjustmentSelectorsIncludingShadowHosts:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (a2)
    {
      v6 = @"On";
    }

    else
    {
      v6 = @"Off";
    }

    v7 = v4;
    v8 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    v10 = 141558787;
    v11 = 1752392040;
    v12 = 2117;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_INFO, "Fetched content blocker enabled state for %{sensitive, mask.hash}@: %@ - time: %f", &v10, 0x2Au);
  }

  v9 = *(a1 + 40);
  objc_sync_enter(v9);
  [*(a1 + 48) _setContentBlockersEnabled:a2];
  *(*(a1 + 40) + 32) = a2;
  objc_sync_exit(v9);

  dispatch_group_leave(*(a1 + 56));
}

void __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_19(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(a1 + 40) _setCaptivePortalModeEnabled:a2];
  objc_sync_exit(v4);

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_20(uint64_t a1)
{
  v1 = *(*(a1 + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    obj = *(a1 + 32);
    objc_sync_enter(obj);
    (*(*(a1 + 48) + 16))();
    objc_sync_exit(obj);
  }
}

uint64_t __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_2_21(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_3_22(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __113___SFNavigationUtilitiesManager_websitePoliciesForURL_isForMainFrameNavigation_navigationType_completionHandler___block_invoke_3_22_cold_1(v2);
    }
  }

  (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  dispatch_block_cancel(*(a1 + 32));
}

@end
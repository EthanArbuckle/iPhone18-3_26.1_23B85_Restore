@interface SFBrowserContentViewController
@end

@implementation SFBrowserContentViewController

id __58___SFBrowserContentViewController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (SFDebugMenuEnabled() & 1) != 0)
  {
    v2 = MEMORY[0x1E69DC628];
    v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v4 = [v2 actionWithTitle:@"Kill View Service" image:v3 identifier:0 handler:&__block_literal_global_52];

    [v4 setAttributes:2];
    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v7 = [v5 stringWithFormat:@"PID %d", objc_msgSend(v6, "processIdentifier")];
    [v4 setSubtitle:v7];

    v8 = MEMORY[0x1E69DC628];
    v9 = [WeakRetained webView];
    v10 = [v8 _sf_debugKillWebProcessActionForWebView:v9];
    v13[0] = v10;
    v13[1] = v4;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

void __82___SFBrowserContentViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x1E69B1F00]])
  {
    v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [*(*(a1 + 40) + 1896) setJavaScriptEnabled:{objc_msgSend(v6, "safari_isJavaScriptEnabled")}];
  }

  else
  {
    v2 = *MEMORY[0x1E69B1E78];
    if ([*(a1 + 32) isEqualToString:*MEMORY[0x1E69B1E78]])
    {
      v6 = [MEMORY[0x1E695E000] safari_browserDefaults];
      [*(*(a1 + 40) + 1896) _setApplePayCapabilityDisclosureAllowed:{objc_msgSend(v6, "BOOLForKey:", v2)}];
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:*MEMORY[0x1E69E30E0]])
      {
        return;
      }

      v3 = *(a1 + 40);
      v6 = [v3 webView];
      v4 = [v6 configuration];
      v5 = [v4 websiteDataStore];
      [v3 _setUpCookieStoragePolicyForDataStore:v5];
    }
  }
}

uint64_t __50___SFBrowserContentViewController_setDisplayMode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUpTopBarAndBottomBar];
  [*(a1 + 32) _updateUI];
  [*(a1 + 32) _layOutBrowserViewForSizeTransition];
  [*(a1 + 32) _didCompleteViewSizeTransition];
  v2 = *(a1 + 32);

  return [v2 setNeedsStatusBarAppearanceUpdate];
}

void __60___SFBrowserContentViewController__updateDynamicBarGeometry__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1032) navigationBar];
  v3 = *(*(a1 + 32) + 1144);
  v16 = v2;
  [v2 defaultHeight];
  [v3 setTopBarHeight:1 forState:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1144);
  v6 = *(v4 + 1217);
  if (v6 == 1)
  {
    v3 = [v4 view];
    [v3 safeAreaInsets];
    v8 = -v7;
  }

  else
  {
    [v16 minimumHeight];
  }

  [v5 setTopBarHeight:0 forState:v8];
  if (v6)
  {
  }

  [*(*(a1 + 32) + 1144) setBottomBarOffset:1 forState:0.0];
  v9 = *(a1 + 32);
  v10 = v9[143];
  [v9 _maximumHeightObscuredByBottomBar];
  v12 = v11;
  _SFOnePixel();
  [v10 setBottomBarOffset:0 forState:v12 + v13];
  v14 = *(a1 + 32);
  v15 = v14[143];
  [v14 _offsetForDynamicBarAnimator];
  [v14 dynamicBarAnimator:v15 minimumTopBarHeightForOffset:?];
  [*(*(a1 + 32) + 1144) setMinimumTopBarHeight:?];
}

void __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:1];
  v2 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*(*(*(a1 + 64) + 8) + 48), *(*(*(a1 + 64) + 8) + 56), *(*(*(a1 + 64) + 8) + 64), *(*(*(a1 + 64) + 8) + 72)}];
  v3 = [MEMORY[0x1E69DC888] blackColor];
  [v2 setBackgroundColor:v3];

  v4 = 0.300000012;
  if (*(*(a1 + 40) + 1048))
  {
    v4 = 0.0;
  }

  [v2 setAlpha:v4];
  v5 = *(a1 + 40);
  if (*(v5 + 1048) == 1)
  {
    [*(a1 + 48) addSubview:v2];
  }

  else
  {
    v6 = [*(v5 + 1032) contentContainerView];
    [v6 insertSubview:v2 belowSubview:*(a1 + 48)];
  }

  v7 = MEMORY[0x1E69DD250];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke_2;
  v34[3] = &unk_1E848F9B0;
  v8 = v2;
  v9 = *(a1 + 40);
  v35 = v8;
  v36 = v9;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke_3;
  v31[3] = &unk_1E8494AB8;
  v10 = v8;
  v32 = v10;
  v33 = *(a1 + 48);
  [v7 animateWithDuration:0 delay:v34 options:v31 animations:0.3 completion:0.0];
  v11 = MEMORY[0x1E69DD250];
  v12 = *(*(a1 + 40) + 1048);
  v37 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v37.minimum;
  maximum = v37.maximum;
  preferred = v37.preferred;
  if (v12)
  {
    v16 = 0.15;
  }

  else
  {
    v16 = 0.0;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke_4;
  v28[3] = &unk_1E8494AE0;
  v17 = *(a1 + 56);
  v25 = *(a1 + 40);
  v18.i64[0] = v17;
  v18.i64[1] = *(a1 + 64);
  v24 = v18;
  v19 = v25.i64[1];
  *&v20 = v24.i64[0];
  *(&v20 + 1) = v25.i64[0];
  v29 = v20;
  v30 = vzip2q_s64(v25, v24);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke_5;
  v26[3] = &unk_1E8494B08;
  v27 = *(a1 + 48);
  *&v21 = minimum;
  *&v22 = maximum;
  *&v23 = preferred;
  [v11 sf_animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v28 options:v26 preferredFrameRateRange:v16 animations:0.0 completion:{v21, v22, v23}];
}

uint64_t __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke_2(uint64_t a1)
{
  v1 = 0.300000012;
  if (!*(*(a1 + 40) + 1048))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

void __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    v4 = *(a1 + 32);

    [v4 removeFromSuperview];
  }
}

uint64_t __79___SFBrowserContentViewController__setShowingReader_deactivationMode_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 56);
  if (*(*(a1 + 40) + 1048) == 1)
  {
    *(v9 + 56) = v10 + v11;
    v12 = v2 - v10;
  }

  else
  {
    *(v9 + 56) = v11 - v10;
    v12 = v2 + v10;
  }

  [*(a1 + 48) setFrame:{*(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56), *(*(*(a1 + 56) + 8) + 64), *(*(*(a1 + 56) + 8) + 72)}];
  v13 = *(a1 + 32);

  return [v13 setFrame:{v4, v12, v6, v8}];
}

void __47___SFBrowserContentViewController_loadRequest___block_invoke(uint64_t a1, void *a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___SFBrowserContentViewController_loadRequest___block_invoke_2;
  block[3] = &unk_1E8494B58;
  objc_copyWeak(v6, (a1 + 40));
  v6[1] = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v6);
}

void __47___SFBrowserContentViewController_loadRequest___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = *(a1 + 48);
    if ((v2 - 1) >= 2)
    {
      if (v2)
      {
        goto LABEL_7;
      }

      v5 = MEMORY[0x1E695AC68];
      v3 = [WeakRetained _fallbackURLForWellKnownChangePasswordURL:WeakRetained[189]];
      v6 = [v5 safari_nonAppInitiatedRequestWithURL:v3];
      [WeakRetained loadRequest:v6];
    }

    else
    {
      v3 = [WeakRetained webView];
      v4 = [v3 loadRequest:*(a1 + 32)];
    }
  }

LABEL_7:
}

void __64___SFBrowserContentViewController__updateBarItemsWithAnimation___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v2 = [*(*(a1 + 32) + 1120) isBarItemEnabled:1];
    if (v2 != [*(a1 + 40) canGoForward])
    {
      [*(*(a1 + 32) + 1072) setNeedsLayout];
    }
  }

  [*(*(a1 + 32) + 1120) setBarItem:0 enabled:{objc_msgSend(*(a1 + 40), "canGoBack")}];
  [*(*(a1 + 32) + 1120) setBarItem:1 enabled:{objc_msgSend(*(a1 + 40), "canGoForward")}];
  v15 = [*(a1 + 40) URL];
  [*(*(a1 + 32) + 1120) setBarItem:6 enabled:{objc_msgSend(v15, "sf_isEligibleForSharing")}];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [*(*(a1 + 32) + 1120) setBarItem:15 hidden:{objc_msgSend(*(a1 + 40), "isLoading")}];
    [*(*(a1 + 32) + 1120) setBarItem:14 hidden:{objc_msgSend(*(a1 + 40), "isLoading") ^ 1}];
    [*(*(a1 + 32) + 1120) setBarItem:1 hidden:{objc_msgSend(*(a1 + 40), "canGoForward") ^ 1}];
  }

  v3 = *(a1 + 32);
  v4 = v3[140];
  if (v15)
  {
    v5 = [v3 isSafariRestricted] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setBarItem:9 enabled:v5];
  [*(*(a1 + 32) + 1120) setBarItem:10 hidden:(*(*(a1 + 32) + 1584) & 1) == 0];
  v6 = *(a1 + 32);
  if (*(v6 + 1584) == 1)
  {
    v7 = [*(v6 + 1952) activityButton];
    v8 = [v7 accessibilityLabel];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [*(*(a1 + 32) + 1576) activityTitle];
    }

    v11 = v10;

    v12 = *(*(a1 + 32) + 1120);
    v13 = [v7 templateImage];
    [v12 setCustomActivityImage:v13 accessibilityLabel:v11];

    v6 = *(a1 + 32);
  }

  v14 = [*(v6 + 1176) overlayConfiguration];
  [*(*(a1 + 32) + 1120) setAllBarItemsAreDisabled:v14 != 0];
}

void __70___SFBrowserContentViewController__setShowingPinnableBanner_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateCurrentScrollViewInsets];
  v2 = [*(*(a1 + 32) + 1032) currentWebView];
  v9 = [v2 scrollView];

  [v9 contentOffset];
  v4 = v3;
  v6 = v5;
  [v9 adjustedContentInset];
  if (v6 <= -v7)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v6;
  }

  [v9 setContentOffset:{v4, v8}];
}

void __61___SFBrowserContentViewController__showCrashBanner_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentWebView];
  v13 = [v2 scrollView];

  [*(a1 + 40) center];
  v4 = v3;
  [*(a1 + 32) _updateCrashBannerOffset];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 1248);
    v7 = [*(v5 + 1032) crashBanner];
    [v7 setAlpha:v6];
  }

  [*(*(a1 + 32) + 1032) layoutIfNeeded];
  [v13 contentOffset];
  v9 = v8;
  v11 = v10;
  [*(a1 + 40) center];
  [v13 setContentOffset:{v9, v11 - (v12 - v4)}];
}

uint64_t __61___SFBrowserContentViewController__showCrashBanner_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 1248) & 1) == 0)
  {
    [*(v2 + 1032) setCrashBanner:0];
    v2 = *(a1 + 32);
  }

  [v2 _updateCurrentScrollViewInsets];
  result = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _updateBarTheme];
  }

  return result;
}

void __64___SFBrowserContentViewController__updatePageZoomWithPreference__block_invoke(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64___SFBrowserContentViewController__updatePageZoomWithPreference__block_invoke_2;
  v3[3] = &unk_1E8494B80;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = *&a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __64___SFBrowserContentViewController__updatePageZoomWithPreference__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained webView];
  [v2 _setViewScale:v1];
}

void __59___SFBrowserContentViewController__increasePageZoomSetting__block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E69C8810] sharedLogger];
    [v5 didModifyPerSitePreferencesWithPreferenceIdentifier:*MEMORY[0x1E69C9720] modificationLevel:1 type:0 method:3];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59___SFBrowserContentViewController__increasePageZoomSetting__block_invoke_2;
    v6[3] = &unk_1E8494B80;
    objc_copyWeak(v7, (a1 + 32));
    v7[1] = *&a3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
    objc_destroyWeak(v7);
  }
}

void __59___SFBrowserContentViewController__increasePageZoomSetting__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained webView];
  [v2 _setViewScale:v1];
}

void __59___SFBrowserContentViewController__decreasePageZoomSetting__block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E69C8810] sharedLogger];
    [v5 didModifyPerSitePreferencesWithPreferenceIdentifier:*MEMORY[0x1E69C9720] modificationLevel:1 type:0 method:3];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59___SFBrowserContentViewController__decreasePageZoomSetting__block_invoke_2;
    v6[3] = &unk_1E8494B80;
    objc_copyWeak(v7, (a1 + 32));
    v7[1] = *&a3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
    objc_destroyWeak(v7);
  }
}

void __59___SFBrowserContentViewController__decreasePageZoomSetting__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained webView];
  [v2 _setViewScale:v1];
}

void __56___SFBrowserContentViewController__resetPageZoomSetting__block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E69C8810] sharedLogger];
    [v5 didModifyPerSitePreferencesWithPreferenceIdentifier:*MEMORY[0x1E69C9720] modificationLevel:1 type:1 method:3];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56___SFBrowserContentViewController__resetPageZoomSetting__block_invoke_2;
    v6[3] = &unk_1E8494B80;
    objc_copyWeak(v7, (a1 + 32));
    v7[1] = *&a3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
    objc_destroyWeak(v7);
  }
}

void __56___SFBrowserContentViewController__resetPageZoomSetting__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = [WeakRetained webView];
    [v3 _setViewScale:*(a1 + 40)];
    v4 = [v11 view];
    [v3 _minimumEffectiveDeviceWidth];
    if (v5 == 0.0)
    {
      v9 = 1.0;
    }

    else
    {
      [v4 bounds];
      v7 = v6;
      [v3 _minimumEffectiveDeviceWidth];
      v9 = v7 / v8;
    }

    v10 = [v3 scrollView];
    [v10 setZoomScale:v9];

    WeakRetained = v11;
  }
}

void __56___SFBrowserContentViewController__invokeCustomActivity__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) webViewController];
  v5 = [v4 webView];

  v6 = *(a1 + 32);
  if (!v6[164])
  {
    v7 = [[_SFSafariSharingExtensionController alloc] initWithWebView:v5];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1312);
    *(v8 + 1312) = v7;

    v6 = *(a1 + 32);
  }

  v24 = [v6 _hostAppBundleId];
  v10 = *(a1 + 32);
  if (v10[1584])
  {
    v11 = [v5 title];
    v12 = [v10 _itemProviderCollectionForSharingURL:v3 title:v11];

    v13 = [_SFActivityViewController alloc];
    v14 = [v5 URL];
    v15 = [(_SFActivityViewController *)v13 initWithActivityItemProviderCollection:v12 applicationActivities:0 sharingURL:v3 sourceURL:v14];

    [(_SFActivityViewController *)v15 setSharingExtensionController:*(*(a1 + 32) + 1312)];
    objc_initWeak(location, v15);
    v16 = [*(*(a1 + 32) + 1952) activityButton];
    v17 = [v16 extensionIdentifier];

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __56___SFBrowserContentViewController__invokeCustomActivity__block_invoke_266;
    v25[3] = &unk_1E8494BF8;
    objc_copyWeak(&v27, location);
    v18 = v17;
    v26 = v18;
    [*(*(a1 + 32) + 1576) setCustomCompletionHandler:v25];
    [(_SFActivityViewController *)v15 prepareJavaScriptExtensionItemForActivity:*(*(a1 + 32) + 1576)];
    v19 = *(*(a1 + 32) + 1576);
    v20 = [(_SFActivityViewController *)v15 activityItemProviders];
    [v19 prepareWithActivityItems:v20];

    [*(*(a1 + 32) + 1576) _presentActivityOnViewController:? animated:? completion:?];
    objc_destroyWeak(&v27);

    objc_destroyWeak(location);
  }

  else
  {
    v21 = WBS_LOG_CHANNEL_PREFIXExtensions();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [*(*(a1 + 32) + 1952) activityButton];
      v23 = [v22 extensionIdentifier];
      *location = 138543618;
      *&location[4] = v23;
      v29 = 2114;
      v30 = v24;
      _os_log_error_impl(&dword_1D4644000, v21, OS_LOG_TYPE_ERROR, "Can't run extension '%{public}@' because it isn't part of the app '%{public}@'", location, 0x16u);
    }

    [*(a1 + 32) _updateUI];
  }
}

void __56___SFBrowserContentViewController__invokeCustomActivity__block_invoke_266(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = WeakRetained;
  [WeakRetained activityDidComplete:*(a1 + 32) withReturnedItems:v7 success:v9];
}

void __56___SFBrowserContentViewController__invokeCustomActivity__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(a1 + 32) + 1952) activityButton];
    v4 = [v3 extensionIdentifier];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_INFO, "Presented extension '%{public}@' from a custom toolbar button", &v5, 0xCu);
  }
}

void __78___SFBrowserContentViewController_dataForQuickLookDocument_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained webView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __78___SFBrowserContentViewController_dataForQuickLookDocument_completionHandler___block_invoke_2;
    v5[3] = &unk_1E8494C48;
    v6 = *(a1 + 32);
    [v4 _getMainResourceDataWithCompletionHandler:v5];
  }
}

void __51___SFBrowserContentViewController__checkForAppLink__block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) synchronousTargetApplicationProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___SFBrowserContentViewController__checkForAppLink__block_invoke_2;
  v7[3] = &unk_1E8494CC0;
  objc_copyWeak(v11, (a1 + 48));
  v5 = *(a1 + 40);
  v11[1] = a2;
  v8 = v5;
  v9 = v4;
  v10 = *(a1 + 32);
  v12 = *(a1 + 56);
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(v11);
}

void __51___SFBrowserContentViewController__checkForAppLink__block_invoke_2(uint64_t a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) backForwardList];
    v4 = [v3 currentItem];
    v5 = *(WeakRetained + 209);

    if (v4 == v5)
    {
      v6 = [*(WeakRetained + 129) pinnableBanner];
      v7 = *(a1 + 64);
      if ((atomic_load_explicit(&_ZGVZZZ51___SFBrowserContentViewController__checkForAppLink_EUb0_EUb1_E24systemServiceIdentifiers, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZZ51___SFBrowserContentViewController__checkForAppLink_EUb0_EUb1_E24systemServiceIdentifiers))
      {
        v16 = *MEMORY[0x1E69C8B18];
        v22[0] = *MEMORY[0x1E69C8B40];
        v22[1] = v16;
        _ZZZZ51___SFBrowserContentViewController__checkForAppLink_EUb0_EUb1_E24systemServiceIdentifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
        __cxa_guard_release(&_ZGVZZZ51___SFBrowserContentViewController__checkForAppLink_EUb0_EUb1_E24systemServiceIdentifiers);
      }

      if (v7 - 1) > 2 || (v8 = _ZZZZ51___SFBrowserContentViewController__checkForAppLink_EUb0_EUb1_E24systemServiceIdentifiers, [*(a1 + 40) bundleIdentifier], v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "containsObject:", v9), v9, (v8))
      {
        v10 = v6;
      }

      else
      {
        v11 = objc_alloc(MEMORY[0x1E69B1AB8]);
        v12 = *(a1 + 48);
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __51___SFBrowserContentViewController__checkForAppLink__block_invoke_3;
        v20 = &unk_1E8494C98;
        objc_copyWeak(&v21, (a1 + 56));
        v10 = [v11 initWithAppLink:v12 openActionHandler:&v17];
        [v10 setInitiallyBehindNavigationBar:{(*(a1 + 72) & 1) == 0, v17, v18, v19, v20}];
        objc_destroyWeak(&v21);
      }

      v13 = *(WeakRetained + 209);
      *(WeakRetained + 209) = 0;

      if (v10)
      {
        v14 = [WeakRetained webViewController];
        v15 = [v14 didFirstPaint];

        if (v15)
        {
          [WeakRetained _setShowingPinnableBanner:v10 animated:0];
        }

        else
        {
          objc_storeStrong(WeakRetained + 160, v10);
        }
      }

      else
      {
        [WeakRetained _setShowingPinnableBanner:0 animated:0];
      }
    }
  }
}

void __51___SFBrowserContentViewController__checkForAppLink__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69D4398]];
    v5 = [v6 appLink];
    [v5 openExternallyWithWebBrowserState:v4 referrerURL:0 completionHandler:0];
  }
}

void __81___SFBrowserContentViewController_webViewController_didFindAppBannerWithContent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDelegate:*(a1 + 32)];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __81___SFBrowserContentViewController_webViewController_didFindAppBannerWithContent___block_invoke_2;
  v12 = &unk_1E848F9B0;
  v13 = *(a1 + 32);
  v4 = v3;
  v14 = v4;
  v5 = _Block_copy(&v9);
  v6 = [v4 overlayProvider];

  if (v6)
  {
    v7 = [v4 overlayProvider];
    v8 = [*(a1 + 32) perSitePreferencesVendor];
    [v7 requestOverlayWithPreferencesVendor:v8 completion:v5];
  }

  else
  {
    v5[2](v5);
  }
}

void __81___SFBrowserContentViewController_webViewController_didFindAppBannerWithContent___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) webViewController];
  v3 = [v2 didFirstPaint];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _setShowingPinnableBanner:v5 animated:0];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = (*(a1 + 32) + 1280);

    objc_storeStrong(v7, v6);
  }
}

void __89___SFBrowserContentViewController_webViewControllerDidDetermineReaderAvailability_dueTo___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89___SFBrowserContentViewController_webViewControllerDidDetermineReaderAvailability_dueTo___block_invoke_2;
  block[3] = &unk_1E8494D38;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

void __89___SFBrowserContentViewController_webViewControllerDidDetermineReaderAvailability_dueTo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_10;
  }

  v8 = WeakRetained;
  if ((*(a1 + 48) & 1) == 0)
  {
    [WeakRetained[147] setShowsReaderButton:1 showsAvailabilityText:1];
    v4 = [v8 assistantController];
    v5 = [*(a1 + 32) url];
    [v4 didFindLocalContentWithOptions:32 forURL:v5];
    goto LABEL_8;
  }

  v4 = [WeakRetained webViewController];
  v5 = [v4 readerController];
  if (![v5 isReaderAvailable])
  {
LABEL_8:

    goto LABEL_9;
  }

  v6 = *(v8 + 1048);

  v3 = v8;
  if ((v6 & 1) == 0)
  {
    [v8[147] setShowsReaderButton:1 showsAvailabilityText:0];
    [v8 _showReaderAnimated:v8[235] == 0];
    v7 = [v8 isBlockedByScreenTime];
    v3 = v8;
    if ((v7 & 1) == 0)
    {
      v4 = [MEMORY[0x1E69C8810] sharedLogger];
      [v4 didActivateReaderWithTrigger:1];
LABEL_9:

      v3 = v8;
    }
  }

LABEL_10:
}

void __89___SFBrowserContentViewController_webViewController_didExtractTextSamplesForTranslation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89___SFBrowserContentViewController_webViewController_didExtractTextSamplesForTranslation___block_invoke_2;
  block[3] = &unk_1E8491718;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __89___SFBrowserContentViewController_webViewController_didExtractTextSamplesForTranslation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E69C8810] sharedLogger];
    [v2 didVisitWebpageSBAWithUserOptedIn:{objc_msgSend(MEMORY[0x1E69C8EC8], "userConsentState") == 1}];

    if (*(a1 + 32))
    {
      if ([WeakRetained allowsBrowsingAssistant])
      {
        v3 = [MEMORY[0x1E696AFB0] UUID];
        v4 = [v3 UUIDString];
        v5 = [WeakRetained assistantController];
        [v5 setWebpageIdentifier:v4];

        v6 = [WeakRetained assistantController];
        v7 = [*(a1 + 40) webView];
        v8 = [v7 URL];
        [v6 checkForAssistantContentFromPegasusForURL:v8 locale:*(a1 + 32)];
      }
    }
  }
}

void __140___SFBrowserContentViewController__queueAlertForRedirectToExternalNavigationResult_fromOriginalRequest_isMainFrame_promptPolicy_userAction___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (a2)
    {
      if (![v4 appliesOneTimeUserInitiatedActionPolicy] || objc_msgSend(*(a1 + 32), "externalApplicationCategory") == 2)
      {
        *(WeakRetained + 139) &= ~8uLL;
      }

      [WeakRetained _completeRedirectToExternalNavigationResult:*(a1 + 32) fromOriginalRequest:*(a1 + 40) dialogResult:a2];
    }

    else
    {
      if (![v4 appliesOneTimeUserInitiatedActionPolicy] || objc_msgSend(*(a1 + 32), "externalApplicationCategory") == 2)
      {
        *(WeakRetained + 139) = 0;
      }

      [WeakRetained _redirectToExternalNavigationResult:*(a1 + 32) fromOriginalRequest:*(a1 + 40) promptPolicy:0 isMainFrame:*(a1 + 64) userAction:*(a1 + 48)];
    }

    v5 = _Block_copy(*(WeakRetained + 207));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, 1);
    }
  }
}

void __127___SFBrowserContentViewController__redirectToExternalNavigationResult_fromOriginalRequest_promptPolicy_isMainFrame_userAction___block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 view];
    v5 = [v4 window];
    v6 = [v5 windowScene];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __127___SFBrowserContentViewController__redirectToExternalNavigationResult_fromOriginalRequest_promptPolicy_isMainFrame_userAction___block_invoke_2;
    v10[3] = &unk_1E8492198;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    [v6 _sf_openTelURL:v7 completionHandler:v10];
  }

  else
  {
    v3[1336] = 0;
    v8 = *(*(a1 + 32) + 1656);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

uint64_t __127___SFBrowserContentViewController__redirectToExternalNavigationResult_fromOriginalRequest_promptPolicy_isMainFrame_userAction___block_invoke_2(uint64_t a1, int a2)
{
  *(*(a1 + 32) + 1336) = 0;
  v3 = *(*(a1 + 32) + 1344);
  if (a2)
  {
    [v3 userAcceptedCallPrompt];
    [*(a1 + 32) _completeRedirectToExternalNavigationResult:*(a1 + 40) fromOriginalRequest:*(a1 + 48) dialogResult:0];
  }

  else
  {
    [v3 userDeclinedCallPrompt];
  }

  result = *(*(a1 + 32) + 1656);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __127___SFBrowserContentViewController__redirectToExternalNavigationResult_fromOriginalRequest_promptPolicy_isMainFrame_userAction___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _completeRedirectToExternalNavigationResult:*(result + 40) fromOriginalRequest:*(result + 48) dialogResult:0];
  }

  return result;
}

uint64_t __101___SFBrowserContentViewController_resultOfLoadingRequest_inMainFrame_disallowRedirectToExternalApps___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [*(a1 + 32) URL];
  v6 = [*(a1 + 40) webView];
  v7 = [v6 _committedURL];
  v8 = [v4 _sf_shouldOverrideiCloudSharingURL:v5 withAppRedirectURL:v3 referrerURL:v7 loadedUsingDesktopUserAgent:{objc_msgSend(*(*(a1 + 40) + 1888), "loadedUsingDesktopUserAgent")}];

  return v8;
}

uint64_t __129___SFBrowserContentViewController__determineResultOfLoadingRequest_inMainFrame_disallowRedirectToExternalApps_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [*(a1 + 32) URL];
  v6 = [v4 _sf_shouldOverrideiCloudSharingURL:v5 withAppRedirectURL:v3 referrerURL:*(a1 + 40) loadedUsingDesktopUserAgent:*(a1 + 48)];

  return v6;
}

void __108___SFBrowserContentViewController__redirectToNewsIfNeededForRequest_isMainFrame_userAction_decisionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 + 1) <= 4)
  {
    if (((1 << (a2 + 1)) & 0xB) != 0)
    {
      (*(*(a1 + 64) + 16))();
      v3 = *(a1 + 32);
      v6 = [*(a1 + 40) URL];
      [v3 _didResolveDestinationURL:? pendingAppLinkCheck:?];
    }

    else
    {
      (*(*(a1 + 64) + 16))();
      v4 = *(a1 + 32);
      v7 = [*(a1 + 48) url];
      [v4 _didResolveDestinationURL:? pendingAppLinkCheck:?];

      v5 = *(a1 + 32);
      v6 = [_SFNavigationResult resultWithAppLink:*(a1 + 48)];
      [v5 _redirectToExternalNavigationResult:? fromOriginalRequest:? promptPolicy:? isMainFrame:? userAction:?];
    }
  }
}

void __101___SFBrowserContentViewController_webViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didDecideNavigationPolicy:a2 forNavigationAction:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1)
    {
      --WeakRetained[205];
      v7 = WBS_LOG_CHANNEL_PREFIXPageLoading();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = WeakRetained[205];
        v9 = 134218240;
        v10 = WeakRetained;
        v11 = 2048;
        v12 = v8;
        _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_INFO, "(%p) Concurrent navigation action policy decisions: %zd", &v9, 0x16u);
      }
    }
  }
}

void __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    _Block_copy(WeakRetained[207]);
    v5 = v8[207];
    v8[207] = 0;

    WeakRetained = v8;
  }

  if (a2 && ([WeakRetained webViewController], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isLoading"), v6, !v7))
  {
    [v8 webViewController:*(a1 + 32) decidePolicyForNavigationAction:*(a1 + 40) decisionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained || a2 && [*(a1 + 32) _sf_shouldPerformDownload])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v21[3] = a2;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__292;
    v19[4] = __Block_byref_object_dispose__293;
    v20 = v5;
    v7 = [WeakRetained _navigationUtilitiesManager];
    v8 = *(a1 + 40);
    v9 = *(a1 + 72);
    v10 = *(a1 + 64);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_294;
    v12[3] = &unk_1E8494EC8;
    objc_copyWeak(v17, (a1 + 56));
    v14 = *(a1 + 48);
    v11 = *(a1 + 40);
    v18 = *(a1 + 72);
    v13 = v11;
    v15 = v19;
    v16 = v21;
    v17[1] = a2;
    [v7 websitePoliciesForURL:v8 isForMainFrameNavigation:v9 navigationType:v10 completionHandler:v12];

    objc_destroyWeak(v17);
    _Block_object_dispose(v19, 8);

    _Block_object_dispose(v21, 8);
  }
}

void __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_294(uint64_t a1, void *a2)
{
  v35 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_50;
  }

  if ([*(a1 + 32) isEqual:*(WeakRetained + 173)])
  {
    WeakRetained[1393] = WeakRetained[1392] ^ 1;
    v4 = WeakRetained[1392] ^ 1;
LABEL_7:
    [v35 _setContentBlockersEnabled:v4 & 1];
    goto LABEL_8;
  }

  v5 = [*(a1 + 32) host];
  v6 = [v5 safari_highLevelDomainFromHost];
  v7 = [*(WeakRetained + 173) host];
  v8 = [v7 safari_highLevelDomainFromHost];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong(WeakRetained + 173, *(a1 + 32));
    v4 = WeakRetained[1393];
    goto LABEL_7;
  }

  if (*(a1 + 80) == 1)
  {
    v15 = *(WeakRetained + 173);
    *(WeakRetained + 173) = 0;

    v16 = [WeakRetained _navigationUtilitiesManager];
    WeakRetained[1376] = [v16 isContentBlockersPerSiteSettingEnabled];
  }

LABEL_8:
  v10 = [*(a1 + 32) safari_isSafariWebExtensionURL];
  v11 = [WeakRetained supportsAdvancedPrivacyProtectionsForURL:*(a1 + 32)];
  if ((v10 & 1) == 0)
  {
    v12 = v11;
    v13 = [WeakRetained isPrivateBrowsingEnabled];
    if ([*(a1 + 32) isEqual:*(WeakRetained + 219)])
    {
      WeakRetained[1761] = WeakRetained[1760] ^ 1;
      v14 = WeakRetained[1760] ^ 1;
    }

    else
    {
      v17 = [*(a1 + 32) host];
      v18 = [v17 safari_highLevelDomainFromHost];
      v19 = [*(WeakRetained + 219) host];
      v20 = [v19 safari_highLevelDomainFromHost];
      v21 = [v18 isEqualToString:v20];

      if (v21)
      {
        objc_storeStrong(WeakRetained + 219, *(a1 + 32));
        v14 = WeakRetained[1761];
      }

      else if (*(a1 + 80) == 1)
      {
        v22 = *(WeakRetained + 219);
        *(WeakRetained + 219) = 0;

        v14 = v12;
      }

      else
      {
        v14 = 0;
      }
    }

    if (WeakRetained[1762] != v12)
    {
      v14 = v12;
    }

    WeakRetained[1762] = v12;
    [v35 safari_setAdvancedPrivacyProtectionsEnabled:v14 & 1 privateBrowsing:v13];
  }

  v23 = objc_opt_respondsToSelector();
  v24 = [*(a1 + 32) safari_hasSameSiteAsURL:*(WeakRetained + 175)];
  if ((!v24 || WeakRetained[1424] == 1) && *(a1 + 80) == 1 && ([WeakRetained isShowingErrorPage] & 1) == 0)
  {
    v25 = *(WeakRetained + 175);
    *(WeakRetained + 175) = 0;

    WeakRetained[1841] = 0;
    WeakRetained[1424] = 0;
  }

  else if (([*(a1 + 32) isEqual:*(WeakRetained + 175)] & v23) == 1)
  {
    [v35 _setAllowPrivacyProxy:(WeakRetained[1408] & 1) == 0];
    WeakRetained[1409] = WeakRetained[1408] ^ 1;
  }

  else if ((v24 & v23) == 1)
  {
    [v35 _setAllowPrivacyProxy:WeakRetained[1409]];
  }

  if (*(a1 + 80) == 1 && [WeakRetained supportsAdvancedPrivacyProtectionsForURL:*(a1 + 32)])
  {
    [v35 _setNetworkConnectionIntegrityPolicy:{objc_msgSend(v35, "_networkConnectionIntegrityPolicy") | 0x10}];
  }

  if (*(a1 + 80) == 1)
  {
    v26 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v27 = [v26 safari_BOOLForKey:*MEMORY[0x1E69C96E8] defaultValue:0];

    if (!v27)
    {
      v31 = [v35 _networkConnectionIntegrityPolicy] | 2;
      goto LABEL_38;
    }

    [v35 _setNetworkConnectionIntegrityPolicy:{objc_msgSend(v35, "_networkConnectionIntegrityPolicy") | 4}];
    v28 = [*(a1 + 32) host];
    v29 = [v28 safari_highLevelDomainFromHost];
    v30 = WBSIsEqual();

    if (v30)
    {
      v31 = [v35 _networkConnectionIntegrityPolicy] | 8;
LABEL_38:
      [v35 _setNetworkConnectionIntegrityPolicy:v31];
      goto LABEL_40;
    }

    v32 = *(WeakRetained + 177);
    *(WeakRetained + 177) = 0;
  }

LABEL_40:
  if (*(a1 + 80) == 1)
  {
    WeakRetained[1376] = [v35 _contentBlockersEnabled];
    if (v23)
    {
      WeakRetained[1840] = [v35 _allowPrivacyProxy];
    }

    v33 = [v35 safari_areAdvancedPrivacyProtectionsEnabled];
    WeakRetained[1842] = v33;
    [MEMORY[0x1E69C9788] determineContentRuleListStateForWebpagePreferences:v35 wasLoadedWithContentBlockersEnabled:WeakRetained[1376] wasLoadedWithAdvancedPrivacyProtectionsEnabled:v33];
    if ([MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      WeakRetained[1729] = [v35 _captivePortalModeEnabled];
    }
  }

  if (*(*(*(a1 + 48) + 8) + 40) && *(*(*(a1 + 56) + 8) + 24) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v34 = [MEMORY[0x1E695AC68] requestWithURL:*(*(*(a1 + 48) + 8) + 40)];
    [v35 _setAlternateRequest:v34];
    (*(*(a1 + 40) + 16))();

    goto LABEL_51;
  }

LABEL_50:
  (*(*(a1 + 40) + 16))();
LABEL_51:
}

void __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_decisionHandler___block_invoke_4;
    aBlock[3] = &unk_1E8492A70;
    v7 = *(a1 + 56);
    v5 = _Block_copy(aBlock);
    [WeakRetained _internalWebViewController:*(a1 + 32) decidePolicyForNavigationAction:*(a1 + 40) withResult:v3 decisionHandler:v5];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __121___SFBrowserContentViewController__internalWebViewController_decidePolicyForNavigationAction_withResult_decisionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _redirectToHostAppForAuthenticationSession:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __103___SFBrowserContentViewController_webViewController_decidePolicyForNavigationResponse_decisionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _didDecideNavigationPolicy:a2 forNavigationResponse:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __122___SFBrowserContentViewController_webViewController_createWebViewWithConfiguration_forNavigationAction_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) _openNewWebViewIfNeededWithConfiguration:*(a1 + 40) forNavigationAction:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

void __81___SFBrowserContentViewController__willCommitContextMenuForWebView_withAnimator___block_invoke(uint64_t a1)
{
  v1 = [_SFLinkPreviewHelper linkPreviewHelperForWebView:*(a1 + 32)];
  [v1 commitPreviewViewController];
}

void __54___SFBrowserContentViewController__receivedTouchDown___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1808) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1808);
  *(v2 + 1808) = 0;
}

uint64_t __74___SFBrowserContentViewController_navigationBarFormatMenuButtonWasTapped___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) reloadBrowsingAssistantIfNeeded];
  }

  return result;
}

void __69___SFBrowserContentViewController__translationAvailabilityDidChange___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) object];
  v2 = [*(a1 + 40) translationContext];

  v3 = v9;
  if (v9 == v2)
  {
    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 safari_numberForKey:*MEMORY[0x1E69C9A18]];

    if ([v5 unsignedIntegerValue])
    {
      [*(*(a1 + 40) + 1176) setShowsTranslationButton:1];
      v6 = [*(a1 + 40) assistantController];
      v7 = [*(a1 + 40) webViewController];
      v8 = [v7 url];
      [v6 didFindLocalContentWithOptions:64 forURL:v8];
    }

    v3 = v9;
  }
}

void __53___SFBrowserContentViewController_downloadDidFinish___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    [WeakRetained _showDownload:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 32) removeFromDisk];
  }
}

void __49___SFBrowserContentViewController__showDownload___block_invoke_362(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __49___SFBrowserContentViewController__showDownload___block_invoke_362_cold_1();
    }

    [*(a1 + 32) _showGenericDownloadAlert];
  }
}

void __49___SFBrowserContentViewController__showDownload___block_invoke_365(uint64_t a1, uint64_t a2, void *a3)
{
  block[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __49___SFBrowserContentViewController__showDownload___block_invoke_365_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49___SFBrowserContentViewController__showDownload___block_invoke_366;
    block[3] = &unk_1E8490658;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __97___SFBrowserContentViewController__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [v4 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __97___SFBrowserContentViewController__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97___SFBrowserContentViewController__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke_369;
    block[3] = &unk_1E84905C0;
    objc_copyWeak(v8, (a1 + 40));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(v8);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void __97___SFBrowserContentViewController__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke_369(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = WeakRetained[153];
    v3 = _WBSLocalizedString();
    v4 = _WBSLocalizedString();
    [v2 addAlertWithTitle:v3 bodyText:v4];

    WeakRetained = v5;
  }
}

void __73___SFBrowserContentViewController__fetchSharingURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = *(a1 + 32);
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

void __65___SFBrowserContentViewController__presentActivityViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) title];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65___SFBrowserContentViewController__presentActivityViewController__block_invoke_2;
  v8[3] = &unk_1E8495080;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v7 = v3;
  v10 = v7;
  v11 = *(a1 + 48);
  [v4 _fetchActivityViewControllerInfoForURL:v7 title:v5 completion:v8];
}

void __65___SFBrowserContentViewController__presentActivityViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!*(*(a1 + 32) + 1312))
  {
    v7 = [[_SFSafariSharingExtensionController alloc] initWithWebView:*(a1 + 40)];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1312);
    *(v8 + 1312) = v7;
  }

  if ([v6 containsObject:*MEMORY[0x1E69CDA68]])
  {
    v10 = [v6 arrayByAddingObject:@"com.apple.mobilesafari.activity.addToHomeScreen"];

    v6 = v10;
  }

  v11 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v11 = v5;
  }

  v12 = v11;

  v13 = [[_SFAddToHomeScreenActivity alloc] initWithWebView:*(a1 + 40)];
  v14 = [v12 arrayByAddingObject:v13];

  v15 = *(a1 + 32);
  v16 = *(v15 + 1600);
  *(v15 + 1600) = 0;

  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) title];
  v20 = [v18 _itemProviderCollectionForSharingURL:v17 title:v19];

  v21 = [_SFActivityViewController alloc];
  v22 = *(a1 + 48);
  v23 = [*(a1 + 40) URL];
  v24 = [(_SFActivityViewController *)v21 initWithActivityItemProviderCollection:v20 applicationActivities:v14 sharingURL:v22 sourceURL:v23];

  [(_SFActivityViewController *)v24 setSharingExtensionController:*(*(a1 + 32) + 1312)];
  [(_SFActivityViewController *)v24 setDelegate:*(a1 + 32)];
  if ([*(a1 + 32) _isUsedForAuthentication])
  {
    [(_SFActivityViewController *)v24 setExcludedActivityCategories:2];
    v25 = *MEMORY[0x1E69CDA70];
    v35[0] = *MEMORY[0x1E69CDA90];
    v35[1] = v25;
    v35[2] = *MEMORY[0x1E69CDA78];
    v35[3] = @"com.apple.mobilesafari.activity.addToHomeScreen";
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
    [(_SFActivityViewController *)v24 setExcludedActivityTypes:v26];
  }

  else if ([MEMORY[0x1E696AAE8] safari_isMobileSafariInstalled])
  {
    [(_SFActivityViewController *)v24 setExcludedActivityTypes:v6];
  }

  else
  {
    v27 = [v6 mutableCopy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [MEMORY[0x1E695DF70] array];
    }

    v30 = v29;

    [v30 addObject:*MEMORY[0x1E69CDA70]];
    [(_SFActivityViewController *)v24 setExcludedActivityTypes:v30];
  }

  [(_SFActivityViewController *)v24 setModalPresentationStyle:7];
  v31 = [[_SFPopoverPresentationDelegate alloc] initWithSourceInfo:*(a1 + 56)];
  v32 = [(_SFActivityViewController *)v24 popoverPresentationController];
  [(_SFPopoverPresentationDelegate *)v31 attachToPopoverPresentationController:v32];

  objc_storeStrong((*(a1 + 32) + 1600), v24);
  v33 = *(a1 + 32);
  v34 = [*(v33 + 1600) customizationController];
  [v34 setDelegate:v33];

  [*(a1 + 32) presentViewController:v24 animated:1 completion:0];
}

void __77___SFBrowserContentViewController__emailCurrentPageWithPreferredContentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _mailContentProvider];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77___SFBrowserContentViewController__emailCurrentPageWithPreferredContentType___block_invoke_2;
  v6[3] = &unk_1E84950D0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  [v4 getMailComposeViewControllerWithMailToURL:0 contentURL:v3 preferredContentType:v5 completionHandler:v6];
}

void __77___SFBrowserContentViewController__emailCurrentPageWithPreferredContentType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
  }
}

void __62___SFBrowserContentViewController_addCurrentPageToHomeScreen___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

void __88___SFBrowserContentViewController__perSiteAutomaticReaderActivationPreferenceDidChange___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) webViewController];
  v2 = [v9 readerController];
  v3 = [v2 isReaderAvailable];

  if ((v3 & 1) != 0 && [*(a1 + 32) _shouldAllowAutomaticReader])
  {
    v10 = [*(a1 + 40) userInfo];
    v4 = [v10 safari_stringForKey:*MEMORY[0x1E69C9210]];
    v5 = [*(a1 + 32) _committedDomainForPreferences];
    if ([v5 isEqualToString:v4])
    {
      v6 = [v10 safari_BOOLForKey:*MEMORY[0x1E69C9718]];
      v7 = *(a1 + 32);
      if (v7[1048] != v6)
      {
        [v7 _setShowingReader:v6 deactivationMode:2 animated:1];
        if (v6)
        {
          v8 = [MEMORY[0x1E69C8810] sharedLogger];
          [v8 didActivateReaderWithTrigger:1];
        }
      }
    }
  }
}

void __71___SFBrowserContentViewController__perSitePageZoomPreferenceDidChange___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) userInfo];
  v2 = [v9 safari_stringForKey:*MEMORY[0x1E69C9208]];
  v3 = [*(a1 + 40) webView];
  v4 = [v3 URL];
  v5 = [v4 safari_userVisibleHostWithoutWWWSubdomain];

  if ([v5 isEqualToString:v2])
  {
    v6 = [v9 safari_numberForKey:*MEMORY[0x1E69C9428]];
    [v6 doubleValue];
    v8 = v7;

    [v3 _setViewScale:v8];
  }
}

void __75___SFBrowserContentViewController__perSiteLockdownModePreferenceDidChange___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) userInfo];
  v2 = [v5 safari_stringForKey:*MEMORY[0x1E69C9200]];
  v3 = [*(a1 + 40) URLForPerSitePreferences];
  v4 = [v3 safari_userVisibleHostWithoutWWWSubdomain];

  if ([v4 isEqualToString:v2])
  {
    [*(a1 + 40) _reloadFromOrigin:0];
  }
}

void __63___SFBrowserContentViewController__updateDigitalHealthTracking__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained webViewController];
    v5 = [v4 webView];
    v6 = [v5 URL];

    if (v6)
    {
      v7 = [v3 _digitalHealthManager];
      if ([v3 _personaShouldUseScreenTime] && (objc_msgSend(v6, "isEqual:", v3[126]) & 1) == 0)
      {
        v8 = [v3 _hostAppBundleId];
        v9 = *MEMORY[0x1E69C8B58];
        [v7 updateUsageTrackingForURL:v3[126] withBundleIdentifier:v8 profileIdentifier:*MEMORY[0x1E69C8B58] toState:0];
        objc_storeStrong(v3 + 126, v6);
        [v7 updateUsageTrackingForURL:v3[126] withBundleIdentifier:v8 profileIdentifier:v9 toState:2];
      }

      v14[0] = v6;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __63___SFBrowserContentViewController__updateDigitalHealthTracking__block_invoke_2;
      v11[3] = &unk_1E8495148;
      objc_copyWeak(&v13, (a1 + 32));
      v12 = v6;
      [v7 getOverlayStateForURLs:v10 withCompletionHandler:v11];

      objc_destroyWeak(&v13);
    }
  }
}

void __63___SFBrowserContentViewController__updateDigitalHealthTracking__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63___SFBrowserContentViewController__updateDigitalHealthTracking__block_invoke_3;
  block[3] = &unk_1E8491718;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __63___SFBrowserContentViewController__updateDigitalHealthTracking__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
      v4 = [v3 integerValue];

      if ((v4 - 1) >= 5)
      {
        if (!v4)
        {
          [WeakRetained _hideDigitalHealthOverlay];
        }
      }

      else
      {
        [WeakRetained _showDigitalHealthOverlayWithPolicy:v4];
      }
    }
  }
}

uint64_t __82___SFBrowserContentViewController_stopDigitalHealthTrackingWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __82___SFBrowserContentViewController_stopDigitalHealthTrackingWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __82___SFBrowserContentViewController_stopDigitalHealthTrackingWithCompletionHandler___block_invoke_3;
  v2[3] = &unk_1E84911D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __68___SFBrowserContentViewController__presentSaveWebpageViewController__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) _canSaveWebpageForURL:?])
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) title];
    v5 = [v3 _itemProviderCollectionForSharingURL:v9 title:v4];

    v6 = [[_SFSaveToFilesOperation alloc] initWithActivityItemProviderCollection:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1592);
    *(v7 + 1592) = v6;

    [*(*(a1 + 32) + 1592) setDelegate:?];
    [*(*(a1 + 32) + 1592) start];
  }
}

void __93___SFBrowserContentViewController_translationContext_urlForCurrentPageWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) webView];
  v2 = [v3 URL];
  (*(v1 + 16))(v1, v2);
}

void __97___SFBrowserContentViewController_translationContext_showTranslationErrorAlertWithTitle_message___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69B1AF8]);
  [v2 setMessageType:1];
  [v2 setBannerText:*(a1 + 32) manuallyWrappedBannerText:0];
  [*(a1 + 40) _showCrashBanner:v2 animated:1];
}

void __69___SFBrowserContentViewController__translationContextStateDidChange___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) translationContext];
  [*(*(a1 + 32) + 1176) setShowsTranslationIcon:{objc_msgSend(v3, "hasStartedTranslating")}];

  v4 = [*(a1 + 32) webViewController];
  v2 = [*(*(a1 + 32) + 1992) webpageLocale];
  [v4 setUpFormTelemetryDataMonitorWithWebpageLocale:v2];
}

void __93___SFBrowserContentViewController__presentTranslationConsentAlertWithType_completionHandler___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__292;
  v15 = __Block_byref_object_dispose__293;
  v16 = objc_alloc_init(MEMORY[0x1E69C98A8]);
  [v12[5] setDelegate:*(a1 + 32)];
  v2 = v12[5];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __93___SFBrowserContentViewController__presentTranslationConsentAlertWithType_completionHandler___block_invoke_2;
  v8 = &unk_1E84951E8;
  v3 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = &v11;
  v4 = [v2 consentAlertForType:v3 withCompletionHandler:&v5];
  [*(a1 + 32) presentViewController:v4 animated:1 completion:{0, v5, v6, v7, v8}];

  _Block_object_dispose(&v11, 8);
}

void __93___SFBrowserContentViewController__presentTranslationConsentAlertWithType_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __93___SFBrowserContentViewController_browsingAssistantController_didUpdateContentOptionsForURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [*(*(a1 + 40) + 1800) summary];
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = [*(a1 + 48) absoluteString];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"https://" withString:@"safari-reader://"];
  v7 = [*(*(a1 + 40) + 1800) tableOfContentsTitles];
  v8 = [*(*(a1 + 40) + 1800) tableOfContentsPaths];
  v9 = [*(*(a1 + 40) + 1800) tableOfContentsTrailingTexts];
  LODWORD(v10) = [*(*(a1 + 40) + 1800) tableOfContentsType];
  [v2 setArticleSummary:v11 withSummaryHeader:v3 tableOfContentsHeader:v4 readerURLString:v6 titles:v7 paths:v8 trailingText:v9 tableOfContentsType:v10 attribution:0];
}

void __49___SFBrowserContentViewController__showDownload___block_invoke_362_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Greenfield download failed: %{public}@", v5);
}

void __49___SFBrowserContentViewController__showDownload___block_invoke_365_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Profile failed to install: %{public}@", v5);
}

void __97___SFBrowserContentViewController__showFinanceKitOrderPreviewControllerWithURL_dismissalHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Failed to save Wallet Order: %{public}@", v5);
}

@end
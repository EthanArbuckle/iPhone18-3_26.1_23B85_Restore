void sub_29C989178()
{
  v1 = objc_alloc_init(MEMORY[0x29EDC54F8]);
  v0 = [MEMORY[0x29EDC5470] sharedInstance];
  [v0 setStatusBarVisibilityHandler:v1];
}

void sub_29C989C70(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) expandedView];
  v5 = v4;
  if (a2)
  {
    [v4 setAlpha:1.0];

    v7 = [*(a1 + 32) delegate];
    v6 = [v7 contentModuleContext];
    [v6 requestExpandModule];
  }

  else
  {
    [v4 setAlpha:0.0];

    v7 = [*(a1 + 32) buttonView];
    [v7 setAlpha:1.0];
  }
}

uint64_t sub_29C98A034(uint64_t a1)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C98A100;
  v3[3] = &unk_29F339AD0;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = sub_29C98A42C;
  v2[3] = &unk_29F339AA8;
  v2[4] = v4;
  return [MEMORY[0x29EDC7DA0] animateKeyframesWithDuration:0 delay:v3 options:v2 animations:0.0 completion:0.0];
}

uint64_t sub_29C98A100(uint64_t a1)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C98A24C;
  v5[3] = &unk_29F339AD0;
  v5[4] = *(a1 + 32);
  [MEMORY[0x29EDC7DA0] addKeyframeWithRelativeStartTime:v5 relativeDuration:0.0 animations:0.0];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C98A30C;
  v4[3] = &unk_29F339AD0;
  v4[4] = *(a1 + 32);
  [MEMORY[0x29EDC7DA0] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.05 animations:0.95];
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = sub_29C98A394;
  v3[3] = &unk_29F339AD0;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x29EDC7DA0] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.65 animations:0.35];
}

void sub_29C98A24C(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonView];
  [v2 setAlpha:0.0];

  [*(a1 + 32) _iconViewInHomeGridCellFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) transitionIconView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [*(a1 + 32) transitionIconView];
  [v12 setHidden:0];
}

void sub_29C98A30C(uint64_t a1)
{
  [*(a1 + 32) _iconViewInNavigationHeaderViewFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) transitionIconView];
  [v10 setFrame:{v3, v5, v7, v9}];
}

void sub_29C98A394(uint64_t a1)
{
  v2 = 1.0;
  if (([*(a1 + 32) accessAllowedForCurrentLockState] & 1) == 0)
  {
    v3 = [*(a1 + 32) delegate];
    if ([v3 isDeviceUnlockedForModuleContentViewController:*(a1 + 32)])
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }
  }

  v4 = [*(a1 + 32) expandedView];
  [v4 setAlpha:v2];
}

void sub_29C98A42C(uint64_t a1)
{
  v2 = [*(a1 + 32) dashboardContainerViewController];
  [v2 willFinishTransition:objc_msgSend(*(a1 + 32) forCompactModule:{"isExpanded"), 1}];

  v3 = [*(a1 + 32) transitionIconView];
  [v3 setHidden:1];
}

uint64_t sub_29C98A4AC(uint64_t a1)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = sub_29C98A5CC;
  v6[3] = &unk_29F339AD0;
  v7 = *(a1 + 32);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C98A698;
  v5[3] = &unk_29F339AA8;
  v5[4] = v7;
  [MEMORY[0x29EDC7DA0] animateKeyframesWithDuration:0 delay:v6 options:v5 animations:0.0 completion:0.0];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = sub_29C98A718;
  v4[3] = &unk_29F339AD0;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  return [v2 addAnimations:v4];
}

uint64_t sub_29C98A5CC(uint64_t a1)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = sub_29C98A650;
  v2[3] = &unk_29F339AD0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x29EDC7DA0] addKeyframeWithRelativeStartTime:v2 relativeDuration:0.0 animations:0.5];
}

void sub_29C98A650(uint64_t a1)
{
  v1 = [*(a1 + 32) expandedView];
  [v1 setAlpha:0.0];
}

void sub_29C98A698(uint64_t a1)
{
  v2 = [*(a1 + 32) dashboardContainerViewController];
  [v2 willFinishTransition:objc_msgSend(*(a1 + 32) forCompactModule:{"isExpanded"), 1}];

  v3 = [*(a1 + 32) buttonView];
  [v3 setAlpha:1.0];
}

void sub_29C98A718(uint64_t a1)
{
  v1 = [*(a1 + 32) buttonView];
  [v1 setAlpha:1.0];
}

uint64_t sub_29C98A760(uint64_t a1)
{
  v2 = [*(a1 + 32) dashboardContainerViewController];
  [v2 willFinishTransition:objc_msgSend(*(a1 + 32) forCompactModule:{"isExpanded"), 1}];

  v3 = *(a1 + 40);

  return MEMORY[0x2A1C70FE8](v3, sel_startAnimation);
}

void sub_29C98ACD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 launchHomeAppForModuleContentViewController:WeakRetained];
}

void sub_29C98B5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C98B5D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_29C988000, v2, OS_LOG_TYPE_DEFAULT, "Lock state has changed, checking access.", v3, 2u);
  }

  [WeakRetained _updateAccessAllowedForLockState];
}

void sub_29C98BCA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_29C98BCC4(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = HFLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_29C98CC78(v2);
    }
  }

  return 0;
}

void sub_29C98BD18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [WeakRetained _configureAndAddRemoteViewController:v3 forHome:*(a1 + 32)];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_29C98CCBC(v5);
    }
  }
}

void sub_29C98BF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C98BF68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTransitionSubviewFrames:v3];
}

void sub_29C98C3A0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) serviceViewControllerProxy];
  [v3 lockAuthenticationCompleted:a2];
}

void HUCCPerformCommonInitialization()
{
  if (qword_2A179A1D0 != -1)
  {
    sub_29C98CD78();
  }
}

void sub_29C98C5A4()
{
  v0 = [MEMORY[0x29EDC5390] configuration];
  v3 = [v0 mutableCopy];

  [v3 setAdaptive:1];
  [MEMORY[0x29EDC5390] setConfiguration:v3];
  v1 = [MEMORY[0x29EDC5390] sharedDispatcher];
  [v1 warmup];

  v2 = [MEMORY[0x29EDC5378] sharedInstance];
  [v2 setRunningState:1];
}

void HUCCUpdateRunningStateWithAppleMediaAccessories(int a1, uint64_t a2)
{
  v4 = [MEMORY[0x29EDC5378] sharedInstance];
  v5 = [v4 runningState];

  if (v5 != (a1 ^ 1))
  {
    if (a1)
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v6 = [MEMORY[0x29EDC5368] sharedManager];
        [v6 enableNotificationsForSelectedHomeWithReason:*MEMORY[0x29EDC5340] numberOfAppleMediaAccessories:a2];
      }

      v8 = [MEMORY[0x29EDC5378] sharedInstance];
      [v8 executionEnvironmentWillEnterForeground];
    }

    else
    {
      v7 = [MEMORY[0x29EDC5378] sharedInstance];
      [v7 executionEnvironmentDidEnterBackground];

      if (_os_feature_enabled_impl())
      {
        return;
      }

      v8 = [MEMORY[0x29EDC5368] sharedManager];
      [v8 disableNotificationsForSelectedHomeWithReason:*MEMORY[0x29EDC5338]];
    }
  }
}

void launchHomeAppForModuleViewController(void *a1, void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = a1;
  if (a2)
  {
    v4 = a2;
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_29C988000, v5, OS_LOG_TYPE_DEFAULT, "Launching Home app for moduleViewController %@", &v8, 0xCu);
    }

    v6 = [MEMORY[0x29EDB8E70] URLWithString:@"com.apple.home://"];
    [v4 openURL:v6 completionHandler:0];
  }

  v7 = *MEMORY[0x29EDCA608];
}

__CFString *HUCCStringForOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_29F339C28[a1 - 1];
  }
}

void sub_29C98CBC4(uint64_t a1, SEL aSelector, NSObject *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v5 = NSStringFromSelector(aSelector);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_29C988000, a3, OS_LOG_TYPE_ERROR, "%@ Asked for %@ before transition subview frames were set!", &v7, 0x16u);

  v6 = *MEMORY[0x29EDCA608];
}

void sub_29C98CD00(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C988000, a2, OS_LOG_TYPE_ERROR, "Remote Dashboard View Controller View Service terminated  (error: %@)", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}
void sub_1704(id a1)
{
  qword_3B2C0 = objc_opt_new();

  _objc_release_x1();
}

uint64_t sub_2E48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2E60(uint64_t a1)
{
  v2 = [*(a1 + 32) sb_hostWrapperForUseInWindow:*(a1 + 40) hostRequester:*(a1 + 48)];
  v3 = __UIAccessibilitySafeClass();

  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_2EF0(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) contextHostWrappers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        AXPerformSafeBlock();
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) hostedApplicationWindow];
  [v7 setHidden:1];

  [*(a1 + 32) setHostedApplicationWindow:0];
  return [*(a1 + 32) setContextHostWrappers:0];
}

id sub_3084(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 transform];
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
    memset(&v5, 0, sizeof(v5));
  }

  CGAffineTransformScale(&v6, &v5, *(a1 + 56), *(a1 + 56));
  v5 = v6;
  return [v3 setTransform:&v5];
}

void sub_3870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_3888(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3900;
  v3[3] = &unk_2C748;
  v4 = *(a1 + 40);
  return [v1 enumerate:v3];
}

void sub_3900(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = [a3 safeStringForKey:@"bundleIdentifier"];
  v6 = [*(a1 + 32) frontmostAppIdentifier];
  v7 = [v8 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_3D0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  AXPerformBlockOnMainThreadAfterDelay();
}

void sub_3EDC(uint64_t a1)
{
  v2 = [*(a1 + 32) lockScreenDisableAssertion];

  if (v2)
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "GuidedAccess is trying to acquire the screen lock assertion, but we already have it!", buf, 2u);
    }
  }

  else
  {
    v4 = [SBUILockScreenDisableAssertion lockScreenDisableAssertionWithIdentifier:@"GuidedAccess"];
    [*(a1 + 32) setLockScreenDisableAssertion:v4];
  }
}

void sub_4018(uint64_t a1)
{
  if (SBSIsSystemApertureAvailable())
  {
    v2 = [*(a1 + 32) systemApertureInertAssertion];

    if (!v2)
    {
      v3 = GAXLogCommon();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Requesting system aperture to become inert...", v10, 2u);
      }

      v4 = +[AXSpringBoardServer server];
      v5 = [v4 _windowsToHost];
      v6 = [v5 firstObject];
      v7 = [v6 safeValueForKey:@"windowScene"];
      v8 = [v7 safeValueForKey:@"systemApertureController"];

      v9 = [v8 restrictSystemApertureToInertWithReason:@"Guided Access starting"];
      [*(a1 + 32) setSystemApertureInertAssertion:v9];
    }
  }
}

void sub_41B0(uint64_t a1)
{
  if (SBSIsSystemApertureAvailable())
  {
    v2 = [*(a1 + 32) systemApertureInertAssertion];

    if (v2)
    {
      v3 = GAXLogCommon();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Invalidating system aperture inertion...", v5, 2u);
      }

      v4 = [*(a1 + 32) systemApertureInertAssertion];
      [v4 invalidateWithReason:@"Guided Access ending"];

      [*(a1 + 32) setSystemApertureInertAssertion:0];
    }
  }
}

void sub_42D4(uint64_t a1)
{
  v2 = [*(a1 + 32) captureButtonSuppressionAssertion];

  if (v2)
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Guided Access is trying to acquire inert assertion for camera button, but we already have it!", buf, 2u);
    }
  }

  else
  {
    v6 = +[UIApplication sharedApplication];
    v4 = [v6 safeValueForKey:@"captureButtonRestrictionCoordinator"];
    v5 = [v4 inhibitCaptureButtonActionAssertionWithReason:@"Guided Access Starting"];
    [*(a1 + 32) setCaptureButtonSuppressionAssertion:v5];
  }
}

id sub_4444(uint64_t a1)
{
  v2 = [*(a1 + 32) captureButtonSuppressionAssertion];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setCaptureButtonSuppressionAssertion:0];
}

void sub_497C(uint64_t a1, void *a2)
{
  v15 = a2;
  v14 = [v15 contentViewController];
  v3 = [v14 safeDictionaryForKey:@"liveContentOverlays"];
  v4 = [v3 allValues];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v20 + 1) + 8 * i) safeValueForKey:@"deviceApplicationSceneViewController"];
        AXSafeClassFromString();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v10 = [v9 safeValueForKey:@"_deviceApplicationSceneViewController"];
          v11 = __UIAccessibilityCastAsSafeCategory();

          v18 = [v9 safeValueForKey:@"_topAffordanceViewController"];
          v19 = *(a1 + 32);
          v12 = v18;
          AXPerformSafeBlock();
        }

        else
        {
          objc_opt_class();
          v11 = __UIAccessibilityCastAsSafeCategory();
        }

        [v11 _gaxSetShouldSuppressBottomGrabber:*(a1 + 32) == 2];
        v17 = v11;
        v13 = v11;
        AXPerformSafeBlock();
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }
}

void sub_4D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4DB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = +[AXSettings sharedInstance];
    v3 = [v2 guestPassSessionIsActive];

    [v4 handleGuestPassSessionChanged:v3];
    WeakRetained = v4;
  }
}

id sub_5220(uint64_t a1)
{
  result = [*(a1 + 32) isActive];
  if (result)
  {
    result = [*(a1 + 32) allowsVolumeButtons];
    if ((result & 1) == 0 && vabds_f32(*(a1 + 40), *(a1 + 44)) > 0.00000011921)
    {
      v3 = GAXLogCommon();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        v6 = 134217984;
        v7 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Volume buttons are disabled, so undoing effective volume change and putting back old volume: %f", &v6, 0xCu);
      }

      LODWORD(v5) = *(a1 + 40);
      return [*(a1 + 32) _updateAVSystemControllerWithVolume:v5];
    }
  }

  return result;
}

void sub_56CC(uint64_t a1)
{
  v3 = [*(a1 + 40) payload];
  v2 = [v3 objectForKey:@"GAXIPCPayloadKeyFrontmostAppIdentifier"];
  [*(a1 + 32) setFrontmostAppIdentifier:v2];
}

void sub_5844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_585C(uint64_t a1)
{
  memset(v51, 0, 28);
  extractGAXBackboardStateFromMessage(*(a1 + 32), v51);
  v43 = 0;
  v44 = &v43;
  v45 = 0x4010000000;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v46 = &unk_281A9;
  v47 = 0;
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5DD0;
  block[3] = &unk_2C8A8;
  block[4] = v2;
  block[5] = &v43;
  *(v42 + 12) = *(v51 + 12);
  v42[0] = v51[0];
  dispatch_sync(v3, block);
  v4 = v51[0];
  v5 = *(v44 + 8);
  [*(a1 + 40) _updateSpringBoardForServerMode:LODWORD(v51[0]) previousServerMode:v5];
  v6 = +[AXSpringBoardServer server];
  [v6 updateLockAndIdleTimers];

  v7 = *(a1 + 40);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [v7 _releaseLockScreenDisableAssertion];
    [*(a1 + 40) _acquireLockScreenDisableAssertion];
  }

  else
  {
    [v7 _releaseLockScreenDisableAssertion];
  }

  if (v4 != 1 && v5 == 1)
  {
    v8 = +[AXSpringBoardServer server];
    [v8 animateWallpaperStyleToOriginal];
LABEL_21:

    goto LABEL_22;
  }

  if (v5 == 2)
  {
    v9 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
    v10 = [v9 safeValueForKey:@"_iconModel"];
    v11 = [v10 safeValueForKey:@"applicationDataSource"];
    v28 = v9;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0x3032000000;
    v55 = sub_2E48;
    v56 = sub_2E58;
    v57 = 0;
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_5E00;
    v37 = &unk_2C8D0;
    p_buf = &buf;
    v27 = v11;
    v38 = v27;
    v12 = v10;
    v39 = v12;
    AXPerformSafeBlock();
    v13 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v52 count:16];
    if (v15)
    {
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = [*(*(&v30 + 1) + 8 * i) safeStringForKey:{@"bundleIdentifier", v27}];
          v19 = [v12 applicationIconForBundleIdentifier:v18];

          if (v19)
          {
            AXSafeClassFromString();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = AXLogValidations();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v19;
                _os_log_fault_impl(&dword_0, v20, OS_LOG_TYPE_FAULT, "Unexpected type for icon: %@", &buf, 0xCu);
              }
            }
          }

          v21 = [v19 safeValueForKey:@"_notifyLaunchEnabledDidChange"];
        }

        v15 = [v14 countByEnumeratingWithState:&v30 objects:v52 count:16];
      }

      while (v15);
    }

    v22 = [v28 safeValueForKeyPath:@"mainDisplayWindowScene.floatingDockController"];
    v23 = [v22 safeValueForKey:@"_viewController"];
    v24 = [v23 safeValueForKey:@"floatingDockViewController"];
    v25 = [v24 safeValueForKey:@"suggestionsViewController"];
    v26 = [v25 safeValueForKey:@"suggestionsIconListModel"];

    v29 = v26;
    AXPerformSafeBlock();

    v8 = v28;
    goto LABEL_21;
  }

LABEL_22:
  _Block_object_dispose(&v43, 8);
}

__n128 sub_5DD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v1 + 8);
  *(v2 + 44) = *(v1 + 20);
  *(v2 + 32) = v3;
  v4 = *(a1 + 32);
  result = *(a1 + 48);
  *(v4 + 20) = *(a1 + 60);
  *(v4 + 8) = result;
  return result;
}

uint64_t sub_5E00(uint64_t a1)
{
  v2 = [*(a1 + 32) allApplicationsForIconModel:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_642C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_6470(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_64E8;
  v3[3] = &unk_2C938;
  v4 = *(a1 + 40);
  return [v1 _prepareTransitionToWorkspaceWithCompletionHandler:v3];
}

uint64_t sub_64E8(uint64_t result, char a2)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

void sub_6600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_6618(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v1 + 8);
  *(v2 + 44) = *(v1 + 20);
  *(v2 + 32) = v3;
  v4 = *(a1 + 32);
  result = *(a1 + 48);
  *(v4 + 20) = *(a1 + 60);
  *(v4 + 8) = result;
  return result;
}

void sub_67BC(uint64_t a1)
{
  +[NSDate timeIntervalSinceReferenceDate];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_72E8;
  v77[3] = &unk_2C980;
  v77[4] = v1;
  v2 = objc_retainBlock(v77);
  AXPerformBlockSynchronouslyOnMainThread();
  v3 = (v2[2])(v2);
  if (v3)
  {
    v4 = @"Launch time expired trying to unlock device";
  }

  else
  {
    v4 = @"Launch time expired trying to unlock device";
    while (1)
    {
      LOBYTE(v71) = 0;
      v5 = +[AXSpringBoardServer server];
      v6 = [v5 isScreenLockedWithPasscode:&v71];

      if ((v6 & 1) == 0)
      {
        break;
      }

      [NSThread sleepForTimeInterval:0.2];
      AXPerformBlockSynchronouslyOnMainThread();
      v7 = (v2[2])(v2);
      v3 = v7;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v4 = 0;
  }

LABEL_8:
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_2E48;
  v75 = sub_2E58;
  v76 = 0;
  v66 = _NSConcreteStackBlock;
  v67 = 3221225472;
  v68 = sub_7374;
  v69 = &unk_2C9C8;
  v70 = &v71;
  AXPerformBlockSynchronouslyOnMainThread();
  if ((v3 & 1) == 0)
  {
    v4 = @"Launch time expired trying to make SB frontmost";
    while (1)
    {
      v8 = +[AXSpringBoardServer server];
      v9 = [v8 isSystemAppFrontmost];

      if (v9)
      {
        break;
      }

      if ((v2[2])(v2))
      {
        goto LABEL_20;
      }

      v10 = GAXLogAppLaunching();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Handling app launch request; need to make SpringBoard frontmost", &buf, 2u);
      }

      AXPerformBlockSynchronouslyOnMainThread();
      [NSThread sleepForTimeInterval:0.2];
    }

    v4 = @"Launch time expired waiting for SB to say it can launch apps";
    while (1)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v82 = 0x2020000000;
      LOBYTE(v83) = 0;
      v61 = _NSConcreteStackBlock;
      v62 = 3221225472;
      v63 = sub_7428;
      v64 = &unk_2C9C8;
      p_buf = &buf;
      AXPerformBlockSynchronouslyOnMainThread();
      if (*(*(&buf + 1) + 24) == 1)
      {
        break;
      }

      [NSThread sleepForTimeInterval:0.2];
      v11 = (v2[2])(v2);
      _Block_object_dispose(&buf, 8);
      if (v11)
      {
        goto LABEL_20;
      }
    }

    _Block_object_dispose(&buf, 8);
    v4 = 0;
  }

LABEL_20:
  v12 = [v72[5] objectForKeyedSubscript:*(a1 + 32)];
  v13 = v12 == 0;

  if (!v13)
  {
    [NSThread sleepForTimeInterval:1.0];
  }

  if (!v4)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v82 = 0x3032000000;
    v83 = sub_2E48;
    v84 = sub_2E58;
    v85 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_74A0;
    v48[3] = &unk_2CA10;
    v50 = &buf;
    v51 = &v57;
    v52 = &v53;
    v49 = *(a1 + 32);
    v14 = objc_retainBlock(v48);
    AXPerformBlockSynchronouslyOnMainThread();
    v15 = GAXLogAppLaunching();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v78 = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Trying to launch the app. Capped by the launch timer beginning roughly now...", v78, 2u);
    }

    while (1)
    {
      v16 = GAXLogAppLaunching();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v58[3];
        v18 = v54[3];
        v19 = *(a1 + 32);
        *v78 = 67109634;
        *v79 = v17;
        *&v79[4] = 1024;
        *&v79[6] = v18;
        *v80 = 2112;
        *&v80[2] = v19;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "App visibility: %d state: %d (bundleID %@)", v78, 0x18u);
      }

      if (v58[3] != 2 || v54[3] != 2)
      {
        v45[1] = _NSConcreteStackBlock;
        v45[2] = 3221225472;
        v45[3] = sub_75D0;
        v45[4] = &unk_2CA38;
        v47 = &buf;
        v46 = v14;
        AXPerformBlockSynchronouslyOnMainThread();
        v20 = GAXLogAppLaunching();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(*(&buf + 1) + 40);
          v22 = v58[3];
          v23 = v54[3];
          *v78 = 138412802;
          *v79 = v21;
          *&v79[8] = 1024;
          *v80 = v22;
          *&v80[4] = 1024;
          *&v80[6] = v23;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Refreshed due to process visibility/state. App: %@ visibility: %d state: %d", v78, 0x18u);
        }
      }

      if ((v2[2])(v2))
      {
        v4 = @"Launch time expired waiting to app to move to foreground";
        goto LABEL_52;
      }

      if (v58[3] == 2 && v54[3] == 2)
      {
        break;
      }

      [NSThread sleepForTimeInterval:1.0];
      AXPerformBlockSynchronouslyOnMainThread();
      v24 = GAXLogAppLaunching();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v58[3];
        v26 = v54[3];
        *v78 = 67109376;
        *v79 = v25;
        *&v79[4] = 1024;
        *&v79[6] = v26;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Refreshed after quick nap. App visibility: %d state: %d", v78, 0xEu);
      }

      v27 = [[AXIPCMessage alloc] initWithKey:13018 payload:0];
      v28 = [*(a1 + 40) backboardClient];
      v45[0] = 0;
      v29 = [v28 sendMessage:v27 withError:v45];
      v30 = v45[0];

      if (v30)
      {
        v31 = GAXLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *v78 = 138412290;
          *v79 = v30;
          _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Couldn't get app launch generation: %@", v78, 0xCu);
        }
      }

      v32 = [v29 payload];
      v33 = [v32 objectForKeyedSubscript:@"GAXIPCPayloadKeyAppLaunchGeneration"];

      if (v30 || (v34 = [v33 unsignedLongValue], v34 == objc_msgSend(*(a1 + 48), "unsignedLongValue")))
      {
        v4 = 0;
        v35 = 1;
      }

      else
      {
        v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"App launch generation changed while launching app (%lu, %lu)", [*(a1 + 48) unsignedLongValue], objc_msgSend(v33, "unsignedLongValue"));
        v35 = 0;
      }

      if (!v35)
      {
        if (v4)
        {
          goto LABEL_52;
        }

        break;
      }

      if (v4)
      {
        goto LABEL_52;
      }
    }

    [*(a1 + 40) _sendMessageToBackboardWithIdentifier:13003 payload:0 description:@"Get active app interface orientation" replyHandler:&stru_2CA78];
    v4 = 0;
LABEL_52:

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&buf, 8);
  }

  v36 = [[NSDictionary alloc] initWithObjectsAndKeys:{*(a1 + 56), @"GAXIPCPayloadKeyProfileConfiguration", *(a1 + 48), @"GAXIPCPayloadKeyAppLaunchGeneration", v4, @"GAXIPCPayloadKeyErrorMessage", 0}];
  v37 = GAXLogAppLaunching();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v38;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Guided Access did finish launching app with bundle ID: %@", &buf, 0xCu);
  }

  v39 = +[AXReplayer replayer];
  v40 = dispatch_get_global_queue(0, 0);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_77C4;
  v43[3] = &unk_2CAC0;
  v43[4] = *(a1 + 40);
  v41 = v36;
  v44 = v41;
  [v39 replayWithName:@"did finish launching application" attempts:20 interval:1 async:v40 queue:v43 replayBlock:&stru_2CB00 completion:0.2];

  _Block_object_dispose(&v71, 8);
}

void sub_7260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose((v66 - 192), 8);
  _Block_object_dispose(&a66, 8);
  _Unwind_Resume(a1);
}

void sub_732C(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 unlockDevice];
}

void sub_7374(uint64_t a1)
{
  v5 = +[AXSpringBoardServerHelper sharedServerHelper];
  v2 = [v5 medusaBundleIDsToLayoutRoles];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_73E0(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 quitTopApplication];
}

void sub_7428(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [v3 safeValueForKey:@"_accessibilityShouldAllowAppLaunch"];
  *(*(*(a1 + 32) + 8) + 24) = [v2 BOOLValue];
}

void sub_74A0(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (!v2 || !*(*(a1[6] + 8) + 24) || !*(*(a1[7] + 8) + 24))
  {
    v3 = GAXLogAppLaunching();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_16704(v3);
    }

    v4 = +[AXSpringBoardServer server];
    v5 = [v4 applicationWithIdentifier:a1[4]];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v2 = *(*(a1[5] + 8) + 40);
  }

  v8 = [v2 safeValueForKey:@"processState"];
  v9 = [v8 safeValueForKey:@"visibility"];
  *(*(a1[6] + 8) + 24) = [v9 unsignedIntegerValue];

  v10 = [v8 safeValueForKey:@"taskState"];
  *(*(a1[7] + 8) + 24) = [v10 unsignedIntegerValue];
}

uint64_t sub_75D0(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = +[AXSpringBoardServerHelper sharedServerHelper];
    [v2 launchApplicationWithFullConfiguration:*(*(*(a1 + 40) + 8) + 40)];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_7644(id a1, AXIPCMessage *a2, NSError *a3)
{
  v3 = [(AXIPCMessage *)a2 payload];
  v4 = [v3 objectForKey:@"GAXIPCPayloadKeyAppInterfaceOrientation"];
  [v4 unsignedIntegerValue];

  AXPerformBlockSynchronouslyOnMainThread();
}

void sub_7768(uint64_t a1)
{
  v2 = +[UIDevice currentDevice];
  [v2 gax_forceSetOrientation:*(a1 + 32) animated:1];
}

void sub_77E0(id a1, BOOL a2, id a3, NSError *a4)
{
  v5 = a4;
  if (!a2)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_16748();
    }
  }
}

void sub_7A44(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 unlockDevice];
}

void sub_8190(id a1)
{
  v1 = +[TUCallCenter sharedInstance];
  [v1 disconnectAllCalls];
}

void sub_81FC(id a1)
{
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 safeValueForKey:@"notificationDispatcher"];
  v3 = [v2 safeValueForKey:@"bannerDestination"];

  v4 = [v3 safeValueForKey:@"_presentedNotificationPresentableVC"];
  v5 = [v4 safeValueForKey:@"notificationViewController"];
  v6 = [v5 safeValueForKey:@"notificationRequest"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "No notification banner to dismiss.", buf, 2u);
    }
  }

  else
  {
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 safeValueForKey:@"bannerManager"];

    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 0;
    v11 = v10;
    v17 = v4;
    AXPerformSafeBlock();
    v12 = v19[24];

    _Block_object_dispose(buf, 8);
    v13 = GAXLogCommon();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12 == 1)
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Dismissing notification banner.", buf, 2u);
      }

      v16 = v3;
      AXPerformSafeBlock();
      v13 = v16;
    }

    else if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Not dismissing notification banner, as it is still queued and not yet presented.", buf, 2u);
    }
  }

  v15 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  [v15 _enumerateSwitcherControllersWithBlock:&stru_2CBF0];
}

void sub_84F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8508(void *a1)
{
  v2 = a1[4];
  v3 = [v2 windowSceneForPresentable:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 isDisplayingBannerInWindowScene:v3];
}

id sub_8570(uint64_t a1)
{
  [*(a1 + 32) _performCancelAction];
  v2 = *(a1 + 32);

  return [v2 _dismissPresentedBannerAnimated:0 reason:@"Guided Access" forceIfSticky:1];
}

void sub_85BC(id a1, id a2, BOOL *a3)
{
  v6 = [a2 safeValueForKey:@"_gestureManager"];
  v3 = [v6 safeValueForKey:@"fluidDragAndDropManager"];
  v4 = [v3 safeValueForKey:@"dropInteraction"];
  v5 = [v4 view];
  [v5 removeInteraction:v4];
  [v5 addInteraction:v4];
}

void sub_89D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_89F8(uint64_t a1)
{
  v2 = [*(a1 + 32) backboardClient];
  if ([v2 verifyConnectionExists])
  {
    v3 = [[AXIPCMessage alloc] initWithKey:*(a1 + 64) payload:*(a1 + 40)];
    v4 = *(*(a1 + 56) + 8);
    obj = *(v4 + 40);
    v5 = [v2 sendSimpleMessage:v3 withError:&obj];
    objc_storeStrong((v4 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v5;
  }
}

void sub_8C28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GAXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_16824(a1, v3, v4);
  }
}

void sub_8C8C(uint64_t a1)
{
  v2 = [*(a1 + 32) backboardClient];
  if ([v2 verifyConnectionExists])
  {
    v3 = [[AXIPCMessage alloc] initWithKey:*(a1 + 64) payload:*(a1 + 40)];
    v4 = *(a1 + 48);
    if (v4)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_8DC0;
      v7[3] = &unk_2CC68;
      v8 = v4;
      v9 = *(a1 + 56);
      [v2 sendAsyncMessage:v3 withReplyHandler:v7];

      v5 = v8;
    }

    else
    {
      v10 = 0;
      v6 = [v2 sendSimpleMessage:v3 withError:&v10];
      v5 = v10;
      if ((v6 & 1) == 0)
      {
        (*(*(a1 + 56) + 16))();
      }
    }
  }
}

uint64_t sub_8DC0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = (*(*(a1 + 32) + 16))();
  if (v6)
  {
    v4 = (*(*(a1 + 40) + 16))();
  }

  return _objc_release_x1(v4);
}

void sub_9108(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_9130(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_92D0(uint64_t a1)
{
  v2 = +[GAXSpringboard sharedInstance];
  [v2 deviceWasUnlocked];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_95E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_9608(void *a1)
{
  v2 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

BOOL sub_978C(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 validateClass:@"SBApplication"];
  [(AXValidationManager *)v2 validateClass:@"SBApplicationController"];
  [(AXValidationManager *)v2 validateClass:@"SBConferenceManager"];
  [(AXValidationManager *)v2 validateClass:@"SBIconController"];
  [(AXValidationManager *)v2 validateClass:@"SBUIController"];
  [(AXValidationManager *)v2 validateClass:@"SBUserNotificationAlert"];
  [(AXValidationManager *)v2 validateClass:@"SBPasscodeAlertItem"];
  [(AXValidationManager *)v2 validateClass:@"SBWorkspace"];
  [(AXValidationManager *)v2 validateClass:@"SBApplicationController" hasClassMethod:@"sharedInstance" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMediaController" hasClassMethod:@"sharedInstance" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBSceneManagerCoordinator" hasClassMethod:@"mainDisplaySceneManager" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBUIController" hasClassMethod:@"sharedInstance" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBWallpaperController" hasClassMethod:@"sharedInstance" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"NSObject" hasClassMethod:@"__accessibilityGuidedAccessStateEnabled" withFullSignature:"B", 0];
  [(AXValidationManager *)v2 validateClass:@"SBWorkspace" hasClassMethod:@"mainWorkspace" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBTelephonyManager" hasClassMethod:@"sharedTelephonyManager" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBApplication" hasInstanceMethod:0 withFullSignature:?];
  [(AXValidationManager *)v2 validateClass:@"SBApplication" hasInstanceMethod:@"displayName" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBApplication" hasInstanceMethod:@"isWebApplication" withFullSignature:"B", 0];
  [(AXValidationManager *)v2 validateClass:@"SBApplicationController" hasInstanceMethod:@"applicationWithBundleIdentifier:" withFullSignature:"@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBApplicationController" hasInstanceMethod:@"runningApplications" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBTelephonyManager" hasInstanceMethod:@"disconnectAllCalls" withFullSignature:"v", 0];
  [(AXValidationManager *)v2 validateClass:@"SBIconController" hasInstanceMethod:@"model" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBIconModel" hasInstanceMethod:@"applicationIconForBundleIdentifier:" withFullSignature:"@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBLockScreenManager" hasInstanceMethod:@"isUILocked" withFullSignature:"B", 0];
  [(AXValidationManager *)v2 validateClass:@"SBUIController" hasInstanceMethod:@"handleHomeButtonSinglePressUpForWindowScene:" withFullSignature:"B", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBWallpaperController" hasInstanceMethod:@"requireWallpaperWithReason:" withFullSignature:"@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBWallpaperController" hasInstanceMethod:@"setWallpaperStyle:forPriority:forVariant:withAnimationFactory:" withFullSignature:"B", "q", "q", "q", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBWallpaperController" hasInstanceMethod:@"removeWallpaperStyleForPriority: forVariant: withAnimationFactory:" withFullSignature:"B", "q", "q", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"FBProcess" hasInstanceMethod:@"bundleIdentifier" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"FBScene" hasInstanceMethod:@"clientProcess" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBIcon"];
  [(AXValidationManager *)v2 validateClass:@"SBIcon" hasInstanceMethod:@"_notifyLaunchEnabledDidChange" withFullSignature:"v", 0];
  [(AXValidationManager *)v2 validateClass:@"SBIconModel" isKindOfClass:@"SBHIconModel"];
  [(AXValidationManager *)v2 validateClass:@"SBHIconModel" hasInstanceMethod:@"applicationDataSource" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateProtocol:@"SBHIconModelApplicationDataSource" hasRequiredInstanceMethod:@"allApplicationsForIconModel:"];
  [(AXValidationManager *)v2 validateProtocol:@"SBHApplication" hasRequiredInstanceMethod:@"bundleIdentifier"];
  [(AXValidationManager *)v2 validateClass:@"SBHIconModel" hasInstanceMethod:@"applicationIconForBundleIdentifier:" withFullSignature:"@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBIconListModel" hasInstanceMethod:@"enumerateIconsUsingBlock:" withFullSignature:"v", "@?", 0];
  [(AXValidationManager *)v2 validateClass:@"SBIconController" hasInstanceMethod:@"mainDisplayWindowScene" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBWindowScene" hasInstanceMethod:@"floatingDockController" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBFloatingDockController" hasInstanceVariable:@"_viewController" withType:"SBFloatingDockRootViewController"];
  [(AXValidationManager *)v2 validateClass:@"SBFloatingDockRootViewController" hasInstanceMethod:@"floatingDockViewController" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBFloatingDockViewController" hasInstanceMethod:@"suggestionsViewController" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBFloatingDockSuggestionsViewController" hasInstanceMethod:@"suggestionsIconListModel" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIDevice" hasInstanceMethod:@"setOrientation: animated:" withFullSignature:"v", "q", "B", 0];
  [(AXValidationManager *)v2 validateClass:@"SBUserNotificationAlert" hasInstanceVariable:@"_soundPath" withType:"NSString"];
  [(AXValidationManager *)v2 validateClass:@"UIWindow" hasInstanceMethod:@"sb_hostWrapperForUseInWindow: hostRequester:" withFullSignature:"@", "@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBWindowSelfHostWrapper" hasInstanceMethod:@"hostView" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBWindowSelfHostWrapper" hasInstanceMethod:@"stopHosting" withFullSignature:"v", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"requestTransitionWithBuilder:" withFullSignature:"B", "@?", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMainWorkspaceTransitionRequest" hasInstanceMethod:@"setSource:" withFullSignature:"v", "q", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMainWorkspaceTransitionRequest" isKindOfClass:@"SBWorkspaceTransitionRequest"];
  [(AXValidationManager *)v2 validateClass:@"SBWorkspaceTransitionRequest" hasInstanceMethod:@"modifyApplicationContext:" withFullSignature:"v", "@?", 0];
  [(AXValidationManager *)v2 validateClass:@"SBWorkspaceApplicationSceneTransitionContext" hasInstanceMethod:@"setEntity:forLayoutRole:" withFullSignature:"v", "@", "q", 0];
  [(AXValidationManager *)v2 validateClass:@"SBDeviceApplicationSceneEntity" hasInstanceMethod:@"initWithApplicationForMainDisplay:" withFullSignature:"@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBIdleTimerGlobalCoordinator" hasClassMethod:@"sharedInstance" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBIdleTimerGlobalCoordinator" hasInstanceMethod:@"resetIdleTimerForReason:" withFullSignature:"v", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBApplication" hasInstanceMethod:@"processState" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"visibility" withFullSignature:"q", 0];
  [(AXValidationManager *)v2 validateClass:@"SBApplicationProcessState" hasInstanceMethod:@"taskState" withFullSignature:"q", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMainWorkspace" hasInstanceMethod:@"transientOverlayPresentationManager" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBTransientOverlayPresentationManager" hasInstanceMethod:@"hasActivePresentation" withFullSignature:"B", 0];
  [(AXValidationManager *)v2 validateClass:@"SBTransientOverlayPresentationManager" hasInstanceVariable:@"_presentersByWindowScene" withType:"NSMapTable"];
  [(AXValidationManager *)v2 validateClass:@"SBTransientOverlayScenePresenter" hasInstanceVariable:@"_entities" withType:"NSMutableArray"];
  [(AXValidationManager *)v2 validateClass:@"_SBTransientOverlayPresentedEntity" hasInstanceMethod:@"window" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SpringBoard" hasInstanceMethod:@"notificationDispatcher" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBNCNotificationDispatcher" hasInstanceMethod:@"bannerDestination" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_presentedNotificationPresentableVC" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBNotificationPresentableViewController" isKindOfClass:@"NCNotificationPresentableViewController"];
  [(AXValidationManager *)v2 validateClass:@"NCNotificationPresentableViewController" hasInstanceMethod:@"notificationViewController" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"NCNotificationViewController" hasInstanceMethod:@"notificationRequest" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SpringBoard" hasInstanceMethod:@"bannerManager" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBBannerManager" hasInstanceMethod:@"isDisplayingBannerInWindowScene:" withFullSignature:"B", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBBannerManager" hasInstanceMethod:@"windowSceneForPresentable:" withFullSignature:"@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_performCancelAction" withFullSignature:"v", 0];
  [(AXValidationManager *)v2 validateClass:@"SBNotificationBannerDestination" hasInstanceMethod:@"_dismissPresentedBannerAnimated:reason:forceIfSticky:" withFullSignature:"v", "B", "@", "B", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMainSwitcherControllerCoordinator"];
  [(AXValidationManager *)v2 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController"];
  [(AXValidationManager *)v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasClassMethod:@"sharedInstance" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasClassMethod:@"sharedInstanceIfExists" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_activeDisplaySwitcherController" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"switcherWindow" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_rebuildAppListCache" withFullSignature:"v", 0];
  [(AXValidationManager *)v2 validateClass:@"SBSwitcherController" hasInstanceVariable:@"_gestureManager" withType:"SBFluidSwitcherGestureManager"];
  [(AXValidationManager *)v2 validateClass:@"SBMainSwitcherControllerCoordinator" hasInstanceMethod:@"_enumerateSwitcherControllersWithBlock:" withFullSignature:"v", "@?", 0];
  [(AXValidationManager *)v2 validateClass:@"SBSwitcherController" hasInstanceMethod:@"contentViewController" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBFluidSwitcherGestureManager" hasInstanceMethod:@"fluidDragAndDropManager" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBFluidSwitcherViewController" hasInstanceVariable:@"_liveContentOverlayCoordinator" withType:"<SBSwitcherLiveContentOverlayCoordinating>"];
  [(AXValidationManager *)v2 validateClass:@"SBFullScreenSwitcherSceneLiveContentOverlay" hasInstanceMethod:@"deviceApplicationSceneViewController" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_deviceApplicationSceneViewController" withType:"SBDeviceApplicationSceneViewController"];
  [(AXValidationManager *)v2 validateClass:@"SBFluidSwitcherDragAndDropManager" hasInstanceMethod:@"dropInteraction" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBAppLayout" hasInstanceMethod:@"enumerate:" withFullSignature:"v", "@?", 0];
  [(AXValidationManager *)v2 validateClass:@"SBDisplayItem" hasInstanceMethod:@"bundleIdentifier" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBDeviceApplicationSceneViewController" hasInstanceMethod:@"_configureStatusBarWithCurrentStyleRequest" withFullSignature:"v", 0];
  [(AXValidationManager *)v2 validateClass:@"SBTopAffordanceViewController"];
  [(AXValidationManager *)v2 validateClass:@"SBTopAffordanceViewController" hasInstanceMethod:@"setHidden:forReason:animated:" withFullSignature:"v", "B", "@", "B", 0];
  [(AXValidationManager *)v2 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceVariable:@"_topAffordanceViewController" withType:"SBTopAffordanceViewController"];
  [(AXValidationManager *)v2 validateClass:@"SBMedusaDecoratedDeviceApplicationSceneViewController" hasInstanceMethod:@"_topAffordanceViewController:handleActionType:transitionSource:" withFullSignature:"v", "@", "q", "q", 0];
  [(AXValidationManager *)v2 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"_dismissFloatingDockIfPresentedAnimated:completionHandler:" withFullSignature:"v", "B", "@?", 0];
  [(AXValidationManager *)v2 validateClass:@"SBFloatingDockController" hasInstanceMethod:@"_presentFloatingDockIfDismissedAnimated:completionHandler:" withFullSignature:"v", "B", "@?", 0];
  [(AXValidationManager *)v2 validateClass:@"SBBannerManager" hasInstanceMethod:@"dismissAllBannersInAllWindowScenesAnimated:reason:" withFullSignature:"v", "B", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBDefaults" hasClassMethod:@"localDefaults" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBLocalDefaults" hasInstanceMethod:@"externalDisplayDefaults" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"SBExternalDisplayDefaults" hasInstanceMethod:@"setMirroringEnabled:" withFullSignature:"v", "B", 0];
  [(AXValidationManager *)v2 validateClass:@"SBInCallPresentationManager" hasInstanceMethod:@"handleOpenApplicationRequest:clientWorkspace:actions:origin:options:withResult:" withFullSignature:"v", "@", "@", "@", "@", "@", "@?", 0];
  [(AXValidationManager *)v2 validateClass:@"SBActivityItem" hasInstanceMethod:@"descriptor" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"ACActivityDescriptor" hasInstanceMethod:@"platterTargetBundleIdentifier" withFullSignature:"@", 0];

  return 1;
}

BOOL sub_A4A4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAX Springboard Server"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided Access (Springboard)"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void sub_A504(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"GAXFBSSystemServiceOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXFBSOpenApplicationService" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBAlertItemOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBAlertItemsControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBNSObjectOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBScreenFlashOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBSyncControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBVoiceControlControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBMainWorkspaceOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBUIControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSpringBoardOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUIDeviceOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBSBLockScreenOrientationManager" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBLockScreenViewControllerBaseOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBSceneManagerCoordinatorOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBReachabilityManagerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBMainSwitcherControllerCoordinatorOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBSwitcherControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBSBMainDisplayPolicyAggregator" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXNCNotificationRequestOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBIdleTimerGlobalStateMonitorOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBIdleTimerPolicyAggregatorOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBSystemGestureManagerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBCoverSheetSlidingViewControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBMainDisplaySystemGestureManagerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBFloatingDockControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBDragAndDropWorkspaceTransactionOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBFluidSwitcherGestureManagerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBAppSwitcherModelOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBAppPlatterDragPreviewOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBDeviceApplicationSceneViewControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBDeviceApplicationSceneHandleOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBSystemNotesInteractionManagerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBInteractiveScreenshotGestureManager" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBFullScreenSwitcherSceneLiveContentOverlayOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBExternalDisplayDefaultsOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBInCallPresentationManagerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBActivityBannerObserverOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBIconOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBLeafIconOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBBookmarkIconOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBIconViewOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXSBCommandTabControllerOverride" canInteractWithTargetClass:1];
}

void sub_A8A4(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&stru_2CDB8 withPreValidationHandler:&stru_2CDD8 postValidationHandler:0];
}

BOOL sub_A900(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 validateClass:@"CMASBBAlertItem"];
  [(AXValidationManager *)v2 validateClass:@"CKCarrierSMSAlertItem"];

  return 1;
}

BOOL sub_A948(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAXServer - ChatKit"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided Access"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void sub_A9A8(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&stru_2CE18 withPreValidationHandler:&stru_2CE38 postValidationHandler:0 safeCategoryInstallationHandler:&stru_2CE58];
}

BOOL sub_AA14(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAX Springboard Server - AssistantServices"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided Access (Springboard)"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void sub_AA88(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&stru_2CE98 withPreValidationHandler:&stru_2CEB8 postValidationHandler:0 safeCategoryInstallationHandler:&stru_2CED8];
}

BOOL sub_AAF4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAX Springboard Server - AssistantUI"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided Access (Springboard)"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void sub_B080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_B0A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_B0B8(uint64_t a1)
{
  v5 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  v2 = [v5 applicationWithPid:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_B77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_BBB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = GAXSpringBoardOverride;
  return objc_msgSendSuper2(&v3, "batteryStatusDidChange:", v1);
}

Class sub_BD10(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_3B2E0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_BE3C;
    v3[4] = &unk_2CA98;
    v3[5] = v3;
    v4 = off_2CF20;
    v5 = 0;
    qword_3B2E0 = _sl_dlopen();
  }

  if (!qword_3B2E0)
  {
    sub_16974(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PRNotifyEvents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_168F8();
  }

  qword_3B2D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_BE3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_3B2E0 = result;
  return result;
}

BOOL sub_C330(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[GAXSpringboard sharedInstance];
  v6 = [v5 isFrontmostAppLayout:v4];

  return v6;
}

void sub_C8F8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = GAXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_169F4();
    }
  }
}

void sub_CD74(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = [v3 objectForKey:@"GAXIPCPayloadKeyShouldAbortServerModeTransition"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Transition was aborted by system app.", v10, 2u);
    }

    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(GAXSpringboardClientStatus);
    v8 = [v3 objectForKey:@"GAXIPCPayloadKeyFrontmostAppName"];
    [(GAXSpringboardClientStatus *)v7 setSessionApplicationName:v8];

    v9 = [v3 objectForKey:@"GAXIPCPayloadKeyFrontmostArchivedAppIcon"];
    [(GAXSpringboardClientStatus *)v7 setArchivedSessionApplicationIcon:v9];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_D508(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = AXLogIPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_16AE8();
    }
  }

  else
  {
    v7 = [a2 payload];
    v8 = [v7 objectForKey:@"GAXIPCPayloadKeyNewPasscodeLength"];
    [v8 unsignedIntegerValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_FAF8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSError *)v4 localizedDescription];
    v7[0] = 67109378;
    v7[1] = v3;
    v8 = 2112;
    v9 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Guest Pass expired in Single App Mode. Success: %d, error: %@", v7, 0x12u);
  }
}

id sub_FDC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _gaxDesiredHomeGrabberDisplayMode];

  return [v1 setHomeGrabberDisplayMode:v2];
}

id GAXFallbackValueForProfileKey(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (qword_3B300 == -1)
  {
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_16BE4();
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  v6 = [qword_3B2F8 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    goto LABEL_10;
  }

LABEL_6:
  v8 = qword_3B2F0;
  v9 = [NSNumber numberWithUnsignedInt:a2];
  v10 = [v8 objectForKey:v9];
  v7 = [v10 objectForKey:v5];

  if (!v7)
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_16BF8(v5, v11);
    }

    v7 = 0;
  }

LABEL_10:

  return v7;
}

void sub_10798(id a1)
{
  v52[0] = @"GAXProfileAllowsKeyboardTextInput";
  v52[1] = @"GAXProfileAllowsTouch";
  v53[0] = &__kCFBooleanTrue;
  v53[1] = &__kCFBooleanTrue;
  v52[2] = @"GAXProfileAllowsMotion";
  v52[3] = @"GAXProfileAllowsRingerSwitch";
  v53[2] = &__kCFBooleanTrue;
  v53[3] = &__kCFBooleanFalse;
  v52[4] = @"GAXProfileAllowsProximity";
  v52[5] = @"GAXProfileAllowsLockButton";
  v53[4] = &__kCFBooleanFalse;
  v53[5] = &__kCFBooleanTrue;
  v52[6] = @"GAXProfileAllowsVolumeButtons";
  v52[7] = @"GAXProfileAllowsAutolock";
  v53[6] = &__kCFBooleanTrue;
  v53[7] = &__kCFBooleanTrue;
  v52[8] = @"GAXProfileAppTimeoutDuration";
  v52[9] = @"GAXProfileAppTimeoutEnabled";
  v53[8] = &off_32850;
  v53[9] = &__kCFBooleanFalse;
  v52[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v41 = +[NSNull null];
  v53[10] = v41;
  v52[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v38 = +[NSNull null];
  v53[11] = v38;
  v52[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v35 = +[NSNull null];
  v53[12] = v35;
  v52[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v32 = +[NSNull null];
  v53[13] = v32;
  v52[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v29 = +[NSNull null];
  v53[14] = v29;
  v52[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v1 = +[NSNull null];
  v53[15] = v1;
  v52[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v2 = +[NSNull null];
  v53[16] = v2;
  v52[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v3 = +[NSNull null];
  v53[17] = v3;
  v53[18] = &__kCFBooleanFalse;
  v52[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v52[19] = @"GAXProfileAllowsAXToggleZoom";
  v53[19] = &__kCFBooleanFalse;
  v53[20] = &__kCFBooleanFalse;
  v52[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v52[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v53[21] = &__kCFBooleanFalse;
  v53[22] = &__kCFBooleanFalse;
  v52[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v52[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v53[23] = &__kCFBooleanFalse;
  v52[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v4 = +[NSNull null];
  v53[24] = v4;
  v52[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v5 = +[NSNull null];
  v53[25] = v5;
  v52[26] = @"GAXProfileStatesForRestrictions";
  v6 = +[NSNull null];
  v53[26] = v6;
  v52[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v7 = +[NSNull null];
  v53[27] = v7;
  v53[28] = &__kCFBooleanFalse;
  v52[28] = @"GAXProfileAllowsHomeButton";
  v52[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v53[29] = &__kCFBooleanTrue;
  v53[30] = &__kCFBooleanTrue;
  v52[30] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v52[31] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v53[31] = &__kCFBooleanTrue;
  v53[32] = &__kCFBooleanTrue;
  v52[32] = @"GAXProfileAllowsExit";
  v52[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v53[33] = &__kCFBooleanFalse;
  v53[34] = &__kCFBooleanTrue;
  v52[34] = @"GAXProfileAllowsWebTextDefine";
  v52[35] = @"GAXProfileAllowsAccessibilityShortcut";
  v53[35] = &__kCFBooleanFalse;
  v43 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:36];

  v50[0] = @"GAXProfileAllowsKeyboardTextInput";
  v50[1] = @"GAXProfileAllowsTouch";
  v51[0] = &__kCFBooleanTrue;
  v51[1] = &__kCFBooleanTrue;
  v50[2] = @"GAXProfileAllowsMotion";
  v50[3] = @"GAXProfileAllowsRingerSwitch";
  v51[2] = &__kCFBooleanTrue;
  v51[3] = &__kCFBooleanTrue;
  v50[4] = @"GAXProfileAllowsProximity";
  v50[5] = @"GAXProfileAllowsLockButton";
  v51[4] = &__kCFBooleanTrue;
  v51[5] = &__kCFBooleanTrue;
  v50[6] = @"GAXProfileAllowsVolumeButtons";
  v50[7] = @"GAXProfileAllowsAutolock";
  v51[6] = &__kCFBooleanTrue;
  v51[7] = &__kCFBooleanTrue;
  v50[8] = @"GAXProfileAppTimeoutDuration";
  v50[9] = @"GAXProfileAppTimeoutEnabled";
  v51[8] = &off_32850;
  v51[9] = &__kCFBooleanFalse;
  v50[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v39 = +[NSNull null];
  v51[10] = v39;
  v50[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v36 = +[NSNull null];
  v51[11] = v36;
  v50[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v33 = +[NSNull null];
  v51[12] = v33;
  v50[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v30 = +[NSNull null];
  v51[13] = v30;
  v50[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v27 = +[NSNull null];
  v51[14] = v27;
  v50[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v8 = +[NSNull null];
  v51[15] = v8;
  v50[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v9 = +[NSNull null];
  v51[16] = v9;
  v50[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v10 = +[NSNull null];
  v51[17] = v10;
  v51[18] = &__kCFBooleanFalse;
  v50[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v50[19] = @"GAXProfileAllowsAXToggleZoom";
  v51[19] = &__kCFBooleanFalse;
  v51[20] = &__kCFBooleanFalse;
  v50[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v50[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v51[21] = &__kCFBooleanFalse;
  v51[22] = &__kCFBooleanFalse;
  v50[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v50[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v51[23] = &__kCFBooleanFalse;
  v50[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v11 = +[NSNull null];
  v51[24] = v11;
  v50[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v12 = +[NSNull null];
  v51[25] = v12;
  v50[26] = @"GAXProfileStatesForRestrictions";
  v13 = +[NSNull null];
  v51[26] = v13;
  v50[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v14 = +[NSNull null];
  v51[27] = v14;
  v51[28] = &__kCFBooleanFalse;
  v50[28] = @"GAXProfileAllowsHomeButton";
  v50[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v51[29] = &__kCFBooleanTrue;
  v51[30] = &__kCFBooleanTrue;
  v50[30] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v50[31] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v51[31] = &__kCFBooleanTrue;
  v51[32] = &__kCFBooleanFalse;
  v50[32] = @"GAXProfileAllowsExit";
  v50[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v51[33] = &__kCFBooleanTrue;
  v51[34] = &__kCFBooleanTrue;
  v50[34] = @"GAXProfileAllowsWebTextDefine";
  v50[35] = @"GAXProfileAllowsAccessibilityShortcut";
  v51[35] = &__kCFBooleanFalse;
  v42 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:36];

  v48[0] = @"GAXProfileAllowsKeyboardTextInput";
  v48[1] = @"GAXProfileAllowsTouch";
  v49[0] = &__kCFBooleanTrue;
  v49[1] = &__kCFBooleanTrue;
  v48[2] = @"GAXProfileAllowsMotion";
  v48[3] = @"GAXProfileAllowsRingerSwitch";
  v49[2] = &__kCFBooleanTrue;
  v49[3] = &__kCFBooleanTrue;
  v48[4] = @"GAXProfileAllowsProximity";
  v48[5] = @"GAXProfileAllowsLockButton";
  v49[4] = &__kCFBooleanTrue;
  v49[5] = &__kCFBooleanTrue;
  v48[6] = @"GAXProfileAllowsVolumeButtons";
  v48[7] = @"GAXProfileAllowsAutolock";
  v49[6] = &__kCFBooleanTrue;
  v49[7] = &__kCFBooleanTrue;
  v48[8] = @"GAXProfileAppTimeoutDuration";
  v48[9] = @"GAXProfileAppTimeoutEnabled";
  v49[8] = &off_32850;
  v49[9] = &__kCFBooleanFalse;
  v48[10] = @"GAXProfileAllowsAXAutoEnableVoiceOver";
  v40 = +[NSNull null];
  v49[10] = v40;
  v48[11] = @"GAXProfileAllowsAXAutoEnableZoom";
  v37 = +[NSNull null];
  v49[11] = v37;
  v48[12] = @"GAXProfileAllowsAXAutoEnableInvertColors";
  v34 = +[NSNull null];
  v49[12] = v34;
  v48[13] = @"GAXProfileAllowsAXAutoEnableGrayscale";
  v31 = +[NSNull null];
  v49[13] = v31;
  v48[14] = @"GAXProfileAllowsAXAutoEnableAssistiveTouch";
  v28 = +[NSNull null];
  v49[14] = v28;
  v48[15] = @"GAXProfileAllowsAXAutoEnableSpeakSelection";
  v15 = +[NSNull null];
  v49[15] = v15;
  v48[16] = @"GAXProfileAllowsAXAutoEnableMonoAudio";
  v16 = +[NSNull null];
  v49[16] = v16;
  v48[17] = @"GAXProfileAllowsAXAutoEnableCommandAndControl";
  v17 = +[NSNull null];
  v49[17] = v17;
  v49[18] = &__kCFBooleanFalse;
  v48[18] = 200704;
  v48[19] = @"GAXProfileAllowsAXToggleZoom";
  v49[19] = &__kCFBooleanFalse;
  v49[20] = &__kCFBooleanFalse;
  v48[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v48[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v49[21] = &__kCFBooleanFalse;
  v49[22] = &__kCFBooleanFalse;
  v48[22] = @"GAXProfileAllowsAXToggleAssistiveTouch";
  v48[23] = @"GAXProfileAllowsAXToggleCommandAndControl";
  v49[23] = &__kCFBooleanFalse;
  v48[24] = @"GAXProfileIgnoredTouchRegionsPortrait";
  v18 = +[NSNull null];
  v49[24] = v18;
  v48[25] = @"GAXProfileIgnoredTouchRegionsLandscape";
  v19 = +[NSNull null];
  v49[25] = v19;
  v48[26] = @"GAXProfileStatesForRestrictions";
  v20 = +[NSNull null];
  v49[26] = v20;
  v48[27] = @"GAXProfileUnappliedChangedStatesForRestrictions";
  v21 = +[NSNull null];
  v49[27] = v21;
  v49[28] = &__kCFBooleanFalse;
  v48[28] = @"GAXProfileAllowsHomeButton";
  v48[29] = @"GAXProfileShouldAutolaunchCrashedApps";
  v49[29] = &__kCFBooleanTrue;
  v49[30] = &__kCFBooleanTrue;
  v48[30] = @"GAXProfileShowsUserConfirmationPromptsAndBanners";
  v48[31] = @"GAXProfileShouldAutolaunchAppsAfterSystemCrash";
  v49[31] = &__kCFBooleanTrue;
  v49[32] = &__kCFBooleanFalse;
  v48[32] = @"GAXProfileAllowsExit";
  v48[33] = @"GAXProfileShouldAutolaunchAfterLowBatteryShutDown";
  v49[33] = &__kCFBooleanTrue;
  v49[34] = &__kCFBooleanTrue;
  v48[34] = @"GAXProfileAllowsWebTextDefine";
  v48[35] = @"GAXProfileAllowsAccessibilityShortcut";
  v49[35] = &__kCFBooleanFalse;
  v22 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:36];

  v46[0] = @"GAXProfileAllowsAutolock";
  v46[1] = @"GAXProfileAllowsLockButton";
  v47[0] = &__kCFBooleanFalse;
  v47[1] = &__kCFBooleanFalse;
  v23 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
  v24 = qword_3B2F8;
  qword_3B2F8 = v23;

  v44[0] = &off_32860;
  v44[1] = &off_32878;
  v45[0] = v43;
  v45[1] = v42;
  v44[2] = &off_32890;
  v45[2] = v22;
  v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
  v26 = qword_3B2F0;
  qword_3B2F0 = v25;
}

id GAXAppIsMobilePhoneOrFacetime(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.mobilephone"])
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.facetime"];
  }

  return v2;
}

uint64_t GAXSessionAppsContainMobilePhoneOrFacetime(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isEqualToString:{@"com.apple.mobilephone", v9}] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.facetime"))
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v7 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_13:

  return v7;
}

void extractGAXBackboardStateFromMessage(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  v3 = [a1 payload];
  v4 = [v3 objectForKey:@"GAXIPCPayloadKeyGAXBackboardState"];

  [v4 getBytes:a2 length:28];
}

id gaxDebugDescriptionForGAXBackboardState(unsigned int *a1)
{
  v2 = [NSMutableString stringWithString:@"GAXBackboardState:\n"];
  [v2 appendFormat:@"  mode: %ld\n", *a1];
  [v2 appendFormat:@"  passcodeWindowContextID: %ld\n", a1[1]];
  [v2 appendFormat:@"  voiceOverItemChooserWindowContextID: %ld\n", a1[2]];
  [v2 appendFormat:@"  tripleClickSheetWindowContextID: %ld\n", a1[3]];
  [v2 appendFormat:@"  shouldBlockAllEvents: %ld\n", a1[6] & 1];
  [v2 appendFormat:@"  restartingAndWasActiveBeforeRestart: %ld\n", (a1[6] >> 1) & 1];
  [v2 appendFormat:@"  verifyingDeviceUnlockInSAM: %ld\n", (a1[6] >> 2) & 1];
  [v2 appendFormat:@"  isPasscodeViewVisible: %ld\n", (a1[6] >> 3) & 1];
  [v2 appendFormat:@"  isRestricted: %ld\n", (a1[6] >> 4) & 1];
  [v2 appendFormat:@"  overrideAllowsAllTouchSBMiniAlertIsShowing: %ld\n", (a1[6] >> 5) & 1];
  [v2 appendFormat:@"  overrideAllowsAllTouchCallStateIsChanging: %ld\n", (a1[6] >> 6) & 1];
  [v2 appendFormat:@"  overrideAllowsAllTouchMakingEmergencyCall: %ld\n", (a1[6] >> 7) & 1];
  [v2 appendFormat:@"  overrideIgnoresAllTouchAllowedAppNotFound: %ld\n", (a1[6] >> 8) & 1];
  [v2 appendFormat:@"  overrideIgnoresAllTouchVerifyingIntegrity: %ld\n", (a1[6] >> 9) & 1];
  [v2 appendFormat:@"  profileConfiguration: %ld\n", a1[5]];
  [v2 appendFormat:@"  allowsTouch: %ld\n", (a1[6] >> 10) & 1];
  [v2 appendFormat:@"  allowsLockButton: %ld\n", (a1[6] >> 11) & 1];
  [v2 appendFormat:@"  allowsAppExit: %ld\n", (a1[6] >> 12) & 1];
  [v2 appendFormat:@"  allowsHomeButton: %ld\n", (a1[6] >> 13) & 1];
  [v2 appendFormat:@"  allowsVolumeButtons: %ld\n", (a1[6] >> 14) & 1];
  [v2 appendFormat:@"  allowsRingerSwitch: %ld\n", (a1[6] >> 15) & 1];
  [v2 appendFormat:@"  allowsMotion: %ld\n", (a1[6] >> 16) & 1];
  [v2 appendFormat:@"  allowsAutolock: %ld\n", (a1[6] >> 17) & 1];
  [v2 appendFormat:@"  allowsKeyboardTextInput: %ld\n", (a1[6] >> 18) & 1];
  [v2 appendFormat:@"  allowsProximity: %ld\n", (a1[6] >> 19) & 1];

  return v2;
}

BOOL GAXSecTaskHasBooleanEntitlement(__SecTask *a1, void *a2)
{
  v3 = a2;
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(a1, v3, &error);
  if (error)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v11 = a1;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = error;
      _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unable to check if task %@ has entitlement %@: %@", buf, 0x20u);
    }

    CFRelease(error);
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_11F8C(id a1)
{
  v1 = +[GAXSpringboard sharedInstance];
  [v1 notifyBackboardIsMakingEmergencyCall:0];
}

void sub_12EFC(id a1)
{
  v1 = [NSSet setWithObjects:&off_328A8, &off_328C0, &off_328D8, &off_328F0, &off_32908, 0];
  qword_3B310 = v1;

  _objc_release_x1(v1);
}

void sub_13530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_13548(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_3B328)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_13674;
    v3[4] = &unk_2CA98;
    v3[5] = v3;
    v4 = off_2D5D0;
    v5 = 0;
    qword_3B328 = _sl_dlopen();
  }

  if (!qword_3B328)
  {
    sub_16D8C(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PRNotifyEvents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_16D10();
  }

  qword_3B320 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_13674(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_3B328 = result;
  return result;
}

uint64_t sub_14688(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_146A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v7.receiver = *(a1 + 48);
  v7.super_class = GAXSBSceneManagerCoordinatorOverride;
  v4 = objc_msgSendSuper2(&v7, "scene:handleActions:", v3, v2);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_14704(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v7.receiver = *(a1 + 48);
  v7.super_class = GAXSBSceneManagerCoordinatorOverride;
  v4 = objc_msgSendSuper2(&v7, "scene:handleActions:", v3, v2);
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_14B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_14B80(void *a1)
{
  v2 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

id GAXAllowedRemoteUIProcesses()
{
  if (qword_3B338 != -1)
  {
    sub_16E0C();
  }

  v1 = qword_3B330;

  return v1;
}

void sub_14D44(id a1)
{
  v3[0] = @"com.apple.MailCompositionService";
  v3[1] = @"com.apple.mobilesms.compose";
  v3[2] = @"com.apple.MessageCompositionService";
  v3[3] = @"com.apple.social.remoteui.SocialUIService";
  v3[4] = @"com.apple.quicklook.quicklookd";
  v3[5] = @"com.apple.SafariViewService";
  v3[6] = @"com.apple.CoreAuthUI";
  v3[7] = @"com.apple.InCallService";
  v3[8] = @"com.apple.datadetectors.DDActionsService";
  v3[9] = @"com.apple.shortcuts.runtime";
  v3[10] = @"com.apple.SleepLockScreen";
  v3[11] = @"com.apple.ContactlessUIService";
  v1 = [NSArray arrayWithObjects:v3 count:12];
  v2 = qword_3B330;
  qword_3B330 = v1;
}

id GAXURLSchemeIsPhoneRelated(void *a1)
{
  v1 = [a1 scheme];
  if ([v1 isEqualToString:@"tel"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"facetime"))
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"facetime-audio"];
  }

  return v2;
}

id GAXLocalizedStringForTimeDuration(double a1)
{
  v2 = objc_opt_new();
  [v2 setZeroFormattingBehavior:1];
  [v2 setUnitsStyle:3];
  if (a1 >= 60.0)
  {
    if (a1 % 60 > 30)
    {
      a1 = a1 + 60.0;
    }

    v3 = 96;
  }

  else
  {
    v3 = 128;
  }

  [v2 setAllowedUnits:v3];
  v4 = [v2 stringFromTimeInterval:a1];

  return v4;
}

void sub_150CC(uint64_t a1)
{
  v6 = 0;
  v2 = [AXSafeClassFromString() safeValueForKey:@"mainWorkspace"];
  v3 = __UIAccessibilitySafeClass();

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_151BC;
  v4[3] = &unk_2D638;
  v5 = *(a1 + 32);
  [v3 requestTransitionWithBuilder:v4];
}

void sub_151BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __UIAccessibilitySafeClass();

  v6 = *(a1 + 32);
  v5 = v4;
  AXPerformSafeBlock();
}

void sub_152A4(uint64_t a1)
{
  [*(a1 + 32) setSource:0];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1533C;
  v3[3] = &unk_2D638;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 modifyApplicationContext:v3];
}

void sub_1533C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __UIAccessibilitySafeClass();

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = v4;
    AXPerformSafeBlock();
  }
}

void sub_15424(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_15530;
  v8 = sub_15540;
  v9 = 0;
  v3 = *(a1 + 32);
  AXPerformSafeBlock();
  v2 = v5[5];
  if (v2)
  {
    [*(a1 + 40) setEntity:v2 forLayoutRole:{1, _NSConcreteStackBlock, 3221225472, sub_15548, &unk_2C618, v3, &v4}];
  }

  _Block_object_dispose(&v4, 8);
}

void sub_15518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_15530(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_15548(uint64_t a1)
{
  v2 = [objc_alloc(AXSafeClassFromString()) initWithApplicationForMainDisplay:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2);
}

void sub_1560C(uint64_t a1)
{
  v6 = [*(a1 + 32) _windowsToHost];
  v2 = [v6 firstObject];
  v3 = [v2 windowScene];

  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _uiController];
  [v5 handleHomeButtonSinglePressUpForWindowScene:v3];
}

void sub_156AC(id a1)
{
  v1 = GAXLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "Updating lock and idle timers.", v3, 2u);
  }

  v2 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  [v2 resetIdleTimerForReason:@"GAX requested idle timer update"];
}

void sub_158E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_158FC(uint64_t a1)
{
  v2 = [*(a1 + 32) requireWallpaperWithReason:@"Guided Access UI"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2);
}

void sub_15A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _wallpaperStyleAnimationFactoryWithDelay:0.1];
  [v1 setWallpaperStyle:0 forPriority:3 forVariant:1 withAnimationFactory:v2];
}

void sub_15B3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _wallpaperStyleAnimationFactoryWithDelay:0.0];
  [v1 removeWallpaperStyleForPriority:3 forVariant:1 withAnimationFactory:v2];
}

void sub_1604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_16064(uint64_t a1)
{
  v2 = [BSUIAnimationFactory factoryWithDuration:0.3 delay:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2);
}

void sub_16824(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_9130(&dword_0, a2, a3, "could not send message to backboard. Message : %@\nError : %@", *v3, *&v3[8], *&v3[16]);
}

void sub_168A0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Failed to call completion handler from Guided Access: %@", buf, 0xCu);
}

void sub_168F8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getPRNotifyEventsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GAXSpringBoardOverride.m" lineNumber:33 description:{@"Unable to find class %s", "PRNotifyEvents"}];

  __break(1u);
}

void sub_16974(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *ProximityReaderLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GAXSpringBoardOverride.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void sub_16BF8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No fallback value was registered for profile key: %@", &v2, 0xCu);
}

void sub_16C70(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unexpectedly had current floating app layout that did not match frontmost: %@", &v2, 0xCu);
}

void sub_16D10()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getPRNotifyEventsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GAXSBInCallPresentationManagerOverride.m" lineNumber:22 description:{@"Unable to find class %s", "PRNotifyEvents"}];

  __break(1u);
}

void sub_16D8C(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *ProximityReaderLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GAXSBInCallPresentationManagerOverride.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

CGPoint CGPointFromString(NSString *string)
{
  v3 = _CGPointFromString(string);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}
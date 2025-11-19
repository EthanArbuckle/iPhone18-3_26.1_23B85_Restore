id *sub_100004C00(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] removeFromParentViewController];
  }

  return result;
}

id *sub_100004C18(id *result)
{
  if (*(result + 48) == 1)
  {
    return [result[4] didMoveToParentViewController:result[5]];
  }

  return result;
}

uint64_t sub_100004C38(void *a1)
{
  (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100004CB4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100004D28(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000053EC(id a1)
{
  qword_100025768 = objc_alloc_init(PBAHIDEventController);

  _objc_release_x1();
}

void sub_1000056DC(id a1)
{
  qword_100025778 = objc_alloc_init(PBAIdleSleepController);

  _objc_release_x1();
}

void sub_1000058E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005908(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 eventMask];
  v6 = sub_10000A054();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "dimming for idle", &v8, 2u);
    }

    [WeakRetained dimDisplay];
  }

  else
  {
    if (v7)
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "reset idle for event %{public}@", &v8, 0xCu);
    }

    [WeakRetained resetIdleTimerAndUndim:1];
  }
}

void sub_100006340(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000070A0(uint64_t a1, float a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007134;
  v3[3] = &unk_10001C808;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_100007148(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000720C;
  v6[3] = &unk_10001C880;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10000720C(uint64_t a1)
{
  [*(*(a1 + 32) + 32) resetIdleTimerAndUndim:1];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_1000075F0;
  v29 = &unk_10001C858;
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v30 = v2;
  v31 = v3;
  AnalyticsSendEventLazy();
  if (!*(a1 + 40))
  {
    v9 = +[SBFMobileKeyBag sharedInstance];
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000076F0;
    block[3] = &unk_10001C628;
    v25 = v9;
    v11 = v9;
    dispatch_group_notify(v10, &_dispatch_main_q, block);
    dispatch_group_enter(v10);
    v12 = [[SBFMobileKeyBagUnlockOptions alloc] initWithPasscode:*(a1 + 48) skipSEKeepUserDataOperation:1];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100007760;
    v22[3] = &unk_10001C628;
    v13 = v10;
    v23 = v13;
    [(PBADataRecoveryErrorViewController *)v11 createStashBagWithOptions:v12 completion:v22];
    v14 = objc_alloc_init(PBAAppleLogoViewController);
    v15 = *(*(a1 + 32) + 16);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100007768;
    v20[3] = &unk_10001C628;
    v21 = v13;
    v16 = v13;
    [v15 pushViewController:v14 animated:1 completion:v20];

LABEL_8:
    goto LABEL_9;
  }

  v4 = sub_10000A054();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000D344((a1 + 40), v4);
  }

  if (![*(*(a1 + 32) + 8) dataRecoveryPossible])
  {
    v11 = objc_alloc_init(PBADataRecoveryErrorViewController);
    v17 = *(*(a1 + 32) + 16);
    v32 = v11;
    v18 = [NSArray arrayWithObjects:&v32 count:1];
    [v17 setViewControllers:v18 animated:1];

    goto LABEL_8;
  }

  v5 = *(a1 + 56);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"PREBOARD_RECOVERY_FAILED" value:&stru_10001CDA8 table:@"PreBoard"];
  [v5 setStatusText:v7];

  v8 = dispatch_time(0, 3000000000);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100007770;
  v19[3] = &unk_10001C628;
  v19[4] = *(a1 + 32);
  dispatch_after(v8, &_dispatch_main_q, v19);
LABEL_9:
}

id sub_1000075F0(uint64_t a1)
{
  v6[0] = @"successful";
  v2 = [NSNumber numberWithInt:*(a1 + 32) == 0];
  v6[1] = @"recoverable";
  v7[0] = v2;
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(*(a1 + 40) + 8) dataRecoveryPossible]);
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_1000076F0(uint64_t a1)
{
  v2 = sub_10000A054();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "exiting as result of successful unlock", v3, 2u);
  }

  [*(a1 + 32) lockSkippingGracePeriod:0];
  exit(0);
}

id sub_100007770(uint64_t a1)
{
  [*(*(a1 + 32) + 16) popToRootViewControllerAnimated:1];
  v2 = *(a1 + 32);

  return [v2 _evaluateDeviceBlockState];
}

void sub_100007E78(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) state];
  *(*(*(a1 + 40) + 8) + 24) = [v2 recoveryRequired];
}

void sub_100007F84(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) state];
  *(*(*(a1 + 40) + 8) + 24) = [v2 recoveryPossible];
}

void sub_100008690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000086B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained blockStatusProvider];
    v3 = [v2 isBlocked];

    if (v3)
    {
      v4 = [v8 overlayView];
      v5 = [v4 subtitleLabel];
      v6 = [v8 blockTimer];
      v7 = [v6 subtitleText];
      [v5 setText:v7];
    }

    else
    {
      v4 = [v8 delegate];
      [v4 deviceBlockOverlayViewControllerDidChangeBlockState:v8];
    }

    WeakRetained = v8;
  }
}

void sub_100008F30(id a1)
{
  v1 = sub_10000A054();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "exiting as a result of external unlock while we're running", v2, 2u);
  }

  exit(0);
}

void sub_100009240(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000925C(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v8 = WeakRetained;
    if ([WeakRetained[10] hasPasscodeSet])
    {
      v6 = [[PBAPasscodeEntryViewController alloc] initWithLightBackground:a3];
      v7 = v8[4];
      v8[4] = v6;

      [v8[4] setDelegate:?];
      [v8[1] pushViewController:v8[4] animated:1 completion:0];
      [v8 _configurePasscodeEntryViewController:v8[4]];
    }

    else
    {
      [v8 _authenticateWithEmptyPasscode];
    }

    WeakRetained = v8;
  }
}

id sub_1000095B0(uint64_t a1)
{
  [*(a1 + 32) successfulAuthHandler:*(a1 + 40)];
  [*(a1 + 48) resetPasscodeEntryFieldForFailure:0];
  v2 = *(a1 + 32);

  return [v2 _resetStateAfterHandlingAuthenticationResult];
}

id sub_1000095FC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) failedAuthHandler:*(a1 + 40) error:a2];
  [*(a1 + 48) resetPasscodeEntryFieldForFailure:1];
  v3 = *(a1 + 32);

  return [v3 _resetStateAfterHandlingAuthenticationResult];
}

id sub_10000964C(uint64_t a1)
{
  [*(a1 + 32) invalidAuthHandler:*(a1 + 40)];
  [*(a1 + 48) resetPasscodeEntryFieldForFailure:1];
  v2 = *(a1 + 32);

  return [v2 _resetStateAfterHandlingAuthenticationResult];
}

void sub_1000098B4(id a1)
{
  v1 = sub_10000A054();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "exiting as result of successful unlock", v2, 2u);
  }

  exit(0);
}

void sub_100009DE4(id a1)
{
  v1 = sub_10000A054();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "exiting as result of successful unlock", v2, 2u);
  }

  exit(0);
}

void sub_100009E44(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

id sub_10000A054()
{
  if (qword_100025790 != -1)
  {
    sub_10000D3C0();
  }

  v1 = qword_100025788;

  return v1;
}

void sub_10000A098(id a1)
{
  v1 = os_log_create("com.apple.PreBoard", "common");
  v2 = qword_100025788;
  qword_100025788 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10000A220(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000A23C(uint64_t a1)
{
  v2 = +[LAPreboard sharedInstance];
  v3 = [*(a1 + 32) passcode];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000A314;
  v4[3] = &unk_10001CA98;
  objc_copyWeak(&v5, (a1 + 40));
  [v2 enableCurrentUseCaseWithPasscode:v3 completion:v4];

  objc_destroyWeak(&v5);
}

void sub_10000A314(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    exit(0);
  }

  v4 = v3;
  v5 = sub_10000A054();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to set ACM variable with error: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finish];
}

void sub_10000A8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A91C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finish];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = FBSystemShellInitialize();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = UIApplicationMain(a1, a2, v7, v9);

  objc_autoreleasePoolPop(v4);
  return v10;
}

void sub_10000AAE4(id a1, FBMutableSystemShellInitializationOptions *a2)
{
  v2 = a2;
  [(FBMutableSystemShellInitializationOptions *)v2 setShouldWaitForMigrator:0];
  [(FBMutableSystemShellInitializationOptions *)v2 setRegisterAdditionalServicesBlock:&stru_10001CBB0];
}

void sub_10000AB34(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 bundleIdentifier];
  v2 = [LSApplicationProxy applicationProxyForIdentifier:v1];
}

id sub_10000B024(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = @"LAPreboard";
  }

  else
  {
    v2 = [*(*(a1 + 32) + 72) requiresDataRecovery];
    v1 = @"unlock";
    if (v2)
    {
      v1 = @"recovery";
    }
  }

  v5 = @"reason";
  v6 = v1;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_10000B0FC(id a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = +[BKSDisplayRenderOverlay dismissActions];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 overlayDescriptor];
        v8 = [v7 isInterstitial];

        if (v8)
        {
          v9 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
          v10 = [BSAnimationSettings settingsWithDuration:v9 timingFunction:0.75];
          [v6 dismissWithAnimation:v10];
        }

        else
        {
          [v6 dismissWithAnimation:0];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

void sub_10000BFB0(id a1, FBSceneCreating *a2)
{
  v2 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  [(FBSceneCreating *)v2 setIdentifier:v4];

  v5 = +[FBSSceneClientIdentity localIdentity];
  [(FBSceneCreating *)v2 setClientIdentity:v5];

  v6 = +[UIApplicationSceneSpecification specification];
  [(FBSceneCreating *)v2 setSpecification:v6];
}

void sub_10000C078(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = +[FBDisplayManager mainConfiguration];
  [v6 setDisplayConfiguration:v3];

  v4 = +[UIScreen mainScreen];
  [v4 _referenceBounds];
  [v6 setFrame:?];

  [v6 setLevel:0.0];
  [v6 setForeground:1];
  [v6 setInterfaceOrientation:{objc_msgSend(*(a1 + 32), "_computeBootOrientation")}];
  if ([v6 isUISubclass])
  {
    [v6 setDeviceOrientationEventsEnabled:1];
  }

  v5 = [v6 ignoreOcclusionReasons];
  [v5 addObject:@"SystemApp"];
}

void sub_10000C168(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isUISubclass])
  {
    v3 = [*(a1 + 32) settings];
    [v4 setInterfaceOrientation:{objc_msgSend(v3, "interfaceOrientation")}];

    [v4 setStatusBarStyle:0];
  }
}

void sub_10000C3E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentifier:v3];
  v5 = [FBSSceneClientIdentity identityForProcessIdentity:*(a1 + 40)];
  [v4 setClientIdentity:v5];

  v6 = +[UIApplicationSceneSpecification specification];
  [v4 setSpecification:v6];
}

void sub_10000C48C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDisplayConfiguration:*(a1 + 32)];
  [*(a1 + 32) bounds];
  [v3 setFrame:?];
  [v3 setForeground:1];
  [v3 setLevel:1.0];
  [v3 setInterfaceOrientation:{objc_msgSend(*(a1 + 40), "_computeBootOrientation")}];
  if ([v3 isUISubclass])
  {
    [v3 setInterfaceOrientationMode:2];
  }
}

id sub_10000C664(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addScene:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 updateSettingsWithBlock:&stru_10001CD68];
}

void sub_10000D05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"PBAStackViewController.m" lineNumber:204 description:{@"attempt to pop to view controller %@ not in view controller stack", a3}];
}

void sub_10000D0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"PBAStackViewController.m" lineNumber:221 description:{@"attempt to replace view controller %@ not in view controller stack", a3}];
}

void sub_10000D170(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBAHIDEventController.m" lineNumber:63 description:{@"%s called when we're already receiving events", "-[PBAHIDEventController startReceivingEvents]"}];
}

void sub_10000D344(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Data recovery failed with error %{public}@", &v3, 0xCu);
}

void sub_10000D3D4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "tripleClickOptions:%{public}@", &v2, 0xCu);
}
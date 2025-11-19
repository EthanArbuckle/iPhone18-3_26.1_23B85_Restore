void sub_10000356C(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteSetupQRCodeScanner];

  if (v2)
  {
    v3 = [*(a1 + 32) remoteSetupQRCodeScanner];
    [v3 stopScan];
  }
}

void sub_1000035E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 remoteSetupQRCodeScannerController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000036AC;
  v7[3] = &unk_10007D540;
  v7[4] = *(a1 + 32);
  [v5 dismissViewControllerAnimated:1 completion:v7];

  v6 = [*(a1 + 32) remoteSetupManager];
  [v6 sendAuthPassword:v4];
}

void sub_1000036AC(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteSetupQRCodeScanner];

  if (v2)
  {
    v3 = [*(a1 + 32) remoteSetupQRCodeScanner];
    [v3 stopScan];
  }
}

void sub_100003724(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteSetupQRCodeScanner];
  v3 = [v2 startScan];

  if ((v3 & 1) == 0)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000037D0;
    block[3] = &unk_10007D540;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1000037D0(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100044F6C();
  }

  v3 = [*(a1 + 32) remoteSetupManager];
  [v3 setupFailed];
}

void sub_100003CA4(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteSetupQRCodeScanner];

  if (v2)
  {
    v3 = [*(a1 + 32) remoteSetupQRCodeScanner];
    [v3 stopScan];
  }
}

void sub_100003F84(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteSetupManager];
  [v1 startRemoteSetupBroadcast];
}

void sub_100004024(id a1)
{
  qword_1000922C0 = objc_alloc_init(CBUserSettings);

  _objc_release_x1();
}

void sub_1000048A0(id a1)
{
  v1 = +[CBAPTicket sharedInstance];
  v2 = [v1 isEntitledForTag:1633776739];

  v3 = MGGetBoolAnswer();
  v12 = 0;
  v4 = [CBSNVRamUtil readNVRamVariable:@"EnableInfoPaneInCheckerBoard" value:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || ![v5 length])
  {
    v10 = 0;
  }

  else
  {
    v8 = [[NSString alloc] initWithData:v6 encoding:4];
    v9 = [v8 BOOLValue];

    v10 = v3 ^ 1 | v2;
    if (!v9)
    {
      v10 = 0;
    }
  }

  byte_1000922D0 = v10 & 1;
  v11 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v14 = byte_1000922D0;
    v15 = 1024;
    v16 = v2;
    v17 = 1024;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Should show info pane: (%d). Entitled: (%d)  Fusing: (%d)", buf, 0x14u);
  }
}

void sub_100004E1C(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) wifiSSIDFromNvram];
    v4 = [*(a1 + 32) wifiPasswordFromNvram];
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to set wifi to (%@ : %@)", buf, 0x16u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000050C4;
  v16[3] = &unk_10007D618;
  v16[4] = *(a1 + 32);
  v5 = objc_retainBlock(v16);
  v6 = [*(a1 + 32) wifiRequiresPassword];
  v7 = +[CBShellServer sharedInstance];
  v8 = [v7 systemServicesDelegate];
  v9 = [*(a1 + 32) wifiSSIDFromNvram];
  if (v6)
  {
    v10 = [*(a1 + 32) wifiPasswordFromNvram];
    [v8 connectToSSID:v9 password:v10 completion:v5];
  }

  else
  {
    [v8 connectToSSID:v9 completion:v5];
  }

  [*(a1 + 32) setWifiJoinAttemptCount:{objc_msgSend(*(a1 + 32), "wifiJoinAttemptCount") + 1}];
  if ([*(a1 + 32) wifiJoinAttemptCount] >= 0xB)
  {
    v11 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) wifiJoinAttemptCount];
      *buf = 134217984;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempted to connect to wifi %ld times without success. No further attempts will be made", buf, 0xCu);
    }

    v13 = [*(a1 + 32) wifiReconnectTimer];

    if (v13)
    {
      v14 = [*(a1 + 32) wifiReconnectTimer];
      [v14 invalidate];

      [*(a1 + 32) setWifiReconnectTimer:0];
    }

    v15 = [*(a1 + 32) diagsLaunchDependenciesSemaphore];
    dispatch_semaphore_signal(v15);
  }
}

void sub_1000050C4(uint64_t a1, int a2)
{
  v4 = CheckerBoardLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connected to wifi network specified in nvram", buf, 2u);
    }

    v6 = [*(a1 + 32) wifiReconnectTimer];

    if (v6)
    {
      v7 = [*(a1 + 32) wifiReconnectTimer];
      [v7 invalidate];

      [*(a1 + 32) setWifiReconnectTimer:0];
    }

    v8 = [*(a1 + 32) diagsLaunchDependenciesSemaphore];
    dispatch_semaphore_signal(v8);
  }

  else
  {
    if (v5)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to connect to wifi network specified in nvram. Setting timer to re-try", v11, 2u);
    }

    v9 = [*(a1 + 32) wifiReconnectTimer];

    if (v9)
    {
      v10 = [*(a1 + 32) wifiReconnectTimer];
      [v10 invalidate];
    }

    v8 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_attemptConnectingToWifi" selector:0 userInfo:0 repeats:2.0];
    [*(a1 + 32) setWifiReconnectTimer:v8];
  }
}

void sub_1000056EC(uint64_t a1)
{
  v2 = [*(a1 + 32) diagsLaunchDependenciesSemaphore];
  v3 = dispatch_time(0, 20);
  dispatch_semaphore_wait(v2, v3);

  v12 = 0;
  v4 = [CBSNVRamUtil readNVRamVariable:@"cb-auto-launch-diags" value:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([v5 length])
    {
      v8 = [[NSString alloc] initWithData:v6 encoding:4];
      v9 = [v8 BOOLValue];

      if (v9)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100005824;
        v10[3] = &unk_10007D540;
        v11 = *(a1 + 40);
        dispatch_async(&_dispatch_main_q, v10);
      }
    }
  }
}

void sub_100005824(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Moving directly to Diagnostics", v4, 2u);
  }

  v3 = objc_alloc_init(CBEndgameViewController);
  [*(a1 + 32) pushViewController:v3 animated:1];
}

void sub_100005CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005CCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained windowManager];
  [v1 windowDidDismiss:WeakRetained];
}

void sub_100005F00(id a1)
{
  qword_1000922E0 = objc_alloc_init(CBThermalManager);

  _objc_release_x1();
}

id sub_100006398(uint64_t a1, void *a2)
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handling thermal notification…", v5, 2u);
  }

  return [a2 _respondToCurrentThermalCondition];
}

id sub_100006410(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Thermal state changed", v4, 2u);
  }

  return [*(a1 + 32) _respondToCurrentThermalCondition];
}

void sub_100006A24(uint64_t a1)
{
  if ([*(a1 + 32) sampling])
  {
    v2 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = 0x4024000000000000;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Let's kill the thermally active application after %f seconds", buf, 0xCu);
    }

    v3 = *(a1 + 32);
    v5 = NSRunLoopCommonModes;
    v4 = [NSArray arrayWithObjects:&v5 count:1];
    [v3 performSelector:"_killThermallyActiveApplication" withObject:0 afterDelay:v4 inModes:10.0];
  }
}

void sub_100007290(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 && *(a1 + 168) != a2)
  {
    *(a1 + 168) = a2;
    if (a3 > 0.0 && (*(a1 + 120) & 1) != 0)
    {
      v4 = +[CBRecordingIndicatorDomain rootSettings];
      if (BSFloatGreaterThanOrEqualToFloat())
      {
        [v4 delayBeforeFadeOut180];
        v6 = v5;
        [v4 fadeOutDuration180];
        v8 = v7;
        [v4 delayBeforeFadeIn180];
        v10 = v9;
        [v4 fadeInDuration180];
      }

      else
      {
        [v4 delayBeforeFadeOut90];
        v6 = v12;
        [v4 fadeOutDuration90];
        v8 = v13;
        [v4 delayBeforeFadeIn90];
        v10 = v14;
        [v4 fadeInDuration90];
      }

      v15 = v11;
      objc_initWeak(&location, a1);
      v16 = [UIViewPropertyAnimator alloc];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000075BC;
      v29[3] = &unk_10007D668;
      objc_copyWeak(&v30, &location);
      v17 = [v16 initWithDuration:0 curve:v29 animations:v8];
      v18 = [UIViewPropertyAnimator alloc];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100007634;
      v27[3] = &unk_10007D668;
      objc_copyWeak(&v28, &location);
      v19 = [v18 initWithDuration:0 curve:v27 animations:v15];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1000076AC;
      v24 = &unk_10007D708;
      objc_copyWeak(v26, &location);
      v20 = v19;
      v25 = v20;
      v26[1] = v10;
      [v17 addCompletion:&v21];
      [v17 startAnimationAfterDelay:{v6, v21, v22, v23, v24}];

      objc_destroyWeak(v26);
      objc_destroyWeak(&v28);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {

      sub_100045CA4(a1);
    }
  }
}

void sub_100007570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 120));
  _Unwind_Resume(a1);
}

void sub_1000075BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setAlpha:0.0];

    [v3[14] setOpacity:0.0];
    WeakRetained = v3;
  }
}

void sub_100007634(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained view];
    [v2 setAlpha:1.0];

    LODWORD(v3) = 1.0;
    [v4[14] setOpacity:v3];
    WeakRetained = v4;
  }
}

void sub_1000076AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    sub_100045CA4(WeakRetained);
    [*(a1 + 32) startAnimationAfterDelay:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void sub_1000079B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000079D8(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v5 = @"on";
      }

      else
      {
        v5 = @"off";
      }

      v6 = [a1 location];
      v7 = @"Standalone";
      if (v6 == 1)
      {
        v7 = @"StatusBar";
      }

      if (v6 == 2)
      {
        v7 = @"SystemAperture";
      }

      v8 = v7;
      *buf = 138543618;
      v33 = v5;
      v34 = 2114;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at %{public}@ location (spring animation)", buf, 0x16u);
    }

    sub_100045F0C(a1);
    objc_initWeak(buf, a1);
    v9 = [a1 indicatorView];
    v10 = [v9 layer];
    if (a2)
    {
      if ((*(a1 + 120) & 1) == 0)
      {
        sub_100046488(a1, v10, 6.0);
        sub_1000465AC(a1, v10, @"filters.gaussianBlur.inputRadius", &off_100081288, &off_100081298, 1, 0.8);
      }

      v11 = [UIViewPropertyAnimator alloc];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100046680;
      v30[3] = &unk_10007D780;
      v12 = &v31;
      objc_copyWeak(&v31, buf);
      v30[4] = a1;
      v13 = [v11 initWithDuration:v30 dampingRatio:1.9 animations:0.35];
      v14 = *(a1 + 48);
      *(a1 + 48) = v13;

      v15 = *(a1 + 48);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100007EEC;
      v28[3] = &unk_10007D730;
      v16 = &v29;
      objc_copyWeak(&v29, buf);
      [v15 addCompletion:v28];
      sub_10004592C(a1, 1);
      [*(a1 + 48) startAnimation];
    }

    else
    {
      if ((*(a1 + 120) & 1) == 0)
      {
        sub_100046488(a1, v10, 0.0);
        sub_1000465AC(a1, v10, @"filters.gaussianBlur.inputRadius", &off_1000812A8, &off_1000812B8, 0, 1.0);
      }

      v17 = [UIViewPropertyAnimator alloc];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000466E4;
      v26[3] = &unk_10007D780;
      v12 = &v27;
      objc_copyWeak(&v27, buf);
      v26[4] = a1;
      v18 = [v17 initWithDuration:v26 dampingRatio:1.5 animations:1.02];
      v19 = *(a1 + 56);
      *(a1 + 56) = v18;

      v20 = *(a1 + 56);
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100007F44;
      v24 = &unk_10007D730;
      v16 = &v25;
      objc_copyWeak(&v25, buf);
      [v20 addCompletion:&v21];
      sub_10004592C(a1, 3);
      [*(a1 + 56) startAnimation];
    }

    objc_destroyWeak(v16);
    objc_destroyWeak(v12);

    objc_destroyWeak(buf);
  }
}

void sub_100007E10(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_100007E94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    sub_100046A2C(WeakRetained, a1);
    WeakRetained = v3;
  }
}

void sub_100007EEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained indicatorState] == 1)
  {
    sub_10004592C(WeakRetained, 2);
  }
}

void sub_100007F44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained indicatorState] == 3)
  {
    sub_10004592C(WeakRetained, 0);
  }
}

uint64_t sub_1000082A4@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a2.n128_f64[0] = *(v3 + a1) / v6;
  a3.n128_u64[0] = v5;

  return _UIRoundToScale(a2, a3);
}

id sub_1000082C0()
{

  return +[CATransaction begin];
}

id sub_1000082E8()
{
  v2 = *(v0 + 2864);

  return [v2 setDisableActions:1];
}

void sub_100008344(id a1)
{
  qword_1000922F0 = objc_alloc_init(CBStatusBarStateAggregator);

  _objc_release_x1();
}

void sub_100008CB8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_100092300;
  qword_100092300 = v1;

  v3 = qword_100092300;
  v4 = +[NSLocale currentLocale];
  [v3 setLocale:v4];

  [qword_100092300 setDateStyle:0];
  v5 = qword_100092300;

  [v5 setTimeStyle:1];
}

id sub_100008DD8(uint64_t a1)
{
  v1 = [*(a1 + 32) _timeItemDateFormatter];
  v2 = [v1 copy];
  v3 = qword_100092310;
  qword_100092310 = v2;

  v4 = qword_100092310;

  return [v4 setLocalizedDateFormatFromTemplate:@"Jmm"];
}

void sub_100009388(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_100092320;
  qword_100092320 = v1;

  [qword_100092320 setNumberStyle:3];
  v3 = qword_100092320;

  [v3 _setUsesCharacterDirection:1];
}

void sub_1000095AC(id a1, int a2)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Battery Saver Mode changed", v3, 2u);
  }
}

const __CFString *sub_10000AA04(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"invalid";
  }

  else
  {
    return off_10007D840[a1];
  }
}

id sub_10000AD30(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = CBSensorActivityAttribution;
  return objc_msgSendSuper2(&v2, "hash");
}

void sub_10000AF74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = sub_10000AA04([*(a1 + 40) sensor]);
  v2 = [v1 appendObject:v3 withName:@"sensor"];
}

void sub_10000BBDC(id a1, unint64_t a2)
{
  if (!a2)
  {
    v6 = v2;
    v7 = v3;
    [CBSystem checkoutAndReboot:1 userInitiated:1];
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Exit Diagnostics] button was tapped. Checking out now…", v5, 2u);
    }
  }
}

void sub_10000BEAC(void *a1)
{
  v1 = a1;
  v2 = 0;
  do
  {
    if (v2 >= 0x25 && (v2 > 0x31 || ((1 << v2) & 0x3ED4000000000) == 0))
    {
      break;
    }

    v3 = 0;
    v1[2](v1, v2++, &v3);
  }

  while (v3 != 1);
}

unint64_t sub_10000BF8C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = 2;
  v3 = 1;
  if (((1 << result) & 0xF80000007) == 0)
  {
    v3 = 2;
  }

  if (result <= 0x23)
  {
    v2 = v3;
  }

  *(a2 + 32) = v2;
  switch(result)
  {
    case 0uLL:
      *a2 = xmmword_100059360;
      v6 = 0x4000000000000000;
      v7 = 568;
      goto LABEL_56;
    case 1uLL:
      *a2 = xmmword_100059370;
      v6 = 0x4000000000000000;
      v7 = 569;
      goto LABEL_56;
    case 2uLL:
      *a2 = xmmword_100059380;
      v6 = 0x4008000000000000;
      v7 = 570;
      goto LABEL_56;
    case 3uLL:
      v16 = xmmword_1000593A0;
      goto LABEL_36;
    case 4uLL:
      v16 = xmmword_100059390;
LABEL_36:
      *a2 = v16;
      v6 = 0x4008000000000000;
      v7 = 2436;
      goto LABEL_56;
    case 5uLL:
      v15 = xmmword_1000593C0;
      goto LABEL_32;
    case 6uLL:
      v15 = xmmword_1000593A0;
LABEL_32:
      *a2 = v15;
      v6 = 0x4008000000000000;
      v7 = 2688;
      goto LABEL_56;
    case 7uLL:
      v14 = xmmword_1000593C0;
      goto LABEL_29;
    case 8uLL:
      v14 = xmmword_1000593A0;
LABEL_29:
      *a2 = v14;
      v6 = 0x4000000000000000;
      v7 = 1792;
      goto LABEL_56;
    case 9uLL:
    case 0xFuLL:
      v5 = xmmword_1000593A0;
      goto LABEL_13;
    case 0xAuLL:
    case 0x10uLL:
      v5 = xmmword_100059390;
LABEL_13:
      *a2 = v5;
      v6 = 0x4008000000000000;
      v7 = 2340;
      goto LABEL_56;
    case 0xBuLL:
    case 0x11uLL:
      v8 = xmmword_1000593B0;
      goto LABEL_16;
    case 0xCuLL:
    case 0x12uLL:
      v8 = xmmword_100059390;
LABEL_16:
      *a2 = v8;
      v6 = 0x4008000000000000;
      v7 = 2532;
      goto LABEL_56;
    case 0xDuLL:
    case 0x13uLL:
      v4 = xmmword_1000593D0;
      goto LABEL_11;
    case 0xEuLL:
    case 0x14uLL:
      v4 = xmmword_1000593A0;
LABEL_11:
      *a2 = v4;
      v6 = 0x4008000000000000;
      v7 = 2778;
      goto LABEL_56;
    case 0x15uLL:
      v17 = xmmword_1000593E0;
      goto LABEL_49;
    case 0x16uLL:
      v17 = xmmword_100059390;
LABEL_49:
      *a2 = v17;
      v6 = 0x4008000000000000;
      v7 = 2556;
      goto LABEL_56;
    case 0x17uLL:
      v12 = xmmword_1000593F0;
      goto LABEL_47;
    case 0x18uLL:
      v12 = xmmword_1000593A0;
LABEL_47:
      *a2 = v12;
      v6 = 0x4008000000000000;
      v7 = 2796;
      goto LABEL_56;
    case 0x19uLL:
      v18 = xmmword_100059400;
      goto LABEL_51;
    case 0x1AuLL:
      v18 = xmmword_100059390;
LABEL_51:
      *a2 = v18;
      v6 = 0x4008000000000000;
      v7 = 2622;
      goto LABEL_56;
    case 0x1BuLL:
      v10 = xmmword_100059410;
      goto LABEL_43;
    case 0x1CuLL:
      v10 = xmmword_1000593A0;
LABEL_43:
      *a2 = v10;
      v6 = 0x4008000000000000;
      v7 = 2868;
      goto LABEL_56;
    case 0x1DuLL:
      v11 = xmmword_100059420;
      goto LABEL_24;
    case 0x1EuLL:
      v11 = xmmword_100059390;
LABEL_24:
      *a2 = v11;
      v6 = 0x4008000000000000;
      v7 = 2736;
      goto LABEL_56;
    case 0x1FuLL:
    case 0x20uLL:
    case 0x2BuLL:
      *a2 = xmmword_100059430;
      *(a2 + 16) = 0x4000000000000000;
      return result;
    case 0x21uLL:
      *a2 = xmmword_100059440;
      v6 = 0x4000000000000000;
      v7 = 2160;
      goto LABEL_56;
    case 0x22uLL:
      *a2 = xmmword_100059450;
      v6 = 0x4000000000000000;
      v7 = 2224;
      goto LABEL_56;
    case 0x23uLL:
    case 0x2AuLL:
      *a2 = xmmword_100059460;
      v6 = 0x4000000000000000;
      v7 = 2732;
      goto LABEL_56;
    case 0x24uLL:
      *a2 = xmmword_100059470;
      v6 = 0x4000000000000000;
      v7 = 2266;
      goto LABEL_56;
    case 0x26uLL:
      *a2 = xmmword_1000594A0;
      v6 = 0x4000000000000000;
      v7 = 2360;
      goto LABEL_56;
    case 0x28uLL:
      *a2 = xmmword_1000594B0;
      v6 = 0x4000000000000000;
      v7 = 2388;
      goto LABEL_56;
    case 0x2DuLL:
      v13 = xmmword_1000594C0;
      goto LABEL_39;
    case 0x2EuLL:
      v13 = xmmword_1000594D0;
LABEL_39:
      *a2 = v13;
      v6 = 0x4000000000000000;
      v7 = 2420;
      goto LABEL_56;
    case 0x2FuLL:
      v9 = xmmword_1000594F0;
      goto LABEL_53;
    case 0x30uLL:
      v9 = xmmword_100059490;
      goto LABEL_53;
    case 0x31uLL:
      v9 = xmmword_100059500;
LABEL_53:
      *a2 = v9;
      v6 = 0x4000000000000000;
      v7 = 2752;
LABEL_56:
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000C41C(uint64_t a1, uint64_t a2)
{
  v3 = *a1 == *a2;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v3 = 0;
  }

  result = *(a1 + 16) == *(a2 + 16) && v3;
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      v7 = v5 == v6;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7;
    result = v8 & result;
  }

  v9 = *(a1 + 32);
  if (v9 != -1)
  {
    v10 = *(a2 + 32);
    v11 = ((v9 == 2) ^ (v10 != 2)) & result;
    if (v10 == -1)
    {
      return result;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

void sub_10000C4DC(id a1)
{
  qword_100092330 = objc_alloc_init(CBRemoteSetupManager);

  _objc_release_x1();
}

void sub_10000C8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C8DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSetupEvent:v3];
}

void sub_10000D72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D74C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000D764(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Network is not reachable. Failing remote setup.", v4, 2u);
  }

  [*(a1 + 32) removeObserver:*(*(*(a1 + 40) + 8) + 40)];
  return [*(*(*(a1 + 40) + 8) + 40) setupFailed];
}

void sub_10000ECB4(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wi-Fi network scan completed notification sent", v6, 2u);
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 wifiManager];
  [v3 enableContinueButton:{objc_msgSend(v4, "isAssociatedToNetwork")}];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateNetworkList];
}

void sub_10000F588(id a1, unint64_t a2)
{
  if (!a2)
  {
    [CBSystem checkoutAndReboot:1 userInitiated:1];
  }
}

void sub_10000F9E4(uint64_t a1)
{
  v2 = [*(a1 + 32) targetNetworkForBootIntent];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [*(a1 + 32) wifiManager];
  v4 = [v3 filteredWiFiScanResults];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v27 = 0;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [[CBNetworkListRecord alloc] initWithScanResult:v9];
        [*(a1 + 40) addObject:v10];
        v11 = [v9 networkName];
        v12 = [*(a1 + 32) wifiManager];
        v13 = [v12 currentNetworkSSID];
        v14 = [v11 isEqualToString:v13];

        if (v14)
        {
          v15 = v10;

          v27 = v15;
        }

        if (v2)
        {
          v16 = [v2 ssid];
          v17 = [(CBNetworkListRecord *)v10 ssid];
          v18 = [v16 isEqualToString:v17];

          if (v18)
          {
            v19 = v10;

            [*(a1 + 32) setTargetNetworkForBootIntent:v19];
            v2 = v19;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  else
  {
    v27 = 0;
  }

  if (v2 && ([*(a1 + 40) containsObject:v2] & 1) == 0)
  {
    [*(a1 + 40) addObject:v2];
  }

  [*(a1 + 32) setNetworks:*(a1 + 40)];
  v20 = *(a1 + 32);
  if (v27)
  {
    v21 = [v20 currentNetwork];

    if (v21 != v27)
    {
      [*(a1 + 32) setCurrentNetwork:v27];
      if ([*(a1 + 32) networkConnectionInProgress])
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      v23 = *(a1 + 32);
      goto LABEL_31;
    }
  }

  else
  {
    if (!v2)
    {
      [v20 setCurrentNetwork:0];
      v23 = *(a1 + 32);
      v22 = 0;
LABEL_31:
      [v23 setCurrentNetworkState:v22];
      goto LABEL_32;
    }

    v24 = [v20 currentNetwork];

    if (v24 != v2)
    {
      [*(a1 + 32) setCurrentNetwork:v2];
      if ([*(a1 + 32) networkConnectionInProgress])
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      [*(a1 + 32) setCurrentNetworkState:v25];
      [*(a1 + 32) enableContinueButton:1];
    }
  }

LABEL_32:
}

void sub_1000102B4(id a1)
{
  v1 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Alternate Network View Controller presented", v2, 2u);
  }
}

void sub_100011AB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Language Location: Wifi scan failed with error %@", &v7, 0xCu);
    }

    [*(a1 + 32) _closeWifiConnection];
  }

  else
  {
    [*(a1 + 32) _scanComplete:a3];
  }
}

void sub_100012A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012A80(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100046DCC(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained mainNavigationController];
  v5 = [v4 popToRootViewControllerAnimated:1];

  v6 = [*(a1 + 32) localServiceClient];
  LODWORD(v4) = [v6 didMoveToEndgame];

  if (v4)
  {
    v7 = [*(a1 + 32) localServiceClient];
    [v7 relaunchToDiagnosticsApp];
  }
}

void sub_100012B3C(id a1)
{
  v1 = +[CBWiFiManager sharedInstance];
  [v1 updateWiFiState];
}

void sub_100013D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013DA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Status bar server dataAccessDomain updated with data %@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013EE0;
  v6[3] = &unk_10007DAA0;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, (a1 + 32));
  dispatch_async(&_dispatch_main_q, v6);
  objc_destroyWeak(&v8);
}

void sub_100013EE0(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Status bar server dataAccessDomain updated with data %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleNewDomainData:*(a1 + 32)];
}

BOOL sub_10001429C(id a1, CBSensorActivityAttribution *a2, BOOL *a3)
{
  v3 = a2;
  if ([(CBSensorActivityAttribution *)v3 sensor])
  {
    v4 = [(CBSensorActivityAttribution *)v3 sensor]== 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

id sub_100014788(id a1, STUIDataAccessAttribution *a2)
{
  v2 = a2;
  v3 = [[CBSensorActivityAttribution alloc] initWithDataAccessAttribution:v2];

  return v3;
}

id sub_1000147E0(id a1, STUIDataAccessAttribution *a2)
{
  v2 = a2;
  v3 = [[CBSensorActivityAttribution alloc] initWithDataAccessAttribution:v2];

  return v3;
}

void sub_100014AE0(id a1)
{
  qword_100092348 = objc_alloc_init(CBAppManager);

  _objc_release_x1();
}

void sub_100014FFC(uint64_t a1)
{
  v2 = [[CBAppLaunch alloc] initWithBundleID:*(a1 + 32) backgrounded:*(a1 + 56) native:*(a1 + 57)];
  v3 = [*(a1 + 40) openApps];
  [v3 addObject:v2];

  objc_initWeak(&location, v2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015120;
  v4[3] = &unk_10007DAA0;
  v4[4] = *(a1 + 40);
  objc_copyWeak(&v5, &location);
  [(CBAppLaunch *)v2 setOnExit:v4];
  [(CBAppLaunch *)v2 setOnLaunch:*(a1 + 48)];
  [(CBAppLaunch *)v2 launch];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_100015100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100015120(uint64_t a1)
{
  v3 = [*(a1 + 32) openApps];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:WeakRetained];
}

void sub_1000153B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000153E0(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Terminate event handler called", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = +[FBProcessManager sharedInstance];
  v5 = [v4 applicationProcessesForBundleIdentifier:*(a1 + 32)];

  [WeakRetained _terminateApps:v5 reason:*(a1 + 64) reportCrash:*(a1 + 72) description:*(a1 + 40) completion:*(a1 + 48)];
}

uint64_t sub_1000158B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_1000158CC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015950;
  block[3] = &unk_10007D540;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100015C14(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleIdentifier];
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Posting layout change for frontboard on behalf of %@", &v10, 0xCu);
  }

  v4 = [FBSDisplayLayoutElement alloc];
  v5 = [*(a1 + 32) bundleIdentifier];
  v6 = [v4 initWithIdentifier:v5];

  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  [v6 setReferenceFrame:?];

  [v6 setLevel:1];
  v8 = +[FBMainDisplayLayoutPublisher sharedInstance];
  v9 = [v8 addElement:v6];
  [*(a1 + 40) setLayoutElementInvalidator:v9];
}

id sub_100015F68(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleIdentifier];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating layout change for frontboard on behalf of %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) layoutElementInvalidator];
  [v4 invalidate];

  return [*(a1 + 40) setLayoutElementInvalidator:0];
}

void sub_100016824(id a1, void *a2)
{
  v2 = a2;
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Observing idle timer disabled state…", &v17, 2u);
  }

  v4 = [v2 updatedClientSettings];
  v5 = [v4 idleTimerDisabled];

  v6 = [v2 settings];
  v7 = [v6 isForeground];

  v8 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v2 scene];
    v10 = v9;
    v11 = "NO";
    if (v5)
    {
      v11 = "YES";
    }

    v12 = " (ignoring because isForeground is false)";
    v17 = 138412802;
    v18 = v9;
    v20 = v11;
    v19 = 2080;
    if (v7)
    {
      v12 = "";
    }

    v21 = 2080;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scene %@ is setting idleTimerDisabled to: %s%s", &v17, 0x20u);
  }

  if (v7)
  {
    v13 = +[CBIdleSleepManager sharedInstance];
    v14 = CheckerBoardLogHandleForCategory();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v15)
      {
        LOWORD(v17) = 0;
        v16 = "Disabling idle timer per app request";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, &v17, 2u);
      }
    }

    else if (v15)
    {
      LOWORD(v17) = 0;
      v16 = "Enabling idle timer per app request";
      goto LABEL_15;
    }

    [v13 setIdleTimerDisabled:v5 forReason:@"AppRequest"];
  }
}

void sub_100016FE8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDisplayConfiguration:*(a1 + 32)];
  [*(a1 + 32) bounds];
  [v3 setFrame:?];
  [v3 setForeground:1];
  [CBSceneManager windowLevel:1];
  [v3 setLevel:?];
  [v3 setInterfaceOrientation:1];
  if ([v3 isUISubclass])
  {
    [v3 setInterfaceOrientationMode:2];
  }
}

void sub_10001821C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a72);
  objc_destroyWeak(&STACK[0x230]);
  _Unwind_Resume(a1);
}

id sub_100018260(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([*(a1 + 32) passwordType] == 8)
    {
      v6 = [*(a1 + 32) view];
      [v6 bounds];
      v8 = v7;
      v9 = [*(a1 + 32) headerView];
      [v9 bounds];
      v11 = v8 - v10;
      v12 = [*(a1 + 32) buttonTray];
      [v12 bounds];
      v14 = v11 - v13;

      v15 = [v4 heightAnchor];
      v16 = [v15 constraintEqualToConstant:v14];
      [WeakRetained setHeightConstraint:v16];
    }

    else
    {
      v17 = [WeakRetained heightConstraint];
      [v17 setActive:0];

      [WeakRetained setHeightConstraint:0];
    }
  }

  v18 = [WeakRetained heightConstraint];

  return v18;
}

id sub_100018610(id a1)
{
  if (a1 <= 2)
  {
    a1 = **(&off_10007DD08 + a1);
  }

  return a1;
}

void *sub_1000188DC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id sub_100019168(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) displayName];
  v4 = [v2 appendObject:v3 withName:@"displayName"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) bundleIdentifier];
  v7 = [v5 appendObject:v6 withName:@"bundleIdentifier"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) website];
  v10 = [v8 appendObject:v9 withName:@"website"];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isSystemService"), @"isSystemService"}];
}

void sub_1000192C8(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_100091410 = v2 == 0;
  }
}

void sub_10001C150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 176));
  objc_destroyWeak((v1 - 168));
  _Unwind_Resume(a1);
}

id sub_10001C198(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained view];
    [v7 frame];
    v9 = v8;
    v10 = [v6 headerView];
    [v10 frame];
    v12 = v9 - v11 + -120.0;

    v13 = [v4 heightAnchor];
    v14 = [v13 constraintEqualToConstant:v12];
    [v6 setHeightConstraint:v14];
  }

  v15 = [v6 heightConstraint];

  return v15;
}

void sub_10001C964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak((v27 - 136));
  _Unwind_Resume(a1);
}

id sub_10001C9A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained heightConstraint];
    [v3 setActive:0];

    [v2 setHeightConstraint:0];
  }

  v4 = [v2 heightConstraint];

  return v4;
}

FBProcessExecutionContext *__cdecl sub_10001CE64(id a1)
{
  v1 = objc_alloc_init(FBMutableProcessExecutionContext);
  [v1 setLaunchIntent:4];

  return v1;
}

void sub_10001CEAC(id a1, BOOL a2)
{
  v2 = a2;
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Transaction completed, success: %d", v4, 8u);
  }
}

void sub_10001D058(uint64_t a1)
{
  v2 = [*(a1 + 32) windowRepresentation];
  [v2 dismissViewControllerAnimated:1];

  v3 = [*(a1 + 32) onExit];

  if (v3)
  {
    v4 = [*(a1 + 32) onExit];
    v4[2]();
  }
}

void sub_10001D4CC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CheckerBoardLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000471A0(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Launched primary app", v5, 2u);
  }
}

void sub_10001D5A8(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CBLocalServiceClientInterface];
  v2 = qword_100092380;
  qword_100092380 = v1;

  v3 = qword_100092380;
  v4 = [NSSet setWithObject:objc_opt_class()];
  [v3 setClasses:v4 forSelector:"setProxyServer:completion:" argumentIndex:0 ofReply:0];
}

void sub_10001D694(id a1)
{
  qword_100092390 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CBLocalServiceServerInterface];

  _objc_release_x1();
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  +[CBUtilities disableS2R];
  v5 = FBSystemShellInitialize();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = UIApplicationMain(a1, a2, v7, v9);

  objc_autoreleasePoolPop(v4);
  return v10;
}

void sub_10001D794(id a1, FBMutableSystemShellInitializationOptions *a2)
{
  v2 = a2;
  [(FBMutableSystemShellInitializationOptions *)v2 setShouldWaitForMigrator:0];
  [(FBMutableSystemShellInitializationOptions *)v2 setRegisterAdditionalServicesBlock:&stru_10007DF08];
}

void sub_10001D834(id a1)
{
  qword_100092398 = objc_alloc_init(CBAPTicket);

  _objc_release_x1();
}

void sub_10001FCF0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10001FD5C(id a1)
{
  qword_1000923B8 = objc_alloc_init(CBIdleSleepManager);

  _objc_release_x1();
}

void sub_10001FF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001FF68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 eventMask];
  v6 = CheckerBoardLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Dimming for idle", &v8, 2u);
    }

    [WeakRetained dimDisplay];
  }

  else
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CBIdleSleepManager] Reset idle for event %@", &v8, 0xCu);
    }

    [WeakRetained resetIdleTimerAndUndim:1];
  }
}

void sub_1000216B0(id a1)
{
  v1 = +[UIKeyboard activeKeyboard];
  if (v1)
  {
    v2 = v1;
    if (([v1 isMinimized] & 1) == 0)
    {
      [v2 setMinimized:1];
    }
  }

  _objc_release_x1();
}

void sub_1000217C4(id a1)
{
  v1 = +[UIKeyboard activeKeyboard];
  if (v1)
  {
    v2 = v1;
    [v1 setMinimized:{+[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode")}];
    v1 = v2;
  }
}

void sub_1000218F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100021954(id a1)
{
  qword_1000923E0 = [[CBAlertManager alloc] _init];

  _objc_release_x1();
}

uint64_t sub_10002200C(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Triggered [Exit Diagnostics].", v4, 2u);
  }

  [*(a1 + 32) setAlertVisible:0];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10002209C(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Triggered [Wi-Fi Settings].", v4, 2u);
  }

  [*(a1 + 32) setAlertVisible:0];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10002212C(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Triggered [Shut Down].", v4, 2u);
  }

  [*(a1 + 32) setAlertVisible:0];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000221BC(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Triggered [Debug Info].", v4, 2u);
  }

  [*(a1 + 32) setAlertVisible:0];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_10002224C(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Triggered [Cancel].", v4, 2u);
  }

  [*(a1 + 32) setAlertVisible:0];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000222DC(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Menu sheet presented.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_1000226F0(uint64_t a1)
{
  [*(a1 + 32) setAlertVisible:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_10002273C(uint64_t a1)
{
  [*(a1 + 32) setAlertVisible:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_100022788(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CheckerBoard confirmation alert presented.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_1000229E4(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wi-Fi picker presented.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_100022C78(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Thermal warning UI presented.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_100022EF0(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Power Down UI presented.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_100023144(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Debug info presented.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_1000239AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1000239C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained window];
  [v3 viewControllerDidDismiss];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_100023D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023D58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPresentedView:0];
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dismissed view controller on %@", &v4, 0xCu);
  }

  v3 = [WeakRetained windowManager];
  [v3 windowDidDismiss:WeakRetained];
}

void sub_10002414C(id a1)
{
  v1 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Local XPC - _connection.interruptionHandler", v2, 2u);
  }
}

void sub_1000241B8(id a1)
{
  v1 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Local XPC - _connection.invalidationHandler", v2, 2u);
  }
}

void sub_10002434C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Local XPC - Can't get remote proxy object %@", &v4, 0xCu);
  }
}

void sub_1000243FC(id a1)
{
  v1 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Local XPC - ping pong", v2, 2u);
  }
}

void sub_1000244AC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Relaunch Diagnostics app again. error = %@", &v4, 0xCu);
    }
  }
}

void sub_100024758(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Local XPC - moveToDiagnosticsApp: move to endgame.", v5, 2u);
  }

  v3 = objc_alloc_init(CBEndgameViewController);
  v4 = [*(a1 + 32) mainNavController];
  [v4 pushViewController:v3 animated:1];

  [*(a1 + 32) setDidMoveToEndgame:1];
  (*(*(a1 + 40) + 16))();
}

void sub_100024B40(id a1)
{
  if (+[CBUtilities isRunningOnPhysicalHardware])
  {
    qword_1000923F0 = objc_alloc_init(CBWiFiManager);

    _objc_release_x1();
  }

  else
  {
    v1 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_1000476C8();
    }
  }
}

void sub_100025158(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10002518C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCWInterfaceEvent:v3];
}

void sub_1000251E8(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "cwInterface was invalidated. Recreating", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_alloc_init(CWFInterface);
  [WeakRetained setCwInterface:v4];

  v5 = [WeakRetained cwInterface];
  [v5 activate];

  [WeakRetained _registerWiFiNotifications];
}

void sub_100025B80(uint64_t a1)
{
  [*(a1 + 32) _attemptReconnect];
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_attemptReconnect" selector:0 userInfo:1 repeats:8.0];
  [*(a1 + 32) setReconnectTimer:v2];

  v3 = +[NSRunLoop currentRunLoop];
  v4 = [*(a1 + 32) reconnectTimer];
  [v3 addTimer:v4 forMode:NSRunLoopCommonModes];

  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reconnect scheduled", v6, 2u);
  }
}

int64_t sub_100025E20(id a1, CWFScanResult *a2, CWFScanResult *a3)
{
  v4 = a3;
  v5 = [(CWFScanResult *)a2 networkName];
  v6 = [(CWFScanResult *)v4 networkName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

void sub_100026528(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained networkScanSemaphore];
  v4 = dispatch_time(0, 10000000000);
  v5 = dispatch_semaphore_wait(v3, v4);

  v6 = [*(a1 + 32) cwInterface];

  v7 = CheckerBoardLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6 || v5)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unfortunately, we do not have a Wi-Fi device available for network scan… Let's try again", buf, 2u);
    }

    [*(a1 + 32) _restartWiFiNetworkScan];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device is available for network scan", buf, 2u);
    }

    v9 = [*(a1 + 32) scanParametersWithSSID:0 isHidden:0];
    v10 = [*(a1 + 32) cwInterface];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000266E8;
    v11[3] = &unk_10007E250;
    objc_copyWeak(&v12, (a1 + 40));
    [v10 performScanWithParameters:v9 reply:v11];

    objc_destroyWeak(&v12);
  }
}

void sub_1000266E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained networkScanSemaphore];
  dispatch_semaphore_signal(v8);

  if (v5)
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100047744();
    }

    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 _restartWiFiNetworkScan];
  }

  else
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 _wifiScanCompleted:v6];
  }
}

void sub_100026DD0(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_startWiFiNetworkScan" selector:0 userInfo:0 repeats:*(a1 + 40)];
  [*(a1 + 32) setScanTimer:v2];
}

void sub_100027264(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained networkScanSemaphore];
  v4 = dispatch_time(0, 10000000000);
  v5 = dispatch_semaphore_wait(v3, v4);

  v6 = [*(a1 + 32) cwInterface];

  if (!v6 || v5)
  {
    v10 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) cwInterface];
      *buf = 138412546;
      v24 = v11;
      v25 = 2048;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping scan: %@ + semaphore result: %li", buf, 0x16u);
    }

    v7 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"Wifi", [&off_1000811C8 integerValue], 0);
    v12 = *(a1 + 64);
    v13 = +[NSNotificationCenter defaultCenter];
    if (v12)
    {
      v21 = @"CBWiFiManagerErrorKey";
      v22 = v7;
      v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      [v13 postNotificationName:@"CBWiFiManagerDidAssociateToOpenNetworkNotification" object:0 userInfo:v14];
    }

    else
    {
      v19 = @"CBWiFiManagerErrorKey";
      v20 = v7;
      v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [v13 postNotificationName:@"CBWiFiManagerDidAssociateToEncryptedNetworkNotification" object:0 userInfo:v14];
    }
  }

  else
  {
    v7 = [*(a1 + 32) scanParametersWithSSID:*(a1 + 40) isHidden:*(a1 + 64)];
    v8 = objc_loadWeakRetained((a1 + 56));
    v9 = [v8 cwInterface];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100027558;
    v15[3] = &unk_10007E2A0;
    objc_copyWeak(&v17, (a1 + 56));
    v16 = *(a1 + 48);
    v18 = *(a1 + 64);
    [v9 performScanWithParameters:v7 reply:v15];

    objc_destroyWeak(&v17);
  }
}

void sub_100027558(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained networkScanSemaphore];
  dispatch_semaphore_signal(v6);

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 updateWiFiState];

  v8 = [NSMutableArray arrayWithArray:v4];

  v9 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [v8 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There are %lu directed scan results", buf, 0xCu);
  }

  if ([v8 count])
  {
    v10 = [v8 count];
    v11 = CheckerBoardLogHandleForCategory();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 == 1)
    {
      if (v12)
      {
        *buf = 0;
        v13 = "Attempting to associate to that one";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      }
    }

    else if (v12)
    {
      *buf = 0;
      v13 = "Attempting to associate to the first scan result";
      goto LABEL_10;
    }

    v15 = [v8 objectAtIndexedSubscript:0];
    v16 = objc_loadWeakRetained((a1 + 40));
    [v16 _associateToEncryptedNetworkWithScanResult:v15 password:*(a1 + 32) isHidden:*(a1 + 48)];
    goto LABEL_12;
  }

  v14 = objc_loadWeakRetained((a1 + 40));
  [v14 updateWiFiState];

  v15 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"Wifi", [&off_1000811C8 integerValue], 0);
  v16 = +[NSNotificationCenter defaultCenter];
  v18 = @"CBWiFiManagerErrorKey";
  v19 = v15;
  v17 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v16 postNotificationName:@"CBWiFiManagerDidAssociateToOpenNetworkNotification" object:0 userInfo:v17];

LABEL_12:
}

void sub_100027B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100027BA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000477F0();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postDidAssociateToEncryptedNetworkNotificationWithError:v3];
}

void sub_100027D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100027DA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100047860();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postDidAssociateToOpenNetworkNotificationWithError:v3];
}

void sub_100027F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100027FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000478D0();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postDidAssociateToOpenNetworkNotificationWithError:v3];
}

void sub_1000287C0(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"CBWiFiSignalStrengthChangedNotification" object:0 userInfo:0];
}

void sub_1000288F8(uint64_t a1)
{
  v4 = +[NSMutableDictionary dictionary];
  v2 = *(a1 + 32);
  if (v2)
  {
    [v4 setObject:v2 forKeyedSubscript:@"CBWiFiManagerErrorKey"];
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"CBWiFiManagerDidAssociateToEncryptedNetworkNotification" object:0 userInfo:v4];
}

void sub_100028A6C(uint64_t a1)
{
  v4 = +[NSMutableDictionary dictionary];
  v2 = *(a1 + 32);
  if (v2)
  {
    [v4 setObject:v2 forKeyedSubscript:@"CBWiFiManagerErrorKey"];
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"CBWiFiManagerDidAssociateToOpenNetworkNotification" object:0 userInfo:v4];
}

void sub_10002908C(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBarView];
  [v1 setHidden:0];

  v2 = +[NSNotificationCenter defaultCenter];
  v4 = @"isHidden";
  v5 = &__kCFBooleanFalse;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 postNotificationName:@"CBStatusBarVisibilityChangedNotification" object:0 userInfo:v3];
}

void sub_100029240(uint64_t a1)
{
  v1 = [*(a1 + 32) statusBarView];
  [v1 setHidden:1];

  v2 = +[NSNotificationCenter defaultCenter];
  v4 = @"isHidden";
  v5 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 postNotificationName:@"CBStatusBarVisibilityChangedNotification" object:0 userInfo:v3];
}

void sub_100029438(uint64_t a1)
{
  v3 = [*(a1 + 32) statusBarView];
  v2 = [v3 statusBar];
  [v2 setStyle:{objc_msgSend(*(a1 + 32), "_statusBarStyle:", *(a1 + 40))}];
}

void sub_1000295E0(id a1)
{
  qword_100092400 = objc_alloc_init(CBSceneManager);

  _objc_release_x1();
}

void sub_100029B98(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[FBDisplayManager mainConfiguration];
  [v5 setDisplayConfiguration:v3];

  v4 = +[UIScreen mainScreen];
  [v4 _referenceBounds];
  [v5 setFrame:?];

  [v5 setLevel:*(a1 + 32)];
  [v5 setForeground:1];
  [v5 setInterfaceOrientation:1];
  if ([v5 isUISubclass])
  {
    [v5 setDeviceOrientationEventsEnabled:1];
  }
}

void sub_100029C60(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isUISubclass])
  {
    v3 = [*(a1 + 32) settings];
    [v4 setInterfaceOrientation:{objc_msgSend(v3, "interfaceOrientation")}];

    [v4 setStatusBarStyle:0];
  }
}

void sub_10002A2D4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) allKeys];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        v7 = +[FBSceneManager sharedInstance];
        [v7 destroyScene:v6 withTransitionContext:0];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void sub_10002A640(id a1)
{
  qword_100092410 = objc_alloc_init(CBWindowManager);

  _objc_release_x1();
}

uint64_t sub_10002AC9C(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presented", v5, 2u);
  }

  v3 = [*(a1 + 32) windowManager];
  [v3 windowDidAppear:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002B53C(id a1)
{
  qword_100092420 = objc_alloc_init(CBShellServer);

  _objc_release_x1();
}

void sub_10002B7E0(uint64_t a1)
{
  v2 = [*(a1 + 32) systemServicesDelegate];
  [v2 exitRequestedWithServer:*(a1 + 32)];
}

void sub_10002BC7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained systemServicesDelegate];
  [v1 launchDiagnostics];
}

void sub_10002C748(id a1)
{
  v1 = [UISMutableDisplayContext alloc];
  v2 = +[FBDisplayManager sharedInstance];
  v3 = [v2 mainConfiguration];
  v19 = [v1 initWithDisplayConfiguration:v3];

  v4 = sub_1000352D8();
  v5 = +[FBDisplayManager sharedInstance];
  v6 = [v5 mainConfiguration];
  [v19 setDisplayConfiguration:v6];

  v7 = sub_1000364DC(v4);
  [v19 setDisplayEdgeInfo:v7];

  v8 = sub_1000368D4(v4);
  [v19 setExclusionArea:v8];

  [v19 setArtworkSubtype:sub_1000353D0()];
  v9 = +[UIUserInterfaceStyleArbiter sharedInstance];
  v10 = v9;
  if (v9)
  {
    [v19 setUserInterfaceStyle:{objc_msgSend(v9, "currentStyle")}];
  }

  v11 = [[UISMutableDeviceContext alloc] initWithDeviceInfoValues:&__NSDictionary0__struct];
  v12 = +[BSPlatform sharedInstance];
  v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 deviceClass]);
  [v11 setDeviceInfoValue:v13 forKey:UISDeviceContextDeviceClassKey];

  v14 = +[BSPlatform sharedInstance];
  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 homeButtonType]);
  [v11 setDeviceInfoValue:v15 forKey:UISDeviceContextHomeButtonTypeKey];

  MGGetFloat32Answer();
  v16 = [NSNumber numberWithFloat:?];
  [v11 setDeviceInfoValue:v16 forKey:UISDeviceContextDeviceCornerRadiusKey];

  v17 = [[UISApplicationInitializationContext alloc] initWithDisplayContext:v19 deviceContext:v11 persistedSceneIdentifiers:0 supportAppSceneRequests:1];
  v18 = qword_100092430;
  qword_100092430 = v17;
}

void sub_10002CF64(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [LSApplicationProxy applicationProxyForIdentifier:v2];

  queue = dispatch_queue_create("com.apple.checkerboard.initializationContext", 0);
  v4 = [BSServiceDispatchQueue queueWithName:@"com.apple.checkerboard.initializationContext" targetQueue:queue];
  v5 = objc_alloc_init(_CBApplicationSupportServiceDelegate);
  v6 = qword_100092448;
  qword_100092448 = v5;

  v7 = [[UISApplicationSupportService alloc] initWithCalloutQueue:v4];
  v8 = qword_100092440;
  qword_100092440 = v7;

  dispatch_sync(queue, &stru_10007E3F8);
}

void sub_10002DBD0(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      v3 = +[CBAlertManager sharedInstance];
      [v3 showWiFiPickerWithCompletion:0];
    }

    else
    {
      v3 = +[CBAlertManager sharedInstance];
      [v3 showExitConfirmationWithCompletion:0 response:&stru_10007E418];
    }

LABEL_10:

    return;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      return;
    }

    v3 = +[CBAlertManager sharedInstance];
    [v3 showDebugInfoWithCompletion:0];
    goto LABEL_10;
  }

  v2 = *(a1 + 32);

  [v2 _showPowerDownView];
}

void sub_10002DCB4(id a1, unint64_t a2)
{
  if (!a2)
  {
    [CBSystem checkoutAndReboot:1 userInitiated:1];
  }
}

void sub_10002E18C(id a1, unint64_t a2)
{
  if (!a2)
  {
    v6 = v2;
    v7 = v3;
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Shutting down device…", v5, 2u);
    }

    [CBSystem checkoutAndReboot:0 userInitiated:1];
  }
}

void sub_10002EB40(id a1, FBSMutableSceneSettings *a2)
{
  v4 = a2;
  v2 = +[FBDisplayManager mainConfiguration];
  [(FBSMutableSceneSettings *)v4 setDisplayConfiguration:v2];

  v3 = +[UIScreen mainScreen];
  [v3 _referenceBounds];
  [(FBSMutableSceneSettings *)v4 setFrame:?];

  [(FBSMutableSceneSettings *)v4 setLevel:0.0];
  [(FBSMutableSceneSettings *)v4 setForeground:1];
  [(FBSMutableSceneSettings *)v4 setInterfaceOrientation:1];
  if ([(FBSMutableSceneSettings *)v4 isUISubclass])
  {
    [(FBSMutableSceneSettings *)v4 setDeviceOrientationEventsEnabled:1];
  }
}

void sub_10002EC04(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isUISubclass])
  {
    v3 = [*(a1 + 32) settings];
    [v4 setInterfaceOrientation:{objc_msgSend(v3, "interfaceOrientation")}];

    [v4 setStatusBarStyle:0];
  }
}

void sub_10002EDC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CheckerBoardLogHandleForCategory();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1 == 1)
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Restarting immediately due to kIOPMPSAtCriticalLevelKey battery notification", buf, 2u);
    }

    v4 = 1;
  }

  else
  {
    if (v3)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Shutting down immediately due to kIOPMPSAtCriticalLevelKey battery notification", v6, 2u);
    }

    v4 = 0;
  }

  v5 = +[FBSystemService sharedInstance];
  [v5 shutdownWithOptions:v4 forSource:0];
}

void sub_10002F478(uint64_t a1)
{
  v3 = [[FBSShutdownOptions alloc] initWithReason:@"Rebooting for Diagnostics"];
  if (*(a1 + 32) == 1)
  {
    [v3 setRebootType:1];
  }

  v2 = +[FBSSystemService sharedService];
  [v2 shutdownWithOptions:v3];
}

void sub_10002F634(uint64_t a1)
{
  if ([*(a1 + 32) checkedInWiFiSettings])
  {
    v2 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting Wi-Fi settings", v4, 2u);
    }

    v3 = +[CBWiFiManager sharedInstance];
    [v3 setPowered:{objc_msgSend(*(a1 + 32), "wifiPowerStateOn")}];
  }
}

void sub_1000302F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_destroyWeak((v34 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v35 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100030340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100030358(void *a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"CBWiFiManagerErrorKey"];

  if (v4)
  {
    v5 = [v4 code] == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Network association for CBSystem completed with success: %d", v11, 8u);
  }

  (*(a1[5] + 16))();
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:*(*(a1[6] + 8) + 40)];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:*(*(a1[7] + 8) + 40)];

  v9 = +[CBStatusBarStateAggregator sharedInstance];
  [v9 updateStatusBarItem:9];

  v10 = +[CBWiFiManager sharedInstance];
  [v10 stopWiFiNetworkScanRequestFrom:a1[4]];
}

void sub_1000304F4(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Network scan for CBSystem completed as part of association", buf, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(*(*(a1 + 48) + 8) + 40)];

  v4 = +[CBWiFiManager sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v4 stopWiFiNetworkScanRequestFrom:WeakRetained];

  v6 = +[CBWiFiManager sharedInstance];
  v7 = [v6 filteredWiFiScanResults];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 networkName];
        v14 = [v13 isEqualToString:*(a1 + 32)];

        if (v14)
        {
          v9 = v12;
          v15 = CheckerBoardLogHandleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Network scan for CBSystem found a network matching the association request.", buf, 2u);
          }

          goto LABEL_15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v16 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40) != 0;
    *buf = 67109376;
    v27 = v9 != 0;
    v28 = 1024;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Network scan for CBSystem complete - associating to network. In scan results: %d, has password: %d", buf, 0xEu);
  }

  if (v9)
  {
    v18 = +[CBWiFiManager sharedInstance];
    [v18 associateToEncryptedNetworkWithScanResult:v9 password:*(a1 + 40)];
  }

  else
  {
    v19 = *(a1 + 40);
    v20 = +[CBWiFiManager sharedInstance];
    v18 = v20;
    v21 = *(a1 + 32);
    if (v19)
    {
      [v20 associateToHiddenEncryptedNetworkWithName:v21 password:*(a1 + 40)];
    }

    else
    {
      [v20 associateToHiddenUnencryptedNetworkWithName:v21];
    }
  }
}

void sub_1000309F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_100030A20(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Network scan completed for CBSystem network scan (without association)", buf, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v4 = +[CBWiFiManager sharedInstance];
  v20 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v4 stopWiFiNetworkScanRequestFrom:WeakRetained];

  v6 = +[CBWiFiManager sharedInstance];
  v7 = [v6 filteredWiFiScanResults];

  v8 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 networkName];
        v15 = [v13 requiresPassword];
        v27[1] = @"protected";
        v28[0] = v14;
        v27[0] = @"ssid";
        v16 = [NSNumber numberWithBool:v15];
        v28[1] = v16;
        v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
        [v8 addObject:v17];
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v10);
  }

  v18 = *(v20 + 32);
  v19 = [v8 copy];
  (*(v18 + 16))(v18, v19);
}

void sub_1000325F0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentlyActiveTextField];
  v3 = [v2 textInputTraits];

  if ([v3 returnKeyType] != 3)
  {
    v5 = [*(a1 + 32) currentlyActiveTextField];

    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = [*(a1 + 32) currentlyActiveTextField];
    v7 = [*(a1 + 32) networkNameCell];
    v8 = [v7 textField];

    v9 = *(a1 + 32);
    if (v6 == v8)
    {
      v14 = [v9 scanResult];
      v15 = [v14 requiresPassword];

      if ((v15 & 1) == 0)
      {
LABEL_12:
        v19 = *(a1 + 32);
        v20 = *&v19[OBJC_IVAR___PSListController__table];
        v21 = [v19 indexPathForIndex:{objc_msgSend(v19, "indexToSelect")}];
        v22 = [v20 cellForRowAtIndexPath:v21];
        [v22 becomeFirstResponder];

        goto LABEL_13;
      }

      v13 = @"PASSWORD";
    }

    else
    {
      v10 = [v9 currentlyActiveTextField];
      v11 = [*(a1 + 32) passwordCell];
      v12 = [v11 textField];

      if (v10 != v12)
      {
LABEL_13:
        [*(a1 + 32) setCurrentlyActiveTextField:0];
        goto LABEL_14;
      }

      v13 = @"OTHER_NETWORK_NAME";
    }

    v16 = *(a1 + 32);
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:v13 value:&stru_10007EAB0 table:0];
    [*(a1 + 32) setIndexToSelect:{objc_msgSend(v16, "indexOfSpecifierID:", v18)}];

    goto LABEL_12;
  }

  v4 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Return] key is [Join]", v23, 2u);
  }

  [*(a1 + 32) joinTapped:0];
LABEL_14:
}

void sub_1000328C4(uint64_t a1)
{
  if ([*(a1 + 32) joining])
  {
    [*(a1 + 32) setJoining:0];
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKeyedSubscript:@"CBWiFiManagerErrorKey"];
    v4 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wi-Fi network did associate to [un]encrypted network notification sent with error (%@)", buf, 0xCu);
    }

    v5 = CheckerBoardLogHandleForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        *buf = 138412290;
        v52 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Association error: %@", buf, 0xCu);
      }

      v7 = [v3 code];
      if (v7 + 102 >= 3 && v7 + 3925 >= 2)
      {
        if (v7 == 16)
        {
          v32 = CheckerBoardLogHandleForCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_100047A24(v32, v33, v34, v35, v36, v37, v38, v39);
          }

          v40 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_networkJoinRetryTimerFired:" selector:0 userInfo:0 repeats:1.0];
          [*(a1 + 32) setJoinTimer:v40];
        }

        else
        {
          v41 = +[NSBundle mainBundle];
          v42 = [v41 localizedStringForKey:@"FAILED_NETWORK_PROMPT" value:&stru_10007EAB0 table:0];
          v43 = [*(a1 + 32) networkName];
          v44 = [NSString stringWithFormat:v42, v43];
          v45 = [*(a1 + 32) navigationItem];
          [v45 setPrompt:v44];

          [*(a1 + 32) _enableUI:1];
          v46 = *(a1 + 32);
          v47 = +[NSBundle mainBundle];
          v48 = [v47 localizedStringForKey:@"COULD_NOT_FIND_NETWORK_TITLE" value:&stru_10007EAB0 table:0];
          v49 = [*(a1 + 32) networkName];
          v50 = [NSString stringWithFormat:v48, v49];
          [v46 _presentFailedAssociationAlertWithTitle:v50 message:0];
        }
      }

      else
      {
        v9 = CheckerBoardLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100047A5C(v9, v10, v11, v12, v13, v14, v15, v16);
        }

        v17 = +[NSBundle mainBundle];
        v18 = [v17 localizedStringForKey:@"FAILED_NETWORK_PROMPT" value:&stru_10007EAB0 table:0];
        v19 = [*(a1 + 32) networkName];
        v20 = [NSString stringWithFormat:v18, v19];
        v21 = [*(a1 + 32) navigationItem];
        [v21 setPrompt:v20];

        [*(a1 + 32) _enableUI:1];
        v22 = *(a1 + 32);
        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"INCORRECT_PASSWORD_TITLE" value:&stru_10007EAB0 table:0];
        v25 = [*(a1 + 32) networkName];
        v26 = [NSString stringWithFormat:v24, v25];
        [v22 _presentFailedAssociationAlertWithTitle:v26 message:0];
      }
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No association error", buf, 2u);
      }

      v27 = +[NSBundle mainBundle];
      v28 = [v27 localizedStringForKey:@"JOINED_NETWORK_PROMPT" value:&stru_10007EAB0 table:0];
      v29 = [*(a1 + 32) networkName];
      v30 = [NSString stringWithFormat:v28, v29];
      v31 = [*(a1 + 32) navigationItem];
      [v31 setPrompt:v30];

      [*(a1 + 32) _enableUI:0];
      [*(a1 + 32) _checkoutAndPostAssociationCompletedNotificationWithError:0];
    }
  }
}

double sub_100035238()
{
  v0 = sub_100035E68();
  [v0 bounds];
  v2 = v1;

  return v2;
}

double sub_100035298()
{
  v0 = sub_100035E68();
  [v0 scale];
  v2 = v1;

  return v2;
}

uint64_t sub_1000352D8()
{
  if (qword_100092458 != -1)
  {
    sub_100047ACC();
  }

  return qword_100092460;
}

void sub_100035310(id a1)
{
  v1 = sub_100035238();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_100035298();
  if (qword_100092470 != -1)
  {
    sub_100047AE0();
  }

  v9 = qword_100092468;
  v10 = sub_100035C14();
  v11 = sub_100035C74();
  qword_100092460 = sub_100035614(v10, v11, v9, &stru_10007E598, &stru_10007E5B8, &stru_10007E5D8, v1, v3, v5, v7, v8);
}

uint64_t sub_1000353D0()
{
  if (qword_100092470 != -1)
  {
    sub_100047AE0();
  }

  return qword_100092468;
}

BOOL sub_100035434(id a1)
{
  v1 = MGIsDeviceOfType();
  v2 = MGIsDeviceOfType();
  v3 = MGIsDeviceOfType();
  v4 = MGIsDeviceOfType();
  v5 = MGIsDeviceOfType();
  v6 = MGIsDeviceOfType();
  return (v3 | v4 | v1 | v2 | v5 | v6 | MGIsDeviceOfType()) & 1;
}

BOOL sub_1000355CC(id a1)
{
  if (qword_100092480 != -1)
  {
    sub_100047AF4();
  }

  v3.n128_u64[0] = qword_100092478;
  v2.n128_u64[0] = 25.0;

  return _BSFloatEqualToFloat(v2, v3);
}

uint64_t sub_100035614(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, double a7, double a8, double a9, double a10, double a11)
{
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100035CD4;
  v36[3] = &unk_10007E600;
  *&v36[6] = a9;
  *&v36[7] = a10;
  *&v36[8] = a11;
  v36[9] = a3;
  v36[10] = a2;
  v36[4] = &v41;
  v36[5] = &v37;
  sub_10000BEAC(v36);
  if ((v38[3] & 1) == 0)
  {
    if (a1 == 2)
    {
      if (a2 == 2)
      {
        if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 42;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 40;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 38;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 45;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 47;
        }

        else
        {
          v34 = BSSizeGreaterThanOrEqualToSize();
          v22 = v42;
          if (v34)
          {
            v23 = 43;
          }

          else
          {
            v23 = 36;
          }
        }
      }

      else if (BSSizeGreaterThanOrEqualToSize())
      {
        v22 = v42;
        v23 = 35;
      }

      else if (BSSizeGreaterThanOrEqualToSize())
      {
        v22 = v42;
        v23 = 34;
      }

      else
      {
        v25 = BSSizeGreaterThanOrEqualToSize();
        v22 = v42;
        if (v25)
        {
          v23 = 33;
        }

        else
        {
          v23 = 31;
        }
      }
    }

    else
    {
      if (a1 > 1)
      {
        goto LABEL_33;
      }

      if (a2 == 2)
      {
        if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 13;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 29;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 5;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 11;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 3;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 21;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 23;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 25;
        }

        else
        {
          v35 = BSSizeGreaterThanOrEqualToSize();
          v22 = v42;
          if (v35)
          {
            v23 = 27;
          }

          else
          {
            v23 = 4;
          }
        }
      }

      else if (BSSizeGreaterThanOrEqualToSize())
      {
        v22 = v42;
        v23 = 2;
      }

      else
      {
        v24 = BSSizeGreaterThanOrEqualToSize();
        v22 = v42;
        if (!v24)
        {
          v42[3] = 0;
          goto LABEL_33;
        }

        v23 = 1;
      }
    }

    v22[3] = v23;
  }

LABEL_33:
  v26 = v42[3];
  switch(v26)
  {
    case 9:
    case 15:
      v27 = v20[2](v20) == 0;
      v28 = 9;
      v29 = 15;
      goto LABEL_42;
    case 10:
    case 16:
      v27 = v20[2](v20) == 0;
      v28 = 10;
      v29 = 16;
      goto LABEL_42;
    case 11:
    case 17:
      v27 = v20[2](v20) == 0;
      v28 = 11;
      v29 = 17;
      goto LABEL_42;
    case 12:
    case 18:
      v27 = v20[2](v20) == 0;
      v28 = 12;
      v29 = 18;
      goto LABEL_42;
    case 13:
    case 19:
      v27 = v20[2](v20) == 0;
      v28 = 13;
      v29 = 19;
      goto LABEL_42;
    case 14:
    case 20:
      v27 = v20[2](v20) == 0;
      v28 = 14;
      v29 = 20;
LABEL_42:
      if (v27)
      {
        v26 = v28;
      }

      else
      {
        v26 = v29;
      }

      v31 = v42;
      goto LABEL_46;
    case 31:
    case 32:
      v30 = v19[2](v19);
      v31 = v42;
      if (v30)
      {
        v26 = 32;
      }

      else
      {
        v26 = 31;
      }

      goto LABEL_46;
    case 37:
    case 38:
      v33 = v21[2](v21);
      v31 = v42;
      if (v33)
      {
        v26 = 37;
      }

      else
      {
        v26 = 38;
      }

LABEL_46:
      v31[3] = v26;
      break;
    default:
      break;
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v26;
}

void sub_100035B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_100035C14()
{
  v0 = +[BSPlatform sharedInstance];
  v1 = [v0 deviceClass];

  if (+[FBSDeviceEmulationConfiguration isEmulatedDevice])
  {
    v2 = +[FBSDeviceEmulationConfiguration emulatedDeviceClass];
    if (v2 == -1)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  return v1;
}

id sub_100035C74()
{
  v0 = +[BSPlatform sharedInstance];
  v1 = [v0 homeButtonType];

  if (+[FBSDeviceEmulationConfiguration isEmulatedDevice])
  {
    v2 = +[FBSDeviceEmulationConfiguration emulatedHomeButtonType];
    if (v2 != -1)
    {
      return v2;
    }
  }

  return v1;
}

uint64_t sub_100035CD4(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  sub_10000BF8C(a2, &v12);
  v10[0] = v12;
  v10[1] = v13;
  v11 = v14;
  v6 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v6;
  v9 = *(a1 + 80);
  result = sub_10000C41C(v10, v8);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_100035D74(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFDictionaryGetValue(v1, @"ArtworkDeviceSubType");
    v4 = v3;
    if (v3)
    {
      qword_100092468 = [v3 intValue];
    }

    CFRelease(v2);
  }

  if (+[FBSDeviceEmulationConfiguration isEmulatedDevice])
  {
    v5 = +[FBSDeviceEmulationConfiguration emulatedArtworkSubtype];
    if (v5 >= 1)
    {
      qword_100092468 = v5;
    }
  }
}

void sub_100035E0C(id a1)
{
  MGGetFloat32Answer();
  *&qword_100092478 = v1;
  if (+[FBSDeviceEmulationConfiguration isEmulatedDevice])
  {
    +[FBSDeviceEmulationConfiguration emulatedDisplayCornerRadius];
    if (v2 >= 0.0)
    {
      qword_100092478 = *&v2;
    }
  }
}

id sub_100035E68()
{
  if (qword_100092490 != -1)
  {
    sub_100047B08();
  }

  v1 = qword_100092488;

  return v1;
}

void sub_100035EAC(id a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v1 = qword_100092498;
  v10 = qword_100092498;
  if (!qword_100092498)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100035FBC;
    v6[3] = &unk_10007E688;
    v6[4] = &v7;
    sub_100035FBC(v6);
    v1 = v8[3];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);
  v3 = [v1 mainDisplay];
  v4 = [[FBSDisplayConfiguration alloc] initWithCADisplay:v3];
  v5 = qword_100092488;
  qword_100092488 = v4;

  [qword_100092488 bounds];
  BSCGFloatEpsilon();
}

void sub_100035FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100035FBC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000924A0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100036100;
    v4[4] = &unk_10007E6C0;
    v4[5] = v4;
    v5 = off_10007E6A8;
    v6 = 0;
    qword_1000924A0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000924A0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CADisplay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100047B1C();
  }

  qword_100092498 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100036100()
{
  result = _sl_dlopen();
  qword_1000924A0 = result;
  return result;
}

double sub_100036174(unint64_t a1)
{
  result = 0.0;
  switch(a1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x26uLL:
    case 0x28uLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x31uLL:
      v9 = v1;
      v10 = v2;
      sub_10000BF8C(a1, v7);
      return v8;
    case 3uLL:
    case 4uLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 3;

      goto LABEL_5;
    case 5uLL:
    case 6uLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 5;

      goto LABEL_5;
    case 7uLL:
    case 8uLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 7;

      goto LABEL_5;
    case 9uLL:
    case 0xAuLL:
      v4 = 0.96;
      v5 = a1;
      v6 = 9;

      goto LABEL_5;
    case 0xBuLL:
    case 0xCuLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 11;

      goto LABEL_5;
    case 0xDuLL:
    case 0xEuLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 13;

      goto LABEL_5;
    case 0xFuLL:
    case 0x10uLL:
      v4 = 0.96;
      v5 = a1;
      v6 = 15;

      goto LABEL_5;
    case 0x11uLL:
    case 0x12uLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 17;

      goto LABEL_5;
    case 0x13uLL:
    case 0x14uLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 19;

      goto LABEL_5;
    case 0x15uLL:
    case 0x16uLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 21;

      goto LABEL_5;
    case 0x17uLL:
    case 0x18uLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 23;

      goto LABEL_5;
    case 0x19uLL:
    case 0x1AuLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 25;

      goto LABEL_5;
    case 0x1BuLL:
    case 0x1CuLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 27;

      goto LABEL_5;
    case 0x1DuLL:
    case 0x1EuLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 29;

      goto LABEL_5;
    case 0x2AuLL:
    case 0x2BuLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 42;

      goto LABEL_5;
    case 0x2FuLL:
    case 0x30uLL:
      v4 = 1.0;
      v5 = a1;
      v6 = 47;

LABEL_5:
      result = sub_100036460(v4, a1, v5, v6);
      break;
    default:
      return result;
  }

  return result;
}

double sub_100036460(double a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000BF8C(a3, v10);
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  sub_10000BF8C(a4, &v7);
  return *&v8 * (*&v7 / *v10) * a1;
}

id sub_1000364DC(unint64_t a1)
{
  v2 = 0x4048800000000000;
  v3 = 0x4049800000000000;
  v4 = 0x4048000000000000;
  v5 = 0x4043000000000000;
  v6 = 53.0;
  v7 = 29.0;
  v8 = 0x4044000000000000;
  switch(a1)
  {
    case 3uLL:
    case 5uLL:
    case 8uLL:
      v9 = 0x4046000000000000;
      goto LABEL_8;
    case 4uLL:
LABEL_15:
      v6 = *&v5;
LABEL_19:
      v7 = 29.0;
      break;
    case 6uLL:
LABEL_14:
      v7 = 30.67;
      v6 = *&v8;
      break;
    case 7uLL:
      goto LABEL_24;
    case 9uLL:
    case 0xFuLL:
      v9 = 0x4049000000000000;
LABEL_8:
      v4 = v9;
      goto LABEL_11;
    case 0xAuLL:
    case 0x10uLL:
      v4 = 0x4045800000000000;
      goto LABEL_11;
    case 0xBuLL:
    case 0xDuLL:
    case 0x11uLL:
    case 0x13uLL:
      v4 = 0x4047800000000000;
      goto LABEL_11;
    case 0xCuLL:
    case 0x12uLL:
      v4 = 0x4043800000000000;
      goto LABEL_11;
    case 0xEuLL:
    case 0x14uLL:
      v4 = 0x4044800000000000;
      goto LABEL_11;
    case 0x15uLL:
    case 0x17uLL:
      v4 = 0x404D800000000000;
      goto LABEL_24;
    case 0x16uLL:
LABEL_13:
      v7 = 27.67;
      goto LABEL_25;
    case 0x18uLL:
LABEL_17:
      v7 = 31.0;
      v6 = *&v3;
      break;
    case 0x19uLL:
    case 0x1BuLL:
      v10 = 0x404F000000000000;
      goto LABEL_23;
    case 0x1AuLL:
LABEL_16:
      v7 = 27.0;
      v6 = *&v2;
      break;
    case 0x1CuLL:
      break;
    case 0x1DuLL:
      v10 = 0x4051000000000000;
LABEL_23:
      v4 = v10;
LABEL_24:
      v7 = 34.0;
LABEL_25:
      v6 = *&v4;
      break;
    case 0x1EuLL:
      v7 = 25.0;
      v6 = 52.0;
      break;
    default:
LABEL_11:
      v5 = v4;
      v8 = v4;
      v3 = v4;
      v2 = v4;
      v7 = 0.0;
      v6 = *&v4;
      switch(a1)
      {
        case 3uLL:
        case 5uLL:
        case 7uLL:
        case 9uLL:
        case 0xBuLL:
        case 0xDuLL:
        case 0xFuLL:
        case 0x11uLL:
        case 0x13uLL:
        case 0x15uLL:
        case 0x17uLL:
        case 0x19uLL:
          goto LABEL_24;
        case 4uLL:
          goto LABEL_15;
        case 6uLL:
          goto LABEL_14;
        case 8uLL:
          v7 = 31.0;
          goto LABEL_25;
        case 0xAuLL:
        case 0x10uLL:
          v6 = *&v4;
          goto LABEL_19;
        case 0xCuLL:
        case 0x12uLL:
          v7 = 28.0;
          goto LABEL_25;
        case 0xEuLL:
        case 0x14uLL:
          v7 = 29.67;
          goto LABEL_25;
        case 0x16uLL:
          goto LABEL_13;
        case 0x18uLL:
          goto LABEL_17;
        case 0x1AuLL:
          goto LABEL_16;
        case 0x1BuLL:
        case 0x1CuLL:
        case 0x1DuLL:
        case 0x1EuLL:
        case 0x1FuLL:
        case 0x20uLL:
        case 0x21uLL:
        case 0x22uLL:
        case 0x23uLL:
        case 0x25uLL:
        case 0x27uLL:
        case 0x29uLL:
          goto LABEL_26;
        case 0x24uLL:
        case 0x26uLL:
        case 0x28uLL:
        case 0x2AuLL:
        case 0x2BuLL:
          v7 = 20.0;
          goto LABEL_25;
        default:
          v6 = *&v4;
          v7 = 0.0;
          break;
      }

      break;
  }

LABEL_26:
  v11 = objc_alloc_init(UISApplicationSupportDisplayEdgeInfo);
  if ((sub_10000BF48(a1) & 1) == 0 && (sub_10000BF80(a1) || sub_10000BF64(a1)))
  {
    v12 = sub_10000BF80(a1);
    v13 = 15.0;
    if (v12)
    {
      if (a1 - 21 >= 0xA)
      {
        v14 = 32.0;
      }

      else
      {
        v14 = 48.0;
      }

      v15 = [[UISApplicationSupportDisplayEdgeInsetsWrapper alloc] initWithTop:v14 left:0.0 bottom:0.0 right:0.0];
      [v11 setPeripheryInsets:v15];

      v13 = 21.0;
    }

    v16 = [NSNumber numberWithDouble:v13];
    [v11 setHomeAffordanceOverlayAllowance:v16];

    v17 = [[UISApplicationSupportDisplayEdgeInsetsWrapper alloc] initWithTop:v6 left:0.0 bottom:v7 right:0.0];
    [v11 setSafeAreaInsetsPortrait:v17];

    [v11 setSystemMinimumMargin:&off_1000812C8];
  }

  return v11;
}

id sub_1000368D4(unint64_t a1)
{
  size = CGRectNull.size;
  size.height = CGRectNull.origin.x;
  v23 = size;
  *&v3 = sub_100036174(a1);
  switch(a1)
  {
    case 3uLL:
    case 4uLL:
      v4 = vdupq_lane_s64(v3, 0);
      v5 = xmmword_100059710;
      goto LABEL_11;
    case 5uLL:
    case 6uLL:
      v4 = vdupq_lane_s64(v3, 0);
      v5 = xmmword_100059700;
LABEL_11:
      v11 = vdivq_f64(v5, v4);
      v13 = 90.0;
      goto LABEL_21;
    case 7uLL:
    case 8uLL:
      v11 = vdivq_f64(xmmword_1000596F0, vdupq_lane_s64(v3, 0));
      *&v12 = 64.0;
      goto LABEL_14;
    case 9uLL:
    case 0xAuLL:
      v11 = vdivq_f64(xmmword_1000596E0, vdupq_lane_s64(v3, 0));
      v13 = 98.88;
      goto LABEL_21;
    case 0xBuLL:
    case 0xCuLL:
      v9 = vdupq_lane_s64(v3, 0);
      v10 = xmmword_1000596D0;
      goto LABEL_13;
    case 0xDuLL:
    case 0xEuLL:
      v9 = vdupq_lane_s64(v3, 0);
      v10 = xmmword_100059720;
LABEL_13:
      v11 = vdivq_f64(v10, v9);
      *&v12 = 96.0;
LABEL_14:
      v13 = *&v12;
      goto LABEL_21;
    case 0xFuLL:
    case 0x10uLL:
      v11 = vdivq_f64(xmmword_100059730, vdupq_lane_s64(v3, 0));
      v13 = 107.52;
      goto LABEL_21;
    case 0x11uLL:
    case 0x12uLL:
      v14 = vdupq_lane_s64(v3, 0);
      v15 = xmmword_100059740;
      goto LABEL_20;
    case 0x13uLL:
    case 0x14uLL:
      v14 = vdupq_lane_s64(v3, 0);
      v15 = xmmword_100059750;
LABEL_20:
      v11 = vdivq_f64(v15, v14);
      v13 = 101.0;
LABEL_21:
      y = 0.0;
      goto LABEL_22;
    case 0x15uLL:
    case 0x16uLL:
      y = 34.0 / *&v3;
      v7 = vdupq_lane_s64(v3, 0);
      v8 = xmmword_100059760;
      goto LABEL_18;
    case 0x17uLL:
    case 0x18uLL:
      y = 34.0 / *&v3;
      v7 = vdupq_lane_s64(v3, 0);
      v8 = xmmword_100059770;
      goto LABEL_18;
    case 0x19uLL:
    case 0x1AuLL:
      y = 42.0 / *&v3;
      v7 = vdupq_lane_s64(v3, 0);
      v8 = xmmword_100059780;
      goto LABEL_18;
    case 0x1BuLL:
    case 0x1CuLL:
      y = 42.0 / *&v3;
      v7 = vdupq_lane_s64(v3, 0);
      v8 = xmmword_100059790;
      goto LABEL_18;
    case 0x1DuLL:
    case 0x1EuLL:
      y = 60.0 / *&v3;
      v7 = vdupq_lane_s64(v3, 0);
      v8 = xmmword_1000597A0;
LABEL_18:
      v11 = vdivq_f64(v8, v7);
      v13 = 110.0;
LABEL_22:
      height = v13 / *&v3;
      break;
    default:
      y = CGRectNull.origin.y;
      height = CGRectNull.size.height;
      v11 = v23;
      break;
  }

  v17 = v11.f64[1];
  v18 = v11.f64[1];
  v19 = y;
  v24 = v11.f64[0];
  v20 = height;
  if (CGRectIsNull(*(&v11 - 1)))
  {
    v21 = 0;
  }

  else
  {
    v21 = [[UISDisplaySingleRectShape alloc] initWithRect:{v17, y, v24, height}];
  }

  return v21;
}

void sub_1000375D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained languageStrings];
  v4 = [v3 count];

  v5 = objc_loadWeakRetained((a1 + 32));
  v7 = v5;
  if (v4)
  {
    [v5 _hideActivityView];

    v7 = objc_loadWeakRetained((a1 + 32));
    v6 = [v7 tableView];
    [v6 reloadData];
  }

  else
  {
    [v5 _showActivityView];
  }
}

void sub_10003771C(uint64_t a1)
{
  v2 = +[CBLocationController sharedLocationController];
  [v2 selectLanguage:*(a1 + 32) restartAfterCompletion:0];
}

id sub_100037D88(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSAttributedString alloc];
  v9 = kCTLanguageAttributeName;
  v10 = v3;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  v7 = [v5 initWithString:v4 attributes:v6];

  return v7;
}

id sub_10003816C()
{
  result = [objc_allocWithZone(type metadata accessor for EnvironmentManager()) init];
  qword_100092860 = result;
  return result;
}

id sub_10003823C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnvironmentManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100038298(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100038364(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10003942C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100039330(v11);
  return v7;
}

unint64_t sub_100038364(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100038470(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100038470(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000384BC(a1, a2);
  sub_1000385EC(&off_10007E770);
  return v3;
}

char *sub_1000384BC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000386D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000386D8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000385EC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003874C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000386D8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000393E4(&qword_100091D10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003874C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000393E4(&qword_100091D10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100038840(uint64_t *a1, size_t *a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100039288(v6, v5);
      *&v19 = v6;
      WORD4(v19) = v5;
      BYTE10(v19) = BYTE2(v5);
      BYTE11(v19) = BYTE3(v5);
      BYTE12(v19) = BYTE4(v5);
      BYTE13(v19) = BYTE5(v5);
      BYTE14(v19) = BYTE6(v5);
      v8 = String.utf8CString.getter();
      v9 = sysctlbyname((v8 + 32), &v19, a2, 0, 0);

      v10 = DWORD2(v19) | ((WORD6(v19) | (BYTE14(v19) << 16)) << 32);
      *a1 = v19;
      a1[1] = v10;
      return v9;
    }

    v13 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100039288(v6, v5);
    *a1 = xmmword_1000597B0;
    sub_100039288(0, 0xC000000000000000);
    v14 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v14 < v6)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_19:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v13 = v16;
    }

    if (v14 >= v6)
    {

      v9 = sub_100038BD0(v6, v13, a2);

      *a1 = v6;
      a1[1] = v13 | 0x4000000000000000;
      return v9;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v7 == 2)
  {

    sub_100039288(v6, v5);
    *&v19 = v6;
    *(&v19 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000597B0;
    sub_100039288(0, 0xC000000000000000);
    v9 = &v19;
    Data.LargeSlice.ensureUniqueReference()();
    v11 = v19;
    v12 = sub_100038BD0(*(v19 + 16), *(&v19 + 1), a2);
    *a1 = v11;
    a1[1] = *(&v11 + 1) | 0x8000000000000000;
    if (!v2)
    {
      return v12;
    }
  }

  else
  {
    *(&v19 + 7) = 0;
    *&v19 = 0;
    v15 = String.utf8CString.getter();
    v9 = sysctlbyname((v15 + 32), &v19, a2, 0, 0);
  }

  return v9;
}

uint64_t sub_100038BD0(uint64_t a1, uint64_t a2, size_t *a3)
{
  result = __DataStorage._bytes.getter();
  if (result)
  {
    v6 = result;
    result = __DataStorage._offset.getter();
    v7 = __OFSUB__(a1, result);
    v8 = a1 - result;
    if (!v7)
    {
      __DataStorage._length.getter();
      v9 = String.utf8CString.getter();
      v10 = sysctlbyname((v9 + 32), (v6 + v8), a3, 0, 0);

      return v10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100038C7C()
{
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  if ([objc_opt_self() isInternalInstall])
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 objectForKey:v1];

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27[0] = v25;
    v27[1] = v26;
    if (*(&v26 + 1))
    {
      if (swift_dynamicCast())
      {
        v3 = v22;
        sub_10003923C();

        v4 = static OS_os_log.default.getter();
        v5 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          *&v27[0] = v7;
          *v6 = 136315138;
          *(v6 + 4) = sub_100038298(v22, v23, v27);
          _os_log_impl(&_mh_execute_header, v4, v5, "Overriding detected osenvironment to %s", v6, 0xCu);
          sub_100039330(v7);
        }

        return v3;
      }
    }

    else
    {

      sub_10003937C(v27);
    }
  }

  v24 = 255;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v8 = __DataStorage.init(length:)();
  *&v27[0] = 0xFF00000000;
  *(&v27[0] + 1) = v8 | 0x4000000000000000;
  v9 = sub_100038840(v27, &v24);
  if (v9)
  {
    v10 = v9;
    sub_10003923C();
    v11 = static OS_os_log.default.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to read osenvironment with status %d", v13, 8u);
    }

    sub_100039288(*&v27[0], *(&v27[0] + 1));
    return 0;
  }

  else
  {
    static String.Encoding.utf8.getter();
    v3 = String.init(data:encoding:)();
    if (v14)
    {
      v15 = v14;
      sub_10003923C();
      v16 = static OS_os_log.default.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v25 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_100038298(v3, v15, &v25);
        _os_log_impl(&_mh_execute_header, v16, v17, "Found osenvironment: %s", v18, 0xCu);
        sub_100039330(v19);
      }

      *&v25 = v3;
      *(&v25 + 1) = v15;
      sub_1000392DC();
      v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      sub_100039288(*&v27[0], *(&v27[0] + 1));
    }

    else
    {
      sub_10003923C();
      v21 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_100039288(*&v27[0], *(&v27[0] + 1));
    }
  }

  return v3;
}

unint64_t sub_10003923C()
{
  result = qword_100091D00;
  if (!qword_100091D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100091D00);
  }

  return result;
}

uint64_t sub_100039288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000392DC()
{
  result = qword_100091F40;
  if (!qword_100091F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091F40);
  }

  return result;
}

uint64_t sub_100039330(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10003937C(uint64_t a1)
{
  v2 = sub_1000393E4(&qword_100091D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000393E4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003942C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Int sub_1000394A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100039514()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_100039558@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

__n128 sub_100039580@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CBBootIntentManager____lazy_storage___bootIntent);
  v4 = *(v1 + OBJC_IVAR___CBBootIntentManager____lazy_storage___bootIntent + 16);
  v20 = *(v1 + OBJC_IVAR___CBBootIntentManager____lazy_storage___bootIntent);
  *v21 = v4;
  *&v21[16] = *(v1 + OBJC_IVAR___CBBootIntentManager____lazy_storage___bootIntent + 32);
  *&v21[25] = *(v1 + OBJC_IVAR___CBBootIntentManager____lazy_storage___bootIntent + 41);
  v5 = v4;
  if (v4 == 1)
  {
    sub_1000396BC(v1, &v18);
    v6 = v3[1];
    v16[0] = *v3;
    v16[1] = v6;
    v17[0] = v3[2];
    *(v17 + 9) = *(v3 + 41);
    v7 = *v19;
    *v3 = v18;
    v3[1] = v7;
    v3[2] = *&v19[16];
    *(v3 + 41) = *&v19[25];
    sub_10003AEE8(&v18, v15);
    sub_10003AFB8(v16, &qword_100091D58);
    v8 = v19[40];
    v13 = *&v19[8];
    v14 = *&v19[24];
    v5 = *v19;
    v9 = v18;
  }

  else
  {
    v8 = v21[40];
    v13 = *&v21[8];
    v14 = *&v21[24];
    v9 = v20;
  }

  v12 = v9;
  v10 = v8 & 1;
  sub_10003AF50(&v20, v16, &qword_100091D58);
  *a1 = v12;
  *(a1 + 16) = v5;
  *(a1 + 24) = v13;
  result = v14;
  *(a1 + 40) = v14;
  *(a1 + 56) = v10;
  return result;
}

void sub_1000396BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100039DF8(v24);
  v4 = v25;
  if (v25 != 1)
  {
    v22 = v28;
    v23 = v29;
    v15 = v26;
    v21 = v27;
    v9 = v24[0];
    v16 = v24[1];
    v5 = v30;
    v17 = [objc_opt_self() standardUserDefaults];
LABEL_6:
    v18 = v17;
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    v20 = String._bridgeToObjectiveC()();
    [v18 setValue:isa forKey:v20];

    v10 = v16;
    v11 = v15;
    v12 = v21;
    v13 = v22;
    v14 = v23;
    goto LABEL_7;
  }

  sub_10003A22C(v31);
  v4 = v32;
  if (v32 != 1)
  {
    v22 = v35;
    v23 = v36;
    v15 = v33;
    v21 = v34;
    v9 = v31[0];
    v16 = v31[1];
    v5 = v37;
    v17 = [objc_opt_self() standardUserDefaults];
    goto LABEL_6;
  }

  v5 = sub_1000398C8() ^ 1;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = UInt._bridgeToObjectiveC()().super.super.isa;
  v8 = String._bridgeToObjectiveC()();
  [v6 setValue:v7 forKey:v8];

  v9 = 0;
  v10 = 0;
  v4 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_7:
  *(a1 + OBJC_IVAR___CBBootIntentManager____lazy_storage___checkBootIntentWasRead) = 1;
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v4;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v5 & 1;
}

uint64_t sub_1000398C8()
{
  v1 = OBJC_IVAR___CBBootIntentManager____lazy_storage___checkBootIntentWasRead;
  v2 = *(v0 + OBJC_IVAR___CBBootIntentManager____lazy_storage___checkBootIntentWasRead);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_100039908();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_100039908()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    return swift_dynamicCast();
  }

  sub_10003AFB8(v6, &qword_100091D08);
  return 0;
}

id sub_100039A1C()
{
  result = [objc_allocWithZone(type metadata accessor for BootIntentManager()) init];
  qword_100092868 = result;
  return result;
}

void sub_100039DF8(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (!*(&v31 + 1))
  {
    sub_10003AFB8(v32, &qword_100091D08);
LABEL_10:
    sub_10003923C();
    v8 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v5 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = v28;
  if (v28 > 1)
  {
    goto LABEL_10;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v2 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    v16 = swift_dynamicCast();
    if (v16)
    {
      v9 = v24;
    }

    else
    {
      v9 = 0;
    }

    if (v16)
    {
      v15 = v25;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_10003AFB8(&v28, &qword_100091D08);
    v9 = 0;
    v15 = 0;
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = [v2 objectForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    v19 = swift_dynamicCast();
    if (v19)
    {
      v10 = v24;
    }

    else
    {
      v10 = 0;
    }

    if (v19)
    {
      v11 = v25;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_10003AFB8(&v28, &qword_100091D08);
    v10 = 0;
    v11 = 0;
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = [v2 objectForKey:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    v22 = swift_dynamicCast();
    if (v22)
    {
      v12 = v24;
    }

    else
    {
      v12 = 0;
    }

    if (v22)
    {
      v13 = v25;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_10003AFB8(&v28, &qword_100091D08);
    v12 = 0;
    v13 = 0;
  }

  v23 = sub_1000398C8();

  v14 = (v23 & 1) == 0;
LABEL_11:
  *a1 = v5;
  *(a1 + 8) = v9;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
}

void sub_10003A22C(uint64_t a1@<X8>)
{
  if (sub_10003ABF8())
  {
    swift_getObjCClassMetadata();
    v37 = 0;
    v2 = [swift_getObjCClassFromMetadata() getSsrBootIntentWithError:&v37];
    v3 = v37;
    if (!v2)
    {
      v10 = v37;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static os_log_type_t.error.getter();
      sub_1000393E4(&unk_100091ED0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100059800;
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = v13;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = sub_10003ACD8();
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      sub_10003923C();
      v15 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      goto LABEL_16;
    }

    v4 = v2;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v3;

    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v7 = sub_10003AD2C(&v37), (v8 & 1) != 0))
    {
      sub_10003942C(*(v5 + 56) + 32 * v7, &v39);
      sub_10003AD70(&v37);

      if (*(&v40 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v37 == 0xD000000000000013 && 0x80000001000708D0 == v38)
          {
          }

          else
          {
            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v24 & 1) == 0)
            {
              v16 = 0;
              goto LABEL_22;
            }
          }

          sub_10003923C();
          v25 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v16 = 1;
LABEL_22:
          strcpy(&v39, "ActiveLocale");
          BYTE13(v39) = 0;
          HIWORD(v39) = -5120;

          AnyHashable.init<A>(_:)();
          if (*(v5 + 16) && (v26 = sub_10003AD2C(&v37), (v27 & 1) != 0))
          {
            sub_10003942C(*(v5 + 56) + 32 * v26, &v39);
            sub_10003AD70(&v37);

            if (*(&v40 + 1))
            {
              v28 = swift_dynamicCast();
              if (v28)
              {
                v17 = v37;
              }

              else
              {
                v17 = 0;
              }

              if (v28)
              {
                v23 = v38;
              }

              else
              {
                v23 = 0;
              }

LABEL_33:

              AnyHashable.init<A>(_:)();
              if (*(v5 + 16) && (v29 = sub_10003AD2C(&v37), (v30 & 1) != 0))
              {
                sub_10003942C(*(v5 + 56) + 32 * v29, &v39);
                sub_10003AD70(&v37);

                if (*(&v40 + 1))
                {
                  if ((swift_dynamicCast() & 1) != 0 && v37 == 1)
                  {
                    *&v39 = 0x6F50737365636341;
                    *(&v39 + 1) = 0xEB00000000746E69;

                    AnyHashable.init<A>(_:)();
                    if (*(v5 + 16) && (v31 = sub_10003AD2C(&v37), (v32 & 1) != 0))
                    {
                      sub_10003942C(*(v5 + 56) + 32 * v31, &v39);
                      sub_10003AD70(&v37);

                      if (*(&v40 + 1))
                      {
                        v33 = swift_dynamicCast();
                        if (v33)
                        {
                          v18 = v37;
                        }

                        else
                        {
                          v18 = 0;
                        }

                        if (v33)
                        {
                          v19 = v38;
                        }

                        else
                        {
                          v19 = 0;
                        }

                        goto LABEL_54;
                      }
                    }

                    else
                    {

                      sub_10003AD70(&v37);
                      v39 = 0u;
                      v40 = 0u;
                    }

                    sub_10003AFB8(&v39, &qword_100091D08);
                    v18 = 0;
                    v19 = 0;
LABEL_54:
                    AnyHashable.init<A>(_:)();
                    if (*(v5 + 16) && (v34 = sub_10003AD2C(&v37), (v35 & 1) != 0))
                    {
                      sub_10003942C(*(v5 + 56) + 32 * v34, &v39);
                      sub_10003AD70(&v37);

                      if (*(&v40 + 1))
                      {
                        v36 = swift_dynamicCast();
                        if (v36)
                        {
                          v20 = v37;
                        }

                        else
                        {
                          v20 = 0;
                        }

                        if (v36)
                        {
                          v21 = v38;
                        }

                        else
                        {
                          v21 = 0;
                        }

                        goto LABEL_50;
                      }
                    }

                    else
                    {

                      sub_10003AD70(&v37);
                      v39 = 0u;
                      v40 = 0u;
                    }

                    sub_10003AFB8(&v39, &qword_100091D08);
                    v20 = 0;
                    v21 = 0;
LABEL_50:
                    v22 = (sub_1000398C8() & 1) == 0;
                    goto LABEL_17;
                  }

LABEL_49:
                  v20 = 0;
                  v21 = 0;
                  v18 = 0;
                  v19 = 0;
                  goto LABEL_50;
                }
              }

              else
              {

                sub_10003AD70(&v37);
                v39 = 0u;
                v40 = 0u;
              }

              sub_10003AFB8(&v39, &qword_100091D08);
              goto LABEL_49;
            }
          }

          else
          {

            sub_10003AD70(&v37);
            v39 = 0u;
            v40 = 0u;
          }

          sub_10003AFB8(&v39, &qword_100091D08);
          v17 = 0;
          v23 = 0;
          goto LABEL_33;
        }

        goto LABEL_13;
      }
    }

    else
    {

      sub_10003AD70(&v37);
      v39 = 0u;
      v40 = 0u;
    }

    sub_10003AFB8(&v39, &qword_100091D08);
LABEL_13:
    sub_10003923C();
    v9 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    goto LABEL_14;
  }

  sub_10003923C();
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
LABEL_14:
  os_log(_:dso:log:type:_:)();

LABEL_16:
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 1;
LABEL_17:
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = v23;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
}

id sub_10003AA90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BootIntentManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10003AB0C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10003AB28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10003AB84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_10003ABF8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100092630;
  v7 = qword_100092630;
  if (!qword_100092630)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003B0D4;
    v3[3] = &unk_10007E688;
    v3[4] = &v4;
    sub_10003B0D4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10003ACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_10003ACD8()
{
  result = qword_100091D50;
  if (!qword_100091D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091D50);
  }

  return result;
}

unint64_t sub_10003AD2C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003ADC4(a1, v4);
}

unint64_t sub_10003ADC4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003AE8C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10003AD70(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10003AF50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000393E4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003AFB8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000393E4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003B018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_10003B080()
{
  result = qword_100091D68;
  if (!qword_100091D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091D68);
  }

  return result;
}

Class sub_10003B0D4(void *a1)
{
  v7[0] = 0;
  if (!qword_100092638)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_10003B2C4;
    v7[4] = &unk_10007E6C0;
    v7[5] = v7;
    v8 = off_10007E848;
    v9 = 0;
    qword_100092638 = _sl_dlopen();
  }

  if (qword_100092638)
  {
    v2 = v7[0];
    if (!v7[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreRepairCoreLibrary(void)"];
    [a1 handleFailureInFunction:v4 file:@"CheckerBoard-Bridging-Header.h" lineNumber:10 description:{@"%s", v7[0]}];

    __break(1u);
  }

  free(v2);
LABEL_5:
  result = objc_getClass("CRRepairStatusLite");
  *(*(a1[4] + 8) + 24) = result;
  if (!*(*(a1[4] + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getCRRepairStatusLiteClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"CheckerBoard-Bridging-Header.h" lineNumber:11 description:{@"Unable to find class %s", "CRRepairStatusLite"}];

    __break(1u);
  }

  qword_100092630 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_10003B2C4()
{
  result = _sl_dlopen();
  qword_100092638 = result;
  return result;
}

NSString sub_10003B338()
{
  result = String._bridgeToObjectiveC()();
  qword_100092870 = result;
  return result;
}

void sub_10003B3CC()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInfoViewController();
  v93.receiver = v0;
  v93.super_class = v6;
  objc_msgSendSuper2(&v93, "viewDidLoad");
  v7 = [objc_opt_self() wasRemoteSetupPerformed];
  static Locale.current.getter();
  v8 = Locale.identifier.getter();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v11 = MobileGestalt_get_current_device();
  if (!v11)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  v13 = MobileGestalt_get_inDiagnosticsMode();

  v14 = MobileGestalt_get_current_device();
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v71 = v13;
  v72 = v10;
  v16 = v8;
  v17 = v7;
  v70 = v1;
  v18 = MobileGestalt_copy_buildVersion_obj();

  if (!v18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = [objc_allocWithZone(type metadata accessor for DebugInfoState(0)) init];
  LOBYTE(v88) = 0;
  State.init(wrappedValue:)();
  v23 = v73;
  v24 = *(&v73 + 1);
  LOBYTE(v88) = 0;
  State.init(wrappedValue:)();
  v25 = v73;
  v26 = *(&v73 + 1);
  v88 = 0;
  v89 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v27 = v73;
  v28 = v74;
  LOBYTE(v73) = v17;
  *(&v73 + 1) = v88;
  DWORD1(v73) = *(&v88 + 3);
  *(&v73 + 1) = v16;
  v74 = v72;
  v75 = v71;
  *v76 = *v92;
  *&v76[3] = *&v92[3];
  v77 = v19;
  v78 = v21;
  v79 = v22;
  v80 = v23;
  *&v81[3] = *&v91[3];
  *v81 = *v91;
  v82 = v24;
  v83 = v25;
  *&v84[3] = *&v90[3];
  *v84 = *v90;
  v85 = v26;
  v86 = v27;
  v87 = v28;
  v29 = objc_allocWithZone(sub_1000393E4(&qword_100091EE8));
  v30 = UIHostingController.init(rootView:)();
  v31 = [v30 view];
  if (!v31)
  {
    static os_log_type_t.error.getter();
    sub_100044318(0, &qword_100091D00);
    v32 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_14;
  }

  v32 = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = v70;
  [v70 addChildViewController:v30];
  v34 = [v33 view];
  if (!v34)
  {
    goto LABEL_18;
  }

  v35 = v34;
  [v34 addSubview:v32];

  sub_1000393E4(&qword_100091EF0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100059950;
  v37 = [v32 centerXAnchor];
  v38 = [v33 view];
  if (!v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v38;
  v40 = [v38 centerXAnchor];

  v41 = [v37 constraintEqualToAnchor:v40];
  *(v36 + 32) = v41;
  v42 = [v32 centerYAnchor];
  v43 = [v33 view];
  if (!v43)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v44 = v43;
  v45 = [v43 centerYAnchor];

  v46 = [v42 constraintEqualToAnchor:v45];
  *(v36 + 40) = v46;
  v47 = [v32 topAnchor];
  v48 = [v33 view];
  if (!v48)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v49 = v48;
  v50 = [v48 topAnchor];

  v51 = [v47 constraintEqualToAnchor:v50];
  *(v36 + 48) = v51;
  v52 = [v32 bottomAnchor];
  v53 = [v33 view];
  if (!v53)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v54 = v53;
  v55 = [v53 bottomAnchor];

  v56 = [v52 constraintEqualToAnchor:v55];
  *(v36 + 56) = v56;
  v57 = [v32 leadingAnchor];
  v58 = [v33 view];
  if (!v58)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v59 = v58;
  v60 = [v58 leadingAnchor];

  v61 = [v57 constraintEqualToAnchor:v60];
  *(v36 + 64) = v61;
  v62 = [v32 trailingAnchor];
  v63 = [v33 view];
  if (v63)
  {
    v64 = v63;
    v65 = objc_opt_self();
    v66 = [v64 trailingAnchor];

    v67 = [v62 constraintEqualToAnchor:v66];
    *(v36 + 72) = v67;
    sub_100044318(0, &qword_100091EF8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v65 activateConstraints:isa];

    [v30 didMoveToParentViewController:v33];
LABEL_14:

    return;
  }

LABEL_24:
  __break(1u);
}

id sub_10003BC70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugInfoViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003BCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[1] = a2;
  v7[0] = sub_1000393E4(&qword_100091F10);
  __chkstk_darwin(v7[0]);
  v4 = v7 - v3;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_1000393E4(&qword_100091F18);
  sub_10003BF0C(a1, &v4[*(v5 + 44)]);
  v9 = *(a1 + 88);
  v10 = *(a1 + 104);
  sub_1000393E4(&qword_100091F20);
  State.wrappedValue.getter();
  v8 = *(a1 + 72);
  sub_1000393E4(&qword_100091F28);
  State.projectedValue.getter();
  v7[4] = a1;
  sub_1000393E4(&qword_100091F30);
  sub_100044C7C(&qword_100091F38, &qword_100091F10);
  sub_1000392DC();
  sub_100044C7C(&qword_100091F48, &qword_100091F30);
  View.alert<A, B>(_:isPresented:actions:)();

  return sub_10003AFB8(v4, &qword_100091F10);
}

uint64_t sub_10003BF0C@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1000393E4(&qword_100091F58);
  v5 = __chkstk_darwin(v4 - 8);
  v45 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v41[-v7];
  v44 = static VerticalAlignment.center.getter();
  LOBYTE(v63[0]) = 1;
  v52 = static HorizontalAlignment.center.getter();
  LOBYTE(v53[0]) = 1;
  static Font.title.getter();
  v43 = Text.font(_:)();
  v50 = v9;
  v51 = v10;
  v12 = v11;

  KeyPath = swift_getKeyPath();
  v47 = v12 & 1;
  v92 = v12 & 1;
  v46 = LOBYTE(v53[0]);
  v13 = LOBYTE(v63[0]);
  v48 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v91 = 0;
  sub_1000393E4(&qword_100091F60);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100059960;
  v23 = static Edge.Set.leading.getter();
  *(v22 + 32) = v23;
  v24 = static Edge.Set.trailing.getter();
  *(v22 + 33) = v24;
  v25 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v23)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  v92 = 1;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v26 = sub_1000393E4(&qword_100091F68);
  sub_10003C41C(a1, &v8[*(v26 + 44)]);
  v27 = v45;
  sub_10003AF50(v8, v45, &qword_100091F58);
  v28 = v43;
  v29 = v44;
  v53[0] = v44;
  v53[1] = 0;
  LOBYTE(v54) = v13;
  *(&v54 + 1) = v99[0];
  DWORD1(v54) = *(v99 + 3);
  v42 = v13;
  *(&v54 + 1) = v52;
  *&v55 = 0;
  BYTE8(v55) = v46;
  *(&v55 + 9) = *v98;
  HIDWORD(v55) = *&v98[3];
  *&v56 = v43;
  *(&v56 + 1) = v50;
  LOBYTE(v57) = v47;
  DWORD1(v57) = *&v97[3];
  *(&v57 + 1) = *v97;
  *(&v57 + 1) = v51;
  *&v58 = KeyPath;
  BYTE8(v58) = 1;
  *(&v58 + 9) = *v96;
  HIDWORD(v58) = *&v96[3];
  LOBYTE(v59) = v48;
  *(&v59 + 1) = *v95;
  DWORD1(v59) = *&v95[3];
  *(&v59 + 1) = v15;
  *&v60 = v17;
  *(&v60 + 1) = v19;
  *&v61 = v21;
  BYTE8(v61) = 0;
  *(&v61 + 9) = *v94;
  HIDWORD(v61) = *&v94[3];
  LOBYTE(v62[0]) = v25;
  *(v62 + 1) = *v93;
  DWORD1(v62[0]) = *&v93[3];
  *(v62 + 8) = 0u;
  *(&v62[1] + 8) = 0u;
  BYTE8(v62[2]) = 1;
  v30 = v44;
  v31 = v54;
  v32 = v56;
  a2[2] = v55;
  a2[3] = v32;
  *a2 = v30;
  a2[1] = v31;
  v33 = v57;
  v34 = v58;
  v35 = v60;
  a2[6] = v59;
  a2[7] = v35;
  a2[4] = v33;
  a2[5] = v34;
  v36 = v61;
  v37 = v62[0];
  v38 = v62[1];
  *(a2 + 169) = *(&v62[1] + 9);
  a2[9] = v37;
  a2[10] = v38;
  a2[8] = v36;
  v39 = a2 + *(sub_1000393E4(&qword_100091F70) + 48);
  sub_10003AF50(v27, v39, &qword_100091F58);
  sub_10003AF50(v53, v63, &qword_100091F78);
  sub_10003AFB8(v8, &qword_100091F58);
  sub_10003AFB8(v27, &qword_100091F58);
  v63[0] = v29;
  v63[1] = 0;
  v64 = v42;
  *v65 = v99[0];
  *&v65[3] = *(v99 + 3);
  v66 = v52;
  v67 = 0;
  v68 = v46;
  *v69 = *v98;
  *&v69[3] = *&v98[3];
  v70 = v28;
  v71 = v50;
  v72 = v47;
  *&v73[3] = *&v97[3];
  *v73 = *v97;
  v74 = v51;
  v75 = KeyPath;
  v76 = 1;
  *v77 = *v96;
  *&v77[3] = *&v96[3];
  v78 = v48;
  *v79 = *v95;
  *&v79[3] = *&v95[3];
  v80 = v15;
  v81 = v17;
  v82 = v19;
  v83 = v21;
  v84 = 0;
  *v85 = *v94;
  *&v85[3] = *&v94[3];
  v86 = v25;
  *v87 = *v93;
  *&v87[3] = *&v93[3];
  v88 = 0u;
  v89 = 0u;
  v90 = 1;
  return sub_10003AFB8(v63, &qword_100091F78);
}

uint64_t sub_10003C41C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000393E4(&qword_100091F80);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_1000393E4(&qword_100091F88);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = sub_1000393E4(&qword_100091F90);
  sub_10003C6B0(a1, &v16[*(v17 + 44)]);
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v18 = sub_1000393E4(&qword_100091F98);
  sub_10003E730(a1, &v10[*(v18 + 44)]);
  v19 = static Edge.Set.bottom.getter();
  v20 = &v10[*(v5 + 44)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  sub_10003AF50(v16, v14, &qword_100091F88);
  sub_10003AF50(v10, v8, &qword_100091F80);
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = sub_1000393E4(&qword_100091FA0);
  sub_10003AF50(v14, a2 + v21[12], &qword_100091F88);
  v22 = a2 + v21[16];
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_10003AF50(v8, a2 + v21[20], &qword_100091F80);
  sub_10003AFB8(v10, &qword_100091F80);
  sub_10003AFB8(v16, &qword_100091F88);
  sub_10003AFB8(v8, &qword_100091F80);
  return sub_10003AFB8(v14, &qword_100091F88);
}

uint64_t sub_10003C6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000393E4(&qword_100092000);
  v58 = *(v4 - 8);
  *&v59 = v4;
  (__chkstk_darwin)();
  v57 = (&v55 - v5);
  sub_1000393E4(&qword_100092008);
  v6 = (__chkstk_darwin)();
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v79 = &v55 - v8;
  v76 = static VerticalAlignment.center.getter();
  v170 = 1;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  sub_1000443D0(0x3A646C697542, 0xE600000000000000, 0);

  sub_1000443D0(v9, v10, 0);

  v77 = v10;
  v78 = v9;
  sub_1000443E0(v9, v10, 0);

  sub_1000443E0(0x3A646C697542, 0xE600000000000000, 0);

  v183 = 0;
  v182 = 0;
  v61 = v170;
  v75 = static VerticalAlignment.center.getter();
  LOBYTE(v171) = 1;
  sub_10003D6F0(v187);
  *&v169[7] = v187[0];
  *&v169[23] = v187[1];
  *&v169[39] = v187[2];
  *&v169[55] = v187[3];
  v74 = v171;
  v73 = static VerticalAlignment.center.getter();
  LOBYTE(v171) = 1;
  sub_10003D9CC(a1, v188);
  *&v168[7] = v188[0];
  *&v168[23] = v188[1];
  *&v168[39] = v188[2];
  *&v168[55] = v188[3];
  v72 = v171;
  v71 = static VerticalAlignment.center.getter();
  LOBYTE(v171) = 1;
  sub_10003DBB8(a1, v189);
  *&v167[7] = v189[0];
  *&v167[23] = v189[1];
  *&v167[39] = v189[2];
  *&v167[55] = v189[3];
  v70 = v171;
  v69 = static VerticalAlignment.center.getter();
  LOBYTE(v171) = 1;
  sub_10003DCD0(a1, v190);
  *&v166[7] = v190[0];
  *&v166[23] = v190[1];
  *&v166[39] = v190[2];
  *&v166[55] = v190[3];
  v68 = v171;
  v67 = static VerticalAlignment.center.getter();
  LOBYTE(v171) = 1;
  sub_10003DE50(a1, v191);
  *&v165[7] = v191[0];
  *&v165[23] = v191[1];
  *&v165[39] = v191[2];
  *&v165[55] = v191[3];
  v66 = v171;
  v65 = static VerticalAlignment.center.getter();
  LOBYTE(v171) = 1;
  sub_10003DF54(a1, v192);
  *&v164[7] = v192[0];
  *&v164[23] = v192[1];
  *&v164[39] = v192[2];
  *&v164[55] = v192[3];
  v64 = v171;
  v63 = static VerticalAlignment.center.getter();
  LOBYTE(v171) = 1;
  sub_10003E058(a1, v193);
  *&v163[7] = v193[0];
  *&v163[23] = v193[1];
  *&v163[39] = v193[2];
  *&v163[55] = v193[3];
  v62 = v171;
  v11 = *(a1 + 48);
  swift_getKeyPath();
  *&v171 = v11;
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected) == 1)
  {
    v12 = static VerticalAlignment.center.getter();
    LOBYTE(v171) = 1;
    sub_10003E1D8(a1, &v151);
    *&v87[7] = v151;
    *&v87[23] = *v152;
    *&v87[39] = *&v152[16];
    *&v87[55] = *&v152[32];
    v13 = v171;
    v56 = static VerticalAlignment.center.getter();
    LOBYTE(v171) = 1;
    sub_10003E340(&v154);
    *&v86[7] = v154;
    *&v86[23] = *v155;
    *&v86[39] = *&v155[16];
    *&v86[55] = *&v155[32];
    v157 = v12;
    v158 = 0;
    v159[0] = v13;
    *&v159[1] = *v87;
    *&v159[33] = *&v87[32];
    *&v159[17] = *&v87[16];
    *&v159[49] = *&v87[48];
    v80 = v12;
    v81 = *v159;
    v83 = *&v159[32];
    v84 = *&v159[48];
    v82 = *&v159[16];
    v160 = v56;
    v161 = 0;
    v162[0] = v171;
    *&v162[1] = *v86;
    *&v162[64] = *&v155[40];
    *&v162[49] = *&v86[48];
    *&v162[33] = *&v86[32];
    *&v162[17] = *&v86[16];
    *(&v85[1] + 8) = *v162;
    *(v85 + 8) = v56;
    *(&v85[4] + 8) = *&v162[48];
    *(&v85[3] + 8) = *&v162[32];
    *(&v85[2] + 8) = *&v162[16];
    *(v89 + 1) = *v86;
    *&v159[64] = *&v87[63];
    *&v85[0] = *&v87[63];
    *(&v85[5] + 1) = *&v162[64];
    v88 = v56;
    LOBYTE(v89[0]) = v171;
    *&v89[4] = *&v155[40];
    *(&v89[3] + 1) = *&v86[48];
    *(&v89[2] + 1) = *&v86[32];
    *(&v89[1] + 1) = *&v86[16];
    sub_10003AF50(&v157, &v171, &qword_100092018);
    sub_10003AF50(&v160, &v171, &qword_100092018);
    sub_10003AFB8(&v88, &qword_100092018);
    v114 = v12;
    LOBYTE(v115[0]) = v13;
    *(&v115[1] + 1) = *&v87[16];
    *(&v115[2] + 1) = *&v87[32];
    *(&v115[3] + 1) = *&v87[48];
    *&v115[4] = *&v87[63];
    *(v115 + 1) = *v87;
    sub_10003AFB8(&v114, &qword_100092018);
    v124 = v85[3];
    v125 = v85[4];
    v126 = v85[5];
    v120 = v84;
    v121 = v85[0];
    v123 = v85[2];
    v122 = v85[1];
    v116 = v80;
    v117 = v81;
    v119 = v83;
    v118 = v82;
    nullsub_2(&v116);
    v179 = v124;
    v180 = v125;
    v181 = v126;
    v175 = v120;
    v176 = v121;
    v178 = v123;
    v177 = v122;
    v171 = v116;
    v172 = v117;
    v174 = v119;
    v173 = v118;
  }

  else
  {
    sub_1000443F0(&v171);
  }

  v116 = *(a1 + 56);
  sub_1000393E4(&qword_100091F28);
  State.wrappedValue.getter();
  v14 = 1;
  if (v114 == 1)
  {
    v15 = static VerticalAlignment.center.getter();
    v16 = v57;
    *v57 = v15;
    *(v16 + 8) = 0;
    *(v16 + 16) = 1;
    sub_1000393E4(&qword_100092028);
    sub_1000393E4(&qword_100092030);
    sub_100044C7C(&qword_100092038, &qword_100092030);
    ProgressView<>.init(label:)();
    sub_100044820(v16, v79, &qword_100092000);
    v14 = 0;
  }

  v17 = v79;
  (*(v58 + 56))(v79, v14, 1, v59);
  v92 = v179;
  v93 = v180;
  v94 = v181;
  v89[3] = v175;
  v89[4] = v176;
  v90 = v177;
  v91 = v178;
  v88 = v171;
  v89[0] = v172;
  v89[1] = v173;
  v89[2] = v174;
  v18 = v60;
  sub_10003AF50(v17, v60, &qword_100092008);
  v95 = v76;
  LOBYTE(v96[0]) = v61;
  *(v96 + 1) = *v186;
  DWORD1(v96[0]) = *&v186[3];
  v59 = xmmword_100059970;
  *(v96 + 8) = xmmword_100059970;
  BYTE8(v96[1]) = 0;
  HIDWORD(v96[1]) = *&v185[3];
  *(&v96[1] + 9) = *v185;
  *&v97 = &_swiftEmptyArrayStorage;
  *(&v97 + 1) = v78;
  *&v98 = v77;
  BYTE8(v98) = 0;
  HIDWORD(v98) = *&v184[3];
  *(&v98 + 9) = *v184;
  v19 = v96[1];
  v20 = v98;
  *(a2 + 48) = v97;
  *(a2 + 64) = v20;
  v21 = v95;
  *(a2 + 16) = v96[0];
  *(a2 + 32) = v19;
  *a2 = v21;
  v100[0] = v75;
  v100[1] = 0;
  v101[0] = v74;
  *&v101[1] = *v169;
  *&v101[64] = *&v169[63];
  *&v101[49] = *&v169[48];
  *&v101[33] = *&v169[32];
  *&v101[17] = *&v169[16];
  v22 = v75;
  *(a2 + 104) = *v101;
  *(a2 + 88) = v22;
  v23 = *&v101[16];
  v24 = *&v101[32];
  *(a2 + 152) = *&v101[48];
  *(a2 + 136) = v24;
  *(a2 + 120) = v23;
  v102[0] = v73;
  v102[1] = 0;
  v103[0] = v72;
  *&v103[1] = *v168;
  *&v103[64] = *&v168[63];
  *&v103[49] = *&v168[48];
  *&v103[33] = *&v168[32];
  *&v103[17] = *&v168[16];
  v25 = *v103;
  *(a2 + 176) = v73;
  *(a2 + 192) = v25;
  v26 = *&v103[16];
  v27 = *&v103[48];
  *(a2 + 224) = *&v103[32];
  *(a2 + 240) = v27;
  *(a2 + 208) = v26;
  v104[0] = v71;
  v104[1] = 0;
  v105[0] = v70;
  *&v105[1] = *v167;
  *&v105[64] = *&v167[63];
  *&v105[49] = *&v167[48];
  *&v105[33] = *&v167[32];
  *&v105[17] = *&v167[16];
  v28 = *v105;
  *(a2 + 264) = v71;
  *(a2 + 280) = v28;
  v29 = *&v105[16];
  v30 = *&v105[48];
  *(a2 + 312) = *&v105[32];
  *(a2 + 328) = v30;
  *(a2 + 296) = v29;
  v106[0] = v69;
  v106[1] = 0;
  v107[0] = v68;
  *&v107[1] = *v166;
  *&v107[64] = *&v166[63];
  *&v107[49] = *&v166[48];
  *&v107[33] = *&v166[32];
  *&v107[17] = *&v166[16];
  v31 = *v107;
  *(a2 + 352) = v69;
  *(a2 + 368) = v31;
  v32 = *&v107[16];
  v33 = *&v107[48];
  *(a2 + 400) = *&v107[32];
  *(a2 + 416) = v33;
  *(a2 + 384) = v32;
  v108[0] = v67;
  v108[1] = 0;
  v109[0] = v66;
  *&v109[1] = *v165;
  *&v109[64] = *&v165[63];
  *&v109[49] = *&v165[48];
  *&v109[33] = *&v165[32];
  *&v109[17] = *&v165[16];
  v34 = *v109;
  *(a2 + 440) = v67;
  *(a2 + 456) = v34;
  v35 = *&v109[16];
  v36 = *&v109[48];
  *(a2 + 488) = *&v109[32];
  *(a2 + 504) = v36;
  *(a2 + 472) = v35;
  v110[0] = v65;
  v110[1] = 0;
  v111[0] = v64;
  *&v111[1] = *v164;
  *&v111[64] = *&v164[63];
  *&v111[49] = *&v164[48];
  *&v111[33] = *&v164[32];
  *&v111[17] = *&v164[16];
  v37 = *v111;
  *(a2 + 528) = v65;
  *(a2 + 544) = v37;
  v38 = *&v111[16];
  v39 = *&v111[48];
  *(a2 + 576) = *&v111[32];
  *(a2 + 592) = v39;
  *(a2 + 560) = v38;
  v112[0] = v63;
  v112[1] = 0;
  v113[0] = v62;
  *&v113[1] = *v163;
  *&v113[64] = *&v163[63];
  *&v113[49] = *&v163[48];
  *&v113[33] = *&v163[32];
  *&v113[17] = *&v163[16];
  v40 = *v113;
  *(a2 + 616) = v63;
  *(a2 + 632) = v40;
  v41 = *&v113[16];
  v42 = *&v113[48];
  *(a2 + 664) = *&v113[32];
  *(a2 + 680) = v42;
  *(a2 + 648) = v41;
  v43 = v88;
  v44 = v89[0];
  v115[0] = v89[0];
  v114 = v88;
  v45 = v89[3];
  v46 = v89[4];
  v115[4] = v89[4];
  v115[3] = v89[3];
  v48 = v89[1];
  v47 = v89[2];
  v115[1] = v89[1];
  v115[2] = v89[2];
  v50 = v93;
  v49 = v94;
  v115[9] = v94;
  v115[8] = v93;
  v115[7] = v92;
  v51 = v91;
  v52 = v90;
  v115[5] = v90;
  v115[6] = v91;
  *(a2 + 832) = v92;
  *(a2 + 848) = v50;
  *(a2 + 864) = v49;
  *(a2 + 768) = v45;
  *(a2 + 784) = v46;
  *(a2 + 800) = v52;
  *(a2 + 816) = v51;
  v99 = &_swiftEmptyArrayStorage;
  *(a2 + 80) = &_swiftEmptyArrayStorage;
  *(a2 + 168) = *&v101[64];
  *(a2 + 256) = *&v103[64];
  *(a2 + 344) = *&v105[64];
  *(a2 + 432) = *&v107[64];
  *(a2 + 520) = *&v109[64];
  *(a2 + 608) = *&v111[64];
  *(a2 + 696) = *&v113[64];
  *(a2 + 704) = v43;
  *(a2 + 720) = v44;
  *(a2 + 736) = v48;
  *(a2 + 752) = v47;
  v53 = sub_1000393E4(&qword_100092010);
  sub_10003AF50(v18, a2 + *(v53 + 176), &qword_100092008);
  sub_10003AF50(&v95, &v116, &qword_100092018);
  sub_10003AF50(v100, &v116, &qword_100092018);
  sub_10003AF50(v102, &v116, &qword_100092018);
  sub_10003AF50(v104, &v116, &qword_100092018);
  sub_10003AF50(v106, &v116, &qword_100092018);
  sub_10003AF50(v108, &v116, &qword_100092018);
  sub_10003AF50(v110, &v116, &qword_100092018);
  sub_10003AF50(v112, &v116, &qword_100092018);
  sub_10003AF50(&v114, &v116, &qword_100092020);
  sub_10003AFB8(v79, &qword_100092008);
  sub_10003AFB8(v18, &qword_100092008);
  v124 = v92;
  v125 = v93;
  v126 = v94;
  v120 = v89[3];
  v121 = v89[4];
  v123 = v91;
  v122 = v90;
  v116 = v88;
  v117 = v89[0];
  v119 = v89[2];
  v118 = v89[1];
  sub_10003AFB8(&v116, &qword_100092020);
  v127[0] = v63;
  v127[1] = 0;
  v128 = v62;
  v130 = *&v163[16];
  v131 = *&v163[32];
  *v132 = *&v163[48];
  *&v132[15] = *&v163[63];
  v129 = *v163;
  sub_10003AFB8(v127, &qword_100092018);
  v133[0] = v65;
  v133[1] = 0;
  v134 = v64;
  v136 = *&v164[16];
  v137 = *&v164[32];
  *v138 = *&v164[48];
  *&v138[15] = *&v164[63];
  v135 = *v164;
  sub_10003AFB8(v133, &qword_100092018);
  v139[0] = v67;
  v139[1] = 0;
  v140 = v66;
  v142 = *&v165[16];
  v143 = *&v165[32];
  *v144 = *&v165[48];
  *&v144[15] = *&v165[63];
  v141 = *v165;
  sub_10003AFB8(v139, &qword_100092018);
  v145[0] = v69;
  v145[1] = 0;
  v146 = v68;
  v148 = *&v166[16];
  v149 = *&v166[32];
  *v150 = *&v166[48];
  *&v150[15] = *&v166[63];
  v147 = *v166;
  sub_10003AFB8(v145, &qword_100092018);
  v151 = v71;
  v152[0] = v70;
  *&v152[17] = *&v167[16];
  *&v152[33] = *&v167[32];
  *v153 = *&v167[48];
  *&v153[15] = *&v167[63];
  *&v152[1] = *v167;
  sub_10003AFB8(&v151, &qword_100092018);
  v154 = v73;
  v155[0] = v72;
  *&v155[17] = *&v168[16];
  *&v155[33] = *&v168[32];
  *v156 = *&v168[48];
  *&v156[15] = *&v168[63];
  *&v155[1] = *v168;
  sub_10003AFB8(&v154, &qword_100092018);
  v157 = v75;
  v158 = 0;
  v159[0] = v74;
  *&v159[17] = *&v169[16];
  *&v159[33] = *&v169[32];
  *&v159[49] = *&v169[48];
  *&v159[64] = *&v169[63];
  *&v159[1] = *v169;
  sub_10003AFB8(&v157, &qword_100092018);
  v160 = v76;
  v161 = 0;
  v162[0] = v61;
  *&v162[1] = *v186;
  *&v162[4] = *&v186[3];
  *&v162[8] = v59;
  v162[24] = 0;
  *&v162[25] = *v185;
  *&v162[28] = *&v185[3];
  *&v162[32] = &_swiftEmptyArrayStorage;
  *&v162[40] = v78;
  *&v162[48] = v77;
  v162[56] = 0;
  *&v162[60] = *&v184[3];
  *&v162[57] = *v184;
  *&v162[64] = &_swiftEmptyArrayStorage;
  return sub_10003AFB8(&v160, &qword_100092018);
}

uint64_t sub_10003D6F0@<X0>(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(19);
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = 0x202F20424D20;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x2820424D20;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 10533;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  *a1 = xmmword_100059980;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  sub_1000443D0(0x617053206B736944, 0xEB000000003A6563, 0);

  sub_1000443D0(v2, v4, 0);

  sub_1000443E0(v2, v4, 0);

  sub_1000443E0(0x617053206B736944, 0xEB000000003A6563, 0);
}

uint64_t sub_10003D9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__currentWiFiNetwork);

  v5 = String.count.getter();

  if (v5 < 1)
  {
    v6 = 0xE600000000000000;
    v7 = 0x29656E6F4E28;
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *v4;
    v6 = v4[1];
  }

  *a2 = xmmword_100059990;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;
  *(a2 + 48) = 0;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  sub_1000443D0(0x74654E2069466957, 0xED00003A6B726F77, 0);

  sub_1000443D0(v7, v6, 0);

  sub_1000443E0(v7, v6, 0);

  sub_1000443E0(0x74654E2069466957, 0xED00003A6B726F77, 0);
}

uint64_t sub_10003DBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);

  if (String.count.getter() <= 0)
  {

    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
  }

  *a2 = xmmword_1000599A0;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = 0;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  sub_1000443D0(0x3A656C61636F4CLL, 0xE700000000000000, 0);

  sub_1000443D0(v4, v3, 0);

  sub_1000443E0(v4, v3, 0);

  sub_1000443E0(0x3A656C61636F4CLL, 0xE700000000000000, 0);
}

uint64_t sub_10003DCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__diagsRunning))
  {
    v4 = 7562585;
  }

  else
  {
    v4 = 28494;
  }

  if (*(v3 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__diagsRunning))
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  *a2 = 0xD000000000000014;
  *(a2 + 8) = 0x8000000100071110;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  sub_1000443D0(0xD000000000000014, 0x8000000100071110, 0);

  sub_1000443D0(v4, v5, 0);

  sub_1000443E0(v4, v5, 0);

  sub_1000443E0(0xD000000000000014, 0x8000000100071110, 0);
}

uint64_t sub_10003DE50@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 7562585;
  }

  else
  {
    v2 = 28494;
  }

  if (*a1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE200000000000000;
  }

  *a2 = 0xD000000000000017;
  *(a2 + 8) = 0x80000001000710F0;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  *(a2 + 48) = 0;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  sub_1000443D0(0xD000000000000017, 0x80000001000710F0, 0);

  sub_1000443D0(v2, v3, 0);

  sub_1000443E0(v2, v3, 0);

  sub_1000443E0(0xD000000000000017, 0x80000001000710F0, 0);
}

uint64_t sub_10003DF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    v2 = 7562585;
  }

  else
  {
    v2 = 28494;
  }

  if (*(a1 + 24))
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE200000000000000;
  }

  *a2 = 0xD000000000000011;
  *(a2 + 8) = 0x80000001000710D0;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  *(a2 + 48) = 0;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  sub_1000443D0(0xD000000000000011, 0x80000001000710D0, 0);

  sub_1000443D0(v2, v3, 0);

  sub_1000443E0(v2, v3, 0);

  sub_1000443E0(0xD000000000000011, 0x80000001000710D0, 0);
}

uint64_t sub_10003E058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected))
  {
    v4 = 7562585;
  }

  else
  {
    v4 = 28494;
  }

  if (*(v3 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected))
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  *a2 = 0xD00000000000001BLL;
  *(a2 + 8) = 0x80000001000710B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  sub_1000443D0(0xD00000000000001BLL, 0x80000001000710B0, 0);

  sub_1000443D0(v4, v5, 0);

  sub_1000443E0(v4, v5, 0);

  sub_1000443E0(0xD00000000000001BLL, 0x80000001000710B0, 0);
}

uint64_t sub_10003E1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveName);
  v5 = *(v3 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveName + 8);
  *a2 = 0xD00000000000001DLL;
  *(a2 + 8) = 0x8000000100071040;
  *(a2 + 16) = 0;
  *(a2 + 24) = &_swiftEmptyArrayStorage;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = &_swiftEmptyArrayStorage;

  sub_1000443D0(0xD00000000000001DLL, 0x8000000100071040, 0);

  sub_1000443D0(v4, v5, 0);

  sub_1000443E0(v4, v5, 0);

  sub_1000443E0(0xD00000000000001DLL, 0x8000000100071040, 0);
}

uint64_t sub_10003E340@<X0>(uint64_t a1@<X8>)
{
  _StringGuts.grow(_:)(19);
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = 0x202F20424D20;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x2820424D20;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 10533;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x8000000100071020;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  *(a1 + 56) = &_swiftEmptyArrayStorage;
  sub_1000443D0(0xD000000000000017, 0x8000000100071020, 0);

  sub_1000443D0(v2, v4, 0);

  sub_1000443E0(v2, v4, 0);

  sub_1000443E0(0xD000000000000017, 0x8000000100071020, 0);
}

uint64_t sub_10003E618@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  sub_1000443D0(0xD000000000000024, 0x8000000100071060, 0);

  sub_1000443D0(0xD000000000000014, 0x8000000100071090, 0);

  sub_1000443E0(0xD000000000000014, 0x8000000100071090, 0);

  sub_1000443E0(0xD000000000000024, 0x8000000100071060, 0);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0xD000000000000024;
  *(a1 + 32) = 0x8000000100071060;
  *(a1 + 40) = 0;
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  *(a1 + 56) = 0xD000000000000014;
  *(a1 + 64) = 0x8000000100071090;
  *(a1 + 72) = 0;
  *(a1 + 80) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10003E730@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = sub_1000393E4(&qword_100091FA8);
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = &v41 - v4;
  v43 = sub_1000393E4(&qword_100091FB0);
  v6 = __chkstk_darwin(v43);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v44 = &v41 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v41 - v14;
  __chkstk_darwin(v13);
  v17 = &v41 - v16;
  v18 = swift_allocObject();
  v19 = a1[5];
  v18[5] = a1[4];
  v18[6] = v19;
  v18[7] = a1[6];
  v20 = a1[1];
  v18[1] = *a1;
  v18[2] = v20;
  v21 = a1[3];
  v18[3] = a1[2];
  v18[4] = v21;
  v47 = a1;
  sub_100044060(a1, v49);
  v22 = type metadata accessor for TestButtonLabel(0);
  sub_100044218(&qword_100091FB8, type metadata accessor for TestButtonLabel);
  v41 = v22;
  Button.init(action:label:)();
  v23 = *(a1 + 6);
  swift_getKeyPath();
  *&v49[0] = v23;
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v23 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected) == 1)
  {
    v49[0] = *(a1 + 56);
    sub_1000393E4(&qword_100091F28);
    State.wrappedValue.getter();
    v24 = v48;
  }

  else
  {
    v24 = 1;
  }

  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  (*(v3 + 32))(v15, v5, v42);
  v27 = v43;
  v28 = &v15[*(v43 + 36)];
  *v28 = KeyPath;
  v28[1] = sub_1000442C8;
  v28[2] = v26;
  sub_100044820(v15, v17, &qword_100091FB0);
  v29 = swift_allocObject();
  v30 = a1[5];
  v29[5] = a1[4];
  v29[6] = v30;
  v29[7] = a1[6];
  v31 = a1[1];
  v29[1] = *a1;
  v29[2] = v31;
  v32 = a1[3];
  v29[3] = a1[2];
  v29[4] = v32;
  __chkstk_darwin(v29);
  *(&v41 - 2) = a1;
  sub_100044060(a1, v49);
  Button.init(action:label:)();
  v49[0] = *(a1 + 56);
  sub_1000393E4(&qword_100091F28);
  State.wrappedValue.getter();
  LOBYTE(KeyPath) = v48;
  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = KeyPath;
  v35 = &v12[*(v27 + 36)];
  *v35 = v33;
  v35[1] = sub_100044DCC;
  v35[2] = v34;
  v36 = v44;
  sub_10003AF50(v17, v44, &qword_100091FB0);
  v37 = v45;
  sub_10003AF50(v12, v45, &qword_100091FB0);
  v38 = v46;
  sub_10003AF50(v36, v46, &qword_100091FB0);
  v39 = sub_1000393E4(&qword_100091FC0);
  sub_10003AF50(v37, v38 + *(v39 + 48), &qword_100091FB0);
  sub_10003AFB8(v12, &qword_100091FB0);
  sub_10003AFB8(v17, &qword_100091FB0);
  sub_10003AFB8(v37, &qword_100091FB0);
  return sub_10003AFB8(v36, &qword_100091FB0);
}

uint64_t sub_10003ECEC()
{
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 48);
  swift_getKeyPath();
  *&v27 = v8;
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected) == 1 && ((swift_getKeyPath(), *&v27 = v8, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v9 = *(v8 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDrivePath + 8), (v9 & 0x2000000000000000) != 0) ? (v10 = HIBYTE(v9) & 0xF) : (v10 = *(v8 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDrivePath) & 0xFFFFFFFFFFFFLL), v10))
  {
    v27 = *(v0 + 56);
    LOBYTE(aBlock) = 1;
    sub_1000393E4(&qword_100091F28);
    State.wrappedValue.setter();
    sub_100044318(0, &qword_100091FD8);
    (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.background(_:), v4);
    v11 = static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v7, v4);
    v12 = swift_allocObject();
    v13 = *(v0 + 80);
    v12[5] = *(v0 + 64);
    v12[6] = v13;
    v12[7] = *(v0 + 96);
    v14 = *(v0 + 16);
    v12[1] = *v0;
    v12[2] = v14;
    v15 = *(v0 + 48);
    v12[3] = *(v0 + 32);
    v12[4] = v15;
    v33 = sub_1000443C8;
    v34 = v12;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_10003FE8C;
    v32 = &unk_10007EA88;
    v16 = _Block_copy(&aBlock);
    sub_100044060(v0, &v27);
    static DispatchQoS.unspecified.getter();
    *&v27 = &_swiftEmptyArrayStorage;
    sub_100044218(&qword_100091FE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000393E4(&qword_100091FE8);
    sub_100044C7C(&qword_100091FF0, &qword_100091FE8);
    v17 = v23;
    v18 = v26;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v25 + 8))(v17, v18);
    (*(v22 + 8))(v3, v24);
  }

  else
  {
    sub_100044318(0, &qword_100091D00);
    v20 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v27 = *(v0 + 88);
    v28 = *(v0 + 104);
    aBlock = 0xD00000000000002CLL;
    v30 = 0x8000000100070F10;
    sub_1000393E4(&qword_100091F20);
    State.wrappedValue.setter();
    v27 = *(v0 + 72);
    LOBYTE(aBlock) = 1;
    sub_1000393E4(&qword_100091F28);
    return State.wrappedValue.setter();
  }
}

uint64_t sub_10003F2E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected) == 1 && (sub_1000393E4(&qword_100091F28), State.wrappedValue.getter(), (v9 & 1) == 0))
  {
    v4 = static Color.blue.getter();
  }

  else
  {
    v4 = static Color.gray.getter();
  }

  v5 = v4;
  v6 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *(a2 + *(type metadata accessor for TestButtonLabel(0) + 28)) = KeyPath;
  sub_1000393E4(&qword_100091FC8);
  result = swift_storeEnumTagMultiPayload();
  *a2 = 0xD000000000000023;
  a2[1] = 0x8000000100070EB0;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void sub_10003F44C()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_100091CD0 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_100092870 object:0];
}

uint64_t sub_10003F4EC@<X0>(void *a1@<X8>)
{
  static Color.white.getter();
  v2 = Color.opacity(_:)();

  sub_1000393E4(&qword_100091F28);
  State.wrappedValue.getter();
  if (v7 == 1)
  {
    v3 = static Color.gray.getter();
  }

  else
  {
    v3 = static Color.blue.getter();
  }

  v4 = v3;
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for TestButtonLabel(0) + 28)) = KeyPath;
  sub_1000393E4(&qword_100091FC8);
  result = swift_storeEnumTagMultiPayload();
  *a1 = 0x6265442074697845;
  a1[1] = 0xEF6F666E49206775;
  a1[2] = v2;
  a1[3] = v4;
  return result;
}

uint64_t sub_10003F5F4(_OWORD *a1)
{
  v2 = sub_1000393E4(&qword_100091F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  LocalizedStringKey.init(stringLiteral:)();
  static ButtonRole.cancel.getter();
  v5 = type metadata accessor for ButtonRole();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v7 = a1[5];
  v6[5] = a1[4];
  v6[6] = v7;
  v6[7] = a1[6];
  v8 = a1[1];
  v6[1] = *a1;
  v6[2] = v8;
  v9 = a1[3];
  v6[3] = a1[2];
  v6[4] = v9;
  sub_100044060(a1, v11);
  return Button<>.init(_:role:action:)();
}

uint64_t sub_10003F760(uint64_t a1)
{
  v1 = *(a1 + 48);
  swift_getKeyPath();
  *&v44 = v1;
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDrivePath);
  v3 = *(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDrivePath + 8);
  *&v44 = *(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDrivePath);
  *(&v44 + 1) = v3;

  v4._countAndFlagsBits = 0x2F73676F4C2FLL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  v5 = v44;
  v6 = objc_opt_self();
  v7 = &stru_10008B000;
  v8 = [v6 defaultManager];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 fileExistsAtPath:v9];

  if (v10 && (sub_100044318(0, &qword_100091D00), v11 = static OS_os_log.default.getter(), static os_log_type_t.default.getter(), os_log(_:dso:log:type:_:)(), v11, v12 = [v6 defaultManager], v13 = String._bridgeToObjectiveC()(), *&v44 = 0, v14 = objc_msgSend(v12, "removeItemAtPath:error:", v13, &v44), v12, v13, v15 = v44, !v14))
  {
    v30 = v15;

    v28 = a1;
  }

  else
  {
    sub_100044318(0, &qword_100091D00);

    v16 = static OS_os_log.default.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v44 = v19;
      *v18 = 136315138;
      v20 = sub_100038298(v5, *(&v5 + 1), &v44);

      *(v18 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Copying logs to %s", v18, 0xCu);
      sub_100039330(v19);
      v7 = &stru_10008B000;
    }

    else
    {
    }

    v21 = [v6 v7[135].attr];
    v22 = String._bridgeToObjectiveC()();
    swift_getKeyPath();
    *&v44 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = v2[1];
    *&v44 = *v2;
    *(&v44 + 1) = v23;

    v24._countAndFlagsBits = 0x2F73676F4C2FLL;
    v24._object = 0xE600000000000000;
    String.append(_:)(v24);
    v25 = String._bridgeToObjectiveC()();

    *&v44 = 0;
    v26 = [v21 copyItemAtPath:v22 toPath:v25 error:&v44];

    v27 = v44;
    if (v26)
    {
      v28 = a1;
      v44 = *(a1 + 88);
      v45 = *(a1 + 104);
      *&v43 = 0xD00000000000002DLL;
      *(&v43 + 1) = 0x8000000100070F90;
      v29 = v27;
      sub_1000393E4(&qword_100091F20);
      State.wrappedValue.setter();
      v44 = *(a1 + 72);
      LOBYTE(v43) = 1;
      sub_1000393E4(&qword_100091F28);
      State.wrappedValue.setter();
      goto LABEL_13;
    }

    v30 = v44;
    v28 = a1;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100044318(0, &qword_100091D00);
  swift_errorRetain();
  v31 = static OS_os_log.default.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v44 = v34;
    *v33 = 136315138;
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = sub_100038298(v35, v36, &v44);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to copy log files - %s", v33, 0xCu);
    sub_100039330(v34);
  }

  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  *&v44 = 0xD00000000000001ALL;
  *(&v44 + 1) = 0x8000000100070F70;
  swift_getErrorValue();
  v38._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v38);

  v39 = v44;
  v44 = *(v28 + 88);
  v45 = *(v28 + 104);
  v43 = v39;
  sub_1000393E4(&qword_100091F20);
  State.wrappedValue.setter();
  v43 = *(v28 + 72);
  v44 = v43;
  v46 = *(&v43 + 1);
  sub_10003AF50(&v46, v42, &qword_100091FF8);
  sub_1000393E4(&qword_100091F28);
  State.wrappedValue.setter();

  sub_10003AFB8(&v44, &qword_100091F28);
LABEL_13:
  v43 = *(v28 + 56);
  v42[0] = 0;
  sub_1000393E4(&qword_100091F28);
  return State.wrappedValue.setter();
}

uint64_t sub_10003FE8C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10003FEF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v10[4] = v1[4];
  v10[5] = v3;
  v10[6] = v1[6];
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = v1[3];
  v10[2] = v1[2];
  v10[3] = v5;
  *a1 = static Alignment.center.getter();
  a1[1] = v6;
  v7 = sub_1000393E4(&qword_100091F00);
  sub_10003BCCC(v10, a1 + *(v7 + 44));
  v8 = static Edge.Set.all.getter();
  result = sub_1000393E4(&qword_100091F08);
  *(a1 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_10003FF8C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000393E4(&qword_100091FC8);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TestButtonLabel(0);
  sub_10003AF50(v1 + *(v10 + 28), v9, &qword_100091FC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100044820(v9, a1, &qword_100091FD0);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_100040174@<D0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = sub_1000393E4(&qword_100092100);
  __chkstk_darwin(v2 - 8);
  v71 = &v63[-v3];
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v65 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000393E4(&qword_100092108);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v63[-v9];
  v11 = sub_1000393E4(&qword_100091FD0);
  v12 = __chkstk_darwin(v11 - 8);
  v66 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v63[-v15];
  __chkstk_darwin(v14);
  v18 = &v63[-v17];
  v67 = sub_1000393E4(&qword_100092110);
  __chkstk_darwin(v67);
  v20 = &v63[-v19];
  v70 = sub_1000393E4(&qword_100092118);
  __chkstk_darwin(v70);
  v72 = &v63[-v21];
  v22 = v1[1];
  v68 = *v1;
  v69 = v22;

  v73 = v1;
  sub_10003FF8C(v18);
  (*(v5 + 104))(v16, enum case for UserInterfaceSizeClass.compact(_:), v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v23 = *(v8 + 56);
  sub_10003AF50(v18, v10, &qword_100091FD0);
  sub_10003AF50(v16, &v10[v23], &qword_100091FD0);
  v24 = v5;
  v25 = *(v5 + 48);
  if (v25(v10, 1, v4) == 1)
  {
    sub_10003AFB8(v16, &qword_100091FD0);
    sub_10003AFB8(v18, &qword_100091FD0);
    if (v25(&v10[v23], 1, v4) == 1)
    {
      sub_10003AFB8(v10, &qword_100091FD0);
LABEL_7:
      static Alignment.center.getter();
      goto LABEL_8;
    }

LABEL_6:
    sub_10003AFB8(v10, &qword_100092108);
    goto LABEL_7;
  }

  sub_10003AF50(v10, v66, &qword_100091FD0);
  if (v25(&v10[v23], 1, v4) == 1)
  {
    sub_10003AFB8(v16, &qword_100091FD0);
    sub_10003AFB8(v18, &qword_100091FD0);
    (*(v24 + 8))(v66, v4);
    goto LABEL_6;
  }

  v58 = v65;
  (*(v24 + 32))(v65, &v10[v23], v4);
  sub_100044218(&qword_100092130, &type metadata accessor for UserInterfaceSizeClass);
  v59 = v66;
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v24 + 8);
  v60(v58, v4);
  sub_10003AFB8(v16, &qword_100091FD0);
  sub_10003AFB8(v18, &qword_100091FD0);
  v60(v59, v4);
  sub_10003AFB8(v10, &qword_100091FD0);
  if (v64)
  {
    v61 = INFINITY;
  }

  else
  {
    v61 = 350.0;
  }

  static Alignment.center.getter();
  if (v61 < 300.0)
  {
    static os_log_type_t.fault.getter();
    v62 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

LABEL_8:
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v82 = 0;
  v26 = v73;
  v27 = v73[2];
  v28 = static Edge.Set.all.getter();
  v29 = enum case for Font.Design.default(_:);
  v30 = type metadata accessor for Font.Design();
  v31 = *(v30 - 8);
  v32 = v71;
  (*(v31 + 104))(v71, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);

  v33 = static Font.system(size:weight:design:)();
  sub_10003AFB8(v32, &qword_100092100);
  KeyPath = swift_getKeyPath();
  v35 = &v20[*(v67 + 36)];
  v36 = *(type metadata accessor for RoundedRectangle() + 20);
  v37 = enum case for RoundedCornerStyle.continuous(_:);
  v38 = type metadata accessor for RoundedCornerStyle();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #20.0 }

  *v35 = _Q0;
  *&v35[*(sub_1000393E4(&qword_100092120) + 36)] = 256;
  v44 = v69;
  *v20 = v68;
  *(v20 + 1) = v44;
  v20[16] = 0;
  *(v20 + 3) = &_swiftEmptyArrayStorage;
  v45 = v80;
  *(v20 + 6) = v79;
  *(v20 + 7) = v45;
  *(v20 + 8) = v81;
  v46 = v76;
  *(v20 + 2) = v75;
  *(v20 + 3) = v46;
  v47 = v78;
  *(v20 + 4) = v77;
  *(v20 + 5) = v47;
  *(v20 + 18) = v27;
  v20[152] = v28;
  *(v20 + 20) = KeyPath;
  *(v20 + 21) = v33;
  v48 = v26[3];
  v49 = swift_getKeyPath();
  v50 = v72;
  sub_100044820(v20, v72, &qword_100092110);
  v51 = &v50[*(v70 + 36)];
  *v51 = v49;
  v51[1] = v48;
  sub_1000393E4(&qword_100091F60);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100059960;

  LOBYTE(KeyPath) = static Edge.Set.leading.getter();
  *(v52 + 32) = KeyPath;
  v53 = static Edge.Set.trailing.getter();
  *(v52 + 33) = v53;
  v54 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != KeyPath)
  {
    v54 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v53)
  {
    v54 = Edge.Set.init(rawValue:)();
  }

  v55 = v74;
  sub_100044820(v50, v74, &qword_100092118);
  v56 = v55 + *(sub_1000393E4(&qword_100092128) + 36);
  *v56 = v54;
  result = 0.0;
  *(v56 + 8) = 0u;
  *(v56 + 24) = 0u;
  *(v56 + 40) = 1;
  return result;
}

uint64_t sub_100040CA0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_100040D54@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_100040E38(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10004102C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1000410CC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1000411A8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000412B4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100041354@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100041430(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_100041534()
{
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer);
  v2 = v1;
  return v1;
}

id sub_1000415E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer);
  *a2 = v4;

  return v4;
}

void sub_1000416A4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer;
  v5 = *(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100044318(0, &qword_100091EE0);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

char *sub_10004183C()
{
  v1 = &v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__currentWiFiNetwork];
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__diagsRunning] = 0;
  *&v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__ramDiskSize] = 0;
  *&v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__ramDiskUsed] = 0;
  *&v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__ramDiskUsage] = 0;
  v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected] = 0;
  v2 = &v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDrivePath];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = &v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveName];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveSize] = 0;
  *&v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveUsed] = 0;
  *&v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveUsage] = 0;
  v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__skManagerReady] = 0;
  *&v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer] = 0;
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState_skManager] = result;
    ObservationRegistrar.init()();
    v21.receiver = v0;
    v21.super_class = type metadata accessor for DebugInfoState(0);
    v5 = objc_msgSendSuper2(&v21, "init");
    v6 = *&v5[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState_skManager];
    v7 = v5;
    [v6 addListener:v7];
    v8 = [objc_opt_self() sharedInstance];
    if (!v8)
    {
LABEL_8:
      sub_1000421C0();
      sub_100041F00();
      sub_100042608();
      v16 = objc_opt_self();
      v17 = swift_allocObject();
      *(v17 + 16) = v7;
      v20[4] = sub_100043F04;
      v20[5] = v17;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1107296256;
      v20[2] = sub_100041BD0;
      v20[3] = &unk_10007E8D8;
      v18 = _Block_copy(v20);

      v19 = [v16 scheduledTimerWithTimeInterval:1 repeats:v18 block:10.0];
      _Block_release(v18);
      sub_1000416A4(v19);

      return v7;
    }

    v9 = v8;
    if (![v8 isAssociatedToNetwork])
    {
      v15 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_7;
    }

    result = [v9 currentNetworkSSID];
    if (result)
    {
      v10 = result;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = v13;
      v15 = v11;
LABEL_7:
      sub_100040AFC(v15, v14);

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100041B0C()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    goto LABEL_7;
  }

  v1 = v0;
  if (![v0 isAssociatedToNetwork])
  {
    v8 = 0;
    v7 = 0xE000000000000000;
    goto LABEL_6;
  }

  result = [v1 currentNetworkSSID];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = v6;
    v8 = v4;
LABEL_6:
    sub_100040AFC(v8, v7);

LABEL_7:
    sub_1000421C0();
    sub_100041F00();
    return sub_100042608();
  }

  __break(1u);
  return result;
}

void sub_100041BD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100041C5C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*&v0[OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugInfoState(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100041F00()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v7 = v1;
    v2 = [v1 systemServicesDelegate];
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      aBlock[4] = sub_100043C94;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004216C;
      aBlock[3] = &unk_10007E888;
      v5 = _Block_copy(aBlock);
      v6 = v0;

      [v3 diagnosticsRunning:v5];
      _Block_release(v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100042050(uint64_t result, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__diagsRunning) == (result & 1))
  {
    *(a2 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__diagsRunning) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10004216C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1000421C0()
{
  v1 = v0;
  bzero(&v18, 0x878uLL);
  statfs("/private/var", &v18);
  if (!is_mul_ok(v18.f_blocks, v18.f_bsize))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!is_mul_ok(v18.f_bfree, v18.f_bsize))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = v18.f_blocks * v18.f_bsize;
  v3 = v18.f_bfree * v18.f_bsize;
  v4 = v2 - v3;
  if (v2 < v3)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v2 / 0xF4240;
  v6 = OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__ramDiskSize;
  if (*(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__ramDiskSize) != v2 / 0xF4240)
  {
    KeyPath = swift_getKeyPath();
    v16 = &v16;
    __chkstk_darwin(KeyPath);
    v15[2] = v1;
    v15[3] = v5;
    v17 = v1;
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v8 = OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__ramDiskUsed;
  if (*(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__ramDiskUsed) != v4 / 0xF4240)
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    v15[-2] = v1;
    v15[-1] = v4 / 0xF4240;
    v17 = v1;
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  v17 = v1;
  sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v1 + v8);
  swift_getKeyPath();
  v17 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = v10 / *(v1 + v6) * 100.0;
  if (COERCE__INT64(fabs(v12)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v12 >= 9.22337204e18)
  {
    goto LABEL_19;
  }

  v13 = v12;
  if (*(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__ramDiskUsage) != v12)
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    v15[-2] = v1;
    v15[-1] = v13;
    v17 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100042608()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState_skManager) allDisks];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = sub_1000393E4(&qword_100091EB8);
  v78 = sub_100044C7C(&qword_100091EC0, &qword_100091EB8);
  v76[0] = v2;
  v3 = sub_100043854(v76, v77);
  __chkstk_darwin(v3);
  v5 = (&v65 - v4);
  (*(v6 + 16))(&v65 - v4);
  v73.f_bavail = swift_getAssociatedTypeWitness();
  v73.f_files = swift_getAssociatedConformanceWitness();
  v7 = sub_100043ABC(&v73);
  *v7 = *v5;
  v7[1] = 0;
  v67 = xmmword_100059800;
  v70 = 0;
  v68 = 0;
  while (1)
  {
    sub_100043898(&v73, v73.f_bavail);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = type metadata accessor for Optional();
    v10 = *(v9 - 8);
    __chkstk_darwin(v9);
    v12 = &v65 - v11;
    dispatch thunk of IteratorProtocol.next()();
    v13 = *(AssociatedTypeWitness - 8);
    if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v75 = AssociatedTypeWitness;
    v14 = sub_100043ABC(v74);
    (*(v13 + 32))(v14, v12, AssociatedTypeWitness);
    sub_100043B20(v74, &v72);
    sub_100044318(0, &qword_100091EC8);
    if (swift_dynamicCast())
    {
      v15 = v71;
      if ([v71 isValid] && objc_msgSend(v15, "isWritable") && (objc_msgSend(v15, "isInternal") & 1) == 0)
      {
        sub_1000393E4(&unk_100091ED0);
        v16 = swift_allocObject();
        *(v16 + 16) = v67;
        v17 = [v15 description];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        *(v16 + 56) = &type metadata for String;
        *(v16 + 64) = sub_10003ACD8();
        *(v16 + 32) = v18;
        *(v16 + 40) = v20;
        sub_100044318(0, &qword_100091D00);
        v21 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v68 = v15;
      }

      else
      {
      }
    }
  }

  (*(v10 + 8))(v12, v9);
  sub_100039330(&v73);
  v22 = v68;
  v23 = v69;
  if (v68)
  {
    v24 = v68;
    v25 = [v24 mountPoint];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = [v24 volumeName];
      if (v30)
      {
        v31 = v30;

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        sub_100040C64(v27, v29);
        bzero(&v73, 0x878uLL);
        swift_getKeyPath();
        v74[0] = v23;
        v35 = sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v36 = String.utf8CString.getter();
        statfs((v36 + 32), &v73);

        if (is_mul_ok(v73.f_blocks, v73.f_bsize))
        {
          if (is_mul_ok(v73.f_bfree, v73.f_bsize))
          {
            v66 = v34;
            v68 = v35;
            v37 = v73.f_blocks * v73.f_bsize;
            v38 = v73.f_bfree * v73.f_bsize;
            v39 = v37 - v38;
            if (v37 >= v38)
            {
              v40 = v37 / 0xF4240;
              v41 = *(v23 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveSize);
              *&v67 = OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveSize;
              if (v41 != v37 / 0xF4240)
              {
                KeyPath = swift_getKeyPath();
                __chkstk_darwin(KeyPath);
                *(&v65 - 2) = v69;
                *(&v65 - 1) = v40;
                v43 = v70;
                v74[0] = v69;
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                v70 = v43;

                v23 = v69;
              }

              v69 = v32;
              v44 = v39 / 0xF4240;
              v45 = OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveUsed;
              if (*(v23 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveUsed) != v44)
              {
                v54 = swift_getKeyPath();
                __chkstk_darwin(v54);
                *(&v65 - 2) = v23;
                *(&v65 - 1) = v44;
                v74[0] = v23;
                v55 = v70;
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                v70 = v55;
              }

              v56 = v67;
              swift_getKeyPath();
              v74[0] = v23;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v57 = *(v23 + v45);
              swift_getKeyPath();
              v74[0] = v23;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v58 = v57 / *(v23 + v56) * 100.0;
              if (COERCE__INT64(fabs(v58)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v58 > -9.22337204e18)
                {
                  if (v58 < 9.22337204e18)
                  {
                    v59 = v58;
                    if (*(v23 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveUsage) != v58)
                    {
                      v60 = swift_getKeyPath();
                      __chkstk_darwin(v60);
                      *(&v65 - 2) = v23;
                      *(&v65 - 1) = v59;
                      v74[0] = v23;
                      v61 = v70;
                      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                      v70 = v61;
                    }

                    sub_100040E10(v69, v66);
                    v62 = OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected;
                    if (*(v23 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected) == 1)
                    {

                      *(v23 + v62) = 1;
                    }

                    else
                    {
                      v63 = swift_getKeyPath();
                      __chkstk_darwin(v63);
                      *(&v65 - 2) = v23;
                      *(&v65 - 8) = 1;
                      v74[0] = v23;
                      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                    }

                    return sub_100039330(v76);
                  }

LABEL_45:
                  __break(1u);
                }

LABEL_44:
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
    }
  }

  sub_100040C64(0, 0xE000000000000000);
  if (*(v23 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveSize))
  {
    v46 = swift_getKeyPath();
    __chkstk_darwin(v46);
    *(&v65 - 2) = v23;
    *(&v65 - 1) = 0;
    *&v73.f_bsize = v23;
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    v47 = v70;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v70 = v47;
  }

  if (*(v23 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveUsed))
  {
    v48 = swift_getKeyPath();
    __chkstk_darwin(v48);
    *(&v65 - 2) = v23;
    *(&v65 - 1) = 0;
    *&v73.f_bsize = v23;
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    v49 = v70;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v70 = v49;
  }

  if (*(v23 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveUsage))
  {
    v50 = swift_getKeyPath();
    __chkstk_darwin(v50);
    *(&v65 - 2) = v23;
    *(&v65 - 1) = 0;
    *&v73.f_bsize = v23;
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    v51 = v70;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v70 = v51;
  }

  sub_100040E10(0, 0xE000000000000000);
  v52 = OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected;
  if (*(v23 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__usbDriveConnected))
  {
    v53 = swift_getKeyPath();
    __chkstk_darwin(v53);
    *(&v65 - 2) = v23;
    *(&v65 - 8) = 0;
    *&v73.f_bsize = v23;
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v23 + v52) = 0;
  }

  return sub_100039330(v76);
}

id sub_100043390()
{
  v1 = v0;
  sub_100044318(0, &qword_100091D00);
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (*(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__skManagerReady) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__skManagerReady) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100044218(&qword_100091EB0, type metadata accessor for DebugInfoState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = [objc_opt_self() sharedInstance];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  if (![v4 isAssociatedToNetwork])
  {
    v12 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_9;
  }

  result = [v5 currentNetworkSSID];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = v10;
    v12 = v8;
LABEL_9:
    sub_100040AFC(v12, v11);

LABEL_10:
    sub_1000421C0();
    sub_100041F00();
    return sub_100042608();
  }

  __break(1u);
  return result;
}

void sub_100043608(void *a1)
{
  sub_100044318(0, &qword_100091D00);
  v3 = a1;
  v2 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_100042608();
}

uint64_t sub_1000436CC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10004380C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_100043854(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100043898(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_100043ABC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_100043B20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100043C5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100043D20(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000416A4(v1);
}

void sub_100043D50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer);
  *(v1 + OBJC_IVAR____TtC12CheckerBoard14DebugInfoState__timer) = v2;
  v4 = v2;
}

uint64_t sub_100043DD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_100043EB8(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

__n128 sub_100043F0C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100043F30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100043F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100044098(uint64_t a1)
{
  v2 = sub_1000393E4(&qword_100091FD0);
  __chkstk_darwin(v2 - 8);
  sub_10003AF50(a1, &v5 - v3, &qword_100091FD0);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_100044140@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000441E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044218(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100044260@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100044318(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100044360()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1000443D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000443E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_1000443F0(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100044428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000393E4(&qword_100092040);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000444F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000393E4(&qword_100092040);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000445A8()
{
  sub_100044634();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100044634()
{
  if (!qword_1000920B0)
  {
    sub_10004380C(&qword_100091FD0);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1000920B0);
    }
  }
}

unint64_t sub_10004469C()
{
  result = qword_1000920E8;
  if (!qword_1000920E8)
  {
    sub_10004380C(&qword_100091F08);
    sub_100044C7C(&qword_1000920F0, &qword_1000920F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000920E8);
  }

  return result;
}
uint64_t sub_100002BE0(uint64_t a1)
{
  [*(a1 + 32) _initializeAccessibilityFeatures];
  result = _AXSVoiceOverTouchEnabled();
  if (!result)
  {
    v2 = sub_100012608();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136446210;
      v4 = "[Application _handleTriplePress]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Enabling VoiceOver after first triple-press", &v3, 0xCu);
    }

    _AXSVoiceOverTouchSetUsageConfirmed();
    return _AXSVoiceOverTouchSetEnabled();
  }

  return result;
}

id sub_1000039D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[Application _showPowerDownView]_block_invoke";
    v10 = 2048;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Power menu response was %lu", &v8, 0x16u);
  }

  if (a2 == 1)
  {
    v6 = sub_100012608();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      v9 = "[Application _showPowerDownView]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Power down cancelled.", &v8, 0xCu);
    }

    goto LABEL_10;
  }

  if (!a2)
  {
    v5 = sub_100012608();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446210;
      v9 = "[Application _showPowerDownView]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Shutting down device…", &v8, 0xCu);
    }

    v6 = +[DeviceRecoveryController sharedController];
    [v6 shutdownWithCompletion:&stru_100028720];
LABEL_10:
  }

  return [*(a1 + 32) _resetButtonsStatesUIKitWorkaround];
}

void sub_100003B7C(id a1, NSError *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100012608();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[Application _showPowerDownView]_block_invoke";
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Shutdown result was: %{public}@. Error: %{public}@", &v7, 0x20u);
  }
}

id sub_100004098(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[Application _showMenuView]_block_invoke";
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Menu sheet response was %lu", &v7, 0x16u);
  }

  if (a2 > 2)
  {
    if ((a2 - 3) < 2)
    {
      v5 = sub_100012608();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136446210;
        v8 = "[Application _showMenuView]_block_invoke";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Menu sheet cancelled or debug option selected.", &v7, 0xCu);
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      [*(a1 + 32) _showExitConfirmation];
    }

    else if (a2 == 2)
    {
      [*(a1 + 32) _showNeRDBootConfirmation];
    }
  }

  else
  {
    [*(a1 + 32) _showPowerDownView];
  }

  return [*(a1 + 32) _resetButtonsStatesUIKitWorkaround];
}

void sub_1000043F8(id a1)
{
  qword_100032118 = objc_alloc_init(ApplicationSupportServiceDelegate);

  _objc_release_x1();
}

void sub_100004A0C(uint64_t a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [a2 meInfoList];
  v3 = [obj countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v13 + 1) + 8 * v6) IMEI];
        v8 = [v7 copy];

        [*(a1 + 32) setText:v8];
        v9 = [NSAttributedString alloc];
        v17 = UIAccessibilitySpeechAttributeSpellOut;
        v18 = &__kCFBooleanTrue;
        v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v11 = [v9 initWithString:v8 attributes:v10];
        [*(a1 + 32) setAccessibilityAttributedLabel:v11];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }
}

void sub_100004E08(id a1)
{
  qword_100032120 = objc_alloc_init(DisplayManager);

  _objc_release_x1();
}

void sub_100005030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005058(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 eventMask];
  v6 = sub_100012608();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = 136446210;
      v9 = "[DisplayManager init]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Dimming for idle", &v8, 0xCu);
    }

    [WeakRetained dimDisplay];
  }

  else
  {
    if (v7)
    {
      v8 = 136446466;
      v9 = "[DisplayManager init]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [DisplayManager] Reset idle for event %@", &v8, 0x16u);
    }

    [WeakRetained resetIdleTimerAndUndim:1];
  }
}

void sub_100006C4C(id a1)
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

void sub_100006D9C(id a1)
{
  v1 = +[UIKeyboard activeKeyboard];
  if (v1)
  {
    v2 = v1;
    [v1 setMinimized:{+[UIKeyboard isInHardwareKeyboardMode](UIKeyboard, "isInHardwareKeyboardMode")}];
    v1 = v2;
  }
}

void sub_1000073F0(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___DREAlertManager;
  v1 = [objc_msgSendSuper2(&v3 "alloc")];
  v2 = qword_100032148;
  qword_100032148 = v1;
}

uint64_t sub_100007D98(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DREAlertManager showMenuSheetWithOptions:completion:response:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Triggered [Reboot NeRD].", &v4, 0xCu);
  }

  [*(a1 + 32) setAlertVisible:0];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100007E64(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DREAlertManager showMenuSheetWithOptions:completion:response:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Triggered [Exit Device Recovery].", &v4, 0xCu);
  }

  [*(a1 + 32) setAlertVisible:0];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100007F30(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DREAlertManager showMenuSheetWithOptions:completion:response:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Triggered [Shut Down].", &v4, 0xCu);
  }

  [*(a1 + 32) setAlertVisible:0];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_100007FFC(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DREAlertManager showMenuSheetWithOptions:completion:response:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Triggered [Cancel].", &v4, 0xCu);
  }

  [*(a1 + 32) setAlertVisible:0];
  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000080C8(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DREAlertManager showMenuSheetWithOptions:completion:response:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Menu sheet presented.", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_100008448(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DREAlertManager showPowerDownWithCompletion:response:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Power Down UI presented.", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100008684(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[DREAlertManager powerDownViewRequestCancel:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Power down UI dismissed.", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) powerDownResponse];

  if (v3)
  {
    v4 = [*(a1 + 32) powerDownResponse];
    v4[2](v4, 1);

    [*(a1 + 32) setPowerDownResponse:0];
  }
}

void sub_100009114(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceRecoveryController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000091A4;
  v3[3] = &unk_1000286E0;
  v3[4] = *(a1 + 32);
  [v2 disableRecoveryAutoBoot:v3];
}

id *sub_1000091A4(id *result, uint64_t a2)
{
  if (!a2)
  {
    v2 = result;
    v3 = sub_100012608();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446210;
      v5 = "[FlowController disableRecoveryAutoBoot]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Rebooting after disabling recovery auto-boot", &v4, 0xCu);
    }

    return [v2[4] reboot];
  }

  return result;
}

id sub_10000982C(uint64_t a1)
{
  v2 = [*(a1 + 32) viewFactory];
  [v2 showPasscodeView];

  v3 = *(a1 + 32);

  return [v3 setPromptForPasscodeComplete:1];
}

void sub_10000987C(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceRecoveryController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000990C;
  v4[3] = &unk_1000286E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 userAuthenticated:v3 completion:v4];
}

void sub_10000990C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:DeviceRecoveryErrorDomain];

    if (v8 && [v5 code] == 15)
    {
      v9 = [v5 userInfo];
      v10 = [v9 objectForKeyedSubscript:DeviceRecoveryErrorAttributePasscodeBackOffEndDate];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100009A5C;
      v12[3] = &unk_100028980;
      v12[4] = *(a1 + 32);
      v13 = v10;
      v11 = v10;
      dispatch_async(&_dispatch_main_q, v12);
    }

    else
    {
      [*(a1 + 32) _endFlowWithError:v5];
    }
  }

  else
  {
    [*(a1 + 32) performNextStepWithInfo:v6];
  }
}

void sub_100009A5C(uint64_t a1)
{
  v2 = [*(a1 + 32) viewFactory];
  [v2 resetPasscodeView];

  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) viewFactory];
    [v3 showLockoutViewUntilDate:*(a1 + 40)];
  }
}

void sub_100009AE0(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceRecoveryController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009B70;
  v3[3] = &unk_1000286E0;
  v3[4] = *(a1 + 32);
  [v2 reportNetworkAvailabilityWithCompletion:v3];
}

id sub_100009B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _endFlowWithError:a2];
  }

  else
  {
    return [v2 performNextStepWithInfo:?];
  }
}

void sub_100009B84(uint64_t a1)
{
  v3 = [*(a1 + 32) viewFactory];
  v2 = [*(a1 + 32) deviceRecoveryController];
  [v3 showCompletionViewWithIssuesFound:{objc_msgSend(v2, "repairableIssuesFound")}];
}

void sub_100009BF4(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceRecoveryController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009C84;
  v3[3] = &unk_1000286E0;
  v3[4] = *(a1 + 32);
  [v2 loadRecoveryBrainWithCompletion:v3];
}

id sub_100009C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _endFlowWithError:a2];
  }

  else
  {
    return [v2 performNextStepWithInfo:?];
  }
}

id sub_100009C98(uint64_t a1)
{
  v2 = [*(a1 + 32) viewFactory];
  [v2 showUserApprovalView:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 setPromptForRecoveryComplete:0];
}

id sub_100009CEC(uint64_t a1)
{
  v2 = [*(a1 + 32) viewFactory];
  [v2 showWiFiView];

  v3 = *(a1 + 32);

  return [v3 setPromptForNetworkComplete:1];
}

id sub_100009D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) viewFactory];
  [v2 showTermsView];

  v3 = *(a1 + 32);

  return [v3 setPromptForTermsComplete:1];
}

void sub_100009D8C(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceRecoveryController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009E1C;
  v3[3] = &unk_1000286E0;
  v3[4] = *(a1 + 32);
  [v2 recoverDeviceWithCompletion:v3];
}

id sub_100009E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _endFlowWithError:a2];
  }

  else
  {
    return [v2 performNextStepWithInfo:?];
  }
}

void sub_100009E30(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceRecoveryController];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100009EC0;
  v3[3] = &unk_1000286E0;
  v3[4] = *(a1 + 32);
  [v2 scanForIssuesWithCompletion:v3];
}

id sub_100009EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 _endFlowWithError:a2];
  }

  else
  {
    return [v2 performNextStepWithInfo:?];
  }
}

id sub_100009ED4(uint64_t a1)
{
  v2 = [*(a1 + 32) viewFactory];
  [v2 showRecoveryView];

  v3 = *(a1 + 32);

  return [v3 setPromptForRecoveryComplete:1];
}

void sub_100009F98(uint64_t a1)
{
  v2 = [*(a1 + 32) viewFactory];
  [v2 showRebootView];

  v3 = +[FlowController _recoveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A044;
  block[3] = &unk_100028938;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

void sub_10000A044(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceRecoveryController];
  [v1 rebootWithCompletion:&stru_1000289A0];
}

void sub_10000A090(id a1, NSError *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[FlowController reboot]_block_invoke_3";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Completed reboot: %{public}@", &v5, 0x16u);
  }
}

void sub_10000A1C4(uint64_t a1)
{
  v2 = [*(a1 + 32) viewFactory];
  [v2 showRebootView];

  v3 = +[FlowController _recoveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A270;
  block[3] = &unk_100028938;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

void sub_10000A270(uint64_t a1)
{
  v1 = [*(a1 + 32) deviceRecoveryController];
  [v1 rebootToNeRDWithCompletion:&stru_1000289C0];
}

void sub_10000A2BC(id a1, NSError *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = sub_100012608();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[FlowController rebootToNeRD]_block_invoke_3";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Completed reboot to NeRD: %{public}@", &v5, 0x16u);
  }
}

void sub_10000A4C4(uint64_t a1)
{
  v2 = [*(a1 + 32) viewFactory];
  [v2 showCompletionViewWithError:*(a1 + 40)];
}

void sub_10000A910(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v1 = dispatch_queue_create("com.apple.devicerecovery.assistant.serial", v3);
  v2 = qword_100032160;
  qword_100032160 = v1;
}

id sub_10000B190(void *a1, void *a2)
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

void sub_10000B48C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [NSLocale localeWithLocaleIdentifier:v5];
  v4 = [v3 localizedStringForLanguage:v5 context:4];

  if (!v4)
  {
    v4 = v5;
  }

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

void sub_10000BBE0(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) headerView];
  v4 = *(a1 + 32);
  v5 = [v4 endDate];
  v6 = [v4 _descriptionStringForEndDate:v5];
  [v3 setDetailText:v6];

  v7 = [*(a1 + 32) endDate];
  v8 = +[NSDate now];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 < 0.0)
  {
    [v13 invalidate];
    v11 = [*(a1 + 32) navigationController];
    v12 = [v11 popViewControllerAnimated:1];
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  +[FlowController start];
  v5 = +[DeviceRecoveryController sharedController];
  v6 = [v5 mainOSLanguageCode];

  v7 = sub_100012608();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "main";
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Language from mainOS is = %{public}@", buf, 0x16u);
  }

  if ([v6 length])
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v19 = @"preferredLanguageCode";
    v20 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v8 registerDefaults:v9];
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 stringForKey:@"preferredLanguageCode"];

  if ([v11 length])
  {
    v12 = sub_100012608();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v22 = "main";
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting preferred language to: %{public}@", buf, 0x16u);
    }

    [NSLocale setPreferredLanguageAndUpdateLocale:v11];
  }

  v13 = FBSystemShellInitialize();

  objc_autoreleasePoolPop(v4);
  v14 = objc_autoreleasePoolPush();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  objc_autoreleasePoolPop(v14);
  v17 = UIApplicationMain(a1, a2, 0, v16);

  return v17;
}

void sub_10000C13C(id a1, FBMutableSystemShellInitializationOptions *a2)
{
  v2 = a2;
  [(FBMutableSystemShellInitializationOptions *)v2 setShouldWaitForMigrator:0];
  [(FBMutableSystemShellInitializationOptions *)v2 setRegisterAdditionalServicesBlock:&stru_100028AE8];
}

void sub_10000C18C(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [LSApplicationRecord bundleRecordWithApplicationIdentifier:v2 error:0];

  v4 = +[ApplicationSupportServiceDelegate shared];
  [v4 setupDelegate];
}

void sub_10000C27C(id a1)
{
  qword_100032170 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000C3D4(uint64_t a1, nw_path_t path)
{
  v3 = nw_path_get_status(path) == nw_path_status_satisfied;
  if (v3)
  {
    v4 = @"NetworkMonitorDidJoinNetwork";
  }

  else
  {
    v4 = @"NetworkMonitorDidLeaveNetwork";
  }

  [*(a1 + 32) setNetworkAvailable:v3];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:v4 object:*(a1 + 32)];
}

void sub_10000C6B0(uint64_t a1)
{
  v1 = [*(a1 + 32) activityView];
  [v1 startAnimating];
}

void sub_10000E83C(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[SceneDelegate welcomeViewControllerDidChooseDisable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Disabling recovery auto-boot before rebooting", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) flowController];
  [v3 disableRecoveryAutoBoot];
}

void sub_10000F928(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[SceneDelegate promptToCancelAndRebootFromViewController:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Beginning reboot of device from cancel button.", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) flowController];
  [v3 reboot];
}

void sub_10000FBDC(uint64_t a1)
{
  v2 = sub_100012608();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[SceneDelegate promptToBootToNeRDFromViewController:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Beginning reboot of device from cancel button.", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) flowController];
  [v3 rebootToNeRD];
}

void sub_10000FF68(id a1, FBSceneManagerSceneCreating *a2)
{
  v2 = a2;
  [(FBSceneManagerSceneCreating *)v2 setIdentifier:@"dre-main-view"];
  v3 = +[FBSSceneClientIdentity localIdentity];
  [(FBSceneManagerSceneCreating *)v2 setClientIdentity:v3];

  v4 = +[UIApplicationSceneSpecification specification];
  [(FBSceneManagerSceneCreating *)v2 setSpecification:v4];
}

void sub_10000FFFC(id a1, FBSMutableSceneSettings *a2)
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
    [(FBSMutableSceneSettings *)v4 setDeviceOrientationEventsEnabled:0];
  }
}

void sub_100010190(id a1, FBSceneCreating *a2)
{
  v2 = a2;
  [(FBSceneCreating *)v2 setIdentifier:@"InputUI"];
  v3 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.InputUI"];
  [(FBSceneCreating *)v2 setClientIdentity:v3];

  v4 = +[UIApplicationSceneSpecification specification];
  [(FBSceneCreating *)v2 setSpecification:v4];
}

void sub_10001022C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDisplayConfiguration:*(a1 + 32)];
  [*(a1 + 32) bounds];
  [v3 setFrame:?];
  [v3 setForeground:1];
  [v3 setLevel:3.0];
  [v3 setInterfaceOrientation:1];
  if ([v3 isUISubclass])
  {
    [v3 setInterfaceOrientationMode:2];
  }
}

void sub_10001053C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100011428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011440(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100011458(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v5 = [v2 localizedStringForKey:@"WELCOME_SCREEN_DESCRIPTION" value:&stru_100028E90 table:0];

  v3 = [*(a1 + 32) headerView];
  v4 = [NSString stringWithFormat:@"%@%@", v5, *(*(*(a1 + 40) + 8) + 40)];
  [v3 setDetailText:v4];
}

void sub_10001174C(uint64_t a1)
{
  v3 = objc_alloc_init(DetailsViewController);
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:v3 animated:1];
}

void sub_1000117B8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = sub_100012608();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "[WelcomeViewController menuItems]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Calling delegate for boot to NeRD from welcome.", &v5, 0xCu);
    }

    v4 = [*(a1 + 32) delegate];
    [v4 welcomeViewControllerDidChooseNeRD:*(a1 + 32)];
  }
}

void sub_1000123C0(uint64_t a1)
{
  v1 = [*(a1 + 32) continueButton];
  [v1 setEnabled:0];
}

void sub_10001250C(uint64_t a1)
{
  v1 = [*(a1 + 32) continueButton];
  [v1 setEnabled:1];
}

id sub_100012608()
{
  if (qword_100032178 != -1)
  {
    sub_100012EB4();
  }

  v1 = off_100032100;

  return v1;
}

void sub_10001264C(id a1)
{
  v1 = sub_10000C22C();
  off_100032100 = os_log_create("com.apple.DeviceRecovery", v1);

  _objc_release_x1();
}

id sub_100012690()
{
  if (qword_100032180 != -1)
  {
    sub_100012EC8();
  }

  v1 = off_100032108;

  return v1;
}

void sub_1000126D4(id a1)
{
  v1 = sub_10000C22C();
  off_100032108 = os_log_create("com.apple.DeviceRecovery.signposts", v1);

  _objc_release_x1();
}

void sub_100012740()
{
  sub_100006ECC();
  sub_100006EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000127BC()
{
  sub_100006ECC();
  sub_100006EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000128B8()
{
  sub_100006ECC();
  sub_100006EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100012BB4()
{
  sub_100006ECC();
  sub_100006EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100012C30()
{
  sub_100006ECC();
  sub_100006EE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}
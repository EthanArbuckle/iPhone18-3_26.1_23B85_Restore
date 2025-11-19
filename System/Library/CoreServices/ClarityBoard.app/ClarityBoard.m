void sub_100003D04(id a1)
{
  qword_100331020 = objc_alloc_init(CLBBacklightController);

  _objc_release_x1();
}

const __CFString *sub_100003FE8(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"accessibility";
  }

  else
  {
    return off_1002FC150[a1 - 1];
  }
}

void sub_100004D70(uint64_t a1)
{
  v2 = +[CLFSettings sharedInstance];
  v3 = [v2 volumeButtonsEnabled];

  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v5 _shouldShowTransientHUDForReason:*(a1 + 40)];
    *&v7 = v4;

    [v5 _didUpdateAVSystemControllerVolume:v6 shouldShowTransientHUD:v7];
  }

  else if (vabds_f32(*(a1 + 52), v4) > 0.00000011921)
  {
    v8 = +[CLFLog commonLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 52);
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Volume buttons were disabled, so undoing effective volume change and putting back old volume: %f", &v11, 0xCu);
    }

    LODWORD(v10) = *(a1 + 52);
    [*(a1 + 32) _updateAVSystemControllerWithVolume:v10];
  }
}

void sub_1000055AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[CLFLog commonLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System app client died for %@: %@", &v7, 0x16u);
  }
}

void sub_100005D14(id a1)
{
  qword_100331030 = objc_alloc_init(CLBBrightnessManager);

  _objc_release_x1();
}

uint64_t start(int a1, char **a2)
{
  v4 = +[CLFSettings sharedInstance];
  v5 = [v4 restartReason];

  v6 = +[UIApplication isRunningInStoreDemoMode];
  v7 = CLFRestartReasonUnknown;
  v8 = [v5 isEqualToString:CLFRestartReasonUnknown];
  v9 = +[CLFLog commonLog];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (v10)
    {
      *buf = 138412290;
      v33 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ClarityBoard was launched with restart reason: %@", buf, 0xCu);
    }

    v12 = +[CLFSettings sharedInstance];
    [v12 setRestartReason:v7];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ClarityBoard was launched with an unknown restart reason, and the device is in store demo mode. Disabling ClarityBoard now.", buf, 2u);
    }

    v13 = +[CLFSettings sharedInstance];
    [v13 setRestartReason:v7];

    v14 = objc_opt_new();
    v31 = 0;
    v15 = [v14 setClarityBoardEnabled:0 error:&v31];
    v12 = v31;

    if ((v15 & 1) == 0)
    {
      v16 = +[CLFLog commonLog];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100283A9C(v12, v16);
      }
    }
  }

  if (_set_user_dir_suffix())
  {
    v17 = NSTemporaryDirectory();
  }

  else
  {
    v18 = +[CLFLog commonLog];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100283B14(v18);
    }
  }

  +[BLSHService earlyInitialization];
  v19 = FBSystemShellInitialize();
  v20 = +[CADisplay mainDisplay];
  v21 = [BKSDisplayRenderOverlay existingOverlayForDisplay:v20];

  if (v21)
  {
    v22 = +[CLFLog commonLog];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Detected an overlay at startup. Dismissing it.", buf, 2u);
    }

    v23 = [BSAnimationSettings settingsWithDuration:0.3];
    [v21 dismissWithAnimation:v23];
  }

  v24 = +[CLBHIDInterface sharedInstance];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = UIApplicationMain(a1, a2, v26, v28);

  return v29;
}

uint64_t sub_100006370()
{
  v0 = +[UIDevice currentDevice];
  if ([v0 userInterfaceIdiom] == 1)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100007008(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100283D3C(a1);
    }
  }
}

void sub_1000072EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007304(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000731C(uint64_t a1)
{
  v1 = [[FBMutableProcessExecutionContext alloc] initWithIdentity:*(a1 + 32)];
  [v1 setLaunchIntent:3];

  return v1;
}

void sub_100007370(uint64_t a1, int a2)
{
  v4 = +[CLFLog commonLog];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) identifier];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Launched process for %@.", &v9, 0xCu);
    }

    [*(a1 + 32) _continueOpenApplicationRequest:*(a1 + 40) withResult:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_100283DE4(a1, v5);
    }
  }

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

id sub_100007A4C(uint64_t a1)
{
  v2 = +[CLFLog commonLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Process for %@ was terminated. Cleaning up.", &v6, 0xCu);
  }

  [*(a1 + 32) _tearDownAllScenesIfNeeded];
  v4 = [*(a1 + 32) terminationWatcher];
  [v4 invalidate];

  return [*(a1 + 32) setTerminationWatcher:0];
}

void sub_100007BF0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[CLFLog commonLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100283F08(a1);
    }
  }
}

uint64_t sub_100008884(uint64_t a1)
{

  return _NSRequestConcreteImplementation(v2, v1, a1);
}

uint64_t sub_1000088C8()
{
  if (qword_100331050 != -1)
  {
    sub_100284024();
  }

  if (dword_100331048 == 1)
  {
    return 2;
  }

  if (dword_100331048)
  {
    return 3;
  }

  result = dword_10032AC50;
  if (!dword_10032AC50)
  {
    return result;
  }

  if (dword_10032AC50 == -1)
  {
    [NSException raise:@"Cannot be simple and have a non-simple passcode type." format:&stru_100316DA0];
    return 3;
  }

  return 1;
}

void sub_10000894C(id a1)
{
  dword_10032AC50 = -1;
  v1 = +[MCProfileConnection sharedConnection];
  dword_100331048 = [v1 unlockScreenTypeWithOutSimplePasscodeType:&dword_10032AC50];

  out_token = 0;
  notify_register_dispatch([MCUnlockScreenTypeDidChangeNotification UTF8String], &out_token, &_dispatch_main_q, &stru_1002FC378);
}

void sub_1000089D4(id a1, int a2)
{
  dword_10032AC50 = -1;
  v2 = +[MCProfileConnection sharedConnection];
  dword_100331048 = [v2 unlockScreenTypeWithOutSimplePasscodeType:&dword_10032AC50];
}

id sub_100008A40()
{
  v0 = +[MCProfileConnection sharedConnection];
  v1 = [v0 isPasscodeSet];

  return v1;
}

id sub_100008CE8()
{
  if (qword_100331060 != -1)
  {
    sub_100284038();
  }

  v1 = qword_100331058;

  return v1;
}

void sub_100008D2C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100008CE8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Completed request with error: %@", &v4, 0xCu);
  }
}

void sub_100008DD8(id a1)
{
  qword_100331058 = os_log_create("com.apple.WhiteBoard", "testing");

  _objc_release_x1();
}

void sub_100008E60(id a1)
{
  qword_100331068 = objc_alloc_init(CLBSoundController);

  _objc_release_x1();
}

void sub_100009788(uint64_t a1)
{
  v2 = +[CLBSoundController sharedInstance];
  [v2 _cleanupSystemSound:a1 andKill:0];
}

void sub_100009934(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000099E0;
  v5[3] = &unk_1002FC420;
  v9 = a2;
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_1000099E0(uint64_t a1)
{
  if (*(a1 + 56) == 5)
  {
    v2 = +[CLFLog commonLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v10 = 138412290;
      v11 = v3;
      v4 = "Could not play tone for sound %@";
      v5 = v2;
      v6 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v4, &v10, v6);
    }
  }

  else
  {
    v7 = +[TLToneManager sharedToneManager];
    v8 = [v7 currentToneSoundIDForAlertType:{objc_msgSend(*(a1 + 40), "type")}];

    v2 = +[CLFLog commonLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v10 = 67109120;
      LODWORD(v11) = v8;
      v4 = "Alert tone played %u";
      v5 = v2;
      v6 = 8;
      goto LABEL_6;
    }
  }

  return [*(a1 + 48) _cleanupToneAlertForSound:*(a1 + 32) andKill:0];
}

void sub_100009D80()
{
  if ((byte_100331078 & 1) == 0)
  {
    v0 = AXSystemRootDirectory();
    v1 = [v0 stringByAppendingPathComponent:@"/System/Library/AccessibilityBundles/VisualAlerts.bundle"];
    v2 = [NSBundle bundleWithPath:v1];

    if (([v2 isLoaded] & 1) == 0)
    {
      [v2 load];
      byte_100331078 = 1;
    }
  }
}

void sub_10000A084(id a1)
{
  v3 = objc_alloc_init(FBSApplicationLibraryConfiguration);
  [v3 setApplicationInfoClass:objc_opt_class()];
  [v3 setApplicationPlaceholderClass:objc_opt_class()];
  [v3 setAllowConcurrentLoading:1];
  [v3 setInstalledApplicationFilter:&stru_1002FC4A8];
  v1 = [[FBSApplicationLibrary alloc] initWithConfiguration:v3];
  v2 = qword_100331088;
  qword_100331088 = v1;
}

BOOL sub_10000A134(id a1, LSApplicationProxy *a2)
{
  v2 = [(LSApplicationProxy *)a2 bundleIdentifier];
  v3 = +[CLBOpenApplicationVerifier sharedInstance];
  if ([v3 shouldOpenAppWithBundleIdentifier:v2])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[CLFAppAvailabilityChecker sharedInstance];
    v6 = [v5 clarityBundleIdentifierForStandardBundleIdentifier:v2];

    if ([v6 isEqualToString:v2])
    {
      v4 = 0;
    }

    else
    {
      v4 = [v3 shouldOpenAppWithBundleIdentifier:v6];
    }
  }

  return v4;
}

int64_t sub_10000A5D0(id a1, CLBScenePresentationManager *a2, CLBScenePresentationManager *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CLBScenePresentationManager *)v4 sceneLevel];
  if (v6 >= [(CLBScenePresentationManager *)v5 sceneLevel])
  {
    v8 = [(CLBScenePresentationManager *)v4 sceneLevel];
    if (v8 <= [(CLBScenePresentationManager *)v5 sceneLevel])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_10000AFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10000B03C(id a1)
{
  v1 = +[TUCallCenter sharedInstance];
  v2 = [v1 incomingCall];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = +[TUCallCenter sharedInstance];
    v4 = [v5 currentVideoCall];
  }

  if ([v4 status] == 4)
  {
    v6 = v4;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void sub_10000B134(uint64_t a1)
{
  v1 = [*(a1 + 32) displayName];
  argument = [AXAttributedString axAttributedStringWithString:v1];

  [argument setAttribute:&off_100318FA0 forKey:UIAccessibilityTokenAnnouncementPriority];
  UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, argument);
}

uint64_t sub_10000B1CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B1E4(void *a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 incomingCall];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 incomingVideoCall];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = +[TUCallCenter sharedInstance];
  *(*(a1[6] + 8) + 24) = [v10 currentAudioAndVideoCallCount];
}

void sub_10000B2AC(uint64_t a1)
{
  if ([*(a1 + 32) status] == 4)
  {
    v2 = +[AXSubsystemAudioRouting sharedInstance];
    v3 = [v2 ignoreLogging];

    if ((v3 & 1) == 0)
    {
      v4 = +[AXSubsystemAudioRouting identifier];
      v5 = AXLoggerForFacility();

      v6 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = AXColorizeFormatLog();
        v10 = *(a1 + 32);
        v11 = [v10 status];
        v8 = _AXStringForArgs();
        if (os_log_type_enabled(v5, v6))
        {
          *buf = 138543362;
          v13 = v8;
          _os_log_impl(&_mh_execute_header, v5, v6, "%{public}@", buf, 0xCu);
        }
      }
    }

    v9 = [TUCallCenter sharedInstance:v10];
    [v9 answerCall:*(a1 + 32)];
  }
}

id sub_10000C348(uint64_t a1)
{
  v2 = +[AXIDSServices sharedInstance];
  [v2 registerForIncomingData:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 _requestOnWristState];
}

id sub_10000D208(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _shouldShowLockScreen];

  return [v1 _updateLockScreenForState:v2];
}

void sub_10000D55C(id a1)
{
  v1 = [NSBundle accessibilityBundleWithLastPathComponent:@"AssistantUI.axbundle"];
  v2 = CLFLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Loading AssistantUI bundle %{public}@ if needed", buf, 0xCu);
  }

  if (([v1 isLoaded] & 1) == 0)
  {
    v8 = 0;
    v3 = [v1 loadAndReturnError:&v8];
    v4 = v8;
    v5 = v4;
    if (!v3 || v4)
    {
      v7 = CLFLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1002843A0();
      }
    }

    else
    {
      [objc_msgSend(v1 "principalClass")];
      v5 = CLFLogCommon();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
LABEL_11:

        goto LABEL_12;
      }

      v6 = [v1 principalClass];
      *buf = 138543362;
      v10 = v6;
      v7 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Loading: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
}

void sub_10000D980(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CLFLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100284424();
    }
  }

  else
  {
    v8 = CLFLogCommon();
    v7 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished updating downloaded high resolution app icons.", buf, 2u);
      }

      v24 = v5;
      v7 = [v5 bs_safeArrayForKey:CLFUpdatedBundleIdentifiersKey];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          v12 = 0;
          do
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v26 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = *(a1 + 32);
              v15 = v13;
              v16 = [v14 appLibrary];
              v17 = [v16 applicationInfoForBundleIdentifier:v15];

              [v17 setNeedsIconImageUpdate];
            }

            else
            {
              v16 = CLFLogCommon();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v31 = v13;
                _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Unexpected type for item in updated bundle identifiers: %@", buf, 0xCu);
              }
            }

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v10);
      }

      v5 = v24;
      if ([v24 bs_BOOLForKey:{CLFNeedsRetryKey, v6}])
      {
        v18 = CLFLogCommon();
        v6 = v23;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          [*(a1 + 32) updateHighResolutionAppIconsRetryInterval];
          *buf = 134217984;
          v31 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scheduling retry for updating high resolution app icons in %.0f seconds.", buf, 0xCu);
        }

        [*(a1 + 32) updateHighResolutionAppIconsRetryInterval];
        [*(a1 + 32) setUpdateHighResolutionAppIconsRetryInterval:{fmin(v20 + v20, 300.0)}];
        [*(a1 + 32) updateHighResolutionAppIconsRetryInterval];
        v22 = dispatch_time(0, (v21 * 1000000000.0));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000DD30;
        block[3] = &unk_1002FC2F0;
        block[4] = *(a1 + 32);
        dispatch_after(v22, &_dispatch_main_q, block);
      }

      else
      {
        [*(a1 + 32) setUpdateHighResolutionAppIconsRetryInterval:10.0];
        v6 = v23;
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100284494();
    }
  }
}

void sub_10000E88C(uint64_t a1)
{
  v2 = +[CLBIdleSleepManager sharedInstance];
  [v2 resetIdleTimerAndUndimForReason:4];

  v3 = +[CLFLog commonLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) identifier];
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Turned on display for %@.", buf, 0xCu);
  }

  v5 = [*(a1 + 40) systemCompletion];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E9F0;
  v9[3] = &unk_1002FC5A0;
  v9[4] = v7;
  v10 = v5;
  v8 = v5;
  [v7 handleOpenApplicationRequest:v6 withResult:v9];
}

void sub_10000E9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[CLFLog commonLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1002844D0(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000F668(uint64_t a1)
{
  v3 = [*(a1 + 32) _windowForSceneWithSessionRole:@"CLBSceneSessionRoleAlert" isSecure:1];
  v2 = +[CLBNotificationsManager shared];
  [v2 addBulletinNotificationItem:*(a1 + 40) dndBehavior:*(a1 + 48) window:v3];
}

void sub_10000FF58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1002845EC(a1);
    }
  }
}

void sub_100010374(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setIdentifier:v3];
  v4 = +[FBSSceneClientIdentity localIdentity];
  [v5 setClientIdentity:v4];

  [v5 setSpecification:*(a1 + 40)];
}

void sub_1000103F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010500;
  v8[3] = &unk_1002FC690;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v9 = v4;
  [v3 updateSettingsWithBlock:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000106C8;
  v6[3] = &unk_1002FC6B8;
  v7 = v3;
  v5 = v3;
  [v5 updateClientSettingsWithBlock:v6];
}

void sub_100010500(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSystemScene:1];
  v4 = +[FBDisplayManager mainConfiguration];
  [v3 setDisplayConfiguration:v4];

  v5 = [*(a1 + 32) _mainScreen];
  [v5 _referenceBounds];
  [v3 setFrame:?];

  [v3 setLevel:*(a1 + 48)];
  [v3 setForeground:*(a1 + 56)];
  [v3 setInterfaceOrientation:1];
  if ([v3 isUISubclass])
  {
    v6 = v3;
    v7 = +[UISApplicationSupportDisplayEdgeInfo clb_thisDeviceDisplayEdgeInfo];
    [v7 clb_applyDisplayEdgeInfoToSceneSettings:v6];
    v8 = +[CLFLog commonLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      [v6 safeAreaInsetsPortrait];
      v10 = NSStringFromUIEdgeInsets(v17);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scene: %@, safe area insets: %@", &v13, 0x16u);
    }

    v11 = +[UIUserInterfaceStyleArbiter sharedInstance];
    v12 = v11;
    if (v11)
    {
      [v6 setUserInterfaceStyle:{objc_msgSend(v11, "currentStyle")}];
    }
  }
}

void sub_1000106C8(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isUISubclass])
  {
    v3 = [*(a1 + 32) settings];
    [v4 setInterfaceOrientation:{objc_msgSend(v3, "interfaceOrientation")}];

    [v4 setStatusBarStyle:0];
  }
}

void sub_100011194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000111AC(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [UISMutableApplicationInitializationContext clb_contextForDisplayStyle:*(a1 + 40) canRequestScenes:*(a1 + 48)];

  return _objc_release_x1();
}

BOOL sub_1000112C8(id a1, UIScene *a2, BOOL *a3)
{
  v3 = [(UIScene *)a2 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_100011F00(uint64_t a1)
{
  notify_set_state(dword_10032ACB8, *(a1 + 32));

  return notify_post("com.apple.springboard.lockstate");
}

void sub_1000121A0(id a1, UIMutableApplicationSceneSettings *a2)
{
  v2 = a2;
  [(UIMutableApplicationSceneSettings *)v2 setUnderLock:1];
  [(UIMutableApplicationSceneSettings *)v2 setDeactivationReasons:0x40000000];
}

void sub_1000121F4(id a1, UIMutableApplicationSceneSettings *a2)
{
  v2 = a2;
  [(UIMutableApplicationSceneSettings *)v2 setDeactivationReasons:0];
  [(UIMutableApplicationSceneSettings *)v2 setUnderLock:0];
}

void sub_1000122C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setForeground:{objc_msgSend(v2, "_isShowingLockScreen")}];
}

void sub_1000126E4(id a1)
{
  v5 = +[CLBMobileKeybagManager sharedInstance];
  v2 = [v5 isLocked];
  if (v2)
  {
    v1 = +[CLBIdleSleepManager sharedInstance];
    v3 = [v1 isDisplayDim] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = +[_TtC12ClarityBoard18BiometricInterface sharedInstance];
  [v4 setNeedsAuthentication:v3];

  if (v2)
  {
  }
}

id sub_100012EF8(uint64_t a1, void *a2)
{
  [a2 setInterfaceOrientation:*(a1 + 40)];
  v3 = +[UIApplicationSceneTransitionContext transitionContext];
  v4 = [BSAnimationSettings settingsWithDuration:*(a1 + 48)];
  [v3 setAnimationSettings:v4];

  v5 = [*(a1 + 32) _systemAnimationFenceCreatingIfNecessary:1];
  [v3 setAnimationFence:v5];

  return v3;
}

void sub_100013238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013260(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013318;
  v5[3] = &unk_1002FC880;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100013318(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleNewDomainData:*(a1 + 32)];
}

void sub_100013CF8()
{
  if (_AXSVisualAlertEnabled() && sub_100013D34())
  {

    sub_100009D80();
  }
}

BOOL sub_100013D34()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

uint64_t sub_1000150A4()
{
  qword_100331098 = objc_opt_new();

  return _objc_release_x1();
}

NSDictionary *__cdecl sub_1000153C0(id a1)
{
  v3 = @"activated";
  v4 = &__kCFBooleanTrue;
  v1 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];

  return v1;
}

void sub_1000155C0(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100015674;
  v5[3] = &unk_1002FC950;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 dismissViewControllerAnimated:v3 completion:v5];
}

id sub_100015674(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setIsPresented:0];
}

id sub_1000158CC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 siriPresentation:*(a1 + 40) requestsPresentationWithOptions:*(a1 + 48) withHandler:*(a1 + 56)];

  v3 = *(a1 + 32);

  return [v3 setIsPresented:1];
}

uint64_t sub_100015CE4()
{
  if (qword_1003310A8 != -1)
  {
    sub_1002848DC();
  }

  return qword_1003310B0;
}

void sub_100015D1C(id a1)
{
  v1 = sub_100022800();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1000228A4();
  v9 = sub_100022538();
  v10 = sub_1000224F8();
  v11 = sub_1000227C0();
  qword_1003310B0 = sub_100015FB8(v10, v11, v9, &stru_1002FCA00, &stru_1002FCA20, &stru_1002FCA40, v1, v3, v5, v7, v8);
}

BOOL sub_100015DF0(id a1)
{
  v1 = MGIsDeviceOfType();
  v2 = MGIsDeviceOfType();
  v3 = MGIsDeviceOfType();
  v4 = MGIsDeviceOfType();
  v5 = MGIsDeviceOfType();
  v6 = MGIsDeviceOfType();
  return (v3 | v4 | v1 | v2 | v5 | v6 | MGIsDeviceOfType()) & 1;
}

BOOL sub_100015F88(id a1)
{
  sub_100022604();

  return BSFloatEqualToFloat();
}

uint64_t sub_100015FB8(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, double a7, double a8, double a9, double a10, double a11)
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
  v36[2] = sub_1000165E0;
  v36[3] = &unk_1002FCA68;
  *&v36[6] = a9;
  *&v36[7] = a10;
  *&v36[8] = a11;
  v36[9] = a3;
  v36[10] = a2;
  v36[4] = &v41;
  v36[5] = &v37;
  sub_100027EEC(v36);
  if ((v38[3] & 1) == 0)
  {
    if (a1 == 2)
    {
      if (a2 == 2)
      {
        if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 113;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 111;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 110;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 108;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 109;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 107;
        }

        else
        {
          v34 = BSSizeGreaterThanOrEqualToSize();
          v22 = v42;
          if (v34)
          {
            v23 = 112;
          }

          else
          {
            v23 = 105;
          }
        }
      }

      else if (BSSizeGreaterThanOrEqualToSize())
      {
        v22 = v42;
        v23 = 104;
      }

      else if (BSSizeGreaterThanOrEqualToSize())
      {
        v22 = v42;
        v23 = 103;
      }

      else
      {
        v25 = BSSizeGreaterThanOrEqualToSize();
        v22 = v42;
        if (v25)
        {
          v23 = 102;
        }

        else
        {
          v23 = 100;
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
          v23 = 27;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 23;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
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
          v23 = 25;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 21;
        }

        else if (BSSizeGreaterThanOrEqualToSize())
        {
          v22 = v42;
          v23 = 11;
        }

        else
        {
          v35 = BSSizeGreaterThanOrEqualToSize();
          v22 = v42;
          if (v35)
          {
            v23 = 3;
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
  if (v26 <= 16)
  {
    if (v26 <= 12)
    {
      if (v26 <= 10)
      {
        if (v26 != 9)
        {
          if (v26 != 10)
          {
            goto LABEL_66;
          }

          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v26 != 11)
      {
        goto LABEL_52;
      }

LABEL_53:
      v29 = v20[2](v20) == 0;
      v30 = 11;
      v31 = 17;
      goto LABEL_61;
    }

    if (v26 > 14)
    {
      if (v26 != 15)
      {
LABEL_55:
        v29 = v20[2](v20) == 0;
        v30 = 10;
        v31 = 16;
        goto LABEL_61;
      }

LABEL_56:
      v29 = v20[2](v20) == 0;
      v30 = 9;
      v31 = 15;
      goto LABEL_61;
    }

    if (v26 != 13)
    {
LABEL_60:
      v29 = v20[2](v20) == 0;
      v30 = 14;
      v31 = 20;
      goto LABEL_61;
    }

LABEL_50:
    v29 = v20[2](v20) == 0;
    v30 = 13;
    v31 = 19;
LABEL_61:
    if (v29)
    {
      v26 = v30;
    }

    else
    {
      v26 = v31;
    }

    v28 = v42;
    goto LABEL_65;
  }

  if (v26 <= 19)
  {
    if (v26 == 17)
    {
      goto LABEL_53;
    }

    if (v26 == 18)
    {
LABEL_52:
      v29 = v20[2](v20) == 0;
      v30 = 12;
      v31 = 18;
      goto LABEL_61;
    }

    goto LABEL_50;
  }

  if ((v26 - 100) < 2)
  {
    v32 = v19[2](v19);
    v28 = v42;
    if (v32)
    {
      v26 = 101;
    }

    else
    {
      v26 = 100;
    }

    goto LABEL_65;
  }

  if ((v26 - 106) < 2)
  {
    v27 = v21[2](v21);
    v28 = v42;
    if (v27)
    {
      v26 = 106;
    }

    else
    {
      v26 = 107;
    }

LABEL_65:
    v28[3] = v26;
    goto LABEL_66;
  }

  if (v26 == 20)
  {
    goto LABEL_60;
  }

LABEL_66:
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v26;
}

void sub_1000165B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

uint64_t sub_1000165E0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  sub_100027FE0(a2, &v12);
  v10[0] = v12;
  v10[1] = v13;
  v11 = v14;
  v6 = *(a1 + 64);
  v8[0] = *(a1 + 48);
  v8[1] = v6;
  v9 = *(a1 + 80);
  result = sub_1000285BC(v10, v8);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_1000171DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 40) defaultSceneIdentifier];
  [v3 setIdentifier:v4];

  v5 = [*(*(a1 + 32) + 40) processIdentity];
  [v3 setClientIdentity:v5];

  if ([*(*(a1 + 32) + 40) supportsClarityUI])
  {
    +[FBSSceneSpecification assistiveAccessClass];
  }

  else
  {
    [*(*(a1 + 32) + 40) wantsFullScreenInClarityUI];
    objc_opt_class();
  }

  v6 = objc_opt_new();
  [v3 setSpecification:v6];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017318;
  v7[3] = &unk_1002FCAB8;
  v7[4] = *(a1 + 32);
  [v3 configureParameters:v7];
}

id sub_100017318(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001738C;
  v3[3] = &unk_1002FCA90;
  v3[4] = *(a1 + 32);
  return [a2 updateSettingsWithBlock:v3];
}

void sub_10001738C(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) _updateDisplayStyleForSettings:v6];
  if ([*(*(a1 + 32) + 40) usesSupportedInterfaceOrientations])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [v6 setInterfaceOrientationMode:v3];
  [v6 setForeground:0];
  [v6 setInterfaceOrientation:1];
  [v6 setLevel:1.0];
  [v6 setStatusBarDisabled:1];
  v4 = +[UIUserInterfaceStyleArbiter sharedInstance];
  v5 = v4;
  if (v4)
  {
    [v6 setUserInterfaceStyle:{objc_msgSend(v4, "currentStyle")}];
  }

  [v6 applyDefaultClarityUISettings];
}

void sub_100017464(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 32))
  {
    if ([v7 pid] <= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
  }
}

void sub_1000174E4(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v6[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v18, v5, v6[1]);
    v6 = *(a1 + 32);
  }

  if (v6[2])
  {
    if (([v18 isForeground] & 1) == 0 && objc_msgSend(*(*(a1 + 32) + 16), "isForeground"))
    {
      [v18 setForeground:1];
    }

    [*(a1 + 40) prepareTransitionContext:v5];
    v8 = [*(*(a1 + 32) + 16) systemRequest];
    v9 = [v8 options];

    v10 = [v9 dictionary];
    v11 = [v10 bs_safeArrayForKey:FBSOpenApplicationOptionKeyActions];

    v12 = [v9 url];
    if ([v11 count])
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 == 0;
    }

    if (!v13)
    {
      v14 = +[NSMutableSet set];
      v15 = v14;
      if (v11)
      {
        [v14 addObjectsFromArray:v11];
      }

      if (v12)
      {
        v16 = [[UIOpenURLAction alloc] initWithURL:v12];
        [v15 addObject:v16];
      }

      [v5 setActions:v15];
    }
  }

  if (*(a1 + 48))
  {
    [v5 setExecutionContext:?];
  }

  v17 = *(a1 + 32);
  if (v17[4])
  {
    [v17 _updateContext:v5 withActivationMetricsInfo:?];
  }
}

void sub_100019404(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 8)
  {
    mach_port_mod_refs(mach_task_self_, *(a1 + 40), 1u, -1);
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    if ((*msg & 0x80000000) != 0 || ((v7 = msg, v8 = msg[1], v8 >= 0x1C) ? (v9 = v8 == 0) : (v9 = 0), !v9))
    {
      v10 = +[CLFLog commonLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100284B64(v10);
      }

      goto LABEL_10;
    }

    v11 = msg[2];
    msg[2] = 0;
    v10 = [BSAuditToken tokenFromMachMessage:msg];
    if (qword_1003310D8 != -1)
    {
      sub_100284BA8();
    }

    v23 = 0;
    v12 = qword_1003310D0;
    v13 = [v12 authenticateAuditToken:v10 error:&v23];
    v14 = v23;

    if (v13)
    {

      v15 = v7[5];
      v16 = [[NSData alloc] initWithBytes:v7 + 7 length:v7[1] - 28];
      if (v16)
      {
        v17 = v16;
        v23 = 100;
        v18 = [NSPropertyListSerialization propertyListWithData:v16 options:0 format:&v23 error:0];
        objc_opt_class();
        v19 = 0;
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        if (v19)
        {
          [*(a1 + 32) dispatchUserNotification:v19 flags:v15 replyPort:v11 auditToken:v10 presenter:qword_1003310B8];

LABEL_10:
          goto LABEL_12;
        }
      }
    }

    else
    {
      v20 = +[CLFLog commonLog];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100284BD0(v10, v14, v20);
      }
    }

    v21 = malloc_type_calloc(0x1CuLL, 1uLL, 0x87B98857uLL);
    if (v21)
    {
      v22 = v21;
      *v21 = 0x1C00000012;
      *(v21 + 2) = v11;
      *(v21 + 3) = 0;
      *(v21 + 20) = 3;
      if (mach_msg(v21, 1, 0x1Cu, 0, 0, 0, 0))
      {
        mach_msg_destroy(v22);
      }

      free(v22);
    }

    goto LABEL_10;
  }

LABEL_12:
}

void sub_1000196BC(id a1)
{
  qword_1003310D0 = [[FBServiceClientAuthenticator alloc] initWithEntitlement:@"com.apple.springboard.CFUserNotification" additionalCredentials:3];

  _objc_release_x1();
}

void sub_100019D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CLFLog commonLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Keyboard scene now available: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateForKeyboardScene];
}

void sub_10001A1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A1C8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 identifier];
  v6 = [v5 isEqualToString:@"com.apple.mobilephone-default"];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

id sub_10001A354(uint64_t a1, void *a2)
{
  v2 = &unk_100295EA8;
  if (!*(a1 + 32))
  {
    v2 = &qword_100295EA0;
  }

  return [a2 setLevel:*v2];
}

void sub_10001AF70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentifier:v3];
  v5 = [*(a1 + 40) identity];
  [v4 setClientIdentity:v5];

  v6 = +[FBSSceneSpecification specification];
  [v4 setSpecification:v6];
}

void sub_10001B00C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSettings:v3];
  [v4 setClientSettings:*(a1 + 40)];
}

void sub_10001C2A0(id a1, FBSceneCreating *a2)
{
  v2 = a2;
  [(FBSceneCreating *)v2 setIdentifier:@"InputUI"];
  v3 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.InputUI"];
  [(FBSceneCreating *)v2 setClientIdentity:v3];

  v4 = +[UIApplicationSceneSpecification specification];
  [(FBSceneCreating *)v2 setSpecification:v4];
}

void sub_10001C33C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSystemScene:1];
  [v3 setDisplayConfiguration:*(a1 + 32)];
  [*(a1 + 32) bounds];
  [v3 setFrame:?];
  [v3 setForeground:1];
  [v3 setLevel:6.0];
  [v3 setInterfaceOrientation:{objc_msgSend(qword_100336870, "systemInterfaceOrientation")}];
  if ([v3 isUISubclass])
  {
    [v3 setInterfaceOrientationMode:2];
  }
}

void sub_10001C558(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) workspace];
  v3 = [v2 allScenes];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 settings];
        if ([v9 isUISubclass])
        {
          v10 = [v9 displayIdentity];
          v11 = [v10 isMainDisplay];

          if (v11)
          {
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_10001C70C;
            v12[3] = &unk_1002FCCC0;
            v12[4] = *(a1 + 40);
            [v8 performUpdate:v12];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_10001C70C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 setUserInterfaceStyle:v5];
  v7 = +[UIScene _synchronizedDrawingFence];
  [v6 setAnimationFence:v7];

  v8 = &kCAMediaTimingFunctionEaseOut;
  if (*(a1 + 32) != 2)
  {
    v8 = &kCAMediaTimingFunctionEaseIn;
  }

  v10 = [CAMediaTimingFunction functionWithName:*v8];
  v9 = [BSAnimationSettings settingsWithDuration:v10 timingFunction:0.5];
  [v6 setAnimationSettings:v9];
}

void sub_10001CD18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_10001D098(uint64_t a1)
{
  v2 = [*(a1 + 32) hotLevel];
  notify_get_state([*(a1 + 32) hotToken], (*(a1 + 32) + 24));
  result = [*(a1 + 32) hotLevel];
  if (v2 != result)
  {
    if (result > 0x28 || v2 >= 0x29)
    {
      [*(a1 + 32) _logThermalEvent:{@"ThermalLevel, %llu", result}];
    }

    v4 = *(a1 + 32);

    return [v4 _respondToCurrentThermalCondition];
  }

  return result;
}

id sub_10001D13C(uint64_t a1)
{
  v2 = [*(a1 + 32) coldLevel];
  notify_get_state([*(a1 + 32) coldToken], (*(a1 + 32) + 32));
  result = [*(a1 + 32) coldLevel];
  if (v2 != result)
  {
    v4 = *(a1 + 32);

    return [v4 _respondToCurrentThermalCondition];
  }

  return result;
}

id sub_10001D1AC(uint64_t a1)
{
  v2 = [*(a1 + 32) sunLevel];
  notify_get_state([*(a1 + 32) sunToken], (*(a1 + 32) + 40));
  result = [*(a1 + 32) sunLevel];
  if (v2 != result)
  {
    v4 = *(a1 + 32);

    return [v4 _respondToCurrentThermalCondition];
  }

  return result;
}

void sub_10001D27C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10001D770(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_100331100;
  qword_100331100 = v2;
}

void sub_10001D7FC(id a1)
{
  v4 = @"com.apple.webapp";
  v1 = [NSArray arrayWithObjects:&v4 count:1];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100331110;
  qword_100331110 = v2;
}

void sub_10001F36C(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_100331120;
  qword_100331120 = v1;

  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = 20;
  }

  else
  {
    v4 = 10;
  }

  [qword_100331120 setCountLimit:v4];

  v5 = qword_100331120;

  [v5 setName:@"FBSBundleInfo+ClarityBoard"];
}

void sub_10001F5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F644;
  v6[3] = &unk_1002FC5C8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

id sub_10001F644(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _iconCache];
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _iconKey];
    [v2 setObject:v3 forKey:v4];

    [*(a1 + 40) setNeedsIconImageUpdate:0];
  }

  [*(a1 + 40) setIsUpdatingIcon:0];
  v5 = *(a1 + 40);

  return [v5 _notifyObserversOfIconImageChange];
}

void sub_10001F6D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001F780;
    v6[3] = &unk_1002FCE18;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

id sub_10001F780(uint64_t a1)
{
  [*(a1 + 32) handleFirstUnlockIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _fetchIconServicesIconWithCompletion:v3];
}

void sub_10001F8BC(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [CLBAppIcons urlForBundleIdentifier:v2];
  v4 = [NSData dataWithContentsOfURL:v3];
  v5 = [UIImage imageWithData:v4];

  (*(*(a1 + 40) + 16))();
}

void sub_10001FB24(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3 && ([v3 placeholder] & 1) == 0)
  {
    v5 = [v6 CGImage];
    [v6 scale];
    v4 = [UIImage imageWithCGImage:v5 scale:0 orientation:?];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

const __CFString *sub_10001FE74(uint64_t a1)
{
  if (a1)
  {
    return @"compatibility";
  }

  else
  {
    return @"full screen";
  }
}

void sub_100020670(id a1)
{
  qword_100331130 = objc_alloc_init(CLBHIDInterface);

  _objc_release_x1();
}

uint64_t sub_100020FD0(uint64_t a1)
{
  qword_100331148 = [*(a1 + 32) clb_displayShapeForScreenType:sub_100015CE4()];

  return _objc_release_x1();
}

double sub_100021020(uint64_t a1)
{
  if (a1 <= 106)
  {
    switch(a1)
    {
      case 3:
      case 4:
        v3 = 1.0;
        v4 = a1;
        v5 = 3;

        return sub_100021344(v3, a1, v4, v5);
      case 5:
      case 6:
        v3 = 1.0;
        v4 = a1;
        v5 = 5;

        return sub_100021344(v3, a1, v4, v5);
      case 7:
      case 8:
        v3 = 1.0;
        v4 = a1;
        v5 = 7;

        return sub_100021344(v3, a1, v4, v5);
      case 9:
      case 10:
        v3 = 0.96;
        v4 = a1;
        v5 = 9;

        return sub_100021344(v3, a1, v4, v5);
      case 11:
      case 12:
        v3 = 1.0;
        v4 = a1;
        v5 = 11;

        return sub_100021344(v3, a1, v4, v5);
      case 13:
      case 14:
        v3 = 1.0;
        v4 = a1;
        v5 = 13;

        return sub_100021344(v3, a1, v4, v5);
      case 15:
      case 16:
        v3 = 0.96;
        v4 = a1;
        v5 = 15;

        return sub_100021344(v3, a1, v4, v5);
      case 17:
      case 18:
        v3 = 1.0;
        v4 = a1;
        v5 = 17;

        return sub_100021344(v3, a1, v4, v5);
      case 19:
      case 20:
        v3 = 1.0;
        v4 = a1;
        v5 = 19;

        return sub_100021344(v3, a1, v4, v5);
      case 21:
      case 22:
        v3 = 1.0;
        v4 = a1;
        v5 = 21;

        return sub_100021344(v3, a1, v4, v5);
      case 23:
      case 24:
        v3 = 1.0;
        v4 = a1;
        v5 = 23;

        return sub_100021344(v3, a1, v4, v5);
      case 25:
      case 26:
        v3 = 1.0;
        v4 = a1;
        v5 = 25;

        return sub_100021344(v3, a1, v4, v5);
      case 27:
      case 28:
        v3 = 1.0;
        v4 = a1;
        v5 = 27;

        return sub_100021344(v3, a1, v4, v5);
      case 29:
      case 30:
        v3 = 1.0;
        v4 = a1;
        v5 = 29;

        return sub_100021344(v3, a1, v4, v5);
      default:
        goto LABEL_65;
    }
  }

  v7 = a1 - 111;
  if ((a1 - 111) <= 7)
  {
    if (((1 << v7) & 7) != 0)
    {
      v3 = 1.0;
      v4 = a1;
      v5 = 111;
    }

    else
    {
      v3 = 1.0;
      v4 = a1;
      if (((1 << v7) & 0xE0) != 0)
      {
        v5 = 116;
      }

      else
      {
        v5 = 114;
      }
    }

    return sub_100021344(v3, a1, v4, v5);
  }

  if ((a1 - 107) < 2)
  {
    v3 = 1.0;
    v4 = a1;
    v5 = 107;

    return sub_100021344(v3, a1, v4, v5);
  }

  if ((a1 - 109) < 2)
  {
    v3 = 1.0;
    v4 = a1;
    v5 = 109;

    return sub_100021344(v3, a1, v4, v5);
  }

LABEL_65:
  v10 = v1;
  v11 = v2;
  sub_100027FE0(a1, v8);
  return v9;
}

double sub_100021344(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_100027FE0(a3, v10);
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  sub_100027FE0(a4, &v7);
  return *&v8 * (*&v7 / *v10) * a1;
}

void sub_100021A98(id a1)
{
  v4[0] = @"findmydeviced";
  v4[1] = @"SafariViewService";
  v1 = [NSArray arrayWithObjects:v4 count:2];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_100331150;
  qword_100331150 = v2;
}

id sub_100021FEC(uint64_t a1)
{
  [*(a1 + 32) setIsPresentingAlert:0];
  [*(a1 + 40) stop];
  v2 = *(a1 + 32);

  return [v2 showNextAlert];
}

double sub_1000222D4(uint64_t a1)
{
  switch(a1)
  {
    case 3:
    case 5:
      return 39.0;
    case 4:
      return 33.33;
    case 6:
      return 35.33;
    case 7:
      return 41.5;
    case 8:
      return 37.5;
    case 9:
    case 15:
      v1 = 44.0;
      goto LABEL_17;
    case 10:
    case 16:
      return 37.33;
    case 11:
    case 17:
      return 47.33;
    case 12:
    case 18:
      return 38.67;
    case 13:
    case 19:
      return 53.33;
    case 14:
    case 20:
      return 46.67;
    case 21:
    case 23:
      return 55.0;
    case 22:
      return 44.67;
    case 24:
      v1 = 48.0;
      goto LABEL_17;
    case 25:
    case 27:
    case 29:
      v1 = 62.0;
LABEL_17:
      result = v1;
      break;
    case 26:
      result = 49.3333333;
      break;
    case 28:
      result = 52.67;
      break;
    case 30:
      result = 45.33;
      break;
    default:
      switch(a1)
      {
        case 'i':
          result = 21.5;
          break;
        case 'j':
          result = 25.0;
          break;
        case 'k':
        case 'm':
        case 'o':
          result = 18.0;
          break;
        case 'l':
        case 'n':
        case 'q':
          result = 21.0;
          break;
        case 'p':
          result = 13.5;
          break;
        case 'r':
        case 't':
          result = 30.0;
          break;
        case 's':
        case 'v':
          result = 35.0;
          break;
        case 'u':
          result = 22.5;
          break;
        default:
          result = 0.0;
          break;
      }

      break;
  }

  return result;
}

id sub_1000224F8()
{
  v0 = +[BSPlatform sharedInstance];
  v1 = [v0 deviceClass];

  return v1;
}

uint64_t sub_100022538()
{
  if (qword_100331168 != -1)
  {
    sub_100285560();
  }

  return qword_100331160;
}

void sub_100022570(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFDictionaryGetValue(v1, @"ArtworkDeviceSubType");
    if (v3)
    {
      qword_100331160 = [v3 intValue];
    }

    CFRelease(v2);
  }
}

double sub_100022604()
{
  if (qword_100331178 != -1)
  {
    sub_100285574();
  }

  return *&qword_100331170;
}

void sub_1000226B0(id a1)
{
  qword_100331180 = objc_alloc_init(CLBDNDManager);

  _objc_release_x1();
}

id sub_1000227C0()
{
  v0 = +[BSPlatform sharedInstance];
  v1 = [v0 homeButtonType];

  return v1;
}

double sub_100022800()
{
  v0 = sub_100022860();
  [v0 bounds];
  v2 = v1;

  return v2;
}

id sub_100022860()
{
  if (qword_100331198 != -1)
  {
    sub_10028559C();
  }

  v1 = qword_100331190;

  return v1;
}

double sub_1000228A4()
{
  v0 = sub_100022860();
  [v0 pointScale];
  v2 = v1;

  return v2;
}

void sub_1000228E4(id a1)
{
  v3 = +[FBDisplayManager sharedInstance];
  v1 = [v3 mainConfiguration];
  v2 = qword_100331190;
  qword_100331190 = v1;
}

void sub_100022984(id a1)
{
  qword_1003311A0 = objc_alloc_init(CLBIdleSleepManager);

  _objc_release_x1();
}

void sub_100022C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100022C94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 eventMask];
  v6 = +[CLFLog commonLog];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dimming for idle", &v8, 2u);
    }

    [WeakRetained dimDisplay];
  }

  else
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reset idle for event %@", &v8, 0xCu);
    }

    [WeakRetained resetIdleTimer];
  }
}

void sub_100023420(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"CLBScreenDidDimNotification" object:0];
}

void sub_100024D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100024DAC(uint64_t a1, void *a2)
{
  v3 = [a2 reason];
  v4 = +[CLFLog commonLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CLBIdleTimerService - Invalidating idle timer expiration timeout assertion forReason:%{public}@]", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(a1 + 32) setIdleTimerDisabled:0 forReason:*(a1 + 40)];
  }
}

uint64_t sub_100025488(uint64_t a1)
{
  qword_1003311D0 = [*(a1 + 32) clb_displayEdgeInfoForScreenType:sub_100015CE4()];

  return _objc_release_x1();
}

void sub_100025D2C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  if (v4)
  {
    goto LABEL_7;
  }

  v4 = [a1[4] clientProcess];
  v5 = [v4 bundleIdentifier];
  if (![v5 isEqualToString:CLBInCallServiceBundleIdentifier] || !objc_msgSend(qword_100336870, "isShowingLockScreen"))
  {

LABEL_7:
    goto LABEL_8;
  }

  v6 = [a1[4] options];
  v7 = [v6 dictionary];
  if ([v7 bs_BOOLForKey:FBSOpenApplicationOptionKeyUnlockDevice])
  {

LABEL_11:
    v11 = a1[5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100025F10;
    v12[3] = &unk_1002FD020;
    v12[4] = v11;
    v13 = a1[4];
    v14 = v3;
    v15 = a1[6];
    [v11 _attemptToDismissLockScreenWithCompletion:v12];

    goto LABEL_9;
  }

  v8 = [a1[4] options];
  v9 = [v8 dictionary];
  v10 = [v9 bs_BOOLForKey:FBSOpenApplicationOptionKeyPromptUnlockDevice];

  if (v10)
  {
    goto LABEL_11;
  }

LABEL_8:
  [a1[5] _finishHandlingOpenApplicationRequest:a1[4] verifierResult:v3 completion:a1[6]];
LABEL_9:
}

void sub_10002621C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10002625C(uint64_t a1)
{
  v2 = +[CLFLog commonLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Lock screen was dismissed.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained lockScreenDidCompleteToken];
  [v4 removeObserver:v5];

  [WeakRetained setLockScreenDidCompleteToken:0];
}

void sub_100026888(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026934;
  block[3] = &unk_1002FC978;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100026934(uint64_t a1)
{
  v2 = [qword_100336870 sceneManager];
  v3 = [v2 workspace];
  v4 = [*(a1 + 32) defaultSceneIdentifier];
  v5 = [v3 sceneWithIdentifier:v4];
  [v5 invalidate];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_100026B7C(uint64_t a1)
{
  v2 = [CLBSceneUpdate alloc];
  v3 = *(a1 + 32);
  v6 = [*(a1 + 40) delegate];
  v4 = -[CLBSceneUpdate initWithRequest:displayStyle:activationMetricsInfo:](v2, "initWithRequest:displayStyle:activationMetricsInfo:", v3, [v6 systemService:*(a1 + 40) displayStyleForBundleIdentifier:*(a1 + 48)], 0);
  v5 = [(CLBSceneUpdate *)v4 performUpdate];
}

uint64_t sub_100026C10(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = +[CLFLog commonLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100285890(a1, v3);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000274E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 count])
  {
    [*(a1 + 32) unionSet:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) processId];
    [v4 addObject:v5];
  }
}

void sub_100027EEC(void *a1)
{
  v1 = a1;
  for (i = 0; i < 0x1F || i - 100 <= 0x12; ++i)
  {
    v3 = 0;
    v1[2](v1, i, &v3);
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_5:
    ;
  }

  if (i <= 0x63)
  {
    i = 99;
    goto LABEL_5;
  }

LABEL_8:
}

__CFString *sub_100027FC0(unint64_t a1)
{
  if (a1 > 0x76)
  {
    return 0;
  }

  else
  {
    return off_1002FD188[a1];
  }
}

BOOL sub_100027FE0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = sub_100027F78(a1);
  v5 = 1;
  if (!result)
  {
    v5 = 2;
  }

  *(a2 + 32) = v5;
  switch(a1)
  {
    case 0:
      *a2 = xmmword_100296050;
      v8 = 0x4000000000000000;
      v9 = 568;
      goto LABEL_60;
    case 1:
      *a2 = xmmword_100296060;
      v8 = 0x4000000000000000;
      v9 = 569;
      goto LABEL_60;
    case 2:
      *a2 = xmmword_100296070;
      v8 = 0x4008000000000000;
      v9 = 570;
      goto LABEL_60;
    case 3:
      v19 = xmmword_100296090;
      goto LABEL_30;
    case 4:
      v19 = xmmword_100296080;
LABEL_30:
      *a2 = v19;
      v8 = 0x4008000000000000;
      v9 = 2436;
      goto LABEL_60;
    case 5:
      v17 = xmmword_1002960B0;
      goto LABEL_33;
    case 6:
      v17 = xmmword_100296090;
LABEL_33:
      *a2 = v17;
      v8 = 0x4008000000000000;
      v9 = 2688;
      goto LABEL_60;
    case 7:
      v16 = xmmword_1002960B0;
      goto LABEL_35;
    case 8:
      v16 = xmmword_100296090;
LABEL_35:
      *a2 = v16;
      v8 = 0x4000000000000000;
      v9 = 1792;
      goto LABEL_60;
    case 9:
    case 15:
      v6 = xmmword_100296090;
      goto LABEL_10;
    case 10:
    case 16:
      v6 = xmmword_100296080;
LABEL_10:
      *a2 = v6;
      v8 = 0x4008000000000000;
      v9 = 2340;
      goto LABEL_60;
    case 11:
    case 17:
      v10 = xmmword_1002960A0;
      goto LABEL_13;
    case 12:
    case 18:
      v10 = xmmword_100296080;
LABEL_13:
      *a2 = v10;
      v8 = 0x4008000000000000;
      v9 = 2532;
      goto LABEL_60;
    case 13:
    case 19:
      v7 = xmmword_1002960C0;
      goto LABEL_8;
    case 14:
    case 20:
      v7 = xmmword_100296090;
LABEL_8:
      *a2 = v7;
      v8 = 0x4008000000000000;
      v9 = 2778;
      goto LABEL_60;
    case 21:
      v21 = xmmword_1002960D0;
      goto LABEL_47;
    case 22:
      v21 = xmmword_100296080;
LABEL_47:
      *a2 = v21;
      v8 = 0x4008000000000000;
      v9 = 2556;
      goto LABEL_60;
    case 23:
      v14 = xmmword_1002960E0;
      goto LABEL_44;
    case 24:
      v14 = xmmword_100296090;
LABEL_44:
      *a2 = v14;
      v8 = 0x4008000000000000;
      v9 = 2796;
      goto LABEL_60;
    case 25:
      v20 = xmmword_1002960F0;
      goto LABEL_39;
    case 26:
      v20 = xmmword_100296080;
LABEL_39:
      *a2 = v20;
      v8 = 0x4008000000000000;
      v9 = 2622;
      goto LABEL_60;
    case 27:
      v18 = xmmword_100296100;
      goto LABEL_42;
    case 28:
      v18 = xmmword_100296090;
LABEL_42:
      *a2 = v18;
      v8 = 0x4008000000000000;
      v9 = 2868;
      goto LABEL_60;
    case 29:
      v22 = xmmword_100296110;
      goto LABEL_49;
    case 30:
      v22 = xmmword_100296090;
LABEL_49:
      *a2 = v22;
      v8 = 0x4008000000000000;
      v9 = 2736;
      goto LABEL_60;
    case 100:
    case 101:
    case 112:
      *a2 = xmmword_100296120;
      *(a2 + 16) = 0x4000000000000000;
      return result;
    case 102:
      *a2 = xmmword_100296130;
      v8 = 0x4000000000000000;
      v9 = 2160;
      goto LABEL_60;
    case 103:
      *a2 = xmmword_100296140;
      v8 = 0x4000000000000000;
      v9 = 2224;
      goto LABEL_60;
    case 104:
    case 111:
      v12 = xmmword_100296150;
      goto LABEL_37;
    case 105:
      *a2 = xmmword_100296160;
      v8 = 0x4000000000000000;
      v9 = 2266;
      goto LABEL_60;
    case 106:
    case 107:
      v11 = xmmword_100296190;
      goto LABEL_51;
    case 108:
      v11 = xmmword_1002961A0;
LABEL_51:
      *a2 = v11;
      v8 = 0x4000000000000000;
      v9 = 2360;
      goto LABEL_60;
    case 109:
      v15 = xmmword_1002961B0;
      goto LABEL_59;
    case 110:
      v15 = xmmword_1002961C0;
LABEL_59:
      *a2 = v15;
      v8 = 0x4000000000000000;
      v9 = 2388;
      goto LABEL_60;
    case 113:
      v12 = xmmword_100296200;
LABEL_37:
      *a2 = v12;
      v8 = 0x4000000000000000;
      v9 = 2732;
      goto LABEL_60;
    case 114:
      v23 = xmmword_1002961D0;
      goto LABEL_56;
    case 115:
      v23 = xmmword_1002961E0;
LABEL_56:
      *a2 = v23;
      v8 = 0x4000000000000000;
      v9 = 2420;
      goto LABEL_60;
    case 116:
      v13 = xmmword_100296210;
      goto LABEL_53;
    case 117:
      v13 = xmmword_100296180;
      goto LABEL_53;
    case 118:
      v13 = xmmword_100296220;
LABEL_53:
      *a2 = v13;
      v8 = 0x4000000000000000;
      v9 = 2752;
LABEL_60:
      *(a2 + 16) = v8;
      *(a2 + 24) = v9;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000285BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002863C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ClarityRootController();
  v17.receiver = v0;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  sub_10002909C();
  sub_1000295CC();
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  [v7 addObserver:v0 selector:"keyboardDidShowWithNotification:" name:UIKeyboardDidShowNotification object:0];

  v8 = [v6 defaultCenter];
  [v8 addObserver:v0 selector:"keyboardWillHideWithNotification:" name:UIKeyboardWillHideNotification object:0];

  v9 = Logger.common.unsafeMutableAddressor();
  (*(v2 + 16))(v4, v9, v1);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%@: registered for keyboard notifications.", v13, 0xCu);
    sub_10002C51C(v14, &qword_10032B670);
  }

  return (*(v2 + 8))(v4, v1);
}

id sub_1000288F0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.common.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v8;
    v13[1] = v9;
    v14 = v8;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%@: keyboard will hide: %@", v12, 0x16u);
    sub_10002B6CC(&qword_10032B670);
    swift_arrayDestroy();
  }

  (*(v4 + 8))(v6, v3);
  result = *&v8[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardView];
  if (result)
  {
    [result setHidden:1];
    result = *&v8[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_heightConstraint];
    if (result)
    {
      return [result setActive:0];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100028B88(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.common.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v8;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v8;
    v13[1] = v9;
    v14 = v8;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%@: keyboard did show: %@", v12, 0x16u);
    sub_10002B6CC(&qword_10032B670);
    swift_arrayDestroy();
  }

  (*(v4 + 8))(v6, v3);
  v16 = OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardView;
  v17 = *&v8[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_31;
  }

  [v17 setHidden:0];
  v18 = [v9 userInfo];
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18;
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v41[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41[2] = v21;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v22 = sub_10008847C(v42), (v23 & 1) == 0))
  {

    sub_10002C57C(v42);
LABEL_19:
    v43 = 0u;
    v44 = 0u;
    goto LABEL_20;
  }

  sub_10002C5D0(*(v20 + 56) + 32 * v22, &v43);
  sub_10002C57C(v42);

  if (!*(&v44 + 1))
  {
LABEL_20:
    sub_10002C51C(&v43, &qword_10032B680);
    return;
  }

  sub_10002C9FC(0, &qword_10032B688);
  if (swift_dynamicCast())
  {
    v24 = v42[0];
    [v42[0] CGRectValue];
    Height = CGRectGetHeight(v45);
    v26 = OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_maxKeyboardHeight;
    v27 = *&v8[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_maxKeyboardHeight];
    if (v27 <= Height)
    {
      v27 = Height;
    }

    *&v8[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_maxKeyboardHeight] = v27;
    v28 = *&v8[v16];
    if (v28)
    {
      v29 = OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardViewSize;
      v30 = *&v8[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardViewSize];
      [v28 intrinsicContentSize];
      if (v30 > v31)
      {
        v32 = v30;
      }

      else
      {
        v32 = v31;
      }

      *&v8[v29] = v32;
      if ([qword_100336870 deviceInterfaceOrientation] == 4 || objc_msgSend(qword_100336870, "deviceInterfaceOrientation") == 3 && objc_msgSend(qword_100336870, "systemInterfaceOrientation") == 1)
      {
        v33 = *&v8[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_heightConstraint];
        if (!v33)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        Height = *&v8[v26];
      }

      else
      {
        v33 = *&v8[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_heightConstraint];
        if (!v33)
        {
LABEL_37:
          __break(1u);
          return;
        }
      }

      v34 = Height + *&v8[v29];
      v35 = v33;
      static ClarityUIMetrics.componentHorizontalPadding.getter();
      [v35 setConstant:v34 - (v36 + v36)];

      v37 = *&v8[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_heightConstraint];
      if (v37)
      {
        [v37 setActive:1];
        v38 = *&v8[v16];
        if (v38)
        {
          [v38 setHidden:0];
          v39 = *&v8[v16];
          if (v39)
          {
            [v39 setNeedsLayout];
            v40 = *&v8[v16];
            if (v40)
            {
              [v40 layoutIfNeeded];

              return;
            }

            goto LABEL_35;
          }

LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }
}

void sub_10002909C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_openApplicationRequestPublisher];
  v6 = *&v0[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_inlineWebsiteURLPublisher];
  v7 = *&v0[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_applicationDidUpdateHandler];
  v8 = *&v0[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_applicationDidUpdateHandler + 8];

  v9 = sub_10003EB50(v5, v6, v7, v8);

  v41 = [v9 view];
  if (v41)
  {
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addChildViewController:v9];
    v10 = [v0 view];
    if (v10)
    {
      v11 = v10;
      [v10 addSubview:v41];

      sub_10002B6CC(&qword_10032B660);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100296710;
      v13 = [v41 widthAnchor];
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 widthAnchor];

        v17 = [v13 constraintEqualToAnchor:v16];
        *(v12 + 32) = v17;
        v18 = [v41 heightAnchor];
        v19 = [v0 view];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 heightAnchor];

          v22 = [v18 constraintEqualToAnchor:v21];
          *(v12 + 40) = v22;
          v23 = [v41 centerXAnchor];
          v24 = [v0 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 centerXAnchor];

            v27 = [v23 constraintEqualToAnchor:v26];
            *(v12 + 48) = v27;
            v28 = [v41 centerYAnchor];
            v29 = [v0 view];
            if (v29)
            {
              v30 = v29;
              v31 = objc_opt_self();
              v32 = [v30 centerYAnchor];

              v33 = [v28 constraintEqualToAnchor:v32];
              *(v12 + 56) = v33;
              sub_10002C9FC(0, &qword_10032B668);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v31 activateConstraints:isa];

              [v9 didMoveToParentViewController:v0];
              v35 = v41;

              return;
            }

LABEL_18:
            __break(1u);
            return;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v36 = Logger.common.unsafeMutableAddressor();
  (*(v2 + 16))(v4, v36, v1);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Unable to retrieve view from hosting view controller for RootView", v39, 2u);
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
}

void sub_1000295CC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v60 - v7;
  v71 = 1;
  State.init(wrappedValue:)();
  v8 = v67[0];
  v9 = v68;
  v71 = 0;
  State.init(wrappedValue:)();
  v10 = v67[0];
  v11 = v68;
  v67[0] = v8;
  v68 = v9;
  v69 = v10;
  v70 = v11;
  v12 = objc_allocWithZone(sub_10002B6CC(&qword_10032B658));

  v13 = UIHostingController.init(rootView:)();
  v14 = [v13 view];
  if (v14)
  {
    v64 = v3;
    v65 = v2;
    v62 = v11;
    v63 = v9;
    v15 = v14;
    [v14 sizeToFit];
    v16 = OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardView;
    v17 = *&v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardView];
    *&v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardView] = v15;
    v18 = v15;

    [v18 setHidden:1];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [objc_opt_self() clearColor];
    v61 = v18;
    [v18 setBackgroundColor:v19];

    v20 = *&v1[v16];
    if (!v20)
    {
      __break(1u);
      goto LABEL_26;
    }

    [v20 intrinsicContentSize];
    *&v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardViewSize] = v21;
    v22 = v13;
    v23 = [v13 view];

    v24 = v66;
    if (v23)
    {
      sub_10002B6CC(&qword_10032B678);
      if (swift_dynamicCastClass())
      {
        v25 = static SafeAreaRegions.keyboard.getter();
        v27 = dispatch thunk of _UIHostingView.safeAreaRegions.modify();
        if ((*v26 & v25) != 0)
        {
          *v26 &= ~v25;
        }

        v27(v67, 0);

        goto LABEL_16;
      }
    }

    v32 = Logger.common.unsafeMutableAddressor();
    (*(v64 + 16))(v24, v32, v65);
    v33 = v13;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = [v33 view];
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unexpected type for hosting controller view: %@", v36, 0xCu);
      sub_10002C51C(v37, &qword_10032B670);
    }

    (*(v64 + 8))(v24, v65);
LABEL_16:
    [v1 addChildViewController:v13];
    v39 = [v1 view];
    if (v39)
    {
      if (*&v1[v16])
      {
        v40 = v39;
        [v39 addSubview:?];

        sub_10002B6CC(&qword_10032B660);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_100296720;
        v42 = *&v1[v16];
        if (v42)
        {
          v43 = [v42 widthAnchor];
          v44 = [v1 view];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 widthAnchor];

            v47 = [v43 constraintEqualToAnchor:v46];
            *(v41 + 32) = v47;
            v48 = *&v1[v16];
            if (v48)
            {
              v49 = [v48 bottomAnchor];
              v50 = [v1 view];
              if (v50)
              {
                v51 = v50;
                v52 = objc_opt_self();
                v53 = [v51 bottomAnchor];

                v54 = [v49 constraintEqualToAnchor:v53];
                *(v41 + 40) = v54;
                sub_10002C9FC(0, &qword_10032B668);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v52 activateConstraints:isa];

                v56 = *&v1[v16];
                if (v56)
                {
                  v57 = [v56 heightAnchor];
                  v58 = [v57 constraintEqualToConstant:360.0];

                  v59 = *&v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_heightConstraint];
                  *&v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_heightConstraint] = v58;

                  [v22 didMoveToParentViewController:v1];

                  return;
                }

LABEL_32:
                __break(1u);
                return;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v28, v2);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unable to retrieve view from hosting view controller for CloseKeyboardView", v31, 2u);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
}

id sub_100029D34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_openApplicationRequestPublisher;
  sub_10002B6CC(&unk_10032B690);
  swift_allocObject();
  *&v3[v7] = PassthroughSubject.init()();
  v8 = OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_inlineWebsiteURLPublisher;
  sub_10002B6CC(&unk_10032C810);
  swift_allocObject();
  *&v3[v8] = PassthroughSubject.init()();
  v9 = &v3[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_applicationDidUpdateHandler];
  *v9 = nullsub_4;
  *(v9 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_heightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardView] = 0;
  *&v3[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_maxKeyboardHeight] = 0;
  *&v3[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardViewSize] = 0;
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for ClarityRootController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_100029EE4(void *a1)
{
  v3 = OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_openApplicationRequestPublisher;
  sub_10002B6CC(&unk_10032B690);
  swift_allocObject();
  *&v1[v3] = PassthroughSubject.init()();
  v4 = OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_inlineWebsiteURLPublisher;
  sub_10002B6CC(&unk_10032C810);
  swift_allocObject();
  *&v1[v4] = PassthroughSubject.init()();
  v5 = &v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_applicationDidUpdateHandler];
  *v5 = nullsub_4;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_heightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardView] = 0;
  *&v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_maxKeyboardHeight] = 0;
  *&v1[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_closeKeyboardViewSize] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ClarityRootController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10002A030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityRootController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002A0E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static HorizontalAlignment.center.getter();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = sub_10002B6CC(&qword_10032B700);
  sub_10002A380(a1, a2, a3, a4, a5 + *(v10 + 44));
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  v13 = sub_10002B6CC(&qword_10032B708);
  NSNotificationCenter.publisher(for:object:)();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  v15 = (a5 + *(v13 + 56));
  *v15 = sub_10002C934;
  v15[1] = v14;

  v16 = [v11 defaultCenter];
  v17 = sub_10002B6CC(&qword_10032B710);
  NSNotificationCenter.publisher(for:object:)();

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v19 = (a5 + *(v17 + 56));
  *v19 = sub_10002C948;
  v19[1] = v18;

  v20 = [v11 defaultCenter];
  v21 = sub_10002B6CC(&qword_10032B718);
  NSNotificationCenter.publisher(for:object:)();

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  v23 = (a5 + *(v21 + 56));
  *v23 = sub_10002C97C;
  v23[1] = v22;
}

uint64_t sub_10002A380@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10002B6CC(&qword_10032B738);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v44 = a1;
  v45 = a2;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  if ((v43 & 1) != 0 || (v14 = a3 & 1, v44 = v14, v45 = a4, State.wrappedValue.getter(), v43 != 1))
  {
    v40 = 1;
  }

  else
  {
    *v13 = static HorizontalAlignment.center.getter();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v15 = sub_10002B6CC(&qword_10032B740);
    sub_10002A618(a1 & 1, a2, v14, a4, &v13[*(v15 + 44)]);
    v16 = static Edge.Set.horizontal.getter();
    static ClarityUIMetrics.componentHorizontalPadding.getter();
    EdgeInsets.init(_all:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = &v13[*(sub_10002B6CC(&qword_10032B748) + 36)];
    *v25 = v16;
    *(v25 + 1) = v18;
    *(v25 + 2) = v20;
    *(v25 + 3) = v22;
    *(v25 + 4) = v24;
    v25[40] = 0;
    v26 = static Edge.Set.vertical.getter();
    static ClarityUIMetrics.componentHorizontalPadding.getter();
    EdgeInsets.init(_all:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = &v13[*(sub_10002B6CC(&qword_10032B750) + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = static Color.clarityUIContentBackground.getter();
    v37 = static Edge.Set.all.getter();
    v38 = &v13[*(sub_10002B6CC(&qword_10032B758) + 36)];
    *v38 = v36;
    v38[8] = v37;
    v39 = &v13[*(v10 + 36)];
    *v39 = 0x4049000000000000;
    v39[8] = 0;
    *(v39 + 9) = 256;
    sub_10002CA44(v13, a5);
    v40 = 0;
  }

  return (*(v11 + 56))(a5, v40, 1, v10);
}

uint64_t sub_10002A618@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v50 = a5;
  v44 = sub_10002B6CC(&qword_10032B760);
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v44);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v45 = sub_10002B6CC(&qword_10032B768);
  __chkstk_darwin(v45);
  v15 = (&v43 - v14);
  v16 = sub_10002B6CC(&qword_10032B770);
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = __chkstk_darwin(v16);
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v46 = &v43 - v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;

  sub_10002B6CC(&qword_10032B778);
  v21 = sub_10002CAF8(&qword_10032B780);
  v22 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v23 = sub_10002CD18(&qword_10032B788, &qword_10032B780);
  v24 = sub_10002BDDC(&unk_10032B790, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle);
  v51 = v21;
  v52 = v22;
  v53 = v23;
  v54 = v24;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  v25 = *(v9 + 32);
  v27 = v43;
  v26 = v44;
  v25(v43, v13, v44);
  v28 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v29 = swift_allocObject();
  v25((v29 + v28), v27, v26);
  *v15 = swift_getKeyPath();
  sub_10002B6CC(&qword_10032CEF0);
  swift_storeEnumTagMultiPayload();
  v30 = (v15 + *(v45 + 36));
  *v30 = sub_10002CBD4;
  v30[1] = v29;
  v31 = static Color.clarityUIContentBackground.getter();
  v32 = static Color.primary.getter();
  v51 = v31;
  v52 = v32;
  sub_10002B6CC(&qword_10032B7A0);
  sub_10002CD18(&qword_10032B7A8, &qword_10032B768);
  sub_10002CD18(&qword_10032B7B0, &qword_10032B7A0);
  v33 = v46;
  View.buttonStyle<A>(_:)();

  sub_10002CC58(v15);
  v35 = v47;
  v34 = v48;
  v36 = *(v48 + 16);
  v37 = v33;
  v38 = v49;
  v36(v47, v33, v49);
  v39 = v50;
  v36(v50, v35, v38);
  v40 = &v39[*(sub_10002B6CC(&qword_10032B7B8) + 48)];
  *v40 = 0;
  v40[8] = 1;
  v41 = *(v34 + 8);
  v41(v37, v38);
  return (v41)(v35, v38);
}

uint64_t sub_10002AB70()
{
  v0 = type metadata accessor for MultimodalNavigationBackButtonLabelStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002B6CC(&qword_10032B780);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10002B6CC(&qword_10032B7C0);
  v9[0] = &type metadata for Image;
  v9[1] = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  Label.init(title:icon:)();
  MultimodalNavigationBackButtonLabelStyle.init()();
  sub_10002CD18(&qword_10032B788, &qword_10032B780);
  sub_10002BDDC(&unk_10032B790, &type metadata accessor for MultimodalNavigationBackButtonLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002AE0C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10002AE88()
{
  Image.init(systemName:)();
  static Font.Weight.bold.getter();
  View.fontWeight(_:)();
}

uint64_t sub_10002AF10(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (v22)
  {
    sub_10002C9FC(0, &qword_10032B730);
    if (swift_dynamicCast())
    {
      v9 = v19;
      v10 = [v19 supportsClarityUI];

      goto LABEL_6;
    }
  }

  else
  {
    sub_10002C51C(v20, &qword_10032B680);
  }

  v10 = 0;
LABEL_6:
  v11 = a2 & 1;
  v20[0] = a2 & 1;
  v21 = a3;
  LOBYTE(v19) = v10;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.setter();
  v12 = Logger.common.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v12, v5);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v18 = v5;
    v16 = v15;
    *v15 = 67109120;
    v20[0] = v11;
    v21 = a3;
    State.wrappedValue.getter();
    *(v16 + 1) = v19;
    v5 = v18;

    _os_log_impl(&_mh_execute_header, v13, v14, "CloseKeyboardView: application supports Clarity: %{BOOL}d", v16, 8u);
  }

  else
  {
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10002B1B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, const char *a6, int a7)
{
  LODWORD(v7) = a7;
  v31 = a6;
  v33 = a4;
  v10 = type metadata accessor for Notification();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = Logger.common.unsafeMutableAddressor();
  v19 = *(v15 + 16);
  v32 = v14;
  v19(v17, v18, v14);
  (*(v11 + 16))(v13, a1, v10);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = a5;
    v23 = v22;
    v28 = swift_slowAlloc();
    v35[0] = v28;
    *v23 = 136315138;
    sub_10002BDDC(&qword_10032B728, &type metadata accessor for Notification);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v7;
    v7 = v25;
    (*(v11 + 8))(v13, v10);
    v26 = sub_10005766C(v24, v7, v35);
    LOBYTE(v7) = v30;

    *(v23 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, v31, v23, 0xCu);
    sub_10002C9B0(v28);

    a5 = v29;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v15 + 8))(v17, v32);
  LOBYTE(v35[0]) = v33 & 1;
  v35[1] = a5;
  v34 = v7;
  sub_10002B6CC(&qword_10032B720);
  return State.wrappedValue.setter();
}

uint64_t sub_10002B524()
{
  if (sub_1002833AC(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_10002B58C()
{
  if (sub_1002833AC(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10002B680();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_10002BDDC(&qword_10032B538, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_10002B680()
{
  result = qword_10032B530;
  if (!qword_10032B530)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032B530);
  }

  return result;
}

uint64_t sub_10002B6CC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_10002B764(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002B770(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002B790(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PasscodeField.State(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10002B818(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002B838(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_10002B8C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10002B910@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002B944(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10002B9BC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10002BA3C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

BOOL sub_10002BABC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10002BAEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10002BB18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10002BC10()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10002BC98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10002C4E4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10002BCD8(uint64_t a1)
{
  v2 = sub_10002BDDC(&qword_10032B648, type metadata accessor for CLFListLayout);
  v3 = sub_10002BDDC(&qword_10032B650, type metadata accessor for CLFListLayout);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002BDDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002BEB4(uint64_t a1)
{
  v2 = sub_10002BDDC(&qword_10032B8E0, type metadata accessor for UIContentSizeCategory);
  v3 = sub_10002BDDC(&qword_10032B8E8, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002BF70@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10002BFB8(uint64_t a1)
{
  v2 = sub_10002BDDC(&qword_10032B7D8, type metadata accessor for FileAttributeKey);
  v3 = sub_10002BDDC(&qword_10032B7E0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002C074(uint64_t a1)
{
  v2 = sub_10002BDDC(&qword_10032B7C8, type metadata accessor for FileProtectionType);
  v3 = sub_10002BDDC(&qword_10032B7D0, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10002C25C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10002C298()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10002C2EC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

void sub_10002C360()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.common.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloseKeyboardView: force keyboard away.", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v8 = [objc_opt_self() sharedArbiterManager];
  [v8 forceKeyboardAway];
}

uint64_t sub_10002C4E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10002C51C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002B6CC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C5D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002C62C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10002C688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10002C9B0(uint64_t a1)
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

uint64_t sub_10002C9FC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10002CA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032B738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CAB4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002CAF8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002CB40()
{
  v1 = sub_10002B6CC(&qword_10032B760);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002CBD4()
{
  v1 = *(sub_10002B6CC(&qword_10032B760) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100069A74(v2);
}

uint64_t sub_10002CC58(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032B768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002CD18(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002CAF8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10002CD74(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_10002CF04()
{
  swift_getKeyPath();
  sub_10002E3F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_10002CF7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002E3F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_10002D004(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002E3F8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10002C9FC(0, &unk_10032F5D0);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_10002D164()
{
  swift_getKeyPath();
  sub_10002E3F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10002D1EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002E3F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_10002D27C()
{
  swift_getKeyPath();
  sub_10002E3F8();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10002D318(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_10002D380()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  ObservationRegistrar.init()();
  v1 = [objc_opt_self() sharedApplicationLibrary];
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_10002E36C;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002DCC0;
  v6[3] = &unk_1002FDF28;
  v3 = _Block_copy(v6);

  v4 = [v1 observeDidUpdateApplicationsWithBlock:v3];
  _Block_release(v3);

  sub_10002D004(v4);
  return v0;
}

uint64_t sub_10002D4B4(void *a1)
{
  v2 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = a1;

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v6;
    v10[5] = a1;
    sub_1000B85D8(0, 0, v4, &unk_1002974B8, v10);
  }

  return result;
}

uint64_t sub_10002D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002D6A8, v7, v6);
}

uint64_t sub_10002D6A8()
{
  v1 = *(v0 + 24);

  sub_10002D714(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_10002D714(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  if (!a1)
  {
    goto LABEL_13;
  }

  v14 = a1;
  v15 = [v14 objectEnumerator];
  if (!v15)
  {

LABEL_13:
    v32 = Logger.common.unsafeMutableAddressor();
    (*(v8 + 16))(v11, v32, v7);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "No map of updated applications provided.", v35, 2u);
    }

    (*(v8 + 8))(v11, v7);
    return;
  }

  v16 = v15;
  v38 = v14;
  v39 = v5;
  v40 = v4;
  v17 = Logger.common.unsafeMutableAddressor();
  (*(v8 + 16))(v13, v17, v7);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Did update applications with potential Screen Time policy change.", v20, 2u);
  }

  (*(v8 + 8))(v13, v7);
  v37 = v16;
  NSEnumerator.makeIterator()();
  v41 = OBJC_IVAR____TtC12ClarityBoard21ScreenTimeCoordinator___observationRegistrar;
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!v48)
    {
      (*(v39 + 8))(v42, v40);

      return;
    }

    sub_10002E64C(&v47, &v46);
    sub_10002C9FC(0, &qword_10032B730);
    if (!swift_dynamicCast())
    {
      break;
    }

    v30 = v45;
    v31 = [v45 bundleIdentifier];
    if (!v31)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = String._bridgeToObjectiveC()();
    }

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v22;
    v44 = v21;
    v23 = [objc_opt_self() sharedInstance];
    v24 = [v23 clarityBundleIdentifierForStandardBundleIdentifier:v31];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = [v30 screenTimePolicy];
    swift_getKeyPath();
    *&v46 = v2;
    sub_10002E3F8();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *&v46 = v2;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_1000712F0(v44, v43, v28, v25, v27, isUniquelyReferenced_nonNull_native);

    *(v2 + 24) = v45;
    swift_endAccess();
    *&v46 = v2;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10002DCC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10002DD2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 bundleIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  swift_getKeyPath();
  v41 = v2;
  sub_10002E3F8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v11 = *(v2 + 24);
  if (*(v11 + 16) && (, v12 = sub_1000884C0(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 24 * v12);
  }

  else
  {

    v16 = sub_10002E680(a1);
    if (v16)
    {
      v17 = v16;
      v37 = v16;
      v18 = [v16 bundleIdentifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [v17 screenTimePolicy];
      v22 = [a1 bundleIdentifier];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      swift_getKeyPath();
      v40 = v2;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v40 = v2;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *(v2 + 24);
      *(v2 + 24) = 0x8000000000000000;
      sub_1000712F0(v15, v20, v21, v38, v24, isUniquelyReferenced_nonNull_native);

      *(v2 + 24) = v39;
      swift_endAccess();
      v40 = v2;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    else
    {
      v26 = Logger.common.unsafeMutableAddressor();
      v27 = v38;
      (*(v38 + 16))(v6, v26, v4);
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "Unable to find standard application for %@.", v31, 0xCu);
        sub_10002E7BC(v32);
      }

      (*(v27 + 8))(v6, v4);
      v34 = [v28 bundleIdentifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return v15;
}

uint64_t sub_10002E18C()
{

  v1 = OBJC_IVAR____TtC12ClarityBoard21ScreenTimeCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ScreenTimeCoordinator()
{
  result = qword_10032B980;
  if (!qword_10032B980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E28C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002E334()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E374(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002E390(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002D004(v1);
}

void sub_10002E3C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

unint64_t sub_10002E3F8()
{
  result = qword_10032BA18;
  if (!qword_10032BA18)
  {
    type metadata accessor for ScreenTimeCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BA18);
  }

  return result;
}

uint64_t sub_10002E450()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002E498(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E558;

  return sub_10002D610(a1, v4, v5, v7, v6);
}

uint64_t sub_10002E558()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_OWORD *sub_10002E64C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002E680(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [a1 bundleIdentifier];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = [v2 standardBundleIdentifierForClarityBundleIdentifier:v3];

  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = [objc_opt_self() sharedApplicationLibrary];
  v6 = [v5 applicationInfoForBundleIdentifier:v4];

  if (v6)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_10002E7BC(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032B670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10002E824@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  [v3 batteryLevel];

  State.init(wrappedValue:)();
  *a1 = v11;
  *(a1 + 8) = *(&v11 + 1);
  v4 = [v2 currentDevice];
  [v4 batteryState];

  type metadata accessor for BatteryState(0);
  State.init(wrappedValue:)();
  *(a1 + 16) = v11;
  *(a1 + 32) = xmmword_100297500;
  type metadata accessor for BatteryView();
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v7 = [v5 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v8 = [objc_allocWithZone(NSNumberFormatter) init];
  [v8 setNumberStyle:3];
  sub_10002C9FC(0, &qword_10032BA20);
  isa = NSNumber.init(integerLiteral:)(100).super.super.isa;
  [v8 setMultiplier:isa];

  [v8 setMinimumFractionDigits:0];
  result = [v8 setMaximumFractionDigits:0];
  *(a1 + 48) = v8;
  return result;
}

uint64_t type metadata accessor for BatteryView()
{
  result = qword_10032BA80;
  if (!qword_10032BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002EAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NSNotificationCenter.Publisher();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002EB64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NSNotificationCenter.Publisher();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002EC08()
{
  sub_10002ECDC();
  if (v0 <= 0x3F)
  {
    sub_10002ED2C();
    if (v1 <= 0x3F)
    {
      sub_10002C9FC(319, &unk_10032BAA0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for NSNotificationCenter.Publisher();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002ECDC()
{
  if (!qword_10032BA90)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10032BA90);
    }
  }
}

void sub_10002ED2C()
{
  if (!qword_10032BA98)
  {
    type metadata accessor for BatteryState(255);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10032BA98);
    }
  }
}

uint64_t sub_10002EDA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for BatteryView();
  v4 = *(v3 - 8);
  v5 = v3 - 8;
  v35 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v34 = v6;
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10002B6CC(&qword_10032BAE8);
  __chkstk_darwin(v43);
  v9 = &v29 - v8;
  v10 = *(v1 + 8);
  LODWORD(v45) = *v1;
  v46 = v10;
  sub_10002B6CC(&qword_10032BAF0);
  State.projectedValue.getter();
  v38 = *(&v47 + 1);
  v39 = v47;
  v11 = v48;
  v12 = *(v1 + 16);
  v41 = *(v1 + 24);
  v42 = v12;
  v45 = v12;
  v46 = v41;
  v40 = sub_10002B6CC(&qword_10032BAF8);
  State.projectedValue.getter();
  v37 = v47;
  v36 = v48;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = *(v5 + 44);
  v33 = v7;
  sub_10002F4FC(v1, v7);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_10002F564(v7, v14 + v13);
  v15 = sub_10002B6CC(&qword_10032BB00);
  v16 = *(v15 + 52);
  v17 = type metadata accessor for NSNotificationCenter.Publisher();
  v18 = *(v17 - 8);
  v30 = *(v18 + 16);
  v31 = v18 + 16;
  v30(&v9[v16], v2 + v32, v17);
  v19 = v38;
  *v9 = v39;
  *(v9 + 1) = v19;
  *(v9 + 4) = v11;
  *(v9 + 24) = v37;
  *(v9 + 5) = v36;
  v20 = v48;
  *(v9 + 3) = v47;
  *(v9 + 4) = v20;
  *(v9 + 5) = v49;
  v21 = &v9[*(v15 + 56)];
  *v21 = sub_10002F5C8;
  v21[1] = v14;
  v22 = *(v35 + 48);
  v23 = v33;
  sub_10002F4FC(v2, v33);
  v24 = swift_allocObject();
  sub_10002F564(v23, v24 + v13);
  v25 = v43;
  v30(&v9[*(v43 + 52)], v2 + v22, v17);
  v26 = &v9[*(v25 + 56)];
  *v26 = sub_10002F5E0;
  v26[1] = v24;
  v45 = v42;
  v46 = v41;
  State.wrappedValue.getter();
  sub_10002F4FC(v2, v23);
  v27 = swift_allocObject();
  sub_10002F564(v23, v27 + v13);
  type metadata accessor for BatteryState(0);
  sub_10002F820();
  sub_10002F884();
  View.onChange<A>(of:initial:_:)();

  return sub_10002F8DC(v9);
}

uint64_t sub_10002F1D4()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 batteryLevel];

  sub_10002B6CC(&qword_10032BAF0);
  return State.wrappedValue.setter();
}

uint64_t sub_10002F270()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 batteryState];

  sub_10002B6CC(&qword_10032BAF8);
  return State.wrappedValue.setter();
}

void sub_10002F308(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 == 2 && _AXSVoiceOverTouchEnabled())
  {
    v4 = *(a3 + 48);
    sub_10002B6CC(&qword_10032BAF0);
    State.wrappedValue.getter();
    isa = Float._bridgeToObjectiveC()().super.super.isa;
    v6 = [v4 stringForObjectValue:isa];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = [objc_opt_self() mainBundle];
      v15._object = 0x80000001002C1350;
      v11._countAndFlagsBits = 0x676E696772616843;
      v11._object = 0xEC0000004025202CLL;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v15._countAndFlagsBits = 0xD000000000000034;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v15);

      sub_10002B6CC(&qword_10032BB18);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100297510;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_10002FBB4();
      *(v13 + 32) = v7;
      *(v13 + 40) = v9;
      static String.localizedStringWithFormat(_:_:)();

      LODWORD(v13) = UIAccessibilityAnnouncementNotification;
      v14 = String._bridgeToObjectiveC()();

      UIAccessibilityPostNotification(v13, v14);
    }
  }
}

uint64_t sub_10002F4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatteryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatteryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F5F8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BatteryView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10002F67C()
{
  v1 = (type metadata accessor for BatteryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[11];
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[12], v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10002F7A0(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for BatteryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10002F308(a1, a2, v6);
}

unint64_t sub_10002F820()
{
  result = qword_10032BB08;
  if (!qword_10032BB08)
  {
    sub_10002CAF8(&qword_10032BAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BB08);
  }

  return result;
}

unint64_t sub_10002F884()
{
  result = qword_10032BB10;
  if (!qword_10032BB10)
  {
    type metadata accessor for BatteryState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BB10);
  }

  return result;
}

uint64_t sub_10002F8DC(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032BAE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10002F944(void *a1)
{
  sub_10002B6CC(&qword_10032BB30);
  Binding.wrappedValue.getter();
  [a1 setChargePercent:*&v3];
  sub_10002B6CC(&qword_10032BB38);
  Binding.wrappedValue.getter();
  return [a1 setChargingState:v3 == 2];
}

id sub_10002FA0C()
{
  v0 = [objc_allocWithZone(_UIBatteryView) init];
  [v0 setSizeCategory:1];
  [v0 setShowsInlineChargingIndicator:1];
  return v0;
}

uint64_t sub_10002FAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002FDA8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10002FB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002FDA8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10002FB8C()
{
  sub_10002FDA8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10002FBB4()
{
  result = qword_10032BB20;
  if (!qword_10032BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BB20);
  }

  return result;
}

__n128 sub_10002FC08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10002FC1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002FC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002FCC0()
{
  sub_10002CAF8(&qword_10032BAE8);
  type metadata accessor for BatteryState(255);
  sub_10002F820();
  sub_10002F884();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10002FD54()
{
  result = qword_10032BB28;
  if (!qword_10032BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BB28);
  }

  return result;
}

unint64_t sub_10002FDA8()
{
  result = qword_10032BB40;
  if (!qword_10032BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BB40);
  }

  return result;
}

uint64_t sub_10002FE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + 16) localizedName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100030970();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

double sub_10002FEBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + 16) bundleIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_8:
    State.init(wrappedValue:)();
    sub_100030178();
    sub_1000301CC();
    goto LABEL_9;
  }

  v12 = sub_100097E28();
  sub_100030178();
  sub_1000301CC();
  v10 = v12;
LABEL_9:
  _ConditionalContent<>.init(storage:)();
  result = *&v13;
  *a2 = v13;
  *(a2 + 16) = v14;
  return result;
}

uint64_t sub_100030038()
{
  sub_10002B6CC(&qword_10032BB48);
  sub_1000300EC();

  return Label.init(title:icon:)();
}

unint64_t sub_1000300EC()
{
  result = qword_10032BB50;
  if (!qword_10032BB50)
  {
    sub_10002CAF8(&qword_10032BB48);
    sub_100030178();
    sub_1000301CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BB50);
  }

  return result;
}

unint64_t sub_100030178()
{
  result = qword_10032BB58;
  if (!qword_10032BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BB58);
  }

  return result;
}

unint64_t sub_1000301CC()
{
  result = qword_10032BB60;
  if (!qword_10032BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BB60);
  }

  return result;
}

double sub_100030220@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    [objc_allocWithZone(UIImage) init];
  }

  v8 = a1;
  Image.init(uiImage:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  static Color.black.getter();
  v10 = Color.opacity(_:)();

  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = 256;
  *(a2 + 24) = v10;
  result = 2.0;
  *(a2 + 32) = xmmword_100297700;
  *(a2 + 48) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1000303CC@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  GeometryProxy.size.getter();
  v7 = v6;
  v9 = v8;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = objc_opt_self();

  v13 = [v12 defaultCenter];
  v14 = sub_10002B6CC(&qword_10032BB80);
  NSNotificationCenter.publisher(for:object:)();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v22;
  *(a3 + 24) = KeyPath;
  *(a3 + 32) = 0;
  *(a3 + 40) = sub_100030C10;
  *(a3 + 48) = v11;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  v16 = (a3 + *(v14 + 56));
  *v16 = sub_100030C1C;
  v16[1] = v15;

  v17 = [v12 defaultCenter];
  v18 = sub_10002B6CC(&qword_10032BB88);
  NSNotificationCenter.publisher(for:object:)();

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = (a3 + *(v18 + 56));
  *v20 = sub_100030C24;
  v20[1] = v19;
}

id sub_100030608()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    [result isDisplayDim];

    sub_10002B6CC(&qword_10032B720);
    return State.wrappedValue.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000306B4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = sub_100030BFC;
  a1[1] = v5;
}

id sub_100030728()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = [objc_allocWithZone(SBHClockApplicationIconImageView) init];
  v6 = [objc_allocWithZone(SBIcon) init];
  v7 = v5;
  [v7 setIconImageInfo:{v1, v2, sub_100049F24(v3, v4), 0.0}];

  [v7 setIcon:v6 location:SBIconLocationRoot animated:0];
  return v7;
}

id sub_1000307F8(void *a1)
{
  v3 = *(v1 + 16);
  [a1 setIconImageInfo:{*v1, *(v1 + 8), sub_100049F24(*(v1 + 24), *(v1 + 32)), 0.0}];

  return [a1 setPaused:(v3 & 1) == 0];
}

uint64_t sub_100030880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030FE4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000308E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030FE4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100030948()
{
  sub_100030FE4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100030970()
{
  result = qword_10032BB68;
  if (!qword_10032BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BB68);
  }

  return result;
}

uint64_t sub_1000309D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100030A2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100030A8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100030AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100030BC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_100030C94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100030CA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100030CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100030D9C()
{
  result = qword_10032BBA0;
  if (!qword_10032BBA0)
  {
    sub_10002CAF8(&qword_10032BBA8);
    sub_100030E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BBA0);
  }

  return result;
}

unint64_t sub_100030E28()
{
  result = qword_10032BBB0;
  if (!qword_10032BBB0)
  {
    sub_10002CAF8(&qword_10032BBB8);
    sub_100030EB4();
    sub_100030F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BBB0);
  }

  return result;
}

unint64_t sub_100030EB4()
{
  result = qword_10032BBC0;
  if (!qword_10032BBC0)
  {
    sub_10002CAF8(&qword_10032BBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BBC0);
  }

  return result;
}

unint64_t sub_100030F38()
{
  result = qword_10032BBD0;
  if (!qword_10032BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BBD0);
  }

  return result;
}

unint64_t sub_100030F90()
{
  result = qword_10032BBD8;
  if (!qword_10032BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BBD8);
  }

  return result;
}

unint64_t sub_100030FE4()
{
  result = qword_10032BBE0;
  if (!qword_10032BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BBE0);
  }

  return result;
}

uint64_t sub_10003108C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NamespaceWrapper();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000310E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10003117C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100031250()
{
  result = qword_10032BCA0;
  if (!qword_10032BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BCA0);
  }

  return result;
}

Swift::Int sub_1000312CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100031344()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_10003138C()
{
  result = qword_10032BCA8;
  if (!qword_10032BCA8)
  {
    sub_10002CAF8(&qword_10032BCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BCA8);
  }

  return result;
}

unint64_t sub_1000313F4()
{
  result = qword_10032BCB8;
  if (!qword_10032BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032BCB8);
  }

  return result;
}

uint64_t sub_100031468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100071494(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000884C0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100071900();
        v14 = v16;
      }

      result = sub_100033274(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

id sub_100031560()
{
  result = [objc_allocWithZone(type metadata accessor for CLBNotificationsManager()) init];
  qword_100336878 = result;
  return result;
}

uint64_t sub_100031638()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100031808(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v44 = a3;
  v48 = a2;
  v6 = type metadata accessor for Logger();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Date();
  v8 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002B6CC(&unk_10032FE20);
  v11 = __chkstk_darwin(v10 - 8);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a1;
  v16 = static Published.subscript.modify();
  v18 = v17;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*v18 + 16) >= *(*v18 + 24) >> 1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v16(v54, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = v54[0];
    v20 = &_swiftEmptyArrayStorage;
    v54[0] = &_swiftEmptyArrayStorage;
    v21 = *(v19 + 16);
    v49 = v4;
    v50 = v15;
    if (v21)
    {
      v22 = 0;
      v15 = (v19 + 32);
      v4 = (v8 + 32);
      v43 = v8;
      v8 += 56;
      while (v22 < *(v19 + 16))
      {
        v16 = v15[v22];
        v23 = [v16 date];
        if (v23)
        {
          v24 = v52;
          v25 = v23;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = v53;
          (*v4)(v14, v24, v53);
          (*v8)(v14, 0, 1, v26);
          sub_100034CD8(v14);
        }

        else
        {
          (*v8)(v14, 1, 1, v53);
          sub_100034CD8(v14);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        if (v21 == ++v22)
        {
          v27 = v54[0];
          v4 = v49;
          v15 = v50;
          v8 = v43;
          v20 = &_swiftEmptyArrayStorage;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    v27 = &_swiftEmptyArrayStorage;
LABEL_11:

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v28 = v54[0];
    v54[0] = &_swiftEmptyArrayStorage;
    v16 = *(v28 + 16);
    if (!v16)
    {
      break;
    }

    v43 = v27;
    v14 = 0;
    v15 = (v8 + 32);
    v4 = (v8 + 56);
    while (v14 < *(v28 + 16))
    {
      v30 = *(v28 + 32 + 8 * v14);
      v31 = [v30 date];
      if (v31)
      {
        v32 = v52;
        v33 = v31;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = v51;
        v34 = v53;
        (*v15)(v51, v32, v53);
        (*v4)(v8, 0, 1, v34);
        sub_100034CD8(v8);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {

        v29 = v51;
        (*v4)(v51, 1, 1, v53);
        sub_100034CD8(v29);
      }

      if (v16 == ++v14)
      {
        v20 = v54[0];
        v4 = v49;
        v15 = v50;
        v27 = v43;
        goto LABEL_19;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_19:

  v54[0] = v20;

  sub_1000334B8(v54);

  v35 = v54[0];
  v54[0] = v27;

  sub_100033534(v35);
  v36 = v54[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = v36;
  v4;
  static Published.subscript.setter();
  if (v48 && (![v15 preemptsPresentedAlert] || (objc_msgSend(v15, "hasCriticalIcon") & 1) != 0))
  {

LABEL_25:
    if ([v15 preemptsPresentedAlert] && (objc_msgSend(v15, "hasCriticalIcon") & 1) == 0)
    {
      v39 = Logger.common.unsafeMutableAddressor();
      (*(v46 + 16))(v45, v39, v47);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Received Emergency Alert notification", v42, 2u);
      }

      (*(v46 + 8))(v45, v47);
      sub_1000321BC(v44, v15);
    }
  }

  else
  {
    sub_1000324F0(v15);
    v37 = [objc_opt_self() sharedInstance];
    if (v37)
    {
      v38 = v37;

      [v38 resetIdleTimerAndUndimForReason:3];

      goto LABEL_25;
    }

    __break(1u);

    __break(1u);
  }
}

void sub_100032008(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  v3 = static Published.subscript.modify();
  v5 = v4;
  sub_100034984(v4);
  v7 = v6;

  v8 = *(*v5 + 16);
  if (v8 < v7)
  {
    __break(1u);
  }

  else
  {
    sub_100034BCC(v7, v8);
    v3(v14, 0);

    v9 = [v2 bulletinID];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      swift_beginAccess();
      sub_100031468(0, v11, v13);
      swift_endAccess();
    }
  }
}

void sub_1000321BC(void *a1, void *a2)
{
  v3 = v2;
  sub_1000322CC(a2, a1, &v11);
  v5 = objc_allocWithZone(sub_10002B6CC(&qword_10032BD28));
  v6 = UIHostingController.init(rootView:)();
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor:v9];

    [a1 setRootViewController:v6];
    [a1 makeKeyAndVisible];
    v10 = *(v3 + OBJC_IVAR___CLBNotificationsManager_viewController);
    *(v3 + OBJC_IVAR___CLBNotificationsManager_viewController) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000322CC@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = [a1 title];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = [a1 message];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = v16;
  v17[4] = a1;
  v18 = a2;
  v19 = a1;
  result = State.init(wrappedValue:)();
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = sub_1000334A4;
  *(a3 + 40) = v17;
  *(a3 + 48) = v21;
  *(a3 + 56) = v22;
  return result;
}

void sub_100032424(void *a1, uint64_t a2, void *a3)
{
  [a1 setHidden:1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      [v6 clearBulletin:a3];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_100032898(a3);
  }
}

void sub_1000324F0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 sound];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 bulletinID];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [v7 alertConfiguration];
      v14 = [objc_allocWithZone(CLBSound) initWithToneAlertConfiguration:v13];

      swift_beginAccess();

      v15 = v14;
      sub_100031468(v14, v10, v12);
      swift_endAccess();
      v16 = [objc_opt_self() sharedInstance];
      if (v16)
      {
        v17 = v16;
        [v16 playSound:v15 completion:0];

        v18 = [objc_opt_self() sharedVisualAlertManager];
        if (v18)
        {
          v19 = v18;

          v20 = [a1 sectionID];
          [v19 handleBulletinWithSectionID:v20];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_14;
    }

    v21 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v21, v2);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v25 = 136315138;
      v26 = [v22 safeDescription];

      if (!v26)
      {
LABEL_14:
        __break(1u);
        return;
      }

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10005766C(v27, v29, v32);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unexpectedly missing ID for bulletin: %s", v25, 0xCu);
      sub_10002C9B0(v31);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_100032898(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 bulletinID];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = OBJC_IVAR___CLBNotificationsManager_soundsByBulletinID;
    swift_beginAccess();
    v13 = *(v1 + v12);
    if (*(v13 + 16))
    {

      v14 = sub_1000884C0(v9, v11);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 8 * v14);

        v17 = [objc_opt_self() sharedInstance];
        if (v17)
        {
          v18 = v17;

          [v18 stopSound:v16];

          return;
        }

        __break(1u);
        goto LABEL_15;
      }
    }

    return;
  }

  v19 = Logger.common.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v19, v3);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31[0] = v24;
    *v23 = 136315138;
    v25 = [v20 safeDescription];

    if (!v25)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_10005766C(v26, v28, v31);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Unexpectedly missing ID for bulletin: %s", v23, 0xCu);
    sub_10002C9B0(v24);
  }

  else
  {
  }

  (*(v4 + 8))(v6, v3);
}

id sub_100032B9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLBNotificationsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CLBNotificationsManager()
{
  result = qword_10032BD08;
  if (!qword_10032BD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100032CD0()
{
  sub_100032D84();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100032D84()
{
  if (!qword_10032BD18)
  {
    sub_10002CAF8(&qword_10032BD20);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10032BD18);
    }
  }
}

uint64_t sub_100032DF8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CLBNotificationsManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100032E38@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100032EB8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

char *sub_100032F30(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002B6CC(&qword_10032BD38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id *sub_100033034(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002B6CC(&unk_10032BD50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002B6CC(&qword_10032BDC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100033168(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002B6CC(&qword_10032BD48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100033274(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100033424()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003345C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000334B8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100034898(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100033628(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100033534(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100033628(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 2) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100033964(v7, v8, a1, v4);
      *(v6 + 2) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100033720(0, v2, 1, a1);
  }
}

void sub_100033720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v34 = v14;
    v35 = a3;
    v16 = *(v39 + 8 * a3);
    v33 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 date];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v20 date];
      if (!v23)
      {
        goto LABEL_13;
      }

      v24 = v23;
      v25 = v37;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = static Date.< infix(_:_:)();
      v26 = v17;
      v27 = *v36;
      v28 = v25;
      v29 = v38;
      (*v36)(v28, v38);
      v27(v12, v29);

      if (v40)
      {
        if (!v39)
        {
          goto LABEL_14;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
        if (v26 != -1)
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 == v32)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_100033964(void ***a1, uint64_t a2, char **a3, int64_t a4)
{
  v140 = a1;
  v152 = type metadata accessor for Date();
  v7 = __chkstk_darwin(v152);
  v149 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v134 - v10;
  v12 = __chkstk_darwin(v9);
  v142 = &v134 - v13;
  v14 = __chkstk_darwin(v12);
  v143 = &v134 - v15;
  v16 = __chkstk_darwin(v14);
  v135 = &v134 - v17;
  __chkstk_darwin(v16);
  v136 = &v134 - v19;
  v147 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v21 = 0;
    v151 = (v18 + 8);
    v22 = &_swiftEmptyArrayStorage;
    v23 = &selRef_shutdownUsingOptions_;
    v139 = a4;
    v153 = v11;
    while (1)
    {
      v24 = v21;
      v25 = v21 + 1;
      if ((v21 + 1) < v20)
      {
        v145 = v20;
        v138 = v22;
        v26 = *v147;
        v27 = *&(*v147)[8 * v21];
        v28 = *&(*v147)[8 * v25];
        v29 = v27;
        v30 = [v28 v23[410]];
        if (!v30)
        {
          goto LABEL_142;
        }

        v31 = v30;
        v150 = v28;
        v32 = v136;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = [v29 v23[410]];
        if (!v33)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v34 = v33;
        v35 = v135;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v146) = static Date.< infix(_:_:)();
        v4 = v151;
        v36 = *v151;
        v37 = v35;
        v21 = v32;
        v38 = v152;
        (*v151)(v37, v152);
        v144 = v36;
        (v36)(v21, v38);

        v39 = (v24 + 2);
        v137 = v24;
        v150 = (8 * v24);
        v40 = &v26[8 * v24 + 16];
        while (1)
        {
          v41 = v145;
          if (v145 == v39)
          {
            break;
          }

          v42 = *(v40 - 1);
          v43 = *v40;
          v44 = v42;
          v45 = [v43 v23[410]];
          if (!v45)
          {
            goto LABEL_137;
          }

          v46 = v45;
          v47 = v143;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v48 = [v44 v23[410]];
          if (!v48)
          {
            goto LABEL_136;
          }

          v49 = v48;
          v50 = v142;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LODWORD(v49) = static Date.< infix(_:_:)() & 1;
          v51 = v50;
          v21 = v47;
          v52 = v152;
          v4 = v144;
          (v144)(v51, v152);
          (v4)(v21, v52);

          ++v39;
          ++v40;
          v11 = v153;
          v23 = &selRef_shutdownUsingOptions_;
          if ((v146 & 1) != v49)
          {
            v41 = (v39 - 1);
            break;
          }
        }

        v22 = v138;
        a4 = v139;
        v24 = v137;
        if (v146)
        {
          if (v41 < v137)
          {
            goto LABEL_129;
          }

          if (v137 < v41)
          {
            v53 = 8 * v41 - 8;
            v54 = v41;
            v55 = v137;
            do
            {
              if (v55 != --v54)
              {
                v56 = *v147;
                if (!*v147)
                {
                  goto LABEL_139;
                }

                v57 = *&v150[v56];
                *&v150[v56] = *&v56[v53];
                *&v56[v53] = v57;
              }

              ++v55;
              v53 -= 8;
              v150 += 8;
            }

            while (v55 < v54);
          }
        }

        v25 = v41;
      }

      v58 = v147[1];
      if (v25 >= v58)
      {
        v21 = v25;
        if (v25 < v24)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v59 = v25;
        v78 = __OFSUB__(v25, v24);
        v60 = v25 - v24;
        if (v78)
        {
          goto LABEL_128;
        }

        if (v60 >= a4)
        {
          goto LABEL_30;
        }

        v61 = v24 + a4;
        if (__OFADD__(v24, a4))
        {
          goto LABEL_130;
        }

        if (v61 >= v58)
        {
          v61 = v147[1];
        }

        if (v61 < v24)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v59 == v61)
        {
LABEL_30:
          v21 = v59;
          if (v59 < v24)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v137 = v24;
          v138 = v22;
          v150 = *v147;
          v111 = &v150[8 * v59 - 8];
          v112 = (v24 - v59);
          v141 = v61;
          do
          {
            v145 = v111;
            v146 = v59;
            v113 = *&v150[8 * v59];
            v144 = v112;
            v114 = v111;
            while (1)
            {
              v115 = *v114;
              v4 = v113;
              v116 = v115;
              v117 = [v4 v23[410]];
              if (!v117)
              {
                goto LABEL_134;
              }

              v118 = v117;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v119 = [v116 v23[410]];
              if (!v119)
              {
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
                goto LABEL_143;
              }

              v120 = v119;
              v121 = v149;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LOBYTE(v120) = static Date.< infix(_:_:)();
              v122 = v11;
              v123 = *v151;
              v124 = v121;
              v125 = v152;
              (*v151)(v124, v152);
              v123(v122, v125);

              if ((v120 & 1) == 0)
              {
                break;
              }

              if (!v150)
              {
                goto LABEL_135;
              }

              v126 = *v114;
              v113 = *(v114 + 1);
              *v114 = v113;
              *(v114 + 1) = v126;
              v114 -= 8;
              v127 = __CFADD__(v112++, 1);
              v11 = v153;
              v23 = &selRef_shutdownUsingOptions_;
              if (v127)
              {
                goto LABEL_85;
              }
            }

            v11 = v153;
            v23 = &selRef_shutdownUsingOptions_;
LABEL_85:
            v59 = v146 + 1;
            v111 = v145 + 8;
            v112 = v144 - 1;
          }

          while (v146 + 1 != v141);
          v21 = v141;
          v24 = v137;
          v22 = v138;
          if (v141 < v137)
          {
            goto LABEL_127;
          }
        }
      }

      v62 = v22;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v62;
      }

      else
      {
        v22 = sub_100032F30(0, *(v62 + 2) + 1, 1, v62);
      }

      v64 = *(v22 + 2);
      v63 = *(v22 + 3);
      v65 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        v22 = sub_100032F30((v63 > 1), v64 + 1, 1, v22);
      }

      *(v22 + 2) = v65;
      v66 = &v22[16 * v64];
      *(v66 + 4) = v24;
      *(v66 + 5) = v21;
      v67 = *v140;
      if (!*v140)
      {
        goto LABEL_141;
      }

      if (v64)
      {
        while (1)
        {
          v4 = v65 - 1;
          if (v65 >= 4)
          {
            break;
          }

          if (v65 == 3)
          {
            v68 = *(v22 + 4);
            v69 = *(v22 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
LABEL_52:
            if (v71)
            {
              goto LABEL_116;
            }

            v84 = &v22[16 * v65];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_119;
            }

            v90 = &v22[16 * v4 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_123;
            }

            if (v88 + v93 >= v70)
            {
              if (v70 < v93)
              {
                v4 = v65 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v94 = &v22[16 * v65];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_66:
          if (v89)
          {
            goto LABEL_118;
          }

          v97 = &v22[16 * v4];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_121;
          }

          if (v100 < v88)
          {
            goto LABEL_3;
          }

LABEL_73:
          v105 = v4 - 1;
          if (v4 - 1 >= v65)
          {
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (!*v147)
          {
            goto LABEL_138;
          }

          v106 = v22;
          v107 = *&v22[16 * v105 + 32];
          v24 = *&v22[16 * v4 + 40];
          v108 = v148;
          sub_100034300(&(*v147)[8 * v107], &(*v147)[8 * *&v22[16 * v4 + 32]], &(*v147)[8 * v24], v67);
          v148 = v108;
          if (v108)
          {
            goto LABEL_110;
          }

          if (v24 < v107)
          {
            goto LABEL_112;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v109 = v106;
          }

          else
          {
            v109 = sub_100034884(v106);
          }

          v11 = v153;
          if (v105 >= *(v109 + 2))
          {
            goto LABEL_113;
          }

          v110 = &v109[16 * v105];
          *(v110 + 4) = v107;
          *(v110 + 5) = v24;
          v154 = v109;
          sub_1000347F8(v4);
          v22 = v154;
          v65 = *(v154 + 2);
          if (v65 <= 1)
          {
            goto LABEL_3;
          }
        }

        v72 = &v22[16 * v65 + 32];
        v73 = *(v72 - 64);
        v74 = *(v72 - 56);
        v78 = __OFSUB__(v74, v73);
        v75 = v74 - v73;
        if (v78)
        {
          goto LABEL_114;
        }

        v77 = *(v72 - 48);
        v76 = *(v72 - 40);
        v78 = __OFSUB__(v76, v77);
        v70 = v76 - v77;
        v71 = v78;
        if (v78)
        {
          goto LABEL_115;
        }

        v79 = &v22[16 * v65];
        v81 = *v79;
        v80 = *(v79 + 1);
        v78 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v78)
        {
          goto LABEL_117;
        }

        v78 = __OFADD__(v70, v82);
        v83 = v70 + v82;
        if (v78)
        {
          goto LABEL_120;
        }

        if (v83 >= v75)
        {
          v101 = &v22[16 * v4 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v78 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v78)
          {
            goto LABEL_124;
          }

          if (v70 < v104)
          {
            v4 = v65 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v20 = v147[1];
      a4 = v139;
      if (v21 >= v20)
      {
        goto LABEL_99;
      }
    }
  }

  v22 = &_swiftEmptyArrayStorage;
LABEL_99:
  v4 = *v140;
  if (*v140)
  {
    v21 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v148;
    if (isUniquelyReferenced_nonNull_native)
    {
      v129 = v21;
    }

    else
    {
LABEL_132:
      v129 = sub_100034884(v21);
    }

    v154 = v129;
    v21 = *(v129 + 2);
    if (v21 >= 2)
    {
      while (*v147)
      {
        v130 = *&v129[16 * v21];
        v131 = v129;
        v132 = *&v129[16 * v21 + 24];
        sub_100034300(&(*v147)[8 * v130], &(*v147)[8 * *&v129[16 * v21 + 16]], &(*v147)[8 * v132], v4);
        if (v24)
        {
          goto LABEL_110;
        }

        if (v132 < v130)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_100034884(v131);
        }

        if (v21 - 2 >= *(v131 + 2))
        {
          goto LABEL_126;
        }

        v133 = &v131[16 * v21];
        *v133 = v130;
        *(v133 + 1) = v132;
        v154 = v131;
        sub_1000347F8(v21 - 1);
        v129 = v154;
        v21 = *(v154 + 2);
        if (v21 <= 1)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_140;
    }

LABEL_110:
  }

  else
  {
LABEL_144:
    __break(1u);
  }
}

uint64_t sub_100034300(void **a1, void **a2, id *a3, void **a4)
{
  v63 = type metadata accessor for Date();
  v8 = *(v63 - 8);
  v9 = __chkstk_darwin(v63);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v61 = (&v56 - v12);
  v13 = __chkstk_darwin(v11);
  v58 = &v56 - v14;
  __chkstk_darwin(v13);
  v60 = (&v56 - v15);
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v17 >= v18 >> 3)
  {
    if (a4 != a2 || &a2[v19] <= a4)
    {
      memmove(a4, a2, 8 * v19);
    }

    v65 = &a4[v19];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v58 = (v8 + 8);
      v37 = &selRef_shutdownUsingOptions_;
      v57 = a1;
LABEL_28:
      v62 = a2;
      v38 = a2 - 1;
      v39 = a3 - 1;
      v40 = v65;
      v60 = a2 - 1;
      while (1)
      {
        v64 = v39;
        v41 = *--v40;
        v42 = *v38;
        v43 = v41;
        v44 = v42;
        result = [v43 v37[410]];
        if (!result)
        {
          goto LABEL_47;
        }

        v45 = result;
        v46 = a4;
        v47 = v61;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        result = [v44 v37[410]];
        if (!result)
        {
          goto LABEL_48;
        }

        v48 = result;
        v49 = v59;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v48) = static Date.< infix(_:_:)();
        v50 = *v58;
        v51 = v49;
        v52 = v63;
        (*v58)(v51, v63);
        v50(v47, v52);

        if (v48)
        {
          a3 = v64;
          a4 = v46;
          v54 = v57;
          v55 = v60;
          if (v64 + 1 != v62)
          {
            *v64 = *v60;
          }

          v37 = &selRef_shutdownUsingOptions_;
          if (v65 <= v46 || (a2 = v55, v55 <= v54))
          {
            a2 = v55;
            break;
          }

          goto LABEL_28;
        }

        v53 = v64;
        a4 = v46;
        v38 = v60;
        if (v64 + 1 != v65)
        {
          *v64 = *v40;
        }

        v39 = v53 - 1;
        v65 = v40;
        v37 = &selRef_shutdownUsingOptions_;
        if (v40 <= v46)
        {
          v65 = v40;
          a2 = v62;
          break;
        }
      }
    }

LABEL_41:
    if (a2 != a4 || a2 >= (a4 + ((v65 - a4 + (v65 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v65 - a4));
    }

    return 1;
  }

  if (a4 != a1 || &a1[v17] <= a4)
  {
    memmove(a4, a1, 8 * v17);
  }

  v65 = &a4[v17];
  if (a2 - a1 < 8 || (v20 = a2, a2 >= a3))
  {
LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  v59 = (v8 + 8);
  v21 = &selRef_shutdownUsingOptions_;
  v64 = a3;
  while (1)
  {
    v61 = a4;
    v62 = v20;
    v22 = *a4;
    v23 = *v20;
    v24 = v22;
    result = [v23 v21[410]];
    if (!result)
    {
      break;
    }

    v26 = result;
    v27 = a1;
    v28 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v21;
    result = [v24 v21[410]];
    if (!result)
    {
      goto LABEL_46;
    }

    v30 = result;
    v31 = v58;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v30) = static Date.< infix(_:_:)();
    v32 = *v59;
    v33 = v31;
    v34 = v63;
    (*v59)(v33, v63);
    v32(v28, v34);

    if (v30)
    {
      a4 = v61;
      v35 = v62;
      v36 = v62;
      v20 = v62 + 1;
    }

    else
    {
      v35 = v61;
      v20 = v62;
      v36 = v61;
      a4 = v61 + 1;
    }

    if (v27 != v35)
    {
      *v27 = *v36;
    }

    a1 = v27 + 1;
    if (a4 < v65)
    {
      v21 = v29;
      if (v20 < v64)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1000347F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100034884(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000348D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  sub_100034C8C();
  v3 = 0;
  while (1)
  {
    v4 = *(v2 + 8 * v3);
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

void sub_100034984(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1000348D4(*a1);
  v5 = v3;
  if (!v1 && (v4 & 1) == 0)
  {
    if (!__OFADD__(v3, 1))
    {
      v7 = (v2 + 16);
      v6 = *(v2 + 16);
      if (v3 + 1 == v6)
      {
        return;
      }

      for (i = v3 + 5; ; ++i)
      {
        v10 = i - 4;
        if (i - 4 >= v6)
        {
          break;
        }

        v11 = *(v2 + 8 * i);
        sub_100034C8C();
        v12 = v11;
        v13 = static NSObject.== infix(_:_:)();

        if ((v13 & 1) == 0)
        {
          if (v10 != v5)
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_20;
            }

            if (v5 >= *v7)
            {
              goto LABEL_21;
            }

            if (v10 >= *v7)
            {
              goto LABEL_22;
            }

            v14 = *(v2 + 8 * i);
            v15 = *(v2 + 32 + 8 * v5);
            v16 = v14;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_1000348AC();
            }

            v17 = v2 + 8 * v5;
            v18 = *(v17 + 32);
            *(v17 + 32) = v16;

            if (v10 >= *(v2 + 16))
            {
              goto LABEL_23;
            }

            v19 = *(v2 + 8 * i);
            *(v2 + 8 * i) = v15;

            *a1 = v2;
          }

          ++v5;
        }

        v7 = (v2 + 16);
        v6 = *(v2 + 16);
        v9 = i - 3;
        if (v9 == v6)
        {
          return;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_100034B0C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100034BCC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 24) >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = v4;
  }

  result = sub_100034B0C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_100034C8C()
{
  result = qword_10032BD30;
  if (!qword_10032BD30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032BD30);
  }

  return result;
}

uint64_t sub_100034CD8(uint64_t a1)
{
  v2 = sub_10002B6CC(&unk_10032FE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100034D84()
{
  sub_100035D1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  v2 = [v1 applicationBundleIdentifiers];

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = sub_100036018(v3, v7);

  if ((v4 & 1) == 0)
  {
    v5 = [ObjCClassFromMetadata sharedInstance];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setApplicationBundleIdentifiers:isa];
  }
}

uint64_t sub_100034F18()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100034F8C()
{
  sub_100035D1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  v2 = [v1 listLayout];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v9 = [ObjCClassFromMetadata sharedInstance];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      [v9 setListLayout:v10];
    }
  }
}

uint64_t sub_10003514C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000351C0()
{
  type metadata accessor for UserPreferences();
  v0 = swift_allocObject();
  result = sub_100035200();
  qword_100336888 = v0;
  return result;
}

uint64_t sub_100035200()
{
  v1 = OBJC_IVAR____TtC12ClarityBoard15UserPreferences_applicationBundleIdentifiersObserver;
  *(v0 + OBJC_IVAR____TtC12ClarityBoard15UserPreferences_applicationBundleIdentifiersObserver) = 0;
  v2 = OBJC_IVAR____TtC12ClarityBoard15UserPreferences_listLayoutObserver;
  *(v0 + OBJC_IVAR____TtC12ClarityBoard15UserPreferences_listLayoutObserver) = 0;
  sub_100035D1C();
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 applicationBundleIdentifiers];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_10002B6CC(&qword_10032BDC0);
  Published.init(initialValue:)();
  swift_endAccess();
  v5 = [v3 listLayout];

  swift_beginAccess();
  v25 = v5;
  type metadata accessor for CLFListLayout(0);
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = aBlock[2];

  if (!v6)
  {
    static os_log_type_t.error.getter();
    v7 = [objc_opt_self() commonLog];
    os_log(_:dso:log:_:_:)();
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  v23 = sub_100035EAC;
  v24 = v9;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000357AC;
  v22 = &unk_1002FE4A8;
  v10 = _Block_copy(&aBlock);
  v11 = v3;

  v12 = [v11 observeUpdatesForSelector:"applicationBundleIdentifiers" handler:v10];
  _Block_release(v10);
  *(v0 + v1) = v12;
  swift_unknownObjectRelease();
  v13 = swift_allocObject();
  swift_weakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v11;
  v23 = sub_100035F0C;
  v24 = v14;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000357AC;
  v22 = &unk_1002FE4F8;
  v15 = _Block_copy(&aBlock);
  v16 = v11;

  v17 = [v16 observeUpdatesForSelector:"listLayout" handler:v15];
  _Block_release(v15);

  *(v0 + v2) = v17;
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000355FC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Strong = v9;
  }

  v4 = [a2 applicationBundleIdentifiers];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (Strong)
  {
    v6 = sub_100036018(Strong, v5);

    if (v6)
    {
      return result;
    }
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = [a2 applicationBundleIdentifiers];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    sub_100034D84();
  }

  return result;
}

uint64_t sub_1000357AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1000357F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Strong = v14;
  }

  v4 = [a2 listLayout];
  v5 = v4;
  if (!Strong)
  {

LABEL_11:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v12 = [a2 listLayout];
      swift_getKeyPath();
      swift_getKeyPath();

      v13 = v12;
      static Published.subscript.setter();
      sub_100034F8C();
    }

    return;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    return;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_1000359E0()
{
  v1 = OBJC_IVAR____TtC12ClarityBoard15UserPreferences__applicationBundleIdentifiers;
  v2 = sub_10002B6CC(&qword_10032BF68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12ClarityBoard15UserPreferences__listLayout;
  v4 = sub_10002B6CC(&unk_10032BF70);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for UserPreferences()
{
  result = qword_10032BDA8;
  if (!qword_10032BDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100035B48()
{
  sub_100035C20();
  if (v0 <= 0x3F)
  {
    sub_100035C84();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100035C20()
{
  if (!qword_10032BDB8)
  {
    sub_10002CAF8(&qword_10032BDC0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10032BDB8);
    }
  }
}

void sub_100035C84()
{
  if (!qword_10032BDC8)
  {
    type metadata accessor for CLFListLayout(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10032BDC8);
    }
  }
}

uint64_t sub_100035CDC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UserPreferences();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100035D1C()
{
  result = qword_10032BF60;
  if (!qword_10032BF60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032BF60);
  }

  return result;
}

uint64_t sub_100035D68@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void sub_100035DEC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_100034D84();
}

uint64_t sub_100035E70()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100035ECC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035F14@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void sub_100035F94(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  static Published.subscript.setter();
  sub_100034F8C();
}

uint64_t sub_100036018(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000360B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_100036128()
{
  v1 = sub_10002B6CC(&qword_10032FE00);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC12ClarityBoard15SiriCoordinator__isShowingSiri;
  v15 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v5], v4, v1);
  v6 = OBJC_IVAR____TtC12ClarityBoard15SiriCoordinator_presentationController;
  *&v0[v6] = [objc_opt_self() sharedPresentationController];
  v7 = type metadata accessor for SiriCoordinator();
  v14.receiver = v0;
  v14.super_class = v7;
  v8 = objc_msgSendSuper2(&v14, "init");
  v9 = OBJC_IVAR____TtC12ClarityBoard15SiriCoordinator_presentationController;
  v10 = *&v8[OBJC_IVAR____TtC12ClarityBoard15SiriCoordinator_presentationController];
  v11 = v8;
  [v10 setup];
  [*&v8[v9] setDelegate:v11];

  return v11;
}

void sub_10003635C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1000363CC(void *a1, uint64_t (*a2)(uint64_t, void))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static Published.subscript.setter();
  return a2(1, 0);
}

id sub_100036664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SiriCoordinator()
{
  result = qword_10032C010;
  if (!qword_10032C010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100036778()
{
  sub_100036814();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100036814()
{
  if (!qword_10032C020)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10032C020);
    }
  }
}

uint64_t sub_100036864@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000368A4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100036928(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10003699C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000369DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100036A40(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isLocked];

  if (v5)
  {
    v6 = *(a2 + 16);

    return v6(a2, 0, 0);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = a1;
    static Published.subscript.setter();
    return (*(a2 + 16))(a2, 1, 0);
  }
}

uint64_t sub_100036B40()
{
  static Animation.clarityUINavigationTransition.getter();
  withAnimation<A>(_:_:)();
}
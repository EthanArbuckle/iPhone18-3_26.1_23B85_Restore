@interface PHInCallUIUtilities
+ (BOOL)hasMultipleSenderIdentities;
+ (BOOL)isExplicitTransferSupportedForSubscriptionLabelIdentifier:(id)a3;
+ (BOOL)layoutIsLocked:(id)a3;
+ (BOOL)shouldHideSensitiveUI;
+ (BOOL)shouldRequestPasscodeUnlockForMMICode:(id)a3;
+ (id)fbsOrientationObserver;
+ (id)handleNavigationControllerIfNecessary:(id)a3;
+ (id)sharedInstance;
+ (id)telephonyClient;
+ (int64_t)deviceOrientationForBSInterfaceOrientation:(int64_t)a3;
+ (int64_t)frontboardOrientation;
+ (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)a3;
- (PHInCallUIUtilities)init;
- (uint64_t)init;
- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5;
@end

@implementation PHInCallUIUtilities

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37__PHInCallUIUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sInCallUIUtilities;

  return v2;
}

uint64_t __37__PHInCallUIUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sInCallUIUtilities = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (PHInCallUIUtilities)init
{
  v10.receiver = self;
  v10.super_class = PHInCallUIUtilities;
  v2 = [(PHInCallUIUtilities *)&v10 init];
  if (v2)
  {
    v3 = [FBSDisplayLayoutMonitor sharedMonitorForDisplayType:0];
    v4 = objc_opt_class();
    v5 = [v3 currentLayout];
    if ([v4 layoutIsLocked:v5])
    {
      v6 = 1;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v7 = getSBSGetScreenLockStatusSymbolLoc_ptr;
      v15 = getSBSGetScreenLockStatusSymbolLoc_ptr;
      if (!getSBSGetScreenLockStatusSymbolLoc_ptr)
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = __getSBSGetScreenLockStatusSymbolLoc_block_invoke;
        v11[3] = &unk_4C860;
        v11[4] = &v12;
        __getSBSGetScreenLockStatusSymbolLoc_block_invoke(v11);
        v7 = v13[3];
      }

      _Block_object_dispose(&v12, 8);
      if (!v7)
      {
        v9 = [PHInCallUIUtilities init];
        _Block_object_dispose(&v12, 8);
        _Unwind_Resume(v9);
      }

      v6 = v7(0) != 0;
    }

    v2->_springBoardLocked = v6;

    [v3 addObserver:v2];
  }

  return v2;
}

+ (id)telephonyClient
{
  if (telephonyClient_onceToken != -1)
  {
    +[PHInCallUIUtilities telephonyClient];
  }

  v3 = telephonyClient_telephonyClient;

  return v3;
}

void __38__PHInCallUIUtilities_telephonyClient__block_invoke(id a1)
{
  telephonyClient_telephonyClient = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];

  _objc_release_x1();
}

+ (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)a3
{
  if ((a3 - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)deviceOrientationForBSInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 2) > 2)
  {
    return 1;
  }

  else
  {
    return qword_31228[a3 - 2];
  }
}

+ (id)handleNavigationControllerIfNecessary:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 topViewController];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

+ (BOOL)shouldRequestPasscodeUnlockForMMICode:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"*#06#"])
  {
    v5 = [a1 telephonyClient];
    v33 = 0;
    v6 = [v5 getSubscriptionInfoWithError:&v33];
    v7 = v33;

    if (v7)
    {
      v27 = PHDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[PHInCallUIUtilities shouldRequestPasscodeUnlockForMMICode:];
      }
    }

    else
    {
      v9 = [v6 subscriptions];
      v10 = [v9 count];

      if (v10)
      {
        v27 = [[CTBundle alloc] initWithBundleType:2];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = [v6 subscriptions];
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v25 = v6;
          v26 = v4;
          v7 = 0;
          v14 = *v30;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              if (([v16 isSimHidden] & 1) == 0)
              {
                v17 = [a1 telephonyClient];
                v28 = v7;
                v18 = [v17 copyCarrierBundleValueWithDefault:v16 key:@"ShowIMEIsInLockScreen" bundleType:v27 error:&v28];
                v19 = v28;

                if (v19)
                {
                  v20 = PHDefaultLog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *v35 = v19;
                    _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Received error: %@ while querying -copyCarrierBundleValueWithDefault", buf, 0xCu);
                  }
                }

                else
                {
                  if (objc_opt_respondsToSelector())
                  {
                    v21 = [v18 BOOLValue];
                  }

                  else
                  {
                    v21 = 0;
                  }

                  v22 = PHDefaultLog();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    v23 = [v16 uuid];
                    *buf = 67109634;
                    *v35 = v21;
                    *&v35[4] = 2112;
                    *&v35[6] = v18;
                    v36 = 2112;
                    v37 = v23;
                    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Received regionWantsPasscodeBypassForIMEI: %d from carrierBundleValue: %@ subscription: %@", buf, 0x1Cu);
                  }

                  if (v21)
                  {

                    v8 = 0;
                    v7 = 0;
                    goto LABEL_34;
                  }
                }

                v7 = v19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v8 = 1;
LABEL_34:
          v6 = v25;
          v4 = v26;
        }

        else
        {
          v7 = 0;
          v8 = 1;
        }

        goto LABEL_37;
      }

      v27 = PHDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[PHInCallUIUtilities shouldRequestPasscodeUnlockForMMICode:];
      }

      v7 = 0;
    }

    v8 = 1;
LABEL_37:

    goto LABEL_38;
  }

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Code is not for IMEI, should request passcode unlock", buf, 2u);
  }

  v8 = 1;
LABEL_38:

  return v8;
}

+ (BOOL)shouldHideSensitiveUI
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.springboard"];
  if ([v3 BOOLForKey:@"SBSensitiveUIEnabled"])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = _UISolariumEnabled() ^ 1;
  }

  return [a1 isSpringBoardPasscodeLocked] & v4;
}

+ (BOOL)layoutIsLocked:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a3 elements];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = FBSDisplayLayoutElementLockScreenIdentifier;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) identifier];
        v10 = [v9 isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (BOOL)hasMultipleSenderIdentities
{
  if (hasMultipleSenderIdentities_onceToken != -1)
  {
    +[PHInCallUIUtilities hasMultipleSenderIdentities];
  }

  v2 = [hasMultipleSenderIdentities_telephonyProvider prioritizedSenderIdentities];
  v3 = [v2 count] > 1;

  return v3;
}

void __50__PHInCallUIUtilities_hasMultipleSenderIdentities__block_invoke(id a1)
{
  v5 = objc_alloc_init(TUCallProviderManager);
  v1 = [v5 telephonyProvider];
  v2 = [v1 identifier];
  v3 = [v5 providerWithIdentifier:v2];
  v4 = hasMultipleSenderIdentities_telephonyProvider;
  hasMultipleSenderIdentities_telephonyProvider = v3;
}

+ (id)fbsOrientationObserver
{
  if (fbsOrientationObserver_onceToken != -1)
  {
    +[PHInCallUIUtilities fbsOrientationObserver];
  }

  v3 = fbsOrientationObserver_sFBSOrientationObserver;

  return v3;
}

void __45__PHInCallUIUtilities_fbsOrientationObserver__block_invoke(id a1)
{
  fbsOrientationObserver_sFBSOrientationObserver = objc_alloc_init(FBSOrientationObserver);

  _objc_release_x1();
}

+ (BOOL)isExplicitTransferSupportedForSubscriptionLabelIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 telephonyClient];
  v38 = 0;
  v6 = [v5 getSubscriptionInfoWithError:&v38];
  v7 = v38;

  if (v7)
  {
    v32 = PHDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[PHInCallUIUtilities isExplicitTransferSupportedForSubscriptionLabelIdentifier:];
    }

    goto LABEL_30;
  }

  v8 = [v6 subscriptions];
  v9 = [v8 count];

  v10 = PHDefaultLog();
  v11 = v10;
  if (!v9)
  {
    v32 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[PHInCallUIUtilities isExplicitTransferSupportedForSubscriptionLabelIdentifier:];
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 subscriptions];
    *buf = 138412290;
    v40 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "ShowExplicitCallTransferButton: all the subscriptions are: %@", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = [v6 subscriptions];
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v45 count:16];
  v32 = v13;
  if (!v14)
  {
LABEL_29:
    v7 = 0;
LABEL_30:
    v28 = 0;
    goto LABEL_31;
  }

  v15 = v14;
  v31 = a1;
  v16 = 0;
  v17 = *v35;
  v30 = v4;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v35 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v34 + 1) + 8 * i);
      v20 = PHDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v19;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "ShowExplicitCallTransferButton: checking subscription: %@", buf, 0xCu);
      }

      if (([v19 isSimHidden] & 1) == 0)
      {
        v21 = [v19 labelID];
        v22 = [v21 isEqualToString:v4];

        if (v22)
        {
          v23 = [[CTBundle alloc] initWithBundleType:1];
          v24 = [v31 telephonyClient];
          v33 = v16;
          v25 = [v24 copyCarrierBundleValue:v19 keyHierarchy:&off_55E38 bundleType:v23 error:&v33];
          v7 = v33;

          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v26 = [v25 BOOLValue];
          }

          else
          {
            v26 = 0;
          }

          v27 = PHDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v40 = v25;
            v41 = 2112;
            v42 = v19;
            v43 = 2112;
            v44 = v7;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "ShowExplicitCallTransferButton: retrieved ShowExplicitCallTransferButton value %@ for subscription %@ with error %@", buf, 0x20u);
          }

          if (v26)
          {
            v28 = 1;
            v4 = v30;
            goto LABEL_31;
          }

          v16 = v7;
          v4 = v30;
          v13 = v32;
        }
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  v28 = 0;
  v7 = v16;
LABEL_31:

  return v28;
}

+ (int64_t)frontboardOrientation
{
  v2 = [a1 fbsOrientationObserver];
  v3 = [v2 activeInterfaceOrientation];
  if ((v3 - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_31240[(v3 - 1)];
  }

  return v4;
}

- (void)layoutMonitor:(id)a3 didUpdateDisplayLayout:(id)a4 withContext:(id)a5
{
  v6 = a4;
  v7 = [objc_opt_class() layoutIsLocked:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __92__PHInCallUIUtilities_Workaround50930227__layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
  v8[3] = &unk_4C720;
  v8[4] = self;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, v8);
}

void __92__PHInCallUIUtilities_Workaround50930227__layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != [*(a1 + 32) isSpringBoardLocked])
  {
    [*(a1 + 32) setSpringBoardLocked:?];
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"PHLockScreenStatusChangedNotification" object:*(a1 + 32)];
  }
}

- (uint64_t)init
{
  dlerror();
  v0 = abort_report_np();
  return +[(PHInCallUIUtilities *)v0];
}

@end
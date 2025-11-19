__CFString *GAXProfileKeyForUIAutonomousSingleAppModeConfigurationDictionaryKey(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:UIAutonomousSingleAppModePropertyKeyAllowsLockButton])
  {
    v2 = &GAXProfileAllowsLockButton;
LABEL_11:
    v3 = *v2;
    goto LABEL_12;
  }

  if ([v1 isEqualToString:UIAutonomousSingleAppModePropertyKeyAllowsAutoLock])
  {
    v2 = &GAXProfileAllowsAutolock;
    goto LABEL_11;
  }

  if ([v1 isEqualToString:UIAutonomousSingleAppModePropertyKeyAllowsAccessibilityShortcut])
  {
    v2 = &GAXProfileAllowsAccessibilityShortcut;
    goto LABEL_11;
  }

  if ([v1 isEqualToString:UIAutonomousSingleAppModePropertyKeyAutomaticallyRelaunchesAfterAppCrash])
  {
    v2 = &GAXProfileShouldAutolaunchCrashedApps;
    goto LABEL_11;
  }

  if ([v1 isEqualToString:UIAutonomousSingleAppModePropertyKeyShowsUserConfirmationPromptsAndBanners])
  {
    v2 = &GAXProfileShowsUserConfirmationPromptsAndBanners;
    goto LABEL_11;
  }

  v5 = GAXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_A718(v1, v5);
  }

  v3 = &stru_15120;
LABEL_12:

  return v3;
}

id GAXProfileOverridesFromConfiguration(void *a1)
{
  v1 = [a1 propertiesAsDictionary];
  v2 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v1 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = GAXProfileKeyForUIAutonomousSingleAppModeConfigurationDictionaryKey(v8);
        if (v9)
        {
          v10 = [v3 objectForKeyedSubscript:{v8, v12}];
          [v2 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_12B0(id a1)
{
  qword_1BC80 = objc_opt_new();

  _objc_release_x1();
}

void sub_146C(uint64_t a1)
{
  v2 = [AXIPCServer alloc];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 _messageServiceName];
  v6 = [v2 initWithServiceName:v5 perPidService:1];

  [*v3 setAppServer:v6];
  [v6 setHandlerWithTarget:*v3 selector:"_handleGetAffectedViewsForPath:" forKey:11000];
  [v6 setHandlerWithTarget:*v3 selector:"_handleHideKeyboard:" forKey:11002];
  [v6 setHandlerWithTarget:*v3 selector:"_handleSettingsDidChange:" forKey:11003];
  [v6 setHandlerWithTarget:*v3 selector:"_handleGetRestrictionIdentifiers:" forKey:11004];
  [v6 setHandlerWithTarget:*v3 selector:"_handleRestrictionDidChangeState:" forKey:11005];
  [v6 setHandlerWithTarget:*v3 selector:"_handlePrepareClientAppForTransitionToWorkspace:" forKey:11006];
  [*v3 _initializeBackboardClient];
  v12 = 0;
  v7 = [v6 startServerWithError:&v12];
  v8 = v12;
  if ((v7 & 1) == 0)
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_A7A4(v3);
    }
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:*v3 selector:"_handleAppDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  [v10 addObserver:*v3 selector:"_handlePreferenceDidChange:" name:kAXSGuidedAccessEnabledNotification object:0];
  [*v3 setEnabled:_AXSGuidedAccessRequiresApplicationAccessibility() != 0];
  v11 = GAXLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_A84C(v11);
  }

  [*v3 _notifyGuidedAccessClientDidLoad];
}

id sub_1960(uint64_t a1)
{
  v2 = _AXSGuidedAccessRequiresApplicationAccessibility() != 0;
  v3 = *(a1 + 32);

  return [v3 setEnabled:v2];
}

BOOL sub_20A8(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_2100(id a1, UIView *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

int64_t sub_21B4(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 windowLevel];
  v6 = v5;
  [v4 windowLevel];
  v8 = v7;

  v9 = -1;
  if (v6 >= v8)
  {
    v9 = 1;
  }

  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

void sub_267C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_AB54(a1);
    }

    v8 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v9 = [v5 payload];

  if (v9)
  {
    v10 = [v5 payload];
    v11 = [v10 objectForKeyedSubscript:&off_17CF8];
    v12 = [v11 integerValue];
    if (v12 >= 4)
    {
      v13 = GAXLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_ABCC();
      }

      v12 = &dword_0 + 2;
    }

    v14 = [UIAutonomousSingleAppModeConfiguration defaultConfigurationForStyle:v12];
    v7 = [v5 payload];
    v15 = [v7 objectForKeyedSubscript:&off_17D10];
    v8 = v14;
    v16 = [v15 objectForKeyedSubscript:@"GAXProfileAllowsAutolock"];
    [v8 setAllowsAutoLock:{objc_msgSend(v16, "BOOLValue")}];

    v17 = [v15 objectForKeyedSubscript:@"GAXProfileAllowsLockButton"];
    [v8 setAllowsLockButton:{objc_msgSend(v17, "BOOLValue")}];

    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:
  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v8);
  }
}

void sub_2C48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_AC40();
    }

    v9 = 0;
  }

  else
  {
    v10 = [v5 payload];
    v11 = [v10 objectForKeyedSubscript:@"success"];
    v9 = [v11 BOOLValue];

    v12 = [v5 payload];
    v13 = [v12 objectForKeyedSubscript:@"errorCode"];
    v14 = [v13 integerValue];

    v15 = 0x7FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    if (v14 || (v9 & 1) == 0)
    {
      v17 = GAXLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_ACB0();
      }
    }

    v7 = [*(a1 + 32) _errorForGAXAXFeaturesResetErrorCode:v16];
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v9, v7);
  }
}

id sub_2E60(uint64_t a1)
{
  v8[0] = @"GAXIPCPayloadKeyPid";
  v2 = [NSNumber numberWithInt:getpid()];
  v9[0] = v2;
  v8[1] = @"GAXIPCPayloadKeyBundleIdentifier";
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [*(a1 + 32) _sendMessageToBackboardWithIdentifier:13013 payload:v5 replyMessage:0 description:@"notify backboard GAX client did load" error:0];
  return v6;
}

void sub_2F84(id a1, BOOL a2, id a3, NSError *a4)
{
  if (a2)
  {
    _AXPerformBlockOnMainThreadAfterDelay(&stru_146B0, 0.5);
  }
}

void sub_2F9C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"GAXClientLoadedNotification" object:0];

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:UIAccessibilityGuidedAccessStatusDidChangeNotification object:0];
}

id sub_30D4(uint64_t a1)
{
  v8[0] = @"GAXIPCPayloadKeyPid";
  v2 = [NSNumber numberWithInt:getpid()];
  v9[0] = v2;
  v8[1] = @"GAXIPCPayloadKeyBundleIdentifier";
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v9[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [*(a1 + 32) _sendMessageToBackboardWithIdentifier:13012 payload:v5 replyMessage:0 description:@"notify backboard GAX client did become active" error:0];
  return v6;
}

void sub_31F8(id a1, BOOL a2, id a3, NSError *a4)
{
  if (a2)
  {
    _AXPerformBlockOnMainThreadAfterDelay(&stru_146F0, 0.5);
  }
}

void sub_3210(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:UIAccessibilityGuidedAccessStatusDidChangeNotification object:0];
}

void sub_3818(id a1)
{
  v1 = +[UIKeyboardImpl activeInstance];
  [v1 dismissKeyboard];
}

void sub_3964(id a1)
{
  v1 = +[UIKeyboardImpl activeInstance];
  [v1 dismissKeyboard];
}

void sub_3A78(uint64_t a1)
{
  v2 = [*(a1 + 32) _guidedAccessRestrictionDelegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 guidedAccessRestrictionIdentifiers];
    if (v3)
    {
      v4 = +[NSMutableArray array];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          v9 = 0;
          do
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v12 + 1) + 8 * v9);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v10 copy];
              [v4 addObject:v11];
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      [*(a1 + 40) setObject:v4 forKey:@"GAXIPCPayloadKeyRestrictionIdentifiers"];
    }
  }
}

uint64_t sub_3CB0(uint64_t a1)
{
  v2 = [*(a1 + 32) _guidedAccessRestrictionDelegate];
  if (v2)
  {
    v9 = v2;
    if (objc_opt_respondsToSelector())
    {
      v3 = [*(a1 + 40) payload];
      v4 = [v3 objectForKey:@"GAXIPCPayloadKeyRestrictionIdentifier"];

      if (v4)
      {
        v5 = [*(a1 + 40) payload];
        v6 = [v5 objectForKey:@"GAXIPCPayloadKeyRestrictionState"];
        v7 = [v6 integerValue];

        [v9 guidedAccessRestrictionWithIdentifier:v4 didChangeState:v7];
      }
    }
  }

  return _objc_release_x2();
}

void sub_3E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_3E7C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isRotating];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_3FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3FE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_3FFC(uint64_t a1)
{
  v1 = a1;
  if ([*(a1 + 32) _isAnyWindowRotating])
  {
    v2 = [NSDictionary alloc];
    v3 = [NSNumber numberWithBool:1];
    v4 = [v2 initWithObjectsAndKeys:{v3, @"GAXIPCPayloadKeyShouldAbortServerModeTransition", 0}];
    v5 = *(*(v1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Aborting transition due to rotation.", buf, 2u);
    }
  }

  else
  {
    v7 = [*(v1 + 32) _guidedAccessRestrictionDelegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 guidedAccessRestrictionIdentifiers];
      if ([v8 count])
      {
        v9 = [[NSArray alloc] initWithArray:v8 copyItems:1];
        v10 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v9, @"GAXIPCPayloadKeyRestrictionIdentifiers", 0}];
        v32 = v8;
        v33 = v1;
        v31 = v9;
        if (objc_opt_respondsToSelector())
        {
          v11 = objc_opt_new();
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v12 = v9;
          v13 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v39;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v39 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v38 + 1) + 8 * i);
                v18 = [v7 textForGuidedAccessRestrictionWithIdentifier:v17];
                if (v18)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v19 = [v18 copy];
                    [v11 setObject:v19 forKey:v17];
                  }
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
            }

            while (v14);
          }

          [v10 setObject:v11 forKey:@"GAXIPCPayloadKeyTextsForRestrictions"];
          v8 = v32;
          v1 = v33;
          v9 = v31;
        }

        if (objc_opt_respondsToSelector())
        {
          v20 = objc_opt_new();
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v21 = v9;
          v22 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v35;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v35 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v34 + 1) + 8 * j);
                v27 = [v7 detailTextForGuidedAccessRestrictionWithIdentifier:v26];
                if (v27)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v28 = [v27 copy];
                    [v20 setObject:v28 forKey:v26];
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v23);
          }

          [v10 setObject:v20 forKey:@"GAXIPCPayloadKeyDetailTextsForRestrictions"];
          v8 = v32;
          v1 = v33;
          v9 = v31;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v29 = *(*(v1 + 40) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v10;
  }
}

void sub_4588(uint64_t a1)
{
  v2 = +[AXValidationManager sharedInstance];
  [v2 performValidations:&stru_147E8 withPreValidationHandler:&stru_14808 postValidationHandler:0 safeCategoryInstallationHandler:&stru_14848];

  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];

  if (([v4 isEqualToString:AX_SafariBundleName] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"com.apple.webapp"))
  {
    v5 = +[AXValidationManager sharedInstance];
    v6 = v5;
    v7 = &stru_14868;
    v8 = &stru_14888;
    v9 = &stru_148A8;
  }

  else
  {
    if (![v4 isEqualToString:@"com.apple.datadetectors.DDActionsService"])
    {
      goto LABEL_5;
    }

    v5 = +[AXValidationManager sharedInstance];
    v6 = v5;
    v7 = &stru_148C8;
    v8 = &stru_148E8;
    v9 = &stru_14908;
  }

  [v5 performValidations:v7 withPreValidationHandler:v8 postValidationHandler:0 safeCategoryInstallationHandler:v9];

LABEL_5:
  v10 = +[AXBinaryMonitor sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4F88;
  v12[3] = &unk_14928;
  v12[4] = *(a1 + 32);
  [v10 addHandler:v12 forFramework:@"StoreKit"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4F90;
  v11[3] = &unk_14928;
  v11[4] = *(a1 + 32);
  [v10 addHandler:v11 forFramework:@"WebKit"];
  [v10 evaluateExistingBinaries];
  UIGuidedAccessSetConfigureAccessibilityFeaturesEnabledCallback();
}

BOOL sub_47A4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 validateClass:@"UIWebURLAction" hasClassMethod:@"performDefaultActionForURL: andDOMNode: withAllowedTypes: forFrame: inView:" withFullSignature:"B", "@", "@", "Q", "@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIWebURLAction" hasClassMethod:@"performDefaultActionForURL: andDOMNode: withAllowedTypes: forFrame: inView:" withFullSignature:"B", "@", "@", "Q", "@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"LSApplicationWorkspace" hasInstanceMethod:@"openSensitiveURL: withOptions:" withFullSignature:"B", "@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"LSApplicationWorkspace" hasInstanceMethod:@"openURL: withOptions:" withFullSignature:"B", "@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIActivity" hasInstanceMethod:@"activityType" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIActivityViewController" hasInstanceMethod:@"_performActivity:" withFullSignature:"v", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIDevice" hasInstanceMethod:@"setOrientation: animated:" withFullSignature:"v", "q", "B", 0];
  [(AXValidationManager *)v2 validateClass:@"UINavigationBar" hasInstanceMethod:@"backButtonViewAtPoint:" withFullSignature:"@", "{CGPoint=dd}", 0];
  [(AXValidationManager *)v2 validateClass:@"UINavigationBar" hasInstanceMethod:@"hitTest: withEvent:" withFullSignature:"@", "{CGPoint=dd}", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"UITabBarButton" hasInstanceMethod:@"pointInside: withEvent:" withFullSignature:"B", "{CGPoint=dd}", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIWindow" hasInstanceMethod:@"_targetForStolenStatusBarTouchesAtPoint: withEvent: excludingWindow:" withFullSignature:"@", "{CGPoint=dd}", "@", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIClientRotationContext" hasInstanceMethod:@"initWithClient: toOrientation: duration: andWindow:" withFullSignature:"@", "@", "q", "d", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIViewController" hasInstanceMethod:@"window: willRotateToInterfaceOrientation: duration:" withFullSignature:"v", "@", "q", "d", 0];
  [(AXValidationManager *)v2 validateClass:@"UIViewController" hasInstanceMethod:@"window: didRotateFromInterfaceOrientation:" withFullSignature:"v", "@", "q", 0];
  [(AXValidationManager *)v2 validateClass:@"_UIScrollsToTopInitiatorView" isKindOfClass:@"UIView"];
  [(AXValidationManager *)v2 validateClass:@"_UIHostedWindow" isKindOfClass:@"UIWindow"];
  objc_opt_class();
  [(AXValidationManager *)v2 validateClass:@"UIClientRotationContext" hasInstanceVariable:@"_rotationSettings" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [(AXValidationManager *)v2 validateClass:@"UIResponder" hasInstanceMethod:@"_canBecomeFirstResponder" withFullSignature:"B", 0];
  [(AXValidationManager *)v2 validateClass:@"_UINavigationInteractiveTransition" hasInstanceMethod:@"gestureRecognizerShouldBegin:" withFullSignature:"B", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"_UINavigationInteractiveTransitionBase" hasInstanceMethod:@"_parent" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"UINavigationBar" hasInstanceMethod:@"currentBackButton" withFullSignature:"@", 0];
  [(AXValidationManager *)v2 validateClass:@"UIStatusBarBreadcrumbItemView" hasInstanceMethod:@"userDidActivateButton:" withFullSignature:"v", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"_UIStatusBarAction" hasInstanceMethod:@"performWithStatusBar: completionHandler:" withFullSignature:"v", "@", "@?", 0];

  return 1;
}

BOOL sub_4B50(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAX Client Bundle"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided Access Client"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void sub_4BB0(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"GAXNSObjectPublicAPIOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"UIAutonomousSingleAppModeSessionAPIOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"UIAutonomousSingleAppModeConfigurationAPIOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUIResponderOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUIWindowOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUIViewControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUIDeviceOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUINavigationBarOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUIWebURLActionOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUITabBarButtonOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUIActivityViewControllerOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXUIClientRotationContextOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAXLSApplicationWorkspaceOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAX_UINavigationInteractiveTransitionOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAX_UIHostedWindowOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAX_UIStatusBarBreadcrumbItemViewOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAX_UIStatusBarActionOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAX_UIOpenInIBooksActivityOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAX_UIInputSwitcherViewOverride" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"GAX_UIKeyboardCameraViewControllerOverride" canInteractWithTargetClass:1];
}

BOOL sub_4D74(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 validateClass:@"WKContentView" hasInstanceMethod:@"canPerformAction: withSender:" withFullSignature:"B", ":", "@", 0];
  [(AXValidationManager *)v2 validateClass:@"_SFWebView" isKindOfClass:@"UIResponder"];

  return 1;
}

BOOL sub_4DF4(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAX Safari Dictionary Bundle"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided Access Safari Dictionary"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void sub_4E54(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"UIApplicationGuidedAccessDictionaryLookup" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"WKContentViewGuidedAccessDictionaryLookup" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"_SFWebViewGuidedAccessDictionaryLookup" canInteractWithTargetClass:1];
}

BOOL sub_4ECC(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAX Safari Dictionary Bundle"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided Access Safari Dictionary - Data Detectors"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void sub_4F2C(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 installSafeCategory:@"DDParsecNoDataViewControllerGuidedAccessDictionaryLookup" canInteractWithTargetClass:1];
  [(AXValidationManager *)v2 installSafeCategory:@"DDParsecServiceCollectionViewControllerGuidedAccessDictionaryLookup" canInteractWithTargetClass:1];
}

void sub_4F98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[GAXClient sharedInstance];
  [v6 requestAXFeatures:a1 changeEnablement:a2 completion:v5];
}

void sub_5028(id a1)
{
  v1 = [NSBundle bundleWithPath:@"/System/Library/Frameworks/StoreKit.framework"];
  v2 = [v1 isLoaded];

  if (v2)
  {
    if (qword_1BC98 != -1)
    {
      sub_AD64();
    }
  }
}

void sub_5088(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&stru_14988 withPreValidationHandler:&stru_149A8 postValidationHandler:0 safeCategoryInstallationHandler:&stru_149C8];
}

BOOL sub_5130(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAX StoreKit Bundle"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided StoreKit"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

void sub_51D0(id a1)
{
  v1 = +[AXValidationManager sharedInstance];
  [v1 performValidations:&stru_14A08 withPreValidationHandler:&stru_14A28 postValidationHandler:0 safeCategoryInstallationHandler:&stru_14A48];
}

BOOL sub_523C(id a1, AXValidationManager *a2)
{
  v2 = a2;
  [(AXValidationManager *)v2 setValidationTargetName:@"GAX WebKit Bundle"];
  [(AXValidationManager *)v2 setOverrideProcessName:@"Guided Access WebKit"];
  [(AXValidationManager *)v2 setDebugBuild:0];

  return _AXPerformValidationChecks();
}

uint64_t sub_54C0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

uint64_t sub_54E0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

void sub_5680(id a1, UIAutonomousSingleAppModeConfiguration *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = [[UIAutonomousSingleAppModeSession alloc] initWithEffectiveConfiguration:v2];

    v4 = currentlyActiveSession;
    currentlyActiveSession = v3;

    [currentlyActiveSession setActive:1];
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_AD8C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void sub_5838(id a1, UIAutonomousSingleAppModeConfiguration *a2)
{
  v2 = a2;
  v3 = GAXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "potentially setting session, config is %@", &v14, 0xCu);
  }

  if (v2)
  {
    v4 = [[UIAutonomousSingleAppModeSession alloc] initWithEffectiveConfiguration:v2];
    v5 = currentlyActiveSession;
    currentlyActiveSession = v4;

    [currentlyActiveSession setActive:1];
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_AD8C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

void sub_5BEC(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5C94;
  block[3] = &unk_14B20;
  v6 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_5C94(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [[UIAutonomousSingleAppModeSession alloc] initWithEffectiveConfiguration:*(a1 + 32)];
    v3 = currentlyActiveSession;
    currentlyActiveSession = v2;

    [currentlyActiveSession setActive:1];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    if (*(a1 + 48) == 1)
    {
      v5 = *(v4 + 16);

      v5();
    }

    else
    {
      v6 = UIAutonomousSingleAppModeErrorDomain;
      v11 = NSLocalizedDescriptionKey;
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"ERROR_REQUESTING_SESSION" value:0 table:@"GuidedAccessAppStrings"];
      v12 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v10 = [NSError errorWithDomain:v6 code:2 userInfo:v9];

      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_60EC(uint64_t a1)
{
  v2 = UIAutonomousSingleAppModeErrorDomain;
  v3 = *(a1 + 40);
  v8 = NSLocalizedDescriptionKey;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ERROR_ENDING_SESSION" value:0 table:@"GuidedAccessAppStrings"];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [NSError errorWithDomain:v2 code:v3 userInfo:v6];

  (*(*(a1 + 32) + 16))();
}

void sub_622C(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_62B8;
  block[3] = &unk_14B20;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_62B8(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = currentlyActiveSession;
    if (*(a1 + 32) == currentlyActiveSession)
    {
      currentlyActiveSession = 0;
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 48) == 1)
    {
      v4 = *(v3 + 16);

      v4();
    }

    else
    {
      v5 = GAXLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Request sent to AXBackboardServer to end session but came back with failure", v11, 2u);
      }

      v6 = UIAutonomousSingleAppModeErrorDomain;
      v12 = NSLocalizedDescriptionKey;
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"ERROR_ENDING_SESSION" value:0 table:@"GuidedAccessAppStrings"];
      v13 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = [NSError errorWithDomain:v6 code:2 userInfo:v9];

      (*(*(a1 + 40) + 16))();
    }
  }
}

uint64_t sub_6AD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_6AEC(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentsOfUserInterfaceItem:@"contextMenu"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

BOOL sub_6C40(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [v5 identifier];

  if ([v6 isEqualToString:@"WKElementActionTypeOpen"])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 isEqualToString:@"WKElementActionTypeCopy"];
  }

  return v7;
}

void sub_83CC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id GAXFallbackValueForProfileKey(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (qword_1BCC0 == -1)
  {
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_B038();
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  v6 = [qword_1BCB8 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    goto LABEL_10;
  }

LABEL_6:
  v8 = qword_1BCB0;
  v9 = [NSNumber numberWithUnsignedInt:a2];
  v10 = [v8 objectForKey:v9];
  v7 = [v10 objectForKey:v5];

  if (!v7)
  {
    v11 = GAXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_B04C(v5, v11);
    }

    v7 = 0;
  }

LABEL_10:

  return v7;
}

void sub_8AE4(id a1)
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
  v53[8] = &off_17DB8;
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
  v51[8] = &off_17DB8;
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
  v49[8] = &off_17DB8;
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
  v48[18] = @"GAXProfileAllowsAXToggleVoiceOver";
  v48[19] = @"GAXProfileAllowsAXToggleZoom";
  v49[19] = &__kCFBooleanFalse;
  v49[20] = &__kCFBooleanFalse;
  v48[20] = @"GAXProfileAllowsAXToggleInvertColors";
  v48[21] = @"GAXProfileAllowsAXToggleGrayscale";
  v49[21] = &__kCFBooleanFalse;
  v49[22] = &__kCFBooleanFalse;
  v48[22] = 94208;
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
  v24 = qword_1BCB8;
  qword_1BCB8 = v23;

  v44[0] = &off_17D70;
  v44[1] = &off_17D88;
  v45[0] = v43;
  v45[1] = v42;
  v44[2] = &off_17DA0;
  v45[2] = v22;
  v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
  v26 = qword_1BCB0;
  qword_1BCB0 = v25;
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

id GAXAllowedRemoteUIProcesses()
{
  if (qword_1BCD0 != -1)
  {
    sub_B0C4();
  }

  v1 = qword_1BCC8;

  return v1;
}

void sub_9CB0(id a1)
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
  v2 = qword_1BCC8;
  qword_1BCC8 = v1;
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

void sub_A718(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Could not find a Guided Access key to match the supplied UIAutonomousSingleAppModeConfiguration key: %@", &v2, 0xCu);
}

void sub_A7A4(id *a1)
{
  v1 = [*a1 _messageServiceName];
  sub_44D8();
  sub_44F0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_A84C(NSObject *a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  sub_44D8();
  _os_log_debug_impl(&dword_0, a1, OS_LOG_TYPE_DEBUG, "GAX Client is finishing loading:(%{public}@). Will notify GAX now.", v4, 0xCu);
}

void sub_A900()
{
  sub_44D8();
  sub_44E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_A970()
{
  sub_44D8();
  sub_44E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_A9E0()
{
  sub_44D8();
  sub_44E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_AA50()
{
  sub_44D8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "could not send message to backboard: %@ (%@)", v2, 0x16u);
}

void sub_AAD4(const char *a1)
{
  sel_getName(a1);
  sub_44D8();
  sub_44F0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_AB54(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_44E4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_AC40()
{
  sub_44D8();
  sub_44E4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_AEC0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "unknown style %d! using AAC with profile fallback to recover.", v2, 8u);
}

void sub_AF38(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Unable to continue with context menu configuration: %@", &v2, 0xCu);
}

void sub_AFB0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Unexpected format for context menu contents: isImage %@, isLink %@", &v3, 0x16u);
}

void sub_B04C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "No fallback value was registered for profile key: %@", &v2, 0xCu);
}
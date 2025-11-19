id PHDefaultLog()
{
  if (PHDefaultLog_onceToken != -1)
  {
    PHDefaultLog_cold_1();
  }

  v1 = PHDefaultLog_PHDefaultLog;

  return v1;
}

void InitializeIconAndTitle(void *a1)
{
  v1 = a1;
  v2 = +[UIApplication shouldMakeUIForDefaultPNG];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      v3 = [[UITabBarItem alloc] initWithTabBarSystemItem:objc_msgSend(objc_opt_class() tag:{"tabBarSystemItem"), 0}];
      v4 = objc_opt_new();
      [v3 setStandardAppearance:v4];

      [v1 setTabBarItem:v3];
    }

    else
    {
      v3 = [v1 tabBarItem];
      if (objc_opt_respondsToSelector())
      {
        v5 = [v1 tabBarIconImage];
        [v3 setImage:v5];
      }
    }
  }

  v6 = &stru_50D80;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v1 tabBarIconName];
  }

  if (v2)
  {
    v7 = &stru_50D80;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  if ([v3 isSystemItem])
  {
    [v3 _setInternalTitle:v8];
  }

  else
  {
    [v3 setTitle:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    [v1 setTitle:v8];
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __InitializeIconAndTitle_block_invoke;
    v10[3] = &unk_4C770;
    v11 = v1;
    v12 = v3;
    dispatch_async(v9, v10);
  }
}

void __InitializeIconAndTitle_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() badge];
  v5 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __InitializeIconAndTitle_block_invoke_2;
  block[3] = &unk_4CBA0;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void __InitializeIconAndTitle_block_invoke_2(void *a1)
{
  v1 = a1[4];
  v2 = PhoneStringForBadgeValue(a1[5], a1[6]);
  [v1 setBadgeValue:v2];
}

__CFString *PhoneStringForBadgeValue(char a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x7FFFFFFF)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Found unexpected badge count (%llu). Defaulting to zero.", buf, 0xCu);
    }

    if (a1)
    {
      v2 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v2 = @" ";
    goto LABEL_12;
  }

  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v7 = SharedNumberFormatter();
      v8 = [NSNumber numberWithUnsignedLongLong:v2];
      v9 = [v7 stringFromNumber:v8];

      v2 = [[NSString alloc] initWithFormat:@"%@+", v9];
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a2)
  {
    v5 = SharedNumberFormatter();
    v6 = [NSNumber numberWithUnsignedLongLong:v2];
    v2 = [v5 stringFromNumber:v6];
  }

LABEL_12:

  return v2;
}

uint64_t PHShouldAttemptCallWithDialRequest(void *a1)
{
  v1 = a1;
  v2 = [v1 provider];
  v3 = [v2 isTelephonyProvider];

  if (v3)
  {
    v4 = [v1 dialType];
    v5 = [v1 localSenderIdentityUUID];
    v6 = PHShouldAttemptTelephonyCallWithDialTypeAndSenderIdentityUUID(v4, v5);
  }

  else
  {
    v7 = [v1 provider];
    v8 = [v7 isSuperboxProvider];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = PHShouldAttemptFaceTimeCall();
    }
  }

  return v6;
}

uint64_t PHShouldAttemptTelephonyCallWithDialTypeAndSenderIdentityUUID(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CUTWeakLinkClass() sharedInstance];
  v5 = objc_alloc_init(RadiosPreferences);
  v6 = [v5 airplaneMode];

  if (!v6)
  {
    v10 = 1;
    goto LABEL_21;
  }

  if (v3)
  {
    v7 = [TUCallCapabilities senderIdentityCapabilitiesWithUUID:v3];
    v8 = v7;
    if (a1 == 1)
    {
      v9 = [v7 canAttemptEmergencyCallsWithoutCellularConnection];
    }

    else
    {
      v9 = [v7 canAttemptTelephonyCallsWithoutCellularConnection];
    }

    v11 = v9;

    if (v11)
    {
LABEL_11:
      v10 = 1;
      if ([v4 networkReachable])
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }
  }

  else if (a1 == 1)
  {
    if ((+[TUCallCapabilities canAttemptEmergencyCallsWithoutCellularConnection]& 1) != 0)
    {
      goto LABEL_11;
    }
  }

  else if (+[TUCallCapabilities canAttemptTelephonyCallsWithoutCellularConnection])
  {
    goto LABEL_11;
  }

  LODWORD(v10) = 0;
LABEL_12:
  v12 = PHDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      v13 = @"NO";
    }

    else
    {
      v13 = @"YES";
    }

    if ([v4 networkReachable])
    {
      v14 = @"NO";
    }

    else
    {
      v14 = @"YES";
    }

    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Aborting telephony call, the device is in airplane mode and, cannot make telephony calls while in airplane mode (%@) or is not connected to an active Wi-Fi network (%@).", &v16, 0x16u);
  }

  v10 = 0;
LABEL_21:

  return v10;
}

uint64_t sub_3D90()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_51B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_56FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _inCallServiceDidAppear(uint64_t a1, void *a2)
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "TUCallCenterInCallServiceDidAppearNotification: Received in ", buf, 2u);
  }

  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "DialerAnimation: Calling _resetButtonAnimation in ", v6, 2u);
  }

  return [a2 _resetButtonAnimation];
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id PHFormatDialerLCDViewText(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 characterAtIndex:0];
    if (v2 == 59 || v2 == 44)
    {
      v3 = [v1 substringFromIndex:1];

      v1 = v3;
    }
  }

  v4 = TUNetworkCountryCode();

  if (v4)
  {
    v5 = TUNetworkCountryCode();
    v6 = UIFormattedPhoneNumberFromStringWithCountry();
  }

  else
  {
    v6 = UIFormattedPhoneNumberFromString();
  }

  return v6;
}

BOOL PHShouldShowWifiCallingAlert()
{
  v0 = _wifiCallingAlertShowCount();
  v1 = PHDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (v0 >= 3)
    {
      v2 = @"NO";
    }

    else
    {
      v2 = @"YES";
    }

    v4 = 138412546;
    v5 = v2;
    v6 = 2048;
    v7 = _wifiCallingAlertShowCount();
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Showing wifi calling alert: %@, shown count is %ld", &v4, 0x16u);
  }

  return v0 < 3;
}

id _wifiCallingAlertShowCount()
{
  v0 = PHPreferencesGetValue();
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [v0 unsignedIntegerValue];
    }

    else
    {
      v1 = &dword_0 + 3;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void PHIncrementWifiCallingAlertShowCount()
{
  v0 = _wifiCallingAlertShowCount();
  if (v0 != -1)
  {
    v1 = [NSNumber numberWithUnsignedInteger:v0 + 1];
    PHPreferencesSetValue();
    v2 = PHDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138412290;
      v4 = v1;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Incrementing wifi calling alert show count to %@", &v3, 0xCu);
    }
  }
}

BOOL PHStringShouldAutoDialGivenLastCharacter(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 != 35)
  {
    goto LABEL_24;
  }

  v5 = [v3 rangeOfString:@"**0" options:8];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v4 isEqualToString:@"*#06#"])
    {
      v7 = 1;
      goto LABEL_25;
    }

LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  v8 = &v5[v6];
  v9 = [v4 length];
  v10 = v8 + 1;
  if (v9 <= (v8 + 1))
  {
    goto LABEL_24;
  }

  v11 = v9;
  if (([v4 characterAtIndex:v8] & 0xFFFE) != 0x34)
  {
    goto LABEL_24;
  }

  v12 = [v4 characterAtIndex:v8 + 1];
  if (v12 == 50)
  {
    v10 = v8 + 2;
    if (v11 <= (v8 + 2))
    {
      goto LABEL_24;
    }

    v12 = [v4 characterAtIndex:v8 + 2];
  }

  if (v12 != 42 || v10 >= (v11 - 2))
  {
    goto LABEL_24;
  }

  v13 = v11 - 1;
  do
  {
    v14 = [v4 characterAtIndex:v10];
    v7 = v14 == 42 || v14 - 48 < 0xA;
    ++v10;
  }

  while (v7 && v10 < v13);
LABEL_25:

  return v7;
}

uint64_t PHShouldAttemptFaceTimeCall()
{
  v0 = [CUTWeakLinkClass() sharedInstance];
  v1 = [CUTWeakLinkClass() sharedInstance];
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 frontmostCall];
  if ([v0 validNetworkReachable])
  {
    v4 = 1;
  }

  else
  {
    if ([v2 hasCurrentAudioCalls] && (objc_msgSend(v3, "supportsSimultaneousVoiceAndData") & 1) == 0 && (TUPreferredFaceTimeBundleIdentifier(), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v1, "wifiAllowedForBundleId:", v5), v5, v6))
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Attempting FaceTime call because a telephone call is in progress and the carrier does not support simultaneous voice and data.", buf, 2u);
      }

      v4 = 1;
    }

    else
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Aborting FaceTime call because the network is unavailable.", v9, 2u);
      }

      v4 = 0;
    }
  }

  return v4;
}

id PHIsInAirplaneMode()
{
  v0 = objc_alloc_init(RadiosPreferences);
  v1 = [v0 airplaneMode];

  return v1;
}

uint64_t _emergencyDialerPresenceToken()
{
  if ((byte_5CB24 & 1) == 0 && !notify_register_check("com.apple.InCallService.emergencydialerpresence", &_emergencyDialerPresenceToken_notifyToken))
  {
    byte_5CB24 = 1;
  }

  return *&_emergencyDialerPresenceToken_notifyToken;
}

BOOL PHGetEmergencyDialerPresenceTokenValue()
{
  if ((byte_5CB24 & 1) == 0 && !notify_register_check("com.apple.InCallService.emergencydialerpresence", &_emergencyDialerPresenceToken_notifyToken))
  {
    byte_5CB24 = 1;
  }

  state64 = 0;
  if ((*&_emergencyDialerPresenceToken_notifyToken & 0x100000000) == 0)
  {
    return 0;
  }

  notify_get_state(_emergencyDialerPresenceToken_notifyToken, &state64);
  return state64 != 0;
}

uint64_t PHSetEmergencyDialerPresenceTokenValue(uint64_t state64)
{
  v1 = state64;
  if ((byte_5CB24 & 1) == 0 && !notify_register_check("com.apple.InCallService.emergencydialerpresence", &_emergencyDialerPresenceToken_notifyToken))
  {
    byte_5CB24 = 1;
  }

  result = *&_emergencyDialerPresenceToken_notifyToken;
  if ((*&_emergencyDialerPresenceToken_notifyToken & 0x100000000) != 0)
  {
    notify_set_state(_emergencyDialerPresenceToken_notifyToken, v1);

    return notify_post("com.apple.InCallService.emergencydialerpresence");
  }

  return result;
}

BOOL PHShouldUseFieldTestBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = 1;
  if ([v1 compare:@"mav10" options:1])
  {
    v2 = 1;
    if ([v1 compare:@"mav13" options:1])
    {
      v2 = 1;
      if ([v1 compare:@"mav16" options:1])
      {
        v2 = [v1 compare:@"mav17" options:1] == 0;
      }
    }
  }

  return v2;
}

BOOL PHLaunchFieldTestApplicationIfNecessaryForDestinationID(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"*3001#12345#*"])
  {
    v2 = CUTWeakLinkClass();
    v3 = v2 != 0;
    if (v2)
    {
      v4 = v2;
      v5 = MGGetStringAnswer();
      v6 = @"com.apple.FTMInternal";
      if (([v5 hasPrefix:@"ice"]& 1) == 0 && PHShouldUseFieldTestBundleIdentifier(v5))
      {
        v6 = @"com.apple.fieldtest";
      }

      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        v11 = v1;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%@ matches the field test code, launching the legacy field test app %@", &v10, 0x16u);
      }

      v8 = [v4 sharedService];
      [v8 openApplication:v6 options:&__NSDictionary0__struct withResult:0];
    }

    else
    {
      v5 = PHDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        PHLaunchFieldTestApplicationIfNecessaryForDestinationID_cold_1(v5);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t uiDeviceOrientationForBSInterfaceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_31240[a1 - 1];
  }
}

void sub_11E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getSBSGetScreenLockStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = off_4C880;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBSGetScreenLockStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSGetScreenLockStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id PHOversizedLog()
{
  if (PHOversizedLog_onceToken != -1)
  {
    PHOversizedLog_cold_1();
  }

  v1 = PHOversizedLog_PHOversizedLog;

  return v1;
}

id PHOversizedLogQueue()
{
  if (PHOversizedLogQueue_onceToken != -1)
  {
    PHOversizedLogQueue_cold_1();
  }

  v1 = PHOversizedLogQueue_PHOversizedLogQueue;

  return v1;
}

void sub_1A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 256), 8);
  _Block_object_dispose((v53 - 224), 8);
  _Block_object_dispose((v53 - 176), 8);
  _Block_object_dispose((v53 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1F040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

id SharedNumberFormatter()
{
  v0 = formatter;
  if (!formatter)
  {
    if (onceToken != -1)
    {
      SharedNumberFormatter_cold_1();
    }

    v0 = formatter;
  }

  return v0;
}

void ResetSharedNumberFormatter()
{
  v0 = formatter;
  formatter = 0;
}

Swift::Int sub_23888()
{
  v1 = *v0;
  sub_2D8D8();
  sub_2D8E8(v1);
  return sub_2D8F8();
}

Swift::Int sub_238FC()
{
  v1 = *v0;
  sub_2D8D8();
  sub_2D8E8(v1);
  return sub_2D8F8();
}

unint64_t sub_23940@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2586C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23A08()
{
  v1 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23AA0(char a1)
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23AF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23B48(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_23C48()
{
  v1 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23CE0(char a1)
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23D30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23D88(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_23E84()
{
  v1 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23F1C(char a1)
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23F6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23FC4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_240C0()
{
  v1 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24158(uint64_t a1)
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24200(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_242FC()
{
  v1 = OBJC_IVAR___MPDialerInterceptReporter_firstShownOption;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24394(uint64_t a1)
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_firstShownOption;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_firstShownOption;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2443C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_firstShownOption;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24538()
{
  v1 = OBJC_IVAR___MPDialerInterceptReporter_secondShownOption;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_245D0(uint64_t a1)
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_secondShownOption;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_secondShownOption;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24678(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_secondShownOption;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_2472C(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  swift_beginAccess();
  v2[v5] = a2;
  switch(a1)
  {
    case 4:
      v12 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
      swift_beginAccess();
      v2[v12] = 1;
      v13 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
      swift_beginAccess();
      *&v2[v13] = 4;
      v9 = sub_2D798();
      v14 = swift_allocObject();
      *(v14 + 16) = v2;
      v21 = sub_2587C;
      v22 = v14;
      aBlock = _NSConcreteStackBlock;
      v18 = 1107296256;
      v11 = &block_descriptor;
      goto LABEL_7;
    case 3:
      v7 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
      swift_beginAccess();
      v2[v7] = 1;
      v8 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
      swift_beginAccess();
      *&v2[v8] = 3;
      v9 = sub_2D798();
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      v21 = sub_2611C;
      v22 = v10;
      aBlock = _NSConcreteStackBlock;
      v18 = 1107296256;
      v11 = &block_descriptor_11;
LABEL_7:
      v19 = sub_24C5C;
      v20 = v11;
      v15 = _Block_copy(&aBlock);
      v16 = v2;

      AnalyticsSendEventLazy();
      _Block_release(v15);

      return;
    case 0:
      v6 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
      swift_beginAccess();
      v2[v6] = 1;
      break;
  }
}

void sub_24A04(uint64_t a1)
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  swift_beginAccess();
  *&v1[v3] = a1;
  v4 = sub_2D798();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  aBlock[4] = sub_2611C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24C5C;
  aBlock[3] = &block_descriptor_18;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

void sub_24B6C()
{
  v1 = sub_2D798();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_2611C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_24C5C;
  v5[3] = &block_descriptor_25;
  v3 = _Block_copy(v5);
  v4 = v0;

  AnalyticsSendEventLazy();
  _Block_release(v3);
}

Class sub_24C5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_25F80();
    v5.super.isa = sub_2D788().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_24DE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5CA38, &qword_314F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_313C0;
  strcpy((inited + 32), "apple_support");
  *(inited + 46) = -4864;
  v2 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
  swift_beginAccess();
  v3 = *(v0 + v2);
  *(inited + 48) = sub_2D818();
  strcpy((inited + 56), "autocomplete");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v4 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(inited + 72) = sub_2D818();
  strcpy((inited + 80), "saved_contact");
  *(inited + 94) = -4864;
  v6 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *(inited + 96) = sub_2D818();
  strcpy((inited + 104), "shown_option_1");
  *(inited + 119) = -18;
  v8 = OBJC_IVAR___MPDialerInterceptReporter_firstShownOption;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (v9 > 2)
  {
    if (v9 <= 4 || v9 == 5 || v9 == 6)
    {
      goto LABEL_11;
    }

LABEL_32:
    v21 = *(v0 + v8);
    goto LABEL_35;
  }

  if (v9 > 1 && v9 != 2)
  {
    goto LABEL_32;
  }

LABEL_11:
  v10 = sub_2D798();

  *(inited + 120) = v10;
  strcpy((inited + 128), "shown_option_2");
  *(inited + 143) = -18;
  v11 = OBJC_IVAR___MPDialerInterceptReporter_secondShownOption;
  swift_beginAccess();
  v12 = *(v0 + v11);
  if (v12 <= 2)
  {
    if (v12 <= 1 || v12 == 2)
    {
      goto LABEL_21;
    }

LABEL_33:
    v20 = *(v0 + v11);
    goto LABEL_35;
  }

  if (v12 > 4 && v12 != 5 && v12 != 6)
  {
    goto LABEL_33;
  }

LABEL_21:
  v13 = sub_2D798();

  *(inited + 144) = v13;
  *(inited + 152) = 0x64657463656C6573;
  *(inited + 160) = 0xEF6E6F6974706F5FLL;
  v14 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  swift_beginAccess();
  v15 = *(v0 + v14);
  if (v15 <= 2)
  {
    if (v15 <= 1 || v15 == 2)
    {
      goto LABEL_31;
    }
  }

  else if (v15 <= 4 || v15 == 5 || v15 == 6)
  {
LABEL_31:
    v16 = sub_2D798();

    *(inited + 168) = v16;
    v17 = sub_25E7C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5CA40, &qword_314F8);
    swift_arrayDestroy();
    return v17;
  }

  v19 = *(v0 + v14);
LABEL_35:
  result = sub_2D8C8();
  __break(1u);
  return result;
}

id DialerInterceptReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DialerInterceptReporter.init()()
{
  v0[OBJC_IVAR___MPDialerInterceptReporter_appleSupport] = 0;
  v0[OBJC_IVAR___MPDialerInterceptReporter_autocomplete] = 0;
  v0[OBJC_IVAR___MPDialerInterceptReporter_savedContact] = 0;
  *&v0[OBJC_IVAR___MPDialerInterceptReporter_selectedOption] = 5;
  *&v0[OBJC_IVAR___MPDialerInterceptReporter_firstShownOption] = 5;
  *&v0[OBJC_IVAR___MPDialerInterceptReporter_secondShownOption] = 5;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DialerInterceptReporter();
  return objc_msgSendSuper2(&v2, "init");
}

id DialerInterceptReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DialerInterceptReporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_25498(uint64_t a1, id *a2)
{
  result = sub_2D7A8();
  *a2 = 0;
  return result;
}

uint64_t sub_25510(uint64_t a1, id *a2)
{
  v3 = sub_2D7B8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25590@<X0>(void *a1@<X8>)
{
  sub_2D7C8();
  v2 = sub_2D798();

  *a1 = v2;
  return result;
}

uint64_t sub_255D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2D798();

  *a2 = v5;
  return result;
}

uint64_t sub_2561C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2D7C8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25648(uint64_t a1)
{
  v2 = sub_26094(&qword_5CA70);
  v3 = sub_26094(&qword_5CA78);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_256E0()
{
  v1 = *v0;
  sub_2D7C8();
  v2 = sub_2D7F8();

  return v2;
}

uint64_t sub_2571C()
{
  v1 = *v0;
  sub_2D7C8();
  sub_2D7D8();
}

Swift::Int sub_25770()
{
  v1 = *v0;
  sub_2D7C8();
  sub_2D8D8();
  sub_2D7D8();
  v2 = sub_2D8F8();

  return v2;
}

uint64_t sub_257E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2D7C8();
  v6 = v5;
  if (v4 == sub_2D7C8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2D8B8();
  }

  return v9 & 1;
}

unint64_t sub_2586C(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_258E0()
{
  result = qword_5CA28;
  if (!qword_5CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5CA28);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25DD8(uint64_t a1, int a2)
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

uint64_t sub_25DF8(uint64_t result, int a2, int a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5CA48, &qword_31500);
    v3 = sub_2D898();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2B488(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_25F80()
{
  result = qword_60728;
  if (!qword_60728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_60728);
  }

  return result;
}

void sub_25FE0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_26094(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIContentSizeCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = *(*(sub_2D738() - 8) + 64);
  (off_50818)();
  v11 = sub_2D618();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = (off_50818)();
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_50818(v14);
  v18 = &v69 - v17;
  v19 = sub_2D648();
  v20 = *(*(v19 - 8) + 64);
  off_50818(v19 - 8);
  v71 = v12;
  v21 = *(v12 + 16);
  v21(&v5[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_frontCircleConfig], a1, v11);
  v21(&v5[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_backCircleConfig], a2, v11);
  v22 = &v5[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_size];
  *v22 = a3;
  v22[1] = a4;
  v21(v18, a1, v11);
  v72 = a2;
  v21(v16, a2, v11);
  sub_2D638();
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5CA80, &qword_316C0));
  *&v5[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_hostingController] = sub_2D628();
  v24 = type metadata accessor for GlassCutoutCirclesOverlayViewController();
  v73.receiver = v5;
  v73.super_class = v24;
  v25 = objc_msgSendSuper2(&v73, "initWithNibName:bundle:", 0, 0);
  v26 = OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_hostingController;
  v27 = *&v25[OBJC_IVAR___PHGlassCutoutCirclesOverlayViewController_hostingController];
  v28 = v25;
  [v28 addChildViewController:v27];
  v29 = [v28 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  v31 = [*&v25[v26] view];
  if (!v31)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = v31;
  [v30 addSubview:v31];

  v33 = [*&v25[v26] view];
  if (!v33)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v34 = v33;
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = *&v25[v26];
  sub_2D718();

  v36 = *&v25[v26];
  sub_2D728();
  sub_2D708();

  v37 = [*&v25[v26] view];
  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v38 = v37;
  v39 = [objc_opt_self() clearColor];
  [v38 setBackgroundColor:v39];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5CA90, qword_316C8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_316B0;
  v41 = [*&v25[v26] view];
  if (!v41)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v42 = v41;
  v70 = a1;
  v43 = [v41 topAnchor];

  v44 = [v28 view];
  if (!v44)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v45 = [v44 topAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v40 + 32) = v46;
  v47 = [*&v25[v26] view];
  if (!v47)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = v47;
  v49 = [v47 bottomAnchor];

  v50 = [v28 view];
  if (!v50)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = [v50 bottomAnchor];

  v52 = [v49 constraintEqualToAnchor:v51];
  *(v40 + 40) = v52;
  v53 = [*&v25[v26] view];
  if (!v53)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v54 = v53;
  v55 = [v53 leadingAnchor];

  v56 = [v28 view];
  if (!v56)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57];
  *(v40 + 48) = v58;
  v59 = [*&v25[v26] view];
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = v59;
  v61 = [v59 trailingAnchor];

  v62 = [v28 view];
  if (v62)
  {
    v63 = objc_opt_self();
    v64 = [v62 trailingAnchor];

    v65 = [v61 constraintEqualToAnchor:v64];
    *(v40 + 56) = v65;
    sub_26930();
    isa = sub_2D808().super.isa;

    [v63 activateConstraints:isa];

    v67 = *&v25[v26];
    [v67 didMoveToParentViewController:v28];

    v68 = *(v71 + 8);
    v68(v72, v11);
    v68(v70, v11);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t type metadata accessor for GlassCutoutCirclesOverlayViewController()
{
  result = qword_5CA98;
  if (!qword_5CA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26930()
{
  result = qword_60738;
  if (!qword_60738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_60738);
  }

  return result;
}

id GlassCutoutCirclesOverlayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2D798();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GlassCutoutCirclesOverlayViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassCutoutCirclesOverlayViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s11CallsDialer39GlassCutoutCirclesOverlayViewControllerC023makeTextSOSButtonCircleG0So6UIViewCyFZ_0()
{
  v0 = sub_2D5E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50818(v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D5F8();
  v36 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50818(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D618();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  v12 = off_50818(v10);
  v40 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = off_50818(v12);
  v39 = &v35 - v15;
  v16 = off_50818(v14);
  v18 = &v35 - v17;
  off_50818(v16);
  v20 = &v35 - v19;
  v21 = *(v6 + 104);
  v21(v9, enum case for CircleOverlayConfig.CircleCorner.topRight(_:), v5);
  v22 = *(v1 + 104);
  v22(v4, enum case for CircleOverlayConfig.CircleScale.small(_:), v0);
  sub_2D748();
  sub_2D778();
  sub_2D608();
  v21(v9, enum case for CircleOverlayConfig.CircleCorner.topLeft(_:), v36);
  v23 = v18;
  v25 = v37;
  v24 = v38;
  v22(v4, enum case for CircleOverlayConfig.CircleScale.large(_:), v0);
  sub_2D768();
  sub_2D778();
  sub_2D608();
  v26 = *(v25 + 16);
  v27 = v39;
  v26(v39, v20, v24);
  v28 = v40;
  v26(v40, v23, v24);
  v29 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v27, v28, 93.0, 75.0);
  v31 = v30;
  result = [v30 view];
  if (result)
  {
    v33 = result;

    v34 = *(v25 + 8);
    v34(v23, v24);
    v34(v20, v24);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s11CallsDialer39GlassCutoutCirclesOverlayViewControllerC032makeEndHoldAndAcceptButtonCircleG0So6UIViewCyFZ_0()
{
  v0 = sub_2D5E8();
  v37 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50818(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D5F8();
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50818(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D618();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  v12 = *(v11 + 64);
  v13 = off_50818(v10);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = off_50818(v13);
  v41 = &v37 - v16;
  v17 = off_50818(v15);
  v19 = &v37 - v18;
  off_50818(v17);
  v21 = &v37 - v20;
  v22 = *(v6 + 104);
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.topLeft(_:), v5);
  v23 = enum case for CircleOverlayConfig.CircleScale.regular(_:);
  v24 = *(v1 + 104);
  v24(v4, enum case for CircleOverlayConfig.CircleScale.regular(_:), v0);
  sub_2D748();
  sub_2D778();
  sub_2D608();
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.bottomRight(_:), v38);
  v25 = v39;
  v24(v4, v23, v37);
  v26 = v19;
  v27 = v40;
  sub_2D768();
  sub_2D778();
  sub_2D608();
  v28 = *(v27 + 16);
  v29 = v41;
  v28(v41, v26, v25);
  v30 = v42;
  v28(v42, v21, v25);
  v31 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v29, v30, 100.0, 100.0);
  v33 = v32;
  result = [v32 view];
  if (result)
  {
    v35 = result;

    v36 = *(v27 + 8);
    v36(v26, v25);
    v36(v21, v25);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s11CallsDialer39GlassCutoutCirclesOverlayViewControllerC028makeEndAndAcceptButtonCircleG0So6UIViewCyFZ_0()
{
  v0 = sub_2D5E8();
  v37 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50818(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D5F8();
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50818(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D618();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  v12 = *(v11 + 64);
  v13 = off_50818(v10);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = off_50818(v13);
  v41 = &v37 - v16;
  v17 = off_50818(v15);
  v19 = &v37 - v18;
  off_50818(v17);
  v21 = &v37 - v20;
  v22 = *(v6 + 104);
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.topLeft(_:), v5);
  v23 = enum case for CircleOverlayConfig.CircleScale.regular(_:);
  v24 = *(v1 + 104);
  v24(v4, enum case for CircleOverlayConfig.CircleScale.regular(_:), v0);
  sub_2D748();
  sub_2D778();
  sub_2D608();
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.bottomRight(_:), v38);
  v25 = v39;
  v24(v4, v23, v37);
  v26 = v19;
  v27 = v40;
  sub_2D768();
  sub_2D778();
  sub_2D608();
  v28 = *(v27 + 16);
  v29 = v41;
  v28(v41, v26, v25);
  v30 = v42;
  v28(v42, v21, v25);
  v31 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v29, v30, 90.0, 90.0);
  v33 = v32;
  result = [v32 view];
  if (result)
  {
    v35 = result;

    v36 = *(v27 + 8);
    v36(v26, v25);
    v36(v21, v25);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s11CallsDialer39GlassCutoutCirclesOverlayViewControllerC029makeHoldAndAcceptButtonCircleG0So6UIViewCyFZ_0()
{
  v0 = sub_2D5E8();
  v37 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50818(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D5F8();
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50818(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D618();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  v12 = *(v11 + 64);
  v13 = off_50818(v10);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = off_50818(v13);
  v41 = &v37 - v16;
  v17 = off_50818(v15);
  v19 = &v37 - v18;
  off_50818(v17);
  v21 = &v37 - v20;
  v22 = *(v6 + 104);
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.topLeft(_:), v5);
  v23 = enum case for CircleOverlayConfig.CircleScale.regular(_:);
  v24 = *(v1 + 104);
  v24(v4, enum case for CircleOverlayConfig.CircleScale.regular(_:), v0);
  sub_2D778();
  sub_2D768();
  sub_2D608();
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.bottomRight(_:), v38);
  v25 = v39;
  v24(v4, v23, v37);
  v26 = v19;
  v27 = v40;
  sub_2D768();
  sub_2D778();
  sub_2D608();
  v28 = *(v27 + 16);
  v29 = v41;
  v28(v41, v26, v25);
  v30 = v42;
  v28(v42, v21, v25);
  v31 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v29, v30, 90.0, 90.0);
  v33 = v32;
  result = [v32 view];
  if (result)
  {
    v35 = result;

    v36 = *(v27 + 8);
    v36(v26, v25);
    v36(v21, v25);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s11CallsDialer39GlassCutoutCirclesOverlayViewControllerC029makeEndAcceptVoipButtonCircleG0So6UIViewCyFZ_0()
{
  v0 = sub_2D5E8();
  v37 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50818(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D5F8();
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50818(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D618();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  v12 = *(v11 + 64);
  v13 = off_50818(v10);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = off_50818(v13);
  v41 = &v37 - v16;
  v17 = off_50818(v15);
  v19 = &v37 - v18;
  off_50818(v17);
  v21 = &v37 - v20;
  v22 = *(v6 + 104);
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.topLeft(_:), v5);
  v23 = enum case for CircleOverlayConfig.CircleScale.regular(_:);
  v24 = *(v1 + 104);
  v24(v4, enum case for CircleOverlayConfig.CircleScale.regular(_:), v0);
  sub_2D748();
  sub_2D778();
  sub_2D608();
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.bottomRight(_:), v38);
  v25 = v39;
  v24(v4, v23, v37);
  v26 = v19;
  v27 = v40;
  sub_2D758();
  sub_2D778();
  sub_2D608();
  v28 = *(v27 + 16);
  v29 = v41;
  v28(v41, v26, v25);
  v30 = v42;
  v28(v42, v21, v25);
  v31 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v29, v30, 100.0, 100.0);
  v33 = v32;
  result = [v32 view];
  if (result)
  {
    v35 = result;

    v36 = *(v27 + 8);
    v36(v26, v25);
    v36(v21, v25);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s11CallsDialer39GlassCutoutCirclesOverlayViewControllerC033makeEndHoldAcceptVoipButtonCircleG0So6UIViewCyFZ_0()
{
  v0 = sub_2D5E8();
  v37 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50818(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D5F8();
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50818(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D618();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  v12 = *(v11 + 64);
  v13 = off_50818(v10);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = off_50818(v13);
  v41 = &v37 - v16;
  v17 = off_50818(v15);
  v19 = &v37 - v18;
  off_50818(v17);
  v21 = &v37 - v20;
  v22 = *(v6 + 104);
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.topLeft(_:), v5);
  v23 = enum case for CircleOverlayConfig.CircleScale.regular(_:);
  v24 = *(v1 + 104);
  v24(v4, enum case for CircleOverlayConfig.CircleScale.regular(_:), v0);
  sub_2D748();
  sub_2D778();
  sub_2D608();
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.bottomRight(_:), v38);
  v25 = v39;
  v24(v4, v23, v37);
  v26 = v19;
  v27 = v40;
  sub_2D758();
  sub_2D778();
  sub_2D608();
  v28 = *(v27 + 16);
  v29 = v41;
  v28(v41, v26, v25);
  v30 = v42;
  v28(v42, v21, v25);
  v31 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v29, v30, 100.0, 100.0);
  v33 = v32;
  result = [v32 view];
  if (result)
  {
    v35 = result;

    v36 = *(v27 + 8);
    v36(v26, v25);
    v36(v21, v25);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s11CallsDialer39GlassCutoutCirclesOverlayViewControllerC017makeEndVoipAcceptk12ButtonCircleG0So6UIViewCyFZ_0()
{
  v0 = sub_2D5E8();
  v37 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50818(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D5F8();
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50818(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D618();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  v12 = *(v11 + 64);
  v13 = off_50818(v10);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = off_50818(v13);
  v41 = &v37 - v16;
  v17 = off_50818(v15);
  v19 = &v37 - v18;
  off_50818(v17);
  v21 = &v37 - v20;
  v22 = *(v6 + 104);
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.topLeft(_:), v5);
  v23 = enum case for CircleOverlayConfig.CircleScale.regular(_:);
  v24 = *(v1 + 104);
  v24(v4, enum case for CircleOverlayConfig.CircleScale.regular(_:), v0);
  sub_2D748();
  sub_2D778();
  sub_2D608();
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.bottomRight(_:), v38);
  v25 = v39;
  v24(v4, v23, v37);
  v26 = v19;
  v27 = v40;
  sub_2D758();
  sub_2D778();
  sub_2D608();
  v28 = *(v27 + 16);
  v29 = v41;
  v28(v41, v26, v25);
  v30 = v42;
  v28(v42, v21, v25);
  v31 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v29, v30, 100.0, 100.0);
  v33 = v32;
  result = [v32 view];
  if (result)
  {
    v35 = result;

    v36 = *(v27 + 8);
    v36(v26, v25);
    v36(v21, v25);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s11CallsDialer39GlassCutoutCirclesOverlayViewControllerC029makeEndVoipAcceptButtonCircleG0So6UIViewCyFZ_0()
{
  v0 = sub_2D5E8();
  v37 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50818(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D5F8();
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50818(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D618();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  v12 = *(v11 + 64);
  v13 = off_50818(v10);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = off_50818(v13);
  v41 = &v37 - v16;
  v17 = off_50818(v15);
  v19 = &v37 - v18;
  off_50818(v17);
  v21 = &v37 - v20;
  v22 = *(v6 + 104);
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.topLeft(_:), v5);
  v23 = enum case for CircleOverlayConfig.CircleScale.regular(_:);
  v24 = *(v1 + 104);
  v24(v4, enum case for CircleOverlayConfig.CircleScale.regular(_:), v0);
  sub_2D748();
  sub_2D778();
  sub_2D608();
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.bottomRight(_:), v38);
  v25 = v39;
  v24(v4, v23, v37);
  v26 = v19;
  v27 = v40;
  sub_2D768();
  sub_2D778();
  sub_2D608();
  v28 = *(v27 + 16);
  v29 = v41;
  v28(v41, v26, v25);
  v30 = v42;
  v28(v42, v21, v25);
  v31 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v29, v30, 100.0, 100.0);
  v33 = v32;
  result = [v32 view];
  if (result)
  {
    v35 = result;

    v36 = *(v27 + 8);
    v36(v26, v25);
    v36(v21, v25);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s11CallsDialer39GlassCutoutCirclesOverlayViewControllerC030makeHoldAcceptVoipButtonCircleG0So6UIViewCyFZ_0()
{
  v0 = sub_2D5E8();
  v37 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50818(v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D5F8();
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50818(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D618();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  v12 = *(v11 + 64);
  v13 = off_50818(v10);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = off_50818(v13);
  v41 = &v37 - v16;
  v17 = off_50818(v15);
  v19 = &v37 - v18;
  off_50818(v17);
  v21 = &v37 - v20;
  v22 = *(v6 + 104);
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.topLeft(_:), v5);
  v23 = enum case for CircleOverlayConfig.CircleScale.regular(_:);
  v24 = *(v1 + 104);
  v24(v4, enum case for CircleOverlayConfig.CircleScale.regular(_:), v0);
  sub_2D778();
  sub_2D768();
  sub_2D608();
  v22(v9, enum case for CircleOverlayConfig.CircleCorner.bottomRight(_:), v38);
  v25 = v39;
  v24(v4, v23, v37);
  v26 = v19;
  v27 = v40;
  sub_2D758();
  sub_2D778();
  sub_2D608();
  v28 = *(v27 + 16);
  v29 = v41;
  v28(v41, v26, v25);
  v30 = v42;
  v28(v42, v21, v25);
  v31 = objc_allocWithZone(type metadata accessor for GlassCutoutCirclesOverlayViewController());
  GlassCutoutCirclesOverlayViewController.init(frontCircleConfig:backCircleConfig:size:)(v29, v30, 100.0, 100.0);
  v33 = v32;
  result = [v32 view];
  if (result)
  {
    v35 = result;

    v36 = *(v27 + 8);
    v36(v26, v25);
    v36(v21, v25);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_290B4()
{
  result = sub_2D618();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_291AC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2B6C4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_291E0()
{
  v1 = OBJC_IVAR___PHDialerResultButtonView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___imageView);
  }

  else
  {
    v4 = sub_29240();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29240()
{
  v0 = [objc_allocWithZone(UIImageView) initWithImage:0];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v1];
  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v2];
  v3 = [objc_opt_self() dynamicLabelColor];
  [v0 setTintColor:v3];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setContentMode:4];

  return v0;
}

id sub_29378()
{
  v1 = OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel;
  v2 = *(v0 + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel);
  }

  else
  {
    v4 = sub_29420();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29420()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  v2 = [objc_opt_self() systemFontOfSize:18.0];
  v3 = [v2 withCaseSensitiveAttribute];

  [v0 setFont:v3];
  [v0 setAdjustsFontForContentSizeCategory:0];
  return v0;
}

id sub_2952C()
{
  v1 = OBJC_IVAR___PHDialerResultButtonView____lazy_storage___secondaryLabel;
  v2 = *(v0 + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___secondaryLabel);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    v3 = sub_2959C(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_2BA84(v4);
  }

  sub_2BC14(v2);
  return v3;
}

id sub_2959C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___PHDialerResultButtonView_type))
  {
    return 0;
  }

  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [objc_opt_self() systemFontOfSize:18.0];
  v5 = [v4 withCaseSensitiveAttribute];

  [v2 setFont:v5];
  [v2 setAdjustsFontForContentSizeCategory:0];
  return v2;
}

id sub_296C4()
{
  v1 = OBJC_IVAR___PHDialerResultButtonView____lazy_storage___stackView;
  v2 = *&v0[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___stackView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___stackView];
  }

  else
  {
    v4 = sub_29728(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29728(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5CA90, qword_316C8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_31740;
  *(v2 + 32) = sub_291E0();
  *(v2 + 40) = sub_29378();
  v3 = objc_allocWithZone(UIStackView);
  sub_2BBCC(0, &qword_60730, UIView_ptr);
  isa = sub_2D808().super.isa;

  v5 = [v3 initWithArrangedSubviews:isa];

  [v5 setAxis:0];
  [v5 setSpacing:0.0];
  [v5 setAlignment:3];
  [v5 setDistribution:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setCustomSpacing:*&a1[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___imageView] afterView:8.0];
  [v5 setCustomSpacing:*&a1[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel] afterView:6.0];
  [a1 addSubview:v5];
  return v5;
}

id DialerResultButtonView.init(type:delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___PHDialerResultButtonView_delegate;
  *&v2[OBJC_IVAR___PHDialerResultButtonView_delegate] = 0;
  v7 = OBJC_IVAR___PHDialerResultButtonView_horizontalPadding;
  [objc_opt_self() horizontalPadding];
  *&v2[v7] = v8;
  *&v2[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___imageView] = 0;
  *&v2[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel] = 0;
  *&v2[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___secondaryLabel] = 1;
  sub_2D668();
  *&v2[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR___PHDialerResultButtonView_type] = a1;
  v9 = *&v2[v6];
  *&v2[v6] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = sub_2952C();
  if (v14)
  {
    v15 = v14;
    v16 = sub_296C4();
    [v16 addArrangedSubview:v15];
  }

  sub_29B80();
  v17 = [v12 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  v19 = sub_291E0();
  [v19 setHidden:sub_2D838() & 1];

  v20 = [objc_opt_self() defaultCenter];
  [v20 addObserver:v12 selector:"handleContentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  swift_unknownObjectRelease();

  return v12;
}

void sub_29B80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5CA90, qword_316C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_31750;
  v2 = sub_296C4();
  v3 = [v2 leadingAnchor];

  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR___PHDialerResultButtonView____lazy_storage___stackView;
  v7 = [*&v0[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___stackView] trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintLessThanOrEqualToAnchor:v8];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v1 + 56) = v15;
  v16 = [*&v0[v6] heightAnchor];
  v17 = [v16 constraintEqualToConstant:22.0];

  *(v1 + 64) = v17;
  v18 = sub_291E0();
  v19 = [v18 widthAnchor];

  v20 = [v19 constraintGreaterThanOrEqualToConstant:27.0];
  *(v1 + 72) = v20;
  v21 = objc_opt_self();
  sub_2BBCC(0, &qword_60738, NSLayoutConstraint_ptr);
  isa = sub_2D808().super.isa;

  [v21 activateConstraints:isa];
}

void sub_29ED8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PHDialerResultButtonView_type);
  if (v2 - 2 >= 3)
  {
    if (v2 > 1)
    {
      v8 = *(v1 + OBJC_IVAR___PHDialerResultButtonView_type);
      sub_2D8C8();
      __break(1u);
      return;
    }

    v4 = sub_291E0();
    v5 = objc_opt_self();
    v6 = sub_2D798();
    v7 = [v5 __systemImageNamedSwift:v6];

    [v4 setImage:v7];
  }

  else
  {
    v7 = sub_291E0();
    [v7 setImage:a1];
  }
}

void sub_2A080(void *a1, float a2, float a3)
{
  v10 = a1;
  v5 = sub_29378();
  *&v6 = a2;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];

  v7 = sub_2952C();
  if (v7)
  {
    v9 = v7;
    *&v8 = a3;
    [v7 setContentCompressionResistancePriority:0 forAxis:v8];
  }
}

void DialerResultButtonView.configure(primaryTitle:secondaryTitle:buttonType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_29378();
  [v7 setAttributedText:a1];

  v8 = sub_2952C();
  [v8 setAttributedText:a2];

  *&v3[OBJC_IVAR___PHDialerResultButtonView_type] = a3;
  [v3 setIsAccessibilityElement:1];
  v9 = [*&v3[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel] text];
  [v3 setAccessibilityLabel:v9];

  sub_29ED8(0);
}

void DialerResultButtonView.configure(primaryTitle:image:buttonType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_29378();
  [v7 setAttributedText:a1];

  v8 = sub_2952C();
  if (v8)
  {
    v9 = v8;
    [v8 setAttributedText:0];
  }

  *&v3[OBJC_IVAR___PHDialerResultButtonView_type] = a3;
  [v3 setIsAccessibilityElement:1];
  v10 = [*&v3[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel] text];
  [v3 setAccessibilityLabel:v10];

  sub_29ED8(a2);
}

void sub_2A3FC(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v5 = sub_2D5D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  (off_50838)();
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_5CAF0, &unk_318A0) - 8) + 64);
  v11 = (off_50838)();
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = off_50838(v11);
  v16 = &v43 - v15;
  off_50838(v14);
  v18 = &v43 - v17;
  v19 = sub_296C4();
  [v19 layoutIfNeeded];

  v20 = sub_2952C();
  if (v20)
  {
    v21 = v20;
    [v20 sizeThatFits:{0.0, 0.0}];
    v23 = v22;
    [v21 frame];
    Width = CGRectGetWidth(v47);

    if (Width < v23)
    {
      v44 = a3;
      v25 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
      v26 = [a1 string];
      if (!v26)
      {
        sub_2D7C8();
        v26 = sub_2D798();
      }

      v45 = v25;
      v27 = [v25 personNameComponentsFromString:v26];

      if (v27)
      {
        sub_2D5C8();

        (*(v6 + 56))(v16, 0, 1, v5);
      }

      else
      {
        (*(v6 + 56))(v16, 1, 1, v5);
      }

      v28 = v44;
      sub_2BA94(v16, v18);
      v29 = v45;
      [v45 setStyle:1];
      sub_2BB04(v18, v13, &unk_5CAF0, &unk_318A0);
      if ((*(v6 + 48))(v13, 1, v5) == 1)
      {
        sub_2BB6C(v18, &unk_5CAF0, &unk_318A0);

        v18 = v13;
LABEL_18:
        sub_2BB6C(v18, &unk_5CAF0, &unk_318A0);
        return;
      }

      (*(v6 + 32))(v9, v13, v5);
      v30 = sub_2D658();
      v31 = sub_2D828();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "DialerResultButtonView: Using Short name as the number is being truncated", v32, 2u);
      }

      v33 = sub_2D5B8();
      v34 = [v29 stringFromPersonNameComponents:v33];

      v35 = v34;
      v36 = v34;
      if (v34)
      {
        if (v28)
        {
LABEL_14:
          v37 = v34;

          v38 = sub_29378();
          v39 = sub_2D798();
          v40 = [v36 attributedStringToHighlightText:v39 style:1];
LABEL_17:
          v42 = v40;

          [v38 setAttributedText:v42];
          (*(v6 + 8))(v9, v5);
          goto LABEL_18;
        }
      }

      else
      {
        sub_2D7C8();
        v36 = sub_2D798();

        sub_2D7C8();
        v35 = sub_2D798();
        v29 = v45;

        if (v28)
        {
          goto LABEL_14;
        }
      }

      v41 = v34;

      v38 = sub_29378();
      v39 = sub_2D798();
      v40 = [v35 attributedStringToHighlightText:v39];
      v36 = v35;
      goto LABEL_17;
    }
  }
}

void DialerResultButtonView.configure(primaryTitle:secondaryTitle:searchString:isNumberPriority:buttonType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v13 = sub_29378();
  v15 = v13;
  if (a5)
  {
    LODWORD(v14) = 1144750080;
    [v13 setContentCompressionResistancePriority:0 forAxis:v14];

    v16 = sub_2952C();
    if (v16)
    {
      v18 = 1148846080;
LABEL_6:
      LODWORD(v17) = v18;
      v19 = v16;
      [v16 setContentCompressionResistancePriority:0 forAxis:v17];
    }
  }

  else
  {
    LODWORD(v14) = 1148846080;
    [v13 setContentCompressionResistancePriority:0 forAxis:v14];

    v16 = sub_2952C();
    if (v16)
    {
      v18 = 1144750080;
      goto LABEL_6;
    }
  }

  v20 = sub_29378();
  [v20 setAttributedText:a1];

  v21 = sub_2952C();
  [v21 setAttributedText:a2];

  v22 = OBJC_IVAR___PHDialerResultButtonView_type;
  *&v6[OBJC_IVAR___PHDialerResultButtonView_type] = a6;
  [v6 setIsAccessibilityElement:1];
  v23 = [*&v6[OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel] text];
  [v6 setAccessibilityLabel:v23];

  sub_29ED8(0);
  if (!*&v6[v22] && a1)
  {
    v24 = a1;
    sub_2A3FC(v24, a3, a4);
  }
}

Swift::Void __swiftcall DialerResultButtonView.handlePress()()
{
  v1 = v0;
  v2 = sub_2D658();
  v3 = sub_2D828();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + OBJC_IVAR___PHDialerResultButtonView_type);

    _os_log_impl(&dword_0, v2, v3, "DialerResultButtonView: Pressed button with type %ld", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  v5 = *(&v1->isa + OBJC_IVAR___PHDialerResultButtonView_delegate);
  if (v5)
  {
    v6 = *(&v1->isa + OBJC_IVAR___PHDialerResultButtonView_type);

    [v5 handleDialerResultButtonPressedOfType:v6];
  }
}

void sub_2AD04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5CAE0, &qword_31890);
  v3 = *(*(v2 - 8) + 64);
  off_50838(v2 - 8);
  v5 = v14 - v4;
  sub_2BB04(a1, v14 - v4, &qword_5CAE0, &qword_31890);
  v6 = sub_2D5A8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2BB6C(v5, &qword_5CAE0, &qword_31890);
LABEL_10:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_11;
  }

  v8 = sub_2D598();
  (*(v7 + 8))(v5, v6);
  if (!v8)
  {
    goto LABEL_10;
  }

  v14[1] = sub_2D7C8();
  v14[2] = v9;
  sub_2D878();
  if (!*(v8 + 16) || (v10 = sub_2B500(v15), (v11 & 1) == 0))
  {

    sub_2B874(v15);
    goto LABEL_10;
  }

  sub_2B8C8(*(v8 + 56) + 32 * v10, &v16);
  sub_2B874(v15);

  if (!*(&v17 + 1))
  {
LABEL_11:
    sub_2BB6C(&v16, &qword_5CAE8, &qword_31898);
    return;
  }

  type metadata accessor for UIContentSizeCategory(0);
  if (swift_dynamicCast())
  {
    v12 = v15[0];
    v13 = sub_291E0();
    [v13 setHidden:sub_2D838() & 1];
  }
}

uint64_t DialerResultButtonView.largeContentTitle.getter()
{
  v0 = 0xE000000000000000;
  v1 = sub_29378();
  v2 = [v1 attributedText];

  if (v2)
  {
    v3 = [v2 string];

    v4 = sub_2D7C8();
    v0 = v5;
  }

  else
  {
    v4 = 0;
  }

  v14._countAndFlagsBits = v4;
  v14._object = v0;
  sub_2D7E8(v14);

  v6._countAndFlagsBits = sub_2952C();
  if (!v6._countAndFlagsBits)
  {
    goto LABEL_8;
  }

  countAndFlagsBits = v6._countAndFlagsBits;
  v8 = [v6._countAndFlagsBits attributedText];

  if (!v8)
  {
    v6._countAndFlagsBits = 0;
LABEL_8:
    v12 = 0xE000000000000000;
    goto LABEL_9;
  }

  v9 = [v8 string];

  v10 = sub_2D7C8();
  v12 = v11;

  v6._countAndFlagsBits = v10;
LABEL_9:
  v6._object = v12;
  sub_2D7E8(v6);

  return 0;
}

uint64_t (*DialerResultButtonView.largeContentTitle.modify(uint64_t *a1))(uint64_t a1)
{
  *a1 = DialerResultButtonView.largeContentTitle.getter();
  a1[1] = v2;
  return sub_2B2C8;
}

id DialerResultButtonView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id DialerResultButtonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2B488(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2D8D8();
  sub_2D7D8();
  v6 = sub_2D8F8();

  return sub_2B544(a1, a2, v6);
}

unint64_t sub_2B500(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2D858(*(v2 + 40));

  return sub_2B5FC(a1, v4);
}

unint64_t sub_2B544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2D8B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2B5FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_2B924(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_2D868();
      sub_2B874(v8);
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

unint64_t sub_2B6C4(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2B6D8()
{
  result = qword_5CAD8;
  if (!qword_5CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_5CAD8);
  }

  return result;
}

uint64_t type metadata accessor for DialerResultButtonView()
{
  result = qword_60768;
  if (!qword_60768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B790()
{
  result = sub_2D678();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2B8C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2B980()
{
  *(v0 + OBJC_IVAR___PHDialerResultButtonView_delegate) = 0;
  v1 = OBJC_IVAR___PHDialerResultButtonView_horizontalPadding;
  [objc_opt_self() horizontalPadding];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___imageView) = 0;
  *(v0 + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___primaryLabel) = 0;
  *(v0 + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___secondaryLabel) = 1;
  sub_2D668();
  *(v0 + OBJC_IVAR___PHDialerResultButtonView____lazy_storage___stackView) = 0;
  sub_2D888();
  __break(1u);
}

void sub_2BA84(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t sub_2BA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5CAF0, &unk_318A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BB04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2BB6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2BBCC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_2BC14(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

id sub_2BC7C()
{
  v2[0] = xmmword_31930;
  v2[1] = xmmword_31940;
  v2[2] = xmmword_31950;
  v3 = 1067567809;
  v5 = 0;
  v4 = 0;
  v6 = 0;
  v7 = 1065353216;
  result = [objc_opt_self() _colorEffectCAMatrix:v2];
  if (result)
  {
    v1 = result;
    result = swift_dynamicCastUnknownClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

id sub_2BD58(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = xmmword_319A0;
  result = [objc_opt_self() _colorEffectCAMatrix:v6];
  if (result)
  {
    v5 = result;
    result = swift_dynamicCastUnknownClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2BEE0(void (*a1)(uint64_t))
{
  v2 = *(*(sub_2D6C8() - 8) + 64);
  v3 = off_50840();
  a1(v3);
  v5[3] = sub_2D6E8();
  v5[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2D6F8();
  return sub_2D848();
}

void sub_2BFAC(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(*(sub_2D6C8() - 8) + 64);
  off_50840();
  v6 = a1;
  a3();
  v7[3] = sub_2D6E8();
  v7[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_2D6F8();
  sub_2D848();
}

Swift::Void __swiftcall UIView.applyClearGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v1 = sub_2D6E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (off_50840)();
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2D6C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (off_50840)();
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_50840(v9);
  v13 = &v16[-1] - v12;
  sub_2D6B8();
  sub_2D688();
  v14 = *(v7 + 8);
  v14(v11, v6);
  (*(v7 + 16))(v11, v13, v6);
  sub_2D6F8();
  v16[3] = v1;
  v16[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_2D6D8();
  (*(v2 + 8))(v5, v1);
  sub_2D848();
  v14(v13, v6);
}

Swift::Void __swiftcall UIView.applySmallClearGlassBackground()()
{
  v0 = sub_2D698();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  off_50840(v0);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D6C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = off_50840(v5);
  v10 = &v12[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_50840(v8);
  sub_2D6B8();
  (*(v1 + 104))(v4, enum case for _Glass._GlassVariant.Size.small(_:), v0);
  sub_2D6A8();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v10, v5);
  v12[3] = sub_2D6E8();
  v12[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_2D6F8();
  sub_2D848();
}

Swift::Void __swiftcall UIView.applySmallClearGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v23[1] = a1.super.isa;
  v23[0] = sub_2D6E8();
  v1 = *(v23[0] - 8);
  v2 = *(v1 + 64);
  off_50840(v23[0]);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2D698();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_50840(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2D6C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = off_50840(v10);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = off_50840(v13);
  v18 = v23 - v17;
  off_50840(v16);
  v20 = v23 - v19;
  sub_2D6B8();
  (*(v6 + 104))(v9, enum case for _Glass._GlassVariant.Size.small(_:), v5);
  sub_2D6A8();
  (*(v6 + 8))(v9, v5);
  v21 = *(v11 + 8);
  v21(v15, v10);
  sub_2D688();
  v21(v18, v10);
  (*(v11 + 16))(v18, v20, v10);
  sub_2D6F8();
  v22 = v23[0];
  v24[3] = v23[0];
  v24[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_2D6D8();
  (*(v1 + 8))(v4, v22);
  sub_2D848();
  v21(v20, v10);
}
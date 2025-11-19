uint64_t sub_29BBBF7CC()
{
  MEMORY[0x29C2CC5F0](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29BBBF808()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

void updateGizmoAccessibilitySettings()
{
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &__block_literal_global_515);
}

void sub_29BBC0008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 104));
  _Unwind_Resume(a1);
}

void unsetCaptureMode(int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = AXLogSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "Un-setting capture mode: %u", v4, 8u);
  }

  _SBAXCaptureMode &= ~a1;
  updateEventTapForNewCaptureMode();
  v3 = *MEMORY[0x29EDCA608];
}

void AXBSendEventRepresentationUntapped(void *a1)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v1 = MEMORY[0x29EDBDF60];
  v2 = a1;
  v3 = [v1 sharedManager];
  v4 = _EventTapIdentifier;
  v7[0] = *MEMORY[0x29EDBDE68];
  v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  [v3 sendEvent:v2 afterTap:v4 useGSEvent:0 namedTaps:v5 options:0];

  v6 = *MEMORY[0x29EDCA608];
}

void sub_29BBC0834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void copyKeysToArray(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:a2];
    [a3 addObject:v4];
  }
}

void sub_29BBC1378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void setCaptureMode(int a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = AXLogSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "Setting capture mode: %u", v4, 8u);
  }

  _SBAXCaptureMode |= a1;
  updateEventTapForNewCaptureMode();
  v3 = *MEMORY[0x29EDCA608];
}

double AXConvertFromContextHostedPoint(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = +[AXBEventManager sharedManager];
  [v8 convertPoint:a1 fromContextId:a2 displayId:{a3, a4}];

  return AXRotateFromScreen();
}

void BKPostAXEvent(void *a1, int a2)
{
  v3 = a1;
  if (a2)
  {
    [v3 setAdditionalFlags:{objc_msgSend(v3, "additionalFlags") | 0x1000000}];
  }

  [v3 dataRepresentation];
  AXPushNotificationToSystemForBroadcast();
}

void __updateGizmoAccessibilitySettings_block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x29EDC5DD0]) initWithDomain:@"com.apple.Accessibility"];
  v0 = [v1 synchronize];
  [v1 BOOLForKey:@"ApplicationAccessibilityEnabled"];
  AXPerformBlockOnMainThread();
}

void __updateGizmoAccessibilitySettings_block_invoke_2()
{
  v0 = [MEMORY[0x29EDBDFA0] sharedInstance];
  [v0 setGizmoApplicationAccessibilityEnabled:1];
}

void __updateGizmoAccessibilitySettings_block_invoke_3()
{
  v0 = [MEMORY[0x29EDBDFA0] sharedInstance];
  [v0 setGizmoApplicationAccessibilityEnabled:0];
}

void updateEventTapForNewCaptureMode()
{
  if (_SBAXCaptureMode)
  {
    if (_EventTapIdentifier)
    {
      return;
    }

    v4 = [MEMORY[0x29EDBDF60] sharedManager];
    v0 = [v4 installEventTap:&__block_literal_global_530 identifier:@"BB-AX" type:0];
    v1 = _EventTapIdentifier;
    _EventTapIdentifier = v0;

    v2 = v4;
  }

  else
  {
    if (!_EventTapIdentifier)
    {
      return;
    }

    v3 = [MEMORY[0x29EDBDF60] sharedManager];
    [v3 removeEventTap:_EventTapIdentifier];

    v2 = _EventTapIdentifier;
    _EventTapIdentifier = 0;
  }
}

uint64_t __updateEventTapForNewCaptureMode_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[AXBAccessibilityManager sharedManager];
  v4 = [v3 _accessibilityEventTapCallback:v2];

  return v4;
}

void sub_29BBC4D00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_29BBC4E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_29BBC4F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_29BBC5024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_29BBC5104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_29BBC59E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _toggleAXSetting(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC8478]];
  v5 = [a3 isEqualToString:v4];

  if (v5)
  {
    _AXSInvertColorsEnabled();

    _AXSInvertColorsSetEnabled();
  }

  else
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC8428]];
    v7 = [a3 isEqualToString:v6];

    if (v7)
    {
      _AXSGrayscaleEnabled();

      _AXSGrayscaleSetEnabled();
    }

    else
    {
      v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC84D8]];
      v9 = [a3 isEqualToString:v8];

      if (v9)
      {
        v10 = _AXSRedGreenFilterEnabled() == 0;

        MEMORY[0x2A1C6CB20](v10);
      }

      else
      {
        v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC8430]];
        v12 = [a3 isEqualToString:v11];

        if (v12)
        {
          v13 = _AXSGreenRedFilterEnabled() == 0;

          MEMORY[0x2A1C6CA30](v13);
        }

        else
        {
          v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC83F8]];
          v15 = [a3 isEqualToString:v14];

          if (v15)
          {
            v16 = _AXSBlueYellowFilterEnabled() == 0;

            MEMORY[0x2A1C6C988](v16);
          }

          else
          {
            v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC8508]];
            v18 = [a3 isEqualToString:v17];

            if (v18)
            {
              v19 = _AXSColorTintFilterEnabled() == 0;

              MEMORY[0x2A1C6C9B0](v19);
            }
          }
        }
      }
    }
  }
}

void _displayFiltersChanged()
{
  v0 = +[AXBDisplayFilterManager sharedInstance];
  [v0 _repostNotificationIfNeeded];

  v1 = +[AXBDisplayFilterManager sharedInstance];
  [v1 updateSettings];
}

double AXRotateToScreen()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3010000000;
  v7 = 0;
  v8 = 0;
  v6 = "";
  AXPerformSafeBlock();
  v0 = v4[4];
  v1 = *(v4 + 5);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_29BBC8BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXRotateToScreen_block_invoke(uint64_t a1)
{
  result = [AXBackBoardGlue displayConvertToCAScreen:*(a1 + 56) withDisplayIntegerId:*(a1 + 40), *(a1 + 48)];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

double AXRotateFromScreen()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3010000000;
  v7 = 0;
  v8 = 0;
  v6 = "";
  AXPerformSafeBlock();
  v0 = v4[4];
  v1 = *(v4 + 5);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_29BBC9DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXRotateFromScreen_block_invoke(uint64_t a1)
{
  result = [AXBackBoardGlue displayConvertFromCAScreen:*(a1 + 56) withDisplayIntegerId:*(a1 + 40), *(a1 + 48)];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A211D598 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_29BBCB79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BBCB934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BBCC80C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void _toggleAXSetting_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC8478]];
  v5 = [a3 isEqualToString:v4];

  if (v5)
  {
    _AXSInvertColorsEnabled();

    _AXSInvertColorsSetEnabled();
  }

  else
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-toggle-testing", *MEMORY[0x29EDC8428]];
    v7 = [a3 isEqualToString:v6];

    if (v7)
    {
      _AXSGrayscaleEnabled();

      _AXSGrayscaleSetEnabled();
    }
  }
}

id getLiveSpeechServicesObjcClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLiveSpeechServicesObjcClass_softClass;
  v7 = getLiveSpeechServicesObjcClass_softClass;
  if (!getLiveSpeechServicesObjcClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getLiveSpeechServicesObjcClass_block_invoke;
    v3[3] = &unk_29F2A4FB0;
    v3[4] = &v4;
    __getLiveSpeechServicesObjcClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BBCD9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLiveSpeechServicesObjcClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!LiveSpeechServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __LiveSpeechServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F2A4FD0;
    v6 = 0;
    LiveSpeechServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LiveSpeechServicesLibraryCore_frameworkLibrary)
  {
    __getLiveSpeechServicesObjcClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("LiveSpeechServicesObjc");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLiveSpeechServicesObjcClass_block_invoke_cold_1();
  }

  getLiveSpeechServicesObjcClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __LiveSpeechServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LiveSpeechServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXMotionCuesManagerSymbolLoc_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = AXMotionCuesServicesLibraryCore();
  if (!v2)
  {
    __getAXMotionCuesManagerSymbolLoc_block_invoke_cold_1(&v4);
  }

  result = dlsym(v2, "AXMotionCuesManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXMotionCuesManagerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXMotionCuesServicesLibraryCore()
{
  v2 = *MEMORY[0x29EDCA608];
  if (!AXMotionCuesServicesLibraryCore_frameworkLibrary)
  {
    AXMotionCuesServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AXMotionCuesServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __AXMotionCuesServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXMotionCuesServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_29BBCE728(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id getLiveCaptionsServicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLiveCaptionsServicesClass_softClass;
  v7 = getLiveCaptionsServicesClass_softClass;
  if (!getLiveCaptionsServicesClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getLiveCaptionsServicesClass_block_invoke;
    v3[3] = &unk_29F2A4FB0;
    v3[4] = &v4;
    __getLiveCaptionsServicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BBCFD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLiveCaptionsServicesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!LiveSpeechServicesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __LiveSpeechServicesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F2A5090;
    v6 = 0;
    LiveSpeechServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!LiveSpeechServicesLibraryCore_frameworkLibrary_0)
  {
    __getLiveCaptionsServicesClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("LiveCaptionsServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLiveCaptionsServicesClass_block_invoke_cold_1();
  }

  getLiveCaptionsServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __LiveSpeechServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LiveSpeechServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _isBuddyRunning()
{
  v10[1] = *MEMORY[0x29EDCA608];
  if (AXInPreboardScenario())
  {
    v0 = 0;
  }

  else
  {
    v1 = objc_alloc(MEMORY[0x29EDBFA80]);
    v2 = [MEMORY[0x29EDBD6E0] setupProcessName];
    v10[0] = v2;
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
    v4 = [v1 initWithBundleIDs:v3 states:*MEMORY[0x29EDBFA78]];

    v5 = [MEMORY[0x29EDBD6E0] setupProcessName];
    v6 = [v4 applicationStateForApplication:v5];

    if (v6 == 8 || v6 == 4)
    {
      v0 = AXIsBuddyCompleted() ^ 1;
    }

    else
    {
      v0 = 0;
    }

    [v4 invalidate];
  }

  v8 = *MEMORY[0x29EDCA608];
  return v0;
}

void sub_29BBD18FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _postHomeButtonPress(int a1, int a2, void *a3)
{
  v13 = a3;
  if (AXDeviceHasHomeButton())
  {
    v5 = 1001;
  }

  else
  {
    v5 = 1011;
  }

  if (AXDeviceHasHomeButton())
  {
    v6 = 1000;
  }

  else
  {
    v6 = 1010;
  }

  if (a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = [MEMORY[0x29EDBDF58] buttonRepresentationWithType:v7];
  [v8 setAdditionalFlags:{objc_msgSend(v8, "additionalFlags") | 0x1000000}];
  v9 = [v13 clientId];
  [v8 setClientId:v9];

  v10 = [v13 HIDAttributeData];
  [v8 setHIDAttributeData:v10];

  if (a1 && a2)
  {
    [v8 setAdditionalFlags:{objc_msgSend(v8, "additionalFlags") | 0x880000}];
  }

  [v8 setHIDTime:{objc_msgSend(v13, "HIDTime")}];
  [v8 setUseOriginalHIDTime:1];
  v11 = [MEMORY[0x29EDBDF60] sharedManager];
  v12 = [_Controller _eventTapIdentifier];
  [v11 sendEvent:v8 afterTap:v12 useGSEvent:0 namedTaps:0 options:0];
}

void _accessibilityTripleHomeStatusChange()
{
  v0 = +[AXBHomeClickController controller];
  [v0 _updateTripleHomeSettings:0];

  v1 = +[AXBHomeClickController controller];
  [v1 _writeNoteToNewUserSession];
}

void _accessibilityHomeClickEnabled()
{
  v0 = +[AXBHomeClickController controller];
  [v0 _updateHomeClickEnabled];
}

void _accessibilityHomeClickSpeedChanged()
{
  v0 = +[AXBHomeClickController controller];
  [v0 _updateHomeClickSpeed];
}

void _appTransitionOccurred()
{
  v0 = +[AXBHomeClickController controller];
  [v0 _triggerAppTransition];
}

uint64_t _handleInPreBoardModeUpdate()
{
  result = AXInPreboardScenario();
  if (result)
  {
    _AXSVoiceOverTouchEnabled();
    _AXSVoiceOverTouchSetEnabled();
    _AXSAssistiveTouchScannerEnabled();
    _AXSAssistiveTouchScannerSetEnabled();
    _AXSAssistiveTouchEnabled();
    _AXSAssistiveTouchSetEnabled();
    _AXSCommandAndControlEnabled();
    _AXSCommandAndControlSetEnabled();
    v1 = _AXSFullKeyboardAccessEnabled();

    return MEMORY[0x2A1C6CA10](v1);
  }

  return result;
}

uint64_t _handleInCheckerBoardModeUpdate()
{
  result = AXInCheckerBoardScenario();
  if (result)
  {
    _AXSVoiceOverTouchEnabled();
    _AXSVoiceOverTouchSetEnabled();
    _AXSAssistiveTouchScannerEnabled();
    _AXSAssistiveTouchScannerSetEnabled();
    _AXSAssistiveTouchEnabled();

    return _AXSAssistiveTouchSetEnabled();
  }

  return result;
}

void _handleSessionIsLoginSessionUpdate()
{
  v0 = +[AXBHomeClickController controller];
  [v0 _triggerAppTransition];
}

void ___accessibilityTripleHomeFired_block_invoke()
{
  v0 = _AXSTripleClickCopyOptions();
  v1 = [v0 count] == 2 && _AXSTripleClickContainsOption() && _AXSTripleClickContainsOption() != 0;
  if ([v0 count] == 1 || v1)
  {
    v3 = [v0 objectAtIndex:0];
    v2 = [v3 intValue];
  }

  else if ([v0 count] <= 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 3;
  }

  if ((AXInPreboardScenario() & 1) != 0 || AXInCheckerBoardScenario())
  {
    if (_AXSAssistiveTouchScannerEnabled())
    {
LABEL_14:
      v2 = 9;
LABEL_15:
      [MEMORY[0x29EDBDFB8] registerObserverForTripleClickOption:v2];
LABEL_16:
      [MEMORY[0x29EDBDFB8] toggleTripleClickOption:v2];
      goto LABEL_28;
    }

    if (!_AXSVoiceOverTouchEnabled() && ([v0 containsObject:&unk_2A2121828] & 1) == 0)
    {
      if (([v0 containsObject:&unk_2A2121858] & 1) == 0)
      {
        if ([v0 containsObject:&unk_2A2121870])
        {
          v2 = 4;
        }

        else if ([v0 containsObject:&unk_2A2121888])
        {
          v2 = 27;
        }

        else if ([v0 containsObject:&unk_2A21218A0])
        {
          v2 = 40;
        }

        else if ([v0 containsObject:&unk_2A21218B8])
        {
          v2 = 2;
        }

        else if ([v0 containsObject:&unk_2A21218D0])
        {
          v2 = 34;
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    [MEMORY[0x29EDBDFB8] registerObserverForTripleClickOption:1];
LABEL_20:
    [_Controller _startVoiceOverSequence];
    goto LABEL_28;
  }

  if (+[AXBGuidedAccessManager inGuidedAccess])
  {
    if (!+[AXBGuidedAccessManager allowsTripleClickSheet])
    {
      v2 = 7;
      goto LABEL_15;
    }
  }

  else if (_AXSAssistiveTouchScannerEnabled() && ([MEMORY[0x29EDBDFB8] switchControlRendersDeviceUnusable] & 1) != 0)
  {
    goto LABEL_14;
  }

  if (v2 == 3)
  {
    [_Controller _toggleDisplayAskSheet];
    goto LABEL_28;
  }

  [MEMORY[0x29EDBDFB8] registerObserverForTripleClickOption:v2];
  if (v2 > 15)
  {
    switch(v2)
    {
      case 0x10:
        [_Controller _showLookingGlassMenu];
        goto LABEL_28;
      case 0x16:
        [_Controller _toggleDetectionMode];
        goto LABEL_28;
      case 0x2C:
        v4 = AXLogReader();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v5 = 0;
          _os_log_impl(&dword_29BBBD000, v4, OS_LOG_TYPE_DEFAULT, "Launching reader from _accessibilityTripleHomeFired", v5, 2u);
        }

        [_Controller _launchAccessibilityReader];
        v2 = 44;
        break;
    }

    goto LABEL_16;
  }

  if (v2 == 1)
  {
    goto LABEL_20;
  }

  if (v2 != 5)
  {
    if (v2 == 12)
    {
      [_Controller _toggleMagnifier];
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (_isBuddyRunning() && !AXIsBuddyCompleted() || AXSessionIsLoginSession())
  {
    goto LABEL_20;
  }

LABEL_28:
}

id getLookingGlassServicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLookingGlassServicesClass_softClass;
  v7 = getLookingGlassServicesClass_softClass;
  if (!getLookingGlassServicesClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getLookingGlassServicesClass_block_invoke;
    v3[3] = &unk_29F2A4FB0;
    v3[4] = &v4;
    __getLookingGlassServicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BBD39C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t LookingGlassServicesLibraryCore()
{
  v2 = *MEMORY[0x29EDCA608];
  if (!LookingGlassServicesLibraryCore_frameworkLibrary)
  {
    LookingGlassServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = LookingGlassServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __LookingGlassServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LookingGlassServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

Class __getLookingGlassServicesClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!LookingGlassServicesLibraryCore())
  {
    __getLookingGlassServicesClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("LookingGlassServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLookingGlassServicesClass_block_invoke_cold_1();
  }

  getLookingGlassServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _AXBValidateMethods()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_16 withPreValidationHandler:&__block_literal_global_429 postValidationHandler:0];
}

void sub_29BBD4530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BBD4AF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getSpeakThisServicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSpeakThisServicesClass_softClass;
  v7 = getSpeakThisServicesClass_softClass;
  if (!getSpeakThisServicesClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getSpeakThisServicesClass_block_invoke;
    v3[3] = &unk_29F2A4FB0;
    v3[4] = &v4;
    __getSpeakThisServicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BBD562C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSpeakThisServicesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!SpeakThisServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __SpeakThisServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F2A5158;
    v6 = 0;
    SpeakThisServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpeakThisServicesLibraryCore_frameworkLibrary)
  {
    __getSpeakThisServicesClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SpeakThisServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSpeakThisServicesClass_block_invoke_cold_1();
  }

  getSpeakThisServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __SpeakThisServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpeakThisServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29BBD6314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHoverTextObjcSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!HoverTextServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = __HoverTextServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_29F2A5170;
    v7 = 0;
    HoverTextServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = HoverTextServicesLibraryCore_frameworkLibrary;
  if (!HoverTextServicesLibraryCore_frameworkLibrary)
  {
    __getHoverTextObjcSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "HoverTextObjc");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHoverTextObjcSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __HoverTextServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HoverTextServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXWatchRemoteScreenServicesLibrary();
  result = dlsym(v2, "AXWatchRemoteScreenIsTwiceFeatureOn");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXWatchRemoteScreenIsTwiceFeatureOnSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXWatchRemoteScreenServicesLibrary()
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __AXWatchRemoteScreenServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F2A5188;
    v5 = 0;
    AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary;
  if (!AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary)
  {
    AXWatchRemoteScreenServicesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t __AXWatchRemoteScreenServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXWatchRemoteScreenServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *__getAXTwiceRemoteScreenServiceObjcSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXWatchRemoteScreenServicesLibrary();
  result = dlsym(v2, "AXTwiceRemoteScreenServiceObjc");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXTwiceRemoteScreenServiceObjcSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_29BBDAF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BBDBDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BBDD6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void _prefChangedCallback()
{
  v0 = +[AXBOpaqueTouchSettingsManager sharedInstance];
  [v0 _resendPreferencesToServices];
}

uint64_t _deviceMatchedCallback(void *a1, uint64_t a2, uint64_t a3)
{
  _AXSSetAccessibilityHasNoticedOpaqueTouchDevice();

  return [a1 deviceServiceAppeared:a3];
}

id sub_29BBDE574()
{
  v0 = sub_29BBE2AD8();
  __swift_allocate_value_buffer(v0, qword_2A19896C0);
  __swift_project_value_buffer(v0, qword_2A19896C0);
  result = AXLogCommon();
  if (result)
  {
    return sub_29BBE2AE8();
  }

  __break(1u);
  return result;
}

id sub_29BBDE5D8()
{
  result = [objc_allocWithZone(type metadata accessor for AXBMedinaManager()) init];
  qword_2A19896B0 = result;
  return result;
}

id static AXBMedinaManager.shared.getter()
{
  if (qword_2A19896A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2A19896B0;

  return v0;
}

void static AXBMedinaManager.shared.setter(uint64_t a1)
{
  if (qword_2A19896A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2A19896B0;
  qword_2A19896B0 = a1;
}

uint64_t (*static AXBMedinaManager.shared.modify())()
{
  if (qword_2A19896A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_29BBDE894@<X0>(void *a1@<X8>)
{
  if (qword_2A19896A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2A19896B0;
  *a1 = qword_2A19896B0;

  return v2;
}

void sub_29BBDE920(id *a1)
{
  v1 = qword_2A19896A8;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_2A19896B0;
  qword_2A19896B0 = v2;
}

uint64_t sub_29BBDE9F0()
{
  v1 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_29BBDEA88(char a1)
{
  v3 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_29BBDEAD8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x29EDCA1E8] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_29BBDEB38(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

_BYTE *sub_29BBDEBDC()
{
  v1 = &v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_successNotificationName];
  *v1 = 0xD000000000000041;
  v1[1] = 0x800000029BBE89F0;
  v2 = &v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_failureNotificationName];
  *v2 = 0xD000000000000041;
  v2[1] = 0x800000029BBE8A40;
  *&v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_soundDetectionClient] = 0;
  *&v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_enableProtectedVariable] = sub_29BBDEB8C;
  *&v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_disableProtectedVariable] = sub_29BBDEBB4;
  v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring] = 0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for AXBMedinaManager();
  v3 = objc_msgSendSuper2(&v29, sel_init);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedInstance];
  v7 = [v6 monitorNotificationForPreboardFeature];

  if (v7)
  {
    if (qword_2A19896B8 != -1)
    {
      swift_once();
    }

    v8 = sub_29BBE2AD8();
    __swift_project_value_buffer(v8, qword_2A19896C0);
    v9 = sub_29BBE2AB8();
    v10 = sub_29BBE2BA8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      v12 = [v4 sharedInstance];
      v13 = [v12 monitorNotificationForPreboardFeature];

      *(v11 + 4) = v13;
      _os_log_impl(&dword_29BBBD000, v9, v10, "Currently monitoring preboard feature notification for feature: %lu", v11, 0xCu);
      MEMORY[0x29C2CC5E0](v11, -1, -1);
    }

    v14 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring;
    swift_beginAccess();
    v5[v14] = 1;
    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    v16 = *&v5[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_enableProtectedVariable];
    v17 = *&v5[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_successNotificationName];
    v18 = *&v5[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_successNotificationName + 8];

    v19 = sub_29BBE2B58();

    CFNotificationCenterAddObserver(v15, v5, v16, v19, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v20 = CFNotificationCenterGetDarwinNotifyCenter();
    v21 = *&v5[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_disableProtectedVariable];
    v22 = *&v5[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_failureNotificationName];
    v23 = *&v5[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_failureNotificationName + 8];

    v24 = sub_29BBE2B58();

    CFNotificationCenterAddObserver(v20, v5, v21, v24, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    if (qword_2A19896B8 != -1)
    {
      swift_once();
    }

    v25 = sub_29BBE2AD8();
    __swift_project_value_buffer(v25, qword_2A19896C0);
    v24 = sub_29BBE2AB8();
    v26 = sub_29BBE2BA8();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_29BBBD000, v24, v26, "Not monitoring preboard feature notifications.", v27, 2u);
      MEMORY[0x29C2CC5E0](v27, -1, -1);
    }

    v20 = v5;
  }

  return v5;
}

id AXBMedinaManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = *&v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_successNotificationName];
    v4 = *&v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_successNotificationName + 8];

    v5 = sub_29BBE2B58();

    CFNotificationCenterRemoveObserver(v2, v0, v5, 0);

    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = *&v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_failureNotificationName];
    v8 = *&v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_failureNotificationName + 8];

    v9 = sub_29BBE2B58();

    CFNotificationCenterRemoveObserver(v6, v0, v9, 0);

    v10 = *&v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_soundDetectionClient];
    *&v0[OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_soundDetectionClient] = 0;
  }

  v12.receiver = v0;
  v12.super_class = type metadata accessor for AXBMedinaManager();
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

void sub_29BBDF1B8(uint64_t a1, char a2)
{
  if (!a1)
  {
    if (qword_2A19896B8 != -1)
    {
      swift_once();
    }

    v21 = sub_29BBE2AD8();
    __swift_project_value_buffer(v21, qword_2A19896C0);
    v31 = sub_29BBE2AB8();
    v22 = sub_29BBE2B88();
    if (!os_log_type_enabled(v31, v22))
    {
      goto LABEL_21;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "No feature is monitoring preboard notifications. Ignoring this notification.";
LABEL_17:
    _os_log_impl(&dword_29BBBD000, v31, v22, v24, v23, 2u);
    MEMORY[0x29C2CC5E0](v23, -1, -1);
    goto LABEL_21;
  }

  v5 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_soundDetectionClient;
  v6 = *(v2 + OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_soundDetectionClient);
  if (!v6)
  {
    v7 = objc_allocWithZone(MEMORY[0x29EDBDDD0]);
    v8 = sub_29BBE2B58();
    v9 = sub_29BBE2B58();
    v10 = [v7 initWithIdentifier:v8 serviceBundleName:v9];

    v11 = *(v2 + v5);
    *(v2 + v5) = v10;

    v6 = *(v2 + v5);
    if (!v6)
    {
      if (qword_2A19896B8 != -1)
      {
        swift_once();
      }

      v30 = sub_29BBE2AD8();
      __swift_project_value_buffer(v30, qword_2A19896C0);
      v31 = sub_29BBE2AB8();
      v22 = sub_29BBE2B98();
      if (!os_log_type_enabled(v31, v22))
      {
        goto LABEL_21;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Unable to start sound detection client.";
      goto LABEL_17;
    }
  }

  v12 = qword_2A19896B8;
  v31 = v6;
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_29BBE2AD8();
  __swift_project_value_buffer(v13, qword_2A19896C0);
  v14 = sub_29BBE2AB8();
  v15 = sub_29BBE2B88();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_29BBBD000, v14, v15, "Sound Detection Client is running", v16, 2u);
    MEMORY[0x29C2CC5E0](v16, -1, -1);
  }

  if (a1 == 1)
  {
    sub_29BBDFA20(MEMORY[0x29EDCA190]);
    v17 = sub_29BBE2B38();

    if (a2)
    {
      v18 = 10004;
    }

    else
    {
      v18 = 10005;
    }

    v19 = [objc_opt_self() mainAccessQueue];
    aBlock[4] = sub_29BBDF68C;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29BBDF830;
    aBlock[3] = &block_descriptor;
    v20 = _Block_copy(aBlock);
    [v31 sendAsynchronousMessage:v17 withIdentifier:v18 targetAccessQueue:v19 completion:v20];

    _Block_release(v20);
    return;
  }

  v25 = sub_29BBE2AB8();
  v26 = sub_29BBE2B98();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    v28 = [objc_opt_self() sharedInstance];
    v29 = [v28 monitorNotificationForPreboardFeature];

    *(v27 + 4) = v29;
    _os_log_impl(&dword_29BBBD000, v25, v26, "Preboard notification wasn't handled for value: %lu", v27, 0xCu);
    MEMORY[0x29C2CC5E0](v27, -1, -1);
  }

LABEL_21:
}

void sub_29BBDF68C(int a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_2A19896B8 != -1)
    {
      swift_once();
    }

    v4 = sub_29BBE2AD8();
    __swift_project_value_buffer(v4, qword_2A19896C0);
    v5 = a2;
    oslog = sub_29BBE2AB8();
    v6 = sub_29BBE2B98();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_29BBBD000, oslog, v6, "Sound Detection Client returned an error: %@.", v7, 0xCu);
      sub_29BBDFBDC(v8);
      MEMORY[0x29C2CC5E0](v8, -1, -1);
      MEMORY[0x29C2CC5E0](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a2;
    }
  }
}

uint64_t sub_29BBDF830(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_29BBE2B48();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_29BBDF914(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_29BBE2BF8();

  return sub_29BBDF958(a1, v5);
}

unint64_t sub_29BBDF958(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29BBDFD0C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29C2CB140](v9, a1);
      sub_29BBDFD68(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29BBDFA20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A178F620, &unk_29BBE62F0);
    v3 = sub_29BBE2C18();
    v4 = a1 + 32;

    while (1)
    {
      sub_29BBDFC8C(v4, v13);
      result = sub_29BBDF914(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_29BBDFCFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29BBDFBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A178F580, &qword_29BBE62E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_29BBDFC8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A178F588, &qword_29BBE63E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_29BBDFCFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_29BBDFE20(void *a1, const char *a2, char a3)
{
  if (qword_2A19896B8 != -1)
  {
    swift_once();
  }

  v6 = sub_29BBE2AD8();
  __swift_project_value_buffer(v6, qword_2A19896C0);
  v7 = sub_29BBE2AB8();
  v8 = sub_29BBE2BA8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29BBBD000, v7, v8, a2, v9, 2u);
    MEMORY[0x29C2CC5E0](v9, -1, -1);
  }

  if (a1)
  {
    v10 = a1;
    v11 = objc_opt_self();
    v12 = [v11 sharedInstance];
    v13 = [v12 monitorNotificationForPreboardFeature];

    (*((*MEMORY[0x29EDCA1E8] & *v10) + 0xB0))(v13, a3 & 1);
    v14 = sub_29BBE2AB8();
    v15 = sub_29BBE2BA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_29BBBD000, v14, v15, "Clearing the monitor preboard feature flag", v16, 2u);
      MEMORY[0x29C2CC5E0](v16, -1, -1);
    }

    v17 = [v11 sharedInstance];
    [v17 setMonitorNotificationForPreboardFeature_];
  }
}

void sub_29BBE0084(uint64_t a1, unint64_t *a2)
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

uint64_t sub_29BBE00D0()
{
  v0 = sub_29BBE2AD8();
  __swift_allocate_value_buffer(v0, qword_2A19896E0);
  __swift_project_value_buffer(v0, qword_2A19896E0);
  return sub_29BBE2AC8();
}

uint64_t sub_29BBE0168()
{
  v1 = *v0;
  sub_29BBE2C28();
  MEMORY[0x29C2CB170](v1);
  return sub_29BBE2C48();
}

uint64_t sub_29BBE01DC()
{
  v1 = *v0;
  sub_29BBE2C28();
  MEMORY[0x29C2CB170](v1);
  return sub_29BBE2C48();
}

id sub_29BBE0220()
{
  result = [objc_allocWithZone(type metadata accessor for AXBNameRecognitionManager()) init];
  qword_2A19896A0 = result;
  return result;
}

id AXBNameRecognitionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AXBNameRecognitionManager.shared.getter()
{
  if (qword_2A1989698 != -1)
  {
    swift_once();
  }

  v1 = qword_2A19896A0;

  return v1;
}

uint64_t sub_29BBE033C()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_29BBE044C;
  v5[5] = v2;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1107296256;
  v5[2] = sub_29BBE14E0;
  v5[3] = &block_descriptor_0;
  v3 = _Block_copy(v5);

  [v1 registerUpdateBlock:v3 forRetrieveSelector:sel_isNameRecognitionEnabled withListener:v0];
  _Block_release(v3);

  return sub_29BBE04FC();
}

void sub_29BBE044C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29BBE04FC();
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29BBE04FC()
{
  v0 = sub_29BBE2AF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8]();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29BBE2B28();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29BBE2B08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8]();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29BBE1328(0, &qword_2A1989400, 0x29EDCA548);
  (*(v10 + 104))(v13, *MEMORY[0x29EDCA268], v9);
  v14 = sub_29BBE2BC8();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  v16 = v21;
  *(v15 + 16) = v21;
  aBlock[4] = sub_29BBE1370;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29BBE14E0;
  aBlock[3] = &block_descriptor_20;
  v17 = _Block_copy(aBlock);
  v18 = v16;
  sub_29BBE2B18();
  v23 = MEMORY[0x29EDCA190];
  sub_29BBE13D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A178F630, &qword_29BBE63E8);
  sub_29BBE1430();
  sub_29BBE2BE8();
  MEMORY[0x29C2CB0F0](0, v8, v4, v17);
  _Block_release(v17);

  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v22);
}

uint64_t sub_29BBE084C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_29BBE0890(char a1)
{
  if (AXDeviceSupportsNameRecognition())
  {
    v2 = sub_29BBE2AA8();
    v3 = (v2 + 40);
    v4 = -*(v2 + 16);
    v5 = -1;
    do
    {
      if (v4 + v5 == -1)
      {

        goto LABEL_15;
      }

      if (++v5 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v6 = v3 + 2;
      v8 = *(v3 - 1);
      v7 = *v3;

      LOBYTE(v8) = sub_29BBE2B78();

      v3 = v6;
    }

    while ((v8 & 1) == 0);

    if (a1)
    {
      if (qword_2A1989690 != -1)
      {
        swift_once();
      }

      v9 = sub_29BBE2AD8();
      __swift_project_value_buffer(v9, qword_2A19896E0);
      v10 = sub_29BBE2AB8();
      v11 = sub_29BBE2B88();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 67109120;
        *(v12 + 4) = 1;
        _os_log_impl(&dword_29BBBD000, v10, v11, "Asked to enable Name Recognition from BB: (%{BOOL}d)", v12, 8u);
        MEMORY[0x29C2CC5E0](v12, -1, -1);
      }

      sub_29BBE0BB0();
      return;
    }

    if (qword_2A1989690 != -1)
    {
      swift_once();
    }

    v22 = sub_29BBE2AD8();
    __swift_project_value_buffer(v22, qword_2A19896E0);
    v14 = sub_29BBE2AB8();
    v23 = sub_29BBE2B88();
    if (os_log_type_enabled(v14, v23))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 1) = 1;
      v17 = "Asked to disable Name Recognition from BB: (%{BOOL}d)";
      v18 = v23;
      v19 = v14;
      v20 = v16;
      v21 = 8;
      goto LABEL_18;
    }
  }

  else
  {
LABEL_15:
    if (qword_2A1989690 != -1)
    {
LABEL_27:
      swift_once();
    }

    v13 = sub_29BBE2AD8();
    __swift_project_value_buffer(v13, qword_2A19896E0);
    v14 = sub_29BBE2AB8();
    v15 = sub_29BBE2B98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Asked to enable/disable Name Recognition but the feature flag is off or no English locales are in preferred languages, so shutting down.";
      v18 = v15;
      v19 = v14;
      v20 = v16;
      v21 = 2;
LABEL_18:
      _os_log_impl(&dword_29BBBD000, v19, v18, v17, v20, v21);
      MEMORY[0x29C2CC5E0](v16, -1, -1);
    }
  }

  sub_29BBE0D88();
}

void sub_29BBE0BB0()
{
  if (*(v0 + OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_state) != 1)
  {
    *(v0 + OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_state) = 1;
    v1 = OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_nameRecognitionClient;
    v2 = *(v0 + OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_nameRecognitionClient);
    if (v2)
    {
      goto LABEL_7;
    }

    v3 = *MEMORY[0x29EDBDED8];
    sub_29BBE2B68();
    v4 = objc_allocWithZone(MEMORY[0x29EDBDDD0]);
    v5 = sub_29BBE2B58();
    v6 = sub_29BBE2B58();

    v7 = [v4 initWithIdentifier:v5 serviceBundleName:v6];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v9 = v7;

    if (v9)
    {
      [v9 setDelegate_];
    }

    v2 = *(v0 + v1);
    if (v2)
    {
LABEL_7:
      v10 = v2;
      sub_29BBDFA20(MEMORY[0x29EDCA190]);
      v11 = sub_29BBE2B38();

      v12 = [objc_opt_self() mainAccessQueue];
      [v10 sendAsynchronousMessage:v11 withIdentifier:10000 targetAccessQueue:v12 completion:0];
    }
  }
}

void sub_29BBE0D88()
{
  if (*(v0 + OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_state) != 2)
  {
    *(v0 + OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_state) = 2;
    v1 = *(v0 + OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_nameRecognitionClient);
    if (v1)
    {
      v2 = v1;
      sub_29BBDFA20(MEMORY[0x29EDCA190]);
      v3 = sub_29BBE2B38();

      v4 = [objc_opt_self() mainAccessQueue];
      [v2 sendAsynchronousMessage:v3 withIdentifier:10002 targetAccessQueue:v4 completion:0];
    }
  }
}

id AXBNameRecognitionManager.init()()
{
  v0[OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_state] = 0;
  *&v0[OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_nameRecognitionClient] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXBNameRecognitionManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AXBNameRecognitionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXBNameRecognitionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void AXBNameRecognitionManager.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9BackBoard25AXBNameRecognitionManager_nameRecognitionClient);
  if (v2)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    sub_29BBE1328(0, &unk_2A178F5B0, 0x29EDBDDD0);
    v9 = v2;
    v5 = a1;
    v6 = sub_29BBE2BD8();

    if (v6)
    {
      v7 = [objc_opt_self() sharedInstance];
      v8 = [v7 isNameRecognitionEnabled];

      sub_29BBE0890(v8);
    }
  }
}

uint64_t getEnumTagSinglePayload for AXBNameRecognitionManager.ManagerState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AXBNameRecognitionManager.ManagerState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29BBE12D4()
{
  result = qword_2A178F818[0];
  if (!qword_2A178F818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A178F818);
  }

  return result;
}

uint64_t sub_29BBE1328(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_29BBE1370()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isNameRecognitionEnabled];

  sub_29BBE0890(v3);
}

unint64_t sub_29BBE13D8()
{
  result = qword_2A1989418;
  if (!qword_2A1989418)
  {
    sub_29BBE2AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1989418);
  }

  return result;
}

unint64_t sub_29BBE1430()
{
  result = qword_2A1989408;
  if (!qword_2A1989408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2A178F630, &qword_29BBE63E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1989408);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void __getLiveSpeechServicesObjcClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getLiveSpeechServicesObjcClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXBLiveSpeechManager.m" lineNumber:25 description:{@"Unable to find class %s", "LiveSpeechServicesObjc"}];

  __break(1u);
}

void __getLiveSpeechServicesObjcClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *LiveSpeechServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXBLiveSpeechManager.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXMotionCuesManagerSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *AXMotionCuesServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXBMotionCuesManager.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getLiveCaptionsServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getLiveCaptionsServicesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXBLiveCaptionsManager.m" lineNumber:18 description:{@"Unable to find class %s", "LiveCaptionsServices"}];

  __break(1u);
}

void __getLiveCaptionsServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *LiveSpeechServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXBLiveCaptionsManager.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getLookingGlassServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getLookingGlassServicesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXBLookingGlassManager.m" lineNumber:18 description:{@"Unable to find class %s", "LookingGlassServices"}];

  __break(1u);
}

void __getLookingGlassServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *LookingGlassServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXBLookingGlassManager.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getSpeakThisServicesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getSpeakThisServicesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXBSpeakThisManager.m" lineNumber:17 description:{@"Unable to find class %s", "SpeakThisServices"}];

  __break(1u);
}

void __getSpeakThisServicesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *SpeakThisServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXBSpeakThisManager.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getHoverTextObjcSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *HoverTextServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXBHoverTextManager.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void AXWatchRemoteScreenServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *AXWatchRemoteScreenServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXBTwiceRemoteScreenManager.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

NSPoint NSPointFromString(NSString *aString)
{
  MEMORY[0x2A1C5B408](aString);
  result.y = v2;
  result.x = v1;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x2A1C5B418](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}
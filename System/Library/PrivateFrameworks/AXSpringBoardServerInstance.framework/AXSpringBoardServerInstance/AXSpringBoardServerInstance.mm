void _appTransitionOccurred()
{
  v0 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  [v0 springBoardActionOccurred:3];
}

BOOL AXSpringBoardIsReadyToBeProbed()
{
  v0 = [NSClassFromString(&cfstr_Sbmainworkspac.isa) safeValueForKey:@"_instanceIfExists"];
  v1 = v0 != 0;

  return v1;
}

void callStateChanged(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a2;
    v3 = v4;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void incomingCallStateChanged(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a2;
    v4 = [MEMORY[0x277CE7E20] sharedInstance];
    v5 = [v4 callAudioRoutingAutoAnswerEnabled];

    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_21FE6B000, v6, OS_LOG_TYPE_DEFAULT, "auto answer: should answer: %@", &buf, 0xCu);
    }

    if (UIAccessibilityIsVoiceOverRunning())
    {
      v8 = [v3 delegate];
      v9 = [v8 isRingerMutedWithServerInstance:v3];

      if ((v9 & 1) == 0)
      {
        AXPerformBlockOnMainThread();
      }
    }

    if (!v5)
    {
      goto LABEL_19;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__2;
    v50 = __Block_byref_object_dispose__2;
    v51 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2;
    v37 = __Block_byref_object_dispose__2;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    AXPerformBlockSynchronouslyOnMainThread();
    v10 = *(*(&buf + 1) + 40);
    if ((v10 || (v10 = v34[5]) != 0) && v30[3] == 1)
    {
      v11 = v10;
      if ([v3 shouldAllowActiveWatchToAutoAnswer] && (-[NSObject isVideo](v11, "isVideo") & 1) == 0)
      {
        v21 = [MEMORY[0x277CE6968] sharedInstance];
        v22 = [v21 ignoreLogging];

        if ((v22 & 1) == 0)
        {
          v23 = [MEMORY[0x277CE6968] identifier];
          v24 = AXLoggerForFacility();

          v25 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = AXColorizeFormatLog();
            v27 = _AXStringForArgs();
            if (os_log_type_enabled(v24, v25))
            {
              *v39 = 138543362;
              v40 = v27;
              _os_log_impl(&dword_21FE6B000, v24, v25, "%{public}@", v39, 0xCu);
            }
          }
        }

        goto LABEL_18;
      }

      v12 = [MEMORY[0x277CE7E20] sharedInstance];
      [v12 callAudioRoutingAutoAnswerDelay];
      v14 = v13;

      v15 = AXLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
        *v39 = 138412290;
        v40 = v16;
        _os_log_impl(&dword_21FE6B000, v15, OS_LOG_TYPE_DEFAULT, "Playing safety sound, call answer delay: %@", v39, 0xCu);
      }

      [v3 _playSafetySoundAndHaptic];
      v28 = v11;
      AXPerformBlockOnMainThreadAfterDelay();
    }

    v11 = AXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v30[3];
      v18 = *(*(&buf + 1) + 40);
      v19 = v34[5];
      *v39 = 138544130;
      v40 = @"YES";
      v41 = 2048;
      v42 = v17;
      v43 = 2114;
      v44 = v18;
      v45 = 2114;
      v46 = v19;
      _os_log_impl(&dword_21FE6B000, v11, OS_LOG_TYPE_DEFAULT, "Auto Answer pref val is %{public}@ - call count is %lu, incoming call: %{public}@ , incoming video call: %{public}@", v39, 0x2Au);
    }

LABEL_18:

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&buf, 8);
LABEL_19:
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_21FE6EE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void __callStateChanged_block_invoke(uint64_t a1)
{
  v2 = _AXSDefaultRouteForCall();
  if ([*(a1 + 32) hasActiveOrPendingCallOrFaceTime])
  {
    if (v2 || ([MEMORY[0x277D12E20] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "pairedHearingAids"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
    {
      v5 = HCLogHearing();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21FE6B000, v5, OS_LOG_TYPE_DEFAULT, "Switching to default route", buf, 2u);
      }

      [*(a1 + 32) _setCallRoute:v2 ifCurrentlyRoutedTo:0 rampUp:0];
    }
  }

  else if (AXPreviousCallRoute)
  {
    v6 = HCLogHearing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21FE6B000, v6, OS_LOG_TYPE_DEFAULT, "Call no longer active, switching to previous route", v8, 2u);
    }

    [*(a1 + 32) _setAVCallRoute:AXPreviousCallRoute rampUp:0];
    v7 = AXPreviousCallRoute;
    AXPreviousCallRoute = 0;
  }
}

uint64_t sub_21FE6F204()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21FE6F244()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21FE6F2DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21FE6F31C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21FE6F35C()
{
  _Block_release(*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_21FE6F3AC()
{
  _Block_release(*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_21FE6F3FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21FE6F444()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21FE6F48C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21FE6F4CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t screenDidDim(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AXPerformSafeBlock();
  }

  return result;
}

id SBAXLocalizedStringWithTable(void *a1, void *a2)
{
  v3 = SBAXLocalizedStringWithTable_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    SBAXLocalizedStringWithTable_cold_1();
  }

  v6 = [SBAXLocalizedStringWithTable_AXBundle localizedStringForKey:v5 value:v5 table:v4];

  return v6;
}

uint64_t __SBAXLocalizedStringWithTable_block_invoke()
{
  SBAXLocalizedStringWithTable_AXBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id SBAXBacklightControllerInstance()
{
  v0 = SBAXBacklightControllerInstance_SharedInstance;
  if (!SBAXBacklightControllerInstance_SharedInstance)
  {
    v1 = [NSClassFromString(&cfstr_Sbbacklightcon.isa) safeValueForKey:@"sharedInstanceIfExists"];
    v2 = SBAXBacklightControllerInstance_SharedInstance;
    SBAXBacklightControllerInstance_SharedInstance = v1;

    v0 = SBAXBacklightControllerInstance_SharedInstance;
  }

  return v0;
}

uint64_t AXSpringBoardGlueSBLockScreenControllerInstance()
{
  v0 = AXSpringBoardGlueSBLockScreenControllerInstance_class;
  if (!AXSpringBoardGlueSBLockScreenControllerInstance_class)
  {
    v0 = NSClassFromString(&cfstr_Sblockscreenma.isa);
    AXSpringBoardGlueSBLockScreenControllerInstance_class = v0;
  }

  return [(objc_class *)v0 safeValueForKey:@"sharedInstanceIfExists"];
}

id AXSBUIControllerSharedInstance()
{
  v0 = AXSBUIControllerSharedInstance_SharedInstance;
  if (!AXSBUIControllerSharedInstance_SharedInstance)
  {
    v1 = [NSClassFromString(&cfstr_Sbuicontroller.isa) safeValueForKey:@"sharedInstanceIfExists"];
    v2 = AXSBUIControllerSharedInstance_SharedInstance;
    AXSBUIControllerSharedInstance_SharedInstance = v1;

    v0 = AXSBUIControllerSharedInstance_SharedInstance;
  }

  return v0;
}

id AXSBLockScreenEnvironment()
{
  v0 = AXSpringBoardGlueSBLockScreenControllerInstance_class;
  if (!AXSpringBoardGlueSBLockScreenControllerInstance_class)
  {
    v0 = NSClassFromString(&cfstr_Sblockscreenma.isa);
    AXSpringBoardGlueSBLockScreenControllerInstance_class = v0;
  }

  v1 = [(objc_class *)v0 safeValueForKey:@"sharedInstanceIfExists"];
  v2 = [v1 safeValueForKey:@"_lockScreenEnvironment"];

  return v2;
}

id AXSBApplicationControllerInstance()
{
  v0 = AXSBApplicationControllerInstance_AX_SBApplicationController;
  if (!AXSBApplicationControllerInstance_AX_SBApplicationController)
  {
    v1 = [NSClassFromString(&cfstr_Sbapplicationc.isa) safeValueForKey:@"sharedInstance"];
    v2 = AXSBApplicationControllerInstance_AX_SBApplicationController;
    AXSBApplicationControllerInstance_AX_SBApplicationController = v1;

    v0 = AXSBApplicationControllerInstance_AX_SBApplicationController;
  }

  return v0;
}

id AXSBApplicationWithIdentifier(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  v3 = a1;
  AXPerformSafeBlock();
  v1 = v5[5];

  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21FE70988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void __AXSBApplicationWithIdentifier_block_invoke(uint64_t a1)
{
  v5 = AXSBApplicationControllerInstance();
  v2 = [v5 applicationWithBundleIdentifier:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id AXSBLockScreenViewController()
{
  v0 = AXSBLockScreenEnvironment();
  v1 = [v0 safeValueForKey:@"rootViewController"];

  return v1;
}

void sub_21FE724F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FE75808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FE76A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE76C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE76F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE77098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE779B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE77B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE78750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE789BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE78AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE78B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBAXIsViewVisible(void *a1)
{
  v1 = a1;
  if ([v1 isHidden] & 1) != 0 || (objc_msgSend(v1, "isHiddenOrHasHiddenAncestor"))
  {
    v2 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || ([v1 window], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
    {
      [v1 frame];
      v2 = fmin(fabs(v3), fabs(v4)) >= 0.001;
    }
  }

  return v2;
}

void sub_21FE78DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE78EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE79084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE793A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE79670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE79860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE79A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE79BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7A0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7A264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7A3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7A54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7A66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7AB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7AD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7AE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7B008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7B19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7B870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7BA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7BBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7BD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7C648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7C98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7D5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_21FE7D738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7D85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7D99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7DAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7DC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7DDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7DF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHUComfortSoundsSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHUComfortSoundsSettingsClass_softClass;
  v7 = getHUComfortSoundsSettingsClass_softClass;
  if (!getHUComfortSoundsSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHUComfortSoundsSettingsClass_block_invoke;
    v3[3] = &unk_27842BD38;
    v3[4] = &v4;
    __getHUComfortSoundsSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21FE7E168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7ECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE7F288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE80534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXPISystemActionHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXPISystemActionHelperClass_softClass;
  v7 = getAXPISystemActionHelperClass_softClass;
  if (!getAXPISystemActionHelperClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXPISystemActionHelperClass_block_invoke;
    v3[3] = &unk_27842BD38;
    v3[4] = &v4;
    __getAXPISystemActionHelperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21FE80670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE80A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE8312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE8326C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE833C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE834FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE83658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE837B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE83954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE83B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE844D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE84634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE847A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE8491C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE84B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSiriSimpleActivationSourceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriActivationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SiriActivationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27842C2A8;
    v6 = 0;
    SiriActivationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SiriActivationLibraryCore_frameworkLibrary)
  {
    __getSiriSimpleActivationSourceClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SiriSimpleActivationSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSiriSimpleActivationSourceClass_block_invoke_cold_1();
  }

  getSiriSimpleActivationSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SiriActivationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SiriActivationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPKPassLibraryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PassKitCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27842C2C0;
    v6 = 0;
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    __getPKPassLibraryClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("PKPassLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKPassLibraryClass_block_invoke_cold_1();
  }

  getPKPassLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PassKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHUComfortSoundsSettingsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HearingUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HearingUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27842C2D8;
    v6 = 0;
    HearingUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HearingUtilitiesLibraryCore_frameworkLibrary)
  {
    __getHUComfortSoundsSettingsClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("HUComfortSoundsSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHUComfortSoundsSettingsClass_block_invoke_cold_1();
  }

  getHUComfortSoundsSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HearingUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HearingUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSOSManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SOSLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27842C2F0;
    v6 = 0;
    SOSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SOSLibraryCore_frameworkLibrary)
  {
    __getSOSManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SOSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSManagerClass_block_invoke_cold_1();
  }

  getSOSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SOSLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAXRemoteViewServiceAdaptorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccessibilityRemoteUIServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityRemoteUIServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27842C308;
    v6 = 0;
    AccessibilityRemoteUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccessibilityRemoteUIServicesLibraryCore_frameworkLibrary)
  {
    __getAXRemoteViewServiceAdaptorClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("AXRemoteViewServiceAdaptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXRemoteViewServiceAdaptorClass_block_invoke_cold_1();
  }

  getAXRemoteViewServiceAdaptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityRemoteUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityRemoteUIServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AccessibilityPhysicalInteractionLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary)
  {
    AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityPhysicalInteractionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAXPISystemActionHelperClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!AccessibilityPhysicalInteractionLibraryCore())
  {
    __getAXPISystemActionHelperClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("AXPISystemActionHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXPISystemActionHelperClass_block_invoke_cold_1();
  }

  getAXPISystemActionHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_21FE8BC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FE8D090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 224), 8);
  _Block_object_dispose((v57 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_21FE8D668(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void hidDeviceCallback(void *a1, uint64_t a2, uint64_t a3, __IOHIDDevice *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = a4;
    _os_log_impl(&dword_21FE6B000, v6, OS_LOG_TYPE_DEFAULT, "Received assistive device callback: %@", buf, 0xCu);
  }

  if (a4)
  {
    if (AXHasCapability())
    {
      v7 = IOHIDDeviceConformsTo(a4, 0x60u, 1u) != 0;
    }

    else
    {
      v7 = 0;
    }

    buf[0] = 0;
    objc_opt_class();
    IOHIDDeviceGetProperty(a4, @"DeviceUsagePairs");
    v8 = __UIAccessibilityCastAsClass();
    if (buf[0] == 1)
    {
      abort();
    }

    v9 = v8;
    v24 = v7;
    context = a1;
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v9;
      _os_log_impl(&dword_21FE6B000, v10, OS_LOG_TYPE_DEFAULT, "Usage pairs: %@", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v9;
    v12 = [(__IOHIDDevice *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
LABEL_12:
      v15 = 0;
      while (1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        v17 = [v16 objectForKey:@"DeviceUsage"];
        v18 = [v17 intValue];

        v19 = [v16 objectForKey:@"DeviceUsagePage"];
        v20 = [v19 intValue];

        if (v20 == 9)
        {
          if ([IOHIDDeviceGetProperty(a4 @"IAPHIDAccessoryCategory")] == 7)
          {
            goto LABEL_27;
          }
        }

        else if (v20 == 1 && v18 == 10)
        {
LABEL_27:

          if (_AXSAssistiveTouchScannerEnabled())
          {
            goto LABEL_31;
          }

          if (v24)
          {
LABEL_29:
            if (!_AXSAssistiveTouchEnabled())
            {
              goto LABEL_30;
            }
          }

          else
          {
LABEL_30:
            _AXSAssistiveTouchScannerSetEnabled();
          }

LABEL_31:
          if (IOHIDDeviceOpen(a4, 0))
          {
            _AXLogWithFacility();
          }

          IOHIDDeviceRegisterInputValueCallback(a4, inputValueCallback, context);
          goto LABEL_34;
        }

        if (v13 == ++v15)
        {
          v13 = [(__IOHIDDevice *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v13)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    if (v24)
    {
      if (!_AXSAssistiveTouchScannerEnabled())
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (IOHIDDeviceConformsTo(a4, 1u, 0xBu) || IOHIDDeviceConformsTo(a4, 0x41u, 1u))
    {
      _AXSVoiceOverTouchSetEnabledAndAutoConfirmUsage();
      _AXSVoiceOverTouchSetUIEnabled();
      v23 = AXLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21FE6B000, v23, OS_LOG_TYPE_DEFAULT, "Enabling VoiceOver for a braille display", buf, 2u);
      }
    }

LABEL_34:
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t inputValueCallback(int a1, int a2, IOHIDDeviceRef device)
{
  if (!IOHIDDeviceConformsTo(device, 0x60u, 1u) || (result = _AXSAssistiveTouchEnabled(), !result))
  {
    result = _AXSAssistiveTouchScannerEnabled();
    if (!result)
    {

      return _AXSAssistiveTouchScannerSetEnabled();
    }
  }

  return result;
}

void sub_21FE91ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE91CFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_21FE960FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_21FE979BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FE99028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21FE99328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __incomingCallStateChanged_block_invoke()
{
  v0 = [MEMORY[0x277D6EDF8] sharedInstance];
  v1 = [v0 incomingCall];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = [MEMORY[0x277D6EDF8] sharedInstance];
    v3 = [v4 currentVideoCall];
  }

  if ([v3 status] == 4)
  {
    v5 = v3;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __incomingCallStateChanged_block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CE6B98];
  v2 = [*(a1 + 32) displayName];
  argument = [v1 axAttributedStringWithString:v2];

  [argument setAttribute:&unk_2833B1468 forKey:*MEMORY[0x277CE6BC8]];
  UIAccessibilityPostNotification(*MEMORY[0x277D76438], argument);
}

void __incomingCallStateChanged_block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x277D6EDF8] sharedInstance];
  v3 = [v2 incomingCall];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [MEMORY[0x277D6EDF8] sharedInstance];
  v7 = [v6 incomingVideoCall];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [MEMORY[0x277D6EDF8] sharedInstance];
  *(*(a1[6] + 8) + 24) = [v10 currentAudioAndVideoCallCount];
}

void __incomingCallStateChanged_block_invoke_1528(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) status] == 4)
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6 = 138543618;
      v7 = v3;
      v8 = 1024;
      v9 = [v3 status];
      _os_log_impl(&dword_21FE6B000, v2, OS_LOG_TYPE_DEFAULT, "Auto-answering incoming call: %{public}@ , with status: %d", &v6, 0x12u);
    }

    v4 = [MEMORY[0x277D6EDF8] sharedInstance];
    [v4 answerCall:*(a1 + 32)];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void AXSBPrepareWindowForTripleClickSpeaking(void *a1)
{
  v2 = a1;
  v1 = _AXSTripleClickCopyOptions();
  if ([v1 containsObject:&unk_2833B1510] && !UIAccessibilityIsVoiceOverRunning())
  {
    [v2 setAccessibilityIdentifier:@"TripleClickAskWindow"];
  }
}

void sub_21FE9CB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21FE9D420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE9D980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE9DD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Block_object_dispose((v33 - 96), 8);
  _Block_object_dispose((v33 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_21FE9EC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE9EE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE9F74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21FE9F9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBIconLocationDockSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary();
  result = dlsym(v2, "SBIconLocationDock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationDockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpringBoardHomeLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardHomeLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27842C918;
    v5 = 0;
    SpringBoardHomeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SpringBoardHomeLibraryCore_frameworkLibrary;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary)
  {
    SpringBoardHomeLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SpringBoardHomeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardHomeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSBIconLocationFloatingDockSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary();
  result = dlsym(v2, "SBIconLocationFloatingDock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationFloatingDockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21FEA08F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIAXLoadVisualAlertsBundle()
{
  if ((_UIAXLoadVisualAlertsBundle_didLoad & 1) == 0)
  {
    v0 = MEMORY[0x277CCA8D8];
    v1 = AXSystemRootDirectory();
    v2 = [v1 stringByAppendingPathComponent:@"/System/Library/AccessibilityBundles/VisualAlerts.bundle"];
    v3 = [v0 bundleWithPath:v2];

    if (([v3 isLoaded] & 1) == 0)
    {
      [v3 load];
      _UIAXLoadVisualAlertsBundle_didLoad = 1;
    }
  }
}

void _accessibilityVisualAlertChanged()
{
  if (_AXSVisualAlertEnabled() && _accessibilityHasCameraFlash())
  {

    _UIAXLoadVisualAlertsBundle();
  }
}

void _accessibilityEnhanceTextLegibilityChanged()
{
  if (_accessibilityEnhanceTextLegibilityChanged_onceToken != -1)
  {
    _accessibilityEnhanceTextLegibilityChanged_cold_1();
  }

  v1 = _accessibilityEnhanceTextLegibilityChanged_KeyboardPurgeQueue;

  dispatch_async(v1, &__block_literal_global_709);
}

BOOL _accessibilityHasCameraFlash()
{
  v0 = *MEMORY[0x277D0EE90];
  v1 = MGCopyAnswer();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  v4 = v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2) != 0;
  CFRelease(v2);
  return v4;
}

id _accessibilityInitializeSpeakTypingServer()
{
  if (_AXSWordFeedbackEnabled())
  {
    return [MEMORY[0x277D65370] sharedInstance];
  }

  if (_AXSLetterFeedbackEnabled())
  {
    return [MEMORY[0x277D65370] sharedInstance];
  }

  if (_AXSPhoneticFeedbackEnabled())
  {
    return [MEMORY[0x277D65370] sharedInstance];
  }

  result = _AXSQuickTypePredictionFeedbackEnabled();
  if (result)
  {
    return [MEMORY[0x277D65370] sharedInstance];
  }

  return result;
}

void sub_21FEA25AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id deviceUsagePairs(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [MEMORY[0x277CBEB18] array];
  v14 = &a9;
  if (v9)
  {
    do
    {
      [v10 addObject:v9];
      v11 = v14++;
      v12 = *v11;

      v9 = v12;
    }

    while (v12);
  }

  return v10;
}

void _homeButtonBreakageMessageHandler(uint64_t a1, uint64_t a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CE6978] sharedInstance];
  v5 = [v4 ignoreLogging];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CE6978] identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138543362;
        v20 = v10;
        _os_log_impl(&dword_21FE6B000, v7, v8, "%{public}@", buf, 0xCu);
      }
    }
  }

  if (a3 == -536870608)
  {
    v11 = [MEMORY[0x277CE6978] sharedInstance];
    v12 = [v11 ignoreLogging];

    if ((v12 & 1) == 0)
    {
      v13 = [MEMORY[0x277CE6978] identifier];
      v14 = AXLoggerForFacility();

      v15 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = AXColorizeFormatLog();
        v17 = _AXStringForArgs();
        if (os_log_type_enabled(v14, v15))
        {
          *buf = 138543362;
          v20 = v17;
          _os_log_impl(&dword_21FE6B000, v14, v15, "%{public}@", buf, 0xCu);
        }
      }
    }

    [objc_opt_class() _checkForHomeButtonBreakage:0];
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t ___accessibilityEnhanceTextLegibilityChanged_block_invoke()
{
  _accessibilityEnhanceTextLegibilityChanged_KeyboardPurgeQueue = dispatch_queue_create("AXKeyboardPurgeQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __AXAssetAndDataClient_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CE7740]);
  v1 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  v2 = [v1 stringWithFormat:@"AXAssetClient-springBoard-client-%@", v5];
  v3 = [v0 initWithIdentifier:v2 serviceBundleName:@"AXAssetAndDataServer"];
  v4 = AXAssetAndDataClient_Client;
  AXAssetAndDataClient_Client = v3;
}

uint64_t sub_21FEA5654()
{
  v1 = sub_21FEA5648();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t sub_21FEA56A8(uint64_t a1)
{
  v2 = sub_21FEA5648();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t sub_21FEA57B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21FEA5708();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21FEA5800@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21FEA5748();
  *a1 = result & 1;
  return result;
}

uint64_t HearingActivityContentState.encode(to:)(uint64_t a1)
{
  v2 = a1;
  v10 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC48, &qword_21FEB5780);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v2 - v3;
  v10 = MEMORY[0x28223BE20](v2);
  v4 = v10[3];
  v5 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v4);
  sub_21FEA6438();
  sub_21FEB0D8C();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_21FEA5B58(uint64_t a1)
{
  v2 = a1;
  v10 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CD20, &qword_21FEB5CF8);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v2 - v3;
  v10 = MEMORY[0x28223BE20](v2);
  v4 = v10[3];
  v5 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v4);
  sub_21FEA66A8();
  sub_21FEB0D8C();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_21FEA5DF0()
{
  v3[3] = 0;
  v3[0] = 0;
  v3[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC60, &qword_21FEB5788);
  *(v1 + 16) = sub_21FEB0B3C();
  v3[2] = sub_21FEB0A4C();
  sub_21FEB0B7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC68, &qword_21FEB5790);
  sub_21FEA6724();
  sub_21FEB0C8C();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC78, &qword_21FEB5798);
    sub_21FEB0D3C();
    if (!v2)
    {
      break;
    }

    sub_21FEA6140();
  }

  sub_21FEA6820(v3);

  return v1;
}

uint64_t sub_21FEA5F30()
{
  type metadata accessor for ActivityStore();
  result = sub_21FEA5DB4();
  qword_27CF1CBF8 = result;
  return result;
}

uint64_t *sub_21FEA5F64()
{
  if (qword_27CF1CBF0 != -1)
  {
    swift_once();
  }

  return &qword_27CF1CBF8;
}

uint64_t sub_21FEA5FC4()
{
  v1 = *sub_21FEA5F64();

  return v1;
}

uint64_t sub_21FEA5FF4()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  sub_21FEB0B7C();
  swift_endAccess();
  return v2;
}

uint64_t sub_21FEA6044(uint64_t a1)
{
  sub_21FEB0B7C();
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_21FEA6140()
{
  sub_21FEB0A5C();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC80, &qword_21FEB57A0);
  sub_21FEB0B9C();
  return swift_endAccess();
}

uint64_t sub_21FEA6288()
{
  type metadata accessor for HearingActivityGateway();
  result = sub_21FEA62BC();
  qword_27CF1D580 = result;
  return result;
}

uint64_t sub_21FEA62BC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_21FEA6954();
}

uint64_t *sub_21FEA62F8()
{
  if (qword_27CF1CC00 != -1)
  {
    swift_once();
  }

  return &qword_27CF1D580;
}

uint64_t sub_21FEA6358()
{
  v1 = *sub_21FEA62F8();

  return v1;
}

uint64_t sub_21FEA6388()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_21FEA63D8(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

unint64_t sub_21FEA6438()
{
  v2 = qword_27CF1CC40;
  if (!qword_27CF1CC40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CC40);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t sub_21FEA658C()
{
  v2 = qword_27CF1CC50;
  if (!qword_27CF1CC50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CC50);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

unint64_t sub_21FEA66A8()
{
  v2 = qword_27CF1CC58;
  if (!qword_27CF1CC58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CC58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_21FEA6724()
{
  v2 = qword_27CF1CC70;
  if (!qword_27CF1CC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF1CC68, &qword_21FEB5790);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CC70);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t *sub_21FEA6820(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t type metadata accessor for HearingActivityGateway()
{
  v1 = qword_27CF1CCE0;
  if (!qword_27CF1CCE0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_21FEA68E8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC27AXSpringBoardServerInstance22HearingActivityGateway_logger;
  v2 = sub_21FEB0B2C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_21FEA6954()
{
  v16 = 0;
  v17 = 0;
  v21 = v0;
  *(v0 + 16) = 0;
  sub_21FEB0BDC();
  sub_21FEB0BDC();
  sub_21FEB0B1C();
  v12 = *sub_21FEA5F64();

  swift_beginAccess();
  v13 = *(v12 + 16);
  sub_21FEB0B7C();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC60, &qword_21FEB5788);
  sub_21FEB0B7C();

  v14 = sub_21FEB0B5C();

  if (v14 > 0)
  {
    v6 = *sub_21FEA5F64();

    swift_beginAccess();
    v7 = *(v6 + 16);
    sub_21FEB0B7C();
    swift_endAccess();

    v8 = sub_21FEB0B7C();

    v20 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC88, &qword_21FEB57A8);
    sub_21FEA6CE8();
    sub_21FEB0C7C();
    v9 = v18;
    v10 = v19;
    if (v19)
    {
      v16 = v18;
      v17 = v19;

      v4 = *sub_21FEA5F64();

      sub_21FEB0B7C();
      swift_beginAccess();
      v5 = *(v4 + 16);
      sub_21FEB0B7C();
      swift_endAccess();
      v15[0] = v9;
      v15[1] = v10;
      sub_21FEB0B8C();
      sub_21FEA6D70(v15);
      v3 = v15[2];
      swift_beginAccess();
      v1 = *(v11 + 16);
      *(v11 + 16) = v3;

      swift_endAccess();
    }

    else
    {
    }
  }

  return v11;
}

unint64_t sub_21FEA6CE8()
{
  v2 = qword_27CF1CC90;
  if (!qword_27CF1CC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF1CC88, &qword_21FEB57A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CC90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21FEA6D70(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_21FEA6D9C()
{
  v1[13] = v0;
  v1[8] = v1;
  v1[9] = 0;
  v1[11] = 0;
  v1[12] = 0;
  v2 = sub_21FEB0B2C();
  v1[14] = v2;
  v10 = *(v2 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC98, &qword_21FEB57B8) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCA0, &qword_21FEB57C0);
  v1[19] = v4;
  v12 = *(v4 - 8);
  v1[20] = v12;
  v5 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v6 = sub_21FEB0ACC();
  v1[22] = v6;
  v13 = *(v6 - 8);
  v1[23] = v13;
  v7 = *(v13 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[9] = v0;
  v8 = v1[8];

  return MEMORY[0x2822009F8](sub_21FEA6FCC, 0);
}

uint64_t sub_21FEA6FCC()
{
  v58 = v0;
  v51 = v0[13];
  v0[8] = v0;
  swift_beginAccess();
  v52 = *(v51 + 16);

  swift_endAccess();
  v0[10] = v52;
  if (v0[10])
  {
    sub_21FEA9038(v50 + 10);
    v1 = swift_task_alloc();
    v50[25] = v1;
    *v1 = v50[8];
    v1[1] = sub_21FEA7FF8;
    v2 = v50[13];

    return sub_21FEA92D4();
  }

  else
  {
    sub_21FEA9038(v50 + 10);
    v45 = v50[24];
    v48 = v50[21];
    v44 = v50[18];
    v43 = sub_21FEB0AAC();
    sub_21FEB0D6C();
    (*(*(v43 - 8) + 104))(v4, *MEMORY[0x277CB94E8]);
    sub_21FEA9064();
    sub_21FEB0ABC();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC60, &qword_21FEB5788);
    v6 = nullsub_1(v5);
    nullsub_1(v6);
    sub_21FEA5B34();
    v7 = sub_21FEB0A3C();
    (*(*(v7 - 8) + 56))(v44);
    sub_21FEA90BC();
    sub_21FEA9138();
    sub_21FEA658C();
    sub_21FEA90A8();
    sub_21FEB0ADC();
    v46 = sub_21FEB0BDC();
    v47 = v8;
    sub_21FEB0A7C();
    sub_21FEB0D6C();
    v49 = sub_21FEB0A6C();
    v31 = v50[21];
    v32 = v50[19];
    v9 = v50[17];
    v35 = v50[14];
    v33 = v50[13];
    v30 = v50[20];
    v34 = v50[15];

    sub_21FEA91B4(v46, v47);
    (*(v30 + 8))(v31, v32);
    v50[12] = v49;
    (*(v34 + 16))(v9, v33 + OBJC_IVAR____TtC27AXSpringBoardServerInstance22HearingActivityGateway_logger, v35);

    oslog = sub_21FEB0B0C();
    v42 = sub_21FEB0CAC();
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_21FEAD3B8;
    *(v36 + 24) = v49;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_21FEAD3A0;
    *(v39 + 24) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCB8, &qword_21FEB57C8);
    sub_21FEB0D6C();
    v40 = v10;

    *v40 = sub_21FEAD398;
    v40[1] = v37;

    v40[2] = sub_21FEAD398;
    v40[3] = v38;

    v40[4] = sub_21FEAD3AC;
    v40[5] = v39;
    sub_21FEA9064();

    if (os_log_type_enabled(oslog, v42))
    {
      buf = sub_21FEB0CDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCC0, &qword_21FEB57D0);
      v28 = sub_21FEAAA40(0);
      v29 = sub_21FEAAA40(1);
      v53 = buf;
      v54 = v28;
      v55 = v29;
      sub_21FEAAA94(2, &v53);
      sub_21FEAAA94(1, &v53);
      v56 = sub_21FEAD398;
      v57 = v37;
      sub_21FEAAAA8(&v56, &v53, &v54, &v55);
      v56 = sub_21FEAD398;
      v57 = v38;
      sub_21FEAAAA8(&v56, &v53, &v54, &v55);
      v56 = sub_21FEAD3AC;
      v57 = v39;
      sub_21FEAAAA8(&v56, &v53, &v54, &v55);
      _os_log_impl(&dword_21FE6B000, oslog, v42, "Requested activity (%s) successfully.", buf, 0xCu);
      sub_21FEAAAF4(v28);
      sub_21FEAAAF4(v29);
      sub_21FEB0CBC();
    }

    else
    {
    }

    v25 = v50[24];
    v26 = v50[22];
    v20 = v50[17];
    v21 = v50[14];
    v22 = v50[13];
    v24 = v50[23];
    v19 = v50[15];
    MEMORY[0x277D82BD8](oslog);
    (*(v19 + 8))(v20, v21);

    swift_beginAccess();
    v11 = *(v22 + 16);
    *(v22 + 16) = v49;

    swift_endAccess();

    v23 = *sub_21FEA5F64();

    sub_21FEA6140();

    (*(v24 + 8))(v25, v26);
    v12 = v50[24];
    v15 = v50[21];
    v16 = v50[18];
    v17 = v50[17];
    v18 = v50[16];

    v13 = *(v50[8] + 8);
    v14 = v50[8];

    return v13();
  }
}

uint64_t sub_21FEA7FF8()
{
  v4 = *v0;
  v1 = *(*v0 + 200);
  *(v4 + 64) = *v0;

  v2 = *(v4 + 64);

  return MEMORY[0x2822009F8](sub_21FEA8110, 0);
}

uint64_t sub_21FEA8110()
{
  v53 = v0;
  v0[8] = v0;
  v43 = v0[24];
  v46 = v0[21];
  v42 = v0[18];
  v41 = sub_21FEB0AAC();
  sub_21FEB0D6C();
  (*(*(v41 - 8) + 104))(v1, *MEMORY[0x277CB94E8]);
  sub_21FEA9064();
  sub_21FEB0ABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC60, &qword_21FEB5788);
  v2 = (nullsub_1)();
  nullsub_1(v2);
  sub_21FEA5B34();
  v3 = sub_21FEB0A3C();
  (*(*(v3 - 8) + 56))(v42);
  sub_21FEA90BC();
  sub_21FEA9138();
  sub_21FEA658C();
  sub_21FEA90A8();
  sub_21FEB0ADC();
  v44 = sub_21FEB0BDC();
  v45 = v4;
  sub_21FEB0A7C();
  sub_21FEB0D6C();
  v47 = sub_21FEB0A6C();
  v28 = v40[21];
  v29 = v40[19];
  v5 = v40[17];
  v32 = v40[14];
  v30 = v40[13];
  v27 = v40[20];
  v31 = v40[15];

  sub_21FEA91B4(v44, v45);
  (*(v27 + 8))(v28, v29);
  v40[12] = v47;
  (*(v31 + 16))(v5, v30 + OBJC_IVAR____TtC27AXSpringBoardServerInstance22HearingActivityGateway_logger, v32);

  oslog = sub_21FEB0B0C();
  v39 = sub_21FEB0CAC();
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_21FEAD3B8;
  *(v33 + 24) = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_21FEAD3A0;
  *(v36 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCB8, &qword_21FEB57C8);
  sub_21FEB0D6C();
  v37 = v6;

  *v37 = sub_21FEAD398;
  v37[1] = v34;

  v37[2] = sub_21FEAD398;
  v37[3] = v35;

  v37[4] = sub_21FEAD3AC;
  v37[5] = v36;
  sub_21FEA9064();

  if (os_log_type_enabled(oslog, v39))
  {
    buf = sub_21FEB0CDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCC0, &qword_21FEB57D0);
    v25 = sub_21FEAAA40(0);
    v26 = sub_21FEAAA40(1);
    v48 = buf;
    v49 = v25;
    v50 = v26;
    sub_21FEAAA94(2, &v48);
    sub_21FEAAA94(1, &v48);
    v51 = sub_21FEAD398;
    v52 = v34;
    sub_21FEAAAA8(&v51, &v48, &v49, &v50);
    v51 = sub_21FEAD398;
    v52 = v35;
    sub_21FEAAAA8(&v51, &v48, &v49, &v50);
    v51 = sub_21FEAD3AC;
    v52 = v36;
    sub_21FEAAAA8(&v51, &v48, &v49, &v50);
    _os_log_impl(&dword_21FE6B000, oslog, v39, "Requested activity (%s) successfully.", buf, 0xCu);
    sub_21FEAAAF4(v25);
    sub_21FEAAAF4(v26);
    sub_21FEB0CBC();
  }

  else
  {
  }

  v22 = v40[24];
  v23 = v40[22];
  v17 = v40[17];
  v18 = v40[14];
  v19 = v40[13];
  v21 = v40[23];
  v16 = v40[15];
  MEMORY[0x277D82BD8](oslog);
  (*(v16 + 8))(v17, v18);

  swift_beginAccess();
  v7 = *(v19 + 16);
  *(v19 + 16) = v47;

  swift_endAccess();

  v20 = *sub_21FEA5F64();

  sub_21FEA6140();

  (*(v21 + 8))(v22, v23);
  v8 = v40[24];
  v12 = v40[21];
  v13 = v40[18];
  v14 = v40[17];
  v15 = v40[16];

  v9 = *(v40[8] + 8);
  v10 = v40[8];

  return v9();
}

uint64_t *sub_21FEA9038(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_21FEA90BC()
{
  v2 = qword_27CF1CCA8;
  if (!qword_27CF1CCA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CCA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_21FEA9138()
{
  v2 = qword_27CF1CCB0;
  if (!qword_27CF1CCB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CCB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21FEA9200(uint64_t a1, unint64_t a2)
{
  if (a2 > 1)
  {
  }

  return result;
}

uint64_t sub_21FEA923C()
{
  sub_21FEB0A5C();
  v1 = sub_21FEB0BBC();

  return v1;
}

uint64_t sub_21FEA92D4()
{
  v1[24] = v1;
  v1[25] = 0;
  memset(v1 + 7, 0, 0x28uLL);
  v1[20] = 0;
  v1[21] = 0;
  v2 = sub_21FEB0A9C();
  v1[27] = v2;
  v8 = *(v2 - 8);
  v1[28] = v8;
  v3 = *(v8 + 64) + 15;
  v1[29] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC98, &qword_21FEB57B8) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCC8, &qword_21FEB57E0) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[25] = v0;
  v6 = v1[24];

  return MEMORY[0x2822009F8](sub_21FEA9454, 0);
}

uint64_t sub_21FEA9454()
{
  v0[24] = v0;
  v24 = *sub_21FEA5F64();

  swift_beginAccess();
  v25 = *(v24 + 16);
  sub_21FEB0B7C();
  swift_endAccess();

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CC60, &qword_21FEB5788);
  v0[32] = v28;
  v27 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837E0];
  v26 = sub_21FEB0B7C();

  MEMORY[0x223D72040](v26, v27, v28, v29);
  memcpy(v0 + 7, v0 + 2, 0x28uLL);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCD0, &qword_21FEB57E8);
    sub_21FEB0B6C();
    v21 = v23[18];
    v22 = v23[19];
    v23[33] = v22;
    if (!v22)
    {
      break;
    }

    v20 = v23[32];
    v23[20] = v21;
    v23[21] = v22;
    v19 = *sub_21FEA5F64();

    sub_21FEB0B7C();
    swift_beginAccess();
    v23[34] = *(v19 + 16);
    sub_21FEB0B7C();
    swift_endAccess();
    v23[22] = v21;
    v23[23] = v22;
    sub_21FEB0B8C();
    sub_21FEA6D70((v23 + 22));
    if (v23[26])
    {
      v16 = v23[31];
      v15 = v23[30];
      v17 = v23[29];
      v23[35] = v23[26];

      sub_21FEA9038(v23 + 26);

      nullsub_1(v1);
      sub_21FEA5B34();
      v2 = sub_21FEB0A3C();
      (*(*(v2 - 8) + 56))(v15);
      sub_21FEA90BC();
      sub_21FEA9138();
      sub_21FEA658C();
      sub_21FEA90A8();
      sub_21FEB0ADC();
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCA0, &qword_21FEB57C0);
      (*(*(v3 - 8) + 56))(v16, 0, 1);
      sub_21FEB0A8C();
      v18 = (MEMORY[0x277CB9290] + *MEMORY[0x277CB9290]);
      v4 = *(MEMORY[0x277CB9290] + 4);
      v5 = swift_task_alloc();
      v23[36] = v5;
      *v5 = v23[24];
      v5[1] = sub_21FEA9948;
      v6 = v23[31];
      v7 = v23[29];

      return v18(v6, v7);
    }

    sub_21FEA9038(v23 + 26);

    v9 = v23[33];
  }

  v12 = v23[31];
  v13 = v23[30];
  v14 = v23[29];
  sub_21FEAD3C0(v23 + 7);

  v10 = *(v23[24] + 8);
  v11 = v23[24];

  return v10();
}

uint64_t sub_21FEA9948()
{
  v10 = *v0;
  v1 = *(*v0 + 288);
  v8 = *(*v0 + 280);
  v9 = *(*v0 + 272);
  v7 = *(*v0 + 248);
  v5 = *(*v0 + 232);
  v4 = *(*v0 + 224);
  v6 = *(*v0 + 216);
  *(v10 + 192) = *v0;

  (*(v4 + 8))(v5, v6);
  sub_21FEAD444(v7);

  v2 = *(v10 + 192);

  return MEMORY[0x2822009F8](sub_21FEA9B24, 0);
}

uint64_t sub_21FEA9B24()
{
  *(v0 + 192) = v0;
  while (1)
  {
    v9 = v23[33];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCD0, &qword_21FEB57E8);
    sub_21FEB0B6C();
    v21 = v23[18];
    v19 = v23[19];
    v23[33] = v19;
    if (!v19)
    {
      break;
    }

    v22 = v23[32];
    v23[20] = v21;
    v23[21] = v19;
    v20 = *sub_21FEA5F64();

    sub_21FEB0B7C();
    swift_beginAccess();
    v23[34] = *(v20 + 16);
    sub_21FEB0B7C();
    swift_endAccess();
    v23[22] = v21;
    v23[23] = v19;
    sub_21FEB0B8C();
    sub_21FEA6D70((v23 + 22));
    if (v23[26])
    {
      v16 = v23[31];
      v15 = v23[30];
      v17 = v23[29];
      v23[35] = v23[26];

      sub_21FEA9038(v23 + 26);

      nullsub_1(v1);
      sub_21FEA5B34();
      v2 = sub_21FEB0A3C();
      (*(*(v2 - 8) + 56))(v15);
      sub_21FEA90BC();
      sub_21FEA9138();
      sub_21FEA658C();
      sub_21FEA90A8();
      sub_21FEB0ADC();
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCA0, &qword_21FEB57C0);
      (*(*(v3 - 8) + 56))(v16, 0, 1);
      sub_21FEB0A8C();
      v18 = (MEMORY[0x277CB9290] + *MEMORY[0x277CB9290]);
      v4 = *(MEMORY[0x277CB9290] + 4);
      v5 = swift_task_alloc();
      v23[36] = v5;
      *v5 = v23[24];
      v5[1] = sub_21FEA9948;
      v6 = v23[31];
      v7 = v23[29];

      return v18(v6, v7);
    }

    sub_21FEA9038(v23 + 26);
  }

  v12 = v23[31];
  v13 = v23[30];
  v14 = v23[29];
  sub_21FEAD3C0(v23 + 7);

  v10 = *(v23[24] + 8);
  v11 = v23[24];

  return v10();
}

uint64_t sub_21FEA9F40()
{
  sub_21FEA9038((v0 + 16));
  v3 = OBJC_IVAR____TtC27AXSpringBoardServerInstance22HearingActivityGateway_logger;
  v1 = sub_21FEB0B2C();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_21FEA9FC0()
{
  v0 = *sub_21FEA9F40();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_21FEAA024()
{
  *(v1 + 16) = v1;
  *(v1 + 24) = 0;
  *(v1 + 24) = v0;
  v2 = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_21FEAA058, 0);
}

uint64_t sub_21FEAA058()
{
  *(v0 + 16) = v0;
  *(v0 + 32) = *sub_21FEA62F8();

  v1 = swift_task_alloc();
  *(v3 + 40) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_21FEAA114;

  return sub_21FEA6D9C();
}

uint64_t sub_21FEAA114()
{
  v5 = *v0;
  v1 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  *(v5 + 16) = *v0;

  v2 = *(*(v5 + 16) + 8);

  return v2();
}

uint64_t sub_21FEAA2F8(const void *a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = v2;
  v2[4] = _Block_copy(a1);
  MEMORY[0x277D82BE0](a2);
  v4 = swift_task_alloc();
  *(v6 + 40) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_21FEAA3C4;

  return sub_21FEAA024();
}

uint64_t sub_21FEAA3C4()
{
  v6 = *v0;
  v1 = *(*v0 + 40);
  aBlock = *(*v0 + 32);
  v4 = *(*v0 + 24);
  *(v6 + 16) = *v0;

  aBlock[2]();
  _Block_release(aBlock);
  v2 = *(*(v6 + 16) + 8);

  return v2();
}

uint64_t sub_21FEAA53C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v24 = &unk_21FEB5D10;
  v27 = &unk_21FEB5D20;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CD28, &qword_21FEB5D00);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v26 = &v17 - v17;
  v25 = 0;
  v3 = sub_21FEB0C6C();
  (*(*(v3 - 8) + 56))(v26, 1);
  v20 = 48;
  v21 = 7;
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  v28 = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v7;
  v6[5] = v5;
  v22 = v6[2];
  v23 = v6[3];
  swift_unknownObjectRetain();
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v8;
  v15 = v28;
  v14[2] = v22;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v15;
  sub_21FEAAEA8(v11, v11, v12, v13, v14);
}

uint64_t sub_21FEAA6DC()
{
  *(v1 + 16) = v1;
  *(v1 + 24) = 0;
  *(v1 + 24) = v0;
  v2 = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_21FEAA710, 0);
}

uint64_t sub_21FEAA710()
{
  *(v0 + 16) = v0;
  *(v0 + 32) = *sub_21FEA62F8();

  v1 = swift_task_alloc();
  *(v3 + 40) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_21FEAA114;

  return sub_21FEA92D4();
}

uint64_t sub_21FEAA85C(const void *a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = v2;
  v2[4] = _Block_copy(a1);
  MEMORY[0x277D82BE0](a2);
  v4 = swift_task_alloc();
  *(v6 + 40) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_21FEAA3C4;

  return sub_21FEAA6DC();
}

id HearingActivityProxy.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for HearingActivityProxy();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id HearingActivityProxy.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingActivityProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21FEAAA40(uint64_t a1)
{
  if (a1)
  {
    return sub_21FEB0CDC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21FEAAA94(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_21FEAAAF4(uint64_t result)
{
  if (result)
  {
    sub_21FEB0CCC();
    return sub_21FEB0CBC();
  }

  return result;
}

uint64_t sub_21FEAAB68(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v8 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_21FEAAC74;

  return v8();
}

uint64_t sub_21FEAAC74()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_21FEAAD9C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v9 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_21FEAAC74;

  return v9();
}

uint64_t sub_21FEAAEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v49 = &unk_21FEB5D38;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_21FEB5D30;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CD28, &qword_21FEB5D00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v54);
  v56 = v16 - v55;
  sub_21FEAE44C(v5, v16 - v55);
  v57 = sub_21FEB0C6C();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_21FEAE574(v56);
    v44 = 0;
  }

  else
  {
    v43 = sub_21FEB0C5C();
    (*(v58 + 8))(v56, v57);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v48 + 16);
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();
  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_21FEB0C4C();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  sub_21FEB0B7C();
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v22 = v46;
    v23 = sub_21FEB0BCC();

    v24 = v23 + 32;

    v7 = swift_allocObject();
    v8 = v48;
    v9 = v31;
    v10 = v30;
    v25 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v26 = 0;
    if (v9 != 0 || v10 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v31;
      v63[3] = v30;
      v26 = v63;
    }

    v60 = 7;
    v61 = v26;
    v62 = v24;
    v21 = swift_task_create();

    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v20 = v27;
  if (v27)
  {
    v16[1] = v20;
    v16[0] = v20;
    sub_21FEAE574(v54);

    return v16[0];
  }

  else
  {

    sub_21FEAE574(v54);
    v11 = swift_allocObject();
    v12 = v48;
    v13 = v31;
    v14 = v30;
    v18 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v19 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v31;
      v64[3] = v30;
      v19 = v64;
    }

    return swift_task_create();
  }
}

uint64_t sub_21FEAB4C8(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_21FEAB5DC;

  return v7(a1);
}

uint64_t sub_21FEAB5DC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void *sub_21FEAB730(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_21FEAB7CC(v4, v5, a3);
  v8 = *a1;

  sub_21FEB0CEC();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_21FEAB7CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_21FEB0B7C();
  v14 = sub_21FEAB970(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_21FEAE704(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_21FEAE704(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

uint64_t sub_21FEAB970(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_21FEB0D4C();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_21FEABD28(v22, v17, v16);
        sub_21FEB0CFC();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_21FEABEA4(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_21FEB0D2C();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_21FEB0D4C();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_21FEABD28(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_21FEB0D5C();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_21FEB0D5C();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21FEABEA4(uint64_t a1, uint64_t a2)
{
  v7 = sub_21FEABF60(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CD30, &qword_21FEB5D40);
  inited = swift_initStackObject();
  v3 = sub_21FEAC770(inited, 1);
  *v4 = 0;
  sub_21FEAC7BC();
  sub_21FEAC7F0(v3);

  v8 = sub_21FEACB98(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21FEABF60(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_21FEB0BEC();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_21FEAD0B8();
  }

  v10 = sub_21FEACBB0(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_21FEB0D5C();
    __break(1u);
    return sub_21FEAD0B8();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_21FEACCF4(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_21FEB0D2C();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_21FEACCF4(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_21FEB0D1C();
  if (v2)
  {
LABEL_29:
    sub_21FEB0D4C();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  sub_21FEB0B7C();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_21FEB0D4C();
    __break(1u);
  }

  sub_21FEA6D70(v17);
  return v10;
}

uint64_t sub_21FEAC770(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_21FEAC7F0(uint64_t a1)
{
  v20 = sub_21FEACB98(a1);
  v2 = sub_21FEACB98(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;
    sub_21FEB0B7C();
    v4 = sub_21FEAD0E8(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_21FEB0D5C();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_21FEAD254(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_21FEB0D4C();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_21FEB0D4C();
    __break(1u);
    goto LABEL_21;
  }

  sub_21FEACCF4((a1 + 32), v20, v12);
  sub_21FEB0B7C();

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_21FEAAB5C();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_21FEACBB0(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CD30, &qword_21FEB5D40);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *sub_21FEACCF4(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_21FEB0D5C();
    __break(1u);
  }

  result = sub_21FEB0D5C();
  __break(1u);
  return result;
}

uint64_t sub_21FEACE44(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x223D72100](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_21FEB0D4C();
    __break(1u);
  }

  v5 = sub_21FEB0C2C();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_21FEAD0B8()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *sub_21FEAD0E8(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_21FEACBB0(v4, v6);
  if (v7)
  {
    sub_21FEAD25C((a4 + 32), v4, v5 + 32);
    sub_21FEB0B7C();

    *(a4 + 16) = 0;
  }

  else
  {
    sub_21FEB0B7C();

    sub_21FEACCF4((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_21FEAD25C(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_21FEB0D5C();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_21FEAD384(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t *sub_21FEAD3C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_21FEAD400();
  return a1;
}

uint64_t sub_21FEAD444(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CCA0, &qword_21FEB57C0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_21FEAD4F8()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_21FEAAC74;

  return sub_21FEAA2F8(v6, v5);
}

uint64_t sub_21FEAD5D8()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_21FEAAC74;

  return sub_21FEAA85C(v6, v5);
}

unint64_t sub_21FEAD6F8()
{
  v2 = qword_27CF1CCD8;
  if (!qword_27CF1CCD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CCD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for HearingActivityContentState(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for HearingActivityContentState(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_21FEADB00()
{
  v2 = sub_21FEB0B2C();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of HearingActivityProxy.start()()
{
  v6 = v1;
  *(v1 + 16) = v1;
  v2 = *((*v0 & *MEMORY[0x277D85000]) + 0x50);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_21FEAAC74;

  return v7();
}

uint64_t dispatch thunk of HearingActivityProxy.finish()()
{
  v6 = v1;
  *(v1 + 16) = v1;
  v2 = *((*v0 & *MEMORY[0x277D85000]) + 0x58);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_21FEAAC74;

  return v7();
}

unint64_t sub_21FEADEAC()
{
  v2 = qword_27CF1CCF0;
  if (!qword_27CF1CCF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CCF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_21FEADF40()
{
  v2 = qword_27CF1CCF8;
  if (!qword_27CF1CCF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CCF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_21FEAE01C()
{
  v2 = qword_27CF1CD00;
  if (!qword_27CF1CD00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CD00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_21FEAE0B0()
{
  v2 = qword_27CF1CD08;
  if (!qword_27CF1CD08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_21FEAE144()
{
  v2 = qword_27CF1CD10;
  if (!qword_27CF1CD10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_21FEAE1D8()
{
  v2 = qword_27CF1CD18;
  if (!qword_27CF1CD18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CF1CD18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_21FEAE254()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_21FEAAC74;

  return sub_21FEAAB68(v8, v5, v6);
}

uint64_t sub_21FEAE34C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_21FEAAC74;

  return sub_21FEAAD9C(a1, v6, v7, v8);
}

void *sub_21FEAE44C(const void *a1, void *a2)
{
  v6 = sub_21FEB0C6C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF1CD28, &qword_21FEB5D00);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_21FEAE574(uint64_t a1)
{
  v3 = sub_21FEB0C6C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_21FEAE61C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_21FEAAC74;

  return sub_21FEAB4C8(a1, v6);
}

uint64_t sub_21FEAE704(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

id sub_21FEAE83C()
{
  sub_21FEAF2C8();
  type metadata accessor for ResourceBundleClass();
  result = sub_21FEAE884();
  qword_27CF1CD38 = result;
  return result;
}

id sub_21FEAE884()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t *sub_21FEAE8DC()
{
  if (qword_27CF1CC08 != -1)
  {
    swift_once();
  }

  return &qword_27CF1CD38;
}

uint64_t sub_21FEAE93C()
{
  v2 = sub_21FEB0AFC();
  __swift_allocate_value_buffer(v2, qword_27CF1D590);
  __swift_project_value_buffer(v2, qword_27CF1D590);
  sub_21FEB0BDC();
  v0 = sub_21FEAE8DC();
  MEMORY[0x277D82BE0](*v0);
  return sub_21FEB0AEC();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_21FEAEAC8()
{
  if (qword_27CF1CC10 != -1)
  {
    swift_once();
  }

  v0 = sub_21FEB0AFC();
  return __swift_project_value_buffer(v0, qword_27CF1D590);
}

uint64_t sub_21FEAEB34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21FEAEAC8();
  v1 = sub_21FEB0AFC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_21FEAEB98()
{
  v2 = sub_21FEB0AFC();
  __swift_allocate_value_buffer(v2, qword_27CF1D5A8);
  __swift_project_value_buffer(v2, qword_27CF1D5A8);
  sub_21FEB0BDC();
  v0 = sub_21FEAE8DC();
  MEMORY[0x277D82BE0](*v0);
  return sub_21FEB0AEC();
}

uint64_t sub_21FEAEC30()
{
  if (qword_27CF1CC18 != -1)
  {
    swift_once();
  }

  v0 = sub_21FEB0AFC();
  return __swift_project_value_buffer(v0, qword_27CF1D5A8);
}

uint64_t sub_21FEAEC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21FEAEC30();
  v1 = sub_21FEB0AFC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_21FEAED00()
{
  v2 = sub_21FEB0AFC();
  __swift_allocate_value_buffer(v2, qword_27CF1D5C0);
  __swift_project_value_buffer(v2, qword_27CF1D5C0);
  sub_21FEB0BDC();
  v0 = sub_21FEAE8DC();
  MEMORY[0x277D82BE0](*v0);
  return sub_21FEB0AEC();
}

uint64_t sub_21FEAED98()
{
  if (qword_27CF1CC20 != -1)
  {
    swift_once();
  }

  v0 = sub_21FEB0AFC();
  return __swift_project_value_buffer(v0, qword_27CF1D5C0);
}

uint64_t sub_21FEAEE04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21FEAED98();
  v1 = sub_21FEB0AFC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_21FEAEE68()
{
  v2 = sub_21FEB0AFC();
  __swift_allocate_value_buffer(v2, qword_27CF1D5D8);
  __swift_project_value_buffer(v2, qword_27CF1D5D8);
  sub_21FEB0BDC();
  v0 = sub_21FEAE8DC();
  MEMORY[0x277D82BE0](*v0);
  return sub_21FEB0AEC();
}

uint64_t sub_21FEAEF00()
{
  if (qword_27CF1CC28 != -1)
  {
    swift_once();
  }

  v0 = sub_21FEB0AFC();
  return __swift_project_value_buffer(v0, qword_27CF1D5D8);
}

uint64_t sub_21FEAEF6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21FEAEF00();
  v1 = sub_21FEB0AFC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_21FEAEFD0()
{
  v2 = sub_21FEB0AFC();
  __swift_allocate_value_buffer(v2, qword_27CF1D5F0);
  __swift_project_value_buffer(v2, qword_27CF1D5F0);
  sub_21FEB0BDC();
  v0 = sub_21FEAE8DC();
  MEMORY[0x277D82BE0](*v0);
  return sub_21FEB0AEC();
}

uint64_t sub_21FEAF068()
{
  if (qword_27CF1CC30 != -1)
  {
    swift_once();
  }

  v0 = sub_21FEB0AFC();
  return __swift_project_value_buffer(v0, qword_27CF1D5F0);
}

uint64_t sub_21FEAF0D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21FEAF068();
  v1 = sub_21FEB0AFC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_21FEAF138()
{
  v2 = sub_21FEB0AFC();
  __swift_allocate_value_buffer(v2, qword_27CF1D608);
  __swift_project_value_buffer(v2, qword_27CF1D608);
  sub_21FEB0BDC();
  v0 = sub_21FEAE8DC();
  MEMORY[0x277D82BE0](*v0);
  return sub_21FEB0AEC();
}

uint64_t sub_21FEAF1D0()
{
  if (qword_27CF1CC38 != -1)
  {
    swift_once();
  }

  v0 = sub_21FEB0AFC();
  return __swift_project_value_buffer(v0, qword_27CF1D608);
}

uint64_t sub_21FEAF23C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21FEAF1D0();
  v1 = sub_21FEB0AFC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_21FEAF2C8()
{
  v2 = qword_27CF1CD40;
  if (!qword_27CF1CD40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CF1CD40);
    return ObjCClassMetadata;
  }

  return v2;
}

void __getSiriSimpleActivationSourceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSiriSimpleActivationSourceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSpringBoardServerHelper.m" lineNumber:132 description:{@"Unable to find class %s", "SiriSimpleActivationSource"}];

  __break(1u);
}

void __getSiriSimpleActivationSourceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SiriActivationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSpringBoardServerHelper.m" lineNumber:131 description:{@"%s", *a1}];

  __break(1u);
}

void __getPKPassLibraryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPKPassLibraryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSpringBoardServerHelper.m" lineNumber:100 description:{@"Unable to find class %s", "PKPassLibrary"}];

  __break(1u);
}

void __getPKPassLibraryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSpringBoardServerHelper.m" lineNumber:99 description:{@"%s", *a1}];

  __break(1u);
}

void __getHUComfortSoundsSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHUComfortSoundsSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSpringBoardServerHelper.m" lineNumber:93 description:{@"Unable to find class %s", "HUComfortSoundsSettings"}];

  __break(1u);
}

void __getHUComfortSoundsSettingsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HearingUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSpringBoardServerHelper.m" lineNumber:92 description:{@"%s", *a1}];

  __break(1u);
}

void __getSOSManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSOSManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSpringBoardServerHelper.m" lineNumber:112 description:{@"Unable to find class %s", "SOSManager"}];

  __break(1u);
}

void __getSOSManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SOSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSpringBoardServerHelper.m" lineNumber:111 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXRemoteViewServiceAdaptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAXRemoteViewServiceAdaptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSpringBoardServerHelper.m" lineNumber:118 description:{@"Unable to find class %s", "AXRemoteViewServiceAdaptor"}];

  __break(1u);
}

void __getAXRemoteViewServiceAdaptorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AccessibilityRemoteUIServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSpringBoardServerHelper.m" lineNumber:117 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXPISystemActionHelperClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAXPISystemActionHelperClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXSpringBoardServerHelper.m" lineNumber:106 description:{@"Unable to find class %s", "AXPISystemActionHelper"}];

  __break(1u);
}

void __getAXPISystemActionHelperClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AccessibilityPhysicalInteractionLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSpringBoardServerHelper.m" lineNumber:105 description:{@"%s", *a1}];

  __break(1u);
}

void SpringBoardHomeLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardHomeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSpringBoardServerSideAppManager.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}
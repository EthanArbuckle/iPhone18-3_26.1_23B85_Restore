void sub_29C37C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak(&a38);
  objc_destroyWeak((v41 - 184));
  _Unwind_Resume(a1);
}

void sub_29C37CB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _frontBoardCategoriesDidInstall()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 installSafeCategories:&__block_literal_global_1528 afterDelay:@"SB - SpringBoardAccessibility" validationTargetName:@"SB - SpringBoardAccessibility" overrideProcessName:0.0];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  v2 = *MEMORY[0x29EDBD6F0];

  CFNotificationCenterRemoveObserver(LocalCenter, 0, v2, 0);
}

uint64_t _StackshotTaken()
{
  v2[1] = *MEMORY[0x29EDCA608];
  result = UIAccessibilityIsVoiceOverRunning();
  if (result)
  {
    if (_StackshotTaken_onceToken != -1)
    {
      _StackshotTaken_cold_1();
    }

    v1 = *MEMORY[0x29EDB84C0];
    v2[0] = &unk_2A230C8B0;
    [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v2 forKeys:&v1 count:1];
    return AudioServicesPlaySystemSoundWithOptions();
  }

  return result;
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

uint64_t AXSpringBoardFrameworkGlueSBLockScreenControllerInstance()
{
  if (AXSpringBoardFrameworkGlueSBLockScreenControllerInstance_onceToken != -1)
  {
    AXSpringBoardFrameworkGlueSBLockScreenControllerInstance_cold_1();
  }

  v1 = AXSpringBoardFrameworkGlueSBLockScreenControllerInstance_SBLockScreenManagerClass;

  return [v1 safeValueForKey:@"sharedInstanceIfExists"];
}

Class __AXSpringBoardFrameworkGlueSBLockScreenControllerInstance_block_invoke()
{
  result = NSClassFromString(&cfstr_Sblockscreenma.isa);
  AXSpringBoardFrameworkGlueSBLockScreenControllerInstance_SBLockScreenManagerClass = result;
  return result;
}

uint64_t AXSpringBoardIsAssistantVisible()
{
  v0 = [NSClassFromString(&cfstr_Sbassistantcon.isa) safeBoolForKey:@"isVisible"];
  v1 = [NSClassFromString(&cfstr_Sbassistantcon.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v2 = v1;
  if (v0)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = [v1 safeValueForKey:@"currentSession"];
    v5 = [v4 safeValueForKey:@"presentationContext"];
    v6 = [v5 safeBoolForKey:@"hasTextModality"];
    LOBYTE(v0) = (v6 | [v5 safeBoolForKey:@"hasVisionModality"]) ^ 1;
  }

  return v0 & 1;
}

Class AXSpringBoardGlueSBTelephonyManagerClass()
{
  v0 = AXSpringBoardGlueSBTelephonyManagerClass_class;
  if (!AXSpringBoardGlueSBTelephonyManagerClass_class)
  {
    v0 = NSClassFromString(&cfstr_Sbtelephonyman.isa);
    AXSpringBoardGlueSBTelephonyManagerClass_class = v0;
  }

  return v0;
}

Class AXSpringBoardGlueSBUIControllerClass()
{
  v0 = AXSpringBoardGlueSBUIControllerClass_class;
  if (!AXSpringBoardGlueSBUIControllerClass_class)
  {
    v0 = NSClassFromString(&cfstr_Sbuicontroller.isa);
    AXSpringBoardGlueSBUIControllerClass_class = v0;
  }

  return v0;
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

id AXSBLockScreenViewController()
{
  v0 = AXSBLockScreenEnvironment();
  v1 = [v0 safeValueForKey:@"rootViewController"];

  return v1;
}

BOOL AXSpringBoardIsReadyToBeProbed()
{
  v0 = [NSClassFromString(&cfstr_Sbmainworkspac.isa) safeValueForKey:@"_instanceIfExists"];
  v1 = v0 != 0;

  return v1;
}

Class AXSpringBoardGlueSBPlatformController()
{
  v0 = AXSpringBoardGlueSBPlatformController_class;
  if (!AXSpringBoardGlueSBPlatformController_class)
  {
    v0 = NSClassFromString(&cfstr_Sbplatformcont.isa);
    AXSpringBoardGlueSBPlatformController_class = v0;
  }

  return v0;
}

uint64_t ___appTransitionOccurred_block_invoke()
{
  if (__axClient)
  {
    return +[AXSpringBoardGlue toggleVoiceOverInfoPanel];
  }

  return result;
}

void sub_29C380994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C380C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C38143C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C381B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C38211C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_29C384CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

id AXSBFloatingDockControllerFromActiveDisplayWindowScene()
{
  v0 = AXWindowScene(@"activeDisplayWindowScene");
  v1 = [v0 safeValueForKey:@"floatingDockController"];

  return v1;
}

id AXWindowScene(void *a1)
{
  v1 = a1;
  v2 = [*MEMORY[0x29EDC8008] safeValueForKey:@"windowSceneManager"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:v1];
  v5 = __UIAccessibilitySafeClass();

  return v5;
}

Class AXSpringBoardGlueSBIconControllerClass()
{
  v0 = AXSpringBoardGlueSBIconControllerClass_class;
  if (!AXSpringBoardGlueSBIconControllerClass_class)
  {
    v0 = NSClassFromString(&cfstr_Sbiconcontroll.isa);
    AXSpringBoardGlueSBIconControllerClass_class = v0;
  }

  return v0;
}

uint64_t AXSBOnenessOrXCUITestIsCurrentlyRequestingClientDuringContinuitySession()
{
  if (AXProcessIsCarPlay())
  {
    return 0;
  }

  v1 = [MEMORY[0x29EDBDFA8] server];
  v2 = [v1 isContinuitySessionActive];

  v3 = soft_AXRequestingClient() == 16 || soft_AXRequestingClient() == 2;
  return v2 & v3;
}

uint64_t soft_AXRequestingClient()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getAXRequestingClientSymbolLoc_ptr;
  v6 = getAXRequestingClientSymbolLoc_ptr;
  if (!getAXRequestingClientSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x29EDCA5F8];
    v2[1] = 3221225472;
    v2[2] = __getAXRequestingClientSymbolLoc_block_invoke;
    v2[3] = &unk_29F2FBCE0;
    v2[4] = &v3;
    __getAXRequestingClientSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXRequestingClient_cold_1();
  }

  return v0();
}

void sub_29C385938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXSBHIconManagerFromSharedIconController()
{
  v0 = AXSBIconControllerSharedInstance();
  if (AXSBOnenessOrXCUITestIsCurrentlyRequestingClientDuringContinuitySession())
  {
    v1 = AXSBHomeScreenControllerForContinuityDisplay();
    v2 = [v1 safeValueForKey:@"iconManager"];
  }

  else
  {
    v2 = [v0 safeValueForKey:@"iconManager"];
  }

  return v2;
}

id AXSBIconControllerSharedInstance()
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v0 = [*MEMORY[0x29EDC8008] safeValueForKey:@"windowSceneManager"];
  v1 = __UIAccessibilitySafeClass();

  [v1 safeSetForKey:@"connectedWindowScenes"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 safeBoolForKey:{@"isMainDisplayWindowScene", v11}])
        {
          v9 = [v7 safeValueForKey:@"homeScreenController"];
          v8 = [v9 safeValueForKey:@"iconController"];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

id AXSBHomeScreenControllerForContinuityDisplay()
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = 0;
  v0 = [*MEMORY[0x29EDC8008] safeValueForKey:@"windowSceneManager"];
  v1 = __UIAccessibilitySafeClass();

  [v1 safeSetForKey:@"connectedWindowScenes"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      if ([v7 safeBoolForKey:{@"isContinuityDisplayWindowScene", v11}])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v8 = v7;

    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = [v8 safeValueForKey:@"homeScreenController"];
  }

  else
  {
LABEL_9:

    v8 = 0;
LABEL_12:
    v9 = 0;
  }

  return v9;
}

id AXMainSBHomeScreenController()
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v0 = [*MEMORY[0x29EDC8008] safeValueForKey:@"windowSceneManager"];
  v1 = __UIAccessibilitySafeClass();

  [v1 safeSetForKey:@"connectedWindowScenes"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 safeBoolForKey:{@"isMainDisplayWindowScene", v10}])
        {
          v8 = [v7 safeValueForKey:@"homeScreenController"];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

id AXSBHomeScreenOverlayController()
{
  if (AXSBOnenessOrXCUITestIsCurrentlyRequestingClientDuringContinuitySession())
  {
    AXSBHomeScreenControllerForContinuityDisplay();
  }

  else
  {
    AXMainSBHomeScreenController();
  }
  v0 = ;
  v1 = [v0 safeValueForKey:@"homeScreenOverlayController"];

  return v1;
}

id AXSBCurrentFolderController()
{
  if (AXSBOnenessOrXCUITestIsCurrentlyRequestingClientDuringContinuitySession())
  {
    AXSBHomeScreenControllerForContinuityDisplay();
  }

  else
  {
    AXSBIconControllerSharedInstance();
  }
  v0 = ;
  v1 = [v0 safeValueForKey:@"_currentFolderController"];

  return v1;
}

id AXSBRootFolderController()
{
  if (AXSBOnenessOrXCUITestIsCurrentlyRequestingClientDuringContinuitySession())
  {
    AXSBHomeScreenControllerForContinuityDisplay();
  }

  else
  {
    AXMainSBHomeScreenController();
  }
  v0 = ;
  v1 = [v0 safeValueForKey:@"_rootFolderController"];

  return v1;
}

id AXSBAssistantControllerSharedInstance()
{
  if (!AXSBAssistantControllerSharedInstance_SharedInstance && NSClassFromString(&cfstr_Sbassistantcon.isa))
  {
    v0 = [NSClassFromString(&cfstr_Sbassistantcon.isa) safeValueForKey:@"sharedInstanceIfExists"];
    v1 = AXSBAssistantControllerSharedInstance_SharedInstance;
    AXSBAssistantControllerSharedInstance_SharedInstance = v0;
  }

  v2 = AXSBAssistantControllerSharedInstance_SharedInstance;

  return v2;
}

id AXSBMainSwitcherControllerCoordinatorSharedInstance()
{
  if (!AXSBMainSwitcherControllerCoordinatorSharedInstance_SharedInstance && NSClassFromString(&cfstr_Sbmainswitcher.isa))
  {
    v0 = [NSClassFromString(&cfstr_Sbmainswitcher.isa) safeValueForKey:@"sharedInstanceIfExists"];
    v1 = AXSBMainSwitcherControllerCoordinatorSharedInstance_SharedInstance;
    AXSBMainSwitcherControllerCoordinatorSharedInstance_SharedInstance = v0;
  }

  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance_SharedInstance;

  return v2;
}

id AXSBApplicationControllerSharedInstance()
{
  v0 = AXSBApplicationControllerSharedInstance_SharedInstance;
  if (!AXSBApplicationControllerSharedInstance_SharedInstance)
  {
    v1 = [NSClassFromString(&cfstr_Sbapplicationc.isa) safeValueForKey:@"sharedInstance"];
    v2 = AXSBApplicationControllerSharedInstance_SharedInstance;
    AXSBApplicationControllerSharedInstance_SharedInstance = v1;

    v0 = AXSBApplicationControllerSharedInstance_SharedInstance;
  }

  return v0;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  if (accessibilityBundle_axBundle)
  {
    v2 = accessibilityBundle_axBundle;
LABEL_4:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A22F9D20 table:@"Accessibility"];

    goto LABEL_5;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = MEMORY[0x29ED37650]();
  v5 = [v4 stringByAppendingPathComponent:@"SpringBoard.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityBundle_axBundle;
  accessibilityBundle_axBundle = v6;

  v2 = accessibilityBundle_axBundle;
  if (v2)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

id AXSBScrollDescriptionForCurrentPage(uint64_t a1)
{
  v2 = AXSBIconControllerSharedInstance();
  v3 = [v2 safeIntegerForKey:@"_accessibilityIconListCount"];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"springboard.page.status");
  v6 = [v4 localizedStringWithFormat:v5, a1, v3];

  if (AXSBFolderControllerIsRootFolder())
  {
    v7 = AXSBCurrentFolderController();
    v8 = [v7 safeValueForKey:@"_contentView"];
    v9 = [v8 safeIntegerForKey:@"firstIconPageIndex"];
    if (v9 - [v8 safeIntegerForKey:@"minimumPageIndex"] == a1)
    {
      v10 = @"home";
    }

    else
    {
      v11 = [v8 safeIntegerForKey:@"leadingCustomViewPageIndex"];
      if (v11 - [v8 safeIntegerForKey:@"minimumPageIndex"] != a1)
      {
LABEL_7:

        goto LABEL_8;
      }

      v10 = @"today.visible.key";
    }

    v12 = accessibilityLocalizedString(v10);
    v13 = __UIAXStringForVariables();

    v6 = v13;
    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

BOOL AXSBFolderControllerIsRootFolder()
{
  v0 = AXSBCurrentFolderController();
  v1 = [v0 safeUnsignedIntegerForKey:@"_depth"] == 0;

  return v1;
}

id AXSwitcherController(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = AXWindowScene(v3);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v8 = v4;
  v9 = v5;
  AXPerformSafeBlock();
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void sub_29C386594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __AXSwitcherController_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) switcherControllerForWindowScene:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

id AXSwitcherViewController(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  AXSwitcherController(v3, v4);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v7 = v13 = 0;
  AXPerformSafeBlock();
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_29C386748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXSwitcherViewController_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) safeValueForKey:@"switcherViewController"];

  return MEMORY[0x2A1C71028]();
}

id AXLibraryViewController(void *a1)
{
  v1 = a1;
  v2 = AXSBIconControllerSharedInstance();
  v3 = [v2 safeValueForKey:@"_mainDisplayHomeScreenController"];

  v4 = [v3 safeValueForKey:@"overlayLibraryViewController"];
  if ([v3 safeBoolForKey:@"isModalAppLibrarySupported"])
  {
    v5 = AXWindowScene(v1);
    v6 = [v5 safeValueForKeyPath:@"modalLibraryController.libraryViewController"];

    v4 = v6;
  }

  return v4;
}

id AXControlCenterPageStatus(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 isEqualToString:@"favorite"])
  {
    v6 = @"favorites";
LABEL_9:
    v7 = accessibilityLocalizedString(v6);
    goto LABEL_10;
  }

  if ([v5 isEqualToString:@"nowPlaying"])
  {
    v6 = @"now.playing";
    goto LABEL_9;
  }

  v6 = @"home";
  if ([v5 isEqualToString:@"home"])
  {
    goto LABEL_9;
  }

  v6 = @"connectivity";
  if ([v5 isEqualToString:@"connectivity"])
  {
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"tvRemote"])
  {
    v6 = @"tv.remote";
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"springboard.page.status");
  v10 = [v8 localizedStringWithFormat:v9, a1 + 1, a2];
  v11 = __UIAXStringForVariables();

  return v11;
}

void *__getAXRequestingClientSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __AXRuntimeLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F2FBD00;
    v6 = 0;
    AXRuntimeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AXRuntimeLibraryCore_frameworkLibrary;
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    __getAXRequestingClientSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AXRequestingClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXRequestingClientSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AXRuntimeLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXRuntimeLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_29C387950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C388E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C3891A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C38A77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C38ADCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C38BBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C38D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C38F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C390574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_29C393470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3936BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C393980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C393F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3949B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C394DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C395090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3965AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C398924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C398E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C39CB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C39CC84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_29C3A22BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_29C3A2B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3A2EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C3A39A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t _SERVER_SBVOTMIGRegisterSpringBoardVoiceOver(mach_port_t a1, _DWORD *a2)
{
  *name = 0;
  v4 = MEMORY[0x29EDCA6B0];
  v5 = *MEMORY[0x29EDCA6B0];
  v8 = 1;
  mach_port_allocate(v5, 1u, &name[1]);
  mach_port_insert_right(v5, name[1], name[1], 0x14u);
  MEMORY[0x29ED37DF0](v5, name[1], 1, &v8, 4);
  mach_port_request_notification(*v4, name[1], 72, 0, a1, 0x15u, name);
  v6 = +[SBVoiceOverTouchConnection defaultConnection];
  [v6 _registerVOTConnectionWithPort:name[1]];

  *a2 = name[1];
  return 0;
}

uint64_t _SERVER_SBVOTMIGPostSpringBoardVoiceOverData(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6)
{
  if (!_SBVOTPort)
  {
    return 5;
  }

  AXUnserializeWrapper();
  if (a2 > 1520)
  {
    if (a2 == 1521)
    {
      if (!+[AXSpringBoardGlue canPerformAppSwitch])
      {
        goto LABEL_20;
      }

      v9 = +[SBVoiceOverTouchConnection defaultConnection];
      [v9 _programmaticAppSwitch:{objc_msgSend(0, "BOOLValue")}];
    }

    else
    {
      if (a2 != 1524)
      {
        goto LABEL_20;
      }

      v15 = [0 BOOLValue];
      v9 = +[SBVoiceOverTouchConnection defaultConnection];
      [v9 setInVoiceOverPassthroughMode:v15];
    }

LABEL_19:

    goto LABEL_20;
  }

  if (a2 == 1512)
  {
    v9 = +[SBVoiceOverTouchConnection defaultConnection];
    [v9 setScreenCurtainEnabled:{objc_msgSend(0, "BOOLValue")}];
    goto LABEL_19;
  }

  if (a2 == 1519)
  {
    v9 = +[AXSpringBoardGlue sharedInstance];
    if (([v9 isUILocked] & 1) == 0)
    {
      v10 = +[AXSpringBoardGlue isBuddyRunning];

      if (v10)
      {
        goto LABEL_20;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![0 count])
      {
        goto LABEL_20;
      }

      v11 = [0 objectAtIndex:0];
      v12 = [v11 BOOLValue];

      v9 = 0;
      if ([0 count] == 2)
      {
        v9 = [0 objectAtIndex:1];
      }

      v13 = +[SBVoiceOverTouchConnection defaultConnection];
      [v13 setLabelElementPanelVisible:v12 initialValue:v9];
    }

    goto LABEL_19;
  }

LABEL_20:
  if (a5)
  {
    if (a6)
    {
      munmap(a5, a6);
    }
  }

  return 0;
}

void _voiceOverTouchDied()
{
  v0 = objc_autoreleasePoolPush();
  LOBYTE(v2) = 1;
  _AXLogWithFacility();
  v1 = [SBVoiceOverTouchConnection defaultConnection:v2];
  [v1 tearDownVoiceOverTouchConnection];

  objc_autoreleasePoolPop(v0);
}

void sub_29C3A7A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C3AC298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3AC580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C3AD6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3AE004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3AE3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3AE6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AXSpringBoardSetScreenCurtainEnabled(uint64_t result)
{
  if (_SBAXScreenCurtainEnabled != result)
  {
    v1 = result;
    _IsScreenCurtainBeingEnabled = 1;
    v2 = [MEMORY[0x29EDBDFA8] server];
    v3 = [v2 isScreenLockedWithPasscode:0];

    if (v3)
    {
      AXPerformSafeBlock();
    }

    _SBAXScreenCurtainEnabled = v1;
    result = AXPerformSafeBlock();
    _IsScreenCurtainBeingEnabled = 0;
  }

  return result;
}

void __AXSpringBoardSetScreenCurtainEnabled_block_invoke()
{
  v3[1] = *MEMORY[0x29EDCA608];
  v0 = [NSClassFromString(&cfstr_Sblockscreenma.isa) safeValueForKey:@"sharedInstanceIfExists"];
  v2 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
  v3[0] = MEMORY[0x29EDB8EB0];
  v1 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 unlockUIFromSource:8 withOptions:v1];
}

void __AXSpringBoardSetScreenCurtainEnabled_block_invoke_2()
{
  BKSHIDServicesSetBacklightFactorWithFadeDuration();
  v0 = [NSClassFromString(&cfstr_Sbbacklightcon.isa) safeValueForKey:@"sharedInstanceIfExists"];
  [v0 setBacklightState:1 source:1 animated:1 completion:&__block_literal_global_1148];
}

void sub_29C3AFF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3B01E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id accessibilityBundle()
{
  v0 = accessibilityBundle_axBundle_0;
  if (!accessibilityBundle_axBundle_0)
  {
    v1 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v2 = accessibilityBundle_axBundle_0;
    accessibilityBundle_axBundle_0 = v1;

    v0 = accessibilityBundle_axBundle_0;
  }

  return v0;
}

double SBMainScreenSize()
{
  if ((SBMainScreenSize_DidInit & 1) == 0)
  {
    v0 = [MEMORY[0x29EDC7C40] mainScreen];
    [v0 bounds];
    SBMainScreenSize_ScreenSize_0 = v1;
    SBMainScreenSize_ScreenSize_1 = v2;

    SBMainScreenSize_DidInit = 1;
  }

  return *&SBMainScreenSize_ScreenSize_0;
}

id AXSBLayoutState()
{
  v0 = [MEMORY[0x29EDBDDC0] sharedServerHelper];
  v1 = [v0 sceneLayoutState];

  return v1;
}

id AXSpringBoardFloatingAppLabel()
{
  v0 = AXSpringBoardAppForLayoutRole(3);
  v1 = [v0 safeStringForKey:@"displayName"];

  return v1;
}

id AXSpringBoardAppForLayoutRole(uint64_t a1)
{
  v2 = [MEMORY[0x29EDBDDC0] sharedServerHelper];
  v3 = [v2 appForLayoutRole:a1];

  return v3;
}

id AXSpringBoardSideAppLabel()
{
  v0 = AXSpringBoardAppForLayoutRole(2);
  v1 = [v0 safeStringForKey:@"displayName"];

  return v1;
}

id AXSpringBoardPrimaryAppLabel()
{
  v0 = AXSpringBoardAppForLayoutRole(1);
  v1 = [v0 safeStringForKey:@"displayName"];

  return v1;
}

id AXSpringBoardFloatingBundleID()
{
  v0 = AXSpringBoardAppForLayoutRole(3);
  v1 = [v0 safeStringForKey:@"bundleIdentifier"];

  return v1;
}

id AXSpringBoardSideAppBundleID()
{
  v0 = AXSpringBoardAppForLayoutRole(2);
  v1 = [v0 safeStringForKey:@"bundleIdentifier"];

  return v1;
}

id AXSpringBoardPrimaryBundleID()
{
  v0 = AXSpringBoardAppForLayoutRole(1);
  v1 = [v0 safeStringForKey:@"bundleIdentifier"];

  return v1;
}

Class __getFCActivityManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  if (!FocusLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x29EDCA5F8];
    v3[2] = 3221225472;
    v3[3] = __FocusLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_29F2FC618;
    v5 = 0;
    FocusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FocusLibraryCore_frameworkLibrary)
  {
    __getFCActivityManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FCActivityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFCActivityManagerClass_block_invoke_cold_1();
  }

  getFCActivityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FocusLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FocusLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_29C3B1628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t (*SBVOTDefs_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 6738136) >= 0xFFFFFFFE)
  {
    return _SERVER_SBVOTMIGSBVOTDefs_subsystem[5 * (v1 - 6738134) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *_XRegisterSpringBoardVoiceOver(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 32) = 0x10000000000000;
  result = _SERVER_SBVOTMIGRegisterSpringBoardVoiceOver(result[3], (a2 + 28));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = *MEMORY[0x29EDCA690];
    return result;
  }

  *a2 |= 0x80000000;
  *(a2 + 4) = 40;
  *(a2 + 24) = 1;
  return result;
}

uint64_t _XPostSpringBoardVoiceOverData(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 1 || (v3 - 4161) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_14;
  }

  v6 = *(result + 56);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = *MEMORY[0x29EDCA690];
    return result;
  }

  v5 = -304;
  if (v3 - 64 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 64)
  {
    goto LABEL_7;
  }

  v8 = *(result + 40);
  if (v8 != *(result + v7 + 60))
  {
LABEL_14:
    v5 = -300;
    goto LABEL_7;
  }

  result = _SERVER_SBVOTMIGPostSpringBoardVoiceOverData(*(result + 12), *(result + 52), result + 60, v6, *(result + 28), v8);
  *(a2 + 32) = result;
  return result;
}

uint64_t SBVOTDefs_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 6738136) >= 0xFFFFFFFE && (v5 = _SERVER_SBVOTMIGSBVOTDefs_subsystem[5 * (v4 - 6738134) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x29EDCA690];
    *(a2 + 32) = -303;
  }

  return result;
}

void soft_AXRequestingClient_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"AXRequestingClientType soft_AXRequestingClient(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXSpringBoardUtilities.m" lineNumber:11 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getAXRequestingClientSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *AXRuntimeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXSpringBoardUtilities.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void __getFCActivityManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getFCActivityManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SpringBoardAccessibility.m" lineNumber:48 description:{@"Unable to find class %s", "FCActivityManager"}];

  __break(1u);
}

void __getFCActivityManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *FocusLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SpringBoardAccessibility.m" lineNumber:47 description:{@"%s", *a1}];

  __break(1u);
  AXCFormattedString();
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x2A1C59AE0](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2A1C59B50](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59B60](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59BA0](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  MEMORY[0x2A1C6A7E0](view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}
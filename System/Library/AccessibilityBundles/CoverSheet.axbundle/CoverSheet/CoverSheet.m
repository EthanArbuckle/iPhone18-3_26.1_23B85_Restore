id accessibilitySBLocalizedString(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x29EDB9F48];
  v3 = MEMORY[0x29C2D3500]();
  v4 = [v3 stringByAppendingPathComponent:@"System/Library/AccessibilityBundles/SpringBoard.axbundle"];
  v5 = [v2 bundleWithPath:v4];

  if (v5)
  {
    v6 = [v5 localizedStringForKey:v1 value:&stru_2A2185898 table:@"Accessibility"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_29BD72000(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
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
    v2[3] = &unk_29F2B9308;
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

void sub_29BD72BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
  v18 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v0 = [*MEMORY[0x29EDC8008] safeValueForKey:@"windowSceneManager"];
  v1 = __UIAccessibilitySafeClass();

  [v1 safeSetForKey:@"connectedWindowScenes"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 safeBoolForKey:{@"isMainDisplayWindowScene", v12}])
        {
          v9 = [v7 safeValueForKey:@"homeScreenController"];
          v8 = [v9 safeValueForKey:@"iconController"];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v10 = *MEMORY[0x29EDCA608];

  return v8;
}

id AXSBHomeScreenControllerForContinuityDisplay()
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v0 = [*MEMORY[0x29EDC8008] safeValueForKey:@"windowSceneManager"];
  v1 = __UIAccessibilitySafeClass();

  [v1 safeSetForKey:@"connectedWindowScenes"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      if ([v7 safeBoolForKey:{@"isContinuityDisplayWindowScene", v12}])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
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

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

id AXMainSBHomeScreenController()
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
          v8 = [v7 safeValueForKey:@"homeScreenController"];
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

  v9 = *MEMORY[0x29EDCA608];

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
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A2185898 table:@"Accessibility"];

    goto LABEL_5;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = MEMORY[0x29C2D3490]();
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
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v8 = v4;
  v9 = v5;
  AXPerformSafeBlock();
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void sub_29BD73810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __AXSwitcherController_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) switcherControllerForWindowScene:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

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
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v7 = v13 = 0;
  AXPerformSafeBlock();
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_29BD739C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AXSwitcherViewController_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"switcherViewController"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

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
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x29EDCA5F8];
    v5[2] = 3221225472;
    v5[3] = __AXRuntimeLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_29F2B9328;
    v7 = 0;
    AXRuntimeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AXRuntimeLibraryCore_frameworkLibrary;
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    __getAXRequestingClientSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "AXRequestingClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXRequestingClientSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __AXRuntimeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXRuntimeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29BD74E40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_29BD75578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BD75628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_29BD7643C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BD764EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
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
  AXDeviceIsPad();
}
uint64_t SBAccessibilityGridSizeComparison(void *a1, void *a2)
{
  v3 = SBAccessibilityGridSizeComparison_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    SBAccessibilityGridSizeComparison_cold_1();
  }

  v6 = [SBAccessibilityGridSizeComparison_Items indexOfObject:v5];

  v7 = [SBAccessibilityGridSizeComparison_Items indexOfObject:v4];
  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v6];
  v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v7];
  v10 = [v8 compare:v9];

  return v10;
}

void __SBAccessibilityGridSizeComparison_block_invoke()
{
  v5[6] = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDC6CD8];
  v5[0] = *MEMORY[0x29EDC6CB0];
  v5[1] = v0;
  v1 = *MEMORY[0x29EDC6CC0];
  v5[2] = *MEMORY[0x29EDC6CC8];
  v5[3] = v1;
  v2 = *MEMORY[0x29EDC6CD0];
  v5[4] = *MEMORY[0x29EDC6CB8];
  v5[5] = v2;
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:6];
  v4 = SBAccessibilityGridSizeComparison_Items;
  SBAccessibilityGridSizeComparison_Items = v3;
}

uint64_t SBAXIsIconViewIgnoreLocation(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"SBIconLocationAppLibrary"] & 1) != 0 || (AXSBHIconManagerFromSharedIconController(), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "safeBoolForKey:", @"isMainDisplayLibraryViewVisible"), v2, (v3))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v1 isEqualToString:@"SBIconLocationFloatingDockSuggestions"];
  }

  return v4;
}

void SBHAXCancelSBAXIconMoveSpeakTimer()
{
  v0 = SBAXIconMovedFolderLabel;
  SBAXIconMovedFolderLabel = 0;

  v1 = SBAXIconMovedIconLabel;
  SBAXIconMovedIconLabel = 0;

  [SBAXIconMoveSpeakTimer invalidate];
  v2 = SBAXIconMoveSpeakTimer;
  SBAXIconMoveSpeakTimer = 0;
}

void sub_29C3E3818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C3E3CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C3E47E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSBHIconChangeWidgetSizeToSmallApplicationShortcutItemTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary();
  result = dlsym(v2, "kSBHIconChangeWidgetSizeToSmallApplicationShortcutItemType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSBHIconChangeWidgetSizeToSmallApplicationShortcutItemTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpringBoardHomeLibrary()
{
  v5 = *MEMORY[0x29EDCA608];
  v2[0] = 0;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x29EDCA5F8];
    v2[2] = 3221225472;
    v2[3] = __SpringBoardHomeLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_29F300270;
    v4 = 0;
    SpringBoardHomeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SpringBoardHomeLibraryCore_frameworkLibrary;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary)
  {
    SpringBoardHomeLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __SpringBoardHomeLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardHomeLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkSBHIconChangeWidgetSizeToMediumApplicationShortcutItemTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary();
  result = dlsym(v2, "kSBHIconChangeWidgetSizeToMediumApplicationShortcutItemType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSBHIconChangeWidgetSizeToMediumApplicationShortcutItemTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSBHIconChangeWidgetSizeToLargeApplicationShortcutItemTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary();
  result = dlsym(v2, "kSBHIconChangeWidgetSizeToLargeApplicationShortcutItemType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSBHIconChangeWidgetSizeToLargeApplicationShortcutItemTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSBHIconChangeWidgetToAppIconApplicationShortcutItemTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary();
  result = dlsym(v2, "kSBHIconChangeWidgetToAppIconApplicationShortcutItemType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSBHIconChangeWidgetToAppIconApplicationShortcutItemTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
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
    v2[3] = &unk_29F3001E0;
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

void sub_29C3E63CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A230FAF0 table:@"Accessibility"];

    goto LABEL_5;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = MEMORY[0x29ED38670]();
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

void sub_29C3E7028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_29C3E71DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
    v5 = xmmword_29F300358;
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

void sub_29C3E818C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C3EB35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_29C3EB4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3EB9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id initSBIconLocationNone()
{
  if (LoadSpringBoardHome_loadPredicate != -1)
  {
    initSBIconLocationNone_cold_1();
  }

  v0 = dlsym(LoadSpringBoardHome_frameworkLibrary, "SBIconLocationNone");
  objc_storeStrong(&constantSBIconLocationNone, *v0);
  getSBIconLocationNone = SBIconLocationNoneFunction;
  v1 = constantSBIconLocationNone;

  return v1;
}

void __LoadSpringBoardHome_block_invoke()
{
  LoadSpringBoardHome_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SpringBoardHome.framework/SpringBoardHome", 2);
  if (!LoadSpringBoardHome_frameworkLibrary)
  {
    NSLog(&cfstr_FailedToSoftLi.isa);
  }
}

void sub_29C3EC8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C3ECBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3ED260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3EDFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3EE2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3EE508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3EE6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3EF23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C3F0488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C3F061C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F1420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C3F1BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F1D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F1F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F20E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F24C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_29C3F28D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F31B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_29C3F343C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C3F3EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
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

void sub_29C3F4F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F510C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F68A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSBIconLocationAppLibrary()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getSBIconLocationAppLibrarySymbolLoc_ptr;
  v7 = getSBIconLocationAppLibrarySymbolLoc_ptr;
  if (!getSBIconLocationAppLibrarySymbolLoc_ptr)
  {
    v1 = SpringBoardHomeLibrary_0();
    v5[3] = dlsym(v1, "SBIconLocationAppLibrary");
    getSBIconLocationAppLibrarySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getSBIconLocationAppLibrary_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_29C3F6B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F6CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getSBIconLocationAppLibrarySearch()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getSBIconLocationAppLibrarySearchSymbolLoc_ptr;
  v7 = getSBIconLocationAppLibrarySearchSymbolLoc_ptr;
  if (!getSBIconLocationAppLibrarySearchSymbolLoc_ptr)
  {
    v1 = SpringBoardHomeLibrary_0();
    v5[3] = dlsym(v1, "SBIconLocationAppLibrarySearch");
    getSBIconLocationAppLibrarySearchSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getSBIconLocationAppLibrarySearch_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_29C3F8058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSBIconLocationFloatingDockUtilities()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getSBIconLocationFloatingDockUtilitiesSymbolLoc_ptr;
  v7 = getSBIconLocationFloatingDockUtilitiesSymbolLoc_ptr;
  if (!getSBIconLocationFloatingDockUtilitiesSymbolLoc_ptr)
  {
    v1 = SpringBoardHomeLibrary_0();
    v5[3] = dlsym(v1, "SBIconLocationFloatingDockUtilities");
    getSBIconLocationFloatingDockUtilitiesSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getSBIconLocationFloatingDockUtilities_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_29C3F815C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAPUIIconLocationAppPredictions()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAPUIIconLocationAppPredictionsSymbolLoc_ptr;
  v7 = getAPUIIconLocationAppPredictionsSymbolLoc_ptr;
  if (!getAPUIIconLocationAppPredictionsSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getAPUIIconLocationAppPredictionsSymbolLoc_block_invoke;
    v3[3] = &unk_29F3001E0;
    v3[4] = &v4;
    __getAPUIIconLocationAppPredictionsSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAPUIIconLocationAppPredictions_cold_1();
  }

  v1 = *v0;

  return v1;
}

void sub_29C3F823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSBIconLocationRoot()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getSBIconLocationRootSymbolLoc_ptr;
  v7 = getSBIconLocationRootSymbolLoc_ptr;
  if (!getSBIconLocationRootSymbolLoc_ptr)
  {
    v1 = SpringBoardHomeLibrary_0();
    v5[3] = dlsym(v1, "SBIconLocationRoot");
    getSBIconLocationRootSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getSBIconLocationRoot_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_29C3F89DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3F9774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

id getSBIconLocationDock()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getSBIconLocationDockSymbolLoc_ptr;
  v7 = getSBIconLocationDockSymbolLoc_ptr;
  if (!getSBIconLocationDockSymbolLoc_ptr)
  {
    v1 = SpringBoardHomeLibrary_0();
    v5[3] = dlsym(v1, "SBIconLocationDock");
    getSBIconLocationDockSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getSBIconLocationDock_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_29C3F9A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSBIconLocationAppLibraryCategoryPodExpanded()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getSBIconLocationAppLibraryCategoryPodExpandedSymbolLoc_ptr;
  v7 = getSBIconLocationAppLibraryCategoryPodExpandedSymbolLoc_ptr;
  if (!getSBIconLocationAppLibraryCategoryPodExpandedSymbolLoc_ptr)
  {
    v1 = SpringBoardHomeLibrary_0();
    v5[3] = dlsym(v1, "SBIconLocationAppLibraryCategoryPodExpanded");
    getSBIconLocationAppLibraryCategoryPodExpandedSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getSBIconLocationAppLibraryCategoryPodExpanded_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_29C3FA44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3FB24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSBIconLocationFloatingDock()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getSBIconLocationFloatingDockSymbolLoc_ptr;
  v7 = getSBIconLocationFloatingDockSymbolLoc_ptr;
  if (!getSBIconLocationFloatingDockSymbolLoc_ptr)
  {
    v1 = SpringBoardHomeLibrary_0();
    v5[3] = dlsym(v1, "SBIconLocationFloatingDock");
    getSBIconLocationFloatingDockSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getSBIconLocationFloatingDock_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_29C3FDF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C3FE9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBIconLocationAddWidgetSheetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBIconLocationAddWidgetSheet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationAddWidgetSheetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpringBoardHomeLibrary_0()
{
  v5 = *MEMORY[0x29EDCA608];
  v2[0] = 0;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x29EDCA5F8];
    v2[2] = 3221225472;
    v2[3] = __SpringBoardHomeLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_29F300860;
    v4 = 0;
    SpringBoardHomeLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = SpringBoardHomeLibraryCore_frameworkLibrary_0;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary_0)
  {
    SpringBoardHomeLibrary_cold_1_0(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __SpringBoardHomeLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SpringBoardHomeLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getSBIconLocationAppLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBIconLocationAppLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationAppLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBIconLocationAppLibrarySearchSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBIconLocationAppLibrarySearch");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationAppLibrarySearchSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBIconLocationFloatingDockUtilitiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBIconLocationFloatingDockUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationFloatingDockUtilitiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAPUIIconLocationAppPredictionsSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!AppPredictionUIWidgetLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __AppPredictionUIWidgetLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F300878;
    v6 = 0;
    AppPredictionUIWidgetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AppPredictionUIWidgetLibraryCore_frameworkLibrary;
  if (!AppPredictionUIWidgetLibraryCore_frameworkLibrary)
  {
    __getAPUIIconLocationAppPredictionsSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "APUIIconLocationAppPredictions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPUIIconLocationAppPredictionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppPredictionUIWidgetLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppPredictionUIWidgetLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSBIconLocationRootSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBIconLocationRoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationRootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBIconLocationDockSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBIconLocationDock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationDockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBIconLocationAppLibraryCategoryPodExpandedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBIconLocationAppLibraryCategoryPodExpanded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationAppLibraryCategoryPodExpandedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBIconLocationFloatingDockSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBIconLocationFloatingDock");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationFloatingDockSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBIconLocationTodayViewSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardHomeLibrary_0();
  result = dlsym(v2, "SBIconLocationTodayView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationTodayViewSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_29C4005CC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_29C401150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C401770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29C40189C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSBIconLocationNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __SpringBoardHomeLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F3008F8;
    v6 = 0;
    SpringBoardHomeLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v2 = SpringBoardHomeLibraryCore_frameworkLibrary_1;
  if (!SpringBoardHomeLibraryCore_frameworkLibrary_1)
  {
    __getSBIconLocationNoneSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "SBIconLocationNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBIconLocationNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardHomeLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  SpringBoardHomeLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void SpringBoardHomeLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *SpringBoardHomeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"UIActionAccessibility.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
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

void getSBIconLocationAppLibrary_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationAppLibrary(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void getSBIconLocationAppLibrarySearch_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationAppLibrarySearch(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

void getSBIconLocationFloatingDockUtilities_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationFloatingDockUtilities(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void getAPUIIconLocationAppPredictions_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getAPUIIconLocationAppPredictions(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

void getSBIconLocationRoot_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationRoot(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void getSBIconLocationDock_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationDock(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:33 description:{@"%s", dlerror()}];

  __break(1u);
}

void getSBIconLocationAppLibraryCategoryPodExpanded_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationAppLibraryCategoryPodExpanded(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

void getSBIconLocationFloatingDock_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getSBIconLocationFloatingDock(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBIconViewAccessibility.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void SpringBoardHomeLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *SpringBoardHomeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBIconViewAccessibility.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void __getAPUIIconLocationAppPredictionsSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *AppPredictionUIWidgetLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBIconViewAccessibility.m" lineNumber:44 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBIconLocationNoneSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *SpringBoardHomeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBHProxiedApplicationPlaceholderAccessibility.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
  AXCFormattedString();
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
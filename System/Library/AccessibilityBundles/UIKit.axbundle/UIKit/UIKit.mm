_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

id AXUITextRangeImplClass()
{
  if (!AXUITextRangeImplClass_class)
  {
    AXUITextRangeImplClass_class = NSClassFromString(&cfstr_Uitextrangeimp.isa);
  }

  v0 = AXUITextRangeImplClass_class;

  return v0;
}

uint64_t AXShouldCreateRemoteViewForEachLayer(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong(&location, 0);
  return 1;
}

void AXHandleUserInteractionForDictation(char a1)
{
  v8 = a1;
  v7 = [NSClassFromString(&cfstr_Uidictationcon.isa) safeValueForKey:@"activeInstance"];
  if (v8 & 1) == 0 || (AXHandleUserInteractionForDictation_DidBegin)
  {
    if (AXHandleUserInteractionForDictation_DidBegin)
    {
      v1[0] = MEMORY[0x29EDC9748](v7);
      AXPerformSafeBlock();
      AXHandleUserInteractionForDictation_DidBegin = 0;
      objc_storeStrong(v1, 0);
    }
  }

  else
  {
    v1[1] = MEMORY[0x29EDCA5F8];
    v2 = -1073741824;
    v3 = 0;
    v4 = __AXHandleUserInteractionForDictation_block_invoke;
    v5 = &unk_29F30C7C8;
    v6 = MEMORY[0x29EDC9748](v7);
    AXPerformSafeBlock();
    AXHandleUserInteractionForDictation_DidBegin = 1;
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&v7, 0);
}

BOOL AXIsDictationListening()
{
  v3 = [NSClassFromString(&cfstr_Uidictationcon.isa) safeValueForKey:@"activeInstance"];
  v1 = [v3 safeValueForKey:@"state"];
  v2 = [v1 intValue] == 2;
  MEMORY[0x29EDC9740](v1);
  objc_storeStrong(&v3, 0);
  return v2;
}

uint64_t AXShouldCreateRemoteViewForIdentityAndSceneIdentifier(void *a1, void *a2, void *a3)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v8 = 0;
  objc_storeStrong(&v8, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if ([v8 containsString:@"SUIS-VoiceControlUI"] & 1) != 0 || (objc_msgSend(v8, "containsString:", @"com.apple.PaperBoard-wallpaper") & 1) != 0 || (objc_msgSend(v8, "containsString:", @"SUIS-AssistiveTouchUI") & 1) != 0 || (objc_msgSend(v8, "containsString:", @"com.apple.accessibility.AccessibilityUIServer") & 1) != 0 || (objc_msgSend(v8, "containsString:", @"com.apple.AccessibilityUIServer") & 1) != 0 || (objc_msgSend(v8, "containsString:", @"com.apple.fullkeyboardaccess"))
  {
    v10 = 0;
  }

  else
  {
    NSClassFromString(&cfstr_Rbsprocessiden.isa);
    if (objc_opt_isKindOfClass())
    {
      v4 = 1;
      if (([location safeBoolForKey:@"isDaemon"] & 1) == 0)
      {
        v4 = 1;
        if (([v8 containsString:@"searchBar"] & 1) == 0)
        {
          v4 = 1;
          if (([v8 containsString:@"SiriHostedScene"] & 1) == 0)
          {
            v4 = 1;
            if (!AXIsXcodeLivePreviewsScene(v8))
            {
              v4 = 1;
              if (([v8 containsString:*MEMORY[0x29EDBD600]] & 1) == 0)
              {
                v4 = 1;
                if (([v8 containsString:*MEMORY[0x29EDBDEA0]] & 1) == 0)
                {
                  v4 = 1;
                  if (([v8 containsString:@"UIHostedScene"] & 1) == 0)
                  {
                    v4 = 1;
                    if (([v7 containsString:@"com.apple.SpringBoard.SceneWorkspace.RemoteAlert"] & 1) == 0)
                    {
                      v4 = 1;
                      if (([v7 containsString:@"PosterKit"] & 1) == 0)
                      {
                        v4 = 1;
                        if (([v7 containsString:@"com.apple.chrono"] & 1) == 0)
                        {
                          v4 = [v7 containsString:@"com.apple.ActivityUIServices"];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v10 = v4 & 1;
    }

    else
    {
      v10 = 0;
    }
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
  return v10 & 1;
}

BOOL AXIsXcodeLivePreviewsScene(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = 1;
  if (([location hasPrefix:@"XcodePreviews"] & 1) == 0)
  {
    v2 = 1;
    if (([location hasPrefix:@"PreviewAgent"] & 1) == 0)
    {
      v2 = 1;
      if (([location hasPrefix:@"SimDisplayScene"] & 1) == 0)
      {
        v2 = [location containsString:@"UV-InjectedScene"];
      }
    }
  }

  v4 = (v2 & 1) != 0 && ([location hasSuffix:@"static"] & 1) == 0;
  objc_storeStrong(&location, 0);
  return v4;
}

void sub_29C4E1E14(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 80) = a1;
  *(v10 - 84) = a2;
  objc_destroyWeak((v10 - 72));
  _Unwind_Resume(*(v10 - 80));
}

void sub_29C4E3B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *location, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v25 - 104));
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_3_2_8_69_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 3;
  *(result + 1) = 2;
  *(result + 2) = 69;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_1_4_0(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

void voiceOverDidEnableHandwriting(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v8[5] = a1;
  v8[4] = a2;
  v8[3] = a3;
  v8[2] = a4;
  v8[1] = a5;
  v7 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsSafeCategory();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  [v5 _axSetIsHandwritingEnabled:1];
  [(_UIKeyboardStateManagerAccessibility *)v8[0] _axUpdateAutocorrectionSettings];
  objc_storeStrong(v8, 0);
}

void voiceOverDidDisableHandwriting(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v8[5] = a1;
  v8[4] = a2;
  v8[3] = a3;
  v8[2] = a4;
  v8[1] = a5;
  v7 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsSafeCategory();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  [v5 _axSetIsHandwritingEnabled:0];
  [(_UIKeyboardStateManagerAccessibility *)v8[0] _axUpdateAutocorrectionSettings];
  objc_storeStrong(v8, 0);
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_29C4EDEF8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 48) = a1;
  *(v10 - 52) = a2;
  objc_destroyWeak((v10 - 40));
  _Unwind_Resume(*(v10 - 48));
}

void sub_29C4EFFD4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *a12, uint64_t a13, uint64_t a14, id *a15, uint64_t a16, uint64_t a17, uint64_t a18, id *a19, uint64_t a20, uint64_t a21, id *a22, uint64_t a23, uint64_t a24, uint64_t a25, id *location)
{
  *(v26 - 184) = a1;
  *(v26 - 188) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v26 - 136));
  _Unwind_Resume(*(v26 - 184));
}

id getRTIInputUIServiceMachNameiOS()
{
  RTIInputUIServiceMachNameiOSSymbolLoc = getRTIInputUIServiceMachNameiOSSymbolLoc();
  if (!RTIInputUIServiceMachNameiOSSymbolLoc)
  {
    v3 = [MEMORY[0x29EDB9F28] currentHandler];
    v2 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getRTIInputUIServiceMachNameiOS(void)"];
    [v3 handleFailureInFunction:v2 file:@"_UIRemoteKeyboardPlaceholderViewAccessibility.m" lineNumber:16 description:{@"%s", dlerror()}];
    MEMORY[0x29EDC9740](v2);
    MEMORY[0x29EDC9740](v3);
    __break(1u);
    JUMPOUT(0x29C4F118CLL);
  }

  v0 = *RTIInputUIServiceMachNameiOSSymbolLoc;

  return v0;
}

uint64_t getRTIInputUIServiceMachNameiOSSymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getRTIInputUIServiceMachNameiOSSymbolLoc_ptr;
  v13 = getRTIInputUIServiceMachNameiOSSymbolLoc_ptr;
  if (!getRTIInputUIServiceMachNameiOSSymbolLoc_ptr)
  {
    v2 = MEMORY[0x29EDCA5F8];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getRTIInputUIServiceMachNameiOSSymbolLoc_block_invoke;
    v6 = &unk_29F30CA38;
    v7 = &v9;
    __getRTIInputUIServiceMachNameiOSSymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getRTIInputUIServiceMachNameiOSSymbolLoc_block_invoke(uint64_t a1)
{
  v1 = RemoteTextInputLibrary();
  v2 = dlsym(v1, "RTIInputUIServiceMachNameiOS");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getRTIInputUIServiceMachNameiOSSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t RemoteTextInputLibrary()
{
  v3 = RemoteTextInputLibraryCore();
  if (!v3)
  {
    v2 = [MEMORY[0x29EDB9F28] currentHandler];
    v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *RemoteTextInputLibrary(void)"];
    [v2 handleFailureInFunction:0 file:? lineNumber:? description:?];
    MEMORY[0x29EDC9740](v1);
    MEMORY[0x29EDC9740](v2);
    __break(1u);
    JUMPOUT(0x29C4F1428);
  }

  return v3;
}

uint64_t RemoteTextInputLibraryCore()
{
  if (!RemoteTextInputLibraryCore_frameworkLibrary)
  {
    __RemoteTextInputLibraryCore_block_invoke();
  }

  return RemoteTextInputLibraryCore_frameworkLibrary;
}

uint64_t __RemoteTextInputLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RemoteTextInputLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_29C4F7208(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *a11, uint64_t a12, uint64_t a13, id *location)
{
  *(v14 - 104) = a1;
  *(v14 - 108) = a2;
  objc_destroyWeak((v14 - 64));
  objc_destroyWeak((v14 - 48));
  _Unwind_Resume(*(v14 - 104));
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C5025B0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id *location)
{
  *(v29 - 96) = a1;
  *(v29 - 100) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v29 - 56));
  objc_destroyWeak((v29 - 48));
  _Unwind_Resume(*(v29 - 96));
}

void sub_29C5025CC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id *a23, uint64_t a24, uint64_t a25, id *location, uint64_t a27, uint64_t a28, id *a29)
{
  *(v29 - 96) = a1;
  *(v29 - 100) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(a29);
  objc_destroyWeak((v29 - 56));
  objc_destroyWeak((v29 - 48));
  _Unwind_Resume(*(v29 - 96));
}

void sub_29C5034C8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id *a24, uint64_t a25, uint64_t a26, id *a27, uint64_t a28, uint64_t a29, id *location)
{
  *(v30 - 96) = a1;
  *(v30 - 100) = a2;
  objc_destroyWeak((v30 - 56));
  objc_destroyWeak((v30 - 48));
  _Unwind_Resume(*(v30 - 96));
}

void sub_29C505358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, _Unwind_Exception *exception_object, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 128));
  _Unwind_Resume(a1);
}

void sub_29C506A30(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id *a23, uint64_t a24, uint64_t a25, id *a26, uint64_t a27, uint64_t a28, id *a29, uint64_t a30, uint64_t a31, id *location)
{
  *(v32 - 48) = a1;
  *(v32 - 52) = a2;
  objc_destroyWeak((v32 - 32));
  _Unwind_Resume(*(v32 - 48));
}

void __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C50A640(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  *(v11 - 48) = a1;
  *(v11 - 52) = a2;
  objc_destroyWeak((v11 - 40));
  _Unwind_Resume(*(v11 - 48));
}

BOOL AXKBElementWasForcedToUseForeignKB()
{
  v10 = 0;
  v6 = [MEMORY[0x29EDC7B08] sharedInstance];
  v5 = [v6 textInputTraits];
  v7 = [v5 isSecureTextEntry];
  MEMORY[0x29EDC9740](v5);
  *&v0 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v7)
  {
    v2 = [MEMORY[0x29EDC7B18] sharedInputModeController];
    v9 = [v2 currentInputMode];
    MEMORY[0x29EDC9740](v2);
    location = UIKeyboardGetCurrentUILanguage();
    v3 = [v9 primaryLanguage];
    v4 = [v3 hasPrefix:location];
    MEMORY[0x29EDC9740](v3);
    v10 = (v4 & 1) == 0;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v9, 0);
  }

  return v10;
}

id AXKBElementLocalizedForKeyboardLocale(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  v9 = [v7 currentInputMode];
  MEMORY[0x29EDC9740](v7);
  v8 = 0;
  if (!AXKBElementWasForcedToUseForeignKB())
  {
    v1 = [v9 primaryLanguage];
    v2 = v8;
    v8 = v1;
    MEMORY[0x29EDC9740](v2);
  }

  if (!AXKBElementLocalizedForKeyboardLocale_axBundle)
  {
    v3 = [MEMORY[0x29EDB9F48] accessibilityBundleWithLastPathComponent:@"UIKit.axbundle"];
    v4 = AXKBElementLocalizedForKeyboardLocale_axBundle;
    AXKBElementLocalizedForKeyboardLocale_axBundle = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v6 = AXNSLocalizedStringForLocale();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);

  return v6;
}

BOOL UIAXRequiresTwoNextKeyboardKeys()
{
  v3 = 0;
  if (AXDeviceHasHomeButton() & 1) == 0 && (AXDeviceIsPhone())
  {
    v1 = [MEMORY[0x29EDC7B18] sharedInputModeController];
    location = [v1 normalizedEnabledInputModeIdentifiers];
    if ([location count] > 2)
    {
      v3 = ([location containsObject:*MEMORY[0x29EDC81B8]] & 1) != 0;
    }

    objc_storeStrong(&location, 0);
  }

  return v3;
}

id UIAXNextKeyboardValue(uint64_t a1)
{
  v58 = *MEMORY[0x29EDCA608];
  v55 = a1;
  v54 = [MEMORY[0x29EDC7B08] activeInstance];
  v52 = 0;
  v30 = [v54 safeValueForKey:@"_layout"];
  v51 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v30);
  v50 = MEMORY[0x29EDC9748](v51);
  objc_storeStrong(&v51, 0);
  v53 = v50;
  v49 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  v48 = [v49 currentInputMode];
  v29 = [MEMORY[0x29EDC7B08] sharedInstance];
  v28 = [v29 textInputTraits];
  v47 = [v49 nextInputModeInPreferenceListForTraits:v28 updatePreference:0 skipEmoji:{objc_msgSend(v53, "keyplaneContainsEmojiKey")}];
  MEMORY[0x29EDC9740](v28);
  v1 = MEMORY[0x29EDC9740](v29).n128_u64[0];
  if (v55 == 1)
  {
    v26 = [v48 normalizedIdentifier];
    v27 = [v26 isEqualToString:*MEMORY[0x29EDC81B8]];
    v1 = MEMORY[0x29EDC9740](v26).n128_u64[0];
    if ((v27 & 1) == 0)
    {
      v46 = AXLogAppAccessibility();
      v45 = 17;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        log = v46;
        type = v45;
        __os_log_helper_16_0_0(v44);
        _os_log_fault_impl(&dword_29C4D6000, log, type, "Asked for the next keyboard for the emoji key, but shouldn't have needed it because the label includes that info already.", v44, 2u);
      }

      objc_storeStrong(&v46, 0);
    }
  }

  else if (v55 == 2)
  {
    v22 = [v47 normalizedIdentifier];
    v23 = [v22 isEqualToString:*MEMORY[0x29EDC81B8]];
    v1 = MEMORY[0x29EDC9740](v22).n128_u64[0];
    if (v23)
    {
      v43 = [v49 activeInputModes];
      if ([v43 count] <= 2)
      {
        v42 = AXLogAppAccessibility();
        v41 = OS_LOG_TYPE_FAULT;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          __os_log_helper_16_2_1_8_64(v57, v43);
          _os_log_fault_impl(&dword_29C4D6000, v42, v41, "Unexpectedly tried to skip emoji but had only active input modes: %@", v57, 0xCu);
        }

        objc_storeStrong(&v42, 0);
      }

      if ([v43 count] > 2)
      {
        v40 = [v43 indexOfObject:v48];
        if (v40 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = AXLogAppAccessibility();
          v38 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_2_8_64_8_64(v56, v48, v43);
            _os_log_impl(&dword_29C4D6000, v39, v38, "Unable to find current input mode: %@ in list of active inputmodes: %@.\nThis list of keyboards may have been modified in Settings after last choosing an inputmode.", v56, 0x16u);
          }

          objc_storeStrong(&v39, 0);
        }

        if (v40 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = 0;
        }

        else
        {
          v20 = v40 + 1;
          v21 = v20 % [v43 count];
        }

        v37 = v21;
        v36 = 0;
        objc_opt_class();
        v19 = [v43 objectAtIndexedSubscript:v21];
        v35 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v19);
        v34 = MEMORY[0x29EDC9748](v35);
        objc_storeStrong(&v35, 0);
        v17 = [v34 normalizedIdentifier];
        v18 = [v17 isEqualToString:*MEMORY[0x29EDC81B8]];
        MEMORY[0x29EDC9740](v17);
        *&v2 = MEMORY[0x29EDC9740](v34).n128_u64[0];
        if (v18)
        {
          v16 = v37 + 1;
          v37 = v16 % [v43 count];
        }

        v3 = [v43 objectAtIndexedSubscript:{v37, v2}];
        v4 = v47;
        v47 = v3;
        MEMORY[0x29EDC9740](v4);
      }

      objc_storeStrong(&v43, 0);
    }
  }

  v33 = 0;
  if (v47)
  {
    v5 = [v47 displayName];
    v6 = v33;
    v33 = v5;
    *&v7 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v32 = [v47 primaryLanguage];
    v8 = [v32 lowercaseString];
    v9 = v32;
    v32 = v8;
    *&v10 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v11 = [v32 stringByReplacingOccurrencesOfString:@"_" withString:{@"-", v10}];
    v12 = v32;
    v32 = v11;
    *&v13 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    obj = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v33, v13}];
    [obj setAttribute:v32 forKey:*MEMORY[0x29EDBD918]];
    objc_storeStrong(&v33, obj);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v32, 0);
  }

  v15 = MEMORY[0x29EDC9748](v33);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);

  return v15;
}

id _TraditionalStrokeDictionary()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB8DC0]) initWithObjectsAndKeys:{@"一", @"橫", @"㆒", @"橫", @"⼀", @"豎", @"丨", @"豎", @"⼁", @"丿", @"丿", @"撇", @"⼃", @"點", @"丶", @"點", @"⼂", @"折", @"乛", 0}];

  return v0;
}

id _SimplifiedStrokeDictionary()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB8DC0]) initWithObjectsAndKeys:{@"一", @"横", @"㆒", @"横", @"⼀", @"竖", @"丨", @"竖", @"⼁", @"撇", @"丿", @"撇", @"⼃", @"点", @"丶", @"点", @"⼂", @"折", @"乛", 0}];

  return v0;
}

id _ZhuyinTraditionalStrokeDictionary()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB8DC0]) initWithObjectsAndKeys:{@"三聲、", @"ˇ", 0}];

  return v0;
}

void __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_0_2_4_0_4_0(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

void __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_3_1_8_69(uint64_t result, uint64_t a2)
{
  *result = 3;
  *(result + 1) = 1;
  *(result + 2) = 69;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_3_3_4_0_4_0_8_65(uint64_t result, int a2, int a3, uint64_t a4)
{
  *result = 3;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 65;
  *(result + 15) = 8;
  *(result + 16) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_4_4_0_4_0_4_0_4_0(uint64_t result, int a2, int a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 0;
  *(result + 15) = 4;
  *(result + 16) = a4;
  *(result + 20) = 0;
  *(result + 21) = 4;
  *(result + 22) = a5;
  return result;
}

uint64_t __os_log_helper_16_3_1_8_65(uint64_t result, uint64_t a2)
{
  *result = 3;
  *(result + 1) = 1;
  *(result + 2) = 65;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void _accessibilityReceiveDictationLifecycleNotfication(uint64_t a1, uint64_t a2, const __CFString *a3, void *a4, void *a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  obj[2] = a4;
  obj[1] = a5;
  obj[0] = [a5 objectForKey:*MEMORY[0x29EDBD7B8]];
  if (CFStringCompare(v10, *MEMORY[0x29EDBD7C0], 0) || !obj[0])
  {
    if (CFStringCompare(v10, *MEMORY[0x29EDBD7C8], 0) == kCFCompareEqualTo && _lastActiveDictationController == obj[0])
    {
      objc_storeStrong(&_lastActiveDictationController, 0);
    }
  }

  else
  {
    location = 0;
    objc_storeStrong(&location, obj[0]);
    v8 = MEMORY[0x29EDC9748](location);
    objc_storeStrong(&location, 0);
    v13 = v8;
    v5 = v8;
    v6 = v8;
    v7 = _lastActiveDictationController;
    _lastActiveDictationController = v6;
    MEMORY[0x29EDC9740](v7);
  }

  objc_storeStrong(obj, 0);
}

BOOL __CGSizeEqualToSize(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

void __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

BOOL AX_CGSizeIsEmpty(double a1, double a2)
{
  v3 = 1;
  if (a1 > 0.0)
  {
    return a2 <= 0.0;
  }

  return v3;
}

void sub_29C54F050(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, id *location)
{
  *(v11 - 64) = a1;
  *(v11 - 68) = a2;
  objc_destroyWeak((v11 - 48));
  _Unwind_Resume(*(v11 - 64));
}

BOOL __CGSizeEqualToSize_0(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

BOOL __CGPointEqualToPoint(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

void __Block_byref_object_copy__7(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__8(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__9(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C5618E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, _Unwind_Exception *exception_object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak((v23 - 48));
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy__10(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

BOOL __CGPointEqualToPoint_0(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

void __Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C571CBC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *a13, uint64_t a14, uint64_t a15, id *a16, uint64_t a17, uint64_t a18, id *a19, uint64_t a20, uint64_t a21, id *location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  *(v34 - 112) = a1;
  *(v34 - 116) = a2;
  objc_destroyWeak((v34 - 72));
  objc_destroyWeak((v34 - 64));
  _Unwind_Resume(*(v34 - 112));
}

void __Block_byref_object_copy__14(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__15(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

id getEMFEmojiTokenClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getEMFEmojiTokenClass_softClass;
  v13 = getEMFEmojiTokenClass_softClass;
  if (!getEMFEmojiTokenClass_softClass)
  {
    v2 = MEMORY[0x29EDCA5F8];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getEMFEmojiTokenClass_block_invoke;
    v6 = &unk_29F30CA38;
    v7 = &v9;
    __getEMFEmojiTokenClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x29EDC9748](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __getEMFEmojiTokenClass_block_invoke(uint64_t a1)
{
  EmojiFoundationLibrary();
  Class = objc_getClass("EMFEmojiToken");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x29EDB9F28] currentHandler];
    v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getEMFEmojiTokenClass(void)_block_invoke"];
    [v4 handleFailureInFunction:"EMFEmojiToken" file:? lineNumber:? description:?];
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v4);
    __break(1u);
    JUMPOUT(0x29C5764C4);
  }

  getEMFEmojiTokenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t EmojiFoundationLibrary()
{
  v3 = EmojiFoundationLibraryCore();
  if (!v3)
  {
    v2 = [MEMORY[0x29EDB9F28] currentHandler];
    v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v2 handleFailureInFunction:0 file:? lineNumber:? description:?];
    MEMORY[0x29EDC9740](v1);
    MEMORY[0x29EDC9740](v2);
    __break(1u);
    JUMPOUT(0x29C5765DCLL);
  }

  return v3;
}

uint64_t EmojiFoundationLibraryCore()
{
  if (!EmojiFoundationLibraryCore_frameworkLibrary)
  {
    __EmojiFoundationLibraryCore_block_invoke();
  }

  return EmojiFoundationLibraryCore_frameworkLibrary;
}

uint64_t __EmojiFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_29C578904(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 64) = a1;
  *(v9 - 68) = a2;
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(*(v9 - 64));
}

void __Block_byref_object_copy__16(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t accessibilityRTLKeyPositionSort(void *a1, void *a2, void *a3)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v26 = 0;
  objc_storeStrong(&v26, a2);
  v25[1] = a3;
  v24 = 0;
  objc_opt_class();
  v23 = __UIAccessibilityCastAsClass();
  v22 = MEMORY[0x29EDC9748](v23);
  objc_storeStrong(&v23, 0);
  v25[0] = v22;
  v20 = 0;
  objc_opt_class();
  v19 = __UIAccessibilityCastAsClass();
  v18 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  v21 = v18;
  [v25[0] frame];
  v15 = v3;
  [v21 frame];
  if (v15 <= v4)
  {
    [v25[0] frame];
    v14 = v5;
    [v21 frame];
    if (v14 >= v6)
    {
      [v25[0] frame];
      v13 = v7;
      [v21 frame];
      if (v13 <= v8)
      {
        [v25[0] frame];
        v12 = v9;
        [v21 frame];
        v28 = v12 < v10;
      }

      else
      {
        v28 = -1;
      }
    }

    else
    {
      v28 = -1;
    }
  }

  else
  {
    v28 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&location, 0);
  return v28;
}

uint64_t _AXUIKit_UIKeyboardCurrentInputModeIsMultiscript()
{
  v2 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  v5 = [v2 currentInputMode];
  *&v0 = MEMORY[0x29EDC9740](v2).n128_u64[0];
  v4 = [v5 softwareLayout];
  v3 = [v4 containsString:@"-With-"];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  return v3;
}

void sub_29C58196C(uint64_t a1, int a2)
{
  *(v2 - 112) = a1;
  *(v2 - 116) = a2;
  _Block_object_dispose((v2 - 96), 8);
  _Block_object_dispose((v2 - 64), 8);
  _Unwind_Resume(*(v2 - 112));
}

double _reloadAccessibilitySettings()
{
  if (UIKeyboardAutomaticIsOnScreen())
  {
    v1 = [MEMORY[0x29EDC7B08] activeInstance];
    [v1 reloadCurrentInputMode];
    MEMORY[0x29EDC9740](v1);
    AXPerformSafeBlock();
    v2 = [MEMORY[0x29EDC7B08] activeInstance];
    [v2 reloadCurrentInputMode];
    *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  }

  return result;
}

double ___reloadAccessibilitySettings_block_invoke()
{
  v1 = [MEMORY[0x29EDC7B08] activeInstance];
  [v1 syncInputManagerToKeyboardState];
  *&result = MEMORY[0x29EDC9740](v1).n128_u64[0];
  return result;
}

id accessibilityLocalizedString(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = UIKitAccessibilityLocalizedString();
  objc_storeStrong(&location, 0);

  return v2;
}

id accessibilityLocalizedStringInTable(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v5 = 0;
  objc_storeStrong(&v5, a2);
  v4 = UIKitAccessibilityLocalizedStringInTable();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&location, 0);

  return v4;
}

id axAnnotateDataNetworkViewWithType(void *a1)
{
  v29[1] = a1;
  v29[0] = 0;
  switch(a1)
  {
    case 1uLL:
      v11 = accessibilityLocalizedString(@"status.network.1x");
      v12 = v29[0];
      v29[0] = v11;
      MEMORY[0x29EDC9740](v12);
      break;
    case 2uLL:
      v3 = accessibilityLocalizedString(@"status.network.gprs");
      v4 = v29[0];
      v29[0] = v3;
      MEMORY[0x29EDC9740](v4);
      break;
    case 3uLL:
      v1 = accessibilityLocalizedString(@"status.network.edge");
      v2 = v29[0];
      v29[0] = v1;
      MEMORY[0x29EDC9740](v2);
      break;
    case 4uLL:
      v5 = accessibilityLocalizedString(@"status.network.umts");
      v6 = v29[0];
      v29[0] = v5;
      MEMORY[0x29EDC9740](v6);
      break;
    case 5uLL:
      v7 = accessibilityLocalizedString(@"status.network.4g");
      v8 = v29[0];
      v29[0] = v7;
      MEMORY[0x29EDC9740](v8);
      break;
    case 6uLL:
      v9 = accessibilityLocalizedString(@"status.network.lte");
      v10 = v29[0];
      v29[0] = v9;
      MEMORY[0x29EDC9740](v10);
      break;
    case 7uLL:
      v13 = accessibilityLocalizedString(@"status.network.5ge");
      v14 = v29[0];
      v29[0] = v13;
      MEMORY[0x29EDC9740](v14);
      break;
    case 8uLL:
      v15 = accessibilityLocalizedString(@"status.network.lte.a");
      v16 = v29[0];
      v29[0] = v15;
      MEMORY[0x29EDC9740](v16);
      break;
    case 9uLL:
      v17 = accessibilityLocalizedString(@"status.network.lte.plus");
      v18 = v29[0];
      v29[0] = v17;
      MEMORY[0x29EDC9740](v18);
      break;
    case 0xAuLL:
      v19 = accessibilityLocalizedString(@"status.network.5g");
      v20 = v29[0];
      v29[0] = v19;
      MEMORY[0x29EDC9740](v20);
      break;
    case 0xBuLL:
      v21 = accessibilityLocalizedString(@"status.network.5g.plus");
      v22 = v29[0];
      v29[0] = v21;
      MEMORY[0x29EDC9740](v22);
      break;
    case 0xCuLL:
      v23 = accessibilityLocalizedString(@"status.network.5g.uwb");
      v24 = v29[0];
      v29[0] = v23;
      MEMORY[0x29EDC9740](v24);
      break;
    case 0xDuLL:
      v25 = accessibilityLocalizedString(@"status.network.5g.ugc");
      v26 = v29[0];
      v29[0] = v25;
      MEMORY[0x29EDC9740](v26);
      break;
    default:
      break;
  }

  v28 = MEMORY[0x29EDC9748](v29[0]);
  objc_storeStrong(v29, 0);

  return v28;
}

uint64_t axIsAutomaticArbiterClientKeyboardActive()
{
  v1 = [MEMORY[0x29EDC7B30] safeValueForKey:@"automaticKeyboardArbiterClient"];
  v2 = [v1 safeBoolForKey:@"keyboardActive"];
  MEMORY[0x29EDC9740](v1);
  return v2;
}

uint64_t axKeyboardInSeparateProcessAndScene(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = [location safeBoolForKey:@"_isHostedInAnotherProcess"];
  v4 = [location windowScene];
  v5 = [v4 safeValueForKey:@"_FBSScene"];
  MEMORY[0x29EDC9740](v4);
  if ((v6 & 1) == 0 || (v3 = 1, !v5))
  {
    v2 = 0;
    if ((v6 & 1) == 0)
    {
      v2 = v5 == 0;
    }

    v3 = v2;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&location, 0);
  return v3 & 1;
}

id AXCustomActionForMenuElements(id obj)
{
  v29 = *MEMORY[0x29EDCA608];
  location = 0;
  objc_storeStrong(&location, obj);
  v26 = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obja = MEMORY[0x29EDC9748](location);
  v15 = [obja countByEnumeratingWithState:__b objects:v28 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obja);
      }

      v25 = *(__b[1] + 8 * v12);
      v23 = [v25 title];
      if (!v23)
      {
        v9 = [v25 image];
        v1 = [v9 accessibilityLabel];
        v2 = v23;
        v23 = v1;
        MEMORY[0x29EDC9740](v2);
        MEMORY[0x29EDC9740](v9);
      }

      v3 = [v23 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
      v4 = v23;
      v23 = v3;
      MEMORY[0x29EDC9740](v4);
      v8 = objc_alloc(MEMORY[0x29EDC78E0]);
      v7 = v23;
      v16 = MEMORY[0x29EDCA5F8];
      v17 = -1073741824;
      v18 = 0;
      v19 = __AXCustomActionForMenuElements_block_invoke;
      v20 = &unk_29F30D560;
      v21 = MEMORY[0x29EDC9748](v25);
      v22 = [v8 initWithName:v7 actionHandler:&v16];
      [v26 axSafelyAddObject:v22];
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v23, 0);
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obja countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obja);
  v6 = MEMORY[0x29EDC9748](v26);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&location, 0);

  return v6;
}

uint64_t __AXCustomActionForMenuElements_block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __AXCustomActionForMenuElements_block_invoke_2;
  v8 = &unk_29F30C7C8;
  v9[0] = MEMORY[0x29EDC9748](a1[4]);
  AXPerformSafeBlock();
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  return 1;
}

uint64_t _accessibilityFindDurationRangeInString(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v13 = a2;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v21 = 0;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v24 = 0;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 0;
  v12 = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
  i = 0;
  v10 = [location length];
  while (i < v10)
  {
    v18 = i;
    v17 = v10 - i;
    v19 = i;
    v20 = v10 - i;
    v9 = [location rangeOfCharacterFromSet:v12 options:0 range:{i, v10 - i}];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v8 = 0;
    v7 = 1;
    for (i = v9 + 1; ; ++i)
    {
      v5 = 0;
      if (i < v10)
      {
        v5 = v8 < 3u;
      }

      if (!v5)
      {
        break;
      }

      if (v7 && v7 != 1)
      {
        if ([location characterAtIndex:i] != 58)
        {
          break;
        }

        v7 = 0;
      }

      else
      {
        if (([v12 characterIsMember:{objc_msgSend(location, "characterAtIndex:", i)}] & 1) == 0)
        {
          break;
        }

        if (++v7 == 2)
        {
          ++v8;
        }
      }
    }

    if (v8 >= 2u)
    {
      v15 = v9;
      v16 = 2 * v8 + v8 - 1;
      if (v13)
      {
        if (v8 == 2)
        {
          v4 = *MEMORY[0x29EDBD8C0];
        }

        else
        {
          v4 = *MEMORY[0x29EDBD8B0];
        }

        v2 = v4;
        *v13 = v4;
      }

      break;
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  return v15;
}

void __Block_byref_object_copy__17(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

id _createFormatDurationString(double a1, double a2)
{
  v17 = a1;
  v16 = a2;
  v15 = _createDurationString(a1);
  v14 = _createDurationString(v16);
  v6 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  v7 = accessibilityLocalizedString(@"slider.time.position");
  v13 = [v6 initWithFormat:v15, v14];
  *&v10 = [v13 rangeOfString:{v15, MEMORY[0x29EDC9740](v7).n128_f64[0]}];
  *(&v10 + 1) = v2;
  v12 = v10;
  *&v9 = [v13 rangeOfString:v14 options:4];
  *(&v9 + 1) = v3;
  v11 = v9;
  v8 = [objc_allocWithZone(MEMORY[0x29EDBD7E8]) initWithString:v13];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8C0] withRange:v12];
  }

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8C0] withRange:v11];
  }

  v5 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);

  return v5;
}

id _createDurationString(double a1)
{
  v10 = a1;
  v11 = a1;
  v9 = vcvtmd_u64_f64(a1);
  v8 = a1 - v9;
  v7 = v9 / 0x3C;
  v6 = 0;
  if (v9 / 0x3C)
  {
    v9 %= 60 * v7;
    v6 = v7 / 0x3C;
    if (v7 / 0x3C)
    {
      v7 %= 60 * v6;
    }
  }

  v1 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  v2 = v8;
  v5 = (v9 + v2);
  v3 = [v1 initWithFormat:@"%lu:%lu:%.2f", v6, v7, *&v5];

  return v3;
}

BOOL UIInterfaceOrientationIsLandscape(uint64_t a1)
{
  v2 = 1;
  if (a1 != 4)
  {
    return a1 == 3;
  }

  return v2;
}

id trimWhitespaceToNil(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = location;
  v8 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v1 = [v7 stringByTrimmingCharactersInSet:?];
  v2 = location;
  location = v1;
  MEMORY[0x29EDC9740](v2);
  *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if ([location length])
  {
    v4 = MEMORY[0x29EDC9748](location);
  }

  else
  {
    v4 = MEMORY[0x29EDC9748](0);
  }

  v6 = v4;
  objc_storeStrong(&location, 0);

  return v6;
}

id AXNoLoc(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = MEMORY[0x29EDC9748](location);
  objc_storeStrong(&location, 0);

  return v2;
}

void __Block_byref_object_copy__18(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_2_8_64_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void __Block_byref_object_copy__19(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_3_8_64_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_66_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

BOOL __CGPointEqualToPoint_1(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

uint64_t __os_log_helper_16_2_2_4_0_8_64(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

void __Block_byref_object_copy__20(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C5B6A74(uint64_t a1, int a2)
{
  *(v2 - 96) = a1;
  *(v2 - 100) = a2;
  objc_destroyWeak((v2 - 56));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(*(v2 - 96));
}

id _containerForDimmingView(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uisearchdispla.isa)];
  objc_storeStrong(&location, 0);

  return v2;
}

void _toggleDimmingView(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v9 = 0;
  objc_storeStrong(&v9, a2);
  v8 = _containerForDimmingView(location);
  if (v8 && ([location alpha], v2 != 0.0))
  {
    if (v8)
    {
      v6 = [v8 _accessibilityDescendantOfType:objc_opt_class()];
      v4 = [v6 safeValueForKey:@"_setAccessibilitySearchControllerDimmingViewVisible"];
      [v8 setAccessibilityViewIsModal:1];
      [location setIsAccessibilityElement:1];
      objc_storeStrong(&v6, 0);
    }
  }

  else
  {
    v7 = [v9 _accessibilityDescendantOfType:objc_opt_class()];
    v3 = [v7 safeValueForKey:@"_setAccessibilitySearchControllerDimmingViewHidden"];
    [v9 setAccessibilityViewIsModal:0];
    [location setIsAccessibilityElement:0];
    objc_storeStrong(&v7, 0);
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
}

id AXNoLoc_0(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = MEMORY[0x29EDC9748](location);
  objc_storeStrong(&location, 0);

  return v2;
}

void sub_29C5BEAA0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location)
{
  *(v15 - 96) = a1;
  *(v15 - 100) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v15 - 48));
  _Unwind_Resume(*(v15 - 96));
}

id AXStatusBarItemHint(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v29 = [location _accessibilityAncestorIsKindOf:objc_opt_class()];
  v28 = [v29 currentStyle];
  v27 = [*MEMORY[0x29EDC8008] _accessibilityIsSystemAppServer];
  v26 = accessibilityLocalizedString(@"status.bar.scroll.to.top.hint");
  v25 = 0;
  if (v28 == 207)
  {
    v1 = accessibilityLocalizedString(@"opens.preferences");
    v2 = v25;
    v25 = v1;
    MEMORY[0x29EDC9740](v2);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    v23 = 0;
    v15 = 1;
    if ((UIStatusBarStyleIsDoubleHeight() & 1) == 0)
    {
      v14 = 0;
      if (v27)
      {
        v24 = [MEMORY[0x29EDBDFA8] server];
        v23 = 1;
        v14 = [v24 isScreenLockedWithPasscode:0];
      }

      v15 = v14;
    }

    if (v23)
    {
      MEMORY[0x29EDC9740](v24);
    }

    if (v15)
    {
      objc_storeStrong(&v26, 0);
    }
  }

  v22 = accessibilityLocalizedString(@"notification.center.hint");
  v19 = 0;
  if (v27)
  {
    v20 = [MEMORY[0x29EDBDFA8] server];
    v19 = 1;
    v13 = [v20 isNotificationCenterVisible];
  }

  else
  {
    v13 = 0;
  }

  if (v19)
  {
    MEMORY[0x29EDC9740](v20);
  }

  v21 = v13 != 0;
  v18 = [MEMORY[0x29EDB9F48] mainBundle];
  v11 = [v18 bundleIdentifier];
  v12 = 1;
  if (([v11 isEqualToString:@"com.apple.purplebuddy"] & 1) == 0)
  {
    v10 = 0;
    if (v27)
    {
      v10 = v21;
    }

    v12 = v10;
  }

  MEMORY[0x29EDC9740](v11);
  if (v12)
  {
    objc_storeStrong(&v22, 0);
  }

  v17 = accessibilityLocalizedString(@"control.center.hint");
  if ((v27 & 1) != 0 && v21)
  {
    objc_storeStrong(&v17, 0);
  }

  v16 = 0;
  v7 = [MEMORY[0x29EDC7A58] currentDevice];
  v8 = [v7 userInterfaceIdiom];
  MEMORY[0x29EDC9740](v7);
  v31 = v8;
  v9 = 1;
  if (v8 != 1)
  {
    v9 = v31 == 5;
  }

  if (v9)
  {
    v3 = accessibilityLocalizedString(@"dock.hint");
    v4 = v16;
    v16 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v6 = __UIAXStringForVariables();
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&location, 0);

  return v6;
}

id AXStatusBarPillTimeView(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v9 = [location _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uistatusbar_0.isa)];
  v4 = [v9 safeDictionaryForKey:@"items"];
  v8 = [v4 allValues];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v5 = [v8 ax_filteredArrayUsingBlock:{&__block_literal_global_34, v1}];
  v7 = [v5 firstObject];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v6 = [v7 safeValueForKey:{@"pillTimeView", v2}];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);

  return v6;
}

BOOL __AXStatusBarPillTimeView_block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uistatusbartim_0.isa);
  v4 = 0;
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = [location[0] safeValueForKey:@"pillTimeView"];
    v4 = 1;
    v3 = v5 != 0;
  }

  v7 = v3;
  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  objc_storeStrong(location, 0);
  return v7;
}

void sub_29C5CC8E4(uint64_t a1, int a2)
{
  v4 = *(v2 - 152);
  *(v2 - 88) = a1;
  *(v2 - 92) = a2;
  objc_destroyWeak(v4);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(*(v2 - 88));
}

void __Block_byref_object_copy__21(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void AXApplyTabBarItemPropertiesToView(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v19 = 0;
  objc_storeStrong(&v19, a2);
  v17 = [location safeValueForKey:@"systemItem"];
  v18 = [v17 intValue];
  v2 = MEMORY[0x29EDC9740](v17).n128_u64[0];
  if (v18)
  {
    v14 = v19;
    v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%d", *&v2, v18];
    [v14 accessibilitySetIdentification:?];
    v2 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  }

  v6 = v19;
  v7 = [location _accessibilityAXAttributedHint];
  [v6 setAccessibilityHint:?];
  *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  v8 = v19;
  v9 = [location _accessibilityAXAttributedValue];
  [v8 setAccessibilityValue:?];
  *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  v10 = v19;
  v11 = [location _accessibilityAXAttributedLabel];
  [v10 setAccessibilityLabel:?];
  *&v5 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  v12 = v19;
  v13 = [location accessibilityIdentifier];
  [v12 setAccessibilityIdentifier:?];
  MEMORY[0x29EDC9740](v13);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
}

uint64_t _UIAXElementIsHeaderInSearchContexts(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = [location _iosAccessibilityAttributeValue:2004];
  v1 = [v3 unsignedLongLongValue];
  v4 = 1;
  if ((v1 & *MEMORY[0x29EDC7F80]) != *MEMORY[0x29EDC7F80])
  {
    v4 = [location _accessibilityElementServesAsHeadingLandmark];
  }

  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(&location, 0);
  return v4 & 1;
}

void __Block_byref_object_copy__22(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_2_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_66_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void __Block_byref_object_copy__23(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C5EA57C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, id *location)
{
  *(v11 - 64) = a1;
  *(v11 - 68) = a2;
  objc_destroyWeak((v11 - 48));
  _Unwind_Resume(*(v11 - 64));
}

BOOL UIInterfaceOrientationIsLandscape_0(uint64_t a1)
{
  v2 = 1;
  if (a1 != 4)
  {
    return a1 == 3;
  }

  return v2;
}

BOOL UIEdgeInsetsEqualToEdgeInsets(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = 0;
  if (a2 == a6)
  {
    v9 = 0;
    if (a1 == a5)
    {
      v9 = 0;
      if (a4 == a8)
      {
        return a3 == a7;
      }
    }
  }

  return v9;
}

void __Block_byref_object_copy__24(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

BOOL UIEdgeInsetsEqualToEdgeInsets_0(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = 0;
  if (a2 == a6)
  {
    v9 = 0;
    if (a1 == a5)
    {
      v9 = 0;
      if (a4 == a8)
      {
        return a3 == a7;
      }
    }
  }

  return v9;
}

uint64_t __os_log_helper_16_2_4_4_0_4_0_8_64_8_64(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 64;
  *(result + 15) = 8;
  *(result + 16) = a4;
  *(result + 24) = 64;
  *(result + 25) = 8;
  *(result + 26) = a5;
  return result;
}

BOOL __CGSizeEqualToSize_1(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

uint64_t AXIgnoresTextOperations()
{
  predicate = &AXIgnoresTextOperations_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_762);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return AXIgnoresTextOperations_Ignores & 1;
}

void __AXIgnoresTextOperations_block_invoke(void *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v2 = [MEMORY[0x29EDB9F48] mainBundle];
  v3[0] = [v2 bundleIdentifier];
  *&v1 = MEMORY[0x29EDC9740](v2).n128_u64[0];
  AXIgnoresTextOperations_Ignores = [v3[0] isEqualToString:{@"com.apple.AssetViewer.ASVAssetViewer", v1}];
  objc_storeStrong(v3, 0);
}

void sub_29C621144(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  *(v38 - 208) = a1;
  *(v38 - 212) = a2;
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(*(v38 - 208));
}

void __Block_byref_object_copy__25(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

BOOL AX_CGSizeIsEmpty_0(double a1, double a2)
{
  v3 = 1;
  if (a1 > 0.0)
  {
    return a2 <= 0.0;
  }

  return v3;
}

BOOL __CGPointEqualToPoint_2(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

BOOL __CGSizeEqualToSize_2(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

void sub_29C62A65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, id *location, uint64_t a15, id *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, id a38)
{
  objc_destroyWeak(location);
  objc_destroyWeak(a16);
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a38);
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy__26(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C62CFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, id *a12, uint64_t a13, id *a14, id *location, uint64_t a16, id *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, uint64_t a36)
{
  objc_destroyWeak(location);
  objc_destroyWeak(a17);
  objc_destroyWeak((v36 - 248));
  _Unwind_Resume(a1);
}

id AXNoLoc_1(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = MEMORY[0x29EDC9748](location);
  objc_storeStrong(&location, 0);

  return v2;
}

BOOL __CGSizeEqualToSize_3(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

uint64_t __os_log_helper_16_3_3_8_69_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 3;
  *(result + 1) = 3;
  *(result + 2) = 69;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_3_3_8_69_8_69_8_69(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 3;
  *(result + 1) = 3;
  *(result + 2) = 69;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 69;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 69;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_3_2_8_69_8_69(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 3;
  *(result + 1) = 2;
  *(result + 2) = 69;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 69;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_3_3_8_69_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 3;
  *(result + 1) = 3;
  *(result + 2) = 69;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

void __Block_byref_object_copy__27(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__28(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__29(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C644D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *a12, uint64_t a13, uint64_t a14, id *location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak(a12);
  objc_destroyWeak((v24 - 80));
  objc_destroyWeak((v24 - 72));
  _Unwind_Resume(a1);
}

void sub_29C645CFC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *location)
{
  *(v13 - 168) = a1;
  *(v13 - 172) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v13 - 96));
  _Unwind_Resume(*(v13 - 168));
}

uint64_t __os_log_helper_16_2_2_8_64_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_4_0_8_64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 64;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t axShouldDisableHitpointWarping()
{
  v2 = 1;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v1 = 0;
    if (_AXSAutomationEnabled())
    {
      v1 = _AXSAutomationHitpointWarpingEnabled() == 0;
    }

    v2 = v1;
  }

  return v2 & 1;
}

uint64_t _isDevicePasscodeLocked()
{
  v2 = 0;
  v1 = [MEMORY[0x29EDBDFA8] server];
  [v1 isScreenLockedWithPasscode:&v2];
  MEMORY[0x29EDC9740](v1);
  return v2 & 1;
}

BOOL __CGSizeEqualToSize_4(double a1, double a2, double a3, double a4)
{
  v5 = 0;
  if (a1 == a3)
  {
    return a2 == a4;
  }

  return v5;
}

void sub_29C6545EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, _Unwind_Exception *exception_object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak((v21 - 48));
  _Unwind_Resume(a1);
}

void sub_29C657564(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id *location)
{
  *(v14 - 112) = a1;
  *(v14 - 116) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v14 - 64));
  _Unwind_Resume(*(v14 - 112));
}

void __Block_byref_object_copy__30(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __Block_byref_object_copy__31(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_4_8_64_4_0_8_0_8_64(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 8;
  *(result + 20) = a4;
  *(result + 28) = 64;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

void sub_29C66155C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, id *location, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(location);
  objc_destroyWeak(&a30);
  _Unwind_Resume(a1);
}

void sub_29C665BF0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 32) = a1;
  *(v10 - 36) = a2;
  objc_destroyWeak((v10 - 24));
  _Unwind_Resume(*(v10 - 32));
}

void sub_29C66976C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *a9, uint64_t a10, uint64_t a11, id *a12, uint64_t a13, uint64_t a14, id *a15, uint64_t a16, uint64_t a17, id *a18, uint64_t a19, uint64_t a20, uint64_t a21, id *location)
{
  *(v22 - 112) = a1;
  *(v22 - 116) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v22 - 64));
  _Unwind_Resume(*(v22 - 112));
}

void __Block_byref_object_copy__32(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_29C66B244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, id *location, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak(location);
  objc_destroyWeak(&a38);
  _Unwind_Resume(a1);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2A1C59AA8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
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

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2A1C59B58](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
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

CGSize CGSizeFromString(NSString *string)
{
  MEMORY[0x2A1C6A7B0](string);
  result.height = v2;
  result.width = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x2A1C5B3F0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
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
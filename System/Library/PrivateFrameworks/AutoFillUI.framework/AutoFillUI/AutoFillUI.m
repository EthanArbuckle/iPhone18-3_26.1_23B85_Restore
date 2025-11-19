uint64_t __AFUIServiceDelegateOSLogFacility_block_invoke()
{
  AFUIServiceDelegateOSLogFacility_logFacility = os_log_create("com.apple.AutoFillUI", "AFUIServiceDelegate");

  return MEMORY[0x1EEE66BB8]();
}

id AFUIServiceDelegateOSLogFacility()
{
  if (AFUIServiceDelegateOSLogFacility_onceToken != -1)
  {
    AFUIServiceDelegateOSLogFacility_cold_1();
  }

  v1 = AFUIServiceDelegateOSLogFacility_logFacility;

  return v1;
}

id _AFUIResponderClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUIResponderClass;

  return v1;
}

id _AFUITraitsProtocol()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUITraitsProtocol;

  return v1;
}

id _AFUITraitsClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUITraitsClass;

  return v1;
}

id _AFUISecureTextFieldClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUISecureTextFieldClass;

  return v1;
}

uint64_t AFUIResponderIsExemptFromDetectionHints(Class aClass)
{
  if (AFUIResponderIsExemptFromDetectionHints_onceToken == -1)
  {
    if (aClass)
    {
LABEL_3:
      v2 = AFUIResponderIsExemptFromDetectionHints__exemptClasses;
      v3 = NSStringFromClass(aClass);
      v4 = [v2 containsObject:v3];

      return v4;
    }
  }

  else
  {
    AFUIResponderIsExemptFromDetectionHints_cold_1();
    if (aClass)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t __AFUIResponderIsExemptFromDetectionHints_block_invoke()
{
  AFUIResponderIsExemptFromDetectionHints__exemptClasses = [MEMORY[0x1E695DFD8] setWithObjects:{@"CKMessageEntryRichTextView", @"Reminders.TTRIReminderTitleTextView", @"UnifiedField", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AFUISupportsCarPlayMaps_block_invoke()
{
  result = AFUISelfTaskHasEntitlement(@"com.apple.developer.carplay-maps");
  AFUISupportsCarPlayMaps__hasCarPlayMapsEntitlement = result;
  return result;
}

uint64_t AFUISelfTaskHasEntitlement(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __AFUISelfTaskHasEntitlement_block_invoke;
  v5[3] = &unk_1E8424A50;
  v6 = v1;
  v2 = v1;
  HasEntitlement = _AFUITaskHasEntitlement(v2, v5);

  return HasEntitlement;
}

uint64_t _AFUITaskHasEntitlement(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2);
  v3 = v2;
  if (v2 && (v4 = CFGetTypeID(v2), v4 == CFBooleanGetTypeID()))
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _AFUICopyValueForEntitlementUsingTaskCreationBlock(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = a1;
  v5 = v3(a2);
  if (v5)
  {
    v6 = v5;
    error = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, v4, &error);

    if (error)
    {
      NSLog(&cfstr_UnableToGetEnt.isa, error);
      CFRelease(error);
    }

    CFRelease(v6);
  }

  else
  {
    NSLog(&cfstr_UnableToCreate.isa, v4);

    v7 = 0;
  }

  return v7;
}

uint64_t AFTextContentTypeIsInContactSet(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698E0D0]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E1A0]) & 1) != 0 || (AFTextContentTypeIsInNameSet(v1) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E0F0]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E140]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E198]) & 1) != 0 || (AFTextContentTypeIsInAddressSet(v1))
  {
    v2 = 1;
  }

  else
  {
    v2 = AFTextContentTypeIsInBirthdaySet(v1);
  }

  return v2;
}

uint64_t AFTextContentTypeIsInNameSet(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698E108]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E0E8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E0D8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E100]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E110]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E118]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E698E128]];
  }

  return v2;
}

uint64_t AFTextContentTypeIsInAddressSet(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698E0E0]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E158]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E160]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E030]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E040]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E038]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E168]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E078]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E698E150]];
  }

  return v2;
}

uint64_t AFTextContentTypeIsInBirthdaySet(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698E048]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E050]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E058]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E698E060]];
  }

  return v2;
}

uint64_t AFTextContentTypeIsInCellularSet(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698E068]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E698E070]];
  }

  return v2;
}

void sub_1D2F0FE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2F10518(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D2F10A70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1D2F1291C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2F12B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2F12D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
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

uint64_t _AFUIShouldDisableDetectingNonInteractiveFields()
{
  if (_AFUIShouldDisableDetectingNonInteractiveFields_onceToken != -1)
  {
    _AFUIShouldDisableDetectingNonInteractiveFields_cold_1();
  }

  return _AFUIShouldDisableDetectingNonInteractiveFields_disableDetectingNonInteractiveFields;
}

id AFUIPanelOSLogFacility()
{
  if (AFUIPanelOSLogFacility_onceToken != -1)
  {
    AFUIPanelOSLogFacility_cold_1();
  }

  v1 = AFUIPanelOSLogFacility_logFacility;

  return v1;
}

uint64_t __AFUIPanelOSLogFacility_block_invoke()
{
  AFUIPanelOSLogFacility_logFacility = os_log_create("com.apple.AutoFillUI", "AFUIPanel");

  return MEMORY[0x1EEE66BB8]();
}

id AFUIAutoFillPopoverControllerOSLogFacility()
{
  if (AFUIAutoFillPopoverControllerOSLogFacility_onceToken != -1)
  {
    AFUIAutoFillPopoverControllerOSLogFacility_cold_1();
  }

  v1 = AFUIAutoFillPopoverControllerOSLogFacility_logFacility;

  return v1;
}

uint64_t __AFUIAutoFillPopoverControllerOSLogFacility_block_invoke()
{
  AFUIAutoFillPopoverControllerOSLogFacility_logFacility = os_log_create("com.apple.AutoFillUI", "AFUIAutoFillPopoverController");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AFTextContentTypeExpectsNumberPads(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698E138]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E198]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E150]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E0B8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E0C0]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E080]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E088]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E698E090]];
  }

  return v2;
}

void sub_1D2F15770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t AFUITextSignalsFoundInKeywordsList(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __AFUITextSignalsFoundInKeywordsList_block_invoke;
  v8[3] = &unk_1E8424878;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [v3 enumerateObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1D2F16CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2F17E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2F17F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2F184CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 256), 8);
  _Block_object_dispose((v51 - 128), 8);
  _Unwind_Resume(a1);
}

id get_SFAppPasswordSavingViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_SFAppPasswordSavingViewControllerClass_softClass;
  v7 = get_SFAppPasswordSavingViewControllerClass_softClass;
  if (!get_SFAppPasswordSavingViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SFAppPasswordSavingViewControllerClass_block_invoke;
    v3[3] = &unk_1E84248A0;
    v3[4] = &v4;
    __get_SFAppPasswordSavingViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D2F1AB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AFUITextSignalsFoundInKeywordsList_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([v5 localizedCaseInsensitiveContainsString:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a3 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
}

void __AFUIRegularExpressionForEmail_block_invoke()
{
  if (!AFUIRegularExpressionForEmail_regEx)
  {
    AFUIRegularExpressionForEmail_regEx = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2 options:4}" error:{1, 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id get_SFAppAutoFillPasswordViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_SFAppAutoFillPasswordViewControllerClass_softClass;
  v7 = get_SFAppAutoFillPasswordViewControllerClass_softClass;
  if (!get_SFAppAutoFillPasswordViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SFAppAutoFillPasswordViewControllerClass_block_invoke;
    v3[3] = &unk_1E84248A0;
    v3[4] = &v4;
    __get_SFAppAutoFillPasswordViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D2F1B618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SafariServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2F1BD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AFUIIsAppleApp()
{
  if (AFUIIsAppleApp_onceToken != -1)
  {
    AFUIIsAppleApp_cold_1();
  }

  return AFUIIsAppleApp_isAppleApp;
}

void __AFUIIsAppleApp_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  AFUIIsAppleApp_isAppleApp = [v0 hasPrefix:@"com.apple."];
}

BOOL AFUICanDisplayAllSuggestions()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v3 = [v2 traitCollection];
  v4 = [v3 horizontalSizeClass] != 1;

  return v4;
}

uint64_t AFTextContentTypeIsInPhoneSet(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698E198]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E190]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E178]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E170]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E188]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E698E180]];
  }

  return v2;
}

uint64_t AFTextContentTypeIsInCreditCardSet(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698E0B8]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E0B0]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E0A0]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E0A8]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E098]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E0C0]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E080]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E088]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E698E090]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E698E0C8]];
  }

  return v2;
}

uint64_t AFTextContentTypeIsInJobSet(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698E140]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:*MEMORY[0x1E698E0F0]];
  }

  return v2;
}

id AFUIPreferredSubtitleOrder()
{
  v10[15] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E698E0E8];
  v10[0] = *MEMORY[0x1E698E108];
  v10[1] = v0;
  v1 = *MEMORY[0x1E698E0D8];
  v10[2] = *MEMORY[0x1E698E100];
  v10[3] = v1;
  v2 = *MEMORY[0x1E698E158];
  v10[4] = *MEMORY[0x1E698E0E0];
  v10[5] = v2;
  v3 = *MEMORY[0x1E698E030];
  v10[6] = *MEMORY[0x1E698E160];
  v10[7] = v3;
  v4 = *MEMORY[0x1E698E038];
  v10[8] = *MEMORY[0x1E698E040];
  v10[9] = v4;
  v5 = *MEMORY[0x1E698E078];
  v10[10] = *MEMORY[0x1E698E168];
  v10[11] = v5;
  v6 = *MEMORY[0x1E698E198];
  v10[12] = *MEMORY[0x1E698E150];
  v10[13] = v6;
  v10[14] = *MEMORY[0x1E698E0D0];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:15];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id _AFUIUIAppLocalizedStringWithDefaultValue(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 bundleForClass:_AFUIApplicationClass()];
  v7 = [v6 localizedStringForKey:v5 value:v4 table:@"Localizable"];

  return v7;
}

void _AFUICacheRuntimeObjects()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }
}

id _AFUIColorClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUIColorClass;

  return v1;
}

id _AFUIFontClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUIFontClass;

  return v1;
}

id _AFUIViewClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUIViewClass;

  return v1;
}

id _AFUIViewControllerClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUIViewControllerClass;

  return v1;
}

id _AFUINavigationControllerClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUINavigationControllerClass;

  return v1;
}

id _AFUIApplicationClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUIApplicationClass;

  return v1;
}

id _AFUITextFieldClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUITextFieldClass;

  return v1;
}

id _AFUITextViewClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUITextViewClass;

  return v1;
}

id _AFUIButtonClass()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUIButtonClass;

  return v1;
}

id _AFUITextInputProtocol()
{
  if (_AFUICacheRuntimeObjects_onceToken != -1)
  {
    _AFUICacheRuntimeObjects_cold_1();
  }

  v1 = __AFUITextInputProtocol;

  return v1;
}

void sub_1D2F1F140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKAutoFillCardManagerClass_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("PKAutoFillCardManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKAutoFillCardManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PassKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2F20E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2F21490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2F21E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKAutoFillCardManagerClass_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!PassKitCoreLibraryCore_frameworkLibrary_0)
  {
    PassKitCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = objc_getClass("PKAutoFillCardManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKAutoFillCardManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PassKitCoreLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D2F2360C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __isAutoFillPanelAlwaysBlockedForBundleID_block_invoke()
{
  isAutoFillPanelAlwaysBlockedForBundleID_blockedBundleIDs = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.mobilesafari", @"com.apple.SafariViewService", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __isAutoFillPanelAlwaysAllowedForBundleID_block_invoke()
{
  isAutoFillPanelAlwaysAllowedForBundleID_allowedBundleIDs = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.quicklook", @"com.apple.quicklook.extension.previewUI", @"com.apple.quicklook.UIExtension", @"com.apple.mobilenotes", @"com.apple.Preview", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_debug_impl(a1, v13, OS_LOG_TYPE_DEBUG, a4, &buf, 0xCu);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_7(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void sub_1D2F28D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D2F2920C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1D2F2BC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D2F2C24C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D2F2D1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0xCu);
}
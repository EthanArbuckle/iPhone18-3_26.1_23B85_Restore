void LoadMessageUI()
{
  if ((LoadedMessage & 1) == 0)
  {
    v0 = MEMORY[0x29EDC7358];
    v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.messageui"];
    [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];

    LoadedMessage = 1;
  }
}

id MobileCalAXLocalizedString(void *a1)
{
  v1 = a1;
  v2 = MobileCalAXLocalizedString_axBundle;
  if (MobileCalAXLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MobileCal.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = MobileCalAXLocalizedString_axBundle, MobileCalAXLocalizedString_axBundle = v3, v4, (v2 = MobileCalAXLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2195B98 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.EventKitUIFramework.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A2195B98 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityCalendarTitleForEventIfNecessary(void *a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = [MEMORY[0x29EDB8E20] set];
  v3 = [v1 eventStore];
  v4 = [v3 calendarsForEntityType:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 source];
        if ([v11 sourceType] == 5)
        {
        }

        else
        {
          v12 = [v10 isSubscribedHolidayCalendar];

          if ((v12 & 1) == 0)
          {
            [v2 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [v1 calendar];
  if ([v2 containsObject:v13] && objc_msgSend(v2, "count") < 2)
  {
    v16 = 0;
  }

  else
  {
    v14 = [v1 calendar];
    v15 = [v14 type];

    if (v15 == 4)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v13 = [v1 calendar];
    v16 = MEMORY[0x29C2D5100]();
  }

LABEL_19:
  v17 = *MEMORY[0x29EDCA608];

  return v16;
}

void sub_29BDC0D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BDC1F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
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

void sub_29BDC4CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 128));
  _Unwind_Resume(a1);
}

id getAXCustomContentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXCustomContentClass_softClass;
  v7 = getAXCustomContentClass_softClass;
  if (!getAXCustomContentClass_softClass)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 3221225472;
    v3[2] = __getAXCustomContentClass_block_invoke;
    v3[3] = &unk_29F2BCC48;
    v3[4] = &v4;
    __getAXCustomContentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_29BDC5674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BDC5930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

Class __getAXCustomContentClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  if (!AccessibilityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x29EDCA5F8];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_29F2BCC68;
    v6 = 0;
    AccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccessibilityLibraryCore_frameworkLibrary)
  {
    __getAXCustomContentClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("AXCustomContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXCustomContentClass_block_invoke_cold_1();
  }

  getAXCustomContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __AccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void __getAXCustomContentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"Class getAXCustomContentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKEventDetailTitleCellAccessibility.m" lineNumber:36 description:{@"Unable to find class %s", "AXCustomContent"}];

  __break(1u);
}

void __getAXCustomContentClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x29EDB9F28] currentHandler];
  v3 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"void *AccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKEventDetailTitleCellAccessibility.m" lineNumber:35 description:{@"%s", *a1}];

  __break(1u);
  AXDateStringForFormat();
}
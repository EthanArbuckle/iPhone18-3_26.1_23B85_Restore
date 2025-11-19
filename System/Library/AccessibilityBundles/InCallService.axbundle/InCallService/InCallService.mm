id accessibilityMobilePhoneLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMobilePhoneLocalizedString_axBundle;
  if (accessibilityMobilePhoneLocalizedString_axBundle)
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDB9F48];
  v4 = MEMORY[0x29C2DAD70]();
  v5 = [v4 stringByAppendingPathComponent:@"MobilePhone.axbundle"];
  v6 = [v3 bundleWithPath:v5];
  v7 = accessibilityMobilePhoneLocalizedString_axBundle;
  accessibilityMobilePhoneLocalizedString_axBundle = v6;

  v2 = accessibilityMobilePhoneLocalizedString_axBundle;
  if (accessibilityMobilePhoneLocalizedString_axBundle)
  {
LABEL_3:
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A21D0958 table:@"Accessibility"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A21D0958 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id axStringForCallParticipantsView(void *a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = [v1 safeValueForKey:@"singleCallLabelView"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v1 safeValueForKey:@"topMultipleCallLabelView"];
  v5 = __UIAccessibilitySafeClass();

  v27 = 0;
  v6 = [v1 safeValueForKey:@"bottomMultipleCallLabelView"];
  v7 = __UIAccessibilitySafeClass();

  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = v7;
  v22 = v3;
  v8 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v3, v5, v7}];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v24;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = [*(*(&v23 + 1) + 8 * v13) safeUIViewForKey:{@"participantMarqueeLabel", v19, v20}];
        v16 = [v15 accessibilityLabel];

        v19 = v16;
        v20 = @"__AXStringForVariablesSentinel";
        v11 = __UIAXStringForVariables();

        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:{16, v16, @"__AXStringForVariablesSentinel"}];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];

  return v11;
}

void sub_29BEB4BE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_29BEB4FBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_29BEB5D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BEB6FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BEB79D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}
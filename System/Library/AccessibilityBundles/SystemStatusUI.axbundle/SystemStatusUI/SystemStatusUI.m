id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A23334C8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:v1])
  {
    v6 = UIKitAccessibilityLocalizedString();

    v5 = v6;
  }

  return v5;
}

void sub_29C47A2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C47AA84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_29C47BD24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C47C900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_29C47CEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_29C47D8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id AXStatusBarItemHint(void *a1)
{
  v1 = a1;
  v2 = [v1 _accessibilityAncestorIsKindOf:objc_opt_class()];

  v3 = [v2 currentStyle];
  v4 = [*MEMORY[0x29EDC8008] _accessibilityIsSystemAppServer];
  v5 = accessibilityLocalizedString(@"status.bar.scroll.to.top.hint");
  if (v3 == 207)
  {
    v6 = accessibilityLocalizedString(@"opens.preferences");
LABEL_3:

    v5 = 0;
    goto LABEL_4;
  }

  IsDoubleHeight = UIStatusBarStyleIsDoubleHeight();
  if (IsDoubleHeight & 1) != 0 || ((v4 ^ 1))
  {
    v6 = 0;
    if (IsDoubleHeight)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x29EDBDFA8] server];
    v12 = [v11 isScreenLockedWithPasscode:0];

    v6 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  v7 = accessibilityLocalizedString(@"notification.center.hint");
  if (v4)
  {
    v8 = [MEMORY[0x29EDBDFA8] server];
    v9 = [v8 isNotificationCenterVisible];
  }

  else
  {
    v9 = 0;
  }

  v13 = [MEMORY[0x29EDB9F48] mainBundle];
  v14 = [v13 bundleIdentifier];
  v15 = [v14 isEqualToString:@"com.apple.purplebuddy"];

  if ((v15 & 1) != 0 || v9)
  {

    v7 = 0;
  }

  v16 = accessibilityLocalizedString(@"control.center.hint");
  v17 = v16;
  if ((v4 & v9) == 1)
  {

    v17 = 0;
  }

  v18 = [MEMORY[0x29EDC7A58] currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if ((v19 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v20 = accessibilityLocalizedString(@"dock.hint");
  }

  else
  {
    v20 = 0;
  }

  v21 = __UIAXStringForVariables();

  return v21;
}

id AXStatusBarPillTimeView(void *a1)
{
  v1 = a1;
  v2 = [v1 _accessibilityAncestorIsKindOf:MEMORY[0x29ED3ADB0](@"STUIStatusBar")];

  v3 = [v2 safeDictionaryForKey:@"items"];
  v4 = [v3 allValues];

  v5 = [v4 ax_filteredArrayUsingBlock:&__block_literal_global_1];
  v6 = [v5 firstObject];

  v7 = [v6 safeValueForKey:@"pillTimeView"];

  return v7;
}

BOOL __AXStatusBarPillTimeView_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29ED3ADB0](@"STUIStatusBarTimeItem");
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"pillTimeView"];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id AXAnnotateDataNetworkViewWithType(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(off_29F306F00[a1 - 1]);
  }

  return v2;
}
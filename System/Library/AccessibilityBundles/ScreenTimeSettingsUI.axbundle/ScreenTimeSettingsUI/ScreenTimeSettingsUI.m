id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22C99C0 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilityLabelForUsageItemsOverridingUsages(void *a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [a1 axFilterObjectsUsingBlock:&__block_literal_global_390];
  v7 = objc_opt_new();
  if (![v6 count])
  {
    goto LABEL_27;
  }

  v38 = 0;
  v37 = 0;
  v8 = 0;
  v9 = @"itemType";
  v39 = a3;
  do
  {
    v10 = [v6 objectAtIndexedSubscript:v8];
    if (v5)
    {
      v11 = [v5 objectAtIndexedSubscript:v8];
      if (a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      objc_opt_class();
      v12 = [v10 safeValueForKey:@"totalUsage"];
      v11 = __UIAccessibilityCastAsClass();

      if (a3)
      {
        goto LABEL_8;
      }
    }

    [v11 doubleValue];
    if (v13 == 0.0)
    {
      goto LABEL_24;
    }

LABEL_8:
    v14 = [v10 safeUnsignedIntegerForKey:v9];
    if (v14 == 6)
    {
      v19 = MEMORY[0x29EDBA0F8];
      v20 = accessibilityLocalizedString(@"pickups.count.format");
      v17 = [v19 stringWithFormat:v20, objc_msgSend(v11, "unsignedIntegerValue")];

      [v7 axSafelyAddObject:v17];
LABEL_15:

      goto LABEL_24;
    }

    if (v14 == 5)
    {
      v15 = [v10 safeValueForKey:@"displayName"];

      if (v15)
      {
        v16 = [v10 safeValueForKey:@"displayName"];
        v17 = v16;
        if (v16 && v11)
        {
          v18 = accessibilityLabelForNotificationsCount(v16, v11, (v37 & 1) == 0);
          [v7 addObject:v18];

          v37 = 1;
        }

        goto LABEL_15;
      }

      v38 += [v11 unsignedIntegerValue];
    }

    else
    {
      v21 = v9;
      v22 = [v10 safeValueForKey:@"displayName"];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = accessibilityLocalizedString(@"unknown.item");
      }

      v25 = v24;

      [v7 axSafelyAddObject:v25];
      objc_opt_class();
      v26 = __UIAccessibilityCastAsClass();
      v27 = v26;
      if (v26)
      {
        [v26 doubleValue];
        v29 = v28;
        [v27 doubleValue];
        v31 = MEMORY[0x29C2EBAB0](v30 < 60.0, v29);
      }

      else
      {
        v31 = 0;
      }

      [v7 axSafelyAddObject:v31];

      v9 = v21;
      a3 = v39;
    }

LABEL_24:

    ++v8;
  }

  while (v8 < [v6 count]);
  if (v38)
  {
    v32 = accessibilityLocalizedString(@"unknown.notification.senders");
    v33 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v38];
    v34 = accessibilityLabelForNotificationsCount(v32, v33, (v37 & 1) == 0);
    [v7 addObject:v34];
  }

LABEL_27:
  v35 = AXLabelForElements();

  return v35;
}

BOOL __accessibilityLabelForUsageItemsOverridingUsages_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __UIAccessibilitySafeClass();
  v4 = v3 != 0;

  return v4;
}

id accessibilityLabelForNotificationsCount(void *a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = a2;
    v6 = a1;
    v7 = accessibilityLocalizedString(@"notifications.count.format");
    v8 = [v5 unsignedIntegerValue];

    [v4 stringWithFormat:v7, v8];
  }

  else
  {
    v7 = a2;
    v9 = a1;
    AXFormatNumber();
  }
  v10 = ;

  v11 = MEMORY[0x29EDBA0F8];
  v12 = accessibilityLocalizedString(@"notification.origination");
  v13 = [v11 stringWithFormat:v12, v10, a1];

  return v13;
}

void sub_29C22FBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C231208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C2314A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C2316EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C232914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29C233608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 88));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}
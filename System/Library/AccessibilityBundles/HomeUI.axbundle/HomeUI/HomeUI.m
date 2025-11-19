id localizedString(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1 = [a1 localizedStringForKey:a3 value:&stru_2A21C2B40 table:a2];
    v3 = vars8;
  }

  return a1;
}

id accessibilityHomeLocalizedString(void *a1)
{
  v1 = MEMORY[0x29EDB9F48];
  v2 = a1;
  v3 = AXAccessibilityBundlesDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"Home.axbundle"];
  v5 = [v1 bundleWithPath:v4];
  v6 = localizedString(v5, @"Accessibility", v2);

  return v6;
}

id accessibilityHomeUILocalizedString(void *a1)
{
  v1 = MEMORY[0x29EDB9F48];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = localizedString(v3, @"Accessibility", v2);

  return v4;
}

id accessibilityLabelForNamedWallpaper(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"interior_wallpaper"])
  {
    v2 = @"wallpaper.description.interior";
  }

  else
  {
    if (![v1 isEqualToString:@"red_wallpaper"])
    {
      v4 = accessibilityHomeUILocalizedString(v1);
      if ([v4 isEqualToString:v1])
      {
        v5 = v1;
      }

      else
      {
        v5 = v4;
      }

      v3 = v5;

      goto LABEL_10;
    }

    v2 = @"wallpaper.description.red";
  }

  v3 = accessibilityHomeUILocalizedString(v2);
LABEL_10:

  return v3;
}

id accessibilityLabelForCustomWallpaper(void *a1)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v1 = MEMORY[0x29EDBB9F8];
  v12[0] = a1;
  v2 = MEMORY[0x29EDB8D80];
  v3 = a1;
  v4 = [v2 arrayWithObjects:v12 count:1];
  v5 = [v1 fetchAssetsWithLocalIdentifiers:v4 options:0];

  if (v5 && [v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 accessibilityLabel];
    v11 = [v6 accessibilityValue];
    v8 = __AXStringForVariables();
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

id accessibilityLabelForIconIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"icons.%@", a1];
  v2 = v1;
  if (v1)
  {
    v3 = accessibilityHomeUILocalizedString(v1);
    if (![v3 isEqualToString:v2])
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void *accessibilityLabelForBadgeType(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 8 && ((0xFDu >> v1))
  {
    v2 = off_29F2C6AB8[v1];
    v3 = accessibilityHomeUILocalizedString(v2);
    if ([v3 isEqualToString:v2])
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v3 = accessibilityHomeUILocalizedString(0);
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void *accessibilityLabelForStatusItemCategory(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v2 = accessibilityHomeUILocalizedString(0);
      v3 = 0;
      goto LABEL_9;
    }

    v1 = @"status.actionrequired";
  }

  else
  {
    v1 = @"status.alarm";
  }

  v2 = accessibilityHomeUILocalizedString(v1);
  if ([v2 isEqualToString:v1])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

LABEL_9:
  v4 = v3;

  return v3;
}

id _accessibilityItemAccessoryType(void *a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  MEMORY[0x29C2DA460](@"HFItem");
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    objc_opt_class();
    v3 = [v1 safeValueForKey:@"accessories"];
    v4 = __UIAccessibilityCastAsClass();

    if (v4)
    {
      v16 = v1;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v18;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v17 + 1) + 8 * i);
            v21 = 0;
            objc_opt_class();
            v11 = [v10 safeValueForKeyPath:@"category.localizedDescription"];
            v12 = __UIAccessibilityCastAsClass();

            if (v21 == 1)
            {
              abort();
            }

            [v2 axSafelyAddObject:v12];
          }

          v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v7);
      }

      v1 = v16;
    }
  }

  v13 = AXLabelForElements();

  v14 = *MEMORY[0x29EDCA608];

  return v13;
}

void sub_29BE88A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BE89D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BE8B834(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BE8C078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a26);
  _Unwind_Resume(a1);
}

void sub_29BE8C3A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_29BE8CF24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 120));
  _Unwind_Resume(a1);
}

void sub_29BE8DD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_29BE922B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BE930AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_29BE94458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak((v53 + 32));
  objc_destroyWeak((v50 + 32));
  objc_destroyWeak((v52 + 32));
  objc_destroyWeak((v51 + 32));
  objc_destroyWeak((v54 + 32));
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a49);
  objc_destroyWeak((v55 - 216));
  objc_destroyWeak((v55 - 176));
  objc_destroyWeak((v55 - 136));
  objc_destroyWeak((v55 - 128));
  _Unwind_Resume(a1);
}

void sub_29BE96A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BE96D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_29BE98754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_29BE99528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}
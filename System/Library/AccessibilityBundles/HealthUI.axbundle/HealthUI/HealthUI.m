id accessibilityLocalizedStringFromTable(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = accessibilityLocalizedStringFromTable_axBundle;
  if (accessibilityLocalizedStringFromTable_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v6 = objc_claimAutoreleasedReturnValue(), v7 = accessibilityLocalizedStringFromTable_axBundle, accessibilityLocalizedStringFromTable_axBundle = v6, v7, (v5 = accessibilityLocalizedStringFromTable_axBundle) != 0))
  {
    v8 = [v5 localizedStringForKey:v3 value:&stru_2A21B8770 table:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__CFString *accessibiityStringForBloodType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    v2 = &stru_2A21B8770;
  }

  else
  {
    v2 = accessibilityLocalizedStringFromTable(off_29F2C4308[a1 - 1], @"Accessibility");
  }

  return v2;
}

void AXMoveFocusToPicker(void *a1, void *a2)
{
  v3 = *MEMORY[0x29EDC7448];
  v4 = a2;
  v5 = a1;
  _UIAccessibilityBlockPostingOfNotification();
  v5[2](v5);

  argument = v4[2](v4);

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], argument);
  AXPerformBlockOnMainThreadAfterDelay();
}

id AXBloodTypeStringFromString(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 lowercaseString];
  v5 = [v3 lowercaseString];

  v6 = AXIsBloodTypeString_onceToken;
  v7 = v5;
  if (v6 != -1)
  {
    AXBloodTypeStringFromString_cold_1();
  }

  v8 = [AXIsBloodTypeString_BloodTypes containsObject:v7];

  v9 = 0;
  if (v8 && v7 && v4)
  {
    v10 = [v4 length];
    if (v10 >= [v7 length])
    {
      v11 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v4];
      v12 = [v11 rangeOfString:v7];
      if (v13 >= 2)
      {
        [v11 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD930] withRange:{v12, v13 - 1}];
        v14 = [v4 rangeOfString:@"-" options:4];
        if (v15)
        {
          [v11 setAttribute:@"BloodType" forKey:*MEMORY[0x29EDBD850] withRange:{v14, v15}];
        }

        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

__CFString *AXStringFromTimeScope(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_29F2C4348[a1];
  }
}

id AXLocalizedStringFromTimeScope(unint64_t a1)
{
  v1 = AXStringFromTimeScope(a1);
  v2 = accessibilityLocalizedStringFromTable(v1, @"Accessibility");

  return v2;
}

uint64_t __AXIsBloodTypeString_block_invoke()
{
  AXIsBloodTypeString_BloodTypes = [MEMORY[0x29EDB8E50] setWithArray:&unk_2A21BBCA0];

  return MEMORY[0x2A1C71028]();
}

void sub_29BE58124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_29BE58AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

void sub_29BE59E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BE5A6A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}
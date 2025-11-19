id AXMobileMailGetSelectedMessageCellElement()
{
  v0 = [MEMORY[0x29EDC7938] sharedApplication];
  NSClassFromString(&cfstr_Mailappcontrol_0.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v1 = [v0 safeValueForKey:@"masterNavigationController"];
    v2 = __UIAccessibilityCastAsClass();

    v3 = [v2 visibleViewController];
    NSClassFromString(&cfstr_Messagelistvie_0.isa);
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v4 = [v3 safeValueForKey:@"collectionView"];
      v5 = __UIAccessibilityCastAsClass();

      v6 = [v5 indexPathsForSelectedItems];
      v7 = [v6 firstObject];

      if (v7)
      {
        v8 = [v5 cellForItemAtIndexPath:v7];
        v9 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
        [v9 setLeafNodePredicate:&__block_literal_global_573];
        v10 = [v8 _accessibilityLeafDescendantsWithCount:1 options:v9];
        v11 = [v10 firstObject];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_29BF9D4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BF9D754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BF9DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BF9E808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BF9F00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BF9F800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BFA0414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BFA0F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BFA2C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BFA3E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BFA4724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_29BFA610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BFA67A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_29BFA7B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BFA950C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BFA9860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BFAA644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_29BFAB108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.MobileMail.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22171D0 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id accessibilitySubstituteReadPhonemeInString(uint64_t a1)
{
  v1 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:a1];
  [v1 setAttribute:&unk_2A221BD60 forKey:*MEMORY[0x29EDBD7E0]];

  return v1;
}

id accessibilityLabelForFlagColor(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDC7A00] systemYellowColor];
  v3 = [v1 isEqual:v2];

  if (v3)
  {
    v4 = @"flag.color.yellow";
LABEL_15:
    v17 = accessibilityLocalizedString(v4);
    goto LABEL_16;
  }

  v5 = [MEMORY[0x29EDC7A00] systemBlueColor];
  v6 = [v1 isEqual:v5];

  if (v6)
  {
    v4 = @"flag.color.blue";
    goto LABEL_15;
  }

  v7 = [MEMORY[0x29EDC7A00] systemRedColor];
  v8 = [v1 isEqual:v7];

  if (v8)
  {
    v4 = @"flag.color.red";
    goto LABEL_15;
  }

  v9 = [MEMORY[0x29EDC7A00] systemOrangeColor];
  v10 = [v1 isEqual:v9];

  if (v10)
  {
    v4 = @"flag.color.orange";
    goto LABEL_15;
  }

  v11 = [MEMORY[0x29EDC7A00] systemGrayColor];
  v12 = [v1 isEqual:v11];

  if (v12)
  {
    v4 = @"flag.color.gray";
    goto LABEL_15;
  }

  v13 = [MEMORY[0x29EDC7A00] systemPurpleColor];
  v14 = [v1 isEqual:v13];

  if (v14)
  {
    v4 = @"flag.color.purple";
    goto LABEL_15;
  }

  v15 = [MEMORY[0x29EDC7A00] systemGreenColor];
  v16 = [v1 isEqual:v15];

  if (v16)
  {
    v4 = @"flag.color.green";
    goto LABEL_15;
  }

  v17 = AXColorStringForColor();
LABEL_16:
  v18 = v17;

  return v18;
}

id accessibilityApproximateVisibleSummaryText(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v5 = [v3 _accessibilityValueForKey:@"ApproximateVisibleSummary"];
  v20 = v5;
  v6 = v16;
  if (v16[5])
  {
    v7 = __accessibilityApproximateVisibleSummaryText_block_invoke(v5, v4);
    v8 = [v7 hasPrefix:v16[5]];

    v6 = v16;
    if ((v8 & 1) == 0)
    {
      v9 = v16[5];
      v16[5] = 0;

      v6 = v16;
    }
  }

  v10 = v6[5];
  if (!v10)
  {
    v14 = v4;
    AXPerformSafeBlock();
    v11 = v16[5];
    if (v11)
    {
      [v3 _accessibilitySetRetainedValue:v11 forKey:@"ApproximateVisibleSummary"];
    }

    v10 = v16[5];
  }

  v12 = v10;
  _Block_object_dispose(&v15, 8);

  return v12;
}

void sub_29BFAB994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __accessibilityApproximateVisibleSummaryText_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 attributedText];
  v4 = [v3 string];

  if (!v4)
  {
    v4 = [v2 text];
  }

  return v4;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __accessibilityApproximateVisibleSummaryText_block_invoke_341(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = (*(*(a1 + 40) + 16))();
  if ([v13 length])
  {
    v3 = [MEMORY[0x29EDC76B0] preferredFontForTextStyle:*MEMORY[0x29EDC8118]];
    v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:v3 forKey:*MEMORY[0x29EDC7638]];
    v5 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v13 attributes:v4];
    v6 = CTFramesetterCreateWithAttributedString(v5);

    [*(a1 + 32) bounds];
    v7 = CGPathCreateWithRect(v16, 0);
    v15.length = [v13 length];
    v15.location = 0;
    Frame = CTFramesetterCreateFrame(v6, v15, v7, 0);
    VisibleStringRange = CTFrameGetVisibleStringRange(Frame);
    CFRelease(Frame);
    CFRelease(v7);
    CFRelease(v6);
    if (VisibleStringRange.location != -1)
    {
      v10 = [v13 substringWithRange:{VisibleStringRange.location, VisibleStringRange.length}];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }
}

void sub_29BFAC6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BFACC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x2A1C59EB0](frame);
  result.length = v2;
  result.location = v1;
  return result;
}
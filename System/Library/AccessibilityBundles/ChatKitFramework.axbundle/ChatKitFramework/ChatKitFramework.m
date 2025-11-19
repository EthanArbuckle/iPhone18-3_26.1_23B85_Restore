id AXCKLocalizedFromStringWithContact(void *a1)
{
  if (a1)
  {
    v1 = AXCKFullNameForContact(a1);
    v2 = MEMORY[0x29EDBA0F8];
    v3 = accessibilityLocalizedString(@"search.item.from.contact");
    v4 = [v2 localizedStringWithFormat:v3, v1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id AXCKFullNameForContact(void *a1)
{
  v14[1] = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = [MEMORY[0x29EDB8BA8] descriptorForRequiredKeysForStyle:0];
  v14[0] = v2;
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];

  if (v1)
  {
    if (([v1 areKeysAvailable:v3] & 1) != 0 || (objc_msgSend(v1, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4) || (accessibilityContactStore(), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "unifiedContactWithIdentifier:keysToFetch:error:", v6, v3, 0), v7 = objc_claimAutoreleasedReturnValue(), v1, v6, v5, (v1 = v7) != 0))
    {
      v8 = [MEMORY[0x29EDB8BA8] stringFromContact:v1 style:0];
      if (v8)
      {
        goto LABEL_12;
      }
    }
  }

  v9 = [v1 phoneNumbers];
  v10 = [v1 emailAddresses];
  if ([v9 count])
  {
    v11 = [v9 firstObject];
    v12 = [v11 value];
    v8 = [v12 stringValue];
  }

  else
  {
    if (![v10 count])
    {
      v8 = 0;
      goto LABEL_11;
    }

    v11 = [v10 firstObject];
    v8 = [v11 value];
  }

LABEL_11:
LABEL_12:

  return v8;
}

id accessibilityCameraKitLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityCameraKitLocalizedString_axBundle;
  if (accessibilityCameraKitLocalizedString_axBundle || (v3 = MEMORY[0x29EDB9F48], AXAccessibilityBundlesDirectory(), v4 = objc_claimAutoreleasedReturnValue(), [v4 stringByAppendingPathComponent:@"CameraKit.axbundle"], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "bundleWithPath:", v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = accessibilityCameraKitLocalizedString_axBundle, accessibilityCameraKitLocalizedString_axBundle = v6, v7, v5, v4, (v2 = accessibilityCameraKitLocalizedString_axBundle) != 0) || (_AXAssert(), (v2 = accessibilityCameraKitLocalizedString_axBundle) != 0))
  {
    v8 = [v2 localizedStringForKey:v1 value:&stru_2A21515E8 table:@"CameraKitStrings"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_29BCB3A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _AXCKStringForMediaType(int a1)
{
  v1 = 0;
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v3 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
        v4 = v3;
        v5 = @"filetype.audio";
        break;
      case 2:
        v3 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
        v4 = v3;
        v5 = @"filetype.video";
        break;
      case 3:
        v3 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
        v4 = v3;
        v5 = @"filetype.image";
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (a1 > 5)
  {
    if (a1 != 6)
    {
      if (a1 != 7)
      {
        goto LABEL_18;
      }

      v2 = @"passkit.attachment";
      goto LABEL_12;
    }

    v3 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v4 = v3;
    v5 = @"filetype.calendar.event";
  }

  else
  {
    if (a1 != 4)
    {
      v2 = @"map.attachment";
LABEL_12:
      v1 = accessibilityLocalizedString(v2);
      goto LABEL_18;
    }

    v3 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v4 = v3;
    v5 = @"filetype.contact.card";
  }

  v1 = [v3 localizedStringForKey:v5 value:&stru_2A21515E8 table:@"Accessibility"];

LABEL_18:

  return v1;
}

uint64_t _AXCKIsActionWindowShowing()
{
  v0 = AXApplicationGetMainBundleIdentifier();
  v1 = [v0 isEqualToString:*MEMORY[0x29EDBD650]];

  if (v1)
  {
    objc_opt_class();
    v2 = [NSClassFromString(&cfstr_Ckactionmenuwi.isa) sharedInstance];
    v3 = __UIAccessibilityCastAsClass();

    if (v3)
    {
      v1 = [v3 isHidden] ^ 1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

id _AXCKFullScreenEffectString(void *a1, int a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"com.apple.messages.effect.CKHappyBirthdayEffect"])
  {
    v4 = @"impact.effect.full.balloons";
  }

  else if ([v3 isEqualToString:@"com.apple.messages.effect.CKConfettiEffect"])
  {
    v4 = @"impact.effect.full.confetti";
  }

  else if ([v3 isEqualToString:@"com.apple.messages.effect.CKHeartEffect"])
  {
    v4 = @"impact.effect.full.love";
  }

  else if ([v3 isEqualToString:@"com.apple.messages.effect.CKLasersEffect"])
  {
    v4 = @"impact.effect.full.lasers";
  }

  else if ([v3 isEqualToString:@"com.apple.messages.effect.CKFireworksEffect"])
  {
    v4 = @"impact.effect.full.fireworks";
  }

  else if ([v3 isEqualToString:@"com.apple.messages.effect.CKShootingStarEffect"])
  {
    v4 = @"impact.effect.full.shootingstar";
  }

  else if ([v3 isEqualToString:@"com.apple.messages.effect.CKSparklesEffect"])
  {
    v4 = @"impact.effect.full.celebration";
  }

  else if ([v3 isEqualToString:@"com.apple.messages.effect.CKEchoEffect"])
  {
    v4 = @"impact.effect.full.echo";
  }

  else
  {
    if (![v3 isEqualToString:@"com.apple.messages.effect.CKSpotlightEffect"])
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_22;
    }

    v4 = @"impact.effect.full.spotlight";
  }

  if (a2)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.description", v4];
  }

  v5 = accessibilityLocalizedString(v4);
LABEL_22:

  return v5;
}

id accessibilityContactStore()
{
  if (accessibilityContactStore_onceToken != -1)
  {
    accessibilityContactStore_cold_1();
  }

  v1 = accessibilityContactStore_store;

  return v1;
}

uint64_t __accessibilityContactStore_block_invoke()
{
  accessibilityContactStore_store = objc_alloc_init(MEMORY[0x29EDB8BB0]);

  return MEMORY[0x2A1C71028]();
}

id _AXCKMentions(void *a1, void *a2, int a3)
{
  v22 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v5 = [MEMORY[0x29EDB8DE8] array];
    v24 = 0;
    v25 = 0;
    v6 = [v4 length];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      if (a3)
      {
        v9 = @"__kIMMentionAttributeName";
      }

      else
      {
        v9 = @"__kIMMentionConfirmedMention";
      }

      v23 = v9;
      while (1)
      {
        v10 = [v4 attributesAtIndex:v8 effectiveRange:&v24];
        v11 = v10;
        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v12 = v23;
        v13 = [v11 objectForKey:v12];
        if (!-[__CFString isEqualToString:](v12, "isEqualToString:", @"__kIMMentionAttributeName") || ([v11 objectForKey:@"__kIMMentionConfirmedMention"], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
        {
          if (v13)
          {
            v15 = [[AXCKMentionSubelement alloc] initWithTextView:v22];
            [(AXCKMentionSubelement *)v15 setRange:v24, v25];
            [(AXCKMentionSubelement *)v15 setType:a3 ^ 1u];
            if ([(__CFString *)v12 isEqualToString:@"__kIMMentionAttributeName"])
            {
              v16 = @"possible.mention.button.text";
            }

            else
            {
              v16 = @"confirmed.mention.button.text";
            }

            v17 = accessibilityLocalizedString(v16);
            [(AXCKMentionSubelement *)v15 setAccessibilityValue:v17];

            v18 = [v4 string];
            v19 = [v18 substringWithRange:{v24, v25}];
            [(AXCKMentionSubelement *)v15 setAccessibilityLabel:v19];

            [v5 axSafelyAddObject:v15];
          }
        }

        v24 += v25;
        v25 = 0;

        v8 = v24;
        if (v24 >= v7)
        {
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_19:

  return v5;
}

id _AXCKPossibleMentions(void *a1)
{
  v1 = a1;
  v2 = [v1 attributedText];
  v3 = _AXCKMentions(v1, v2, 1);

  return v3;
}

id _AXCKTextEffectMentions(void *a1)
{
  v1 = a1;
  v2 = [v1 attributedText];
  if ([v2 length])
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = [v2 length];
    v5 = *MEMORY[0x29EDC5570];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = ___AXCKTextEffectMentions_block_invoke;
    v15[3] = &unk_29F2B0748;
    v6 = v1;
    v16 = v6;
    v17 = v2;
    v18 = v3;
    v7 = v3;
    [v17 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v15}];
    v8 = _AXTextStyleMention(v6, *MEMORY[0x29EDC5568], @"texteffects.bold");
    [v7 axSafelyAddObject:v8];
    v9 = _AXTextStyleMention(v6, *MEMORY[0x29EDC5578], @"texteffects.italic");
    [v7 axSafelyAddObject:v9];
    v10 = _AXTextStyleMention(v6, *MEMORY[0x29EDC5588], @"texteffects.underline");
    [v7 axSafelyAddObject:v10];
    v11 = _AXTextStyleMention(v6, *MEMORY[0x29EDC5580], @"texteffects.strikethrough");
    [v7 axSafelyAddObject:v11];
    if ([v7 count])
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id _AXTextStyleMention(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v8 = [v5 attributedText];
  v9 = [v8 length];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = ___AXTextStyleMention_block_invoke;
  v15[3] = &unk_29F2B0798;
  v19 = &v20;
  v10 = v5;
  v16 = v10;
  v11 = v7;
  v17 = v11;
  v12 = v8;
  v18 = v12;
  [v12 enumerateAttribute:v6 inRange:0 options:v9 usingBlock:{0, v15}];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void sub_29BCB46F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _AXCustomActionsForActions(void *a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v21 = [MEMORY[0x29EDB8DE8] array];
  v24 = accessibilityLocalizedString(@"unpin.action.label");
  v22 = accessibilityLocalizedString(@"pin.action.label");
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v1;
  v2 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v28;
    v20 = v26;
    v5 = @"\n";
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 title];
        if (!v8)
        {
          v9 = [v7 image];
          v8 = [v9 accessibilityLabel];
        }

        if (objc_opt_respondsToSelector())
        {
          v10 = v5;
          v11 = [v7 safeValueForKey:@"state"];
          v12 = [v11 integerValue];

          if (v12 == 1)
          {
            v18 = accessibilityLocalizedString(@"switch.on");
            v19 = @"__AXStringForVariablesSentinel";
            v13 = __UIAXStringForVariables();

            v8 = v13;
          }

          v5 = v10;
        }

        v14 = [v8 stringByReplacingOccurrencesOfString:v5 withString:{@" ", v18, v19, v20}];

        if ([v14 length] && (objc_msgSend(v14, "containsString:", v24) & 1) == 0 && (objc_msgSend(v14, "containsString:", v22) & 1) == 0)
        {
          v15 = objc_alloc(MEMORY[0x29EDC78E0]);
          v25[0] = MEMORY[0x29EDCA5F8];
          v25[1] = 3221225472;
          v26[0] = ___AXCustomActionsForActions_block_invoke;
          v26[1] = &unk_29F2B0770;
          v26[2] = v7;
          v16 = [v15 initWithName:v14 actionHandler:v25];
          [v21 addObject:v16];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v3);
  }

  return v21;
}

void sub_29BCB6224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCB6C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCB8104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCB8890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCB8B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCBA604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCBAA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCBC49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCBDC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BCBDD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BCBE3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BCBE608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BCC0170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCC1768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BCC3BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCC5DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCC67C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCC754C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _axLocalizedStringForLayoutIntent(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(off_29F2B0C48[a1 - 1]);
  }

  return v2;
}

void sub_29BCC7A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29BCC8714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCC98A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_29BCCA5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCCA674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_29BCCB4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCCC058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void voiceOverDidEnableHandwriting()
{
  objc_opt_class();
  v0 = __UIAccessibilityCastAsSafeCategory();
  [v0 _axSetIsHandwritingEnabled:1];
}

void voiceOverDidDisableHandwriting()
{
  objc_opt_class();
  v0 = __UIAccessibilityCastAsSafeCategory();
  [v0 _axSetIsHandwritingEnabled:0];
}

void sub_29BCCD73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCCDC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCCF598(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_29BCD19C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCD2DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCD3CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_29BCD3D98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_29BCD4D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCD7034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29BCD863C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_29BCD8FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29BCD9B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A21515E8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id addFirstResponderRotorsToRotorArray(void *a1)
{
  v1 = [a1 mutableCopy];
  if (!v1)
  {
    v1 = [MEMORY[0x29EDB8DE8] array];
  }

  v2 = [*MEMORY[0x29EDC8008] _accessibilityMainWindow];
  v3 = [v2 firstResponder];

  v4 = [v3 accessibilityCustomRotors];
  if (v4)
  {
    [v1 addObjectsFromArray:v4];
  }

  return v1;
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

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  MEMORY[0x2A1C6A7E0](view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}
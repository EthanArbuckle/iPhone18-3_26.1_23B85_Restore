@interface CAMFlashButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)startExpansionWithProposedFrame:(CGRect)a3;
@end

@implementation CAMFlashButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMFlashButton" hasInstanceMethod:@"setFlashMode:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"CAMFlashButton" hasInstanceMethod:@"flashMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMExpandableMenuButton" hasInstanceMethod:@"startExpansionWithProposedFrame:" withFullSignature:{"v", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"CAMFlashButton" isKindOfClass:@"CAMExpandableMenuButton"];
  [v3 validateClass:@"CAMFlashButton" hasInstanceMethod:@"modeForIndex:" withFullSignature:{"q", "q", 0}];
  [v3 validateClass:@"CAMFlashButton" hasInstanceMethod:@"isUnavailable" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMFlashButton" hasInstanceMethod:@"titleForMenuItemAtIndex:" withFullSignature:{"@", "q", 0}];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMFlashButtonAccessibility *)self safeValueForKey:@"flashMode"];
    v4 = [v3 integerValue];

    v5 = v4 != 1;
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __52__CAMFlashButtonAccessibility_accessibilityActivate__block_invoke;
    v11 = &unk_29F2ACC58;
    if (!v4)
    {
      v5 = 2;
    }

    v12 = self;
    v13 = v5;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAMFlashButtonAccessibility;
    return [(CAMFlashButtonAccessibility *)&v7 accessibilityActivate];
  }
}

void __52__CAMFlashButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFlashMode:*(a1 + 40)];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityHint
{
  if (([(CAMFlashButtonAccessibility *)self safeBoolForKey:@"isUnavailable"]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityCameraKitLocalizedString(@"FLASH_MODE_BUTTON_HINT");
  }

  return v2;
}

- (id)accessibilityValue
{
  if (([(CAMFlashButtonAccessibility *)self safeBoolForKey:@"isUnavailable"]& 1) != 0)
  {
    v3 = @"FLASH_MODE_BUTTON_UNAVAILABLE";
  }

  else
  {
    v4 = [(CAMFlashButtonAccessibility *)self safeValueForKey:@"flashMode"];
    v5 = [v4 integerValue];

    v6 = @"FLASH_MODE_BUTTON_VALUE_AUTO";
    if (v5 == 1)
    {
      v6 = @"FLASH_MODE_BUTTON_VALUE_ON";
    }

    if (v5)
    {
      v3 = v6;
    }

    else
    {
      v3 = @"FLASH_MODE_BUTTON_VALUE_OFF";
    }
  }

  v7 = accessibilityCameraKitLocalizedString(v3);

  return v7;
}

- (void)startExpansionWithProposedFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMFlashButtonAccessibility;
  [(CAMFlashButtonAccessibility *)&v6 startExpansionWithProposedFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  v4 = [(CAMFlashButtonAccessibility *)self safeArrayForKey:@"_menuItems"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __63__CAMFlashButtonAccessibility_startExpansionWithProposedFrame___block_invoke;
  v5[3] = &unk_29F2AD3E8;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __63__CAMFlashButtonAccessibility_startExpansionWithProposedFrame___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setIsAccessibilityElement:1];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v21 = MEMORY[0x29EDCA5F8];
  v22 = 3221225472;
  v23 = __63__CAMFlashButtonAccessibility_startExpansionWithProposedFrame___block_invoke_2;
  v24 = &unk_29F2AD398;
  v25 = *(a1 + 32);
  v26 = &v15;
  v27 = a3;
  AXPerformSafeBlock();
  v6 = v16[3];
  _Block_object_dispose(&v15, 8);
  v7 = &__block_literal_global_10;
  if (v6 == 1)
  {
    v7 = &__block_literal_global_534;
  }

  if (v6 == 2)
  {
    v8 = &__block_literal_global_536;
  }

  else
  {
    v8 = v7;
  }

  [v5 _setAccessibilityLabelBlock:v8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v12 = MEMORY[0x29EDCA5F8];
  v13 = *(a1 + 32);
  v14 = a3;
  AXPerformSafeBlock();
  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  if ([v9 length])
  {
    v10 = [MEMORY[0x29EDB8DE8] array];
    [v10 axSafelyAddObject:v9];
    v11 = [v5 accessibilityLabel];
    [v10 axSafelyAddObject:v11];

    [v5 setAccessibilityUserInputLabels:v10];
  }
}

uint64_t __63__CAMFlashButtonAccessibility_startExpansionWithProposedFrame___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) modeForIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __63__CAMFlashButtonAccessibility_startExpansionWithProposedFrame___block_invoke_537(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) titleForMenuItemAtIndex:*(a1 + 48)];

  return MEMORY[0x2A1C71028]();
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMFlashButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMFlashButtonAccessibility *)&v3 accessibilityTraits];
}

@end
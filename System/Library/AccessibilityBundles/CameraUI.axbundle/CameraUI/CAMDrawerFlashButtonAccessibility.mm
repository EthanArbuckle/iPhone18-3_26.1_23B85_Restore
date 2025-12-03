@interface CAMDrawerFlashButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation CAMDrawerFlashButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMDrawerFlashButton" hasInstanceMethod:@"flashMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_itemLabels" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_cachedMenuItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerFlashButton" isKindOfClass:@"CAMControlDrawerButton"];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuItem" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerFlashButton" isKindOfClass:@"CAMControlDrawerMenuButton"];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMDrawerFlashButtonAccessibility *)self safeValueForKey:@"flashMode"];
    integerValue = [v3 integerValue];

    v5 = 2 * (integerValue != 1);
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __58__CAMDrawerFlashButtonAccessibility_accessibilityActivate__block_invoke;
    v11 = &unk_29F2ACC58;
    if (integerValue == 2)
    {
      v5 = 1;
    }

    selfCopy = self;
    v13 = v5;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAMDrawerFlashButtonAccessibility;
    return [(CAMDrawerFlashButtonAccessibility *)&v7 accessibilityActivate];
  }
}

void __58__CAMDrawerFlashButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFlashMode:*(a1 + 40)];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(CAMDrawerFlashButtonAccessibility *)self safeValueForKey:@"flashMode"];
  integerValue = [v2 integerValue];

  if (integerValue > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraKitLocalizedString(off_29F2AD0C0[integerValue]);
  }

  return v4;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = CAMDrawerFlashButtonAccessibility;
  [(CAMDrawerFlashButtonAccessibility *)&v9 layoutSubviews];
  v3 = [(CAMDrawerFlashButtonAccessibility *)self safeArrayForKey:@"_itemLabels"];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__3;
  v7[4] = __Block_byref_object_dispose__3;
  v8 = [(CAMDrawerFlashButtonAccessibility *)self safeArrayForKey:@"_cachedMenuItems"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __51__CAMDrawerFlashButtonAccessibility_layoutSubviews__block_invoke;
  v4[3] = &unk_29F2ACDC8;
  v4[4] = v7;
  objc_copyWeak(&v5, &location);
  [v3 enumerateObjectsUsingBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
  _Block_object_dispose(v7, 8);
}

void __51__CAMDrawerFlashButtonAccessibility_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 setIsAccessibilityElement:1];
  if ([*(*(*(a1 + 32) + 8) + 40) count] > a3)
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndex:a3];
    v7 = [v6 safeIntegerForKey:@"value"];

    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __51__CAMDrawerFlashButtonAccessibility_layoutSubviews__block_invoke_2;
    v12[3] = &unk_29F2ACD78;
    objc_copyWeak(v13, (a1 + 40));
    v13[1] = v7;
    [v5 _setAccessibilityTraitsBlock:v12];
    if (v7 >= 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = accessibilityCameraKitLocalizedString(off_29F2AD0C0[v7]);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __51__CAMDrawerFlashButtonAccessibility_layoutSubviews__block_invoke_3;
    v10[3] = &unk_29F2ACDA0;
    v9 = v8;
    v11 = v9;
    [v5 _setAccessibilityLabelBlock:v10];

    objc_destroyWeak(v13);
  }
}

uint64_t __51__CAMDrawerFlashButtonAccessibility_layoutSubviews__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeIntegerForKey:@"flashMode"] == *(a1 + 40))
  {
    v3 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v3 = 1;
  }

  v4 = *MEMORY[0x29EDC7F70];

  return v3 | v4;
}

id __51__CAMDrawerFlashButtonAccessibility_layoutSubviews__block_invoke_3()
{
  v0 = accessibilityCameraKitLocalizedString(@"FLASH_MODE_BUTTON_LABEL");
  v1 = __UIAXStringForVariables();

  return v1;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDrawerFlashButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDrawerFlashButtonAccessibility *)&v3 accessibilityTraits];
}

@end
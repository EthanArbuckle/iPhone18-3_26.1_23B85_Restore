@interface CAMDrawerAspectRatioButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation CAMDrawerAspectRatioButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMDrawerAspectRatioButton" hasInstanceMethod:@"aspectRatio" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_itemLabels" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_cachedMenuItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerAspectRatioButton" isKindOfClass:@"CAMControlDrawerButton"];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuItem" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerAspectRatioButton" isKindOfClass:@"CAMControlDrawerMenuButton"];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMDrawerAspectRatioButtonAccessibility *)self safeValueForKey:@"aspectRatio"];
    integerValue = [v3 integerValue];

    v5 = 2 * (integerValue == 1);
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __64__CAMDrawerAspectRatioButtonAccessibility_accessibilityActivate__block_invoke;
    v11 = &unk_29F2ACC58;
    if (!integerValue)
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
    v7.super_class = CAMDrawerAspectRatioButtonAccessibility;
    return [(CAMDrawerAspectRatioButtonAccessibility *)&v7 accessibilityActivate];
  }
}

void __64__CAMDrawerAspectRatioButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAspectRatio:*(a1 + 40)];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(CAMDrawerAspectRatioButtonAccessibility *)self safeValueForKey:@"aspectRatio"];
  integerValue = [v2 integerValue];

  if (integerValue > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2AD090[integerValue]);
  }

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CAMDrawerAspectRatioButtonAccessibility;
  [(CAMDrawerAspectRatioButtonAccessibility *)&v7 layoutSubviews];
  v3 = [(CAMDrawerAspectRatioButtonAccessibility *)self safeArrayForKey:@"_itemLabels"];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__2;
  v5[4] = __Block_byref_object_dispose__2;
  v6 = [(CAMDrawerAspectRatioButtonAccessibility *)self safeArrayForKey:@"_cachedMenuItems"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __57__CAMDrawerAspectRatioButtonAccessibility_layoutSubviews__block_invoke;
  v4[3] = &unk_29F2ACE50;
  v4[4] = v5;
  [v3 enumerateObjectsUsingBlock:v4];
  _Block_object_dispose(v5, 8);
}

void __57__CAMDrawerAspectRatioButtonAccessibility_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = a2;
  [v7 setIsAccessibilityElement:1];
  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  if ([*(*(*(a1 + 32) + 8) + 40) count] > a3)
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndex:a3];
    v6 = [v5 safeIntegerForKey:@"value"];

    if (v6 <= 2)
    {
      [v7 _setAccessibilityLabelBlock:*(&off_29F2AD0A8 + v6)];
    }
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDrawerAspectRatioButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDrawerAspectRatioButtonAccessibility *)&v3 accessibilityTraits];
}

@end
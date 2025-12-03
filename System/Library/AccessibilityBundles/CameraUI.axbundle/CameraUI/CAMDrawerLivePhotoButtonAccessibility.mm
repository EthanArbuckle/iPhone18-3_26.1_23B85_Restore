@interface CAMDrawerLivePhotoButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation CAMDrawerLivePhotoButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMDrawerLivePhotoButton" hasInstanceMethod:@"livePhotoMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_itemLabels" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_cachedMenuItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerLivePhotoButton" isKindOfClass:@"CAMControlDrawerButton"];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuItem" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerLivePhotoButton" isKindOfClass:@"CAMControlDrawerMenuButton"];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMDrawerLivePhotoButtonAccessibility *)self safeValueForKey:@"livePhotoMode"];
    integerValue = [v3 integerValue];

    v5 = 2 * (integerValue != 1);
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __62__CAMDrawerLivePhotoButtonAccessibility_accessibilityActivate__block_invoke;
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
    v7.super_class = CAMDrawerLivePhotoButtonAccessibility;
    return [(CAMDrawerLivePhotoButtonAccessibility *)&v7 accessibilityActivate];
  }
}

void __62__CAMDrawerLivePhotoButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLivePhotoMode:*(a1 + 40)];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(CAMDrawerLivePhotoButtonAccessibility *)self safeValueForKey:@"livePhotoMode"];
  integerValue = [v2 integerValue];

  if (integerValue > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2AD0F0[integerValue]);
  }

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CAMDrawerLivePhotoButtonAccessibility;
  [(CAMDrawerLivePhotoButtonAccessibility *)&v7 layoutSubviews];
  v3 = [(CAMDrawerLivePhotoButtonAccessibility *)self safeArrayForKey:@"_itemLabels"];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__5;
  v5[4] = __Block_byref_object_dispose__5;
  v6 = [(CAMDrawerLivePhotoButtonAccessibility *)self safeArrayForKey:@"_cachedMenuItems"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __55__CAMDrawerLivePhotoButtonAccessibility_layoutSubviews__block_invoke;
  v4[3] = &unk_29F2ACE50;
  v4[4] = v5;
  [v3 enumerateObjectsUsingBlock:v4];
  _Block_object_dispose(v5, 8);
}

void __55__CAMDrawerLivePhotoButtonAccessibility_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 setIsAccessibilityElement:1];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  if ([*(*(*(a1 + 32) + 8) + 40) count] > a3)
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndex:a3];
    v7 = [v6 safeIntegerForKey:@"value"];

    if (v7 > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = accessibilityCameraUILocalizedString(off_29F2AD0F0[v7]);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __55__CAMDrawerLivePhotoButtonAccessibility_layoutSubviews__block_invoke_2;
    v10[3] = &unk_29F2ACDA0;
    v11 = v8;
    v9 = v8;
    [v5 _setAccessibilityLabelBlock:v10];
  }
}

id __55__CAMDrawerLivePhotoButtonAccessibility_layoutSubviews__block_invoke_2()
{
  v0 = accessibilityCameraUILocalizedString(@"LIVEPHOTO_MODE_BUTTON_LABEL");
  v1 = __UIAXStringForVariables();

  return v1;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDrawerLivePhotoButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDrawerLivePhotoButtonAccessibility *)&v3 accessibilityTraits];
}

@end
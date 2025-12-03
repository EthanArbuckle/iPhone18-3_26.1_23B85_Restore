@interface CAMDrawerVideoStabilizationButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation CAMDrawerVideoStabilizationButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMDrawerVideoStabilizationButton" hasInstanceMethod:@"videoStabilizationMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMDrawerVideoStabilizationButton" hasInstanceMethod:@"setVideoStabilizationMode:animated:" withFullSignature:{"v", "q", "B", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_itemLabels" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_cachedMenuItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerVideoStabilizationButton" isKindOfClass:@"CAMControlDrawerButton"];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuItem" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerVideoStabilizationButton" isKindOfClass:@"CAMControlDrawerMenuButton"];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMDrawerVideoStabilizationButtonAccessibility *)self safeValueForKey:@"videoStabilizationMode"];
    integerValue = [v3 integerValue];

    v7 = MEMORY[0x29EDCA5F8];
    v8 = 3221225472;
    v9 = __71__CAMDrawerVideoStabilizationButtonAccessibility_accessibilityActivate__block_invoke;
    v10 = &unk_29F2ACC58;
    selfCopy = self;
    v12 = integerValue == 0;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CAMDrawerVideoStabilizationButtonAccessibility;
    return [(CAMDrawerVideoStabilizationButtonAccessibility *)&v6 accessibilityActivate];
  }
}

void __71__CAMDrawerVideoStabilizationButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVideoStabilizationMode:*(a1 + 40) animated:0];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(CAMDrawerVideoStabilizationButtonAccessibility *)self safeValueForKey:@"videoStabilizationMode"];
  integerValue = [v2 integerValue];

  if (!integerValue)
  {
    v4 = @"Action_Mode_Off";
    goto LABEL_5;
  }

  if (integerValue == 1)
  {
    v4 = @"Action_Mode_On";
LABEL_5:
    v5 = accessibilityCameraUILocalizedString(v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CAMDrawerVideoStabilizationButtonAccessibility;
  [(CAMDrawerVideoStabilizationButtonAccessibility *)&v7 layoutSubviews];
  v3 = [(CAMDrawerVideoStabilizationButtonAccessibility *)self safeArrayForKey:@"_itemLabels"];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__0;
  v5[4] = __Block_byref_object_dispose__0;
  v6 = [(CAMDrawerVideoStabilizationButtonAccessibility *)self safeArrayForKey:@"_cachedMenuItems"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __64__CAMDrawerVideoStabilizationButtonAccessibility_layoutSubviews__block_invoke;
  v4[3] = &unk_29F2ACE50;
  v4[4] = v5;
  [v3 enumerateObjectsUsingBlock:v4];
  _Block_object_dispose(v5, 8);
}

void __64__CAMDrawerVideoStabilizationButtonAccessibility_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 setIsAccessibilityElement:1];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  if ([*(*(*(a1 + 32) + 8) + 40) count] > a3)
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndex:a3];
    v7 = [v6 safeIntegerForKey:@"value"];

    if (v7)
    {
      if (v7 != 1)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v8 = @"Action_Mode_On";
    }

    else
    {
      v8 = @"Action_Mode_Off";
    }

    v9 = accessibilityCameraUILocalizedString(v8);
LABEL_8:
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __64__CAMDrawerVideoStabilizationButtonAccessibility_layoutSubviews__block_invoke_2;
    v11[3] = &unk_29F2ACDA0;
    v12 = v9;
    v10 = v9;
    [v5 _setAccessibilityValueBlock:v11];
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDrawerVideoStabilizationButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDrawerVideoStabilizationButtonAccessibility *)&v3 accessibilityTraits];
}

@end
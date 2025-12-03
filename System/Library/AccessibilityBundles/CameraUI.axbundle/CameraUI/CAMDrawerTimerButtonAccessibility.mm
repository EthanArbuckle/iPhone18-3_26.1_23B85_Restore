@interface CAMDrawerTimerButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation CAMDrawerTimerButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMDrawerTimerButton" hasInstanceMethod:@"timerDuration" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_itemLabels" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_cachedMenuItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerTimerButton" isKindOfClass:@"CAMControlDrawerButton"];
  [validationsCopy validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CAMControlDrawerMenuItem" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDrawerTimerButton" isKindOfClass:@"CAMControlDrawerMenuButton"];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMDrawerTimerButtonAccessibility *)self safeIntegerForKey:@"timerDuration"];
    v4 = 3;
    v5 = 1;
    if (v3)
    {
      v5 = v3;
    }

    if (v3 != 1)
    {
      v4 = v5;
    }

    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __58__CAMDrawerTimerButtonAccessibility_accessibilityActivate__block_invoke;
    v11 = &unk_29F2ACC58;
    if (v3 == 3)
    {
      v4 = 0;
    }

    selfCopy = self;
    v13 = v4;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAMDrawerTimerButtonAccessibility;
    return [(CAMDrawerTimerButtonAccessibility *)&v7 accessibilityActivate];
  }
}

void __58__CAMDrawerTimerButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTimerDuration:*(a1 + 40)];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(CAMDrawerTimerButtonAccessibility *)self safeValueForKey:@"timerDuration"];
  integerValue = [v2 integerValue];

  return accessibilityStringForTimeDuration(integerValue, v4);
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CAMDrawerTimerButtonAccessibility;
  [(CAMDrawerTimerButtonAccessibility *)&v7 layoutSubviews];
  v3 = [(CAMDrawerTimerButtonAccessibility *)self safeArrayForKey:@"_itemLabels"];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__6;
  v5[4] = __Block_byref_object_dispose__6;
  v6 = [(CAMDrawerTimerButtonAccessibility *)self safeArrayForKey:@"_cachedMenuItems"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __51__CAMDrawerTimerButtonAccessibility_layoutSubviews__block_invoke;
  v4[3] = &unk_29F2ACE50;
  v4[4] = v5;
  [v3 enumerateObjectsUsingBlock:v4];
  _Block_object_dispose(v5, 8);
}

void __51__CAMDrawerTimerButtonAccessibility_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 setIsAccessibilityElement:1];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  if ([*(*(*(a1 + 32) + 8) + 40) count] > a3)
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndex:a3];
    v7 = [v6 safeIntegerForKey:@"value"];

    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __51__CAMDrawerTimerButtonAccessibility_layoutSubviews__block_invoke_2;
    v8[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v8[4] = v7;
    [v5 _setAccessibilityLabelBlock:v8];
  }
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDrawerTimerButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDrawerTimerButtonAccessibility *)&v3 accessibilityTraits];
}

@end
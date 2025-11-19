@interface CAMDrawerRAWButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation CAMDrawerRAWButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMDrawerRAWButton" hasInstanceMethod:@"rawMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_itemLabels" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_cachedMenuItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDrawerRAWButton" isKindOfClass:@"CAMControlDrawerButton"];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CAMControlDrawerMenuItem" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDrawerRAWButton" isKindOfClass:@"CAMControlDrawerMenuButton"];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMDrawerRAWButtonAccessibility *)self safeIntegerForKey:@"rawMode"];
    v6 = MEMORY[0x29EDCA5F8];
    v7 = 3221225472;
    v8 = __56__CAMDrawerRAWButtonAccessibility_accessibilityActivate__block_invoke;
    v9 = &unk_29F2ACC58;
    v10 = self;
    v11 = v3 == 0;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CAMDrawerRAWButtonAccessibility;
    return [(CAMDrawerRAWButtonAccessibility *)&v5 accessibilityActivate];
  }
}

void __56__CAMDrawerRAWButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRAWMode:*(a1 + 40)];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v3 = [(CAMDrawerRAWButtonAccessibility *)self safeValueForKey:@"rawMode"];
  v4 = [v3 integerValue];

  if (v4 == 1)
  {
    v5 = @"RAW_MODE_BUTTON_VALUE_ON";
    goto LABEL_5;
  }

  if (!v4)
  {
    v5 = @"RAW_MODE_BUTTON_VALUE_OFF";
LABEL_5:
    v6 = accessibilityCameraUILocalizedString(v5);
    goto LABEL_7;
  }

  v8.receiver = self;
  v8.super_class = CAMDrawerRAWButtonAccessibility;
  v6 = [(CAMDrawerRAWButtonAccessibility *)&v8 accessibilityValue];
LABEL_7:

  return v6;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CAMDrawerRAWButtonAccessibility;
  [(CAMDrawerRAWButtonAccessibility *)&v7 layoutSubviews];
  v3 = [(CAMDrawerRAWButtonAccessibility *)self safeArrayForKey:@"_itemLabels"];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__1;
  v5[4] = __Block_byref_object_dispose__1;
  v6 = [(CAMDrawerRAWButtonAccessibility *)self safeArrayForKey:@"_cachedMenuItems"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __49__CAMDrawerRAWButtonAccessibility_layoutSubviews__block_invoke;
  v4[3] = &unk_29F2ACE50;
  v4[4] = v5;
  [v3 enumerateObjectsUsingBlock:v4];
  _Block_object_dispose(v5, 8);
}

void __49__CAMDrawerRAWButtonAccessibility_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
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

      v8 = @"RAW_MODE_BUTTON_VALUE_ON";
    }

    else
    {
      v8 = @"RAW_MODE_BUTTON_VALUE_OFF";
    }

    v9 = accessibilityCameraUILocalizedString(v8);
LABEL_8:
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __49__CAMDrawerRAWButtonAccessibility_layoutSubviews__block_invoke_2;
    v11[3] = &unk_29F2ACDA0;
    v12 = v9;
    v10 = v9;
    [v5 _setAccessibilityLabelBlock:v11];
  }
}

id __49__CAMDrawerRAWButtonAccessibility_layoutSubviews__block_invoke_2()
{
  v0 = accessibilityCameraUILocalizedString(@"RAW_MODE_BUTTON_LABEL");
  v1 = __UIAXStringForVariables();

  return v1;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDrawerRAWButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDrawerRAWButtonAccessibility *)&v3 accessibilityTraits];
}

@end
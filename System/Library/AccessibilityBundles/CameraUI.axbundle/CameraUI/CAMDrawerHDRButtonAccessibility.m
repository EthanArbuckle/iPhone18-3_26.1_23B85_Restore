@interface CAMDrawerHDRButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)layoutSubviews;
@end

@implementation CAMDrawerHDRButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMDrawerHDRButton" hasInstanceMethod:@"hdrMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_itemLabels" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"_cachedMenuItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDrawerHDRButton" isKindOfClass:@"CAMControlDrawerButton"];
  [v3 validateClass:@"CAMControlDrawerMenuButton" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CAMControlDrawerMenuItem" hasInstanceMethod:@"value" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMDrawerHDRButton" isKindOfClass:@"CAMControlDrawerMenuButton"];
}

- (BOOL)accessibilityActivate
{
  if (AXRequestingClient() == 3)
  {
    v3 = [(CAMDrawerHDRButtonAccessibility *)self safeIntegerForKey:@"hdrMode"];
    v4 = 2 * (v3 != 1);
    v7 = MEMORY[0x29EDCA5F8];
    v8 = 3221225472;
    v9 = __56__CAMDrawerHDRButtonAccessibility_accessibilityActivate__block_invoke;
    v10 = &unk_29F2ACC58;
    if (v3 == 2)
    {
      v4 = 1;
    }

    v11 = self;
    v12 = v4;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CAMDrawerHDRButtonAccessibility;
    return [(CAMDrawerHDRButtonAccessibility *)&v6 accessibilityActivate];
  }
}

void __56__CAMDrawerHDRButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHDRMode:*(a1 + 40)];
  v1 = __UIAccessibilitySafeClass();
  [v1 sendActionsForControlEvents:4096];
}

- (id)accessibilityValue
{
  v2 = [(CAMDrawerHDRButtonAccessibility *)self safeValueForKey:@"hdrMode"];
  v3 = [v2 integerValue];

  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityCameraUILocalizedString(off_29F2AD0D8[v3]);
  }

  return v4;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CAMDrawerHDRButtonAccessibility;
  [(CAMDrawerHDRButtonAccessibility *)&v7 layoutSubviews];
  v3 = [(CAMDrawerHDRButtonAccessibility *)self safeArrayForKey:@"_itemLabels"];
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__4;
  v5[4] = __Block_byref_object_dispose__4;
  v6 = [(CAMDrawerHDRButtonAccessibility *)self safeArrayForKey:@"_cachedMenuItems"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __49__CAMDrawerHDRButtonAccessibility_layoutSubviews__block_invoke;
  v4[3] = &unk_29F2ACE50;
  v4[4] = v5;
  [v3 enumerateObjectsUsingBlock:v4];
  _Block_object_dispose(v5, 8);
}

void __49__CAMDrawerHDRButtonAccessibility_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
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

      v8 = @"HDR_MODE_BUTTON_VALUE_ON";
    }

    else
    {
      v8 = @"HDR_MODE_BUTTON_VALUE_OFF";
    }

    v9 = accessibilityCameraUILocalizedString(v8);
LABEL_8:
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __49__CAMDrawerHDRButtonAccessibility_layoutSubviews__block_invoke_2;
    v11[3] = &unk_29F2ACDA0;
    v12 = v9;
    v10 = v9;
    [v5 _setAccessibilityLabelBlock:v11];
  }
}

id __49__CAMDrawerHDRButtonAccessibility_layoutSubviews__block_invoke_2()
{
  v0 = accessibilityCameraUILocalizedString(@"HDR_MODE_BUTTON_LABEL");
  v1 = __UIAXStringForVariables();

  return v1;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDrawerHDRButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDrawerHDRButtonAccessibility *)&v3 accessibilityTraits];
}

@end
@interface VUIProductLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySpeakableLabelForBadgeName:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkupBadgeViews;
- (void)didMoveToWindow;
@end

@implementation VUIProductLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIProductLockupView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"VUIProductLockupView" hasInstanceMethod:@"mediaBadgeTagsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIProductLockupView" hasInstanceMethod:@"badgeResources" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIProductBadgeResource" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySpeakableLabelForBadgeName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (_accessibilitySpeakableLabelForBadgeName__onceToken == -1)
  {
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [VUIProductLockupViewAccessibility _accessibilitySpeakableLabelForBadgeName:];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v5 = [_accessibilitySpeakableLabelForBadgeName__knownBadgeNameToKeyMap objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    v7 = accessibilityLocalizedString(v5);

    goto LABEL_7;
  }

LABEL_6:
  v7 = 0;
LABEL_7:

  return v7;
}

void __78__VUIProductLockupViewAccessibility__accessibilitySpeakableLabelForBadgeName___block_invoke()
{
  v4[7] = *MEMORY[0x29EDCA608];
  v3[0] = @"cc_mask";
  v3[1] = @"itunes-extras-badge";
  v4[0] = @"lockup.attribute.CC";
  v4[1] = @"lockup.attribute.iTunes.extras";
  v3[2] = @"hd_mask";
  v3[3] = @"hdr_mask";
  v4[2] = @"lockup.attribute.HD";
  v4[3] = @"lockup.attribute.HDR";
  v3[4] = @"4k_mask";
  v3[5] = @"dolbyvision_mask";
  v4[4] = @"lockup.attribute.4k";
  v4[5] = @"lockup.attribute.dolby.vision";
  v3[6] = @"dolby-atmos";
  v4[6] = @"lockup.attribute.dolby.atmos";
  v0 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = _accessibilitySpeakableLabelForBadgeName__knownBadgeNameToKeyMap;
  _accessibilitySpeakableLabelForBadgeName__knownBadgeNameToKeyMap = v0;

  v2 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityMarkupBadgeViews
{
  v15 = [(VUIProductLockupViewAccessibility *)self safeUIViewForKey:@"mediaBadgeTagsView"];
  v3 = [v15 subviews];
  objc_opt_class();
  v4 = [(VUIProductLockupViewAccessibility *)self safeValueForKey:@"badgeResources"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 axFilterObjectsUsingBlock:&__block_literal_global_349];

  v7 = [v6 count];
  if (v7 == [v3 count] && objc_msgSend(v3, "count"))
  {
    v8 = 0;
    v9 = ~*MEMORY[0x29EDC7F88];
    do
    {
      objc_opt_class();
      v10 = [v3 objectAtIndexedSubscript:v8];
      v11 = __UIAccessibilityCastAsClass();

      v12 = [v6 objectAtIndexedSubscript:v8];
      v13 = [v12 safeValueForKey:@"name"];
      v14 = [(VUIProductLockupViewAccessibility *)self _accessibilitySpeakableLabelForBadgeName:v13];

      if (v14)
      {
        [v11 setIsAccessibilityElement:1];
        [v11 setAccessibilityLabel:v14];
        [v11 setAccessibilityTraits:{objc_msgSend(v11, "accessibilityTraits") & v9}];
      }

      ++v8;
    }

    while (v8 < [v3 count]);
  }
}

BOOL __67__VUIProductLockupViewAccessibility__accessibilityMarkupBadgeViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __UIAccessibilitySafeClass();
  v4 = v3 != 0;

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = VUIProductLockupViewAccessibility;
  [(VUIProductLockupViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(VUIProductLockupViewAccessibility *)self _accessibilityMarkupBadgeViews];
}

- (void)didMoveToWindow
{
  [(VUIProductLockupViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3.receiver = self;
  v3.super_class = VUIProductLockupViewAccessibility;
  [(VUIProductLockupViewAccessibility *)&v3 didMoveToWindow];
}

@end
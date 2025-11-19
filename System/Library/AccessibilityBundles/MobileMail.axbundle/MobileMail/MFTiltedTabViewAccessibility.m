@interface MFTiltedTabViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MFTiltedTabViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFTiltedTabView" hasInstanceVariable:@"_visibleItems" withType:"NSMutableArray"];
  [v3 validateClass:@"_MFTiltedTabItemView"];
  [v3 validateClass:@"_MFTiltedTabItemView" hasInstanceMethod:@"borrowedContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFTiltedTabView" hasInstanceVariable:@"_presented" withType:"B"];
  [v3 validateClass:@"_MFTiltedTabItemView" hasInstanceMethod:@"closeButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DockContainerViewController" hasInstanceMethod:@"popToRootViewControllerAnimated:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MFTiltedTabViewAccessibility;
  [(MFTiltedTabViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(MFTiltedTabViewAccessibility *)self safeValueForKey:@"_visibleItems"];
  v4 = __UIAccessibilityCastAsClass();

  v6 = v4;
  v5 = v4;
  AXPerformSafeBlock();
}

void __74__MFTiltedTabViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v1)
  {
    v13 = *v20;
    do
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v19 + 1) + 8 * i);
        v4 = [v3 safeValueForKey:@"borrowedContentView"];
        v5 = MEMORY[0x29EDBA0F8];
        v6 = accessibilityLocalizedString(@"close.draft.format");
        v7 = [v4 accessibilityValue];
        v8 = [v5 stringWithFormat:v6, v7];

        v9 = [v3 safeValueForKey:@"closeButton"];
        [v9 setAccessibilityLabel:v8];
        objc_initWeak(&location, v9);
        v10 = [v3 safeValueForKey:@"closeButton"];
        v15[0] = MEMORY[0x29EDCA5F8];
        v15[1] = 3221225472;
        v15[2] = __74__MFTiltedTabViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
        v15[3] = &unk_29F2D41C0;
        objc_copyWeak(&v17, &location);
        v16 = *(a1 + 32);
        [v10 setAccessibilityActivateBlock:v15];

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }

      v1 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v1);
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t __74__MFTiltedTabViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = __UIAccessibilityCastAsClass();

  [v3 sendActionsForControlEvents:64];
  v5 = *(a1 + 32);
  AXPerformBlockOnMainThreadAfterDelay();

  return 1;
}

void __74__MFTiltedTabViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *MEMORY[0x29EDC7ED8];
    v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v3 = [v4 safeValueForKey:@"borrowedContentView"];
    UIAccessibilityPostNotification(v2, v3);
  }
}

- (id)accessibilityElements
{
  if ([(MFTiltedTabViewAccessibility *)self safeBoolForKey:@"_presented"])
  {
    v5.receiver = self;
    v5.super_class = MFTiltedTabViewAccessibility;
    v3 = [(MFTiltedTabViewAccessibility *)&v5 accessibilityElements];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)accessibilityFrame
{
  if ([(MFTiltedTabViewAccessibility *)self safeBoolForKey:@"_presented"])
  {
    objc_opt_class();
    v2 = __UIAccessibilityCastAsClass();
    [(UIView *)v2 bounds];
    v12 = UIAccessibilityConvertFrameToScreenCoordinates(v11, v2);
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
  }

  else
  {
    x = *MEMORY[0x29EDB90E0];
    y = *(MEMORY[0x29EDB90E0] + 8);
    width = *(MEMORY[0x29EDB90E0] + 16);
    height = *(MEMORY[0x29EDB90E0] + 24);
  }

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

@end
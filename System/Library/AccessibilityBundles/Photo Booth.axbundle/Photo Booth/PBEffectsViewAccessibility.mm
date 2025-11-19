@interface PBEffectsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityShouldHitTestLayers;
- (BOOL)isAccessibilityElement;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setUpEffectLayers;
- (void)dealloc;
- (void)toggleEffectsMode:(id)a3;
@end

@implementation PBEffectsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PBEffectsView" hasInstanceVariable:@"_currentMode" withType:"q"];
  [v3 validateClass:@"PBEffectsView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBEffectsView" hasInstanceMethod:@"_setUpEffectLayers" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PBEffectsView" hasInstanceMethod:@"toggleEffectsMode:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PBEffectsView" hasInstanceVariable:@"_nineUpLayers" withType:"NSArray"];
  [v3 validateClass:@"PBEffectsView" hasInstanceVariable:@"_filters" withType:"NSArray"];
  [v3 validateClass:@"PBEffectsController" hasInstanceMethod:@"_currentDevicePosition" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(PBEffectsViewAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Pbeffectscontr.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _AXAssert();
    goto LABEL_6;
  }

  v3 = [v2 safeIntegerForKey:@"_currentDevicePosition"];
  if (v3 == 1)
  {
    v4 = @"front.facing.camera.view";
    goto LABEL_8;
  }

  if (v3)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = @"back.facing.camera.view";
LABEL_8:
  v5 = axLocalizedString(v4);
LABEL_9:

  return v5;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(PBEffectsViewAccessibility *)self safeValueForKey:@"_currentMode"];
  v3 = [v2 intValue] == 0;

  return v3;
}

- (id)accessibilityElements
{
  v3 = [(PBEffectsViewAccessibility *)self safeValueForKey:@"_currentMode"];
  v4 = [v3 intValue];

  if (v4)
  {
    v5 = [(PBEffectsViewAccessibility *)self safeValueForKey:@"_nineUpLayers"];
    if ([v5 count] != 9)
    {
      _AXAssert();
    }

    v6 = [MEMORY[0x29EDC7938] sharedApplication];
    v7 = [v6 statusBarOrientation];

    if ((v7 - 3) <= 1 && [v5 count] == 9)
    {
      v8 = [v5 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_accessibilityShouldHitTestLayers
{
  v2 = [(PBEffectsViewAccessibility *)self safeValueForKey:@"_currentMode"];
  v3 = [v2 intValue] == 1;

  return v3;
}

- (void)toggleEffectsMode:(id)a3
{
  v3.receiver = self;
  v3.super_class = PBEffectsViewAccessibility;
  [(PBEffectsViewAccessibility *)&v3 toggleEffectsMode:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)dealloc
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = [(PBEffectsViewAccessibility *)self safeValueForKey:@"_nineUpLayers"];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) setAccessibilityContainer:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = PBEffectsViewAccessibility;
  [(PBEffectsViewAccessibility *)&v9 dealloc];
  v8 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PBEffectsViewAccessibility;
  [(PBEffectsViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PBEffectsViewAccessibility *)self safeValueForKey:@"_nineUpLayers"];
  v4 = [(PBEffectsViewAccessibility *)self safeValueForKey:@"_filters"];
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __72__PBEffectsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v6[3] = &unk_29F2E48E0;
    v7 = v4;
    v8 = self;
    [v3 enumerateObjectsUsingBlock:v6];
  }

  else
  {
    _AXAssert();
  }
}

void __72__PBEffectsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v8 = [v5 objectAtIndex:a3];
  v7 = [v8 safeValueForKey:@"localizedName"];
  [v6 setAccessibilityLabel:v7];
  [v6 setAccessibilityContainer:*(a1 + 40)];
  [v6 setIsAccessibilityElement:1];
}

- (void)_setUpEffectLayers
{
  v3.receiver = self;
  v3.super_class = PBEffectsViewAccessibility;
  [(PBEffectsViewAccessibility *)&v3 _setUpEffectLayers];
  [(PBEffectsViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
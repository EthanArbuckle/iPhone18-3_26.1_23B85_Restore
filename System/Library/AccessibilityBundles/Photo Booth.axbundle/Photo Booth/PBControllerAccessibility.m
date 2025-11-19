@interface PBControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_reviewModeFooter;
- (void)_accessibilityApplyLabels:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_reloadTiles;
- (void)toggleCamera:(id)a3;
@end

@implementation PBControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PBController" hasInstanceMethod:@"_reloadTiles" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PBController" hasInstanceMethod:@"_addTilesForPhotos: animated:" withFullSignature:{"@", "@", "B", 0}];
  [v3 validateClass:@"PBController" hasInstanceMethod:@"setCurrentMode: animated:" withFullSignature:{"v", "i", "B", 0}];
  [v3 validateClass:@"PBController" hasInstanceMethod:@"toggleCamera:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PBController" hasInstanceVariable:@"_effectsController" withType:"PBEffectsController"];
  [v3 validateClass:@"PBController" hasInstanceMethod:@"_flipButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PBController" hasInstanceMethod:@"_filterButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PBControllerAccessibility;
  [(PBControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(PBControllerAccessibility *)self safeValueForKey:@"_filterButton"];
  v4 = axLocalizedString(@"filters.button.label");
  [v3 setAccessibilityLabel:v4];

  v5 = axLocalizedString(@"filters.button.hint");
  [v3 setAccessibilityHint:v5];
}

- (void)_reloadTiles
{
  v2.receiver = self;
  v2.super_class = PBControllerAccessibility;
  [(PBControllerAccessibility *)&v2 _reloadTiles];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_accessibilityApplyLabels:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 items];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 tag] - 1;
        if (v9 <= 5 && ((0x2Fu >> v9) & 1) != 0)
        {
          v10 = axLocalizedString(off_29F2E48A8[v9]);
          [v8 setAccessibilityLabel:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (id)_reviewModeFooter
{
  v5.receiver = self;
  v5.super_class = PBControllerAccessibility;
  v3 = [(PBControllerAccessibility *)&v5 _reviewModeFooter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PBControllerAccessibility *)self _accessibilityApplyLabels:v3];
  }

  else
  {
    _AXAssert();
  }

  return v3;
}

- (void)toggleCamera:(id)a3
{
  v6.receiver = self;
  v6.super_class = PBControllerAccessibility;
  [(PBControllerAccessibility *)&v6 toggleCamera:a3];
  v4 = *MEMORY[0x29EDC7F10];
  v5 = [(PBControllerAccessibility *)self safeValueForKey:@"_flipButton"];
  UIAccessibilityPostNotification(v4, v5);
}

@end
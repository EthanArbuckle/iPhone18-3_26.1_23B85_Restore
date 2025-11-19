@interface SFAirDropActivityViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAddIfVisible:(id)a3 toArray:(id)a4;
- (void)_axAnnotateCollectionViewCellIfNeeded;
- (void)updateContentAreaAnimated:(BOOL)a3;
@end

@implementation SFAirDropActivityViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_collectionView" withType:"UICollectionView"];
  [v3 validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_airDropIconView" withType:"SFAirDropIconView"];
  [v3 validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_airDropActiveIconView" withType:"SFAirDropActiveIconView"];
  [v3 validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_noWifiTextView" withType:"UITextView"];
  [v3 validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_instructionsTextView" withType:"UITextView"];
  [v3 validateClass:@"SFAirDropActivityViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SFAirDropActivityViewController" hasInstanceMethod:@"updateContentAreaAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SFAirDropActivityViewController" hasInstanceMethod:@"setSharedItemsAvailable:" withFullSignature:{"v", "B", 0}];
}

- (void)_axAddIfVisible:(id)a3 toArray:(id)a4
{
  v6 = a3;
  v5 = a4;
  if ([v6 _accessibilityViewIsVisible])
  {
    [v5 addObject:v6];
  }
}

- (void)_axAnnotateCollectionViewCellIfNeeded
{
  v3 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"view"];
  v14 = [v3 _accessibilityAncestorIsKindOf:objc_opt_class()];

  v4 = v14;
  if (v14)
  {
    v5 = [MEMORY[0x29EDB8DE8] array];
    v6 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v6 toArray:v5];

    v7 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_collectionView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v7 toArray:v5];

    v8 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_airDropIconView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v8 toArray:v5];

    v9 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_noWifiTextView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v9 toArray:v5];

    v10 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_airDropActiveIconView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v10 toArray:v5];

    v11 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_instructionsTextView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v11 toArray:v5];

    [v14 setAccessibilityElements:v5];
    if ([(SFAirDropActivityViewControllerAccessibility *)self _axDidPostScreenChangeAfterAppearance])
    {
      v12 = *MEMORY[0x29EDC7ED8];
      v13 = 0;
    }

    else
    {
      [(SFAirDropActivityViewControllerAccessibility *)self _axSetDidPostScreenChangeAfterAppearance:1];
      v12 = *MEMORY[0x29EDC7F10];
      v13 = *MEMORY[0x29EDBDB28];
    }

    UIAccessibilityPostNotification(v12, v13);

    v4 = v14;
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SFAirDropActivityViewControllerAccessibility;
  [(SFAirDropActivityViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SFAirDropActivityViewControllerAccessibility *)self _axAnnotateCollectionViewCellIfNeeded];
}

- (void)updateContentAreaAnimated:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SFAirDropActivityViewControllerAccessibility;
  [(SFAirDropActivityViewControllerAccessibility *)&v5 updateContentAreaAnimated:?];
  if (v3)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    [(SFAirDropActivityViewControllerAccessibility *)self _axAnnotateCollectionViewCellIfNeeded];
  }

  [(SFAirDropActivityViewControllerAccessibility *)self _axAnnotateCollectionViewCellIfNeeded];
}

@end
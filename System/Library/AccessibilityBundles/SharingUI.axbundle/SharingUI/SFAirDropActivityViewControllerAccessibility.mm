@interface SFAirDropActivityViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAddIfVisible:(id)visible toArray:(id)array;
- (void)_axAnnotateCollectionViewCellIfNeeded;
- (void)updateContentAreaAnimated:(BOOL)animated;
@end

@implementation SFAirDropActivityViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_collectionView" withType:"UICollectionView"];
  [validationsCopy validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_airDropIconView" withType:"SFAirDropIconView"];
  [validationsCopy validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_airDropActiveIconView" withType:"SFAirDropActiveIconView"];
  [validationsCopy validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_noWifiTextView" withType:"UITextView"];
  [validationsCopy validateClass:@"SFAirDropActivityViewController" hasInstanceVariable:@"_instructionsTextView" withType:"UITextView"];
  [validationsCopy validateClass:@"SFAirDropActivityViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SFAirDropActivityViewController" hasInstanceMethod:@"updateContentAreaAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SFAirDropActivityViewController" hasInstanceMethod:@"setSharedItemsAvailable:" withFullSignature:{"v", "B", 0}];
}

- (void)_axAddIfVisible:(id)visible toArray:(id)array
{
  visibleCopy = visible;
  arrayCopy = array;
  if ([visibleCopy _accessibilityViewIsVisible])
  {
    [arrayCopy addObject:visibleCopy];
  }
}

- (void)_axAnnotateCollectionViewCellIfNeeded
{
  v3 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"view"];
  v14 = [v3 _accessibilityAncestorIsKindOf:objc_opt_class()];

  v4 = v14;
  if (v14)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v6 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v6 toArray:array];

    v7 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_collectionView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v7 toArray:array];

    v8 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_airDropIconView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v8 toArray:array];

    v9 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_noWifiTextView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v9 toArray:array];

    v10 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_airDropActiveIconView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v10 toArray:array];

    v11 = [(SFAirDropActivityViewControllerAccessibility *)self safeValueForKey:@"_instructionsTextView"];
    [(SFAirDropActivityViewControllerAccessibility *)self _axAddIfVisible:v11 toArray:array];

    [v14 setAccessibilityElements:array];
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

- (void)updateContentAreaAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = SFAirDropActivityViewControllerAccessibility;
  [(SFAirDropActivityViewControllerAccessibility *)&v5 updateContentAreaAnimated:?];
  if (animatedCopy)
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
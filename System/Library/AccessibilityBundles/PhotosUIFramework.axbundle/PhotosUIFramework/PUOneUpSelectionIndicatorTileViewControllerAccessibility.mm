@interface PUOneUpSelectionIndicatorTileViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateIfNeeded;
@end

@implementation PUOneUpSelectionIndicatorTileViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUOneUpSelectionIndicatorTileViewController" hasInstanceMethod:@"_button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUOneUpSelectionIndicatorTileViewController" hasInstanceMethod:@"_updateIfNeeded" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PUOneUpSelectionIndicatorTileViewControllerAccessibility;
  [(PUOneUpSelectionIndicatorTileViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(PUOneUpSelectionIndicatorTileViewControllerAccessibility *)self safeValueForKey:@"_button"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityPULocalizedString(@"use.photo.checkmark");
  [v4 setAccessibilityLabel:v5];
}

- (void)_updateIfNeeded
{
  v3.receiver = self;
  v3.super_class = PUOneUpSelectionIndicatorTileViewControllerAccessibility;
  [(PUOneUpSelectionIndicatorTileViewControllerAccessibility *)&v3 _updateIfNeeded];
  [(PUOneUpSelectionIndicatorTileViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
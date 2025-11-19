@interface _TVMLCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateHeaderView;
@end

@implementation _TVMLCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVCollectionWrappingView"];
  [v3 validateClass:@"_TVCollectionWrappingView" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVMLCollectionViewController" hasInstanceMethod:@"collectionWrappingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVMLCollectionViewController" hasInstanceMethod:@"_updateHeaderView" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = _TVMLCollectionViewControllerAccessibility;
  [(_TVMLCollectionViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(_TVMLCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionWrappingView"];
  v4 = [v3 safeValueForKey:@"headerView"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)_updateHeaderView
{
  v3.receiver = self;
  v3.super_class = _TVMLCollectionViewControllerAccessibility;
  [(_TVMLCollectionViewControllerAccessibility *)&v3 _updateHeaderView];
  [(_TVMLCollectionViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
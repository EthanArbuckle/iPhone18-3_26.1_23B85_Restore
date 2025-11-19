@interface SUUIScrollingTabBarContentCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityScrollStatus;
@end

@implementation SUUIScrollingTabBarContentCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIScrollingTabBarContentCollectionView" isKindOfClass:@"UIScrollView"];
  [v3 validateClass:@"SUUIScrollingTabBarContentCollectionView" isKindOfClass:@"UICollectionView"];
  [v3 validateClass:@"SUUIScrollingTabBarController" hasInstanceVariable:@"_focusedViewController" withType:"UIViewController"];
}

- (id)_accessibilityScrollStatus
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 delegate];

  objc_opt_class();
  v4 = [v3 safeValueForKey:@"_focusedViewController"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 tabBarItem];
  v7 = [v6 title];

  return v7;
}

@end
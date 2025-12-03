@interface SKUIScrollingTabBarContentCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityScrollStatus;
@end

@implementation SKUIScrollingTabBarContentCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIScrollingTabBarContentCollectionView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"SKUIScrollingTabBarContentCollectionView" isKindOfClass:@"UICollectionView"];
  [validationsCopy validateClass:@"SKUIScrollingTabBarController" hasInstanceVariable:@"_focusedViewController" withType:"UIViewController"];
}

- (id)_accessibilityScrollStatus
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  delegate = [v2 delegate];

  objc_opt_class();
  v4 = [delegate safeValueForKey:@"_focusedViewController"];
  v5 = __UIAccessibilityCastAsClass();

  tabBarItem = [v5 tabBarItem];
  title = [tabBarItem title];

  return title;
}

@end
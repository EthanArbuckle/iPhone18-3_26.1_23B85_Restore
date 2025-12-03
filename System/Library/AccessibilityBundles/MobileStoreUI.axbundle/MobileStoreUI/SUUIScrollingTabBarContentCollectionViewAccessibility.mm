@interface SUUIScrollingTabBarContentCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityScrollStatus;
@end

@implementation SUUIScrollingTabBarContentCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIScrollingTabBarContentCollectionView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"SUUIScrollingTabBarContentCollectionView" isKindOfClass:@"UICollectionView"];
  [validationsCopy validateClass:@"SUUIScrollingTabBarController" hasInstanceVariable:@"_focusedViewController" withType:"UIViewController"];
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
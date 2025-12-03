@interface AXInvertColors_iTunesStoreUI
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_iTunesStoreUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUNavigationController" isKindOfClass:@"UINavigationController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewWillLayoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UITabBarController" hasInstanceMethod:@"tabBar" withFullSignature:{"@", 0}];
}

@end
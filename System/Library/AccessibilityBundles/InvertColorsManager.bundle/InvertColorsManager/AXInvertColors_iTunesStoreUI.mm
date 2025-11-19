@interface AXInvertColors_iTunesStoreUI
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_iTunesStoreUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUNavigationController" isKindOfClass:@"UINavigationController"];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewWillLayoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UITabBarController" hasInstanceMethod:@"tabBar" withFullSignature:{"@", 0}];
}

@end
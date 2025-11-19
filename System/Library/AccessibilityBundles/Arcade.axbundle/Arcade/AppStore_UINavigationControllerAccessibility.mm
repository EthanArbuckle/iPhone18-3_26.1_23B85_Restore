@interface AppStore_UINavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation AppStore_UINavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UINavigationController" hasInstanceMethod:@"_navigationBarSizeForViewController:proposedHeight:allowRubberBandStretch:" withFullSignature:{"{CGSize=dd}", "@", "d", "B", 0}];
  [v3 validateClass:@"UINavigationController" hasInstanceMethod:@"_heightRangeOfTopViews" withFullSignature:{"{?=ddd}", 0}];
}

@end
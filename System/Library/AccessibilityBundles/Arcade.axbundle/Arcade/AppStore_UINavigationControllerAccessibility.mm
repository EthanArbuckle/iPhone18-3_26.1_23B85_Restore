@interface AppStore_UINavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation AppStore_UINavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UINavigationController" hasInstanceMethod:@"_navigationBarSizeForViewController:proposedHeight:allowRubberBandStretch:" withFullSignature:{"{CGSize=dd}", "@", "d", "B", 0}];
  [validationsCopy validateClass:@"UINavigationController" hasInstanceMethod:@"_heightRangeOfTopViews" withFullSignature:{"{?=ddd}", 0}];
}

@end
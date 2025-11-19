@interface AXInvertColors_BiometricKitUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_BiometricKitUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BKUIPearlEnrollView" hasInstanceMethod:@"setBackgroundColor:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"BKUIPearlEnrollViewController" hasInstanceMethod:@"forceDarkBackground:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_darkBackground" withType:"B"];
  [v3 validateClass:@"BKUIPearlEnrollViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"BKUIPearlCoachingController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"BKUIPearlEnrollViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"BKUIPearlEnrollViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"BKUIPearlCoachingControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
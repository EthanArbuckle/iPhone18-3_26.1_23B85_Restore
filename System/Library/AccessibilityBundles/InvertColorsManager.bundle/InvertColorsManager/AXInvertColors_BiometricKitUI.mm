@interface AXInvertColors_BiometricKitUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_BiometricKitUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BKUIPearlEnrollView" hasInstanceMethod:@"setBackgroundColor:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceMethod:@"forceDarkBackground:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" hasInstanceVariable:@"_darkBackground" withType:"B"];
  [validationsCopy validateClass:@"BKUIPearlEnrollViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"BKUIPearlCoachingController" isKindOfClass:@"UIViewController"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"BKUIPearlEnrollViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"BKUIPearlEnrollViewControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"BKUIPearlCoachingControllerInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
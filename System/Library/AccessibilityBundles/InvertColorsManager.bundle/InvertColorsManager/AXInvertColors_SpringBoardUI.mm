@interface AXInvertColors_SpringBoardUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SpringBoardUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIBackgroundView" hasInstanceMethod:@"_backgroundColorForDarkenAlpha:andProgress:" withFullSignature:{"@", "d", "d", 0}];
  [validationsCopy validateClass:@"SBUIBackgroundView" hasInstanceMethod:@"_updateAppearanceForBackgroundStyle:transitionToSettings:" withFullSignature:{"v", "q", "B", 0}];
  [validationsCopy validateClass:@"SBUIBackgroundView" hasInstanceMethod:@"beginTransitionToBackgroundStyle:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"SBUIActionView" hasInstanceVariable:@"_action" withType:"SBUIAction"];
  [validationsCopy validateClass:@"SBUIAction" hasInstanceMethod:@"badgeView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBUIActionView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SBUIActionView" hasInstanceMethod:@"_setupSubviews" withFullSignature:{"v", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SBUIBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBUIActionViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
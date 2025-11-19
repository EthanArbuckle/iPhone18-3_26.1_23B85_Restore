@interface AXInvertColors_SpringBoardUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SpringBoardUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIBackgroundView" hasInstanceMethod:@"_backgroundColorForDarkenAlpha:andProgress:" withFullSignature:{"@", "d", "d", 0}];
  [v3 validateClass:@"SBUIBackgroundView" hasInstanceMethod:@"_updateAppearanceForBackgroundStyle:transitionToSettings:" withFullSignature:{"v", "q", "B", 0}];
  [v3 validateClass:@"SBUIBackgroundView" hasInstanceMethod:@"beginTransitionToBackgroundStyle:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"SBUIActionView" hasInstanceVariable:@"_action" withType:"SBUIAction"];
  [v3 validateClass:@"SBUIAction" hasInstanceMethod:@"badgeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBUIActionView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
  [v3 validateClass:@"SBUIActionView" hasInstanceMethod:@"_setupSubviews" withFullSignature:{"v", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SBUIBackgroundViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBUIActionViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
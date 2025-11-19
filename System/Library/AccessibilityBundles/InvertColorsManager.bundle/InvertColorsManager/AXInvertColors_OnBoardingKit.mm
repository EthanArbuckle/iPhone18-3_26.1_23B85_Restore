@interface AXInvertColors_OnBoardingKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_OnBoardingKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBTintInheritingImageView"];
  [v3 validateClass:@"OBBulletedListItem" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBHeaderView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"OBHeaderView" hasInstanceMethod:@"animationView" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"OBTintInheritingImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"OBBulletedListItemInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"OBHeaderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
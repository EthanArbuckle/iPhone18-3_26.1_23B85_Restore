@interface AXInvertColors_OnBoardingKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_OnBoardingKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBTintInheritingImageView"];
  [validationsCopy validateClass:@"OBBulletedListItem" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"OBHeaderView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"OBHeaderView" hasInstanceMethod:@"animationView" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"OBTintInheritingImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"OBBulletedListItemInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"OBHeaderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
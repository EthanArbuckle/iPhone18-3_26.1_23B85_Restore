@interface AXInvertColors_MobileStoreUI
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_MobileStoreUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIImageView"];
  [validationsCopy validateClass:@"SUUIBannerView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SUUIBannerView" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SUUIImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SUUIBannerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
@interface AXInvertColors_MobileStoreUI
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_MobileStoreUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIImageView"];
  [v3 validateClass:@"SUUIBannerView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SUUIBannerView" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SUUIImageViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SUUIBannerViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end
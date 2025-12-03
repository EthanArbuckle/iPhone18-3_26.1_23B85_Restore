@interface BCSBusinessItem(BrandingUI)
- (BCBrandedHeaderViewController)makeBrandedHeaderViewController;
- (BCBrandedHeaderViewController)makeBrandedHeaderViewControllerForCallMenu;
@end

@implementation BCSBusinessItem(BrandingUI)

- (BCBrandedHeaderViewController)makeBrandedHeaderViewController
{
  v1 = [[BCBrandedHeaderViewController alloc] initWithBusinessItem:self isCallMenu:0];

  return v1;
}

- (BCBrandedHeaderViewController)makeBrandedHeaderViewControllerForCallMenu
{
  v1 = [[BCBrandedHeaderViewController alloc] initWithBusinessItem:self isCallMenu:1];

  return v1;
}

@end
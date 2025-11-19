@interface ASViewControllerFactory
- (id)newNetworkLockoutViewControllerWithSection:(id)a3;
- (id)newPlaceholderViewController;
@end

@implementation ASViewControllerFactory

- (id)newNetworkLockoutViewControllerWithSection:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277D7FE38]) initWithSection:a3];
  [v3 setLocalizationBundle:{objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class())}];
  return v3;
}

- (id)newPlaceholderViewController
{
  v2 = objc_alloc_init(MEMORY[0x277D7FE40]);
  [v2 setDefaultBackgroundGradient:{objc_msgSend(MEMORY[0x277D7FDD8], "gradientWithColor:", objc_msgSend(MEMORY[0x277D75348], "systemBackgroundColor"))}];
  return v2;
}

@end
@interface BKToolbarNavigationProvider
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)bsuiFeedViewControllerNavigationBarStyle:(unint64_t)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
@end

@implementation BKToolbarNavigationProvider

- (void)navigationController:(id)a3 willShowViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _s5Books25ToolbarNavigationProviderC20navigationController_8willShowySo012UINavigationF0C_So06UIViewF0CtF_0(v6, v7);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  _s5Books25ToolbarNavigationProviderC20navigationController_8willShowySo012UINavigationF0C_So06UIViewF0CtF_0(v7, v8);
}

- (void)bsuiFeedViewControllerNavigationBarStyle:(unint64_t)a3
{
  v4 = self;
  ToolbarNavigationProvider.bsuiFeedViewControllerNavigationBarStyle(_:)(a3);
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;

  [v4 contentOffset];
  [v4 adjustedContentInset];
  sub_10079B8C4();
}

@end
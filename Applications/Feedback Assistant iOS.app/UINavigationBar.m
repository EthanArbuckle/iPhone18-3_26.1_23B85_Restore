@interface UINavigationBar
- (BOOL)shouldHideBarButtonItem;
- (UIView)largeTitleView;
@end

@implementation UINavigationBar

- (UIView)largeTitleView
{
  v2 = self;
  v3 = sub_10005A4F4();

  return v3;
}

- (BOOL)shouldHideBarButtonItem
{
  v2 = self;
  v3 = [(UINavigationBar *)v2 largeTitleView];
  if (v3)
  {
    v4 = v3;
    [(UIView *)v3 alpha];
    v6 = v5;

    return v6 != 0.0;
  }

  else
  {

    return 0;
  }
}

@end
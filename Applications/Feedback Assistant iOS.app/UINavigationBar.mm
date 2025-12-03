@interface UINavigationBar
- (BOOL)shouldHideBarButtonItem;
- (UIView)largeTitleView;
@end

@implementation UINavigationBar

- (UIView)largeTitleView
{
  selfCopy = self;
  v3 = sub_10005A4F4();

  return v3;
}

- (BOOL)shouldHideBarButtonItem
{
  selfCopy = self;
  largeTitleView = [(UINavigationBar *)selfCopy largeTitleView];
  if (largeTitleView)
  {
    v4 = largeTitleView;
    [(UIView *)largeTitleView alpha];
    v6 = v5;

    return v6 != 0.0;
  }

  else
  {

    return 0;
  }
}

@end
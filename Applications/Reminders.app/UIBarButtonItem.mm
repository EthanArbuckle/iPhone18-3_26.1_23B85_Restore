@interface UIBarButtonItem
- (void)ttr_hideManageButton;
@end

@implementation UIBarButtonItem

- (void)ttr_hideManageButton
{
  if (objc_opt_respondsToSelector())
  {
    collaborationButtonView = [(UIBarButtonItem *)self collaborationButtonView];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      collaborationButtonView2 = [(UIBarButtonItem *)self collaborationButtonView];
      [collaborationButtonView2 setShowManageButton:0];
    }
  }
}

@end
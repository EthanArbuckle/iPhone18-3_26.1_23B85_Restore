@interface UIBarButtonItem
- (void)ttr_hideManageButton;
@end

@implementation UIBarButtonItem

- (void)ttr_hideManageButton
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIBarButtonItem *)self collaborationButtonView];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(UIBarButtonItem *)self collaborationButtonView];
      [v5 setShowManageButton:0];
    }
  }
}

@end
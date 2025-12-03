@interface SRSecureWindow
- (void)didAddSubview:(id)subview;
- (void)willRemoveSubview:(id)subview;
@end

@implementation SRSecureWindow

- (void)didAddSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = SRSecureWindow;
  subviewCopy = subview;
  [(SRSecureWindow *)&v6 didAddSubview:subviewCopy];
  NSClassFromString(@"_UIContextMenuContainerView");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(SRSecureWindow *)self setContextMenuIsPresented:1, v6.receiver, v6.super_class];
  }
}

- (void)willRemoveSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = SRSecureWindow;
  subviewCopy = subview;
  [(SRSecureWindow *)&v6 willRemoveSubview:subviewCopy];
  NSClassFromString(@"_UIContextMenuContainerView");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(SRSecureWindow *)self setContextMenuIsPresented:0, v6.receiver, v6.super_class];
  }
}

@end
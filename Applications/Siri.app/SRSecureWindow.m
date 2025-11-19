@interface SRSecureWindow
- (void)didAddSubview:(id)a3;
- (void)willRemoveSubview:(id)a3;
@end

@implementation SRSecureWindow

- (void)didAddSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRSecureWindow;
  v4 = a3;
  [(SRSecureWindow *)&v6 didAddSubview:v4];
  NSClassFromString(@"_UIContextMenuContainerView");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(SRSecureWindow *)self setContextMenuIsPresented:1, v6.receiver, v6.super_class];
  }
}

- (void)willRemoveSubview:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRSecureWindow;
  v4 = a3;
  [(SRSecureWindow *)&v6 willRemoveSubview:v4];
  NSClassFromString(@"_UIContextMenuContainerView");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(SRSecureWindow *)self setContextMenuIsPresented:0, v6.receiver, v6.super_class];
  }
}

@end
@interface CBWindow
- (CBWindow)initWithBackgroundTunnel:(BOOL)a3;
- (CBWindowDelegate)windowManager;
- (NSString)description;
- (void)dismissViewControllerAnimated:(BOOL)a3;
- (void)setBackgroundTunnel:(BOOL)a3;
- (void)viewControllerDidDismiss;
@end

@implementation CBWindow

- (NSString)description
{
  v3 = [(CBWindow *)self presentedView];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);

  v6 = [NSString stringWithFormat:@"<%@:%p -> %@>", objc_opt_class(), self, v5];

  return v6;
}

- (CBWindow)initWithBackgroundTunnel:(BOOL)a3
{
  v5 = +[UIScreen mainScreen];
  [v5 _referenceBounds];
  v8.receiver = self;
  v8.super_class = CBWindow;
  v6 = [(CBWindow *)&v8 initWithFrame:?];

  if (v6)
  {
    v6->_backgroundTunnel = a3;
    v6->_dismissed = 0;
  }

  return v6;
}

- (void)setBackgroundTunnel:(BOOL)a3
{
  if (self->_backgroundTunnel != a3)
  {
    v4 = a3;
    self->_backgroundTunnel = a3;
    v6 = [(CBWindow *)self windowManager];
    [v6 window:self changedBackgroundTunnel:v4];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(CBWindow *)self dismissed])
  {
    [(CBWindow *)self setDismissed:1];
    objc_initWeak(&location, self);
    v5 = [(CBWindow *)self windowManager];
    [v5 windowWillDismiss:self];

    v6 = [(CBWindow *)self presentedView];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100023D58;
    v7[3] = &unk_10007D668;
    objc_copyWeak(&v8, &location);
    [v6 dismissViewControllerAnimated:v3 completion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)viewControllerDidDismiss
{
  if (![(CBWindow *)self dismissed])
  {
    [(CBWindow *)self setDismissed:1];
    v3 = [(CBWindow *)self windowManager];
    [v3 windowWillDismiss:self];

    v4 = [(CBWindow *)self windowManager];
    [v4 windowDidDismiss:self];
  }
}

- (CBWindowDelegate)windowManager
{
  WeakRetained = objc_loadWeakRetained(&self->_windowManager);

  return WeakRetained;
}

@end
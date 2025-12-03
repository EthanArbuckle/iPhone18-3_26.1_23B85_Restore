@interface CBWindow
- (CBWindow)initWithBackgroundTunnel:(BOOL)tunnel;
- (CBWindowDelegate)windowManager;
- (NSString)description;
- (void)dismissViewControllerAnimated:(BOOL)animated;
- (void)setBackgroundTunnel:(BOOL)tunnel;
- (void)viewControllerDidDismiss;
@end

@implementation CBWindow

- (NSString)description
{
  presentedView = [(CBWindow *)self presentedView];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);

  v6 = [NSString stringWithFormat:@"<%@:%p -> %@>", objc_opt_class(), self, v5];

  return v6;
}

- (CBWindow)initWithBackgroundTunnel:(BOOL)tunnel
{
  v5 = +[UIScreen mainScreen];
  [v5 _referenceBounds];
  v8.receiver = self;
  v8.super_class = CBWindow;
  v6 = [(CBWindow *)&v8 initWithFrame:?];

  if (v6)
  {
    v6->_backgroundTunnel = tunnel;
    v6->_dismissed = 0;
  }

  return v6;
}

- (void)setBackgroundTunnel:(BOOL)tunnel
{
  if (self->_backgroundTunnel != tunnel)
  {
    tunnelCopy = tunnel;
    self->_backgroundTunnel = tunnel;
    windowManager = [(CBWindow *)self windowManager];
    [windowManager window:self changedBackgroundTunnel:tunnelCopy];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(CBWindow *)self dismissed])
  {
    [(CBWindow *)self setDismissed:1];
    objc_initWeak(&location, self);
    windowManager = [(CBWindow *)self windowManager];
    [windowManager windowWillDismiss:self];

    presentedView = [(CBWindow *)self presentedView];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100023D58;
    v7[3] = &unk_10007D668;
    objc_copyWeak(&v8, &location);
    [presentedView dismissViewControllerAnimated:animatedCopy completion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)viewControllerDidDismiss
{
  if (![(CBWindow *)self dismissed])
  {
    [(CBWindow *)self setDismissed:1];
    windowManager = [(CBWindow *)self windowManager];
    [windowManager windowWillDismiss:self];

    windowManager2 = [(CBWindow *)self windowManager];
    [windowManager2 windowDidDismiss:self];
  }
}

- (CBWindowDelegate)windowManager
{
  WeakRetained = objc_loadWeakRetained(&self->_windowManager);

  return WeakRetained;
}

@end
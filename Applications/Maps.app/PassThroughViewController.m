@interface PassThroughViewController
- (PassThroughViewControllerDelegate)delegate;
- (UIView)passThroughView;
- (UIView)targetView;
- (void)_reloadAXIdentifierWithParentViewController:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)passThroughView:(id)a3 didMoveToView:(id)a4;
- (void)setTargetView:(id)a3;
@end

@implementation PassThroughViewController

- (void)loadView
{
  v3 = [[PassThroughView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(PassThroughView *)v3 setDelegate:self];
  [(PassThroughViewController *)self setView:v3];
}

- (PassThroughViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_reloadAXIdentifierWithParentViewController:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [NSString stringWithFormat:@"%@<%p>.%@<%p>", v5, v10, v7, self];
    v9 = [(PassThroughViewController *)self view];
    [v9 setAccessibilityIdentifier:v8];
  }

  else
  {
    v5 = [(PassThroughViewController *)self view];
    [v5 setAccessibilityIdentifier:0];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = PassThroughViewController;
  v4 = a3;
  [(PassThroughViewController *)&v5 didMoveToParentViewController:v4];
  [(PassThroughViewController *)self _reloadAXIdentifierWithParentViewController:v4, v5.receiver, v5.super_class];
}

- (void)passThroughView:(id)a3 didMoveToView:(id)a4
{
  v6 = a3;
  v7 = [(PassThroughViewController *)self viewIfLoaded];

  if (v7 == v6)
  {
    if (a4)
    {
      self->_hasParentView = 1;

      [(PassThroughViewController *)self viewDidMoveToParent];
    }

    else
    {
      self->_hasParentView = 0;

      [(PassThroughViewController *)self viewDidRemoveFromParent];
    }
  }
}

- (UIView)targetView
{
  v2 = [(PassThroughViewController *)self view];
  v3 = [v2 targetView];

  return v3;
}

- (void)setTargetView:(id)a3
{
  v4 = a3;
  v5 = [(PassThroughViewController *)self view];
  [v5 setTargetView:v4];
}

- (UIView)passThroughView
{
  v2 = [(PassThroughViewController *)self delegate];
  v3 = [v2 passThroughView];

  return v3;
}

@end
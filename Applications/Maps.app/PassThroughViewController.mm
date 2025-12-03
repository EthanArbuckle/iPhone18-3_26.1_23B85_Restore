@interface PassThroughViewController
- (PassThroughViewControllerDelegate)delegate;
- (UIView)passThroughView;
- (UIView)targetView;
- (void)_reloadAXIdentifierWithParentViewController:(id)controller;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)passThroughView:(id)view didMoveToView:(id)toView;
- (void)setTargetView:(id)view;
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

- (void)_reloadAXIdentifierWithParentViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v4 = objc_opt_class();
    view2 = NSStringFromClass(v4);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [NSString stringWithFormat:@"%@<%p>.%@<%p>", view2, controllerCopy, v7, self];
    view = [(PassThroughViewController *)self view];
    [view setAccessibilityIdentifier:v8];
  }

  else
  {
    view2 = [(PassThroughViewController *)self view];
    [view2 setAccessibilityIdentifier:0];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = PassThroughViewController;
  controllerCopy = controller;
  [(PassThroughViewController *)&v5 didMoveToParentViewController:controllerCopy];
  [(PassThroughViewController *)self _reloadAXIdentifierWithParentViewController:controllerCopy, v5.receiver, v5.super_class];
}

- (void)passThroughView:(id)view didMoveToView:(id)toView
{
  viewCopy = view;
  viewIfLoaded = [(PassThroughViewController *)self viewIfLoaded];

  if (viewIfLoaded == viewCopy)
  {
    if (toView)
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
  view = [(PassThroughViewController *)self view];
  targetView = [view targetView];

  return targetView;
}

- (void)setTargetView:(id)view
{
  viewCopy = view;
  view = [(PassThroughViewController *)self view];
  [view setTargetView:viewCopy];
}

- (UIView)passThroughView
{
  delegate = [(PassThroughViewController *)self delegate];
  passThroughView = [delegate passThroughView];

  return passThroughView;
}

@end
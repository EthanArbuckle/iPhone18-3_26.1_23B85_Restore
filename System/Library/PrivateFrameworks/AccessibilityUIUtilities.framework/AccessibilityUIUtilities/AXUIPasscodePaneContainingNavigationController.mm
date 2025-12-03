@interface AXUIPasscodePaneContainingNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation AXUIPasscodePaneContainingNavigationController

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = AXUIPasscodePaneContainingNavigationController;
  [(AXUIPasscodePaneContainingNavigationController *)&v8 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  delegate = [(AXUIPasscodePaneContainingNavigationController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AXUIPasscodePaneContainingNavigationController *)self delegate];
    -[AXUIPasscodePaneContainingNavigationController setInterfaceOrientation:](self, "setInterfaceOrientation:", [delegate2 navigationControllerPreferredInterfaceOrientationForPresentation:self]);
  }

  [(AXUIPasscodePaneContainingNavigationController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (unint64_t)supportedInterfaceOrientations
{
  delegate = [(AXUIPasscodePaneContainingNavigationController *)self delegate];
  v4 = [delegate axui_activeInterfaceOrientationForNavigationController:self];

  if ((v4 - 2) > 2)
  {
    return 2;
  }

  else
  {
    return qword_1C0E58308[v4 - 2];
  }
}

@end
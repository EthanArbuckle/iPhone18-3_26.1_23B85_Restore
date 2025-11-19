@interface AXUIPasscodePaneContainingNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation AXUIPasscodePaneContainingNavigationController

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = AXUIPasscodePaneContainingNavigationController;
  [(AXUIPasscodePaneContainingNavigationController *)&v8 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  v5 = [(AXUIPasscodePaneContainingNavigationController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AXUIPasscodePaneContainingNavigationController *)self delegate];
    -[AXUIPasscodePaneContainingNavigationController setInterfaceOrientation:](self, "setInterfaceOrientation:", [v7 navigationControllerPreferredInterfaceOrientationForPresentation:self]);
  }

  [(AXUIPasscodePaneContainingNavigationController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(AXUIPasscodePaneContainingNavigationController *)self delegate];
  v4 = [v3 axui_activeInterfaceOrientationForNavigationController:self];

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
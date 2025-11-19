@interface AXSBUIAudiographNavigationController
- (AXSBUIAudiographDismissDelegate)dismissDelegate;
- (BOOL)accessibilityPerformEscape;
@end

@implementation AXSBUIAudiographNavigationController

- (BOOL)accessibilityPerformEscape
{
  v2 = [(AXSBUIAudiographNavigationController *)self dismissDelegate];
  [v2 dismiss];

  return 1;
}

- (AXSBUIAudiographDismissDelegate)dismissDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissDelegate);

  return WeakRetained;
}

@end
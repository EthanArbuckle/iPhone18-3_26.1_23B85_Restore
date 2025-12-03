@interface AXSBUIAudiographNavigationController
- (AXSBUIAudiographDismissDelegate)dismissDelegate;
- (BOOL)accessibilityPerformEscape;
@end

@implementation AXSBUIAudiographNavigationController

- (BOOL)accessibilityPerformEscape
{
  dismissDelegate = [(AXSBUIAudiographNavigationController *)self dismissDelegate];
  [dismissDelegate dismiss];

  return 1;
}

- (AXSBUIAudiographDismissDelegate)dismissDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissDelegate);

  return WeakRetained;
}

@end
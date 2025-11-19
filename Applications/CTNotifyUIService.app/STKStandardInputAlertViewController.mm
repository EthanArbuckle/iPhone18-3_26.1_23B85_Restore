@interface STKStandardInputAlertViewController
- (BOOL)validateAction:(id)a3;
- (void)leftNavigationButtonPressed;
- (void)rightNavigationButtonPressed;
- (void)sendButtonPressed;
@end

@implementation STKStandardInputAlertViewController

- (BOOL)validateAction:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)leftNavigationButtonPressed
{
  v3 = [(STKBaseAlertViewController *)self sessionAction];
  [v3 sendResponse:4];

  [(STKBaseAlertViewController *)self dismiss];
}

- (void)rightNavigationButtonPressed
{
  v3 = [(STKBaseAlertViewController *)self sessionAction];
  [v3 sendResponse:1];

  [(STKBaseAlertViewController *)self dismiss];
}

- (void)sendButtonPressed
{
  v3 = [(STKBaseAlertViewController *)self sessionAction];
  v4 = [(STKBaseInputAlertViewController *)self inputTextField];
  v5 = [v4 text];
  [v3 sendSuccessWithResponse:v5];

  [(STKBaseAlertViewController *)self dismiss];
}

@end
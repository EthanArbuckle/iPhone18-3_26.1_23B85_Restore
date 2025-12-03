@interface STKStandardInputAlertViewController
- (BOOL)validateAction:(id)action;
- (void)leftNavigationButtonPressed;
- (void)rightNavigationButtonPressed;
- (void)sendButtonPressed;
@end

@implementation STKStandardInputAlertViewController

- (BOOL)validateAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)leftNavigationButtonPressed
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  [sessionAction sendResponse:4];

  [(STKBaseAlertViewController *)self dismiss];
}

- (void)rightNavigationButtonPressed
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  [sessionAction sendResponse:1];

  [(STKBaseAlertViewController *)self dismiss];
}

- (void)sendButtonPressed
{
  sessionAction = [(STKBaseAlertViewController *)self sessionAction];
  inputTextField = [(STKBaseInputAlertViewController *)self inputTextField];
  text = [inputTextField text];
  [sessionAction sendSuccessWithResponse:text];

  [(STKBaseAlertViewController *)self dismiss];
}

@end
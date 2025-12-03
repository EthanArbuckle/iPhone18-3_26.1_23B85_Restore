@interface STKOneShotInputAlertViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
@end

@implementation STKOneShotInputAlertViewController

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = STKOneShotInputAlertViewController;
  stringCopy = [(STKBaseInputAlertViewController *)&v14 textField:field shouldChangeCharactersInRange:location replacementString:length, stringCopy];
  v11 = stringCopy;
  if (stringCopy)
  {
    if (stringCopy)
    {
      v11 = 1;
      if (!self->_sentResponse)
      {
        self->_sentResponse = 1;
        sessionAction = [(STKBaseAlertViewController *)self sessionAction];
        [sessionAction sendSuccessWithResponse:stringCopy];

        [(STKBaseAlertViewController *)self dismiss];
        v11 = 0;
      }
    }
  }

  return v11;
}

@end
@interface STKOneShotInputAlertViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
@end

@implementation STKOneShotInputAlertViewController

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = STKOneShotInputAlertViewController;
  v10 = [(STKBaseInputAlertViewController *)&v14 textField:a3 shouldChangeCharactersInRange:location replacementString:length, v9];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v11 = 1;
      if (!self->_sentResponse)
      {
        self->_sentResponse = 1;
        v12 = [(STKBaseAlertViewController *)self sessionAction];
        [v12 sendSuccessWithResponse:v9];

        [(STKBaseAlertViewController *)self dismiss];
        v11 = 0;
      }
    }
  }

  return v11;
}

@end
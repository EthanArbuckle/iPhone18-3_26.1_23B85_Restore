@interface Family_MSMessagesAppViewController
- (void)family_presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7;
@end

@implementation Family_MSMessagesAppViewController

- (void)family_presentAlertSheetWithTitle:(id)a3 message:(id)a4 buttonTitles:(id)a5 styles:(id)a6 completion:(id)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  if (objc_opt_respondsToSelector())
  {
    [(Family_MSMessagesAppViewController *)self _presentAlertSheetWithTitle:v16 message:v12 buttonTitles:v15 styles:v14 completion:v13];
  }

  else
  {
    [(Family_MSMessagesAppViewController *)self _presentAlertSheetWith:v15 styles:v14 completion:v13];
  }
}

@end
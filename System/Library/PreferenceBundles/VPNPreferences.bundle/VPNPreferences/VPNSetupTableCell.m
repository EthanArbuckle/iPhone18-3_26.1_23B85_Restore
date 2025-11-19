@interface VPNSetupTableCell
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)textValueChanged:(id)a3;
@end

@implementation VPNSetupTableCell

- (void)textValueChanged:(id)a3
{
  if (objc_opt_respondsToSelector())
  {

    [(VPNSetupTableCell *)self performSelector:"controlChanged:" withObject:self];
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"textValueChanged:" name:UITextFieldTextDidChangeNotification object:0];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UITextFieldTextDidChangeNotification object:0];
}

@end
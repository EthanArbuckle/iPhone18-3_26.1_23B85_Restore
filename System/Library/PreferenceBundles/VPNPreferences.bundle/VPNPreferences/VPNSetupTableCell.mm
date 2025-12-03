@interface VPNSetupTableCell
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)textValueChanged:(id)changed;
@end

@implementation VPNSetupTableCell

- (void)textValueChanged:(id)changed
{
  if (objc_opt_respondsToSelector())
  {

    [(VPNSetupTableCell *)self performSelector:"controlChanged:" withObject:self];
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"textValueChanged:" name:UITextFieldTextDidChangeNotification object:0];
}

- (void)textFieldDidEndEditing:(id)editing
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UITextFieldTextDidChangeNotification object:0];
}

@end
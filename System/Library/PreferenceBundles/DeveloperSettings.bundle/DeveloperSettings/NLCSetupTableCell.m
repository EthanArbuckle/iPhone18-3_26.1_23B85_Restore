@interface NLCSetupTableCell
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)textValueChanged:(id)a3;
@end

@implementation NLCSetupTableCell

- (void)textValueChanged:(id)a3
{
  if (objc_opt_respondsToSelector())
  {

    [(NLCSetupTableCell *)self performSelector:"controlChanged:" withObject:self];
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
  [v4 removeObserver:self];
}

@end
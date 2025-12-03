@interface NLCSetupTableCell
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)textValueChanged:(id)changed;
@end

@implementation NLCSetupTableCell

- (void)textValueChanged:(id)changed
{
  if (objc_opt_respondsToSelector())
  {

    [(NLCSetupTableCell *)self performSelector:"controlChanged:" withObject:self];
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
  [v4 removeObserver:self];
}

@end
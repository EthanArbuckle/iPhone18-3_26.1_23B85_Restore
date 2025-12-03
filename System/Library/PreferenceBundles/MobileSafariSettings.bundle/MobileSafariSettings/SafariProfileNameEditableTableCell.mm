@interface SafariProfileNameEditableTableCell
- (BOOL)canReload;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SafariProfileNameEditableTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = SafariProfileNameEditableTableCell;
  [(SafariSettingsEditableTableCell *)&v7 refreshCellContentsWithSpecifier:specifier];
  textField = [(SafariProfileNameEditableTableCell *)self textField];
  [textField setClearButtonMode:1];
  [textField setEnabled:1];
  v5 = +[UIColor labelColor];
  [textField setTextColor:v5];

  if ([(SafariProfileNameEditableTableCell *)self _sf_usesLeftToRightLayout])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [textField setTextAlignment:v6];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  textField = [(SafariProfileNameEditableTableCell *)self textField];

  if (textField == returnCopy)
  {
    textField2 = [(SafariProfileNameEditableTableCell *)self textField];
    [textField2 resignFirstResponder];
  }

  return textField != returnCopy;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v10 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  v11 = [v10 length];
  LOBYTE(location) = v11 <= WBSProfileNameCharacterCountLimit;

  return location;
}

- (void)textFieldDidEndEditing:(id)editing
{
  specifier = [(SafariProfileNameEditableTableCell *)self specifier];
  target = [specifier target];

  [target profileNameCellDidResignFirstResponder];
}

- (BOOL)canReload
{
  v3 = objc_opt_class();

  return [(SafariProfileNameEditableTableCell *)self isMemberOfClass:v3];
}

@end
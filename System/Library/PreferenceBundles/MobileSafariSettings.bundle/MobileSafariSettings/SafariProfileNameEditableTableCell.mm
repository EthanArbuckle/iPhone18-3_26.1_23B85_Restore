@interface SafariProfileNameEditableTableCell
- (BOOL)canReload;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation SafariProfileNameEditableTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = SafariProfileNameEditableTableCell;
  [(SafariSettingsEditableTableCell *)&v7 refreshCellContentsWithSpecifier:a3];
  v4 = [(SafariProfileNameEditableTableCell *)self textField];
  [v4 setClearButtonMode:1];
  [v4 setEnabled:1];
  v5 = +[UIColor labelColor];
  [v4 setTextColor:v5];

  if ([(SafariProfileNameEditableTableCell *)self _sf_usesLeftToRightLayout])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [v4 setTextAlignment:v6];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(SafariProfileNameEditableTableCell *)self textField];

  if (v5 == v4)
  {
    v6 = [(SafariProfileNameEditableTableCell *)self textField];
    [v6 resignFirstResponder];
  }

  return v5 != v4;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = [a3 text];
  v10 = [v9 stringByReplacingCharactersInRange:location withString:{length, v8}];

  v11 = [v10 length];
  LOBYTE(location) = v11 <= WBSProfileNameCharacterCountLimit;

  return location;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v3 = [(SafariProfileNameEditableTableCell *)self specifier];
  v4 = [v3 target];

  [v4 profileNameCellDidResignFirstResponder];
}

- (BOOL)canReload
{
  v3 = objc_opt_class();

  return [(SafariProfileNameEditableTableCell *)self isMemberOfClass:v3];
}

@end
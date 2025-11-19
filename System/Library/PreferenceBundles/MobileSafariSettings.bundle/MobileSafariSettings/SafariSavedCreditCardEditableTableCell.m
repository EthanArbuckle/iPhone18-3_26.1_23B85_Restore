@interface SafariSavedCreditCardEditableTableCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SafariSavedCreditCardEditableTableCell

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  if ([-[SafariSavedCreditCardEditableTableCell superclass](self "superclass")] && (v17.receiver = self, v17.super_class = SafariSavedCreditCardEditableTableCell, !-[SafariSavedCreditCardEditableTableCell textField:shouldChangeCharactersInRange:replacementString:](&v17, "textField:shouldChangeCharactersInRange:replacementString:", v10, location, length, v11)))
  {
    v15 = 0;
  }

  else
  {
    v12 = [(SafariSavedCreditCardEditableTableCell *)self specifier];
    v13 = [v12 propertyForKey:@"SafariShouldChangeCharacters"];
    v14 = v13;
    if (v13)
    {
      v15 = (*(v13 + 16))(v13, v10, location, length, v11);
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SafariSavedCreditCardEditableTableCell;
  [(SafariSettingsEditableTableCell *)&v10 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 identifier];
  if ([v5 isEqualToString:@"CardNumber"])
  {

LABEL_4:
    v8 = [(SafariSavedCreditCardEditableTableCell *)self editableTextField];
    [v8 setSecureTextEntry:1];

    v9 = [(SafariSavedCreditCardEditableTableCell *)self editableTextField];
    [v9 setDisplaySecureTextUsingPlainText:1];

    goto LABEL_5;
  }

  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:@"CardSecurityCode"];

  if (v7)
  {
    goto LABEL_4;
  }

LABEL_5:
}

@end
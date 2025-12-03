@interface SafariSavedCreditCardEditableTableCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SafariSavedCreditCardEditableTableCell

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  if ([-[SafariSavedCreditCardEditableTableCell superclass](self "superclass")] && (v17.receiver = self, v17.super_class = SafariSavedCreditCardEditableTableCell, !-[SafariSavedCreditCardEditableTableCell textField:shouldChangeCharactersInRange:replacementString:](&v17, "textField:shouldChangeCharactersInRange:replacementString:", fieldCopy, location, length, stringCopy)))
  {
    v15 = 0;
  }

  else
  {
    specifier = [(SafariSavedCreditCardEditableTableCell *)self specifier];
    v13 = [specifier propertyForKey:@"SafariShouldChangeCharacters"];
    v14 = v13;
    if (v13)
    {
      v15 = (*(v13 + 16))(v13, fieldCopy, location, length, stringCopy);
    }

    else
    {
      v15 = 1;
    }
  }

  return v15;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v10.receiver = self;
  v10.super_class = SafariSavedCreditCardEditableTableCell;
  [(SafariSettingsEditableTableCell *)&v10 refreshCellContentsWithSpecifier:specifierCopy];
  identifier = [specifierCopy identifier];
  if ([identifier isEqualToString:@"CardNumber"])
  {

LABEL_4:
    editableTextField = [(SafariSavedCreditCardEditableTableCell *)self editableTextField];
    [editableTextField setSecureTextEntry:1];

    editableTextField2 = [(SafariSavedCreditCardEditableTableCell *)self editableTextField];
    [editableTextField2 setDisplaySecureTextUsingPlainText:1];

    goto LABEL_5;
  }

  identifier2 = [specifierCopy identifier];
  v7 = [identifier2 isEqualToString:@"CardSecurityCode"];

  if (v7)
  {
    goto LABEL_4;
  }

LABEL_5:
}

@end
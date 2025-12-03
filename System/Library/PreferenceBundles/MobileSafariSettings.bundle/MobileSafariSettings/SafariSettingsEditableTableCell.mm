@interface SafariSettingsEditableTableCell
- (BOOL)canReload;
- (SafariSettingsEditableTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_textFieldChanged:(id)changed;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SafariSettingsEditableTableCell

- (SafariSettingsEditableTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = SafariSettingsEditableTableCell;
  v5 = [(SafariSettingsEditableTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    textField = [(SafariSettingsEditableTableCell *)v5 textField];
    [textField addTarget:v6 action:"_textFieldChanged:" forControlEvents:0x20000];

    v8 = v6;
  }

  return v6;
}

- (void)dealloc
{
  textField = [(SafariSettingsEditableTableCell *)self textField];
  [textField removeTarget:self action:"_textFieldChanged:" forControlEvents:0x20000];

  v4.receiver = self;
  v4.super_class = SafariSettingsEditableTableCell;
  [(SafariSettingsEditableTableCell *)&v4 dealloc];
}

- (void)copy:(id)copy
{
  specifier = [(SafariSettingsEditableTableCell *)self specifier];
  cellType = [specifier cellType];

  v8 = +[UIPasteboard generalPasteboard];
  textField = [(SafariSettingsEditableTableCell *)self textField];
  text = [textField text];
  if (cellType == &dword_C)
  {
    [v8 safari_setSensitiveString:text];
  }

  else
  {
    [v8 setString:text];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = SafariSettingsEditableTableCell;
  specifierCopy = specifier;
  [(SafariSettingsEditableTableCell *)&v13 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"SafariEditing", v13.receiver, v13.super_class}];

  bOOLValue = [v5 BOOLValue];
  textField = [(SafariSettingsEditableTableCell *)self textField];
  [textField setEnabled:bOOLValue];
  if (bOOLValue)
  {
    +[UIColor tableCellBlueTextColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;
  [textField setTextColor:v8];

  v9 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v9 preferredContentSizeCategory];
  v11 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryAccessibilityMedium, preferredContentSizeCategory);

  if (v11 == NSOrderedDescending)
  {
    if ([(SafariSettingsEditableTableCell *)self _sf_usesLeftToRightLayout])
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [textField setTextAlignment:v12];
  }
}

- (void)_textFieldChanged:(id)changed
{
  specifier = [(SafariSettingsEditableTableCell *)self specifier];
  v6 = [specifier propertyForKey:@"SafariTextChangeHandler"];

  if (v6)
  {
    textField = [(SafariSettingsEditableTableCell *)self textField];
    v6[2](v6, textField);
  }
}

- (BOOL)canReload
{
  v3 = objc_opt_class();

  return [(SafariSettingsEditableTableCell *)self isMemberOfClass:v3];
}

@end
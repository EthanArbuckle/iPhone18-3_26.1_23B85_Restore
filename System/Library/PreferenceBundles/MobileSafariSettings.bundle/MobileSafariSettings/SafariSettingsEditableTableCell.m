@interface SafariSettingsEditableTableCell
- (BOOL)canReload;
- (SafariSettingsEditableTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_textFieldChanged:(id)a3;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SafariSettingsEditableTableCell

- (SafariSettingsEditableTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v10.receiver = self;
  v10.super_class = SafariSettingsEditableTableCell;
  v5 = [(SafariSettingsEditableTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(SafariSettingsEditableTableCell *)v5 textField];
    [v7 addTarget:v6 action:"_textFieldChanged:" forControlEvents:0x20000];

    v8 = v6;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(SafariSettingsEditableTableCell *)self textField];
  [v3 removeTarget:self action:"_textFieldChanged:" forControlEvents:0x20000];

  v4.receiver = self;
  v4.super_class = SafariSettingsEditableTableCell;
  [(SafariSettingsEditableTableCell *)&v4 dealloc];
}

- (void)copy:(id)a3
{
  v4 = [(SafariSettingsEditableTableCell *)self specifier];
  v5 = [v4 cellType];

  v8 = +[UIPasteboard generalPasteboard];
  v6 = [(SafariSettingsEditableTableCell *)self textField];
  v7 = [v6 text];
  if (v5 == &dword_C)
  {
    [v8 safari_setSensitiveString:v7];
  }

  else
  {
    [v8 setString:v7];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = SafariSettingsEditableTableCell;
  v4 = a3;
  [(SafariSettingsEditableTableCell *)&v13 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"SafariEditing", v13.receiver, v13.super_class}];

  v6 = [v5 BOOLValue];
  v7 = [(SafariSettingsEditableTableCell *)self textField];
  [v7 setEnabled:v6];
  if (v6)
  {
    +[UIColor tableCellBlueTextColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v8 = ;
  [v7 setTextColor:v8];

  v9 = +[UIApplication sharedApplication];
  v10 = [v9 preferredContentSizeCategory];
  v11 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryAccessibilityMedium, v10);

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

    [v7 setTextAlignment:v12];
  }
}

- (void)_textFieldChanged:(id)a3
{
  v4 = [(SafariSettingsEditableTableCell *)self specifier];
  v6 = [v4 propertyForKey:@"SafariTextChangeHandler"];

  if (v6)
  {
    v5 = [(SafariSettingsEditableTableCell *)self textField];
    v6[2](v6, v5);
  }
}

- (BOOL)canReload
{
  v3 = objc_opt_class();

  return [(SafariSettingsEditableTableCell *)self isMemberOfClass:v3];
}

@end
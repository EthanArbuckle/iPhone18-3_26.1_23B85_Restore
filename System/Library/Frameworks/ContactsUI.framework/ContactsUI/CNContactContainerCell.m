@interface CNContactContainerCell
- (CNPropertyCellDelegate)delegate;
- (id)labelView;
- (id)valueView;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)a3;
- (void)updateConstraints;
@end

@implementation CNContactContainerCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = CNContactContainerCell;
  [(CNContactCell *)&v3 updateConstraints];
  -[UILabel setNumberOfLines:](self->_accountLabel, "setNumberOfLines:", [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1);
  -[UILabel setNumberOfLines:](self->_accountNameLabel, "setNumberOfLines:", [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1);
}

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CNContactContainerCell;
  v5 = [(CNContactCell *)&v22 cardGroupItem];

  if (v5 != v4)
  {
    v21.receiver = self;
    v21.super_class = CNContactContainerCell;
    [(CNContactCell *)&v21 setCardGroupItem:v4];
    if (v4)
    {
      v6 = [v4 containers];
      v7 = [v6 count];

      if (v7 < 2)
      {
        v14 = [v4 containers];
        v9 = [v14 firstObject];

        v15 = [(CNContactContainerCell *)self delegate];
        v10 = [v15 contactViewCache];

        v11 = [v10 accountForContainer:v9];
        [MEMORY[0x1E695CD10] _cnui_displayNameForACAccount:v11];
      }

      else
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = CNContactsUIBundle();
        v10 = [v9 localizedStringForKey:@"N_ACCOUNTS" value:&stru_1F0CE7398 table:@"Localized"];
        v11 = [v4 containers];
        [v8 localizedStringWithFormat:v10, objc_msgSend(v11, "count")];
      }
      v13 = ;

      v16 = CNContactsUIBundle();
      v17 = [v16 localizedStringForKey:@"ACCOUNT_CARD_ITEM_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
      v18 = [(CNContactContainerCell *)self accountLabel];
      [v18 setText:v17];

      v19 = v13;
      if (!v13)
      {
        v16 = CNContactsUIBundle();
        v19 = [v16 localizedStringForKey:@"UNKNOWN_SOURCE_STRING" value:&stru_1F0CE7398 table:@"Localized"];
      }

      v20 = [(CNContactContainerCell *)self accountNameLabel];
      [v20 setText:v19];

      if (!v13)
      {
      }
    }

    else
    {
      v12 = [(CNContactContainerCell *)self accountLabel];
      [v12 setText:0];

      v13 = [(CNContactContainerCell *)self accountNameLabel];
      [v13 setText:0];
    }
  }
}

- (void)performDefaultAction
{
  v4 = [(CNContactContainerCell *)self delegate];
  v3 = [(CNContactCell *)self cardGroupItem];
  [v4 propertyCell:self performActionForItem:v3 withTransportType:0];
}

- (id)valueView
{
  accountNameLabel = self->_accountNameLabel;
  if (!accountNameLabel)
  {
    v4 = [(CNLabeledCell *)self standardValueView];
    v5 = self->_accountNameLabel;
    self->_accountNameLabel = v4;

    accountNameLabel = self->_accountNameLabel;
  }

  return accountNameLabel;
}

- (id)labelView
{
  accountLabel = self->_accountLabel;
  if (!accountLabel)
  {
    v4 = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_accountLabel;
    self->_accountLabel = v4;

    accountLabel = self->_accountLabel;
  }

  return accountLabel;
}

@end
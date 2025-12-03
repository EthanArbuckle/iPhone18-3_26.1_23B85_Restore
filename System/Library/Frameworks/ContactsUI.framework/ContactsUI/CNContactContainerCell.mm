@interface CNContactContainerCell
- (CNPropertyCellDelegate)delegate;
- (id)labelView;
- (id)valueView;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)item;
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

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  v22.receiver = self;
  v22.super_class = CNContactContainerCell;
  cardGroupItem = [(CNContactCell *)&v22 cardGroupItem];

  if (cardGroupItem != itemCopy)
  {
    v21.receiver = self;
    v21.super_class = CNContactContainerCell;
    [(CNContactCell *)&v21 setCardGroupItem:itemCopy];
    if (itemCopy)
    {
      containers = [itemCopy containers];
      v7 = [containers count];

      if (v7 < 2)
      {
        containers2 = [itemCopy containers];
        firstObject = [containers2 firstObject];

        delegate = [(CNContactContainerCell *)self delegate];
        contactViewCache = [delegate contactViewCache];

        containers3 = [contactViewCache accountForContainer:firstObject];
        [MEMORY[0x1E695CD10] _cnui_displayNameForACAccount:containers3];
      }

      else
      {
        v8 = MEMORY[0x1E696AEC0];
        firstObject = CNContactsUIBundle();
        contactViewCache = [firstObject localizedStringForKey:@"N_ACCOUNTS" value:&stru_1F0CE7398 table:@"Localized"];
        containers3 = [itemCopy containers];
        [v8 localizedStringWithFormat:contactViewCache, objc_msgSend(containers3, "count")];
      }
      accountNameLabel2 = ;

      v16 = CNContactsUIBundle();
      v17 = [v16 localizedStringForKey:@"ACCOUNT_CARD_ITEM_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
      accountLabel = [(CNContactContainerCell *)self accountLabel];
      [accountLabel setText:v17];

      v19 = accountNameLabel2;
      if (!accountNameLabel2)
      {
        v16 = CNContactsUIBundle();
        v19 = [v16 localizedStringForKey:@"UNKNOWN_SOURCE_STRING" value:&stru_1F0CE7398 table:@"Localized"];
      }

      accountNameLabel = [(CNContactContainerCell *)self accountNameLabel];
      [accountNameLabel setText:v19];

      if (!accountNameLabel2)
      {
      }
    }

    else
    {
      accountLabel2 = [(CNContactContainerCell *)self accountLabel];
      [accountLabel2 setText:0];

      accountNameLabel2 = [(CNContactContainerCell *)self accountNameLabel];
      [accountNameLabel2 setText:0];
    }
  }
}

- (void)performDefaultAction
{
  delegate = [(CNContactContainerCell *)self delegate];
  cardGroupItem = [(CNContactCell *)self cardGroupItem];
  [delegate propertyCell:self performActionForItem:cardGroupItem withTransportType:0];
}

- (id)valueView
{
  accountNameLabel = self->_accountNameLabel;
  if (!accountNameLabel)
  {
    standardValueView = [(CNLabeledCell *)self standardValueView];
    v5 = self->_accountNameLabel;
    self->_accountNameLabel = standardValueView;

    accountNameLabel = self->_accountNameLabel;
  }

  return accountNameLabel;
}

- (id)labelView
{
  accountLabel = self->_accountLabel;
  if (!accountLabel)
  {
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_accountLabel;
    self->_accountLabel = standardLabelView;

    accountLabel = self->_accountLabel;
  }

  return accountLabel;
}

@end
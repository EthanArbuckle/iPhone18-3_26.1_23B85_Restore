@interface CNLinkedCardsCell
- (CNPropertyCellDelegate)delegate;
- (id)labelView;
- (id)titleForContact:(id)contact;
- (id)valueView;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)item;
- (void)updateConstraints;
@end

@implementation CNLinkedCardsCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = CNLinkedCardsCell;
  [(CNContactCell *)&v3 updateConstraints];
  -[UILabel setNumberOfLines:](self->_sourceLabel, "setNumberOfLines:", [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1);
  -[UILabel setNumberOfLines:](self->_nameLabel, "setNumberOfLines:", [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1);
}

- (id)titleForContact:(id)contact
{
  contactCopy = contact;
  delegate = [(CNLinkedCardsCell *)self delegate];
  contactViewCache = [delegate contactViewCache];

  v7 = [contactViewCache containerForContact:contactCopy];
  if ([v7 type] == 1003 || objc_msgSend(v7, "type") == 1004)
  {
    name = [v7 name];
  }

  else
  {
    v9 = [contactViewCache accountForContact:contactCopy];
    name = [MEMORY[0x1E695CD10] _cnui_displayNameForACAccount:v9];
  }

  return name;
}

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = CNLinkedCardsCell;
  cardGroupItem = [(CNContactCell *)&v13 cardGroupItem];

  if (cardGroupItem != itemCopy)
  {
    v12.receiver = self;
    v12.super_class = CNLinkedCardsCell;
    [(CNContactCell *)&v12 setCardGroupItem:itemCopy];
    contact = [itemCopy contact];
    if (contact)
    {
      v7 = [(CNLinkedCardsCell *)self titleForContact:contact];
      sourceLabel = [(CNLinkedCardsCell *)self sourceLabel];
      [sourceLabel setText:v7];

      v9 = objc_alloc_init(MEMORY[0x1E695CD80]);
      [v9 setStyle:0];
      [v9 setFallbackStyle:-1];
      v10 = [v9 stringFromContact:contact];
      nameLabel = [(CNLinkedCardsCell *)self nameLabel];
      [nameLabel setText:v10];
    }
  }
}

- (void)performDefaultAction
{
  delegate = [(CNLinkedCardsCell *)self delegate];
  cardGroupItem = [(CNContactCell *)self cardGroupItem];
  [delegate propertyCell:self performActionForItem:cardGroupItem withTransportType:0];
}

- (id)valueView
{
  nameLabel = self->_nameLabel;
  if (!nameLabel)
  {
    standardValueView = [(CNLabeledCell *)self standardValueView];
    v5 = self->_nameLabel;
    self->_nameLabel = standardValueView;

    nameLabel = self->_nameLabel;
  }

  return nameLabel;
}

- (id)labelView
{
  sourceLabel = self->_sourceLabel;
  if (!sourceLabel)
  {
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_sourceLabel;
    self->_sourceLabel = standardLabelView;

    sourceLabel = self->_sourceLabel;
  }

  return sourceLabel;
}

@end
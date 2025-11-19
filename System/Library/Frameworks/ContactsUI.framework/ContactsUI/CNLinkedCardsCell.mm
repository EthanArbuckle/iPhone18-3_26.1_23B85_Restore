@interface CNLinkedCardsCell
- (CNPropertyCellDelegate)delegate;
- (id)labelView;
- (id)titleForContact:(id)a3;
- (id)valueView;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)a3;
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

- (id)titleForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNLinkedCardsCell *)self delegate];
  v6 = [v5 contactViewCache];

  v7 = [v6 containerForContact:v4];
  if ([v7 type] == 1003 || objc_msgSend(v7, "type") == 1004)
  {
    v8 = [v7 name];
  }

  else
  {
    v9 = [v6 accountForContact:v4];
    v8 = [MEMORY[0x1E695CD10] _cnui_displayNameForACAccount:v9];
  }

  return v8;
}

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CNLinkedCardsCell;
  v5 = [(CNContactCell *)&v13 cardGroupItem];

  if (v5 != v4)
  {
    v12.receiver = self;
    v12.super_class = CNLinkedCardsCell;
    [(CNContactCell *)&v12 setCardGroupItem:v4];
    v6 = [v4 contact];
    if (v6)
    {
      v7 = [(CNLinkedCardsCell *)self titleForContact:v6];
      v8 = [(CNLinkedCardsCell *)self sourceLabel];
      [v8 setText:v7];

      v9 = objc_alloc_init(MEMORY[0x1E695CD80]);
      [v9 setStyle:0];
      [v9 setFallbackStyle:-1];
      v10 = [v9 stringFromContact:v6];
      v11 = [(CNLinkedCardsCell *)self nameLabel];
      [v11 setText:v10];
    }
  }
}

- (void)performDefaultAction
{
  v4 = [(CNLinkedCardsCell *)self delegate];
  v3 = [(CNContactCell *)self cardGroupItem];
  [v4 propertyCell:self performActionForItem:v3 withTransportType:0];
}

- (id)valueView
{
  nameLabel = self->_nameLabel;
  if (!nameLabel)
  {
    v4 = [(CNLabeledCell *)self standardValueView];
    v5 = self->_nameLabel;
    self->_nameLabel = v4;

    nameLabel = self->_nameLabel;
  }

  return nameLabel;
}

- (id)labelView
{
  sourceLabel = self->_sourceLabel;
  if (!sourceLabel)
  {
    v4 = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_sourceLabel;
    self->_sourceLabel = v4;

    sourceLabel = self->_sourceLabel;
  }

  return sourceLabel;
}

@end
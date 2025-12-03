@interface CNCardNamePickingCell
- (id)labelView;
- (id)valueView;
- (void)setCardGroupItem:(id)item;
@end

@implementation CNCardNamePickingCell

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = CNCardNamePickingCell;
  cardGroupItem = [(CNContactCell *)&v12 cardGroupItem];

  if (cardGroupItem != itemCopy)
  {
    v11.receiver = self;
    v11.super_class = CNCardNamePickingCell;
    [(CNContactCell *)&v11 setCardGroupItem:itemCopy];
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"NAME_LABEL" value:@"Name" table:@"Localized"];
    sourceLabel = [(CNCardNamePickingCell *)self sourceLabel];
    [sourceLabel setText:v7];

    displayName = [itemCopy displayName];
    nameLabel = [(CNCardNamePickingCell *)self nameLabel];
    [nameLabel setText:displayName];
  }
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
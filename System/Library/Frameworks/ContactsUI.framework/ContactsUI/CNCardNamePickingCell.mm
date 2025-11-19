@interface CNCardNamePickingCell
- (id)labelView;
- (id)valueView;
- (void)setCardGroupItem:(id)a3;
@end

@implementation CNCardNamePickingCell

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNCardNamePickingCell;
  v5 = [(CNContactCell *)&v12 cardGroupItem];

  if (v5 != v4)
  {
    v11.receiver = self;
    v11.super_class = CNCardNamePickingCell;
    [(CNContactCell *)&v11 setCardGroupItem:v4];
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"NAME_LABEL" value:@"Name" table:@"Localized"];
    v8 = [(CNCardNamePickingCell *)self sourceLabel];
    [v8 setText:v7];

    v9 = [v4 displayName];
    v10 = [(CNCardNamePickingCell *)self nameLabel];
    [v10 setText:v9];
  }
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
@interface CNGroupMembershipCell
- (CNPropertyCellDelegate)delegate;
- (id)labelView;
- (void)setCardGroupItem:(id)item;
- (void)updateConstraints;
@end

@implementation CNGroupMembershipCell

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = CNGroupMembershipCell;
  [(CNContactCell *)&v3 updateConstraints];
  -[UILabel setNumberOfLines:](self->_parentGroupNameLabel, "setNumberOfLines:", [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1);
}

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = CNGroupMembershipCell;
  cardGroupItem = [(CNContactCell *)&v11 cardGroupItem];

  if (cardGroupItem != itemCopy)
  {
    v10.receiver = self;
    v10.super_class = CNGroupMembershipCell;
    [(CNContactCell *)&v10 setCardGroupItem:itemCopy];
    group = [itemCopy group];
    v7 = group;
    if (group)
    {
      name = [group name];
      parentGroupNameLabel = [(CNGroupMembershipCell *)self parentGroupNameLabel];
      [parentGroupNameLabel setText:name];
    }
  }
}

- (id)labelView
{
  parentGroupNameLabel = self->_parentGroupNameLabel;
  if (!parentGroupNameLabel)
  {
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_parentGroupNameLabel;
    self->_parentGroupNameLabel = standardLabelView;

    parentGroupNameLabel = self->_parentGroupNameLabel;
  }

  return parentGroupNameLabel;
}

@end
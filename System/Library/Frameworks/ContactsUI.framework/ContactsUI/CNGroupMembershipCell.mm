@interface CNGroupMembershipCell
- (CNPropertyCellDelegate)delegate;
- (id)labelView;
- (void)setCardGroupItem:(id)a3;
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

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNGroupMembershipCell;
  v5 = [(CNContactCell *)&v11 cardGroupItem];

  if (v5 != v4)
  {
    v10.receiver = self;
    v10.super_class = CNGroupMembershipCell;
    [(CNContactCell *)&v10 setCardGroupItem:v4];
    v6 = [v4 group];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 name];
      v9 = [(CNGroupMembershipCell *)self parentGroupNameLabel];
      [v9 setText:v8];
    }
  }
}

- (id)labelView
{
  parentGroupNameLabel = self->_parentGroupNameLabel;
  if (!parentGroupNameLabel)
  {
    v4 = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_parentGroupNameLabel;
    self->_parentGroupNameLabel = v4;

    parentGroupNameLabel = self->_parentGroupNameLabel;
  }

  return parentGroupNameLabel;
}

@end
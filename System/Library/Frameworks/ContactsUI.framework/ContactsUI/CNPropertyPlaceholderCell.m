@interface CNPropertyPlaceholderCell
- (id)labelView;
- (void)setCardGroupItem:(id)a3;
@end

@implementation CNPropertyPlaceholderCell

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v5 = [(CNContactCell *)self cardGroupItem];

  if (v5 != v4)
  {
    v8.receiver = self;
    v8.super_class = CNPropertyPlaceholderCell;
    [(CNContactCell *)&v8 setCardGroupItem:v4];
    v6 = [v4 title];
    v7 = [(CNPropertyPlaceholderCell *)self label];
    [v7 setText:v6];
  }
}

- (id)labelView
{
  label = self->_label;
  if (!label)
  {
    v4 = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_label;
    self->_label = v4;

    label = self->_label;
  }

  return label;
}

@end
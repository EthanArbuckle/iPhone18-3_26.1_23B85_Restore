@interface CNPropertyPlaceholderCell
- (id)labelView;
- (void)setCardGroupItem:(id)item;
@end

@implementation CNPropertyPlaceholderCell

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  cardGroupItem = [(CNContactCell *)self cardGroupItem];

  if (cardGroupItem != itemCopy)
  {
    v8.receiver = self;
    v8.super_class = CNPropertyPlaceholderCell;
    [(CNContactCell *)&v8 setCardGroupItem:itemCopy];
    title = [itemCopy title];
    label = [(CNPropertyPlaceholderCell *)self label];
    [label setText:title];
  }
}

- (id)labelView
{
  label = self->_label;
  if (!label)
  {
    standardLabelView = [(CNLabeledCell *)self standardLabelView];
    v5 = self->_label;
    self->_label = standardLabelView;

    label = self->_label;
  }

  return label;
}

@end
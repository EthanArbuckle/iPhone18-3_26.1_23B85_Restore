@interface CNPropertyRelatedNameCell
- (id)labelView;
@end

@implementation CNPropertyRelatedNameCell

- (id)labelView
{
  v6.receiver = self;
  v6.super_class = CNPropertyRelatedNameCell;
  labelView = [(CNPropertySimpleCell *)&v6 labelView];
  labelLabel = [(CNPropertySimpleCell *)self labelLabel];
  [labelLabel setNumberOfLines:0];

  return labelView;
}

@end
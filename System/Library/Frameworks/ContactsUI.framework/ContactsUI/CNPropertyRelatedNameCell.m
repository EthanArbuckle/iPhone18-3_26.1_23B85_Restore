@interface CNPropertyRelatedNameCell
- (id)labelView;
@end

@implementation CNPropertyRelatedNameCell

- (id)labelView
{
  v6.receiver = self;
  v6.super_class = CNPropertyRelatedNameCell;
  v3 = [(CNPropertySimpleCell *)&v6 labelView];
  v4 = [(CNPropertySimpleCell *)self labelLabel];
  [v4 setNumberOfLines:0];

  return v3;
}

@end
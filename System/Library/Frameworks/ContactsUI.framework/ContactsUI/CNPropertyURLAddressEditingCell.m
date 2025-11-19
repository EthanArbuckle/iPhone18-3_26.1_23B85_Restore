@interface CNPropertyURLAddressEditingCell
- (CNPropertyURLAddressEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CNPropertyURLAddressEditingCell

- (CNPropertyURLAddressEditingCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CNPropertyURLAddressEditingCell;
  v4 = [(CNPropertyEditingCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = [(CNPropertySimpleEditingCell *)v4 textField];
  [v5 setKeyboardType:3];

  return v4;
}

@end
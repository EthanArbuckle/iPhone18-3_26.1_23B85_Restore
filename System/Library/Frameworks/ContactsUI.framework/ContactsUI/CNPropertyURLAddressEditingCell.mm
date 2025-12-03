@interface CNPropertyURLAddressEditingCell
- (CNPropertyURLAddressEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CNPropertyURLAddressEditingCell

- (CNPropertyURLAddressEditingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CNPropertyURLAddressEditingCell;
  v4 = [(CNPropertyEditingCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  textField = [(CNPropertySimpleEditingCell *)v4 textField];
  [textField setKeyboardType:3];

  return v4;
}

@end
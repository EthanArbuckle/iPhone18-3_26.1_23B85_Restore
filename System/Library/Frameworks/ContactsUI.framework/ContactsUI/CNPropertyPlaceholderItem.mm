@interface CNPropertyPlaceholderItem
- (CNPropertyPlaceholderItem)initWithProperty:(id)property;
- (NSString)title;
@end

@implementation CNPropertyPlaceholderItem

- (NSString)title
{
  property = [(CNPropertyPlaceholderItem *)self property];
  if ([property isEqualToString:@"birthdays"])
  {
    v3 = *MEMORY[0x1E695C1D0];

    property = v3;
  }

  v4 = CNUILocalizedStringForPropertyWithFormatKey(@"ADD_NEW_ITEM", property);

  return v4;
}

- (CNPropertyPlaceholderItem)initWithProperty:(id)property
{
  propertyCopy = property;
  v9.receiver = self;
  v9.super_class = CNPropertyPlaceholderItem;
  v6 = [(CNPropertyPlaceholderItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_property, property);
  }

  return v7;
}

@end
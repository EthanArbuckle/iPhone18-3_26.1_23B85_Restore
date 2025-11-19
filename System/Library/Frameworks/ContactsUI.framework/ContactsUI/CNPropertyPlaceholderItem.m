@interface CNPropertyPlaceholderItem
- (CNPropertyPlaceholderItem)initWithProperty:(id)a3;
- (NSString)title;
@end

@implementation CNPropertyPlaceholderItem

- (NSString)title
{
  v2 = [(CNPropertyPlaceholderItem *)self property];
  if ([v2 isEqualToString:@"birthdays"])
  {
    v3 = *MEMORY[0x1E695C1D0];

    v2 = v3;
  }

  v4 = CNUILocalizedStringForPropertyWithFormatKey(@"ADD_NEW_ITEM", v2);

  return v4;
}

- (CNPropertyPlaceholderItem)initWithProperty:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNPropertyPlaceholderItem;
  v6 = [(CNPropertyPlaceholderItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_property, a3);
  }

  return v7;
}

@end
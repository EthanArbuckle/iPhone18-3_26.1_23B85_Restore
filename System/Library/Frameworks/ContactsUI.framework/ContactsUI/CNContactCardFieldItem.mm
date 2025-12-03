@interface CNContactCardFieldItem
+ (id)photoItem;
- (CNContactCardFieldItem)initWithDisplayLabel:(id)label;
- (CNContactCardFieldItem)initWithGroupItem:(id)item;
@end

@implementation CNContactCardFieldItem

- (CNContactCardFieldItem)initWithDisplayLabel:(id)label
{
  labelCopy = label;
  v10.receiver = self;
  v10.super_class = CNContactCardFieldItem;
  v6 = [(CNContactCardFieldItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayLabel, label);
    v8 = v7;
  }

  return v7;
}

- (CNContactCardFieldItem)initWithGroupItem:(id)item
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = CNContactCardFieldItem;
  v6 = [(CNContactCardFieldItem *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupItem, item);
    displayLabel = [itemCopy displayLabel];
    displayLabel = v7->_displayLabel;
    v7->_displayLabel = displayLabel;

    displayValue = [itemCopy displayValue];
    displayValue = v7->_displayValue;
    v7->_displayValue = displayValue;

    v12 = v7;
  }

  return v7;
}

+ (id)photoItem
{
  v2 = [CNContactCardFieldItem alloc];
  v3 = CNContactsUIBundle();
  v4 = [v3 localizedStringForKey:@"PHOTO_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v5 = [(CNContactCardFieldItem *)v2 initWithDisplayLabel:v4];

  return v5;
}

@end
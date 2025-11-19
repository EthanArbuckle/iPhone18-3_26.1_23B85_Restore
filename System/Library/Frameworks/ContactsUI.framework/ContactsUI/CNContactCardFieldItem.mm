@interface CNContactCardFieldItem
+ (id)photoItem;
- (CNContactCardFieldItem)initWithDisplayLabel:(id)a3;
- (CNContactCardFieldItem)initWithGroupItem:(id)a3;
@end

@implementation CNContactCardFieldItem

- (CNContactCardFieldItem)initWithDisplayLabel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNContactCardFieldItem;
  v6 = [(CNContactCardFieldItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayLabel, a3);
    v8 = v7;
  }

  return v7;
}

- (CNContactCardFieldItem)initWithGroupItem:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNContactCardFieldItem;
  v6 = [(CNContactCardFieldItem *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupItem, a3);
    v8 = [v5 displayLabel];
    displayLabel = v7->_displayLabel;
    v7->_displayLabel = v8;

    v10 = [v5 displayValue];
    displayValue = v7->_displayValue;
    v7->_displayValue = v10;

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
@interface CNPropertyGroupInstantMessageItem
+ (id)emptyValueForLabel:(id)label;
- (BOOL)isEquivalentToItem:(id)item;
- (CNInstantMessageAddress)imAddress;
- (id)defaultActionURL;
- (id)displayLabel;
- (id)editingStringValue;
- (id)valueForDisplayString:(id)string;
@end

@implementation CNPropertyGroupInstantMessageItem

- (BOOL)isEquivalentToItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = CNPropertyGroupInstantMessageItem;
  if ([(CNPropertyGroupItem *)&v17 isEquivalentToItem:itemCopy])
  {
    v5 = 1;
  }

  else
  {
    contact = [(CNPropertyGroupItem *)self contact];
    contact2 = [itemCopy contact];

    if (contact == contact2)
    {
      v5 = 0;
    }

    else
    {
      imAddress = [(CNPropertyGroupInstantMessageItem *)self imAddress];
      service = [imAddress service];

      imAddress2 = [itemCopy imAddress];
      service2 = [imAddress2 service];

      v5 = 0;
      if (service && service2)
      {
        if ([service isEqualToString:service2])
        {
          imAddress3 = [(CNPropertyGroupInstantMessageItem *)self imAddress];
          username = [imAddress3 username];

          imAddress4 = [itemCopy imAddress];
          username2 = [imAddress4 username];

          v5 = [username isEqualToString:username2];
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

- (id)editingStringValue
{
  imAddress = [(CNPropertyGroupInstantMessageItem *)self imAddress];
  username = [imAddress username];

  return username;
}

- (id)valueForDisplayString:(id)string
{
  stringCopy = string;
  imAddress = [(CNPropertyGroupInstantMessageItem *)self imAddress];
  v6 = [imAddress mutableCopy];

  [v6 setUsername:stringCopy];

  return v6;
}

- (id)displayLabel
{
  v3 = *MEMORY[0x1E6996568];
  imAddress = [(CNPropertyGroupInstantMessageItem *)self imAddress];
  service = [imAddress service];
  LOBYTE(v3) = (*(v3 + 16))(v3, service);

  if (v3)
  {
    v6 = MEMORY[0x1E695CD58];
    property = [(CNPropertyGroupItem *)self property];
    v8 = [v6 localizedStringForKey:property];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    imAddress2 = [(CNPropertyGroupInstantMessageItem *)self imAddress];
    service2 = [imAddress2 service];
    property = [v9 stringWithFormat:@"%@ IM_SERVICE_NAME", service2];

    v12 = CNContactsUIBundle();
    imAddress3 = [(CNPropertyGroupInstantMessageItem *)self imAddress];
    service3 = [imAddress3 service];
    v8 = [v12 localizedStringForKey:property value:service3 table:@"Localized"];
  }

  return v8;
}

- (id)defaultActionURL
{
  imAddress = [(CNPropertyGroupInstantMessageItem *)self imAddress];
  service = [imAddress service];

  imAddress2 = [(CNPropertyGroupInstantMessageItem *)self imAddress];
  username = [imAddress2 username];

  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v8 = [username stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  if ([service compare:*MEMORY[0x1E695C478] options:1])
  {
    if ([service compare:*MEMORY[0x1E695C498] options:1])
    {
      v9 = 0;
LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    v11 = [username length];
    if (v11 <= [@"chat.facebook.com" length])
    {
      v13 = 0;
    }

    else
    {
      v12 = [username substringFromIndex:{objc_msgSend(username, "length") - objc_msgSend(@"chat.facebook.com", "length")}];
      v13 = v12;
      if (v12 && [v12 isEqualToString:@"chat.facebook.com"])
      {
        v14 = [v8 substringToIndex:{objc_msgSend(@"chat.facebook.com", "length") - objc_msgSend(@"%40", "length")}];

        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://m.facebook.com/compose_message?uid=%@", v14];
        v8 = v14;
        goto LABEL_12;
      }
    }

    v9 = 0;
LABEL_12:

    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://m.facebook.com/compose_message?uid=%@", v8];
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
LABEL_14:
  v15 = v10;

  return v10;
}

- (CNInstantMessageAddress)imAddress
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  return value;
}

+ (id)emptyValueForLabel:(id)label
{
  v3 = MEMORY[0x1E695CED8];
  labelCopy = label;
  v5 = [[v3 alloc] initWithUsername:&stru_1F0CE7398 service:labelCopy];

  return v5;
}

@end
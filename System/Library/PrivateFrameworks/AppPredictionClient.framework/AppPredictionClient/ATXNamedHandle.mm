@interface ATXNamedHandle
- (ATXNamedHandle)initWithCoder:(id)coder;
- (ATXNamedHandle)initWithName:(id)name handle:(id)handle contactIdentifier:(id)identifier handleType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNamedHandle

- (ATXNamedHandle)initWithName:(id)name handle:(id)handle contactIdentifier:(id)identifier handleType:(id)type
{
  nameCopy = name;
  handleCopy = handle;
  identifierCopy = identifier;
  typeCopy = type;
  v24.receiver = self;
  v24.super_class = ATXNamedHandle;
  v14 = [(ATXNamedHandle *)&v24 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    v17 = [handleCopy copy];
    handle = v14->_handle;
    v14->_handle = v17;

    v19 = [identifierCopy copy];
    contactIdentifier = v14->_contactIdentifier;
    v14->_contactIdentifier = v19;

    v21 = [typeCopy copy];
    handleType = v14->_handleType;
    v14->_handleType = v21;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(ATXNamedHandle *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  handle = [(ATXNamedHandle *)self handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  contactIdentifier = [(ATXNamedHandle *)self contactIdentifier];
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];

  handleType = [(ATXNamedHandle *)self handleType];
  [coderCopy encodeObject:handleType forKey:@"handleType"];
}

- (ATXNamedHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ATXNamedHandle;
  v5 = [(ATXNamedHandle *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handleType"];
    handleType = v5->_handleType;
    v5->_handleType = v12;

    v14 = v5;
  }

  return v5;
}

@end
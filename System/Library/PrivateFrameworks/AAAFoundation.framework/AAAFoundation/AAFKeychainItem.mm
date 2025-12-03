@interface AAFKeychainItem
- (AAFKeychainItem)initWithAttributes:(id)attributes;
- (AAFKeychainItem)initWithDescriptor:(id)descriptor value:(id)value;
- (id)itemAttributes;
@end

@implementation AAFKeychainItem

- (AAFKeychainItem)initWithDescriptor:(id)descriptor value:(id)value
{
  descriptorCopy = descriptor;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = AAFKeychainItem;
  v9 = [(AAFKeychainItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, descriptor);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (AAFKeychainItem)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v11.receiver = self;
  v11.super_class = AAFKeychainItem;
  v5 = [(AAFKeychainItem *)&v11 init];
  if (v5)
  {
    v6 = [[AAFKeychainItemDescriptor alloc] initWithAttributes:attributesCopy];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (id)itemAttributes
{
  descriptor = [(AAFKeychainItem *)self descriptor];
  attributes = [descriptor attributes];
  v5 = [attributes mutableCopy];

  [v5 setObject:self->_value forKeyedSubscript:*MEMORY[0x1E697B3C0]];
  v6 = [v5 copy];

  return v6;
}

@end
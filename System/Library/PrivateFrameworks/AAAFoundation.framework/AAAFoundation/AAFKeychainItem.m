@interface AAFKeychainItem
- (AAFKeychainItem)initWithAttributes:(id)a3;
- (AAFKeychainItem)initWithDescriptor:(id)a3 value:(id)a4;
- (id)itemAttributes;
@end

@implementation AAFKeychainItem

- (AAFKeychainItem)initWithDescriptor:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AAFKeychainItem;
  v9 = [(AAFKeychainItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

- (AAFKeychainItem)initWithAttributes:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AAFKeychainItem;
  v5 = [(AAFKeychainItem *)&v11 init];
  if (v5)
  {
    v6 = [[AAFKeychainItemDescriptor alloc] initWithAttributes:v4];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];
    value = v5->_value;
    v5->_value = v8;
  }

  return v5;
}

- (id)itemAttributes
{
  v3 = [(AAFKeychainItem *)self descriptor];
  v4 = [v3 attributes];
  v5 = [v4 mutableCopy];

  [v5 setObject:self->_value forKeyedSubscript:*MEMORY[0x1E697B3C0]];
  v6 = [v5 copy];

  return v6;
}

@end
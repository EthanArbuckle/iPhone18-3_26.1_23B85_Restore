@interface AKKeychainItem
- (AKKeychainItem)initWithAttributes:(id)a3;
- (AKKeychainItem)initWithDescriptor:(id)a3 value:(id)a4;
- (id)itemAttributes;
@end

@implementation AKKeychainItem

- (AKKeychainItem)initWithDescriptor:(id)a3 value:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKKeychainItem;
  v11 = [(AKKeychainItem *)&v8 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_descriptor, location[0]);
    objc_storeStrong(&v11->_value, v9);
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (AKKeychainItem)initWithAttributes:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = AKKeychainItem;
  v13 = [(AKKeychainItem *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v4 = [AKKeychainItemDescriptor alloc];
    v5 = [(AKKeychainItemDescriptor *)v4 initWithAttributes:location[0]];
    descriptor = v13->_descriptor;
    v13->_descriptor = v5;
    _objc_release(descriptor);
    v7 = [location[0] objectForKeyedSubscript:kSecValueData];
    value = v13->_value;
    v13->_value = v7;
    _objc_release(value);
  }

  v10 = _objc_retain(v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v10;
}

- (id)itemAttributes
{
  v7 = self;
  v6[1] = a2;
  v4 = [(AKKeychainItem *)self descriptor];
  v3 = [(AKKeychainItemDescriptor *)v4 attributes];
  v6[0] = [v3 mutableCopy];
  _objc_release(v3);
  _objc_release(v4);
  [v6[0] setObject:v7->_value forKeyedSubscript:kSecValueData];
  v5 = [v6[0] copy];
  objc_storeStrong(v6, 0);

  return v5;
}

@end
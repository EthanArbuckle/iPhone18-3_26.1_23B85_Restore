@interface AKKeychainItem
- (AKKeychainItem)initWithAttributes:(id)attributes;
- (AKKeychainItem)initWithDescriptor:(id)descriptor value:(id)value;
- (id)itemAttributes;
@end

@implementation AKKeychainItem

- (AKKeychainItem)initWithDescriptor:(id)descriptor value:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v9 = 0;
  objc_storeStrong(&v9, value);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKKeychainItem;
  selfCopy = [(AKKeychainItem *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_descriptor, location[0]);
    objc_storeStrong(&selfCopy->_value, v9);
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKKeychainItem)initWithAttributes:(id)attributes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attributes);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = AKKeychainItem;
  selfCopy = [(AKKeychainItem *)&v11 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [AKKeychainItemDescriptor alloc];
    v5 = [(AKKeychainItemDescriptor *)v4 initWithAttributes:location[0]];
    descriptor = selfCopy->_descriptor;
    selfCopy->_descriptor = v5;
    _objc_release(descriptor);
    v7 = [location[0] objectForKeyedSubscript:kSecValueData];
    value = selfCopy->_value;
    selfCopy->_value = v7;
    _objc_release(value);
  }

  v10 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (id)itemAttributes
{
  selfCopy = self;
  v6[1] = a2;
  descriptor = [(AKKeychainItem *)self descriptor];
  attributes = [(AKKeychainItemDescriptor *)descriptor attributes];
  v6[0] = [attributes mutableCopy];
  _objc_release(attributes);
  _objc_release(descriptor);
  [v6[0] setObject:selfCopy->_value forKeyedSubscript:kSecValueData];
  v5 = [v6[0] copy];
  objc_storeStrong(v6, 0);

  return v5;
}

@end
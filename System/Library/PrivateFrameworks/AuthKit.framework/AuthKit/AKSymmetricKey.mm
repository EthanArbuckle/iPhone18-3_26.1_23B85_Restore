@interface AKSymmetricKey
- (AKSymmetricKey)initWithCoder:(id)coder;
- (AKSymmetricKey)initWithKeyData:(id)data keySpecifier:(id)specifier keyDomain:(id)domain;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromSymmetricKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKSymmetricKey

- (AKSymmetricKey)initWithKeyData:(id)data keySpecifier:(id)specifier keyDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v16 = 0;
  objc_storeStrong(&v16, specifier);
  v15 = 0;
  objc_storeStrong(&v15, domain);
  v5 = selfCopy;
  selfCopy = 0;
  v14.receiver = v5;
  v14.super_class = AKSymmetricKey;
  selfCopy = [(AKSymmetricKey *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_keyData, location[0]);
    v6 = [v16 copy];
    keySpecifier = selfCopy->_keySpecifier;
    selfCopy->_keySpecifier = v6;
    MEMORY[0x1E69E5920](keySpecifier);
    v8 = [v15 copy];
    keyDomain = selfCopy->_keyDomain;
    selfCopy->_keyDomain = v8;
    MEMORY[0x1E69E5920](keyDomain);
  }

  v11 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (id)initFromSymmetricKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKSymmetricKey *)v3 initWithKeyData:location[0] keySpecifier:0 keyDomain:?];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKSymmetricKey)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v12 = [(AKSymmetricKey *)v3 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_keyData"];
    keyData = selfCopy->_keyData;
    selfCopy->_keyData = v4;
    MEMORY[0x1E69E5920](keyData);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_keySpecifier"];
    keySpecifier = selfCopy->_keySpecifier;
    selfCopy->_keySpecifier = v6;
    MEMORY[0x1E69E5920](keySpecifier);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_keyDomain"];
    keyDomain = selfCopy->_keyDomain;
    selfCopy->_keyDomain = v8;
    MEMORY[0x1E69E5920](keyDomain);
  }

  v11 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_keyData forKey:@"_keyData"];
  [location[0] encodeObject:selfCopy->_keySpecifier forKey:@"_keySpecifier"];
  [location[0] encodeObject:selfCopy->_keyDomain forKey:@"_keyDomain"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v11[2] = a2;
  v11[1] = zone;
  v11[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSData *)selfCopy->_keyData copy];
  v4 = *(v11[0] + 1);
  *(v11[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(_SFSymmetricKeySpecifier *)selfCopy->_keySpecifier copy];
  v6 = *(v11[0] + 2);
  *(v11[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_keyDomain copy];
  v8 = *(v11[0] + 3);
  *(v11[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v10 = MEMORY[0x1E69E5928](v11[0]);
  objc_storeStrong(v11, 0);
  return v10;
}

@end
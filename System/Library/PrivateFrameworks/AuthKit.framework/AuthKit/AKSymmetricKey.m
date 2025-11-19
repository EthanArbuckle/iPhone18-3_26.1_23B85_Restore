@interface AKSymmetricKey
- (AKSymmetricKey)initWithCoder:(id)a3;
- (AKSymmetricKey)initWithKeyData:(id)a3 keySpecifier:(id)a4 keyDomain:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromSymmetricKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKSymmetricKey

- (AKSymmetricKey)initWithKeyData:(id)a3 keySpecifier:(id)a4 keyDomain:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v5 = v18;
  v18 = 0;
  v14.receiver = v5;
  v14.super_class = AKSymmetricKey;
  v18 = [(AKSymmetricKey *)&v14 init];
  objc_storeStrong(&v18, v18);
  if (v18)
  {
    objc_storeStrong(&v18->_keyData, location[0]);
    v6 = [v16 copy];
    keySpecifier = v18->_keySpecifier;
    v18->_keySpecifier = v6;
    MEMORY[0x1E69E5920](keySpecifier);
    v8 = [v15 copy];
    keyDomain = v18->_keyDomain;
    v18->_keyDomain = v8;
    MEMORY[0x1E69E5920](keyDomain);
  }

  v11 = MEMORY[0x1E69E5928](v18);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v11;
}

- (id)initFromSymmetricKey:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [(AKSymmetricKey *)v3 initWithKeyData:location[0] keySpecifier:0 keyDomain:?];
  v5 = MEMORY[0x1E69E5928](v7);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v5;
}

- (AKSymmetricKey)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12 = [(AKSymmetricKey *)v3 init];
  v14 = v12;
  objc_storeStrong(&v14, v12);
  if (v12)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_keyData"];
    keyData = v14->_keyData;
    v14->_keyData = v4;
    MEMORY[0x1E69E5920](keyData);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_keySpecifier"];
    keySpecifier = v14->_keySpecifier;
    v14->_keySpecifier = v6;
    MEMORY[0x1E69E5920](keySpecifier);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_keyDomain"];
    keyDomain = v14->_keyDomain;
    v14->_keyDomain = v8;
    MEMORY[0x1E69E5920](keyDomain);
  }

  v11 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_keyData forKey:@"_keyData"];
  [location[0] encodeObject:v4->_keySpecifier forKey:@"_keySpecifier"];
  [location[0] encodeObject:v4->_keyDomain forKey:@"_keyDomain"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12 = self;
  v11[2] = a2;
  v11[1] = a3;
  v11[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSData *)v12->_keyData copy];
  v4 = *(v11[0] + 1);
  *(v11[0] + 1) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(_SFSymmetricKeySpecifier *)v12->_keySpecifier copy];
  v6 = *(v11[0] + 2);
  *(v11[0] + 2) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v12->_keyDomain copy];
  v8 = *(v11[0] + 3);
  *(v11[0] + 3) = v7;
  MEMORY[0x1E69E5920](v8);
  v10 = MEMORY[0x1E69E5928](v11[0]);
  objc_storeStrong(v11, 0);
  return v10;
}

@end
@interface AKPrivateEmail
- (AKPrivateEmail)initWithAddress:(id)address forKey:(id)key;
- (AKPrivateEmail)initWithAddress:(id)address forKey:(id)key withBundleId:(id)id;
- (AKPrivateEmail)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKPrivateEmail

- (AKPrivateEmail)initWithAddress:(id)address forKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, address);
  v10 = 0;
  objc_storeStrong(&v10, key);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKPrivateEmail;
  v8 = [(AKPrivateEmail *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_privateEmailAddress, location[0]);
    objc_storeStrong(&selfCopy->_key, v10);
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKPrivateEmail)initWithAddress:(id)address forKey:(id)key withBundleId:(id)id
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, address);
  v13 = 0;
  objc_storeStrong(&v13, key);
  v12 = 0;
  objc_storeStrong(&v12, id);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = AKPrivateEmail;
  v10 = [(AKPrivateEmail *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_privateEmailAddress, location[0]);
    objc_storeStrong(&selfCopy->_key, v13);
    objc_storeStrong(&selfCopy->_clientAppBundleId, v12);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_key forKey:@"clientKey"];
  [location[0] encodeObject:selfCopy->_privateEmailAddress forKey:@"privateEmailAddress"];
  [location[0] encodeObject:selfCopy->_clientAppBundleId forKey:@"privateEmailClientBundle"];
  objc_storeStrong(location, 0);
}

- (AKPrivateEmail)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v12 = [(AKPrivateEmail *)v3 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privateEmailAddress"];
    privateEmailAddress = selfCopy->_privateEmailAddress;
    selfCopy->_privateEmailAddress = v4;
    MEMORY[0x1E69E5920](privateEmailAddress);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"clientKey"];
    key = selfCopy->_key;
    selfCopy->_key = v6;
    MEMORY[0x1E69E5920](key);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privateEmailClientBundle"];
    clientAppBundleId = selfCopy->_clientAppBundleId;
    selfCopy->_clientAppBundleId = v8;
    MEMORY[0x1E69E5920](clientAppBundleId);
  }

  v11 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v11[2] = a2;
  v11[1] = zone;
  v11[0] = objc_alloc_init(AKPrivateEmail);
  v3 = [(NSString *)selfCopy->_privateEmailAddress copy];
  v4 = *(v11[0] + 3);
  *(v11[0] + 3) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_key copy];
  v6 = *(v11[0] + 1);
  *(v11[0] + 1) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_clientAppBundleId copy];
  v8 = *(v11[0] + 2);
  *(v11[0] + 2) = v7;
  MEMORY[0x1E69E5920](v8);
  v10 = MEMORY[0x1E69E5928](v11[0]);
  objc_storeStrong(v11, 0);
  return v10;
}

- (id)description
{
  selfCopy = self;
  v15[1] = a2;
  v15[0] = 0;
  if (self->_clientAppBundleId)
  {
    v11 = MEMORY[0x1E696AEC0];
    v14 = [(AKPrivateEmail *)selfCopy key];
    privateEmailAddress = [(AKPrivateEmail *)selfCopy privateEmailAddress];
    clientAppBundleId = [(AKPrivateEmail *)selfCopy clientAppBundleId];
    v2 = [v11 stringWithFormat:@"<PrivateEmail: {%@} -> {%@} [%@]>", v14, privateEmailAddress, clientAppBundleId];
    v3 = v15[0];
    v15[0] = v2;
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](clientAppBundleId);
    MEMORY[0x1E69E5920](privateEmailAddress);
    MEMORY[0x1E69E5920](v14);
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v10 = [(AKPrivateEmail *)selfCopy key];
    privateEmailAddress2 = [(AKPrivateEmail *)selfCopy privateEmailAddress];
    v4 = [v8 stringWithFormat:@"<PrivateEmail: {%@} -> {%@}>", v10, privateEmailAddress2];
    v5 = v15[0];
    v15[0] = v4;
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](privateEmailAddress2);
    MEMORY[0x1E69E5920](v10);
  }

  v7 = MEMORY[0x1E69E5928](v15[0]);
  objc_storeStrong(v15, 0);

  return v7;
}

@end
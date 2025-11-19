@interface AKPrivateEmail
- (AKPrivateEmail)initWithAddress:(id)a3 forKey:(id)a4;
- (AKPrivateEmail)initWithAddress:(id)a3 forKey:(id)a4 withBundleId:(id)a5;
- (AKPrivateEmail)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKPrivateEmail

- (AKPrivateEmail)initWithAddress:(id)a3 forKey:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKPrivateEmail;
  v8 = [(AKPrivateEmail *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_privateEmailAddress, location[0]);
    objc_storeStrong(&v12->_key, v10);
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (AKPrivateEmail)initWithAddress:(id)a3 forKey:(id)a4 withBundleId:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = AKPrivateEmail;
  v10 = [(AKPrivateEmail *)&v11 init];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    objc_storeStrong(&v15->_privateEmailAddress, location[0]);
    objc_storeStrong(&v15->_key, v13);
    objc_storeStrong(&v15->_clientAppBundleId, v12);
  }

  v7 = MEMORY[0x1E69E5928](v15);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_key forKey:@"clientKey"];
  [location[0] encodeObject:v4->_privateEmailAddress forKey:@"privateEmailAddress"];
  [location[0] encodeObject:v4->_clientAppBundleId forKey:@"privateEmailClientBundle"];
  objc_storeStrong(location, 0);
}

- (AKPrivateEmail)initWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v14;
  v14 = 0;
  v12 = [(AKPrivateEmail *)v3 init];
  v14 = v12;
  objc_storeStrong(&v14, v12);
  if (v12)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privateEmailAddress"];
    privateEmailAddress = v14->_privateEmailAddress;
    v14->_privateEmailAddress = v4;
    MEMORY[0x1E69E5920](privateEmailAddress);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"clientKey"];
    key = v14->_key;
    v14->_key = v6;
    MEMORY[0x1E69E5920](key);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privateEmailClientBundle"];
    clientAppBundleId = v14->_clientAppBundleId;
    v14->_clientAppBundleId = v8;
    MEMORY[0x1E69E5920](clientAppBundleId);
  }

  v11 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12 = self;
  v11[2] = a2;
  v11[1] = a3;
  v11[0] = objc_alloc_init(AKPrivateEmail);
  v3 = [(NSString *)v12->_privateEmailAddress copy];
  v4 = *(v11[0] + 3);
  *(v11[0] + 3) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v12->_key copy];
  v6 = *(v11[0] + 1);
  *(v11[0] + 1) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v12->_clientAppBundleId copy];
  v8 = *(v11[0] + 2);
  *(v11[0] + 2) = v7;
  MEMORY[0x1E69E5920](v8);
  v10 = MEMORY[0x1E69E5928](v11[0]);
  objc_storeStrong(v11, 0);
  return v10;
}

- (id)description
{
  v16 = self;
  v15[1] = a2;
  v15[0] = 0;
  if (self->_clientAppBundleId)
  {
    v11 = MEMORY[0x1E696AEC0];
    v14 = [(AKPrivateEmail *)v16 key];
    v13 = [(AKPrivateEmail *)v16 privateEmailAddress];
    v12 = [(AKPrivateEmail *)v16 clientAppBundleId];
    v2 = [v11 stringWithFormat:@"<PrivateEmail: {%@} -> {%@} [%@]>", v14, v13, v12];
    v3 = v15[0];
    v15[0] = v2;
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v14);
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v10 = [(AKPrivateEmail *)v16 key];
    v9 = [(AKPrivateEmail *)v16 privateEmailAddress];
    v4 = [v8 stringWithFormat:@"<PrivateEmail: {%@} -> {%@}>", v10, v9];
    v5 = v15[0];
    v15[0] = v4;
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
  }

  v7 = MEMORY[0x1E69E5928](v15[0]);
  objc_storeStrong(v15, 0);

  return v7;
}

@end
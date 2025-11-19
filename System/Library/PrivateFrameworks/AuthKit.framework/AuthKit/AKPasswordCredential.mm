@interface AKPasswordCredential
- (AKPasswordCredential)initWithCoder:(id)a3;
- (AKPasswordCredential)initWithUser:(id)a3 password:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKPasswordCredential

- (AKPasswordCredential)initWithUser:(id)a3 password:(id)a4
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
  v9.super_class = AKPasswordCredential;
  v8 = [(AKPasswordCredential *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_userIdentifier, location[0]);
    objc_storeStrong(&v12->_password, v10);
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_userIdentifier forKey:@"_userIdentifier"];
  [location[0] encodeObject:v4->_password forKey:@"_password"];
  objc_storeStrong(location, 0);
}

- (AKPasswordCredential)initWithCoder:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = AKPasswordCredential;
  v10 = [(AKPasswordCredential *)&v11 init];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    v4 = [location[0] decodeObjectForKey:@"_userIdentifier"];
    userIdentifier = v13->_userIdentifier;
    v13->_userIdentifier = v4;
    MEMORY[0x1E69E5920](userIdentifier);
    v6 = [location[0] decodeObjectForKey:@"_password"];
    password = v13->_password;
    v13->_password = v6;
    MEMORY[0x1E69E5920](password);
  }

  v9 = MEMORY[0x1E69E5928](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v9;
}

@end
@interface AKAuthorizationLoginChoice
- (AKAuthorizationLoginChoice)initWithCoder:(id)a3;
- (AKAuthorizationLoginChoice)initWithUser:(id)a3 site:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAuthorizationLoginChoice

- (AKAuthorizationLoginChoice)initWithUser:(id)a3 site:(id)a4
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
  v9.super_class = AKAuthorizationLoginChoice;
  v8 = [(AKAuthorizationLoginChoice *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_user, location[0]);
    objc_storeStrong(&v12->_site, v10);
    v12->_appleIDAuth = 0;
    v12->_createAppleID = 0;
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (AKAuthorizationLoginChoice)initWithCoder:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v15;
  v15 = 0;
  v13.receiver = v3;
  v13.super_class = AKAuthorizationLoginChoice;
  v12 = [(AKAuthorizationLoginChoice *)&v13 init];
  v15 = v12;
  objc_storeStrong(&v15, v12);
  if (v12)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_user"];
    user = v15->_user;
    v15->_user = v4;
    MEMORY[0x1E69E5920](user);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_site"];
    site = v15->_site;
    v15->_site = v6;
    MEMORY[0x1E69E5920](site);
    v8 = [location[0] decodeBoolForKey:@"_appleIDAuth"];
    v15->_appleIDAuth = v8;
    v9 = [location[0] decodeBoolForKey:@"_createAppleID"];
    v15->_createAppleID = v9;
  }

  v11 = MEMORY[0x1E69E5928](v15);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_user forKey:@"_user"];
  [location[0] encodeObject:v4->_site forKey:@"_site"];
  [location[0] encodeBool:v4->_appleIDAuth forKey:@"_appleIDAuth"];
  [location[0] encodeBool:v4->_createAppleID forKey:@"_createAppleID"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = self;
  v9[2] = a2;
  v9[1] = a3;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSString *)v10->_user copy];
  v4 = *(v9[0] + 2);
  *(v9[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v10->_site copy];
  v6 = *(v9[0] + 3);
  *(v9[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  *(v9[0] + 8) = v10->_appleIDAuth;
  *(v9[0] + 9) = v10->_createAppleID;
  v8 = MEMORY[0x1E69E5928](v9[0]);
  objc_storeStrong(v9, 0);
  return v8;
}

- (id)description
{
  v2 = @"YES";
  if (!self->_appleIDAuth)
  {
    v2 = @"NO";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"AKAuthorizationLoginChoice:\nUser: %@    Site: %@    AppleIDAuth: %@", self->_user, self->_site, v2];
}

@end
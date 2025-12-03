@interface AKAuthorizationLoginChoice
- (AKAuthorizationLoginChoice)initWithCoder:(id)coder;
- (AKAuthorizationLoginChoice)initWithUser:(id)user site:(id)site;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationLoginChoice

- (AKAuthorizationLoginChoice)initWithUser:(id)user site:(id)site
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, user);
  v10 = 0;
  objc_storeStrong(&v10, site);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKAuthorizationLoginChoice;
  v8 = [(AKAuthorizationLoginChoice *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_user, location[0]);
    objc_storeStrong(&selfCopy->_site, v10);
    selfCopy->_appleIDAuth = 0;
    selfCopy->_createAppleID = 0;
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKAuthorizationLoginChoice)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v13.receiver = v3;
  v13.super_class = AKAuthorizationLoginChoice;
  v12 = [(AKAuthorizationLoginChoice *)&v13 init];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_user"];
    user = selfCopy->_user;
    selfCopy->_user = v4;
    MEMORY[0x1E69E5920](user);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_site"];
    site = selfCopy->_site;
    selfCopy->_site = v6;
    MEMORY[0x1E69E5920](site);
    v8 = [location[0] decodeBoolForKey:@"_appleIDAuth"];
    selfCopy->_appleIDAuth = v8;
    v9 = [location[0] decodeBoolForKey:@"_createAppleID"];
    selfCopy->_createAppleID = v9;
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
  [location[0] encodeObject:selfCopy->_user forKey:@"_user"];
  [location[0] encodeObject:selfCopy->_site forKey:@"_site"];
  [location[0] encodeBool:selfCopy->_appleIDAuth forKey:@"_appleIDAuth"];
  [location[0] encodeBool:selfCopy->_createAppleID forKey:@"_createAppleID"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v9[2] = a2;
  v9[1] = zone;
  v9[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_user copy];
  v4 = *(v9[0] + 2);
  *(v9[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_site copy];
  v6 = *(v9[0] + 3);
  *(v9[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  *(v9[0] + 8) = selfCopy->_appleIDAuth;
  *(v9[0] + 9) = selfCopy->_createAppleID;
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
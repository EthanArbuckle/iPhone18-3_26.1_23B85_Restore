@interface AKPasswordCredential
- (AKPasswordCredential)initWithCoder:(id)coder;
- (AKPasswordCredential)initWithUser:(id)user password:(id)password;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKPasswordCredential

- (AKPasswordCredential)initWithUser:(id)user password:(id)password
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, user);
  v10 = 0;
  objc_storeStrong(&v10, password);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKPasswordCredential;
  v8 = [(AKPasswordCredential *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_userIdentifier, location[0]);
    objc_storeStrong(&selfCopy->_password, v10);
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_userIdentifier forKey:@"_userIdentifier"];
  [location[0] encodeObject:selfCopy->_password forKey:@"_password"];
  objc_storeStrong(location, 0);
}

- (AKPasswordCredential)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v11.receiver = v3;
  v11.super_class = AKPasswordCredential;
  v10 = [(AKPasswordCredential *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v4 = [location[0] decodeObjectForKey:@"_userIdentifier"];
    userIdentifier = selfCopy->_userIdentifier;
    selfCopy->_userIdentifier = v4;
    MEMORY[0x1E69E5920](userIdentifier);
    v6 = [location[0] decodeObjectForKey:@"_password"];
    password = selfCopy->_password;
    selfCopy->_password = v6;
    MEMORY[0x1E69E5920](password);
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

@end
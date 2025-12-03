@interface AKAuthorizationSharedAccountLoginChoice
- (AKAuthorizationSharedAccountLoginChoice)initWithCoder:(id)coder;
- (AKAuthorizationSharedAccountLoginChoice)initWithSignInWithAppleAccount:(id)account;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationSharedAccountLoginChoice

- (AKAuthorizationSharedAccountLoginChoice)initWithSignInWithAppleAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  shareInfo = [location[0] shareInfo];
  participantName = [shareInfo participantName];
  v13 = 0;
  v11 = 0;
  if (participantName)
  {
    v3 = MEMORY[0x1E69E5928](participantName);
  }

  else
  {
    shareInfo2 = [location[0] shareInfo];
    v13 = 1;
    participantHandle = [shareInfo2 participantHandle];
    v11 = 1;
    v3 = MEMORY[0x1E69E5928](participantHandle);
  }

  v15 = v3;
  if (v11)
  {
    MEMORY[0x1E69E5920](participantHandle);
  }

  if (v13)
  {
    MEMORY[0x1E69E5920](shareInfo2);
  }

  MEMORY[0x1E69E5920](participantName);
  MEMORY[0x1E69E5920](shareInfo);
  v6 = selfCopy;
  clientID = [location[0] clientID];
  selfCopy = 0;
  v10.receiver = v6;
  v10.super_class = AKAuthorizationSharedAccountLoginChoice;
  selfCopy = [(AKAuthorizationLoginChoice *)&v10 initWithUser:v15 site:?];
  objc_storeStrong(&selfCopy, selfCopy);
  MEMORY[0x1E69E5920](clientID);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_sharedAccount, location[0]);
    [(AKAuthorizationLoginChoice *)selfCopy setAppleIDAuth:1];
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKAuthorizationSharedAccountLoginChoice)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = AKAuthorizationSharedAccountLoginChoice;
  selfCopy = [(AKAuthorizationLoginChoice *)&v8 initWithCoder:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"sharedAccount"];
    sharedAccount = selfCopy->_sharedAccount;
    selfCopy->_sharedAccount = v4;
    MEMORY[0x1E69E5920](sharedAccount);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
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
  v3.receiver = selfCopy;
  v3.super_class = AKAuthorizationSharedAccountLoginChoice;
  [(AKAuthorizationLoginChoice *)&v3 encodeWithCoder:location[0]];
  [location[0] encodeObject:selfCopy->_sharedAccount forKey:@"sharedAccount"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v8[2] = a2;
  v8[1] = zone;
  v7.receiver = self;
  v7.super_class = AKAuthorizationSharedAccountLoginChoice;
  v8[0] = [(AKAuthorizationLoginChoice *)&v7 copyWithZone:zone];
  v3 = [(AKSignInWithAppleAccount *)selfCopy->_sharedAccount copy];
  v4 = *(v8[0] + 4);
  *(v8[0] + 4) = v3;
  MEMORY[0x1E69E5920](v4);
  v6 = MEMORY[0x1E69E5928](v8[0]);
  objc_storeStrong(v8, 0);
  return v6;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v5 = NSStringFromClass(v2);
  v6 = [v4 stringWithFormat:@"<%@: %p {\n\tsharedAccount: %@, \n}>", v5, self, self->_sharedAccount];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

@end
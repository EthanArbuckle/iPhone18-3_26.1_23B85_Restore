@interface AKAuthorizationCredentialStateRequest
- (AKAuthorizationCredentialStateRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationCredentialStateRequest

- (AKAuthorizationCredentialStateRequest)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v15.receiver = v3;
  v15.super_class = AKAuthorizationCredentialStateRequest;
  v14 = [(AKAuthorizationCredentialStateRequest *)&v15 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userID"];
    userID = selfCopy->_userID;
    selfCopy->_userID = v4;
    MEMORY[0x1E69E5920](userID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientID"];
    clientID = selfCopy->_clientID;
    selfCopy->_clientID = v6;
    MEMORY[0x1E69E5920](clientID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_teamID"];
    teamID = selfCopy->_teamID;
    selfCopy->_teamID = v8;
    MEMORY[0x1E69E5920](teamID);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v10;
    MEMORY[0x1E69E5920](altDSID);
  }

  v13 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_userID forKey:@"_userID"];
  [location[0] encodeObject:selfCopy->_clientID forKey:@"_clientID"];
  [location[0] encodeObject:selfCopy->_teamID forKey:@"_teamID"];
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  objc_storeStrong(location, 0);
}

@end
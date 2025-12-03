@interface AKCircleRequestContext
- (AKCircleRequestContext)init;
- (AKCircleRequestContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKCircleRequestContext

- (AKCircleRequestContext)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = AKCircleRequestContext;
  v4 = [(AKCircleRequestContext *)&v5 init];
  v7 = v4;
  objc_storeStrong(&v7, v4);
  if (v4)
  {
    v7->_waitForReply = 1;
    v7->__notifyOfTimeout = 1;
  }

  v3 = MEMORY[0x1E69E5928](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

- (AKCircleRequestContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v20.receiver = v3;
  v20.super_class = AKCircleRequestContext;
  v19 = [(AKCircleRequestContext *)&v20 init];
  selfCopy = v19;
  objc_storeStrong(&selfCopy, v19);
  if (v19)
  {
    v4 = [location[0] decodeBoolForKey:@"_waitForReply"];
    selfCopy->_waitForReply = v4;
    v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identityTokenValue"];
    identityTokenValue = selfCopy->_identityTokenValue;
    selfCopy->_identityTokenValue = v5;
    MEMORY[0x1E69E5920](identityTokenValue);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_heartbeatTokenValue"];
    heartbeatTokenValue = selfCopy->_heartbeatTokenValue;
    selfCopy->_heartbeatTokenValue = v7;
    MEMORY[0x1E69E5920](heartbeatTokenValue);
    v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_pushToken"];
    pushToken = selfCopy->_pushToken;
    selfCopy->_pushToken = v9;
    MEMORY[0x1E69E5920](pushToken);
    v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_payload"];
    payload = selfCopy->_payload;
    selfCopy->_payload = v11;
    MEMORY[0x1E69E5920](payload);
    [location[0] decodeDoubleForKey:@"_waitForReplyTimeout"];
    selfCopy->_waitForReplyTimeout = v13;
    v14 = [location[0] decodeBoolForKey:@"__notifyOfTimeout"];
    selfCopy->__notifyOfTimeout = v14;
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authContext"];
    authContext = selfCopy->_authContext;
    selfCopy->_authContext = v15;
    MEMORY[0x1E69E5920](authContext);
  }

  v18 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeBool:selfCopy->_waitForReply forKey:@"_waitForReply"];
  [location[0] encodeObject:selfCopy->_identityTokenValue forKey:@"_identityTokenValue"];
  [location[0] encodeObject:selfCopy->_heartbeatTokenValue forKey:@"_heartbeatTokenValue"];
  [location[0] encodeObject:selfCopy->_pushToken forKey:@"_pushToken"];
  [location[0] encodeObject:selfCopy->_payload forKey:@"_payload"];
  [location[0] encodeDouble:@"_waitForReplyTimeout" forKey:selfCopy->_waitForReplyTimeout];
  [location[0] encodeBool:selfCopy->__notifyOfTimeout forKey:@"__notifyOfTimeout"];
  [location[0] encodeObject:selfCopy->_authContext forKey:@"_authContext"];
  objc_storeStrong(location, 0);
}

@end
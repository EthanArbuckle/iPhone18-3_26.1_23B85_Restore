@interface AKCircleRequestContext
- (AKCircleRequestContext)init;
- (AKCircleRequestContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (AKCircleRequestContext)initWithCoder:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v22;
  v22 = 0;
  v20.receiver = v3;
  v20.super_class = AKCircleRequestContext;
  v19 = [(AKCircleRequestContext *)&v20 init];
  v22 = v19;
  objc_storeStrong(&v22, v19);
  if (v19)
  {
    v4 = [location[0] decodeBoolForKey:@"_waitForReply"];
    v22->_waitForReply = v4;
    v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_identityTokenValue"];
    identityTokenValue = v22->_identityTokenValue;
    v22->_identityTokenValue = v5;
    MEMORY[0x1E69E5920](identityTokenValue);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_heartbeatTokenValue"];
    heartbeatTokenValue = v22->_heartbeatTokenValue;
    v22->_heartbeatTokenValue = v7;
    MEMORY[0x1E69E5920](heartbeatTokenValue);
    v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_pushToken"];
    pushToken = v22->_pushToken;
    v22->_pushToken = v9;
    MEMORY[0x1E69E5920](pushToken);
    v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_payload"];
    payload = v22->_payload;
    v22->_payload = v11;
    MEMORY[0x1E69E5920](payload);
    [location[0] decodeDoubleForKey:@"_waitForReplyTimeout"];
    v22->_waitForReplyTimeout = v13;
    v14 = [location[0] decodeBoolForKey:@"__notifyOfTimeout"];
    v22->__notifyOfTimeout = v14;
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authContext"];
    authContext = v22->_authContext;
    v22->_authContext = v15;
    MEMORY[0x1E69E5920](authContext);
  }

  v18 = MEMORY[0x1E69E5928](v22);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeBool:v4->_waitForReply forKey:@"_waitForReply"];
  [location[0] encodeObject:v4->_identityTokenValue forKey:@"_identityTokenValue"];
  [location[0] encodeObject:v4->_heartbeatTokenValue forKey:@"_heartbeatTokenValue"];
  [location[0] encodeObject:v4->_pushToken forKey:@"_pushToken"];
  [location[0] encodeObject:v4->_payload forKey:@"_payload"];
  [location[0] encodeDouble:@"_waitForReplyTimeout" forKey:v4->_waitForReplyTimeout];
  [location[0] encodeBool:v4->__notifyOfTimeout forKey:@"__notifyOfTimeout"];
  [location[0] encodeObject:v4->_authContext forKey:@"_authContext"];
  objc_storeStrong(location, 0);
}

@end
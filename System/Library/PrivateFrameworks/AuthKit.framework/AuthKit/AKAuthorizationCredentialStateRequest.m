@interface AKAuthorizationCredentialStateRequest
- (AKAuthorizationCredentialStateRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAuthorizationCredentialStateRequest

- (AKAuthorizationCredentialStateRequest)initWithCoder:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v17;
  v17 = 0;
  v15.receiver = v3;
  v15.super_class = AKAuthorizationCredentialStateRequest;
  v14 = [(AKAuthorizationCredentialStateRequest *)&v15 init];
  v17 = v14;
  objc_storeStrong(&v17, v14);
  if (v14)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userID"];
    userID = v17->_userID;
    v17->_userID = v4;
    MEMORY[0x1E69E5920](userID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientID"];
    clientID = v17->_clientID;
    v17->_clientID = v6;
    MEMORY[0x1E69E5920](clientID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_teamID"];
    teamID = v17->_teamID;
    v17->_teamID = v8;
    MEMORY[0x1E69E5920](teamID);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v17->_altDSID;
    v17->_altDSID = v10;
    MEMORY[0x1E69E5920](altDSID);
  }

  v13 = MEMORY[0x1E69E5928](v17);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_userID forKey:@"_userID"];
  [location[0] encodeObject:v4->_clientID forKey:@"_clientID"];
  [location[0] encodeObject:v4->_teamID forKey:@"_teamID"];
  [location[0] encodeObject:v4->_altDSID forKey:@"_altDSID"];
  objc_storeStrong(location, 0);
}

@end
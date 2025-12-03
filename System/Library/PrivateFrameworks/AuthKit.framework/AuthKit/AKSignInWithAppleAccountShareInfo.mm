@interface AKSignInWithAppleAccountShareInfo
- (AKSignInWithAppleAccountShareInfo)initWithCoder:(id)coder;
- (AKSignInWithAppleAccountShareInfo)initWithGroupID:(id)d participantID:(id)iD;
- (AKSignInWithAppleAccountShareInfo)initWithGroupID:(id)d participantID:(id)iD participantName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKSignInWithAppleAccountShareInfo

- (AKSignInWithAppleAccountShareInfo)initWithGroupID:(id)d participantID:(id)iD participantName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v12 = 0;
  objc_storeStrong(&v12, iD);
  v11 = 0;
  objc_storeStrong(&v11, name);
  v5 = selfCopy;
  selfCopy = 0;
  v10.receiver = v5;
  v10.super_class = AKSignInWithAppleAccountShareInfo;
  selfCopy = [(AKSignInWithAppleAccountShareInfo *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_groupID, location[0]);
    objc_storeStrong(&selfCopy->_participantID, v12);
    objc_storeStrong(&selfCopy->_participantName, v11);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKSignInWithAppleAccountShareInfo)initWithGroupID:(id)d participantID:(id)iD
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v8 = 0;
  objc_storeStrong(&v8, iD);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKSignInWithAppleAccountShareInfo *)v4 initWithGroupID:location[0] participantID:v8 participantName:&stru_1F0781300];
  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKSignInWithAppleAccountShareInfo)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v15.receiver = v3;
  v15.super_class = AKSignInWithAppleAccountShareInfo;
  selfCopy = [(AKSignInWithAppleAccountShareInfo *)&v15 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = selfCopy->_groupID;
    selfCopy->_groupID = v4;
    MEMORY[0x1E69E5920](groupID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"participantID"];
    participantID = selfCopy->_participantID;
    selfCopy->_participantID = v6;
    MEMORY[0x1E69E5920](participantID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"participantName"];
    participantName = selfCopy->_participantName;
    selfCopy->_participantName = v8;
    MEMORY[0x1E69E5920](participantName);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"participantHandle"];
    participantHandle = selfCopy->_participantHandle;
    selfCopy->_participantHandle = v10;
    MEMORY[0x1E69E5920](participantHandle);
    v12 = [location[0] decodeBoolForKey:@"isCurrentUser"];
    selfCopy->_isCurrentUser = v12;
  }

  v14 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_groupID forKey:@"groupID"];
  [location[0] encodeObject:selfCopy->_participantID forKey:@"participantID"];
  [location[0] encodeObject:selfCopy->_participantName forKey:@"participantName"];
  [location[0] encodeObject:selfCopy->_participantHandle forKey:@"participantHandle"];
  [location[0] encodeBool:selfCopy->_isCurrentUser forKey:@"isCurrentUser"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v13[2] = a2;
  v13[1] = zone;
  v13[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_groupID copy];
  v4 = *(v13[0] + 2);
  *(v13[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_participantID copy];
  v6 = *(v13[0] + 3);
  *(v13[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_participantName copy];
  v8 = *(v13[0] + 4);
  *(v13[0] + 4) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)selfCopy->_participantHandle copy];
  v10 = *(v13[0] + 5);
  *(v13[0] + 5) = v9;
  MEMORY[0x1E69E5920](v10);
  *(v13[0] + 8) = selfCopy->_isCurrentUser;
  v12 = MEMORY[0x1E69E5928](v13[0]);
  objc_storeStrong(v13, 0);
  return v12;
}

- (id)description
{
  v6 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v7 = v3;
  v4 = @"YES";
  if (!self->_isCurrentUser)
  {
    v4 = @"NO";
  }

  v8 = [v6 stringWithFormat:@"<%@: %p {\n\tgroupID: %@, \n\tparticipantID: %@, \n\tparticipantHandle: %@, \n\tisCurrentUser: %@, \n}>", v3, self, self->_groupID, self->_participantID, self->_participantHandle, v4];
  MEMORY[0x1E69E5920](v7);

  return v8;
}

@end
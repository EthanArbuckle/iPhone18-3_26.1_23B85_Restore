@interface AKSignInWithAppleAccountShareInfo
- (AKSignInWithAppleAccountShareInfo)initWithCoder:(id)a3;
- (AKSignInWithAppleAccountShareInfo)initWithGroupID:(id)a3 participantID:(id)a4;
- (AKSignInWithAppleAccountShareInfo)initWithGroupID:(id)a3 participantID:(id)a4 participantName:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKSignInWithAppleAccountShareInfo

- (AKSignInWithAppleAccountShareInfo)initWithGroupID:(id)a3 participantID:(id)a4 participantName:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v5 = v14;
  v14 = 0;
  v10.receiver = v5;
  v10.super_class = AKSignInWithAppleAccountShareInfo;
  v14 = [(AKSignInWithAppleAccountShareInfo *)&v10 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    objc_storeStrong(&v14->_groupID, location[0]);
    objc_storeStrong(&v14->_participantID, v12);
    objc_storeStrong(&v14->_participantName, v11);
  }

  v7 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (AKSignInWithAppleAccountShareInfo)initWithGroupID:(id)a3 participantID:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(AKSignInWithAppleAccountShareInfo *)v4 initWithGroupID:location[0] participantID:v8 participantName:&stru_1F0781300];
  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (AKSignInWithAppleAccountShareInfo)initWithCoder:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v17;
  v17 = 0;
  v15.receiver = v3;
  v15.super_class = AKSignInWithAppleAccountShareInfo;
  v17 = [(AKSignInWithAppleAccountShareInfo *)&v15 init];
  objc_storeStrong(&v17, v17);
  if (v17)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v17->_groupID;
    v17->_groupID = v4;
    MEMORY[0x1E69E5920](groupID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"participantID"];
    participantID = v17->_participantID;
    v17->_participantID = v6;
    MEMORY[0x1E69E5920](participantID);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"participantName"];
    participantName = v17->_participantName;
    v17->_participantName = v8;
    MEMORY[0x1E69E5920](participantName);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"participantHandle"];
    participantHandle = v17->_participantHandle;
    v17->_participantHandle = v10;
    MEMORY[0x1E69E5920](participantHandle);
    v12 = [location[0] decodeBoolForKey:@"isCurrentUser"];
    v17->_isCurrentUser = v12;
  }

  v14 = MEMORY[0x1E69E5928](v17);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_groupID forKey:@"groupID"];
  [location[0] encodeObject:v4->_participantID forKey:@"participantID"];
  [location[0] encodeObject:v4->_participantName forKey:@"participantName"];
  [location[0] encodeObject:v4->_participantHandle forKey:@"participantHandle"];
  [location[0] encodeBool:v4->_isCurrentUser forKey:@"isCurrentUser"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14 = self;
  v13[2] = a2;
  v13[1] = a3;
  v13[0] = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSString *)v14->_groupID copy];
  v4 = *(v13[0] + 2);
  *(v13[0] + 2) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)v14->_participantID copy];
  v6 = *(v13[0] + 3);
  *(v13[0] + 3) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v14->_participantName copy];
  v8 = *(v13[0] + 4);
  *(v13[0] + 4) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)v14->_participantHandle copy];
  v10 = *(v13[0] + 5);
  *(v13[0] + 5) = v9;
  MEMORY[0x1E69E5920](v10);
  *(v13[0] + 8) = v14->_isCurrentUser;
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
@interface AKCompanionKeyEnvelope
- (AKCompanionKeyEnvelope)initWithAltDSID:(id)d machineID:(id)iD continuationKey:(id)key passwordResetKey:(id)resetKey;
- (AKCompanionKeyEnvelope)initWithCoder:(id)coder;
- (AKCompanionKeyEnvelope)initWithUsername:(id)username altDSID:(id)d machineID:(id)iD continuationKey:(id)key passwordResetKey:(id)resetKey;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKCompanionKeyEnvelope

- (AKCompanionKeyEnvelope)initWithUsername:(id)username altDSID:(id)d machineID:(id)iD continuationKey:(id)key passwordResetKey:(id)resetKey
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v18 = 0;
  objc_storeStrong(&v18, d);
  v17 = 0;
  objc_storeStrong(&v17, iD);
  v16 = 0;
  objc_storeStrong(&v16, key);
  v15 = 0;
  objc_storeStrong(&v15, resetKey);
  v7 = selfCopy;
  selfCopy = 0;
  v14.receiver = v7;
  v14.super_class = AKCompanionKeyEnvelope;
  selfCopy = [(AKCompanionKeyEnvelope *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_username, location[0]);
    objc_storeStrong(&selfCopy->_altDSID, v18);
    objc_storeStrong(&selfCopy->_machineID, v17);
    objc_storeStrong(&selfCopy->_continuationKey, v16);
    objc_storeStrong(&selfCopy->_passwordResetKey, v15);
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (AKCompanionKeyEnvelope)initWithAltDSID:(id)d machineID:(id)iD continuationKey:(id)key passwordResetKey:(id)resetKey
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v14 = 0;
  objc_storeStrong(&v14, iD);
  v13 = 0;
  objc_storeStrong(&v13, key);
  v12 = 0;
  objc_storeStrong(&v12, resetKey);
  v6 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKCompanionKeyEnvelope *)v6 initWithUsername:0 altDSID:location[0] machineID:v14 continuationKey:v13 passwordResetKey:v12];
  v11 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (AKCompanionKeyEnvelope)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v13 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"username"];
  v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
  v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"machineID"];
  v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"continuationKey"];
  v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"passwordResetKey"];
  if (!v12 || !v11 || !v10 || !v9)
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v16, location[0]);
      _os_log_error_impl(&dword_193225000, v8, OS_LOG_TYPE_ERROR, "Failed to decode companion key envelope with coder (%@)", v16, 0xCu);
    }

    objc_storeStrong(&v8, 0);
    v6 = location[0];
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [v6 failWithError:?];
    MEMORY[0x1E69E5920](v7);
  }

  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(AKCompanionKeyEnvelope *)v3 initWithUsername:v13 altDSID:v12 machineID:v11 continuationKey:v10 passwordResetKey:v9];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = location[0];
  username = [(AKCompanionKeyEnvelope *)selfCopy username];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](username);
  v5 = location[0];
  altDSID = [(AKCompanionKeyEnvelope *)selfCopy altDSID];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](altDSID);
  v7 = location[0];
  machineID = [(AKCompanionKeyEnvelope *)selfCopy machineID];
  [v7 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](machineID);
  v9 = location[0];
  continuationKey = [(AKCompanionKeyEnvelope *)selfCopy continuationKey];
  [v9 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](continuationKey);
  v11 = location[0];
  passwordResetKey = [(AKCompanionKeyEnvelope *)selfCopy passwordResetKey];
  [v11 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](passwordResetKey);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AKCompanionKeyEnvelope alloc];
  username = [(AKCompanionKeyEnvelope *)self username];
  v13 = [(NSString *)username copy];
  altDSID = [(AKCompanionKeyEnvelope *)self altDSID];
  v11 = [(NSString *)altDSID copy];
  machineID = [(AKCompanionKeyEnvelope *)self machineID];
  v9 = [(NSString *)machineID copy];
  continuationKey = [(AKCompanionKeyEnvelope *)self continuationKey];
  v7 = [(NSString *)continuationKey copy];
  passwordResetKey = [(AKCompanionKeyEnvelope *)self passwordResetKey];
  v5 = [(NSString *)passwordResetKey copy];
  v15 = [(AKCompanionKeyEnvelope *)v4 initWithUsername:v13 altDSID:v11 machineID:v9 continuationKey:v7 passwordResetKey:?];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](passwordResetKey);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](continuationKey);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](machineID);
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](altDSID);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](username);
  return v15;
}

@end
@interface AKCompanionKeyEnvelope
- (AKCompanionKeyEnvelope)initWithAltDSID:(id)a3 machineID:(id)a4 continuationKey:(id)a5 passwordResetKey:(id)a6;
- (AKCompanionKeyEnvelope)initWithCoder:(id)a3;
- (AKCompanionKeyEnvelope)initWithUsername:(id)a3 altDSID:(id)a4 machineID:(id)a5 continuationKey:(id)a6 passwordResetKey:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKCompanionKeyEnvelope

- (AKCompanionKeyEnvelope)initWithUsername:(id)a3 altDSID:(id)a4 machineID:(id)a5 continuationKey:(id)a6 passwordResetKey:(id)a7
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v15 = 0;
  objc_storeStrong(&v15, a7);
  v7 = v20;
  v20 = 0;
  v14.receiver = v7;
  v14.super_class = AKCompanionKeyEnvelope;
  v20 = [(AKCompanionKeyEnvelope *)&v14 init];
  objc_storeStrong(&v20, v20);
  if (v20)
  {
    objc_storeStrong(&v20->_username, location[0]);
    objc_storeStrong(&v20->_altDSID, v18);
    objc_storeStrong(&v20->_machineID, v17);
    objc_storeStrong(&v20->_continuationKey, v16);
    objc_storeStrong(&v20->_passwordResetKey, v15);
  }

  v9 = MEMORY[0x1E69E5928](v20);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v9;
}

- (AKCompanionKeyEnvelope)initWithAltDSID:(id)a3 machineID:(id)a4 continuationKey:(id)a5 passwordResetKey:(id)a6
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v12 = 0;
  objc_storeStrong(&v12, a6);
  v6 = v16;
  v16 = 0;
  v16 = [(AKCompanionKeyEnvelope *)v6 initWithUsername:0 altDSID:location[0] machineID:v14 continuationKey:v13 passwordResetKey:v12];
  v11 = MEMORY[0x1E69E5928](v16);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v11;
}

- (AKCompanionKeyEnvelope)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

  v3 = v15;
  v15 = 0;
  v15 = [(AKCompanionKeyEnvelope *)v3 initWithUsername:v13 altDSID:v12 machineID:v11 continuationKey:v10 passwordResetKey:v9];
  v5 = MEMORY[0x1E69E5928](v15);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(AKCompanionKeyEnvelope *)v14 username];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  v5 = location[0];
  v6 = [(AKCompanionKeyEnvelope *)v14 altDSID];
  [v5 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v6);
  v7 = location[0];
  v8 = [(AKCompanionKeyEnvelope *)v14 machineID];
  [v7 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v8);
  v9 = location[0];
  v10 = [(AKCompanionKeyEnvelope *)v14 continuationKey];
  [v9 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v10);
  v11 = location[0];
  v12 = [(AKCompanionKeyEnvelope *)v14 passwordResetKey];
  [v11 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v12);
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AKCompanionKeyEnvelope alloc];
  v14 = [(AKCompanionKeyEnvelope *)self username];
  v13 = [(NSString *)v14 copy];
  v12 = [(AKCompanionKeyEnvelope *)self altDSID];
  v11 = [(NSString *)v12 copy];
  v10 = [(AKCompanionKeyEnvelope *)self machineID];
  v9 = [(NSString *)v10 copy];
  v8 = [(AKCompanionKeyEnvelope *)self continuationKey];
  v7 = [(NSString *)v8 copy];
  v6 = [(AKCompanionKeyEnvelope *)self passwordResetKey];
  v5 = [(NSString *)v6 copy];
  v15 = [(AKCompanionKeyEnvelope *)v4 initWithUsername:v13 altDSID:v11 machineID:v9 continuationKey:v7 passwordResetKey:?];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v14);
  return v15;
}

@end
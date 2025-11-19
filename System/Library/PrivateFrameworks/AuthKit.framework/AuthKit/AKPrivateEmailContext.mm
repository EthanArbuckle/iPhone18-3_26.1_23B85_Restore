@interface AKPrivateEmailContext
- (AKPrivateEmailContext)initWithCoder:(id)a3;
- (AKPrivateEmailContext)initWithContext:(id)a3 bundleID:(id)a4;
- (AKPrivateEmailContext)initWithContext:(id)a3 client:(id)a4;
- (AKPrivateEmailContext)initWithKey:(id)a3;
- (AKPrivateEmailContext)initWithKey:(id)a3 altDSID:(id)a4;
- (AKPrivateEmailContext)initWithKey:(id)a3 altDSID:(id)a4 clientAppBundleId:(id)a5;
- (AKPrivateEmailContext)initWithKey:(id)a3 altDSID:(id)a4 originType:(id)a5 originIdentifier:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)sanitiseInternalState;
@end

@implementation AKPrivateEmailContext

- (AKPrivateEmailContext)initWithKey:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = v9;
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKPrivateEmailContext;
  v9 = [(AKPrivateEmailContext *)&v7 init];
  if (v6 == v9)
  {
    objc_storeStrong(&v9->_key, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (AKPrivateEmailContext)initWithKey:(id)a3 altDSID:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v8 = v12;
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKPrivateEmailContext;
  v12 = [(AKPrivateEmailContext *)&v9 init];
  if (v8 == v12)
  {
    objc_storeStrong(&v12->_key, location[0]);
    objc_storeStrong(&v12->_altDSID, v10);
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (AKPrivateEmailContext)initWithKey:(id)a3 altDSID:(id)a4 clientAppBundleId:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v10 = v15;
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = AKPrivateEmailContext;
  v15 = [(AKPrivateEmailContext *)&v11 init];
  if (v10 == v15)
  {
    objc_storeStrong(&v15->_key, location[0]);
    objc_storeStrong(&v15->_altDSID, v13);
    objc_storeStrong(&v15->_clientAppBundleId, v12);
    objc_storeStrong(&v15->_originType, @"ThirdPartyApp");
    objc_storeStrong(&v15->_originIdentifier, v12);
  }

  v7 = MEMORY[0x1E69E5928](v15);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (AKPrivateEmailContext)initWithKey:(id)a3 altDSID:(id)a4 originType:(id)a5 originIdentifier:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v12 = v18;
  v6 = v18;
  v18 = 0;
  v13.receiver = v6;
  v13.super_class = AKPrivateEmailContext;
  v18 = [(AKPrivateEmailContext *)&v13 init];
  if (v12 == v18)
  {
    objc_storeStrong(&v18->_key, location[0]);
    objc_storeStrong(&v18->_altDSID, v16);
    objc_storeStrong(&v18->_originType, v15);
    objc_storeStrong(&v18->_originIdentifier, v14);
  }

  v8 = MEMORY[0x1E69E5928](v18);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v8;
}

- (AKPrivateEmailContext)initWithContext:(id)a3 client:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v12 = [location[0] upgradeBundleIdentifier];
  MEMORY[0x1E69E5920](v12);
  if (v12)
  {
    v10 = v16;
    v9 = location[0];
    v11 = [location[0] upgradeBundleIdentifier];
    v16 = 0;
    v16 = [(AKPrivateEmailContext *)v10 initWithContext:v9 bundleID:?];
    objc_storeStrong(&v16, v16);
    MEMORY[0x1E69E5920](v11);
  }

  else
  {
    v7 = v16;
    v6 = location[0];
    v8 = [v14 bundleID];
    v16 = 0;
    v16 = [(AKPrivateEmailContext *)v7 initWithContext:v6 bundleID:?];
    objc_storeStrong(&v16, v16);
    MEMORY[0x1E69E5920](v8);
  }

  v5 = MEMORY[0x1E69E5928](v16);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v5;
}

- (AKPrivateEmailContext)initWithContext:(id)a3 bundleID:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v4 = v30;
  v30 = 0;
  v27.receiver = v4;
  v27.super_class = AKPrivateEmailContext;
  v25 = [(AKPrivateEmailContext *)&v27 init];
  v30 = v25;
  objc_storeStrong(&v30, v25);
  if (v25)
  {
    v5 = [location[0] key];
    key = v30->_key;
    v30->_key = v5;
    MEMORY[0x1E69E5920](key);
    v7 = [location[0] altDSID];
    altDSID = v30->_altDSID;
    v30->_altDSID = v7;
    MEMORY[0x1E69E5920](altDSID);
    v9 = [location[0] clientAppBundleId];
    clientAppBundleId = v30->_clientAppBundleId;
    v30->_clientAppBundleId = v9;
    MEMORY[0x1E69E5920](clientAppBundleId);
    v11 = [location[0] proxiedAppID];
    proxiedAppID = v30->_proxiedAppID;
    v30->_proxiedAppID = v11;
    MEMORY[0x1E69E5920](proxiedAppID);
    v13 = [location[0] proxiedAppName];
    proxiedAppName = v30->_proxiedAppName;
    v30->_proxiedAppName = v13;
    MEMORY[0x1E69E5920](proxiedAppName);
    v15 = [location[0] proxiedBundleIdentifier];
    proxiedBundleIdentifier = v30->_proxiedBundleIdentifier;
    v30->_proxiedBundleIdentifier = v15;
    MEMORY[0x1E69E5920](proxiedBundleIdentifier);
    objc_storeStrong(&v30->_upgradeBundleIdentifier, v28);
    v17 = [location[0] originType];
    originType = v30->_originType;
    v30->_originType = v17;
    MEMORY[0x1E69E5920](originType);
    v19 = [location[0] originIdentifier];
    originIdentifier = v30->_originIdentifier;
    v30->_originIdentifier = v19;
    MEMORY[0x1E69E5920](originIdentifier);
    v21 = [location[0] metadataString];
    metadataString = v30->_metadataString;
    v30->_metadataString = v21;
    MEMORY[0x1E69E5920](metadataString);
  }

  v24 = MEMORY[0x1E69E5928](v30);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v30, 0);
  return v24;
}

- (void)sanitiseInternalState
{
  v2 = [(NSString *)self->_key lowercaseString];
  key = self->_key;
  self->_key = v2;
  MEMORY[0x1E69E5920](key);
  v4 = [(NSString *)self->_metadataString lowercaseString];
  metadataString = self->_metadataString;
  self->_metadataString = v4;
  MEMORY[0x1E69E5920](metadataString);
  v6 = [(NSString *)self->_originIdentifier lowercaseString];
  originIdentifier = self->_originIdentifier;
  self->_originIdentifier = v6;
  MEMORY[0x1E69E5920](originIdentifier);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_key forKey:@"contextKey"];
  [location[0] encodeObject:v4->_altDSID forKey:@"contextAltDSID"];
  [location[0] encodeObject:v4->_proxiedAppID forKey:@"contextProxiedApp"];
  [location[0] encodeObject:v4->_proxiedBundleIdentifier forKey:@"contextBundleID"];
  [location[0] encodeObject:v4->_proxiedAppName forKey:@"contextAppName"];
  [location[0] encodeObject:v4->_upgradeBundleIdentifier forKey:@"upgradeBundleID"];
  [location[0] encodeObject:v4->_clientAppBundleId forKey:@"privateEmailClientBundle"];
  [location[0] encodeObject:v4->_originType forKey:@"originType"];
  [location[0] encodeObject:v4->_originIdentifier forKey:@"originIdentifier"];
  [location[0] encodeObject:v4->_metadataString forKey:@"metadataString"];
  objc_storeStrong(location, 0);
}

- (AKPrivateEmailContext)initWithCoder:(id)a3
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v28;
  v28 = 0;
  v26 = [(AKPrivateEmailContext *)v3 init];
  v28 = v26;
  objc_storeStrong(&v28, v26);
  if (v26)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextAltDSID"];
    altDSID = v28->_altDSID;
    v28->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextKey"];
    key = v28->_key;
    v28->_key = v6;
    MEMORY[0x1E69E5920](key);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextProxiedApp"];
    proxiedAppID = v28->_proxiedAppID;
    v28->_proxiedAppID = v8;
    MEMORY[0x1E69E5920](proxiedAppID);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextBundleID"];
    proxiedBundleIdentifier = v28->_proxiedBundleIdentifier;
    v28->_proxiedBundleIdentifier = v10;
    MEMORY[0x1E69E5920](proxiedBundleIdentifier);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextAppName"];
    proxiedAppName = v28->_proxiedAppName;
    v28->_proxiedAppName = v12;
    MEMORY[0x1E69E5920](proxiedAppName);
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"upgradeBundleID"];
    upgradeBundleIdentifier = v28->_upgradeBundleIdentifier;
    v28->_upgradeBundleIdentifier = v14;
    MEMORY[0x1E69E5920](upgradeBundleIdentifier);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privateEmailClientBundle"];
    clientAppBundleId = v28->_clientAppBundleId;
    v28->_clientAppBundleId = v16;
    MEMORY[0x1E69E5920](clientAppBundleId);
    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"originType"];
    originType = v28->_originType;
    v28->_originType = v18;
    MEMORY[0x1E69E5920](originType);
    v20 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"originIdentifier"];
    originIdentifier = v28->_originIdentifier;
    v28->_originIdentifier = v20;
    MEMORY[0x1E69E5920](originIdentifier);
    v22 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"metadataString"];
    metadataString = v28->_metadataString;
    v28->_metadataString = v22;
    MEMORY[0x1E69E5920](metadataString);
  }

  v25 = MEMORY[0x1E69E5928](v28);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v28, 0);
  return v25;
}

@end
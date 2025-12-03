@interface AKPrivateEmailContext
- (AKPrivateEmailContext)initWithCoder:(id)coder;
- (AKPrivateEmailContext)initWithContext:(id)context bundleID:(id)d;
- (AKPrivateEmailContext)initWithContext:(id)context client:(id)client;
- (AKPrivateEmailContext)initWithKey:(id)key;
- (AKPrivateEmailContext)initWithKey:(id)key altDSID:(id)d;
- (AKPrivateEmailContext)initWithKey:(id)key altDSID:(id)d clientAppBundleId:(id)id;
- (AKPrivateEmailContext)initWithKey:(id)key altDSID:(id)d originType:(id)type originIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)sanitiseInternalState;
@end

@implementation AKPrivateEmailContext

- (AKPrivateEmailContext)initWithKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v6 = selfCopy;
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKPrivateEmailContext;
  selfCopy = [(AKPrivateEmailContext *)&v7 init];
  if (v6 == selfCopy)
  {
    objc_storeStrong(&selfCopy->_key, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKPrivateEmailContext)initWithKey:(id)key altDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v10 = 0;
  objc_storeStrong(&v10, d);
  v8 = selfCopy;
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKPrivateEmailContext;
  selfCopy = [(AKPrivateEmailContext *)&v9 init];
  if (v8 == selfCopy)
  {
    objc_storeStrong(&selfCopy->_key, location[0]);
    objc_storeStrong(&selfCopy->_altDSID, v10);
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (AKPrivateEmailContext)initWithKey:(id)key altDSID:(id)d clientAppBundleId:(id)id
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v13 = 0;
  objc_storeStrong(&v13, d);
  v12 = 0;
  objc_storeStrong(&v12, id);
  v10 = selfCopy;
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = AKPrivateEmailContext;
  selfCopy = [(AKPrivateEmailContext *)&v11 init];
  if (v10 == selfCopy)
  {
    objc_storeStrong(&selfCopy->_key, location[0]);
    objc_storeStrong(&selfCopy->_altDSID, v13);
    objc_storeStrong(&selfCopy->_clientAppBundleId, v12);
    objc_storeStrong(&selfCopy->_originType, @"ThirdPartyApp");
    objc_storeStrong(&selfCopy->_originIdentifier, v12);
  }

  v7 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKPrivateEmailContext)initWithKey:(id)key altDSID:(id)d originType:(id)type originIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v16 = 0;
  objc_storeStrong(&v16, d);
  v15 = 0;
  objc_storeStrong(&v15, type);
  v14 = 0;
  objc_storeStrong(&v14, identifier);
  v12 = selfCopy;
  v6 = selfCopy;
  selfCopy = 0;
  v13.receiver = v6;
  v13.super_class = AKPrivateEmailContext;
  selfCopy = [(AKPrivateEmailContext *)&v13 init];
  if (v12 == selfCopy)
  {
    objc_storeStrong(&selfCopy->_key, location[0]);
    objc_storeStrong(&selfCopy->_altDSID, v16);
    objc_storeStrong(&selfCopy->_originType, v15);
    objc_storeStrong(&selfCopy->_originIdentifier, v14);
  }

  v8 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (AKPrivateEmailContext)initWithContext:(id)context client:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, client);
  upgradeBundleIdentifier = [location[0] upgradeBundleIdentifier];
  MEMORY[0x1E69E5920](upgradeBundleIdentifier);
  if (upgradeBundleIdentifier)
  {
    v10 = selfCopy;
    v9 = location[0];
    upgradeBundleIdentifier2 = [location[0] upgradeBundleIdentifier];
    selfCopy = 0;
    selfCopy = [(AKPrivateEmailContext *)v10 initWithContext:v9 bundleID:?];
    objc_storeStrong(&selfCopy, selfCopy);
    MEMORY[0x1E69E5920](upgradeBundleIdentifier2);
  }

  else
  {
    v7 = selfCopy;
    v6 = location[0];
    bundleID = [v14 bundleID];
    selfCopy = 0;
    selfCopy = [(AKPrivateEmailContext *)v7 initWithContext:v6 bundleID:?];
    objc_storeStrong(&selfCopy, selfCopy);
    MEMORY[0x1E69E5920](bundleID);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (AKPrivateEmailContext)initWithContext:(id)context bundleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v28 = 0;
  objc_storeStrong(&v28, d);
  v4 = selfCopy;
  selfCopy = 0;
  v27.receiver = v4;
  v27.super_class = AKPrivateEmailContext;
  v25 = [(AKPrivateEmailContext *)&v27 init];
  selfCopy = v25;
  objc_storeStrong(&selfCopy, v25);
  if (v25)
  {
    v5 = [location[0] key];
    key = selfCopy->_key;
    selfCopy->_key = v5;
    MEMORY[0x1E69E5920](key);
    altDSID = [location[0] altDSID];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = altDSID;
    MEMORY[0x1E69E5920](altDSID);
    clientAppBundleId = [location[0] clientAppBundleId];
    clientAppBundleId = selfCopy->_clientAppBundleId;
    selfCopy->_clientAppBundleId = clientAppBundleId;
    MEMORY[0x1E69E5920](clientAppBundleId);
    proxiedAppID = [location[0] proxiedAppID];
    proxiedAppID = selfCopy->_proxiedAppID;
    selfCopy->_proxiedAppID = proxiedAppID;
    MEMORY[0x1E69E5920](proxiedAppID);
    proxiedAppName = [location[0] proxiedAppName];
    proxiedAppName = selfCopy->_proxiedAppName;
    selfCopy->_proxiedAppName = proxiedAppName;
    MEMORY[0x1E69E5920](proxiedAppName);
    proxiedBundleIdentifier = [location[0] proxiedBundleIdentifier];
    proxiedBundleIdentifier = selfCopy->_proxiedBundleIdentifier;
    selfCopy->_proxiedBundleIdentifier = proxiedBundleIdentifier;
    MEMORY[0x1E69E5920](proxiedBundleIdentifier);
    objc_storeStrong(&selfCopy->_upgradeBundleIdentifier, v28);
    originType = [location[0] originType];
    originType = selfCopy->_originType;
    selfCopy->_originType = originType;
    MEMORY[0x1E69E5920](originType);
    originIdentifier = [location[0] originIdentifier];
    originIdentifier = selfCopy->_originIdentifier;
    selfCopy->_originIdentifier = originIdentifier;
    MEMORY[0x1E69E5920](originIdentifier);
    metadataString = [location[0] metadataString];
    metadataString = selfCopy->_metadataString;
    selfCopy->_metadataString = metadataString;
    MEMORY[0x1E69E5920](metadataString);
  }

  v24 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v24;
}

- (void)sanitiseInternalState
{
  lowercaseString = [(NSString *)self->_key lowercaseString];
  key = self->_key;
  self->_key = lowercaseString;
  MEMORY[0x1E69E5920](key);
  lowercaseString2 = [(NSString *)self->_metadataString lowercaseString];
  metadataString = self->_metadataString;
  self->_metadataString = lowercaseString2;
  MEMORY[0x1E69E5920](metadataString);
  lowercaseString3 = [(NSString *)self->_originIdentifier lowercaseString];
  originIdentifier = self->_originIdentifier;
  self->_originIdentifier = lowercaseString3;
  MEMORY[0x1E69E5920](originIdentifier);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_key forKey:@"contextKey"];
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"contextAltDSID"];
  [location[0] encodeObject:selfCopy->_proxiedAppID forKey:@"contextProxiedApp"];
  [location[0] encodeObject:selfCopy->_proxiedBundleIdentifier forKey:@"contextBundleID"];
  [location[0] encodeObject:selfCopy->_proxiedAppName forKey:@"contextAppName"];
  [location[0] encodeObject:selfCopy->_upgradeBundleIdentifier forKey:@"upgradeBundleID"];
  [location[0] encodeObject:selfCopy->_clientAppBundleId forKey:@"privateEmailClientBundle"];
  [location[0] encodeObject:selfCopy->_originType forKey:@"originType"];
  [location[0] encodeObject:selfCopy->_originIdentifier forKey:@"originIdentifier"];
  [location[0] encodeObject:selfCopy->_metadataString forKey:@"metadataString"];
  objc_storeStrong(location, 0);
}

- (AKPrivateEmailContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v26 = [(AKPrivateEmailContext *)v3 init];
  selfCopy = v26;
  objc_storeStrong(&selfCopy, v26);
  if (v26)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextAltDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v4;
    MEMORY[0x1E69E5920](altDSID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextKey"];
    key = selfCopy->_key;
    selfCopy->_key = v6;
    MEMORY[0x1E69E5920](key);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextProxiedApp"];
    proxiedAppID = selfCopy->_proxiedAppID;
    selfCopy->_proxiedAppID = v8;
    MEMORY[0x1E69E5920](proxiedAppID);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextBundleID"];
    proxiedBundleIdentifier = selfCopy->_proxiedBundleIdentifier;
    selfCopy->_proxiedBundleIdentifier = v10;
    MEMORY[0x1E69E5920](proxiedBundleIdentifier);
    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"contextAppName"];
    proxiedAppName = selfCopy->_proxiedAppName;
    selfCopy->_proxiedAppName = v12;
    MEMORY[0x1E69E5920](proxiedAppName);
    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"upgradeBundleID"];
    upgradeBundleIdentifier = selfCopy->_upgradeBundleIdentifier;
    selfCopy->_upgradeBundleIdentifier = v14;
    MEMORY[0x1E69E5920](upgradeBundleIdentifier);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"privateEmailClientBundle"];
    clientAppBundleId = selfCopy->_clientAppBundleId;
    selfCopy->_clientAppBundleId = v16;
    MEMORY[0x1E69E5920](clientAppBundleId);
    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"originType"];
    originType = selfCopy->_originType;
    selfCopy->_originType = v18;
    MEMORY[0x1E69E5920](originType);
    v20 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"originIdentifier"];
    originIdentifier = selfCopy->_originIdentifier;
    selfCopy->_originIdentifier = v20;
    MEMORY[0x1E69E5920](originIdentifier);
    v22 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"metadataString"];
    metadataString = selfCopy->_metadataString;
    selfCopy->_metadataString = v22;
    MEMORY[0x1E69E5920](metadataString);
  }

  v25 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v25;
}

@end
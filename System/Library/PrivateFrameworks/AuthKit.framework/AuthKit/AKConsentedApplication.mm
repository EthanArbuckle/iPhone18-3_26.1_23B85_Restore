@interface AKConsentedApplication
- (AKConsentedApplication)initWithCoder:(id)coder;
- (AKConsentedApplication)initWithResponseInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKConsentedApplication

- (AKConsentedApplication)initWithResponseInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v3 = selfCopy;
  selfCopy = 0;
  v22 = [(AKConsentedApplication *)v3 init];
  selfCopy = v22;
  objc_storeStrong(&selfCopy, v22);
  if (v22)
  {
    v4 = [location[0] objectForKeyedSubscript:@"scopes"];
    scopes = selfCopy->_scopes;
    selfCopy->_scopes = v4;
    MEMORY[0x1E69E5920](scopes);
    v6 = [location[0] objectForKeyedSubscript:@"client_id"];
    clientID = selfCopy->_clientID;
    selfCopy->_clientID = v6;
    MEMORY[0x1E69E5920](clientID);
    v8 = [location[0] objectForKeyedSubscript:@"client_name"];
    clientName = selfCopy->_clientName;
    selfCopy->_clientName = v8;
    MEMORY[0x1E69E5920](clientName);
    selfCopy->_state = 2;
    objc_storeStrong(&selfCopy->_origin, @"0");
    v21 = [location[0] objectForKeyedSubscript:@"credential_state"];
    MEMORY[0x1E69E5920](v21);
    if (v21)
    {
      v27 = [location[0] objectForKey:@"credential_state"];
      integerValue = [v27 integerValue];
      selfCopy->_state = integerValue;
      objc_storeStrong(&v27, 0);
    }

    v20 = [location[0] objectForKeyedSubscript:@"transfer_state"];
    MEMORY[0x1E69E5920](v20);
    if (v20)
    {
      v26 = [location[0] objectForKey:@"transfer_state"];
      objc_storeStrong(&selfCopy->_transferState, v26);
      objc_storeStrong(&v26, 0);
    }

    v19 = [location[0] objectForKeyedSubscript:@"primary_client_id"];
    MEMORY[0x1E69E5920](v19);
    if (v19)
    {
      v25 = [location[0] objectForKey:@"primary_client_id"];
      objc_storeStrong(&selfCopy->_primaryClientID, v25);
      objc_storeStrong(&v25, 0);
    }

    v18 = [location[0] objectForKeyedSubscript:@"origin"];
    MEMORY[0x1E69E5920](v18);
    if (v18)
    {
      v24 = [location[0] objectForKey:@"origin"];
      objc_storeStrong(&selfCopy->_origin, v24);
      objc_storeStrong(&v24, 0);
    }

    v17 = [location[0] objectForKeyedSubscript:@"consented_date"];
    MEMORY[0x1E69E5920](v17);
    if (v17)
    {
      v23 = [location[0] objectForKey:@"consented_date"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = MEMORY[0x1E695DF00];
        [v23 doubleValue];
        v12 = [v16 dateWithTimeIntervalSince1970:v11 / 1000.0];
        creationDate = selfCopy->_creationDate;
        selfCopy->_creationDate = v12;
        MEMORY[0x1E69E5920](creationDate);
      }

      objc_storeStrong(&v23, 0);
    }
  }

  v15 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v15;
}

- (AKConsentedApplication)initWithCoder:(id)coder
{
  v40 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v41 = [(AKConsentedApplication *)v3 init];
  selfCopy = v41;
  objc_storeStrong(&selfCopy, v41);
  if (v41)
  {
    v31 = location[0];
    v30 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v37 = 0x1E696A000uLL;
    v32 = [v30 setWithObjects:{v29, objc_opt_class(), 0}];
    v4 = [v31 decodeObjectOfClasses:? forKey:?];
    scopes = selfCopy->_scopes;
    selfCopy->_scopes = v4;
    MEMORY[0x1E69E5920](scopes);
    MEMORY[0x1E69E5920](v32);
    v33 = location[0];
    v6 = *(v37 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"client_id"];
    clientID = selfCopy->_clientID;
    selfCopy->_clientID = v7;
    MEMORY[0x1E69E5920](clientID);
    v34 = location[0];
    v9 = *(v37 + 3776);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"client_name"];
    clientName = selfCopy->_clientName;
    selfCopy->_clientName = v10;
    MEMORY[0x1E69E5920](clientName);
    v12 = [location[0] decodeIntegerForKey:@"credential_state"];
    v13 = v37;
    selfCopy->_state = v12;
    v35 = location[0];
    v14 = *(v13 + 3776);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"transfer_state"];
    transferState = selfCopy->_transferState;
    selfCopy->_transferState = v15;
    MEMORY[0x1E69E5920](transferState);
    v36 = location[0];
    v17 = *(v37 + 3776);
    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"primary_client_id"];
    primaryClientID = selfCopy->_primaryClientID;
    selfCopy->_primaryClientID = v18;
    MEMORY[0x1E69E5920](primaryClientID);
    v38 = location[0];
    v20 = *(v37 + 3776);
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
    origin = selfCopy->_origin;
    selfCopy->_origin = v21;
    MEMORY[0x1E69E5920](origin);
    v39 = location[0];
    v23 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"consented_date"];
    creationDate = selfCopy->_creationDate;
    selfCopy->_creationDate = v23;
    MEMORY[0x1E69E5920](creationDate);
  }

  v26 = &selfCopy;
  v28 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v26, obj);
  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_scopes forKey:@"scopes"];
  [location[0] encodeObject:selfCopy->_clientID forKey:@"client_id"];
  [location[0] encodeObject:selfCopy->_clientName forKey:@"client_name"];
  [location[0] encodeInteger:selfCopy->_state forKey:@"credential_state"];
  [location[0] encodeObject:selfCopy->_transferState forKey:@"transfer_state"];
  [location[0] encodeObject:selfCopy->_primaryClientID forKey:@"primary_client_id"];
  [location[0] encodeObject:selfCopy->_origin forKey:@"origin"];
  [location[0] encodeObject:selfCopy->_creationDate forKey:@"consented_date"];
  objc_storeStrong(location, 0);
}

@end
@interface AKConsentedApplication
- (AKConsentedApplication)initWithCoder:(id)a3;
- (AKConsentedApplication)initWithResponseInfo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKConsentedApplication

- (AKConsentedApplication)initWithResponseInfo:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v29;
  v29 = 0;
  v22 = [(AKConsentedApplication *)v3 init];
  v29 = v22;
  objc_storeStrong(&v29, v22);
  if (v22)
  {
    v4 = [location[0] objectForKeyedSubscript:@"scopes"];
    scopes = v29->_scopes;
    v29->_scopes = v4;
    MEMORY[0x1E69E5920](scopes);
    v6 = [location[0] objectForKeyedSubscript:@"client_id"];
    clientID = v29->_clientID;
    v29->_clientID = v6;
    MEMORY[0x1E69E5920](clientID);
    v8 = [location[0] objectForKeyedSubscript:@"client_name"];
    clientName = v29->_clientName;
    v29->_clientName = v8;
    MEMORY[0x1E69E5920](clientName);
    v29->_state = 2;
    objc_storeStrong(&v29->_origin, @"0");
    v21 = [location[0] objectForKeyedSubscript:@"credential_state"];
    MEMORY[0x1E69E5920](v21);
    if (v21)
    {
      v27 = [location[0] objectForKey:@"credential_state"];
      v10 = [v27 integerValue];
      v29->_state = v10;
      objc_storeStrong(&v27, 0);
    }

    v20 = [location[0] objectForKeyedSubscript:@"transfer_state"];
    MEMORY[0x1E69E5920](v20);
    if (v20)
    {
      v26 = [location[0] objectForKey:@"transfer_state"];
      objc_storeStrong(&v29->_transferState, v26);
      objc_storeStrong(&v26, 0);
    }

    v19 = [location[0] objectForKeyedSubscript:@"primary_client_id"];
    MEMORY[0x1E69E5920](v19);
    if (v19)
    {
      v25 = [location[0] objectForKey:@"primary_client_id"];
      objc_storeStrong(&v29->_primaryClientID, v25);
      objc_storeStrong(&v25, 0);
    }

    v18 = [location[0] objectForKeyedSubscript:@"origin"];
    MEMORY[0x1E69E5920](v18);
    if (v18)
    {
      v24 = [location[0] objectForKey:@"origin"];
      objc_storeStrong(&v29->_origin, v24);
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
        creationDate = v29->_creationDate;
        v29->_creationDate = v12;
        MEMORY[0x1E69E5920](creationDate);
      }

      objc_storeStrong(&v23, 0);
    }
  }

  v15 = MEMORY[0x1E69E5928](v29);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v29, 0);
  return v15;
}

- (AKConsentedApplication)initWithCoder:(id)a3
{
  v40 = &v43;
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v43;
  v43 = 0;
  v41 = [(AKConsentedApplication *)v3 init];
  v43 = v41;
  objc_storeStrong(&v43, v41);
  if (v41)
  {
    v31 = location[0];
    v30 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v37 = 0x1E696A000uLL;
    v32 = [v30 setWithObjects:{v29, objc_opt_class(), 0}];
    v4 = [v31 decodeObjectOfClasses:? forKey:?];
    scopes = v43->_scopes;
    v43->_scopes = v4;
    MEMORY[0x1E69E5920](scopes);
    MEMORY[0x1E69E5920](v32);
    v33 = location[0];
    v6 = *(v37 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"client_id"];
    clientID = v43->_clientID;
    v43->_clientID = v7;
    MEMORY[0x1E69E5920](clientID);
    v34 = location[0];
    v9 = *(v37 + 3776);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"client_name"];
    clientName = v43->_clientName;
    v43->_clientName = v10;
    MEMORY[0x1E69E5920](clientName);
    v12 = [location[0] decodeIntegerForKey:@"credential_state"];
    v13 = v37;
    v43->_state = v12;
    v35 = location[0];
    v14 = *(v13 + 3776);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"transfer_state"];
    transferState = v43->_transferState;
    v43->_transferState = v15;
    MEMORY[0x1E69E5920](transferState);
    v36 = location[0];
    v17 = *(v37 + 3776);
    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"primary_client_id"];
    primaryClientID = v43->_primaryClientID;
    v43->_primaryClientID = v18;
    MEMORY[0x1E69E5920](primaryClientID);
    v38 = location[0];
    v20 = *(v37 + 3776);
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
    origin = v43->_origin;
    v43->_origin = v21;
    MEMORY[0x1E69E5920](origin);
    v39 = location[0];
    v23 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"consented_date"];
    creationDate = v43->_creationDate;
    v43->_creationDate = v23;
    MEMORY[0x1E69E5920](creationDate);
  }

  v26 = &v43;
  v28 = MEMORY[0x1E69E5928](v43);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v26, obj);
  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_scopes forKey:@"scopes"];
  [location[0] encodeObject:v4->_clientID forKey:@"client_id"];
  [location[0] encodeObject:v4->_clientName forKey:@"client_name"];
  [location[0] encodeInteger:v4->_state forKey:@"credential_state"];
  [location[0] encodeObject:v4->_transferState forKey:@"transfer_state"];
  [location[0] encodeObject:v4->_primaryClientID forKey:@"primary_client_id"];
  [location[0] encodeObject:v4->_origin forKey:@"origin"];
  [location[0] encodeObject:v4->_creationDate forKey:@"consented_date"];
  objc_storeStrong(location, 0);
}

@end
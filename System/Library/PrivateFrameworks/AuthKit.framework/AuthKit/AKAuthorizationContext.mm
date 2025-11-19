@interface AKAuthorizationContext
- (AKAuthorizationContext)initWithCoder:(id)a3;
- (AKAuthorizationContext)initWithRequest:(id)a3;
- (BOOL)_hasApplicationMetaData;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKAuthorizationContext

- (AKAuthorizationContext)initWithCoder:(id)a3
{
  v50 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v50;
  v50 = 0;
  v48.receiver = v3;
  v48.super_class = AKAuthorizationContext;
  v47 = [(AKAuthorizationContext *)&v48 init];
  v50 = v47;
  objc_storeStrong(&v50, v47);
  if (v47)
  {
    v39 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceType"];
    v4 = [v39 integerValue];
    v50->_serviceType = v4;
    MEMORY[0x1E69E5920](v39);
    v5 = [location[0] decodeIntegerForKey:@"_authenticationMode"];
    v50->_authenticationMode = v5;
    v6 = [location[0] decodeIntegerForKey:@"_authenticationType"];
    v50->_authenticationType = v6;
    v45 = location[0];
    v44 = MEMORY[0x1E695DFD8];
    v43 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v46 = [v44 setWithObjects:{v43, v40, v41, v42, objc_opt_class(), 0}];
    v7 = [v45 decodeObjectOfClasses:? forKey:?];
    appProvidedData = v50->_appProvidedData;
    v50->_appProvidedData = v7;
    MEMORY[0x1E69E5920](appProvidedData);
    MEMORY[0x1E69E5920](v46);
    v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v50->_altDSID;
    v50->_altDSID = v9;
    MEMORY[0x1E69E5920](altDSID);
    v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAppName"];
    proxiedAppName = v50->_proxiedAppName;
    v50->_proxiedAppName = v11;
    MEMORY[0x1E69E5920](proxiedAppName);
    v13 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDevice"];
    proxiedDevice = v50->_proxiedDevice;
    v50->_proxiedDevice = v13;
    MEMORY[0x1E69E5920](proxiedDevice);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_companionDevice"];
    companionDevice = v50->_companionDevice;
    v50->_companionDevice = v15;
    MEMORY[0x1E69E5920](companionDevice);
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_teamID"];
    teamID = v50->_teamID;
    v50->_teamID = v17;
    MEMORY[0x1E69E5920](teamID);
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientID"];
    clientID = v50->_clientID;
    v50->_clientID = v19;
    MEMORY[0x1E69E5920](clientID);
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_request"];
    request = v50->_request;
    v50->_request = v21;
    MEMORY[0x1E69E5920](request);
    v23 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appProvidedContext"];
    appProvidedContext = v50->_appProvidedContext;
    v50->_appProvidedContext = v23;
    MEMORY[0x1E69E5920](appProvidedContext);
    v25 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userSelection"];
    userSelection = v50->_userSelection;
    v50->_userSelection = v25;
    MEMORY[0x1E69E5920](userSelection);
    v27 = [location[0] decodeBoolForKey:@"AKClientAuthenticatedExternallyWithPassword"];
    v50->_clientAuthenticatedExternallyWithPassword = v27;
    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKExternalAuthToken"];
    externalAuthToken = v50->_externalAuthToken;
    v50->_externalAuthToken = v28;
    MEMORY[0x1E69E5920](externalAuthToken);
    v30 = [location[0] decodeBoolForKey:@"_isMDMInformationRequired"];
    v50->_isMDMInformationRequired = v30;
    v31 = [location[0] decodeBoolForKey:@"isAuthorizingForSharedSIWAAccount"];
    v50->_isAuthorizingForSharedSIWAAccount = v31;
    v32 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"SharedSIWAAccountShareTokenKey"];
    sharedSIWAAccountShareToken = v50->_sharedSIWAAccountShareToken;
    v50->_sharedSIWAAccountShareToken = v32;
    MEMORY[0x1E69E5920](sharedSIWAAccountShareToken);
    v34 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"SharedSIWAAccountGroupID"];
    sharedSIWAAccountGroupID = v50->_sharedSIWAAccountGroupID;
    v50->_sharedSIWAAccountGroupID = v34;
    MEMORY[0x1E69E5920](sharedSIWAAccountGroupID);
    v36 = [location[0] decodeBoolForKey:@"ShouldRequestToArmDeviceToAllowPCSKeyUpload"];
    v50->_shouldRequestToArmDeviceToAllowPCSKeyUpload = v36;
  }

  v38 = MEMORY[0x1E69E5928](v50);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v50, 0);
  return v38;
}

- (AKAuthorizationContext)initWithRequest:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKAuthorizationContext;
  v6 = [(AKAuthorizationContext *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_request, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v6->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:v6->_proxiedAppName forKey:@"_proxiedAppName"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v6->_serviceType];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  [location[0] encodeInteger:v6->_authenticationMode forKey:@"_authenticationMode"];
  [location[0] encodeInteger:v6->_authenticationType forKey:@"_authenticationType"];
  [location[0] encodeObject:v6->_proxiedDevice forKey:@"_proxiedDevice"];
  [location[0] encodeObject:v6->_companionDevice forKey:@"_companionDevice"];
  [location[0] encodeObject:v6->_appProvidedData forKey:@"_appProvidedData"];
  [location[0] encodeObject:v6->_teamID forKey:@"_teamID"];
  [location[0] encodeObject:v6->_clientID forKey:@"_clientID"];
  [location[0] encodeObject:v6->_request forKey:@"_request"];
  [location[0] encodeObject:v6->_appProvidedContext forKey:@"_appProvidedContext"];
  [location[0] encodeObject:v6->_userSelection forKey:@"_userSelection"];
  [location[0] encodeBool:v6->_clientAuthenticatedExternallyWithPassword forKey:@"AKClientAuthenticatedExternallyWithPassword"];
  [location[0] encodeObject:v6->_externalAuthToken forKey:@"AKExternalAuthToken"];
  [location[0] encodeBool:v6->_isMDMInformationRequired forKey:@"_isMDMInformationRequired"];
  [location[0] encodeBool:v6->_isAuthorizingForSharedSIWAAccount forKey:@"isAuthorizingForSharedSIWAAccount"];
  [location[0] encodeObject:v6->_sharedSIWAAccountShareToken forKey:@"SharedSIWAAccountShareTokenKey"];
  [location[0] encodeObject:v6->_sharedSIWAAccountGroupID forKey:@"SharedSIWAAccountGroupID"];
  [location[0] encodeBool:v6->_shouldRequestToArmDeviceToAllowPCSKeyUpload forKey:@"ShouldRequestToArmDeviceToAllowPCSKeyUpload"];
  objc_storeStrong(location, 0);
}

- (BOOL)_hasApplicationMetaData
{
  v3 = 0;
  if (self->_clientID)
  {
    return self->_teamID != 0;
  }

  return v3;
}

- (NSString)description
{
  v18 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  altDSID = self->_altDSID;
  proxiedAppName = self->_proxiedAppName;
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:self->_serviceType];
  proxiedDevice = self->_proxiedDevice;
  companionDevice = self->_companionDevice;
  appProvidedData = self->_appProvidedData;
  teamID = self->_teamID;
  clientID = self->_clientID;
  request = self->_request;
  appProvidedContext = self->_appProvidedContext;
  userSelection = self->_userSelection;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_clientAuthenticatedExternallyWithPassword];
  v19 = v4;
  v5 = @"YES";
  if (self->_isAuthorizingForSharedSIWAAccount)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (!self->_shouldRequestToArmDeviceToAllowPCSKeyUpload)
  {
    v5 = @"NO";
  }

  v21 = [v18 stringWithFormat:@"<%@: %p {\n\taltDSID: %@, \n\tproxiedAppName: %@, \n\tserviceType: %@, \n\tproxiedDevice: %@, \n\tcompanionDevice: %@, \n\tappProvidedData: %@, \n\tteamID: %@, \n\tappID: %@, \n\trequest: %@, \n\tappProvidedContext: %@, \n\tuserSelection: %@, \n\tclientAuthenticatedExternallyWithPassword: %@, \n\tisAuthorizingForSharedSIWAAccount: %@, \n\t_shouldRequestToArmDeviceToAllowPCSKeyUpload: %@, \n}>", v3, self, altDSID, proxiedAppName, v20, proxiedDevice, companionDevice, appProvidedData, teamID, clientID, request, appProvidedContext, userSelection, v4, v6, v5];
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5920](v3);

  return v21;
}

@end
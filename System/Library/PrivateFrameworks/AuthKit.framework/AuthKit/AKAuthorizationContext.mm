@interface AKAuthorizationContext
- (AKAuthorizationContext)initWithCoder:(id)coder;
- (AKAuthorizationContext)initWithRequest:(id)request;
- (BOOL)_hasApplicationMetaData;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKAuthorizationContext

- (AKAuthorizationContext)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v48.receiver = v3;
  v48.super_class = AKAuthorizationContext;
  v47 = [(AKAuthorizationContext *)&v48 init];
  selfCopy = v47;
  objc_storeStrong(&selfCopy, v47);
  if (v47)
  {
    v39 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceType"];
    integerValue = [v39 integerValue];
    selfCopy->_serviceType = integerValue;
    MEMORY[0x1E69E5920](v39);
    v5 = [location[0] decodeIntegerForKey:@"_authenticationMode"];
    selfCopy->_authenticationMode = v5;
    v6 = [location[0] decodeIntegerForKey:@"_authenticationType"];
    selfCopy->_authenticationType = v6;
    v45 = location[0];
    v44 = MEMORY[0x1E695DFD8];
    v43 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v46 = [v44 setWithObjects:{v43, v40, v41, v42, objc_opt_class(), 0}];
    v7 = [v45 decodeObjectOfClasses:? forKey:?];
    appProvidedData = selfCopy->_appProvidedData;
    selfCopy->_appProvidedData = v7;
    MEMORY[0x1E69E5920](appProvidedData);
    MEMORY[0x1E69E5920](v46);
    v9 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v9;
    MEMORY[0x1E69E5920](altDSID);
    v11 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAppName"];
    proxiedAppName = selfCopy->_proxiedAppName;
    selfCopy->_proxiedAppName = v11;
    MEMORY[0x1E69E5920](proxiedAppName);
    v13 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedDevice"];
    proxiedDevice = selfCopy->_proxiedDevice;
    selfCopy->_proxiedDevice = v13;
    MEMORY[0x1E69E5920](proxiedDevice);
    v15 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_companionDevice"];
    companionDevice = selfCopy->_companionDevice;
    selfCopy->_companionDevice = v15;
    MEMORY[0x1E69E5920](companionDevice);
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_teamID"];
    teamID = selfCopy->_teamID;
    selfCopy->_teamID = v17;
    MEMORY[0x1E69E5920](teamID);
    v19 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_clientID"];
    clientID = selfCopy->_clientID;
    selfCopy->_clientID = v19;
    MEMORY[0x1E69E5920](clientID);
    v21 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_request"];
    request = selfCopy->_request;
    selfCopy->_request = v21;
    MEMORY[0x1E69E5920](request);
    v23 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appProvidedContext"];
    appProvidedContext = selfCopy->_appProvidedContext;
    selfCopy->_appProvidedContext = v23;
    MEMORY[0x1E69E5920](appProvidedContext);
    v25 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_userSelection"];
    userSelection = selfCopy->_userSelection;
    selfCopy->_userSelection = v25;
    MEMORY[0x1E69E5920](userSelection);
    v27 = [location[0] decodeBoolForKey:@"AKClientAuthenticatedExternallyWithPassword"];
    selfCopy->_clientAuthenticatedExternallyWithPassword = v27;
    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKExternalAuthToken"];
    externalAuthToken = selfCopy->_externalAuthToken;
    selfCopy->_externalAuthToken = v28;
    MEMORY[0x1E69E5920](externalAuthToken);
    v30 = [location[0] decodeBoolForKey:@"_isMDMInformationRequired"];
    selfCopy->_isMDMInformationRequired = v30;
    v31 = [location[0] decodeBoolForKey:@"isAuthorizingForSharedSIWAAccount"];
    selfCopy->_isAuthorizingForSharedSIWAAccount = v31;
    v32 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"SharedSIWAAccountShareTokenKey"];
    sharedSIWAAccountShareToken = selfCopy->_sharedSIWAAccountShareToken;
    selfCopy->_sharedSIWAAccountShareToken = v32;
    MEMORY[0x1E69E5920](sharedSIWAAccountShareToken);
    v34 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"SharedSIWAAccountGroupID"];
    sharedSIWAAccountGroupID = selfCopy->_sharedSIWAAccountGroupID;
    selfCopy->_sharedSIWAAccountGroupID = v34;
    MEMORY[0x1E69E5920](sharedSIWAAccountGroupID);
    v36 = [location[0] decodeBoolForKey:@"ShouldRequestToArmDeviceToAllowPCSKeyUpload"];
    selfCopy->_shouldRequestToArmDeviceToAllowPCSKeyUpload = v36;
  }

  v38 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v38;
}

- (AKAuthorizationContext)initWithRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKAuthorizationContext;
  v6 = [(AKAuthorizationContext *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_request, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_altDSID forKey:@"_altDSID"];
  [location[0] encodeObject:selfCopy->_proxiedAppName forKey:@"_proxiedAppName"];
  v3 = location[0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_serviceType];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  [location[0] encodeInteger:selfCopy->_authenticationMode forKey:@"_authenticationMode"];
  [location[0] encodeInteger:selfCopy->_authenticationType forKey:@"_authenticationType"];
  [location[0] encodeObject:selfCopy->_proxiedDevice forKey:@"_proxiedDevice"];
  [location[0] encodeObject:selfCopy->_companionDevice forKey:@"_companionDevice"];
  [location[0] encodeObject:selfCopy->_appProvidedData forKey:@"_appProvidedData"];
  [location[0] encodeObject:selfCopy->_teamID forKey:@"_teamID"];
  [location[0] encodeObject:selfCopy->_clientID forKey:@"_clientID"];
  [location[0] encodeObject:selfCopy->_request forKey:@"_request"];
  [location[0] encodeObject:selfCopy->_appProvidedContext forKey:@"_appProvidedContext"];
  [location[0] encodeObject:selfCopy->_userSelection forKey:@"_userSelection"];
  [location[0] encodeBool:selfCopy->_clientAuthenticatedExternallyWithPassword forKey:@"AKClientAuthenticatedExternallyWithPassword"];
  [location[0] encodeObject:selfCopy->_externalAuthToken forKey:@"AKExternalAuthToken"];
  [location[0] encodeBool:selfCopy->_isMDMInformationRequired forKey:@"_isMDMInformationRequired"];
  [location[0] encodeBool:selfCopy->_isAuthorizingForSharedSIWAAccount forKey:@"isAuthorizingForSharedSIWAAccount"];
  [location[0] encodeObject:selfCopy->_sharedSIWAAccountShareToken forKey:@"SharedSIWAAccountShareTokenKey"];
  [location[0] encodeObject:selfCopy->_sharedSIWAAccountGroupID forKey:@"SharedSIWAAccountGroupID"];
  [location[0] encodeBool:selfCopy->_shouldRequestToArmDeviceToAllowPCSKeyUpload forKey:@"ShouldRequestToArmDeviceToAllowPCSKeyUpload"];
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
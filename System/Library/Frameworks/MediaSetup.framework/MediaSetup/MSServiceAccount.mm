@interface MSServiceAccount
- (MSServiceAccount)initWithCoder:(id)a3;
- (MSServiceAccount)initWithServiceName:(NSString *)serviceName accountName:(NSString *)accountName;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSServiceAccount

- (MSServiceAccount)initWithServiceName:(NSString *)serviceName accountName:(NSString *)accountName
{
  v7 = serviceName;
  v8 = accountName;
  v16.receiver = self;
  v16.super_class = MSServiceAccount;
  v9 = [(MSServiceAccount *)&v16 self];

  if (v9)
  {
    if (!v7 || !v8)
    {
      NSLog(&cfstr_FailedToInitia_1.isa);
      v14 = 0;
      goto LABEL_7;
    }

    objc_storeStrong((v9 + 8), serviceName);
    objc_storeStrong((v9 + 16), accountName);
    v10 = +[MSAssistantPreferences intentExamples];
    v11 = *(v9 + 72);
    *(v9 + 72) = v10;

    v12 = +[MSAssistantPreferences supportedMediaIntents];
    v13 = *(v9 + 80);
    *(v9 + 80) = v12;
  }

  v14 = v9;
LABEL_7:

  return v14;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 na_safeSetObject:self->_serviceName forKey:@"serviceName"];
  [v3 na_safeSetObject:self->_accountName forKey:@"accountName"];
  [v3 na_safeSetObject:self->_clientID forKey:@"clientID"];
  [v3 na_safeSetObject:self->_clientSecret forKey:@"clientSecret"];
  [v3 na_safeSetObject:self->_serviceID forKey:@"serviceID"];
  [v3 na_safeSetObject:self->_configurationURL forKey:@"configurationURL"];
  [v3 na_safeSetObject:self->_authorizationTokenURL forKey:@"authorizationTokenURL"];
  [v3 na_safeSetObject:self->_authorizationScope forKey:@"authorizationScope"];
  v4 = [v3 description];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  serviceName = self->_serviceName;
  v5 = a3;
  [v5 encodeObject:serviceName forKey:@"MSSCServiceNameEncodedKey"];
  [v5 encodeObject:self->_accountName forKey:@"MSSCAccountNameEncodedKey"];
  [v5 encodeObject:self->_authorizationScope forKey:@"MSSCAuthorizationScope"];
  [v5 encodeObject:self->_authorizationTokenURL forKey:@"MSSCAuthorizationTokenURL"];
  [v5 encodeObject:self->_clientID forKey:@"MSSCClientIDEncodedKey"];
  [v5 encodeObject:self->_clientSecret forKey:@"MSSCClientSecretEncodedKey"];
  [v5 encodeObject:self->_configurationURL forKey:@"MSSCconfigURLEncodedKey"];
  [v5 encodeObject:self->_serviceID forKey:@"MSSCServiceIDEncodedKey"];
  [v5 encodeObject:self->_intentExamples forKey:@"MSSCIntentExamplesEncodedKey"];
  [v5 encodeObject:self->_supportedMediaIntents forKey:@"MSSCSupportedMediaIntentsEncodedKey"];
}

- (MSServiceAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCServiceNameEncodedKey"];
  serviceName = self->_serviceName;
  self->_serviceName = v5;

  if (self->_serviceName && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCAccountNameEncodedKey"], v7 = objc_claimAutoreleasedReturnValue(), accountName = self->_accountName, self->_accountName = v7, accountName, self->_accountName))
  {
    v9 = [(MSServiceAccount *)self initWithServiceName:self->_serviceName accountName:?];
    if (v9)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCAuthorizationScope"];
      authorizationScope = v9->_authorizationScope;
      v9->_authorizationScope = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCAuthorizationTokenURL"];
      authorizationTokenURL = v9->_authorizationTokenURL;
      v9->_authorizationTokenURL = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCClientIDEncodedKey"];
      clientID = v9->_clientID;
      v9->_clientID = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCClientSecretEncodedKey"];
      clientSecret = v9->_clientSecret;
      v9->_clientSecret = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCconfigURLEncodedKey"];
      configurationURL = v9->_configurationURL;
      v9->_configurationURL = v18;

      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCServiceIDEncodedKey"];
      serviceID = v9->_serviceID;
      v9->_serviceID = v20;

      v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCIntentExamplesEncodedKey"];
      intentExamples = v9->_intentExamples;
      v9->_intentExamples = v22;

      v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSCSupportedMediaIntentsEncodedKey"];
      supportedMediaIntents = v9->_supportedMediaIntents;
      v9->_supportedMediaIntents = v24;
    }

    self = v9;
    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end
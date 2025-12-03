@interface MSServiceAccount
- (MSServiceAccount)initWithCoder:(id)coder;
- (MSServiceAccount)initWithServiceName:(NSString *)serviceName accountName:(NSString *)accountName;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  serviceName = self->_serviceName;
  coderCopy = coder;
  [coderCopy encodeObject:serviceName forKey:@"MSSCServiceNameEncodedKey"];
  [coderCopy encodeObject:self->_accountName forKey:@"MSSCAccountNameEncodedKey"];
  [coderCopy encodeObject:self->_authorizationScope forKey:@"MSSCAuthorizationScope"];
  [coderCopy encodeObject:self->_authorizationTokenURL forKey:@"MSSCAuthorizationTokenURL"];
  [coderCopy encodeObject:self->_clientID forKey:@"MSSCClientIDEncodedKey"];
  [coderCopy encodeObject:self->_clientSecret forKey:@"MSSCClientSecretEncodedKey"];
  [coderCopy encodeObject:self->_configurationURL forKey:@"MSSCconfigURLEncodedKey"];
  [coderCopy encodeObject:self->_serviceID forKey:@"MSSCServiceIDEncodedKey"];
  [coderCopy encodeObject:self->_intentExamples forKey:@"MSSCIntentExamplesEncodedKey"];
  [coderCopy encodeObject:self->_supportedMediaIntents forKey:@"MSSCSupportedMediaIntentsEncodedKey"];
}

- (MSServiceAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCServiceNameEncodedKey"];
  serviceName = self->_serviceName;
  self->_serviceName = v5;

  if (self->_serviceName && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCAccountNameEncodedKey"], v7 = objc_claimAutoreleasedReturnValue(), accountName = self->_accountName, self->_accountName = v7, accountName, self->_accountName))
  {
    v9 = [(MSServiceAccount *)self initWithServiceName:self->_serviceName accountName:?];
    if (v9)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCAuthorizationScope"];
      authorizationScope = v9->_authorizationScope;
      v9->_authorizationScope = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCAuthorizationTokenURL"];
      authorizationTokenURL = v9->_authorizationTokenURL;
      v9->_authorizationTokenURL = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCClientIDEncodedKey"];
      clientID = v9->_clientID;
      v9->_clientID = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCClientSecretEncodedKey"];
      clientSecret = v9->_clientSecret;
      v9->_clientSecret = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCconfigURLEncodedKey"];
      configurationURL = v9->_configurationURL;
      v9->_configurationURL = v18;

      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCServiceIDEncodedKey"];
      serviceID = v9->_serviceID;
      v9->_serviceID = v20;

      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCIntentExamplesEncodedKey"];
      intentExamples = v9->_intentExamples;
      v9->_intentExamples = v22;

      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSCSupportedMediaIntentsEncodedKey"];
      supportedMediaIntents = v9->_supportedMediaIntents;
      v9->_supportedMediaIntents = v24;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
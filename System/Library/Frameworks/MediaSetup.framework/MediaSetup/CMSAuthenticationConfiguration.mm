@interface CMSAuthenticationConfiguration
+ (id)authConfigurationFromMSAuthData:(id)a3;
+ (id)authConfigurationWithClientID:(id)a3 clientSecret:(id)a4 authorizationURL:(id)a5 scope:(id)a6;
- (CMSAuthenticationConfiguration)initWithClientID:(id)a3 clientSecret:(id)a4 authorizationURL:(id)a5 scope:(id)a6;
- (CMSAuthenticationConfiguration)initWithCoder:(id)a3;
- (id)basicPropertiesDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSAuthenticationConfiguration

+ (id)authConfigurationWithClientID:(id)a3 clientSecret:(id)a4 authorizationURL:(id)a5 scope:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[CMSAuthenticationConfiguration alloc] initWithClientID:v12 clientSecret:v11 authorizationURL:v10 scope:v9];

  return v13;
}

- (CMSAuthenticationConfiguration)initWithClientID:(id)a3 clientSecret:(id)a4 authorizationURL:(id)a5 scope:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CMSAuthenticationConfiguration;
  v15 = [(CMSAuthenticationConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientID, a3);
    objc_storeStrong(&v16->_clientSecret, a4);
    objc_storeStrong(&v16->_authorizationURL, a5);
    objc_storeStrong(&v16->_scope, a6);
  }

  return v16;
}

- (id)description
{
  v2 = [(CMSAuthenticationConfiguration *)self basicPropertiesDictionary];
  v3 = [v2 description];

  return v3;
}

- (CMSAuthenticationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CMSAuthenticationConfiguration;
  v5 = [(CMSAuthenticationConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationConfigurationClientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationConfigurationClientSecret"];
    clientSecret = v5->_clientSecret;
    v5->_clientSecret = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationConfigurationAuthorizationURL"];
    authorizationURL = v5->_authorizationURL;
    v5->_authorizationURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationConfigurationScope"];
    scope = v5->_scope;
    v5->_scope = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  clientID = self->_clientID;
  v5 = a3;
  [v5 encodeObject:clientID forKey:@"CMSAuthenticationConfigurationClientID"];
  [v5 encodeObject:self->_clientSecret forKey:@"CMSAuthenticationConfigurationClientSecret"];
  [v5 encodeObject:self->_authorizationURL forKey:@"CMSAuthenticationConfigurationAuthorizationURL"];
  [v5 encodeObject:self->_scope forKey:@"CMSAuthenticationConfigurationScope"];
}

+ (id)authConfigurationFromMSAuthData:(id)a3
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];

  if (v5)
  {
    v6 = [v5 configuration];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)basicPropertiesDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSURL *)self->_authorizationURL absoluteString];
  [v3 na_safeSetObject:v4 forKey:@"authorizationURL"];

  [v3 na_safeSetObject:self->_clientID forKey:@"clientIdentifier"];
  [v3 na_safeSetObject:self->_clientSecret forKey:@"clientSecret"];
  [v3 na_safeSetObject:self->_scope forKey:@"scope"];

  return v3;
}

@end
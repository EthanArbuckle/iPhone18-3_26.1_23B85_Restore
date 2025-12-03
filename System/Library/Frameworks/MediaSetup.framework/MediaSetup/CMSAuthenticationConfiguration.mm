@interface CMSAuthenticationConfiguration
+ (id)authConfigurationFromMSAuthData:(id)data;
+ (id)authConfigurationWithClientID:(id)d clientSecret:(id)secret authorizationURL:(id)l scope:(id)scope;
- (CMSAuthenticationConfiguration)initWithClientID:(id)d clientSecret:(id)secret authorizationURL:(id)l scope:(id)scope;
- (CMSAuthenticationConfiguration)initWithCoder:(id)coder;
- (id)basicPropertiesDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSAuthenticationConfiguration

+ (id)authConfigurationWithClientID:(id)d clientSecret:(id)secret authorizationURL:(id)l scope:(id)scope
{
  scopeCopy = scope;
  lCopy = l;
  secretCopy = secret;
  dCopy = d;
  v13 = [[CMSAuthenticationConfiguration alloc] initWithClientID:dCopy clientSecret:secretCopy authorizationURL:lCopy scope:scopeCopy];

  return v13;
}

- (CMSAuthenticationConfiguration)initWithClientID:(id)d clientSecret:(id)secret authorizationURL:(id)l scope:(id)scope
{
  dCopy = d;
  secretCopy = secret;
  lCopy = l;
  scopeCopy = scope;
  v18.receiver = self;
  v18.super_class = CMSAuthenticationConfiguration;
  v15 = [(CMSAuthenticationConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientID, d);
    objc_storeStrong(&v16->_clientSecret, secret);
    objc_storeStrong(&v16->_authorizationURL, l);
    objc_storeStrong(&v16->_scope, scope);
  }

  return v16;
}

- (id)description
{
  basicPropertiesDictionary = [(CMSAuthenticationConfiguration *)self basicPropertiesDictionary];
  v3 = [basicPropertiesDictionary description];

  return v3;
}

- (CMSAuthenticationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CMSAuthenticationConfiguration;
  v5 = [(CMSAuthenticationConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationConfigurationClientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationConfigurationClientSecret"];
    clientSecret = v5->_clientSecret;
    v5->_clientSecret = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationConfigurationAuthorizationURL"];
    authorizationURL = v5->_authorizationURL;
    v5->_authorizationURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationConfigurationScope"];
    scope = v5->_scope;
    v5->_scope = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientID = self->_clientID;
  coderCopy = coder;
  [coderCopy encodeObject:clientID forKey:@"CMSAuthenticationConfigurationClientID"];
  [coderCopy encodeObject:self->_clientSecret forKey:@"CMSAuthenticationConfigurationClientSecret"];
  [coderCopy encodeObject:self->_authorizationURL forKey:@"CMSAuthenticationConfigurationAuthorizationURL"];
  [coderCopy encodeObject:self->_scope forKey:@"CMSAuthenticationConfigurationScope"];
}

+ (id)authConfigurationFromMSAuthData:(id)data
{
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];

  if (v5)
  {
    configuration = [v5 configuration];
  }

  else
  {
    configuration = 0;
  }

  return configuration;
}

- (id)basicPropertiesDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  absoluteString = [(NSURL *)self->_authorizationURL absoluteString];
  [v3 na_safeSetObject:absoluteString forKey:@"authorizationURL"];

  [v3 na_safeSetObject:self->_clientID forKey:@"clientIdentifier"];
  [v3 na_safeSetObject:self->_clientSecret forKey:@"clientSecret"];
  [v3 na_safeSetObject:self->_scope forKey:@"scope"];

  return v3;
}

@end
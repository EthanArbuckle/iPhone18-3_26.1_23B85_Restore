@interface MSAuthenticationConfiguration
- (MSAuthenticationConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSAuthenticationConfiguration

- (MSAuthenticationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MSAuthenticationConfiguration;
  v5 = [(MSAuthenticationConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationConfigurationClientID"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationConfigurationClientSecret"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationConfigurationAuthorizationURL"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationConfigurationScope"];
    if (v6 && v7 && v8)
    {
      v10 = [CMSAuthenticationConfiguration authConfigurationWithClientID:v6 clientSecret:v7 authorizationURL:v8 scope:v9];
      configuration = v5->_configuration;
      v5->_configuration = v10;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  configuration = self->_configuration;
  coderCopy = coder;
  clientID = [(CMSAuthenticationConfiguration *)configuration clientID];
  [coderCopy encodeObject:clientID forKey:@"CMSAuthenticationConfigurationClientID"];

  clientSecret = [(CMSAuthenticationConfiguration *)self->_configuration clientSecret];
  [coderCopy encodeObject:clientSecret forKey:@"CMSAuthenticationConfigurationClientSecret"];

  authorizationURL = [(CMSAuthenticationConfiguration *)self->_configuration authorizationURL];
  [coderCopy encodeObject:authorizationURL forKey:@"CMSAuthenticationConfigurationAuthorizationURL"];

  scope = [(CMSAuthenticationConfiguration *)self->_configuration scope];
  [coderCopy encodeObject:scope forKey:@"CMSAuthenticationConfigurationScope"];
}

@end
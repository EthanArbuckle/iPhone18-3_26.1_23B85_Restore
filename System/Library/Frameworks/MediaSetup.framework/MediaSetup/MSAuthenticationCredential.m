@interface MSAuthenticationCredential
- (MSAuthenticationCredential)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSAuthenticationCredential

- (MSAuthenticationCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MSAuthenticationCredential;
  v5 = [(MSAuthenticationCredential *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialAuthToken"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialTokenType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialAuthTokenExpiration"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialScope"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialRefreshToken"];
    if (v6)
    {
      v11 = [CMSAuthenticationCredential authCredentialWithToken:v6 tokenType:v7 expirationDate:v8 scope:v9 refreshToken:v10];
      credential = v5->_credential;
      v5->_credential = v11;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  credential = self->_credential;
  v5 = a3;
  v6 = [(CMSAuthenticationCredential *)credential authToken];
  [v5 encodeObject:v6 forKey:@"MSAuthenticationCredentialAuthToken"];

  v7 = [(CMSAuthenticationCredential *)self->_credential tokenType];
  [v5 encodeObject:v7 forKey:@"MSAuthenticationCredentialTokenType"];

  v8 = [(CMSAuthenticationCredential *)self->_credential authTokenExpiration];
  [v5 encodeObject:v8 forKey:@"MSAuthenticationCredentialAuthTokenExpiration"];

  v9 = [(CMSAuthenticationCredential *)self->_credential scope];
  [v5 encodeObject:v9 forKey:@"MSAuthenticationCredentialScope"];

  v10 = [(CMSAuthenticationCredential *)self->_credential refreshToken];
  [v5 encodeObject:v10 forKey:@"MSAuthenticationCredentialRefreshToken"];
}

@end
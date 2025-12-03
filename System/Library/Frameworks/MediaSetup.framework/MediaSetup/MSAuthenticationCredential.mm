@interface MSAuthenticationCredential
- (MSAuthenticationCredential)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSAuthenticationCredential

- (MSAuthenticationCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MSAuthenticationCredential;
  v5 = [(MSAuthenticationCredential *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialAuthToken"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialTokenType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialAuthTokenExpiration"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialScope"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthenticationCredentialRefreshToken"];
    if (v6)
    {
      v11 = [CMSAuthenticationCredential authCredentialWithToken:v6 tokenType:v7 expirationDate:v8 scope:v9 refreshToken:v10];
      credential = v5->_credential;
      v5->_credential = v11;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  credential = self->_credential;
  coderCopy = coder;
  authToken = [(CMSAuthenticationCredential *)credential authToken];
  [coderCopy encodeObject:authToken forKey:@"MSAuthenticationCredentialAuthToken"];

  tokenType = [(CMSAuthenticationCredential *)self->_credential tokenType];
  [coderCopy encodeObject:tokenType forKey:@"MSAuthenticationCredentialTokenType"];

  authTokenExpiration = [(CMSAuthenticationCredential *)self->_credential authTokenExpiration];
  [coderCopy encodeObject:authTokenExpiration forKey:@"MSAuthenticationCredentialAuthTokenExpiration"];

  scope = [(CMSAuthenticationCredential *)self->_credential scope];
  [coderCopy encodeObject:scope forKey:@"MSAuthenticationCredentialScope"];

  refreshToken = [(CMSAuthenticationCredential *)self->_credential refreshToken];
  [coderCopy encodeObject:refreshToken forKey:@"MSAuthenticationCredentialRefreshToken"];
}

@end
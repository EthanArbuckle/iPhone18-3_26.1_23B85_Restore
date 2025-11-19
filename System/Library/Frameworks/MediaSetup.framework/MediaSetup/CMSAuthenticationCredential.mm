@interface CMSAuthenticationCredential
+ (id)authCredentialFromMSAuthData:(id)a3;
+ (id)authCredentialWithToken:(id)a3 tokenType:(id)a4 expirationDate:(id)a5 scope:(id)a6 refreshToken:(id)a7;
- (CMSAuthenticationCredential)initWithCoder:(id)a3;
- (CMSAuthenticationCredential)initWithToken:(id)a3 tokenType:(id)a4 expirationDate:(id)a5 scope:(id)a6 refreshToken:(id)a7;
- (NSString)authHeader;
- (id)basicPropertiesDictionary;
- (id)description;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSAuthenticationCredential

+ (id)authCredentialWithToken:(id)a3 tokenType:(id)a4 expirationDate:(id)a5 scope:(id)a6 refreshToken:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[CMSAuthenticationCredential alloc] initWithToken:v15 tokenType:v14 expirationDate:v13 scope:v12 refreshToken:v11];

  return v16;
}

- (CMSAuthenticationCredential)initWithToken:(id)a3 tokenType:(id)a4 expirationDate:(id)a5 scope:(id)a6 refreshToken:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CMSAuthenticationCredential;
  v17 = [(CMSAuthenticationCredential *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_authToken, a3);
    objc_storeStrong(&v18->_tokenType, a4);
    objc_storeStrong(&v18->_authTokenExpiration, a5);
    objc_storeStrong(&v18->_scope, a6);
    objc_storeStrong(&v18->_refreshToken, a7);
  }

  return v18;
}

- (id)description
{
  v2 = [(CMSAuthenticationCredential *)self basicPropertiesDictionary];
  v3 = [v2 description];

  return v3;
}

- (id)jsonDictionary
{
  v3 = [(CMSAuthenticationCredential *)self basicPropertiesDictionary];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v3];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"MM-dd-yyyy HH:mm"];
  v6 = [v5 stringFromDate:self->_authTokenExpiration];
  [v4 na_safeSetObject:v6 forKey:@"expirationDate"];

  return v4;
}

- (CMSAuthenticationCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CMSAuthenticationCredential;
  v5 = [(CMSAuthenticationCredential *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialAuthToken"];
    authToken = v5->_authToken;
    v5->_authToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialTokenType"];
    tokenType = v5->_tokenType;
    v5->_tokenType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialAuthTokenExpiration"];
    authTokenExpiration = v5->_authTokenExpiration;
    v5->_authTokenExpiration = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialScope"];
    scope = v5->_scope;
    v5->_scope = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialRefreshToken"];
    refreshToken = v5->_refreshToken;
    v5->_refreshToken = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  authToken = self->_authToken;
  v5 = a3;
  [v5 encodeObject:authToken forKey:@"CMSAuthenticationCredentialAuthToken"];
  [v5 encodeObject:self->_tokenType forKey:@"CMSAuthenticationCredentialTokenType"];
  [v5 encodeObject:self->_authTokenExpiration forKey:@"CMSAuthenticationCredentialAuthTokenExpiration"];
  [v5 encodeObject:self->_scope forKey:@"CMSAuthenticationCredentialScope"];
  [v5 encodeObject:self->_refreshToken forKey:@"CMSAuthenticationCredentialRefreshToken"];
}

+ (id)authCredentialFromMSAuthData:(id)a3
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];

  if (v5)
  {
    v6 = [v5 credential];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)authHeader
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_authHeader && v2->_authToken && [(NSString *)v2->_tokenType caseInsensitiveCompare:@"Bearer"]== NSOrderedSame)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", v2->_authToken];
    authHeader = v2->_authHeader;
    v2->_authHeader = v5;
  }

  objc_sync_exit(v2);

  v3 = v2->_authHeader;

  return v3;
}

- (id)basicPropertiesDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 na_safeSetObject:self->_authToken forKey:@"authToken"];
  [v3 na_safeSetObject:self->_tokenType forKey:@"tokenType"];
  [v3 na_safeSetObject:self->_authTokenExpiration forKey:@"expirationDate"];
  [v3 na_safeSetObject:self->_scope forKey:@"scope"];
  [v3 na_safeSetObject:self->_refreshToken forKey:@"refreshToken"];

  return v3;
}

@end
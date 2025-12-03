@interface CMSAuthenticationCredential
+ (id)authCredentialFromMSAuthData:(id)data;
+ (id)authCredentialWithToken:(id)token tokenType:(id)type expirationDate:(id)date scope:(id)scope refreshToken:(id)refreshToken;
- (CMSAuthenticationCredential)initWithCoder:(id)coder;
- (CMSAuthenticationCredential)initWithToken:(id)token tokenType:(id)type expirationDate:(id)date scope:(id)scope refreshToken:(id)refreshToken;
- (NSString)authHeader;
- (id)basicPropertiesDictionary;
- (id)description;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSAuthenticationCredential

+ (id)authCredentialWithToken:(id)token tokenType:(id)type expirationDate:(id)date scope:(id)scope refreshToken:(id)refreshToken
{
  refreshTokenCopy = refreshToken;
  scopeCopy = scope;
  dateCopy = date;
  typeCopy = type;
  tokenCopy = token;
  v16 = [[CMSAuthenticationCredential alloc] initWithToken:tokenCopy tokenType:typeCopy expirationDate:dateCopy scope:scopeCopy refreshToken:refreshTokenCopy];

  return v16;
}

- (CMSAuthenticationCredential)initWithToken:(id)token tokenType:(id)type expirationDate:(id)date scope:(id)scope refreshToken:(id)refreshToken
{
  tokenCopy = token;
  typeCopy = type;
  dateCopy = date;
  scopeCopy = scope;
  refreshTokenCopy = refreshToken;
  v21.receiver = self;
  v21.super_class = CMSAuthenticationCredential;
  v17 = [(CMSAuthenticationCredential *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_authToken, token);
    objc_storeStrong(&v18->_tokenType, type);
    objc_storeStrong(&v18->_authTokenExpiration, date);
    objc_storeStrong(&v18->_scope, scope);
    objc_storeStrong(&v18->_refreshToken, refreshToken);
  }

  return v18;
}

- (id)description
{
  basicPropertiesDictionary = [(CMSAuthenticationCredential *)self basicPropertiesDictionary];
  v3 = [basicPropertiesDictionary description];

  return v3;
}

- (id)jsonDictionary
{
  basicPropertiesDictionary = [(CMSAuthenticationCredential *)self basicPropertiesDictionary];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:basicPropertiesDictionary];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"MM-dd-yyyy HH:mm"];
  v6 = [v5 stringFromDate:self->_authTokenExpiration];
  [v4 na_safeSetObject:v6 forKey:@"expirationDate"];

  return v4;
}

- (CMSAuthenticationCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CMSAuthenticationCredential;
  v5 = [(CMSAuthenticationCredential *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialAuthToken"];
    authToken = v5->_authToken;
    v5->_authToken = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialTokenType"];
    tokenType = v5->_tokenType;
    v5->_tokenType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialAuthTokenExpiration"];
    authTokenExpiration = v5->_authTokenExpiration;
    v5->_authTokenExpiration = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialScope"];
    scope = v5->_scope;
    v5->_scope = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CMSAuthenticationCredentialRefreshToken"];
    refreshToken = v5->_refreshToken;
    v5->_refreshToken = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  authToken = self->_authToken;
  coderCopy = coder;
  [coderCopy encodeObject:authToken forKey:@"CMSAuthenticationCredentialAuthToken"];
  [coderCopy encodeObject:self->_tokenType forKey:@"CMSAuthenticationCredentialTokenType"];
  [coderCopy encodeObject:self->_authTokenExpiration forKey:@"CMSAuthenticationCredentialAuthTokenExpiration"];
  [coderCopy encodeObject:self->_scope forKey:@"CMSAuthenticationCredentialScope"];
  [coderCopy encodeObject:self->_refreshToken forKey:@"CMSAuthenticationCredentialRefreshToken"];
}

+ (id)authCredentialFromMSAuthData:(id)data
{
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];

  if (v5)
  {
    credential = [v5 credential];
  }

  else
  {
    credential = 0;
  }

  return credential;
}

- (NSString)authHeader
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_authHeader && selfCopy->_authToken && [(NSString *)selfCopy->_tokenType caseInsensitiveCompare:@"Bearer"]== NSOrderedSame)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bearer %@", selfCopy->_authToken];
    authHeader = selfCopy->_authHeader;
    selfCopy->_authHeader = v5;
  }

  objc_sync_exit(selfCopy);

  v3 = selfCopy->_authHeader;

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
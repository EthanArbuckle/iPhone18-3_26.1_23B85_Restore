@interface FKAuthorizationConsent
- (BOOL)isEqual:(id)a3;
- (FKAuthorizationConsent)initWithConsentId:(id)a3 token:(id)a4 authorizationURI:(id)a5 extensionPayload:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKAuthorizationConsent

- (FKAuthorizationConsent)initWithConsentId:(id)a3 token:(id)a4 authorizationURI:(id)a5 extensionPayload:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = FKAuthorizationConsent;
  v14 = [(FKAuthorizationConsent *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    consentId = v14->_consentId;
    v14->_consentId = v15;

    v17 = [v11 copy];
    token = v14->_token;
    v14->_token = v17;

    v19 = [v12 copy];
    authorizationURI = v14->_authorizationURI;
    v14->_authorizationURI = v19;

    v21 = [v13 copy];
    extensionPayload = v14->_extensionPayload;
    v14->_extensionPayload = v21;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(FKAuthorizationConsent);
  v6 = [(NSString *)self->_consentId copyWithZone:a3];
  consentId = v5->_consentId;
  v5->_consentId = v6;

  v8 = [(NSString *)self->_token copyWithZone:a3];
  token = v5->_token;
  v5->_token = v8;

  v10 = [(NSString *)self->_authorizationURI copyWithZone:a3];
  authorizationURI = v5->_authorizationURI;
  v5->_authorizationURI = v10;

  v12 = [(NSDictionary *)self->_extensionPayload copyWithZone:a3];
  extensionPayload = v5->_extensionPayload;
  v5->_extensionPayload = v12;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_consentId];
  [v3 safelyAddObject:self->_token];
  [v3 safelyAddObject:self->_authorizationURI];
  [v3 safelyAddObject:self->_extensionPayload];
  v4 = FKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_consentId, v6[1]) && FKEqualObjects(self->_token, v6[2]) && FKEqualObjects(self->_authorizationURI, v6[3]))
    {
      v7 = FKEqualObjects(self->_extensionPayload, v6[4]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
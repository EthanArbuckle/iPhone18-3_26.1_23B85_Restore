@interface FKAuthorizationConsent
- (BOOL)isEqual:(id)equal;
- (FKAuthorizationConsent)initWithConsentId:(id)id token:(id)token authorizationURI:(id)i extensionPayload:(id)payload;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKAuthorizationConsent

- (FKAuthorizationConsent)initWithConsentId:(id)id token:(id)token authorizationURI:(id)i extensionPayload:(id)payload
{
  idCopy = id;
  tokenCopy = token;
  iCopy = i;
  payloadCopy = payload;
  v24.receiver = self;
  v24.super_class = FKAuthorizationConsent;
  v14 = [(FKAuthorizationConsent *)&v24 init];
  if (v14)
  {
    v15 = [idCopy copy];
    consentId = v14->_consentId;
    v14->_consentId = v15;

    v17 = [tokenCopy copy];
    token = v14->_token;
    v14->_token = v17;

    v19 = [iCopy copy];
    authorizationURI = v14->_authorizationURI;
    v14->_authorizationURI = v19;

    v21 = [payloadCopy copy];
    extensionPayload = v14->_extensionPayload;
    v14->_extensionPayload = v21;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKAuthorizationConsent);
  v6 = [(NSString *)self->_consentId copyWithZone:zone];
  consentId = v5->_consentId;
  v5->_consentId = v6;

  v8 = [(NSString *)self->_token copyWithZone:zone];
  token = v5->_token;
  v5->_token = v8;

  v10 = [(NSString *)self->_authorizationURI copyWithZone:zone];
  authorizationURI = v5->_authorizationURI;
  v5->_authorizationURI = v10;

  v12 = [(NSDictionary *)self->_extensionPayload copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
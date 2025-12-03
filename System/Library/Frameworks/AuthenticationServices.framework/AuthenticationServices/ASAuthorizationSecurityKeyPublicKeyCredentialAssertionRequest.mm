@interface ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest
- (ASCPublicKeyCredentialAssertionOptions)coreCredentialAssertionOptions;
- (ASPublicKeyCredentialClientData)clientData;
- (BOOL)supportsStyle:(int64_t)style;
- (NSArray)allowedCredentials;
- (NSData)challenge;
- (NSString)appID;
- (NSString)relyingPartyIdentifier;
- (NSString)userVerificationPreference;
- (id)_initWithProvider:(id)provider relyingPartyIdentifier:(id)identifier challenge:(id)challenge clientData:(id)data;
- (void)setAllowedCredentials:(NSArray *)allowedCredentials;
- (void)setAppID:(id)d;
- (void)setChallenge:(id)challenge;
- (void)setClientData:(id)data;
- (void)setRelyingPartyIdentifier:(id)identifier;
- (void)setUserVerificationPreference:(id)preference;
@end

@implementation ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest

- (id)_initWithProvider:(id)provider relyingPartyIdentifier:(id)identifier challenge:(id)challenge clientData:(id)data
{
  identifierCopy = identifier;
  challengeCopy = challenge;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest;
  v13 = [(ASAuthorizationRequest *)&v20 initWithProvider:provider];
  if (v13)
  {
    v14 = [identifierCopy copy];
    relyingPartyIdentifier = v13->_relyingPartyIdentifier;
    v13->_relyingPartyIdentifier = v14;

    v16 = [challengeCopy copy];
    challenge = v13->_challenge;
    v13->_challenge = v16;

    objc_storeStrong(&v13->_userVerificationPreference, @"preferred");
    v13->_internalLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_clientData, data);
    v18 = v13;
  }

  return v13;
}

- (ASCPublicKeyCredentialAssertionOptions)coreCredentialAssertionOptions
{
  allowedCredentials = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self allowedCredentials];
  v4 = [allowedCredentials safari_mapObjectsUsingBlock:&__block_literal_global_18];

  clientData = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self clientData];

  v6 = objc_alloc(MEMORY[0x1E698DFF0]);
  relyingPartyIdentifier = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self relyingPartyIdentifier];
  if (clientData)
  {
    clientData2 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self clientData];
    userVerificationPreference2 = [clientData2 jsonForOperationType:1];
    userVerificationPreference = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self userVerificationPreference];
    clientData3 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self clientData];
    origin = [clientData3 origin];
    v13 = [v6 initWithKind:2 relyingPartyIdentifier:relyingPartyIdentifier clientDataJSON:userVerificationPreference2 userVerificationPreference:userVerificationPreference allowedCredentials:v4 origin:origin];
  }

  else
  {
    clientData2 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self challenge];
    userVerificationPreference2 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self userVerificationPreference];
    v13 = [v6 initWithKind:2 relyingPartyIdentifier:relyingPartyIdentifier challenge:clientData2 userVerificationPreference:userVerificationPreference2 allowedCredentials:v4];
  }

  appID = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self appID];
  [v13 setAppIDForSecurityKeys:appID];

  return v13;
}

- (BOOL)supportsStyle:(int64_t)style
{
  if (style < 3)
  {
    return 1u >> (style & 7);
  }

  else
  {
    return 0;
  }
}

- (NSData)challenge
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_challenge;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setChallenge:(id)challenge
{
  challengeCopy = challenge;
  os_unfair_lock_lock(&self->_internalLock);
  challenge = self->_challenge;
  self->_challenge = challengeCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)relyingPartyIdentifier
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_relyingPartyIdentifier;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setRelyingPartyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_internalLock);
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  self->_relyingPartyIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSArray)allowedCredentials
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_allowedCredentials;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAllowedCredentials:(NSArray *)allowedCredentials
{
  v4 = allowedCredentials;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_allowedCredentials;
  self->_allowedCredentials = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)userVerificationPreference
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_userVerificationPreference;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setUserVerificationPreference:(id)preference
{
  preferenceCopy = preference;
  os_unfair_lock_lock(&self->_internalLock);
  userVerificationPreference = self->_userVerificationPreference;
  self->_userVerificationPreference = preferenceCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)appID
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_appID;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAppID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_internalLock);
  appID = self->_appID;
  self->_appID = dCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (ASPublicKeyCredentialClientData)clientData
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_clientData;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setClientData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->_internalLock);
  clientData = self->_clientData;
  self->_clientData = dataCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

@end
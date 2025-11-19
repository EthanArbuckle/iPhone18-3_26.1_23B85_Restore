@interface ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest
- (ASCPublicKeyCredentialAssertionOptions)coreCredentialAssertionOptions;
- (ASPublicKeyCredentialClientData)clientData;
- (BOOL)supportsStyle:(int64_t)a3;
- (NSArray)allowedCredentials;
- (NSData)challenge;
- (NSString)appID;
- (NSString)relyingPartyIdentifier;
- (NSString)userVerificationPreference;
- (id)_initWithProvider:(id)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 clientData:(id)a6;
- (void)setAllowedCredentials:(NSArray *)allowedCredentials;
- (void)setAppID:(id)a3;
- (void)setChallenge:(id)a3;
- (void)setClientData:(id)a3;
- (void)setRelyingPartyIdentifier:(id)a3;
- (void)setUserVerificationPreference:(id)a3;
@end

@implementation ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest

- (id)_initWithProvider:(id)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 clientData:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest;
  v13 = [(ASAuthorizationRequest *)&v20 initWithProvider:a3];
  if (v13)
  {
    v14 = [v10 copy];
    relyingPartyIdentifier = v13->_relyingPartyIdentifier;
    v13->_relyingPartyIdentifier = v14;

    v16 = [v11 copy];
    challenge = v13->_challenge;
    v13->_challenge = v16;

    objc_storeStrong(&v13->_userVerificationPreference, @"preferred");
    v13->_internalLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_clientData, a6);
    v18 = v13;
  }

  return v13;
}

- (ASCPublicKeyCredentialAssertionOptions)coreCredentialAssertionOptions
{
  v3 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self allowedCredentials];
  v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_18];

  v5 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self clientData];

  v6 = objc_alloc(MEMORY[0x1E698DFF0]);
  v7 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self relyingPartyIdentifier];
  if (v5)
  {
    v8 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self clientData];
    v9 = [v8 jsonForOperationType:1];
    v10 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self userVerificationPreference];
    v11 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self clientData];
    v12 = [v11 origin];
    v13 = [v6 initWithKind:2 relyingPartyIdentifier:v7 clientDataJSON:v9 userVerificationPreference:v10 allowedCredentials:v4 origin:v12];
  }

  else
  {
    v8 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self challenge];
    v9 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self userVerificationPreference];
    v13 = [v6 initWithKind:2 relyingPartyIdentifier:v7 challenge:v8 userVerificationPreference:v9 allowedCredentials:v4];
  }

  v14 = [(ASAuthorizationSecurityKeyPublicKeyCredentialAssertionRequest *)self appID];
  [v13 setAppIDForSecurityKeys:v14];

  return v13;
}

- (BOOL)supportsStyle:(int64_t)a3
{
  if (a3 < 3)
  {
    return 1u >> (a3 & 7);
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

- (void)setChallenge:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  challenge = self->_challenge;
  self->_challenge = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)relyingPartyIdentifier
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_relyingPartyIdentifier;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setRelyingPartyIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  self->_relyingPartyIdentifier = v4;

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

- (void)setUserVerificationPreference:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  userVerificationPreference = self->_userVerificationPreference;
  self->_userVerificationPreference = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)appID
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_appID;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAppID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  appID = self->_appID;
  self->_appID = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (ASPublicKeyCredentialClientData)clientData
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_clientData;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setClientData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  clientData = self->_clientData;
  self->_clientData = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

@end
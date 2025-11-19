@interface ASAuthorizationPlatformPublicKeyCredentialAssertionRequest
+ (id)emptyExtensions;
- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput)__largeBlobSwift;
- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)__prfSwift;
- (ASCPublicKeyCredentialAssertionOptions)coreCredentialAssertionOptions;
- (ASPublicKeyCredentialClientData)clientData;
- (BOOL)shouldShowHybridTransport;
- (LAContext)authenticatedContext;
- (NSArray)allowedCredentials;
- (NSData)challenge;
- (NSString)relyingPartyIdentifier;
- (NSString)userVerificationPreference;
- (id)_initWithProvider:(id)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 clientData:(id)a6;
- (void)__setLargeBlobSwift:(id)a3;
- (void)__setPRFSwift:(id)a3;
- (void)setAllowedCredentials:(NSArray *)allowedCredentials;
- (void)setAuthenticatedContext:(id)a3;
- (void)setChallenge:(id)a3;
- (void)setClientData:(id)a3;
- (void)setRelyingPartyIdentifier:(id)a3;
- (void)setShouldShowHybridTransport:(BOOL)a3;
- (void)setUserVerificationPreference:(id)a3;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialAssertionRequest

- (id)_initWithProvider:(id)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 clientData:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = ASAuthorizationPlatformPublicKeyCredentialAssertionRequest;
  v13 = [(ASAuthorizationRequest *)&v22 initWithProvider:a3];
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
    v13->_shouldShowHybridTransport = 1;
    v18 = [objc_opt_class() emptyExtensions];
    extensions = v13->_extensions;
    v13->_extensions = v18;

    v20 = v13;
  }

  return v13;
}

- (ASCPublicKeyCredentialAssertionOptions)coreCredentialAssertionOptions
{
  v3 = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self allowedCredentials];
  v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_16];

  if (self->_challenge)
  {
    v5 = objc_alloc(MEMORY[0x1E698DFF0]);
    v6 = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self relyingPartyIdentifier];
    v7 = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self challenge];
    v8 = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self userVerificationPreference];
    v9 = [v5 initWithKind:1 relyingPartyIdentifier:v6 challenge:v7 userVerificationPreference:v8 allowedCredentials:v4];
  }

  else
  {
    v10 = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self clientData];
    v6 = [v10 jsonForOperationType:1];

    v11 = objc_alloc(MEMORY[0x1E698DFF0]);
    v7 = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self relyingPartyIdentifier];
    v8 = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self userVerificationPreference];
    v12 = [(ASPublicKeyCredentialClientData *)self->_clientData origin];
    v9 = [v11 initWithKind:1 relyingPartyIdentifier:v7 clientDataJSON:v6 userVerificationPreference:v8 allowedCredentials:v4 origin:v12];
  }

  [v9 setShouldHideHybrid:!self->_shouldShowHybridTransport];
  [v9 setExtensions:self->_extensions];

  return v9;
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

- (LAContext)authenticatedContext
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_authenticatedContext;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAuthenticatedContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  authenticatedContext = self->_authenticatedContext;
  self->_authenticatedContext = v4;

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

- (BOOL)shouldShowHybridTransport
{
  os_unfair_lock_lock(&self->_internalLock);
  shouldShowHybridTransport = self->_shouldShowHybridTransport;
  os_unfair_lock_unlock(&self->_internalLock);
  return shouldShowHybridTransport;
}

- (void)setShouldShowHybridTransport:(BOOL)a3
{
  os_unfair_lock_lock(&self->_internalLock);
  self->_shouldShowHybridTransport = a3;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput)__largeBlobSwift
{
  v2 = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__largeBlobSwift.getter();

  return v3;
}

- (void)__setLargeBlobSwift:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = self;
  v10 = a3;
  v11 = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)v9 extensions];
  if (v10)
  {
    v12 = v10;
    sub_1B1D07B8C();

    v13 = sub_1B1D7BABC();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  }

  else
  {
    v14 = sub_1B1D7BABC();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1B1D7BADC();
}

- (ASAuthorizationPublicKeyCredentialPRFAssertionInput)__prfSwift
{
  v2 = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__prfSwift.getter();

  return v3;
}

- (void)__setPRFSwift:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = self;
  v10 = a3;
  v11 = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)v9 extensions];
  if (v10)
  {
    v12 = v10;
    sub_1B1D10BFC(v8);

    v13 = sub_1B1D7BA5C();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  }

  else
  {
    v14 = sub_1B1D7BA5C();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1B1D7BA7C();
}

+ (id)emptyExtensions
{
  v2 = [objc_allocWithZone(sub_1B1D7BAEC()) init];

  return v2;
}

@end
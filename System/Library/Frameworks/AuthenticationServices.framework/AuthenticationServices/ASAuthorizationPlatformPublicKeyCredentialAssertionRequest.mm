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
- (id)_initWithProvider:(id)provider relyingPartyIdentifier:(id)identifier challenge:(id)challenge clientData:(id)data;
- (void)__setLargeBlobSwift:(id)swift;
- (void)__setPRFSwift:(id)swift;
- (void)setAllowedCredentials:(NSArray *)allowedCredentials;
- (void)setAuthenticatedContext:(id)context;
- (void)setChallenge:(id)challenge;
- (void)setClientData:(id)data;
- (void)setRelyingPartyIdentifier:(id)identifier;
- (void)setShouldShowHybridTransport:(BOOL)transport;
- (void)setUserVerificationPreference:(id)preference;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialAssertionRequest

- (id)_initWithProvider:(id)provider relyingPartyIdentifier:(id)identifier challenge:(id)challenge clientData:(id)data
{
  identifierCopy = identifier;
  challengeCopy = challenge;
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = ASAuthorizationPlatformPublicKeyCredentialAssertionRequest;
  v13 = [(ASAuthorizationRequest *)&v22 initWithProvider:provider];
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
    v13->_shouldShowHybridTransport = 1;
    emptyExtensions = [objc_opt_class() emptyExtensions];
    extensions = v13->_extensions;
    v13->_extensions = emptyExtensions;

    v20 = v13;
  }

  return v13;
}

- (ASCPublicKeyCredentialAssertionOptions)coreCredentialAssertionOptions
{
  allowedCredentials = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self allowedCredentials];
  v4 = [allowedCredentials safari_mapObjectsUsingBlock:&__block_literal_global_16];

  if (self->_challenge)
  {
    v5 = objc_alloc(MEMORY[0x1E698DFF0]);
    relyingPartyIdentifier = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self relyingPartyIdentifier];
    challenge = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self challenge];
    userVerificationPreference = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self userVerificationPreference];
    v9 = [v5 initWithKind:1 relyingPartyIdentifier:relyingPartyIdentifier challenge:challenge userVerificationPreference:userVerificationPreference allowedCredentials:v4];
  }

  else
  {
    clientData = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self clientData];
    relyingPartyIdentifier = [clientData jsonForOperationType:1];

    v11 = objc_alloc(MEMORY[0x1E698DFF0]);
    challenge = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self relyingPartyIdentifier];
    userVerificationPreference = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)self userVerificationPreference];
    origin = [(ASPublicKeyCredentialClientData *)self->_clientData origin];
    v9 = [v11 initWithKind:1 relyingPartyIdentifier:challenge clientDataJSON:relyingPartyIdentifier userVerificationPreference:userVerificationPreference allowedCredentials:v4 origin:origin];
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

- (LAContext)authenticatedContext
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_authenticatedContext;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAuthenticatedContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_internalLock);
  authenticatedContext = self->_authenticatedContext;
  self->_authenticatedContext = contextCopy;

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

- (BOOL)shouldShowHybridTransport
{
  os_unfair_lock_lock(&self->_internalLock);
  shouldShowHybridTransport = self->_shouldShowHybridTransport;
  os_unfair_lock_unlock(&self->_internalLock);
  return shouldShowHybridTransport;
}

- (void)setShouldShowHybridTransport:(BOOL)transport
{
  os_unfair_lock_lock(&self->_internalLock);
  self->_shouldShowHybridTransport = transport;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput)__largeBlobSwift
{
  selfCopy = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__largeBlobSwift.getter();

  return v3;
}

- (void)__setLargeBlobSwift:(id)swift
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  selfCopy = self;
  swiftCopy = swift;
  extensions = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)selfCopy extensions];
  if (swiftCopy)
  {
    v12 = swiftCopy;
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
  selfCopy = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__prfSwift.getter();

  return v3;
}

- (void)__setPRFSwift:(id)swift
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  selfCopy = self;
  swiftCopy = swift;
  extensions = [(ASAuthorizationPlatformPublicKeyCredentialAssertionRequest *)selfCopy extensions];
  if (swiftCopy)
  {
    v12 = swiftCopy;
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
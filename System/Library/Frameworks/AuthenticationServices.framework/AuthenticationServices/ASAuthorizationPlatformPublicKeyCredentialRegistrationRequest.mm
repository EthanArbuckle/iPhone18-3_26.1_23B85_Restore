@interface ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest
+ (id)emptyExtensions;
- (ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)initWithCoder:(id)coder;
- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)__largeBlobSwift;
- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)__prfSwift;
- (ASCPublicKeyCredentialCreationOptions)coreCredentialCreationOptions;
- (ASPublicKeyCredentialClientData)clientData;
- (BOOL)shouldShowHybridTransport;
- (NSArray)excludedCredentials;
- (NSData)challenge;
- (NSData)userID;
- (NSString)attestationPreference;
- (NSString)displayName;
- (NSString)name;
- (NSString)userVerificationPreference;
- (id)_initWithProvider:(id)provider relyingPartyIdentifier:(id)identifier challenge:(id)challenge name:(id)name userID:(id)d clientData:(id)data requestStyle:(int64_t)style;
- (void)__setLargeBlobSwift:(id)swift;
- (void)__setPRFSwift:(id)swift;
- (void)encodeWithCoder:(id)coder;
- (void)setAttestationPreference:(id)preference;
- (void)setChallenge:(id)challenge;
- (void)setClientData:(id)data;
- (void)setDisplayName:(id)name;
- (void)setExcludedCredentials:(id)credentials;
- (void)setName:(id)name;
- (void)setShouldShowHybridTransport:(BOOL)transport;
- (void)setUserID:(id)d;
- (void)setUserVerificationPreference:(id)preference;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest

- (id)_initWithProvider:(id)provider relyingPartyIdentifier:(id)identifier challenge:(id)challenge name:(id)name userID:(id)d clientData:(id)data requestStyle:(int64_t)style
{
  identifierCopy = identifier;
  challengeCopy = challenge;
  nameCopy = name;
  dCopy = d;
  dataCopy = data;
  v34.receiver = self;
  v34.super_class = ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest;
  v20 = [(ASAuthorizationRequest *)&v34 initWithProvider:provider];
  if (v20)
  {
    v21 = [identifierCopy copy];
    relyingPartyIdentifier = v20->_relyingPartyIdentifier;
    v20->_relyingPartyIdentifier = v21;

    v23 = [challengeCopy copy];
    challenge = v20->_challenge;
    v20->_challenge = v23;

    displayName = v20->_displayName;
    v20->_displayName = &stru_1F28DE020;

    v26 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v26;

    v28 = [dCopy copy];
    userID = v20->_userID;
    v20->_userID = v28;

    objc_storeStrong(&v20->_userVerificationPreference, @"preferred");
    objc_storeStrong(&v20->_attestationPreference, @"none");
    v20->_internalLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_clientData, data);
    v20->_shouldShowHybridTransport = 1;
    emptyExtensions = [objc_opt_class() emptyExtensions];
    extensions = v20->_extensions;
    v20->_extensions = emptyExtensions;

    v20->_requestStyle = style;
    v32 = v20;
  }

  return v20;
}

- (ASCPublicKeyCredentialCreationOptions)coreCredentialCreationOptions
{
  excludedCredentials = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self excludedCredentials];
  v17 = [excludedCredentials safari_mapObjectsUsingBlock:&__block_literal_global_17];

  v14 = objc_alloc(MEMORY[0x1E698DFF8]);
  challenge = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self challenge];
  clientData = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self clientData];
  v13 = [clientData jsonForOperationType:0];
  relyingPartyIdentifier = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self relyingPartyIdentifier];
  name = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self name];
  userID = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self userID];
  displayName = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self displayName];
  attestationPreference = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self attestationPreference];
  userVerificationPreference = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self userVerificationPreference];
  extensions = self->_extensions;
  origin = [(ASPublicKeyCredentialClientData *)self->_clientData origin];
  v15 = [v14 initWithChallenge:challenge clientDataJSON:v13 clientDataHash:0 relyingPartyIdentifier:relyingPartyIdentifier userName:name userIdentifier:userID userDisplayName:displayName supportedAlgorithmIdentifiers:&unk_1F28F0500 attestationPreference:attestationPreference userVerificationPreference:userVerificationPreference excludedCredentials:v17 extensions:extensions origin:origin];

  [v15 setShouldHideHybrid:!self->_shouldShowHybridTransport];

  return v15;
}

id __94__ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest_coreCredentialCreationOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698E000];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 credentialID];

  v6 = [v4 initWithCredentialID:v5 transports:0];

  return v6;
}

- (ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attestationPreference"];
  v11 = [coderCopy decodeIntegerForKey:@"requestStyle"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientData"];

  v13 = [[ASAuthorizationPlatformPublicKeyCredentialProvider alloc] initWithRelyingPartyIdentifier:v4];
  v14 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self _initWithProvider:v13 relyingPartyIdentifier:v4 challenge:v8 name:v7 userID:v5 clientData:v12 requestStyle:v11];

  if (v14)
  {
    objc_storeStrong(&v14->_displayName, v6);
    objc_storeStrong(&v14->_userVerificationPreference, v9);
    objc_storeStrong(&v14->_attestationPreference, v10);
    v15 = v14;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_userID forKey:@"userID"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_challenge forKey:@"challenge"];
  [coderCopy encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [coderCopy encodeObject:self->_attestationPreference forKey:@"attestationPreference"];
  [coderCopy encodeObject:self->_clientData forKey:@"clientData"];
  [coderCopy encodeInteger:self->_requestStyle forKey:@"requestStyle"];
}

- (NSData)userID
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_userID;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setUserID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_internalLock);
  userID = self->_userID;
  self->_userID = dCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)name
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&self->_internalLock);
  name = self->_name;
  self->_name = nameCopy;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)displayName
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_displayName;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock(&self->_internalLock);
  displayName = self->_displayName;
  self->_displayName = nameCopy;

  os_unfair_lock_unlock(&self->_internalLock);
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

- (NSString)attestationPreference
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_attestationPreference;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAttestationPreference:(id)preference
{
  preferenceCopy = preference;
  os_unfair_lock_lock(&self->_internalLock);
  attestationPreference = self->_attestationPreference;
  self->_attestationPreference = preferenceCopy;

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

- (NSArray)excludedCredentials
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_excludedCredentials;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setExcludedCredentials:(id)credentials
{
  credentialsCopy = credentials;
  os_unfair_lock_lock(&self->_internalLock);
  excludedCredentials = self->_excludedCredentials;
  self->_excludedCredentials = credentialsCopy;

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

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)__largeBlobSwift
{
  selfCopy = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__largeBlobSwift.getter();

  return v3;
}

- (void)__setLargeBlobSwift:(id)swift
{
  swiftCopy = swift;
  selfCopy = self;
  sub_1B1D05C80(swift);
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)__prfSwift
{
  selfCopy = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__prfSwift.getter();

  return v3;
}

- (void)__setPRFSwift:(id)swift
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  selfCopy = self;
  swiftCopy = swift;
  extensions = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)selfCopy extensions];
  if (swiftCopy)
  {
    v12 = swiftCopy;
    sub_1B1D0E548();

    v13 = sub_1B1D7BBFC();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  }

  else
  {
    v14 = sub_1B1D7BBFC();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1B1D7BC1C();
}

+ (id)emptyExtensions
{
  v2 = [objc_allocWithZone(sub_1B1D7BC8C()) init];

  return v2;
}

@end
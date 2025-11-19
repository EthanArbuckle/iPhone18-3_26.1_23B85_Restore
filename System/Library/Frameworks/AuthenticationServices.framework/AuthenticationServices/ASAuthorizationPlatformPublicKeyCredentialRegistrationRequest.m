@interface ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest
+ (id)emptyExtensions;
- (ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)initWithCoder:(id)a3;
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
- (id)_initWithProvider:(id)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 name:(id)a6 userID:(id)a7 clientData:(id)a8 requestStyle:(int64_t)a9;
- (void)__setLargeBlobSwift:(id)a3;
- (void)__setPRFSwift:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAttestationPreference:(id)a3;
- (void)setChallenge:(id)a3;
- (void)setClientData:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setExcludedCredentials:(id)a3;
- (void)setName:(id)a3;
- (void)setShouldShowHybridTransport:(BOOL)a3;
- (void)setUserID:(id)a3;
- (void)setUserVerificationPreference:(id)a3;
@end

@implementation ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest

- (id)_initWithProvider:(id)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 name:(id)a6 userID:(id)a7 clientData:(id)a8 requestStyle:(int64_t)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest;
  v20 = [(ASAuthorizationRequest *)&v34 initWithProvider:a3];
  if (v20)
  {
    v21 = [v15 copy];
    relyingPartyIdentifier = v20->_relyingPartyIdentifier;
    v20->_relyingPartyIdentifier = v21;

    v23 = [v16 copy];
    challenge = v20->_challenge;
    v20->_challenge = v23;

    displayName = v20->_displayName;
    v20->_displayName = &stru_1F28DE020;

    v26 = [v17 copy];
    name = v20->_name;
    v20->_name = v26;

    v28 = [v18 copy];
    userID = v20->_userID;
    v20->_userID = v28;

    objc_storeStrong(&v20->_userVerificationPreference, @"preferred");
    objc_storeStrong(&v20->_attestationPreference, @"none");
    v20->_internalLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_clientData, a8);
    v20->_shouldShowHybridTransport = 1;
    v30 = [objc_opt_class() emptyExtensions];
    extensions = v20->_extensions;
    v20->_extensions = v30;

    v20->_requestStyle = a9;
    v32 = v20;
  }

  return v20;
}

- (ASCPublicKeyCredentialCreationOptions)coreCredentialCreationOptions
{
  v3 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self excludedCredentials];
  v17 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_17];

  v14 = objc_alloc(MEMORY[0x1E698DFF8]);
  v16 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self challenge];
  v18 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self clientData];
  v13 = [v18 jsonForOperationType:0];
  v4 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self relyingPartyIdentifier];
  v5 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self name];
  v6 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self userID];
  v7 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self displayName];
  v8 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self attestationPreference];
  v9 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)self userVerificationPreference];
  extensions = self->_extensions;
  v11 = [(ASPublicKeyCredentialClientData *)self->_clientData origin];
  v15 = [v14 initWithChallenge:v16 clientDataJSON:v13 clientDataHash:0 relyingPartyIdentifier:v4 userName:v5 userIdentifier:v6 userDisplayName:v7 supportedAlgorithmIdentifiers:&unk_1F28F0500 attestationPreference:v8 userVerificationPreference:v9 excludedCredentials:v17 extensions:extensions origin:v11];

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

- (ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attestationPreference"];
  v11 = [v3 decodeIntegerForKey:@"requestStyle"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"clientData"];

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

- (void)encodeWithCoder:(id)a3
{
  relyingPartyIdentifier = self->_relyingPartyIdentifier;
  v5 = a3;
  [v5 encodeObject:relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v5 encodeObject:self->_userID forKey:@"userID"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_challenge forKey:@"challenge"];
  [v5 encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [v5 encodeObject:self->_attestationPreference forKey:@"attestationPreference"];
  [v5 encodeObject:self->_clientData forKey:@"clientData"];
  [v5 encodeInteger:self->_requestStyle forKey:@"requestStyle"];
}

- (NSData)userID
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_userID;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setUserID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  userID = self->_userID;
  self->_userID = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)name
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSString)displayName
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_displayName;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setDisplayName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  displayName = self->_displayName;
  self->_displayName = v4;

  os_unfair_lock_unlock(&self->_internalLock);
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

- (NSString)attestationPreference
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_attestationPreference;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setAttestationPreference:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  attestationPreference = self->_attestationPreference;
  self->_attestationPreference = v4;

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

- (NSArray)excludedCredentials
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_excludedCredentials;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setExcludedCredentials:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_internalLock);
  excludedCredentials = self->_excludedCredentials;
  self->_excludedCredentials = v4;

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

- (ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput)__largeBlobSwift
{
  v2 = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__largeBlobSwift.getter();

  return v3;
}

- (void)__setLargeBlobSwift:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B1D05C80(a3);
}

- (ASAuthorizationPublicKeyCredentialPRFRegistrationInput)__prfSwift
{
  v2 = self;
  v3 = ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__prfSwift.getter();

  return v3;
}

- (void)__setPRFSwift:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = self;
  v10 = a3;
  v11 = [(ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest *)v9 extensions];
  if (v10)
  {
    v12 = v10;
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
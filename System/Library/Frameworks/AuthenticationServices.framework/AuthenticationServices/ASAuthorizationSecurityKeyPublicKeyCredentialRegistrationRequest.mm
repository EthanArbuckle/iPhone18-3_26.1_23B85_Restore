@interface ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest
- (ASAuthorizationPublicKeyCredentialResidentKeyPreference)residentKeyPreference;
- (ASCPublicKeyCredentialCreationOptions)coreCredentialCreationOptions;
- (ASPublicKeyCredentialClientData)clientData;
- (BOOL)supportsStyle:(int64_t)a3;
- (NSArray)credentialParameters;
- (NSArray)excludedCredentials;
- (NSData)challenge;
- (NSData)userID;
- (NSString)attestationPreference;
- (NSString)displayName;
- (NSString)name;
- (NSString)userVerificationPreference;
- (id)_initWithProvider:(id)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 displayName:(id)a6 name:(id)a7 userID:(id)a8 clientData:(id)a9;
- (void)setAttestationPreference:(id)a3;
- (void)setChallenge:(id)a3;
- (void)setClientData:(id)a3;
- (void)setCredentialParameters:(NSArray *)credentialParameters;
- (void)setDisplayName:(id)a3;
- (void)setExcludedCredentials:(NSArray *)excludedCredentials;
- (void)setName:(id)a3;
- (void)setResidentKeyPreference:(ASAuthorizationPublicKeyCredentialResidentKeyPreference)residentKeyPreference;
- (void)setUserID:(id)a3;
- (void)setUserVerificationPreference:(id)a3;
@end

@implementation ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest

- (id)_initWithProvider:(id)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 displayName:(id)a6 name:(id)a7 userID:(id)a8 clientData:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v37.receiver = self;
  v37.super_class = ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest;
  v21 = [(ASAuthorizationRequest *)&v37 initWithProvider:a3];
  if (v21)
  {
    v22 = [v15 copy];
    relyingPartyIdentifier = v21->_relyingPartyIdentifier;
    v21->_relyingPartyIdentifier = v22;

    v24 = [v16 copy];
    challenge = v21->_challenge;
    v21->_challenge = v24;

    v26 = [v17 copy];
    displayName = v21->_displayName;
    v21->_displayName = v26;

    v28 = [v18 copy];
    name = v21->_name;
    v21->_name = v28;

    v30 = [v19 copy];
    userID = v21->_userID;
    v21->_userID = v30;

    objc_storeStrong(&v21->_userVerificationPreference, @"preferred");
    objc_storeStrong(&v21->_attestationPreference, @"none");
    credentialParameters = v21->_credentialParameters;
    v33 = MEMORY[0x1E695E0F0];
    v21->_credentialParameters = MEMORY[0x1E695E0F0];

    excludedCredentials = v21->_excludedCredentials;
    v21->_excludedCredentials = v33;

    objc_storeStrong(&v21->_residentKeyPreference, @"preferred");
    v21->_internalLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v21->_clientData, a9);
    v35 = v21;
  }

  return v21;
}

- (ASCPublicKeyCredentialCreationOptions)coreCredentialCreationOptions
{
  v21 = [(NSArray *)self->_credentialParameters safari_mapObjectsUsingBlock:&__block_literal_global_19];
  v3 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self excludedCredentials];
  v20 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_4];

  v16 = objc_alloc(MEMORY[0x1E698DFF8]);
  v19 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self challenge];
  v18 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self clientData];
  v4 = [v18 jsonForOperationType:0];
  v5 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self relyingPartyIdentifier];
  v6 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self name];
  v7 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self userID];
  v8 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self displayName];
  v9 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self attestationPreference];
  v10 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self userVerificationPreference];
  v11 = [(ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest *)self clientData];
  v12 = [v11 origin];
  v17 = [v16 initWithChallenge:v19 clientDataJSON:v4 clientDataHash:0 relyingPartyIdentifier:v5 userName:v6 userIdentifier:v7 userDisplayName:v8 supportedAlgorithmIdentifiers:v21 attestationPreference:v9 userVerificationPreference:v10 excludedCredentials:v20 extensions:0 origin:v12];

  v13 = self->_residentKeyPreference;
  if ([(NSString *)v13 isEqualToString:@"discouraged"])
  {
    v14 = 1;
  }

  else if ([(NSString *)v13 isEqualToString:@"preferred"])
  {
    v14 = 2;
  }

  else if ([(NSString *)v13 isEqualToString:@"required"])
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v17 setResidentKeyPreference:v14];

  return v17;
}

uint64_t __97__ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest_coreCredentialCreationOptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 algorithm];

  return [v2 numberWithInteger:v3];
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

- (NSArray)credentialParameters
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_credentialParameters;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setCredentialParameters:(NSArray *)credentialParameters
{
  v4 = credentialParameters;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_credentialParameters;
  self->_credentialParameters = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (NSArray)excludedCredentials
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_excludedCredentials;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setExcludedCredentials:(NSArray *)excludedCredentials
{
  v4 = excludedCredentials;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_excludedCredentials;
  self->_excludedCredentials = v4;

  os_unfair_lock_unlock(&self->_internalLock);
}

- (ASAuthorizationPublicKeyCredentialResidentKeyPreference)residentKeyPreference
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_residentKeyPreference;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)setResidentKeyPreference:(ASAuthorizationPublicKeyCredentialResidentKeyPreference)residentKeyPreference
{
  v4 = residentKeyPreference;
  os_unfair_lock_lock(&self->_internalLock);
  v5 = self->_residentKeyPreference;
  self->_residentKeyPreference = v4;

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
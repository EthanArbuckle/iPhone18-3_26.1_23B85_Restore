@interface ASCPublicKeyCredentialCreationOptions
- (ASCPublicKeyCredentialCreationOptions)initWithChallenge:(id)challenge clientDataJSON:(id)n clientDataHash:(id)hash relyingPartyIdentifier:(id)identifier userName:(id)name userIdentifier:(id)userIdentifier userDisplayName:(id)displayName supportedAlgorithmIdentifiers:(id)self0 attestationPreference:(id)self1 userVerificationPreference:(id)self2 excludedCredentials:(id)self3 extensions:(id)self4 origin:(id)self5;
- (ASCPublicKeyCredentialCreationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)logRequest;
- (void)setShouldRequireResidentKey:(BOOL)key;
@end

@implementation ASCPublicKeyCredentialCreationOptions

- (ASCPublicKeyCredentialCreationOptions)initWithChallenge:(id)challenge clientDataJSON:(id)n clientDataHash:(id)hash relyingPartyIdentifier:(id)identifier userName:(id)name userIdentifier:(id)userIdentifier userDisplayName:(id)displayName supportedAlgorithmIdentifiers:(id)self0 attestationPreference:(id)self1 userVerificationPreference:(id)self2 excludedCredentials:(id)self3 extensions:(id)self4 origin:(id)self5
{
  challengeCopy = challenge;
  nCopy = n;
  hashCopy = hash;
  identifierCopy = identifier;
  nameCopy = name;
  userIdentifierCopy = userIdentifier;
  displayNameCopy = displayName;
  identifiersCopy = identifiers;
  preferenceCopy = preference;
  verificationPreferenceCopy = verificationPreference;
  credentialsCopy = credentials;
  extensionsCopy = extensions;
  originCopy = origin;
  v66.receiver = self;
  v66.super_class = ASCPublicKeyCredentialCreationOptions;
  v29 = [(ASCPublicKeyCredentialCreationOptions *)&v66 init];
  if (v29)
  {
    v30 = [challengeCopy copy];
    challenge = v29->_challenge;
    v29->_challenge = v30;

    v61 = nCopy;
    v32 = [nCopy copy];
    clientDataJSON = v29->_clientDataJSON;
    v29->_clientDataJSON = v32;

    v34 = [hashCopy copy];
    clientDataHash = v29->_clientDataHash;
    v29->_clientDataHash = v34;

    v36 = [identifierCopy copy];
    relyingPartyIdentifier = v29->_relyingPartyIdentifier;
    v29->_relyingPartyIdentifier = v36;

    v38 = [nameCopy copy];
    userName = v29->_userName;
    v29->_userName = v38;

    v40 = [userIdentifierCopy copy];
    userIdentifier = v29->_userIdentifier;
    v29->_userIdentifier = v40;

    v42 = [displayNameCopy copy];
    userDisplayName = v29->_userDisplayName;
    v29->_userDisplayName = v42;

    v44 = [identifiersCopy copy];
    supportedAlgorithmIdentifiers = v29->_supportedAlgorithmIdentifiers;
    v29->_supportedAlgorithmIdentifiers = v44;

    v46 = [preferenceCopy copy];
    attestationPreference = v29->_attestationPreference;
    v29->_attestationPreference = v46;

    v48 = [verificationPreferenceCopy copy];
    userVerificationPreference = v29->_userVerificationPreference;
    v29->_userVerificationPreference = v48;

    v50 = [credentialsCopy copy];
    excludedCredentials = v29->_excludedCredentials;
    v29->_excludedCredentials = v50;

    v52 = [extensionsCopy copy];
    v53 = v52;
    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = objc_alloc_init(_TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs);
    }

    extensions = v29->_extensions;
    v29->_extensions = v54;

    v56 = [originCopy copy];
    origin = v29->_origin;
    v29->_origin = v56;

    v58 = v29;
    nCopy = v61;
  }

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  challenge = self->_challenge;
  coderCopy = coder;
  [coderCopy encodeObject:challenge forKey:@"challenge"];
  [coderCopy encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [coderCopy encodeObject:self->_clientDataJSON forKey:@"clientDataJSON"];
  [coderCopy encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_userName forKey:@"userName"];
  [coderCopy encodeObject:self->_userIdentifier forKey:@"userIdentifier"];
  [coderCopy encodeObject:self->_userDisplayName forKey:@"userDisplayName"];
  [coderCopy encodeObject:self->_supportedAlgorithmIdentifiers forKey:@"supportedAlgorithmIdentifiers"];
  [coderCopy encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [coderCopy encodeObject:self->_attestationPreference forKey:@"attestationPreference"];
  [coderCopy encodeObject:self->_timeout forKey:@"timeout"];
  [coderCopy encodeInteger:self->_residentKeyPreference forKey:@"residentKeyPreference"];
  [coderCopy encodeObject:self->_excludedCredentials forKey:@"excludedCredentials"];
  [coderCopy encodeObject:self->_extensions forKey:@"extensions"];
  [coderCopy encodeBool:self->_shouldHideHybrid forKey:@"shouldHideHybrid"];
  [coderCopy encodeObject:self->_origin forKey:@"origin"];
}

- (ASCPublicKeyCredentialCreationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataJSON"];
  v8 = v7;
  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (v9 && v7 == 0)
  {
    v35 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [ASCPublicKeyCredentialCreationOptions initWithCoder:v35];
    }

    v12 = 0;
    goto LABEL_16;
  }

  v44.receiver = self;
  v44.super_class = ASCPublicKeyCredentialCreationOptions;
  v11 = [(ASCPublicKeyCredentialCreationOptions *)&v44 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_challenge, v5);
    objc_storeStrong(&v12->_clientDataHash, v6);
    objc_storeStrong(&v12->_clientDataJSON, v8);
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
    relyingPartyIdentifier = v12->_relyingPartyIdentifier;
    v12->_relyingPartyIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userName"];
    userName = v12->_userName;
    v12->_userName = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userIdentifier"];
    userIdentifier = v12->_userIdentifier;
    v12->_userIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
    userDisplayName = v12->_userDisplayName;
    v12->_userDisplayName = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"supportedAlgorithmIdentifiers"];
    supportedAlgorithmIdentifiers = v12->_supportedAlgorithmIdentifiers;
    v12->_supportedAlgorithmIdentifiers = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
    userVerificationPreference = v12->_userVerificationPreference;
    v12->_userVerificationPreference = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attestationPreference"];
    attestationPreference = v12->_attestationPreference;
    v12->_attestationPreference = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
    timeout = v12->_timeout;
    v12->_timeout = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensions"];
    v33 = v32;
    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = objc_alloc_init(_TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs);
    }

    extensions = v12->_extensions;
    v12->_extensions = v34;

    v12->_residentKeyPreference = [coderCopy decodeIntegerForKey:@"residentKeyPreference"];
    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"excludedCredentials"];
    excludedCredentials = v12->_excludedCredentials;
    v12->_excludedCredentials = v40;

    v12->_shouldHideHybrid = [coderCopy decodeBoolForKey:@"shouldHideHybrid"];
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
    self = v12->_origin;
    v12->_origin = v42;
LABEL_16:
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ASCPublicKeyCredentialCreationOptions allocWithZone:?]];
  if (v4)
  {
    v5 = [(NSData *)self->_challenge copy];
    challenge = v4->_challenge;
    v4->_challenge = v5;

    v7 = [(NSData *)self->_clientDataHash copy];
    clientDataHash = v4->_clientDataHash;
    v4->_clientDataHash = v7;

    v9 = [(NSData *)self->_clientDataJSON copy];
    clientDataJSON = v4->_clientDataJSON;
    v4->_clientDataJSON = v9;

    v11 = [(NSString *)self->_relyingPartyIdentifier copy];
    relyingPartyIdentifier = v4->_relyingPartyIdentifier;
    v4->_relyingPartyIdentifier = v11;

    v13 = [(NSString *)self->_userName copy];
    userName = v4->_userName;
    v4->_userName = v13;

    v15 = [(NSData *)self->_userIdentifier copy];
    userIdentifier = v4->_userIdentifier;
    v4->_userIdentifier = v15;

    v17 = [(NSString *)self->_userDisplayName copy];
    userDisplayName = v4->_userDisplayName;
    v4->_userDisplayName = v17;

    v19 = [(NSArray *)self->_supportedAlgorithmIdentifiers copy];
    supportedAlgorithmIdentifiers = v4->_supportedAlgorithmIdentifiers;
    v4->_supportedAlgorithmIdentifiers = v19;

    v21 = [(NSString *)self->_userVerificationPreference copy];
    userVerificationPreference = v4->_userVerificationPreference;
    v4->_userVerificationPreference = v21;

    v23 = [(NSString *)self->_attestationPreference copy];
    attestationPreference = v4->_attestationPreference;
    v4->_attestationPreference = v23;

    v25 = [(NSNumber *)self->_timeout copy];
    timeout = v4->_timeout;
    v4->_timeout = v25;

    v27 = [(ASCPublicKeyCredentialRegistrationExtensionInputs *)self->_extensions copy];
    extensions = v4->_extensions;
    v4->_extensions = v27;

    v4->_residentKeyPreference = self->_residentKeyPreference;
    v29 = [(NSArray *)self->_excludedCredentials copy];
    excludedCredentials = v4->_excludedCredentials;
    v4->_excludedCredentials = v29;

    v4->_shouldHideHybrid = self->_shouldHideHybrid;
    objc_storeStrong(&v4->_origin, self->_origin);
    v31 = v4;
  }

  return v4;
}

- (void)setShouldRequireResidentKey:(BOOL)key
{
  v3 = 3;
  if (!key)
  {
    v3 = 1;
  }

  self->_residentKeyPreference = v3;
}

- (void)logRequest
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    relyingPartyIdentifier = self->_relyingPartyIdentifier;
    userName = self->_userName;
    userIdentifier = self->_userIdentifier;
    userDisplayName = self->_userDisplayName;
    supportedAlgorithmIdentifiers = self->_supportedAlgorithmIdentifiers;
    userVerificationPreference = self->_userVerificationPreference;
    attestationPreference = self->_attestationPreference;
    residentKeyPreference = self->_residentKeyPreference;
    if (residentKeyPreference > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1E8160250[residentKeyPreference];
    }

    excludedCredentials = self->_excludedCredentials;
    v13 = v3;
    v14 = [(NSArray *)excludedCredentials count];
    v15 = [(ASCPublicKeyCredentialRegistrationExtensionInputs *)self->_extensions descriptionForLoggingWithIndentationCount:2];
    *buf = 141561091;
    v19 = 1752392040;
    v20 = 2113;
    v21 = relyingPartyIdentifier;
    v22 = 2160;
    v23 = 1752392040;
    v24 = 2113;
    v25 = userName;
    v26 = 2114;
    v27 = userIdentifier;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 2113;
    v31 = userDisplayName;
    v32 = 2114;
    v33 = supportedAlgorithmIdentifiers;
    v34 = 2114;
    v35 = userVerificationPreference;
    v36 = 2114;
    v37 = attestationPreference;
    v38 = 2114;
    v39 = v11;
    v40 = 2050;
    v41 = v14;
    v42 = 2114;
    v43 = v15;
    _os_log_impl(&dword_1C20AD000, v13, OS_LOG_TYPE_INFO, "\tRP: %{private, mask.hash}@\n\tname: %{private, mask.hash}@\n\tuserHandle: %{public}@\n\tdisplayName: %{private, mask.hash}@\n\talgorithms: %{public}@\n\tuv: %{public}@\n\tattestation: %{public}@\n\trk: %{public}@\n\texcludeCredentialsCount: %{public}lu\n\textensions:\n%{public}@", buf, 0x84u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end
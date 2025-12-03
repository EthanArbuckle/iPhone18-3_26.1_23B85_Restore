@interface ASCPublicKeyCredentialAssertionOptions
- (ASCPublicKeyCredentialAssertionOptions)initWithCoder:(id)coder;
- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier challenge:(id)challenge userVerificationPreference:(id)preference allowedCredentials:(id)credentials;
- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier clientDataHash:(id)hash userVerificationPreference:(id)preference allowedCredentials:(id)credentials;
- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier clientDataJSON:(id)n userVerificationPreference:(id)preference allowedCredentials:(id)credentials origin:(id)origin;
- (id)_initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier challenge:(id)challenge clientDataHash:(id)hash clientDataJSON:(id)n userVerificationPreference:(id)preference allowedCredentials:(id)credentials shouldHideHybrid:(BOOL)self0 extensions:(id)self1 origin:(id)self2 appIDForSecurityKeys:(id)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)logRequest;
@end

@implementation ASCPublicKeyCredentialAssertionOptions

- (id)_initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier challenge:(id)challenge clientDataHash:(id)hash clientDataJSON:(id)n userVerificationPreference:(id)preference allowedCredentials:(id)credentials shouldHideHybrid:(BOOL)self0 extensions:(id)self1 origin:(id)self2 appIDForSecurityKeys:(id)self3
{
  identifierCopy = identifier;
  challengeCopy = challenge;
  hashCopy = hash;
  nCopy = n;
  preferenceCopy = preference;
  credentialsCopy = credentials;
  extensionsCopy = extensions;
  originCopy = origin;
  keysCopy = keys;
  v48.receiver = self;
  v48.super_class = ASCPublicKeyCredentialAssertionOptions;
  v26 = [(ASCPublicKeyCredentialAssertionOptions *)&v48 init];
  v27 = v26;
  if (v26)
  {
    v26->_credentialKind = kind;
    v28 = [identifierCopy copy];
    relyingPartyIdentifier = v27->_relyingPartyIdentifier;
    v27->_relyingPartyIdentifier = v28;

    v30 = [challengeCopy copy];
    challenge = v27->_challenge;
    v27->_challenge = v30;

    v32 = [preferenceCopy copy];
    userVerificationPreference = v27->_userVerificationPreference;
    v27->_userVerificationPreference = v32;

    v34 = [credentialsCopy copy];
    allowedCredentials = v27->_allowedCredentials;
    v27->_allowedCredentials = v34;

    v36 = [hashCopy copy];
    clientDataHash = v27->_clientDataHash;
    v27->_clientDataHash = v36;

    v38 = [nCopy copy];
    clientDataJSON = v27->_clientDataJSON;
    v27->_clientDataJSON = v38;

    v27->_shouldHideHybrid = hybrid;
    objc_storeStrong(&v27->_extensions, extensions);
    v40 = [originCopy copy];
    origin = v27->_origin;
    v27->_origin = v40;

    v42 = [keysCopy copy];
    appIDForSecurityKeys = v27->_appIDForSecurityKeys;
    v27->_appIDForSecurityKeys = v42;

    v44 = v27;
  }

  return v27;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier challenge:(id)challenge userVerificationPreference:(id)preference allowedCredentials:(id)credentials
{
  credentialsCopy = credentials;
  preferenceCopy = preference;
  challengeCopy = challenge;
  identifierCopy = identifier;
  v16 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
  LOBYTE(v19) = 0;
  v17 = [(ASCPublicKeyCredentialAssertionOptions *)self _initWithKind:kind relyingPartyIdentifier:identifierCopy challenge:challengeCopy clientDataHash:0 clientDataJSON:0 userVerificationPreference:preferenceCopy allowedCredentials:credentialsCopy shouldHideHybrid:v19 extensions:v16 origin:0 appIDForSecurityKeys:0];

  return v17;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier clientDataHash:(id)hash userVerificationPreference:(id)preference allowedCredentials:(id)credentials
{
  credentialsCopy = credentials;
  preferenceCopy = preference;
  hashCopy = hash;
  identifierCopy = identifier;
  v16 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
  LOBYTE(v19) = 0;
  v17 = [(ASCPublicKeyCredentialAssertionOptions *)self _initWithKind:kind relyingPartyIdentifier:identifierCopy challenge:0 clientDataHash:hashCopy clientDataJSON:0 userVerificationPreference:preferenceCopy allowedCredentials:credentialsCopy shouldHideHybrid:v19 extensions:v16 origin:0 appIDForSecurityKeys:0];

  return v17;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier clientDataJSON:(id)n userVerificationPreference:(id)preference allowedCredentials:(id)credentials origin:(id)origin
{
  originCopy = origin;
  credentialsCopy = credentials;
  preferenceCopy = preference;
  nCopy = n;
  identifierCopy = identifier;
  v19 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
  LOBYTE(v22) = 0;
  v20 = [(ASCPublicKeyCredentialAssertionOptions *)self _initWithKind:kind relyingPartyIdentifier:identifierCopy challenge:0 clientDataHash:0 clientDataJSON:nCopy userVerificationPreference:preferenceCopy allowedCredentials:credentialsCopy shouldHideHybrid:v22 extensions:v19 origin:originCopy appIDForSecurityKeys:0];

  return v20;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"credentialKind"];
  if ((v5 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataJSON"];
    v35.receiver = self;
    v35.super_class = ASCPublicKeyCredentialAssertionOptions;
    v11 = [(ASCPublicKeyCredentialAssertionOptions *)&v35 init];
    self = v11;
    if (v11)
    {
      v11->_credentialKind = v5;
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
      relyingPartyIdentifier = self->_relyingPartyIdentifier;
      self->_relyingPartyIdentifier = v12;

      objc_storeStrong(&self->_challenge, v8);
      objc_storeStrong(&self->_clientDataHash, v9);
      objc_storeStrong(&self->_clientDataJSON, v10);
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
      userVerificationPreference = self->_userVerificationPreference;
      self->_userVerificationPreference = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
      timeout = self->_timeout;
      self->_timeout = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensions"];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
      }

      extensions = self->_extensions;
      self->_extensions = v20;

      v22 = MEMORY[0x1E695DFD8];
      v23 = objc_opt_class();
      v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
      v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"allowedCredentials"];
      allowedCredentials = self->_allowedCredentials;
      self->_allowedCredentials = v25;

      v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationSiteForCrossSiteAssertion"];
      destinationSiteForCrossSiteAssertion = self->_destinationSiteForCrossSiteAssertion;
      self->_destinationSiteForCrossSiteAssertion = v27;

      self->_shouldHideHybrid = [coderCopy decodeBoolForKey:@"shouldHideHybrid"];
      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
      origin = self->_origin;
      self->_origin = v29;

      v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIDForSecurityKeys"];
      appIDForSecurityKeys = self->_appIDForSecurityKeys;
      self->_appIDForSecurityKeys = v31;

      selfCopy = self;
    }

    selfCopy2 = self;
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ASCPublicKeyCredentialAssertionOptions *)v5 initWithCoder:v6];
    }

    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  credentialKind = self->_credentialKind;
  coderCopy = coder;
  [coderCopy encodeInteger:credentialKind forKey:@"credentialKind"];
  [coderCopy encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_challenge forKey:@"challenge"];
  [coderCopy encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [coderCopy encodeObject:self->_clientDataJSON forKey:@"clientDataJSON"];
  [coderCopy encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [coderCopy encodeObject:self->_timeout forKey:@"timeout"];
  [coderCopy encodeObject:self->_extensions forKey:@"extensions"];
  [coderCopy encodeObject:self->_allowedCredentials forKey:@"allowedCredentials"];
  [coderCopy encodeObject:self->_destinationSiteForCrossSiteAssertion forKey:@"destinationSiteForCrossSiteAssertion"];
  [coderCopy encodeBool:self->_shouldHideHybrid forKey:@"shouldHideHybrid"];
  [coderCopy encodeObject:self->_origin forKey:@"origin"];
  [coderCopy encodeObject:self->_appIDForSecurityKeys forKey:@"appIDForSecurityKeys"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_clientDataHash)
  {
    selfCopy = [ASCPublicKeyCredentialAssertionOptions allocWithZone:zone];
    credentialKind = self->_credentialKind;
    relyingPartyIdentifier = self->_relyingPartyIdentifier;
    clientDataHash = self->_clientDataHash;
    userVerificationPreference = self->_userVerificationPreference;
    origin = self->_origin;
    appIDForSecurityKeys = self->_appIDForSecurityKeys;
    extensions = self->_extensions;
    LOBYTE(v13) = self->_shouldHideHybrid;
    allowedCredentials = self->_allowedCredentials;
    challenge = 0;
  }

  else
  {
    if (self->_clientDataJSON)
    {
      selfCopy = self;
      credentialKind = selfCopy->_credentialKind;
      relyingPartyIdentifier = selfCopy->_relyingPartyIdentifier;
      clientDataJSON = self->_clientDataJSON;
      userVerificationPreference = selfCopy->_userVerificationPreference;
      origin = selfCopy->_origin;
      appIDForSecurityKeys = selfCopy->_appIDForSecurityKeys;
      extensions = selfCopy->_extensions;
      LOBYTE(v13) = selfCopy->_shouldHideHybrid;
      allowedCredentials = selfCopy->_allowedCredentials;
      challenge = 0;
      clientDataHash = 0;
      return [(ASCPublicKeyCredentialAssertionOptions *)selfCopy _initWithKind:credentialKind relyingPartyIdentifier:relyingPartyIdentifier challenge:challenge clientDataHash:clientDataHash clientDataJSON:clientDataJSON userVerificationPreference:userVerificationPreference allowedCredentials:allowedCredentials shouldHideHybrid:v13 extensions:extensions origin:origin appIDForSecurityKeys:appIDForSecurityKeys];
    }

    selfCopy = [ASCPublicKeyCredentialAssertionOptions allocWithZone:zone];
    credentialKind = self->_credentialKind;
    relyingPartyIdentifier = self->_relyingPartyIdentifier;
    challenge = self->_challenge;
    userVerificationPreference = self->_userVerificationPreference;
    origin = self->_origin;
    appIDForSecurityKeys = self->_appIDForSecurityKeys;
    extensions = self->_extensions;
    LOBYTE(v13) = self->_shouldHideHybrid;
    allowedCredentials = self->_allowedCredentials;
    clientDataHash = 0;
  }

  clientDataJSON = 0;
  return [(ASCPublicKeyCredentialAssertionOptions *)selfCopy _initWithKind:credentialKind relyingPartyIdentifier:relyingPartyIdentifier challenge:challenge clientDataHash:clientDataHash clientDataJSON:clientDataJSON userVerificationPreference:userVerificationPreference allowedCredentials:allowedCredentials shouldHideHybrid:v13 extensions:extensions origin:origin appIDForSecurityKeys:appIDForSecurityKeys];
}

- (void)logRequest
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_allowedCredentials count])
  {
    v3 = [(NSArray *)self->_allowedCredentials safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_9];
  }

  else
  {
    v3 = 0;
  }

  v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    relyingPartyIdentifier = self->_relyingPartyIdentifier;
    userVerificationPreference = self->_userVerificationPreference;
    allowedCredentials = self->_allowedCredentials;
    v8 = v4;
    v9 = [(NSArray *)allowedCredentials count];
    v10 = [(ASCPublicKeyCredentialAssertionExtensionInputs *)self->_extensions descriptionForLoggingWithIndentationCount:2];
    appIDForSecurityKeys = self->_appIDForSecurityKeys;
    v13 = 141559555;
    v14 = 1752392040;
    v15 = 2113;
    v16 = relyingPartyIdentifier;
    v17 = 2114;
    v18 = userVerificationPreference;
    v19 = 2050;
    v20 = v9;
    v21 = 2114;
    v22 = v3;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = appIDForSecurityKeys;
    _os_log_impl(&dword_1C20AD000, v8, OS_LOG_TYPE_INFO, "\tRP: %{private, mask.hash}@\n\tuv: %{public}@\n\tallowedCredentialsCount: %{public}lu\n\ttransports: %{public}@\n\textensions:\n%{public}@\tappID: %{public}@\n", &v13, 0x48u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1C20AD000, a2, OS_LOG_TYPE_ERROR, "Found unexpected value for credential kind: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
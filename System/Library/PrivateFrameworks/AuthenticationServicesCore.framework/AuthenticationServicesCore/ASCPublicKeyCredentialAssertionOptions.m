@interface ASCPublicKeyCredentialAssertionOptions
- (ASCPublicKeyCredentialAssertionOptions)initWithCoder:(id)a3;
- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 userVerificationPreference:(id)a6 allowedCredentials:(id)a7;
- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)a3 relyingPartyIdentifier:(id)a4 clientDataHash:(id)a5 userVerificationPreference:(id)a6 allowedCredentials:(id)a7;
- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)a3 relyingPartyIdentifier:(id)a4 clientDataJSON:(id)a5 userVerificationPreference:(id)a6 allowedCredentials:(id)a7 origin:(id)a8;
- (id)_initWithKind:(unint64_t)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 clientDataHash:(id)a6 clientDataJSON:(id)a7 userVerificationPreference:(id)a8 allowedCredentials:(id)a9 shouldHideHybrid:(BOOL)a10 extensions:(id)a11 origin:(id)a12 appIDForSecurityKeys:(id)a13;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)logRequest;
@end

@implementation ASCPublicKeyCredentialAssertionOptions

- (id)_initWithKind:(unint64_t)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 clientDataHash:(id)a6 clientDataJSON:(id)a7 userVerificationPreference:(id)a8 allowedCredentials:(id)a9 shouldHideHybrid:(BOOL)a10 extensions:(id)a11 origin:(id)a12 appIDForSecurityKeys:(id)a13
{
  v18 = a4;
  v19 = a5;
  v47 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v48.receiver = self;
  v48.super_class = ASCPublicKeyCredentialAssertionOptions;
  v26 = [(ASCPublicKeyCredentialAssertionOptions *)&v48 init];
  v27 = v26;
  if (v26)
  {
    v26->_credentialKind = a3;
    v28 = [v18 copy];
    relyingPartyIdentifier = v27->_relyingPartyIdentifier;
    v27->_relyingPartyIdentifier = v28;

    v30 = [v19 copy];
    challenge = v27->_challenge;
    v27->_challenge = v30;

    v32 = [v21 copy];
    userVerificationPreference = v27->_userVerificationPreference;
    v27->_userVerificationPreference = v32;

    v34 = [v22 copy];
    allowedCredentials = v27->_allowedCredentials;
    v27->_allowedCredentials = v34;

    v36 = [v47 copy];
    clientDataHash = v27->_clientDataHash;
    v27->_clientDataHash = v36;

    v38 = [v20 copy];
    clientDataJSON = v27->_clientDataJSON;
    v27->_clientDataJSON = v38;

    v27->_shouldHideHybrid = a10;
    objc_storeStrong(&v27->_extensions, a11);
    v40 = [v24 copy];
    origin = v27->_origin;
    v27->_origin = v40;

    v42 = [v25 copy];
    appIDForSecurityKeys = v27->_appIDForSecurityKeys;
    v27->_appIDForSecurityKeys = v42;

    v44 = v27;
  }

  return v27;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)a3 relyingPartyIdentifier:(id)a4 challenge:(id)a5 userVerificationPreference:(id)a6 allowedCredentials:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
  LOBYTE(v19) = 0;
  v17 = [(ASCPublicKeyCredentialAssertionOptions *)self _initWithKind:a3 relyingPartyIdentifier:v15 challenge:v14 clientDataHash:0 clientDataJSON:0 userVerificationPreference:v13 allowedCredentials:v12 shouldHideHybrid:v19 extensions:v16 origin:0 appIDForSecurityKeys:0];

  return v17;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)a3 relyingPartyIdentifier:(id)a4 clientDataHash:(id)a5 userVerificationPreference:(id)a6 allowedCredentials:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
  LOBYTE(v19) = 0;
  v17 = [(ASCPublicKeyCredentialAssertionOptions *)self _initWithKind:a3 relyingPartyIdentifier:v15 challenge:0 clientDataHash:v14 clientDataJSON:0 userVerificationPreference:v13 allowedCredentials:v12 shouldHideHybrid:v19 extensions:v16 origin:0 appIDForSecurityKeys:0];

  return v17;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)a3 relyingPartyIdentifier:(id)a4 clientDataJSON:(id)a5 userVerificationPreference:(id)a6 allowedCredentials:(id)a7 origin:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
  LOBYTE(v22) = 0;
  v20 = [(ASCPublicKeyCredentialAssertionOptions *)self _initWithKind:a3 relyingPartyIdentifier:v18 challenge:0 clientDataHash:0 clientDataJSON:v17 userVerificationPreference:v16 allowedCredentials:v15 shouldHideHybrid:v22 extensions:v19 origin:v14 appIDForSecurityKeys:0];

  return v20;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"credentialKind"];
  if ((v5 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDataJSON"];
    v35.receiver = self;
    v35.super_class = ASCPublicKeyCredentialAssertionOptions;
    v11 = [(ASCPublicKeyCredentialAssertionOptions *)&v35 init];
    self = v11;
    if (v11)
    {
      v11->_credentialKind = v5;
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
      relyingPartyIdentifier = self->_relyingPartyIdentifier;
      self->_relyingPartyIdentifier = v12;

      objc_storeStrong(&self->_challenge, v8);
      objc_storeStrong(&self->_clientDataHash, v9);
      objc_storeStrong(&self->_clientDataJSON, v10);
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
      userVerificationPreference = self->_userVerificationPreference;
      self->_userVerificationPreference = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
      timeout = self->_timeout;
      self->_timeout = v16;

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensions"];
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
      v25 = [v4 decodeObjectOfClasses:v24 forKey:@"allowedCredentials"];
      allowedCredentials = self->_allowedCredentials;
      self->_allowedCredentials = v25;

      v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationSiteForCrossSiteAssertion"];
      destinationSiteForCrossSiteAssertion = self->_destinationSiteForCrossSiteAssertion;
      self->_destinationSiteForCrossSiteAssertion = v27;

      self->_shouldHideHybrid = [v4 decodeBoolForKey:@"shouldHideHybrid"];
      v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
      origin = self->_origin;
      self->_origin = v29;

      v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appIDForSecurityKeys"];
      appIDForSecurityKeys = self->_appIDForSecurityKeys;
      self->_appIDForSecurityKeys = v31;

      v33 = self;
    }

    v7 = self;
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ASCPublicKeyCredentialAssertionOptions *)v5 initWithCoder:v6];
    }

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  credentialKind = self->_credentialKind;
  v5 = a3;
  [v5 encodeInteger:credentialKind forKey:@"credentialKind"];
  [v5 encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [v5 encodeObject:self->_challenge forKey:@"challenge"];
  [v5 encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [v5 encodeObject:self->_clientDataJSON forKey:@"clientDataJSON"];
  [v5 encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [v5 encodeObject:self->_timeout forKey:@"timeout"];
  [v5 encodeObject:self->_extensions forKey:@"extensions"];
  [v5 encodeObject:self->_allowedCredentials forKey:@"allowedCredentials"];
  [v5 encodeObject:self->_destinationSiteForCrossSiteAssertion forKey:@"destinationSiteForCrossSiteAssertion"];
  [v5 encodeBool:self->_shouldHideHybrid forKey:@"shouldHideHybrid"];
  [v5 encodeObject:self->_origin forKey:@"origin"];
  [v5 encodeObject:self->_appIDForSecurityKeys forKey:@"appIDForSecurityKeys"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_clientDataHash)
  {
    v4 = [ASCPublicKeyCredentialAssertionOptions allocWithZone:a3];
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
      v4 = self;
      credentialKind = v4->_credentialKind;
      relyingPartyIdentifier = v4->_relyingPartyIdentifier;
      clientDataJSON = self->_clientDataJSON;
      userVerificationPreference = v4->_userVerificationPreference;
      origin = v4->_origin;
      appIDForSecurityKeys = v4->_appIDForSecurityKeys;
      extensions = v4->_extensions;
      LOBYTE(v13) = v4->_shouldHideHybrid;
      allowedCredentials = v4->_allowedCredentials;
      challenge = 0;
      clientDataHash = 0;
      return [(ASCPublicKeyCredentialAssertionOptions *)v4 _initWithKind:credentialKind relyingPartyIdentifier:relyingPartyIdentifier challenge:challenge clientDataHash:clientDataHash clientDataJSON:clientDataJSON userVerificationPreference:userVerificationPreference allowedCredentials:allowedCredentials shouldHideHybrid:v13 extensions:extensions origin:origin appIDForSecurityKeys:appIDForSecurityKeys];
    }

    v4 = [ASCPublicKeyCredentialAssertionOptions allocWithZone:a3];
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
  return [(ASCPublicKeyCredentialAssertionOptions *)v4 _initWithKind:credentialKind relyingPartyIdentifier:relyingPartyIdentifier challenge:challenge clientDataHash:clientDataHash clientDataJSON:clientDataJSON userVerificationPreference:userVerificationPreference allowedCredentials:allowedCredentials shouldHideHybrid:v13 extensions:extensions origin:origin appIDForSecurityKeys:appIDForSecurityKeys];
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
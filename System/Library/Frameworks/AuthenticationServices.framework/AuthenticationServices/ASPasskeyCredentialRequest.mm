@interface ASPasskeyCredentialRequest
+ (ASPasskeyCredentialRequest)requestWithCredentialIdentity:(ASPasskeyCredentialIdentity *)credentialIdentity clientDataHash:(NSData *)clientDataHash userVerificationPreference:(ASAuthorizationPublicKeyCredentialUserVerificationPreference)userVerificationPreference supportedAlgorithms:(NSArray *)supportedAlgorithms;
- (ASPasskeyCredentialRequest)initWithCoder:(id)a3;
- (ASPasskeyCredentialRequest)initWithLoginChoice:(id)a3 assertionExtensionInput:(id)a4;
- (ASPasskeyCredentialRequest)initWithLoginChoice:(id)a3 registrationExtensionInput:(id)a4;
- (id)_initWithCredentialIdentity:(id)a3 clientDataHash:(id)a4 userVerificationPreference:(id)a5 supportedAlgorithms:(id)a6 credentialType:(int64_t)a7 excludedCredentials:(id)a8 registrationExtensionInput:(id)a9 assertionExtensionInput:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASPasskeyCredentialRequest

- (ASPasskeyCredentialRequest)initWithLoginChoice:(id)a3 registrationExtensionInput:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 excludedCredentials];
  v9 = [v8 safari_mapObjectsUsingBlock:&__block_literal_global_29];

  v10 = [[ASPasskeyCredentialIdentity alloc] _initWithLoginChoice:v7];
  v11 = [v7 clientDataHash];
  v12 = [v7 userVerificationPreference];
  v13 = [v7 supportedAlgorithms];

  v14 = [(ASPasskeyCredentialRequest *)self _initWithCredentialIdentity:v10 clientDataHash:v11 userVerificationPreference:v12 supportedAlgorithms:v13 credentialType:2 excludedCredentials:v9 registrationExtensionInput:v6 assertionExtensionInput:0];
  return v14;
}

ASAuthorizationPlatformPublicKeyCredentialDescriptor *__77__ASPasskeyCredentialRequest_initWithLoginChoice_registrationExtensionInput___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ASAuthorizationPlatformPublicKeyCredentialDescriptor alloc];
  v4 = [v2 credentialID];

  v5 = [(ASAuthorizationPlatformPublicKeyCredentialDescriptor *)v3 initWithCredentialID:v4];

  return v5;
}

- (ASPasskeyCredentialRequest)initWithLoginChoice:(id)a3 assertionExtensionInput:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ASPasskeyCredentialIdentity alloc] _initWithLoginChoice:v7];
  v9 = [v7 clientDataHash];
  v10 = [v7 userVerificationPreference];
  v11 = [v7 supportedAlgorithms];

  v12 = [(ASPasskeyCredentialRequest *)self _initWithCredentialIdentity:v8 clientDataHash:v9 userVerificationPreference:v10 supportedAlgorithms:v11 credentialType:1 excludedCredentials:0 registrationExtensionInput:0 assertionExtensionInput:v6];
  return v12;
}

- (id)_initWithCredentialIdentity:(id)a3 clientDataHash:(id)a4 userVerificationPreference:(id)a5 supportedAlgorithms:(id)a6 credentialType:(int64_t)a7 excludedCredentials:(id)a8 registrationExtensionInput:(id)a9 assertionExtensionInput:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v36.receiver = self;
  v36.super_class = ASPasskeyCredentialRequest;
  v22 = [(ASPasskeyCredentialRequest *)&v36 init];
  if (v22)
  {
    v23 = [v15 copy];
    credentialIdentity = v22->_credentialIdentity;
    v22->_credentialIdentity = v23;

    v25 = [v16 copy];
    clientDataHash = v22->_clientDataHash;
    v22->_clientDataHash = v25;

    v27 = [v17 copy];
    userVerificationPreference = v22->_userVerificationPreference;
    v22->_userVerificationPreference = v27;

    v29 = [v18 copy];
    supportedAlgorithms = v22->_supportedAlgorithms;
    v22->_supportedAlgorithms = v29;

    v22->_credentialType = a7;
    v31 = [v19 copy];
    excludedCredentials = v22->_excludedCredentials;
    v22->_excludedCredentials = v31;

    objc_storeStrong(&v22->_registrationExtensionInput, a9);
    objc_storeStrong(&v22->_assertionExtensionInput, a10);
    v33 = v22;
  }

  return v22;
}

+ (ASPasskeyCredentialRequest)requestWithCredentialIdentity:(ASPasskeyCredentialIdentity *)credentialIdentity clientDataHash:(NSData *)clientDataHash userVerificationPreference:(ASAuthorizationPublicKeyCredentialUserVerificationPreference)userVerificationPreference supportedAlgorithms:(NSArray *)supportedAlgorithms
{
  v10 = supportedAlgorithms;
  v11 = userVerificationPreference;
  v12 = clientDataHash;
  v13 = credentialIdentity;
  v14 = [[a1 alloc] initWithCredentialIdentity:v13 clientDataHash:v12 userVerificationPreference:v11 supportedAlgorithms:v10];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  credentialIdentity = self->_credentialIdentity;
  v5 = a3;
  [v5 encodeObject:credentialIdentity forKey:@"credentialIdentity"];
  [v5 encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [v5 encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [v5 encodeObject:self->_supportedAlgorithms forKey:@"supportedAlgorithms"];
  [v5 encodeInteger:self->_credentialType forKey:@"credentialType"];
  [v5 encodeObject:self->_excludedCredentials forKey:@"excludedCredentials"];
  [v5 encodeObject:self->_registrationExtensionInput forKey:@"registrationExtensionInput"];
  [v5 encodeObject:self->_assertionExtensionInput forKey:@"assertionExtensionInput"];
}

- (ASPasskeyCredentialRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
  v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedAlgorithms"];
  v9 = [v4 decodeIntegerForKey:@"credentialType"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"excludedCredentials"];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registrationExtensionInput"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assertionExtensionInput"];

  v16 = [(ASPasskeyCredentialRequest *)self _initWithCredentialIdentity:v5 clientDataHash:v6 userVerificationPreference:v7 supportedAlgorithms:v8 credentialType:v9 excludedCredentials:v13 registrationExtensionInput:v14 assertionExtensionInput:v15];
  return v16;
}

@end
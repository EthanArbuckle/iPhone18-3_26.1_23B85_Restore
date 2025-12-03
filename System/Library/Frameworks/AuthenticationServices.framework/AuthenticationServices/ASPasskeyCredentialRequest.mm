@interface ASPasskeyCredentialRequest
+ (ASPasskeyCredentialRequest)requestWithCredentialIdentity:(ASPasskeyCredentialIdentity *)credentialIdentity clientDataHash:(NSData *)clientDataHash userVerificationPreference:(ASAuthorizationPublicKeyCredentialUserVerificationPreference)userVerificationPreference supportedAlgorithms:(NSArray *)supportedAlgorithms;
- (ASPasskeyCredentialRequest)initWithCoder:(id)coder;
- (ASPasskeyCredentialRequest)initWithLoginChoice:(id)choice assertionExtensionInput:(id)input;
- (ASPasskeyCredentialRequest)initWithLoginChoice:(id)choice registrationExtensionInput:(id)input;
- (id)_initWithCredentialIdentity:(id)identity clientDataHash:(id)hash userVerificationPreference:(id)preference supportedAlgorithms:(id)algorithms credentialType:(int64_t)type excludedCredentials:(id)credentials registrationExtensionInput:(id)input assertionExtensionInput:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASPasskeyCredentialRequest

- (ASPasskeyCredentialRequest)initWithLoginChoice:(id)choice registrationExtensionInput:(id)input
{
  inputCopy = input;
  choiceCopy = choice;
  excludedCredentials = [choiceCopy excludedCredentials];
  v9 = [excludedCredentials safari_mapObjectsUsingBlock:&__block_literal_global_29];

  v10 = [[ASPasskeyCredentialIdentity alloc] _initWithLoginChoice:choiceCopy];
  clientDataHash = [choiceCopy clientDataHash];
  userVerificationPreference = [choiceCopy userVerificationPreference];
  supportedAlgorithms = [choiceCopy supportedAlgorithms];

  v14 = [(ASPasskeyCredentialRequest *)self _initWithCredentialIdentity:v10 clientDataHash:clientDataHash userVerificationPreference:userVerificationPreference supportedAlgorithms:supportedAlgorithms credentialType:2 excludedCredentials:v9 registrationExtensionInput:inputCopy assertionExtensionInput:0];
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

- (ASPasskeyCredentialRequest)initWithLoginChoice:(id)choice assertionExtensionInput:(id)input
{
  inputCopy = input;
  choiceCopy = choice;
  v8 = [[ASPasskeyCredentialIdentity alloc] _initWithLoginChoice:choiceCopy];
  clientDataHash = [choiceCopy clientDataHash];
  userVerificationPreference = [choiceCopy userVerificationPreference];
  supportedAlgorithms = [choiceCopy supportedAlgorithms];

  v12 = [(ASPasskeyCredentialRequest *)self _initWithCredentialIdentity:v8 clientDataHash:clientDataHash userVerificationPreference:userVerificationPreference supportedAlgorithms:supportedAlgorithms credentialType:1 excludedCredentials:0 registrationExtensionInput:0 assertionExtensionInput:inputCopy];
  return v12;
}

- (id)_initWithCredentialIdentity:(id)identity clientDataHash:(id)hash userVerificationPreference:(id)preference supportedAlgorithms:(id)algorithms credentialType:(int64_t)type excludedCredentials:(id)credentials registrationExtensionInput:(id)input assertionExtensionInput:(id)self0
{
  identityCopy = identity;
  hashCopy = hash;
  preferenceCopy = preference;
  algorithmsCopy = algorithms;
  credentialsCopy = credentials;
  inputCopy = input;
  extensionInputCopy = extensionInput;
  v36.receiver = self;
  v36.super_class = ASPasskeyCredentialRequest;
  v22 = [(ASPasskeyCredentialRequest *)&v36 init];
  if (v22)
  {
    v23 = [identityCopy copy];
    credentialIdentity = v22->_credentialIdentity;
    v22->_credentialIdentity = v23;

    v25 = [hashCopy copy];
    clientDataHash = v22->_clientDataHash;
    v22->_clientDataHash = v25;

    v27 = [preferenceCopy copy];
    userVerificationPreference = v22->_userVerificationPreference;
    v22->_userVerificationPreference = v27;

    v29 = [algorithmsCopy copy];
    supportedAlgorithms = v22->_supportedAlgorithms;
    v22->_supportedAlgorithms = v29;

    v22->_credentialType = type;
    v31 = [credentialsCopy copy];
    excludedCredentials = v22->_excludedCredentials;
    v22->_excludedCredentials = v31;

    objc_storeStrong(&v22->_registrationExtensionInput, input);
    objc_storeStrong(&v22->_assertionExtensionInput, extensionInput);
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
  v14 = [[self alloc] initWithCredentialIdentity:v13 clientDataHash:v12 userVerificationPreference:v11 supportedAlgorithms:v10];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  credentialIdentity = self->_credentialIdentity;
  coderCopy = coder;
  [coderCopy encodeObject:credentialIdentity forKey:@"credentialIdentity"];
  [coderCopy encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [coderCopy encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [coderCopy encodeObject:self->_supportedAlgorithms forKey:@"supportedAlgorithms"];
  [coderCopy encodeInteger:self->_credentialType forKey:@"credentialType"];
  [coderCopy encodeObject:self->_excludedCredentials forKey:@"excludedCredentials"];
  [coderCopy encodeObject:self->_registrationExtensionInput forKey:@"registrationExtensionInput"];
  [coderCopy encodeObject:self->_assertionExtensionInput forKey:@"assertionExtensionInput"];
}

- (ASPasskeyCredentialRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedAlgorithms"];
  v9 = [coderCopy decodeIntegerForKey:@"credentialType"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"excludedCredentials"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registrationExtensionInput"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assertionExtensionInput"];

  v16 = [(ASPasskeyCredentialRequest *)self _initWithCredentialIdentity:v5 clientDataHash:v6 userVerificationPreference:v7 supportedAlgorithms:v8 credentialType:v9 excludedCredentials:v13 registrationExtensionInput:v14 assertionExtensionInput:v15];
  return v16;
}

@end
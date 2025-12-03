@interface ASAuthorization
+ (id)authorizationCredentialForAccountRegistration:(id)registration;
+ (id)authorizationFromCredential:(id)credential;
+ (id)authorizationProviderForAccountRegistration:(id)registration;
- (ASAuthorization)init;
- (ASAuthorization)initWithCorePlatformKeyCredentialAssertion:(id)assertion;
- (ASAuthorization)initWithCorePlatformKeyCredentialRegistration:(id)registration;
- (ASAuthorization)initWithProvider:(id)provider credential:(id)credential;
- (id)debugDescription;
- (id)description;
@end

@implementation ASAuthorization

- (ASAuthorization)init
{
  [(ASAuthorization *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorization)initWithProvider:(id)provider credential:(id)credential
{
  providerCopy = provider;
  credentialCopy = credential;
  v12.receiver = self;
  v12.super_class = ASAuthorization;
  v9 = [(ASAuthorization *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, provider);
    objc_storeStrong(&v10->_credential, credential);
  }

  return v10;
}

- (ASAuthorization)initWithCorePlatformKeyCredentialAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = [ASAuthorizationPlatformPublicKeyCredentialProvider alloc];
  relyingPartyIdentifier = [assertionCopy relyingPartyIdentifier];
  v7 = [(ASAuthorizationPlatformPublicKeyCredentialProvider *)v5 initWithRelyingPartyIdentifier:relyingPartyIdentifier];

  v8 = [[ASAuthorizationPlatformPublicKeyCredentialAssertion alloc] initWithCoreCredential:assertionCopy];
  v9 = [(ASAuthorization *)self initWithProvider:v7 credential:v8];

  return v9;
}

- (ASAuthorization)initWithCorePlatformKeyCredentialRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = [ASAuthorizationPlatformPublicKeyCredentialProvider alloc];
  relyingPartyIdentifier = [registrationCopy relyingPartyIdentifier];
  v7 = [(ASAuthorizationPlatformPublicKeyCredentialProvider *)v5 initWithRelyingPartyIdentifier:relyingPartyIdentifier];

  v8 = [[ASAuthorizationPlatformPublicKeyCredentialRegistration alloc] initWithCoreCredential:registrationCopy];
  v9 = [(ASAuthorization *)self initWithProvider:v7 credential:v8];

  return v9;
}

+ (id)authorizationFromCredential:(id)credential
{
  credentialCopy = credential;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(ASAuthorizationPasswordProvider);
    v5 = credentialCopy;
    v6 = [ASPasswordCredential alloc];
    user = [v5 user];
    password = [v5 password];

    v9 = [(ASPasswordCredential *)v6 initWithUser:user password:password];
LABEL_15:

    v21 = [[ASAuthorization alloc] initWithProvider:v4 credential:v9];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(ASAuthorizationAppleIDProvider);
    authorization = [credentialCopy authorization];
    user = [authorization credential];

    authenticationServicesCredential = [user authenticationServicesCredential];
LABEL_14:
    v9 = authenticationServicesCredential;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    user = credentialCopy;
    v12 = [ASAuthorizationPlatformPublicKeyCredentialProvider alloc];
    relyingPartyIdentifier = [user relyingPartyIdentifier];
    v4 = [(ASAuthorizationPlatformPublicKeyCredentialProvider *)v12 initWithRelyingPartyIdentifier:relyingPartyIdentifier];

    v14 = ASAuthorizationPlatformPublicKeyCredentialAssertion;
LABEL_13:
    authenticationServicesCredential = [[v14 alloc] initWithCoreCredential:user];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    user = credentialCopy;
    v15 = [ASAuthorizationPlatformPublicKeyCredentialProvider alloc];
    relyingPartyIdentifier2 = [user relyingPartyIdentifier];
    v4 = [(ASAuthorizationPlatformPublicKeyCredentialProvider *)v15 initWithRelyingPartyIdentifier:relyingPartyIdentifier2];

    v14 = ASAuthorizationPlatformPublicKeyCredentialRegistration;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    user = credentialCopy;
    v17 = [ASAuthorizationSecurityKeyPublicKeyCredentialProvider alloc];
    relyingPartyIdentifier3 = [user relyingPartyIdentifier];
    v4 = [(ASAuthorizationSecurityKeyPublicKeyCredentialProvider *)v17 initWithRelyingPartyIdentifier:relyingPartyIdentifier3];

    v14 = ASAuthorizationSecurityKeyPublicKeyCredentialAssertion;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    user = credentialCopy;
    v19 = [ASAuthorizationSecurityKeyPublicKeyCredentialProvider alloc];
    relyingPartyIdentifier4 = [user relyingPartyIdentifier];
    v4 = [(ASAuthorizationSecurityKeyPublicKeyCredentialProvider *)v19 initWithRelyingPartyIdentifier:relyingPartyIdentifier4];

    v14 = ASAuthorizationSecurityKeyPublicKeyCredentialRegistration;
    goto LABEL_13;
  }

  if ([ASAuthorization authorizationCredentialIsAccountRegistration:credentialCopy])
  {
    user = credentialCopy;
    v4 = [ASAuthorization authorizationProviderForAccountRegistration:user];
    authenticationServicesCredential = [ASAuthorization authorizationCredentialForAccountRegistration:user];
    goto LABEL_14;
  }

  v23 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [ASAuthorization authorizationFromCredential:v23];
  }

  v21 = 0;
LABEL_16:

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p { provider: %@ }>", v5, self, self->_provider];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p { provider: %@, credential: %@ }>", v5, self, self->_provider, self->_credential];

  return v6;
}

+ (id)authorizationProviderForAccountRegistration:(id)registration
{
  registrationCopy = registration;
  v4 = sub_1B1D7B90C();
  relyingPartyIdentifier = [v4 relyingPartyIdentifier];

  if (!relyingPartyIdentifier)
  {
    sub_1B1D7BE4C();
    relyingPartyIdentifier = sub_1B1D7BE1C();
  }

  initWithRelyingPartyIdentifier_ = [objc_allocWithZone(ASAuthorizationPlatformPublicKeyCredentialProvider) initWithRelyingPartyIdentifier_];

  return initWithRelyingPartyIdentifier_;
}

+ (id)authorizationCredentialForAccountRegistration:(id)registration
{
  registrationCopy = registration;
  v4 = sub_1B1CED6D8();

  return v4;
}

+ (void)authorizationFromCredential:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = 138477827;
  v4 = objc_opt_class();
  _os_log_error_impl(&dword_1B1C8D000, v1, OS_LOG_TYPE_ERROR, "Found credential of unexpected type: %{private}@", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

@end
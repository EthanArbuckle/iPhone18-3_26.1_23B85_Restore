@interface ASAuthorization
+ (id)authorizationCredentialForAccountRegistration:(id)a3;
+ (id)authorizationFromCredential:(id)a3;
+ (id)authorizationProviderForAccountRegistration:(id)a3;
- (ASAuthorization)init;
- (ASAuthorization)initWithCorePlatformKeyCredentialAssertion:(id)a3;
- (ASAuthorization)initWithCorePlatformKeyCredentialRegistration:(id)a3;
- (ASAuthorization)initWithProvider:(id)a3 credential:(id)a4;
- (id)debugDescription;
- (id)description;
@end

@implementation ASAuthorization

- (ASAuthorization)init
{
  [(ASAuthorization *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorization)initWithProvider:(id)a3 credential:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASAuthorization;
  v9 = [(ASAuthorization *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, a3);
    objc_storeStrong(&v10->_credential, a4);
  }

  return v10;
}

- (ASAuthorization)initWithCorePlatformKeyCredentialAssertion:(id)a3
{
  v4 = a3;
  v5 = [ASAuthorizationPlatformPublicKeyCredentialProvider alloc];
  v6 = [v4 relyingPartyIdentifier];
  v7 = [(ASAuthorizationPlatformPublicKeyCredentialProvider *)v5 initWithRelyingPartyIdentifier:v6];

  v8 = [[ASAuthorizationPlatformPublicKeyCredentialAssertion alloc] initWithCoreCredential:v4];
  v9 = [(ASAuthorization *)self initWithProvider:v7 credential:v8];

  return v9;
}

- (ASAuthorization)initWithCorePlatformKeyCredentialRegistration:(id)a3
{
  v4 = a3;
  v5 = [ASAuthorizationPlatformPublicKeyCredentialProvider alloc];
  v6 = [v4 relyingPartyIdentifier];
  v7 = [(ASAuthorizationPlatformPublicKeyCredentialProvider *)v5 initWithRelyingPartyIdentifier:v6];

  v8 = [[ASAuthorizationPlatformPublicKeyCredentialRegistration alloc] initWithCoreCredential:v4];
  v9 = [(ASAuthorization *)self initWithProvider:v7 credential:v8];

  return v9;
}

+ (id)authorizationFromCredential:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(ASAuthorizationPasswordProvider);
    v5 = v3;
    v6 = [ASPasswordCredential alloc];
    v7 = [v5 user];
    v8 = [v5 password];

    v9 = [(ASPasswordCredential *)v6 initWithUser:v7 password:v8];
LABEL_15:

    v21 = [[ASAuthorization alloc] initWithProvider:v4 credential:v9];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(ASAuthorizationAppleIDProvider);
    v10 = [v3 authorization];
    v7 = [v10 credential];

    v11 = [v7 authenticationServicesCredential];
LABEL_14:
    v9 = v11;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
    v12 = [ASAuthorizationPlatformPublicKeyCredentialProvider alloc];
    v13 = [v7 relyingPartyIdentifier];
    v4 = [(ASAuthorizationPlatformPublicKeyCredentialProvider *)v12 initWithRelyingPartyIdentifier:v13];

    v14 = ASAuthorizationPlatformPublicKeyCredentialAssertion;
LABEL_13:
    v11 = [[v14 alloc] initWithCoreCredential:v7];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
    v15 = [ASAuthorizationPlatformPublicKeyCredentialProvider alloc];
    v16 = [v7 relyingPartyIdentifier];
    v4 = [(ASAuthorizationPlatformPublicKeyCredentialProvider *)v15 initWithRelyingPartyIdentifier:v16];

    v14 = ASAuthorizationPlatformPublicKeyCredentialRegistration;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
    v17 = [ASAuthorizationSecurityKeyPublicKeyCredentialProvider alloc];
    v18 = [v7 relyingPartyIdentifier];
    v4 = [(ASAuthorizationSecurityKeyPublicKeyCredentialProvider *)v17 initWithRelyingPartyIdentifier:v18];

    v14 = ASAuthorizationSecurityKeyPublicKeyCredentialAssertion;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
    v19 = [ASAuthorizationSecurityKeyPublicKeyCredentialProvider alloc];
    v20 = [v7 relyingPartyIdentifier];
    v4 = [(ASAuthorizationSecurityKeyPublicKeyCredentialProvider *)v19 initWithRelyingPartyIdentifier:v20];

    v14 = ASAuthorizationSecurityKeyPublicKeyCredentialRegistration;
    goto LABEL_13;
  }

  if ([ASAuthorization authorizationCredentialIsAccountRegistration:v3])
  {
    v7 = v3;
    v4 = [ASAuthorization authorizationProviderForAccountRegistration:v7];
    v11 = [ASAuthorization authorizationCredentialForAccountRegistration:v7];
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

+ (id)authorizationProviderForAccountRegistration:(id)a3
{
  v3 = a3;
  v4 = sub_1B1D7B90C();
  v5 = [v4 relyingPartyIdentifier];

  if (!v5)
  {
    sub_1B1D7BE4C();
    v5 = sub_1B1D7BE1C();
  }

  v6 = [objc_allocWithZone(ASAuthorizationPlatformPublicKeyCredentialProvider) initWithRelyingPartyIdentifier_];

  return v6;
}

+ (id)authorizationCredentialForAccountRegistration:(id)a3
{
  v3 = a3;
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
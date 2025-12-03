@interface AKAppleIDAuthenticationController(TrustedContacts)
- (id)_authContextForAccount:()TrustedContacts forceInteraction:presentingViewController:;
- (id)_authContextForAccount:()TrustedContacts forceInteraction:verifyCredentialReason:presentingViewController:;
- (void)aaui_authenticateAccount:()TrustedContacts forceInteraction:presentingViewController:completion:;
- (void)aaui_beneficiaryAuthForAccount:()TrustedContacts presentingViewController:completion:;
- (void)aaui_beneficiaryViewAccessKeyForAccount:()TrustedContacts presentingViewController:completion:;
- (void)aaui_custodianAuthForAccount:()TrustedContacts presentingViewController:forceInteraction:completion:;
@end

@implementation AKAppleIDAuthenticationController(TrustedContacts)

- (void)aaui_authenticateAccount:()TrustedContacts forceInteraction:presentingViewController:completion:
{
  v10 = a6;
  v11 = [self _authContextForAccount:a3 forceInteraction:a4 presentingViewController:a5];
  [self authenticateWithContext:v11 completion:v10];
}

- (void)aaui_custodianAuthForAccount:()TrustedContacts presentingViewController:forceInteraction:completion:
{
  v10 = a6;
  v11 = [self _authContextForAccount:a3 forceInteraction:a5 verifyCredentialReason:2 presentingViewController:a4];
  [self authenticateWithContext:v11 completion:v10];
}

- (void)aaui_beneficiaryAuthForAccount:()TrustedContacts presentingViewController:completion:
{
  v8 = a5;
  v9 = [self _authContextForAccount:a3 forceInteraction:1 verifyCredentialReason:1 presentingViewController:a4];
  [self authenticateWithContext:v9 completion:v8];
}

- (void)aaui_beneficiaryViewAccessKeyForAccount:()TrustedContacts presentingViewController:completion:
{
  v8 = a5;
  v9 = [self _authContextForAccount:a3 forceInteraction:1 verifyCredentialReason:4 presentingViewController:a4];
  [self authenticateWithContext:v9 completion:v8];
}

- (id)_authContextForAccount:()TrustedContacts forceInteraction:presentingViewController:
{
  v7 = MEMORY[0x1E698DE80];
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  username = [v9 username];
  [v10 setUsername:username];

  aa_altDSID = [v9 aa_altDSID];

  [v10 setAltDSID:aa_altDSID];
  [v10 setIsUsernameEditable:0];
  [v10 setServiceType:1];
  [v10 setPresentingViewController:v8];

  if (a4)
  {
    [v10 setAuthenticationType:2];
  }

  return v10;
}

- (id)_authContextForAccount:()TrustedContacts forceInteraction:verifyCredentialReason:presentingViewController:
{
  v7 = [self _authContextForAccount:a3 forceInteraction:a4 presentingViewController:a6];
  [v7 setVerifyCredentialReason:a5];

  return v7;
}

@end
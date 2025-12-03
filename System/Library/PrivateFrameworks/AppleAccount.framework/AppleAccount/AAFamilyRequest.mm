@interface AAFamilyRequest
- (AAFamilyRequest)initWithAppleAccount:(id)account grandSlamAccount:(id)slamAccount accountStore:(id)store;
- (AAFamilyRequest)initWithGrandSlamAccount:(id)account accountStore:(id)store;
- (AAFamilyRequest)initWithGrandSlamSigner:(id)signer;
- (id)_familyGrandSlamSigner;
- (id)urlRequest;
@end

@implementation AAFamilyRequest

- (AAFamilyRequest)initWithAppleAccount:(id)account grandSlamAccount:(id)slamAccount accountStore:(id)store
{
  accountCopy = account;
  slamAccountCopy = slamAccount;
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = AAFamilyRequest;
  v12 = [(AAFamilyRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appleAccount, account);
    v14 = [[AAGrandSlamSigner alloc] initWithAccountStore:storeCopy grandSlamAccount:slamAccountCopy appTokenID:@"com.apple.gs.icloud.auth"];
    grandSlamSigner = v13->_grandSlamSigner;
    v13->_grandSlamSigner = v14;
  }

  return v13;
}

- (AAFamilyRequest)initWithGrandSlamAccount:(id)account accountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = AAFamilyRequest;
  v8 = [(AAFamilyRequest *)&v12 init];
  if (v8)
  {
    v9 = [[AAGrandSlamSigner alloc] initWithAccountStore:storeCopy grandSlamAccount:accountCopy appTokenID:@"com.apple.gs.icloud.family.auth"];
    grandSlamSigner = v8->_grandSlamSigner;
    v8->_grandSlamSigner = v9;
  }

  return v8;
}

- (AAFamilyRequest)initWithGrandSlamSigner:(id)signer
{
  signerCopy = signer;
  v12.receiver = self;
  v12.super_class = AAFamilyRequest;
  v6 = [(AAFamilyRequest *)&v12 init];
  if (v6)
  {
    accountStore = [signerCopy accountStore];
    grandSlamAccount = [signerCopy grandSlamAccount];
    v9 = [accountStore aida_iCloudAccountMatchingAppleIDAuthAccount:grandSlamAccount];
    appleAccount = v6->_appleAccount;
    v6->_appleAccount = v9;

    objc_storeStrong(&v6->_grandSlamSigner, signer);
  }

  return v6;
}

- (id)_familyGrandSlamSigner
{
  familyGrandSlamSigner = self->_familyGrandSlamSigner;
  if (!familyGrandSlamSigner)
  {
    v4 = [AAGrandSlamSigner alloc];
    accountStore = [(AAGrandSlamSigner *)self->_grandSlamSigner accountStore];
    grandSlamAccount = [(AAGrandSlamSigner *)self->_grandSlamSigner grandSlamAccount];
    v7 = [(AAGrandSlamSigner *)v4 initWithAccountStore:accountStore grandSlamAccount:grandSlamAccount appTokenID:@"com.apple.gs.icloud.family.auth"];
    v8 = self->_familyGrandSlamSigner;
    self->_familyGrandSlamSigner = v7;

    [(AAGrandSlamSigner *)self->_familyGrandSlamSigner setHeaderFieldKey:@"X-Apple-Family-GS-Token"];
    familyGrandSlamSigner = self->_familyGrandSlamSigner;
  }

  return familyGrandSlamSigner;
}

- (id)urlRequest
{
  v11.receiver = self;
  v11.super_class = AAFamilyRequest;
  urlRequest = [(AARequest *)&v11 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_appleAccount preferUsingPassword:0];
  [v4 aa_addDeviceInternalDevHeaderIfEnabled];
  [v4 aa_addDeviceIDHeader];
  [v4 aa_addLoggedInAppleIDHeaderWithAccount:self->_appleAccount];
  [v4 aa_addLocationSharingAllowedHeader];
  if (![(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:v4 isUserInitiated:[(AAFamilyRequest *)self isUserInitiated]])
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AAGrandSlamSigner failed!", v10, 2u);
    }
  }

  _familyGrandSlamSigner = [(AAFamilyRequest *)self _familyGrandSlamSigner];
  v7 = [_familyGrandSlamSigner signURLRequest:v4 isUserInitiated:{-[AAFamilyRequest isUserInitiated](self, "isUserInitiated")}];

  if ((v7 & 1) == 0)
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "AAGrandSlamSigner failed for _familyGrandSlamSigner", v10, 2u);
    }
  }

  return v4;
}

@end
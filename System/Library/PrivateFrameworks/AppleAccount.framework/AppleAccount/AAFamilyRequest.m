@interface AAFamilyRequest
- (AAFamilyRequest)initWithAppleAccount:(id)a3 grandSlamAccount:(id)a4 accountStore:(id)a5;
- (AAFamilyRequest)initWithGrandSlamAccount:(id)a3 accountStore:(id)a4;
- (AAFamilyRequest)initWithGrandSlamSigner:(id)a3;
- (id)_familyGrandSlamSigner;
- (id)urlRequest;
@end

@implementation AAFamilyRequest

- (AAFamilyRequest)initWithAppleAccount:(id)a3 grandSlamAccount:(id)a4 accountStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AAFamilyRequest;
  v12 = [(AAFamilyRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appleAccount, a3);
    v14 = [[AAGrandSlamSigner alloc] initWithAccountStore:v11 grandSlamAccount:v10 appTokenID:@"com.apple.gs.icloud.auth"];
    grandSlamSigner = v13->_grandSlamSigner;
    v13->_grandSlamSigner = v14;
  }

  return v13;
}

- (AAFamilyRequest)initWithGrandSlamAccount:(id)a3 accountStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AAFamilyRequest;
  v8 = [(AAFamilyRequest *)&v12 init];
  if (v8)
  {
    v9 = [[AAGrandSlamSigner alloc] initWithAccountStore:v7 grandSlamAccount:v6 appTokenID:@"com.apple.gs.icloud.family.auth"];
    grandSlamSigner = v8->_grandSlamSigner;
    v8->_grandSlamSigner = v9;
  }

  return v8;
}

- (AAFamilyRequest)initWithGrandSlamSigner:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AAFamilyRequest;
  v6 = [(AAFamilyRequest *)&v12 init];
  if (v6)
  {
    v7 = [v5 accountStore];
    v8 = [v5 grandSlamAccount];
    v9 = [v7 aida_iCloudAccountMatchingAppleIDAuthAccount:v8];
    appleAccount = v6->_appleAccount;
    v6->_appleAccount = v9;

    objc_storeStrong(&v6->_grandSlamSigner, a3);
  }

  return v6;
}

- (id)_familyGrandSlamSigner
{
  familyGrandSlamSigner = self->_familyGrandSlamSigner;
  if (!familyGrandSlamSigner)
  {
    v4 = [AAGrandSlamSigner alloc];
    v5 = [(AAGrandSlamSigner *)self->_grandSlamSigner accountStore];
    v6 = [(AAGrandSlamSigner *)self->_grandSlamSigner grandSlamAccount];
    v7 = [(AAGrandSlamSigner *)v4 initWithAccountStore:v5 grandSlamAccount:v6 appTokenID:@"com.apple.gs.icloud.family.auth"];
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
  v3 = [(AARequest *)&v11 urlRequest];
  v4 = [v3 mutableCopy];

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

  v6 = [(AAFamilyRequest *)self _familyGrandSlamSigner];
  v7 = [v6 signURLRequest:v4 isUserInitiated:{-[AAFamilyRequest isUserInitiated](self, "isUserInitiated")}];

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
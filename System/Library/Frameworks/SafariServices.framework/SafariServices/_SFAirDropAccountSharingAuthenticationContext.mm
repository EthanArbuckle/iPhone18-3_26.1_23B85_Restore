@interface _SFAirDropAccountSharingAuthenticationContext
- (NSDictionary)customLocalAuthenticationOptions;
- (_SFAirDropAccountSharingAuthenticationContext)initWithSavedAccount:(id)a3;
- (id)_localAuthenticationOptionsForSharingPasskeyWithAirDrop;
- (id)_localAuthenticationOptionsForSharingPasswordWithAirDrop;
- (id)_passcodeTitleForSharingPasskeyWithAirDrop;
- (id)_passcodeTitleForSharingPasswordWithAirDrop;
@end

@implementation _SFAirDropAccountSharingAuthenticationContext

- (_SFAirDropAccountSharingAuthenticationContext)initWithSavedAccount:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _SFAirDropAccountSharingAuthenticationContext;
  v6 = [(_SFAirDropAccountSharingAuthenticationContext *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_savedAccount, a3);
    v8 = v7;
  }

  return v7;
}

- (id)_localAuthenticationOptionsForSharingPasskeyWithAirDrop
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F50230E0;
  v2 = [(_SFAirDropAccountSharingAuthenticationContext *)self _passcodeTitleForSharingPasskeyWithAirDrop];
  v6[1] = &unk_1F50230F8;
  v7[0] = v2;
  v3 = _WBSLocalizedString();
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_localAuthenticationOptionsForSharingPasswordWithAirDrop
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F50230E0;
  v2 = [(_SFAirDropAccountSharingAuthenticationContext *)self _passcodeTitleForSharingPasswordWithAirDrop];
  v6[1] = &unk_1F50230F8;
  v7[0] = v2;
  v3 = _WBSLocalizedString();
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)_passcodeTitleForSharingPasskeyWithAirDrop
{
  v2 = [MEMORY[0x1E69C8860] currentDevice];
  [v2 deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

- (id)_passcodeTitleForSharingPasswordWithAirDrop
{
  v2 = [MEMORY[0x1E69C8860] currentDevice];
  [v2 deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

- (NSDictionary)customLocalAuthenticationOptions
{
  if (([(WBSSavedAccount *)self->_savedAccount credentialTypes]& 2) != 0)
  {
    [(_SFAirDropAccountSharingAuthenticationContext *)self _localAuthenticationOptionsForSharingPasskeyWithAirDrop];
  }

  else
  {
    [(_SFAirDropAccountSharingAuthenticationContext *)self _localAuthenticationOptionsForSharingPasswordWithAirDrop];
  }
  v3 = ;

  return v3;
}

@end
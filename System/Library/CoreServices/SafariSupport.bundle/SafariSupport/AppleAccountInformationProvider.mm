@interface AppleAccountInformationProvider
- (int64_t)_appleAccountSecurityState;
- (unint64_t)_primaryAppleAccountSecurityLevel;
- (void)getAppleAccountSecurityStateWithCompletion:(id)completion;
@end

@implementation AppleAccountInformationProvider

- (void)getAppleAccountSecurityStateWithCompletion:(id)completion
{
  completionCopy = completion;
  (*(completion + 2))(completionCopy, [(AppleAccountInformationProvider *)self _appleAccountSecurityState]);
}

- (int64_t)_appleAccountSecurityState
{
  _primaryAppleAccountSecurityLevel = [(AppleAccountInformationProvider *)self _primaryAppleAccountSecurityLevel];
  v3 = 1;
  if (_primaryAppleAccountSecurityLevel == 4)
  {
    v3 = 2;
  }

  if (_primaryAppleAccountSecurityLevel)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_primaryAppleAccountSecurityLevel
{
  v2 = objc_alloc_init(ACAccountStore);
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];

  v5 = +[AKAccountManager sharedInstance];
  v6 = [v5 authKitAccountWithAltDSID:aa_altDSID];
  v7 = [v5 securityLevelForAccount:v6];

  return v7;
}

@end
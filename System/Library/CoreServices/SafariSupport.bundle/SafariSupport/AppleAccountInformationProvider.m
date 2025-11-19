@interface AppleAccountInformationProvider
- (int64_t)_appleAccountSecurityState;
- (unint64_t)_primaryAppleAccountSecurityLevel;
- (void)getAppleAccountSecurityStateWithCompletion:(id)a3;
@end

@implementation AppleAccountInformationProvider

- (void)getAppleAccountSecurityStateWithCompletion:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(AppleAccountInformationProvider *)self _appleAccountSecurityState]);
}

- (int64_t)_appleAccountSecurityState
{
  v2 = [(AppleAccountInformationProvider *)self _primaryAppleAccountSecurityLevel];
  v3 = 1;
  if (v2 == 4)
  {
    v3 = 2;
  }

  if (v2)
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
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 aa_altDSID];

  v5 = +[AKAccountManager sharedInstance];
  v6 = [v5 authKitAccountWithAltDSID:v4];
  v7 = [v5 securityLevelForAccount:v6];

  return v7;
}

@end
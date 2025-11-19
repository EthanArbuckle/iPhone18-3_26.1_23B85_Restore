@interface ACAccount(AppleAccount_Internal)
- (uint64_t)_aa_benefactorAccount;
- (uint64_t)aa_isSubscribedToTrustedContactContainers;
- (void)_aa_setBenefactorAccount:()AppleAccount_Internal;
- (void)_aa_setLastAgreedTermsInfo:()AppleAccount_Internal;
- (void)_aa_setPersonID:()AppleAccount_Internal;
- (void)aa_setSubscribedToTrustedContactContainers:()AppleAccount_Internal;
@end

@implementation ACAccount(AppleAccount_Internal)

- (uint64_t)aa_isSubscribedToTrustedContactContainers
{
  objc_opt_class();
  v2 = [a1 objectForKeyedSubscript:@"subscribedToTrustedContactContainers"];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 BOOLValue];
  return v4;
}

- (void)aa_setSubscribedToTrustedContactContainers:()AppleAccount_Internal
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 setAccountProperty:v2 forKey:@"subscribedToTrustedContactContainers"];
}

- (uint64_t)_aa_benefactorAccount
{
  v1 = [a1 accountPropertyForKey:@"benefactorAccount"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_aa_setBenefactorAccount:()AppleAccount_Internal
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 setAccountProperty:v2 forKey:@"benefactorAccount"];
}

- (void)_aa_setPersonID:()AppleAccount_Internal
{
  v4 = a3;
  if ([v4 length])
  {
    [a1 setAccountProperty:v4 forKey:@"personID"];
  }
}

- (void)_aa_setLastAgreedTermsInfo:()AppleAccount_Internal
{
  v4 = a3;
  if ([v4 count])
  {
    [a1 setAccountProperty:v4 forKey:@"lastAgreedTerms"];
  }
}

@end
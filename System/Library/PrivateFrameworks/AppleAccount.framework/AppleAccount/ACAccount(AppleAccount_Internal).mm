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
  v2 = [self objectForKeyedSubscript:@"subscribedToTrustedContactContainers"];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  bOOLValue = [v3 BOOLValue];
  return bOOLValue;
}

- (void)aa_setSubscribedToTrustedContactContainers:()AppleAccount_Internal
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setAccountProperty:v2 forKey:@"subscribedToTrustedContactContainers"];
}

- (uint64_t)_aa_benefactorAccount
{
  v1 = [self accountPropertyForKey:@"benefactorAccount"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)_aa_setBenefactorAccount:()AppleAccount_Internal
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setAccountProperty:v2 forKey:@"benefactorAccount"];
}

- (void)_aa_setPersonID:()AppleAccount_Internal
{
  v4 = a3;
  if ([v4 length])
  {
    [self setAccountProperty:v4 forKey:@"personID"];
  }
}

- (void)_aa_setLastAgreedTermsInfo:()AppleAccount_Internal
{
  v4 = a3;
  if ([v4 count])
  {
    [self setAccountProperty:v4 forKey:@"lastAgreedTerms"];
  }
}

@end
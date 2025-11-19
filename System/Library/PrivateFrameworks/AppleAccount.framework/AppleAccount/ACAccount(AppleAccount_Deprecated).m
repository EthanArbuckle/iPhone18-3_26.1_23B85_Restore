@interface ACAccount(AppleAccount_Deprecated)
- (BOOL)aa_needsRegistration;
- (BOOL)aa_serviceUnavailable;
- (id)aa_accountFirstDisplayAlert;
- (id)aa_accountFooterButton;
- (id)aa_accountFooterText;
- (id)aa_accountTypeString;
- (id)aa_serviceUnavailableInfo;
- (uint64_t)aa_isSyncedAccount;
- (void)aa_setSyncedAccount:()AppleAccount_Deprecated;
@end

@implementation ACAccount(AppleAccount_Deprecated)

- (uint64_t)aa_isSyncedAccount
{
  v1 = [a1 accountPropertyForKey:@"syncedAccount"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)aa_setSyncedAccount:()AppleAccount_Deprecated
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 setAccountProperty:v2 forKey:@"syncedAccount"];
}

- (BOOL)aa_needsRegistration
{
  v2 = [a1 dataclassProperties];
  if (v2)
  {
    v3 = [a1 aa_personID];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)aa_serviceUnavailable
{
  v1 = [a1 propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:@"notAvailable"];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)aa_serviceUnavailableInfo
{
  v1 = [a1 propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:@"notAvailable"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)aa_accountTypeString
{
  v1 = [a1 accountType];
  v2 = [v1 accountTypeDescription];

  return v2;
}

- (id)aa_accountFooterText
{
  v1 = [a1 propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:@"accountFooterText"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)aa_accountFooterButton
{
  v1 = [a1 propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:@"accountFooterButton"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)aa_accountFirstDisplayAlert
{
  v1 = [a1 propertiesForDataclass:@"com.apple.Dataclass.Account"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKey:@"firstDisplayAlert"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
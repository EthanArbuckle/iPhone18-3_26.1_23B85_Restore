@interface ACAccount(AppleID)
- (BOOL)canRemoveAccount;
- (id)normalizedDSID;
@end

@implementation ACAccount(AppleID)

- (id)normalizedDSID
{
  v2 = [self accountPropertyForKey:*MEMORY[0x1E698C210]];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  stringValue = [v3 stringValue];

  if (stringValue)
  {
    v3 = stringValue;
  }

  else
  {
LABEL_5:
    accountType = [self accountType];
    identifier = [accountType identifier];
    v7 = [identifier isEqualToString:*MEMORY[0x1E69598B0]];

    if (!v7 || ([self accountPropertyForKey:@"profile-id"], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringByReplacingOccurrencesOfString:withString:", @"D:", &stru_1F2EF6280), v3 = objc_claimAutoreleasedReturnValue(), v8, !v3))
    {
      accountType2 = [self accountType];
      identifier2 = [accountType2 identifier];
      v11 = [identifier2 isEqualToString:*MEMORY[0x1E69597F8]];

      if (v11)
      {
        v3 = [self accountPropertyForKey:@"personID"];
      }

      else
      {
        v3 = 0;
      }
    }
  }

LABEL_10:

  return v3;
}

- (BOOL)canRemoveAccount
{
  _registeredBundles = [self _registeredBundles];
  v2 = [_registeredBundles count] == 0;

  return v2;
}

@end
@interface ACAccount(AppleID)
- (BOOL)canRemoveAccount;
- (id)normalizedDSID;
@end

@implementation ACAccount(AppleID)

- (id)normalizedDSID
{
  v2 = [a1 accountPropertyForKey:*MEMORY[0x1E698C210]];
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

  v4 = [v3 stringValue];

  if (v4)
  {
    v3 = v4;
  }

  else
  {
LABEL_5:
    v5 = [a1 accountType];
    v6 = [v5 identifier];
    v7 = [v6 isEqualToString:*MEMORY[0x1E69598B0]];

    if (!v7 || ([a1 accountPropertyForKey:@"profile-id"], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringByReplacingOccurrencesOfString:withString:", @"D:", &stru_1F2EF6280), v3 = objc_claimAutoreleasedReturnValue(), v8, !v3))
    {
      v9 = [a1 accountType];
      v10 = [v9 identifier];
      v11 = [v10 isEqualToString:*MEMORY[0x1E69597F8]];

      if (v11)
      {
        v3 = [a1 accountPropertyForKey:@"personID"];
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
  v1 = [a1 _registeredBundles];
  v2 = [v1 count] == 0;

  return v2;
}

@end
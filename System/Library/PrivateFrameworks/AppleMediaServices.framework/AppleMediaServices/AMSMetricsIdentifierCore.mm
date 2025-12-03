@interface AMSMetricsIdentifierCore
+ (BOOL)_shouldReplaceInfo:(id)info withInfo:(id)withInfo isServerRecord:(BOOL)record;
+ (BOOL)_shouldUpdateDatabaseFor:(id)for consumerIDResetInterval:(double)interval;
+ (id)_removeU13Identifier:(id)identifier account:(id)account;
@end

@implementation AMSMetricsIdentifierCore

+ (id)_removeU13Identifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  accountCopy = account;
  v7 = accountCopy;
  if (accountCopy && (([accountCopy ams_accountFlagValueForAccountFlag:AMSAccountFlagUnderThirteen], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v9 = 0) : (v9 = v8), v8, v10 = objc_msgSend(v9, "BOOLValue"), v9, (v10 & 1) != 0))
  {
    v11 = [identifierCopy copy];
    [v11 setValue:&stru_1F071BA78];
  }

  else
  {
    v11 = identifierCopy;
  }

  return v11;
}

+ (BOOL)_shouldUpdateDatabaseFor:(id)for consumerIDResetInterval:(double)interval
{
  forCopy = for;
  v6 = forCopy;
  if (forCopy)
  {
    serverProvidedAt = [forCopy serverProvidedAt];

    if (serverProvidedAt)
    {
      expires = [v6 expires];
      [expires timeIntervalSinceReferenceDate];
      v10 = v9;

      serverProvidedAt = [v6 serverProvidedAt];
      v11 = [serverProvidedAt dateByAddingTimeInterval:interval];
      [v11 timeIntervalSinceReferenceDate];
      v13 = v12;

      LOBYTE(serverProvidedAt) = v10 != v13;
    }
  }

  else
  {
    LOBYTE(serverProvidedAt) = 0;
  }

  return serverProvidedAt;
}

+ (BOOL)_shouldReplaceInfo:(id)info withInfo:(id)withInfo isServerRecord:(BOOL)record
{
  LODWORD(serverProvidedAt4) = record;
  infoCopy = info;
  withInfoCopy = withInfo;
  serverProvidedAt = [infoCopy serverProvidedAt];
  if (serverProvidedAt)
  {
  }

  else
  {
    serverProvidedAt2 = [withInfoCopy serverProvidedAt];

    if (!serverProvidedAt2)
    {
      modified = [infoCopy modified];
      [modified timeIntervalSinceReferenceDate];
      v30 = v29;
      modified2 = [withInfoCopy modified];
      [modified2 timeIntervalSinceReferenceDate];
      v33 = v32;

      if (v30 > v33)
      {
        if (!serverProvidedAt4)
        {
          goto LABEL_16;
        }

        if ([infoCopy deleted])
        {
          LOBYTE(serverProvidedAt4) = 0;
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }
  }

  serverProvidedAt3 = [infoCopy serverProvidedAt];

  if (!serverProvidedAt3)
  {
    goto LABEL_15;
  }

  serverProvidedAt4 = [withInfoCopy serverProvidedAt];

  if (serverProvidedAt4)
  {
    value = [infoCopy value];
    if (!value || (v13 = value, [infoCopy value], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(withInfoCopy, "value"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v13, !v16))
    {
      serverProvidedAt5 = [infoCopy serverProvidedAt];
      [serverProvidedAt5 timeIntervalSinceReferenceDate];
      v25 = v24;
      serverProvidedAt6 = [withInfoCopy serverProvidedAt];
      [serverProvidedAt6 timeIntervalSinceReferenceDate];
      LOBYTE(serverProvidedAt4) = v25 <= v27;

      goto LABEL_16;
    }

    serverProvidedAt7 = [infoCopy serverProvidedAt];
    [serverProvidedAt7 timeIntervalSinceReferenceDate];
    v19 = v18;
    serverProvidedAt8 = [withInfoCopy serverProvidedAt];
    [serverProvidedAt8 timeIntervalSinceReferenceDate];
    v22 = v21;

    if (v19 <= v22)
    {
      LOBYTE(serverProvidedAt4) = [infoCopy isEqualIgnoringLastSync:withInfoCopy];
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(serverProvidedAt4) = 1;
  }

LABEL_16:

  return serverProvidedAt4;
}

@end
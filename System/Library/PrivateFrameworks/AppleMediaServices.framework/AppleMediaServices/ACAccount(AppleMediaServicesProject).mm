@interface ACAccount(AppleMediaServicesProject)
- (id)ams_accountFlagOverrideValueForAccountFlag:()AppleMediaServicesProject;
- (id)ams_allStorefronts;
- (id)ams_dataMigrationStoragePath;
- (uint64_t)ams_biometricsState;
- (uint64_t)ams_copyStorefrontFromAccount:()AppleMediaServicesProject;
- (uint64_t)ams_isBundleOwner;
- (uint64_t)ams_isDemoAccount;
- (uint64_t)ams_isRegulatoryAccount;
- (uint64_t)ams_lastAuthenticationCredentialSource;
- (uint64_t)ams_lastRestrictedRegionSyncTimestamp;
- (uint64_t)ams_migrateCookiePropertiesWithError:()AppleMediaServicesProject;
- (uint64_t)ams_setAccountFlagOverrideValue:()AppleMediaServicesProject forAccountFlag:;
- (void)ams_setBiometricsState:()AppleMediaServicesProject;
- (void)ams_setDemoAccount:()AppleMediaServicesProject;
- (void)ams_setIsBundleOwner:()AppleMediaServicesProject;
- (void)ams_setLastAuthenticationCredentialSource:()AppleMediaServicesProject;
- (void)ams_setLastRestrictedRegionSyncTimestamp:()AppleMediaServicesProject;
- (void)ams_setRegulatoryAccount:()AppleMediaServicesProject;
@end

@implementation ACAccount(AppleMediaServicesProject)

- (id)ams_allStorefronts
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  ams_storefront = [self ams_storefront];
  [v2 ams_setNullableObject:ams_storefront forKey:AMSAccountMediaTypeProduction];

  return v2;
}

- (uint64_t)ams_biometricsState
{
  v1 = [self _accountPropertyForKey:@"biometricsState" expectedClass:objc_opt_class()];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (id)ams_dataMigrationStoragePath
{
  ams_DSID = [self ams_DSID];
  stringValue = [ams_DSID stringValue];
  if (stringValue)
  {
    ams_altDSID = stringValue;

LABEL_4:
    v5 = [@"/var/mobile/Library/com.apple.AppleMediaServices.notbackedup" stringByAppendingPathComponent:ams_altDSID];

    goto LABEL_5;
  }

  ams_altDSID = [self ams_altDSID];

  if (ams_altDSID)
  {
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (uint64_t)ams_isBundleOwner
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"isBundleOwner" expectedClass:v2];
}

- (uint64_t)ams_isDemoAccount
{
  result = [self ams_isiTunesAccount];
  if (result)
  {
    v3 = [self _accountPropertyForKey:@"isDemoAccount" expectedClass:objc_opt_class()];
    bOOLValue = [v3 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (uint64_t)ams_isRegulatoryAccount
{
  v1 = [self _accountPropertyForKey:@"isRegulatoryAccount" expectedClass:objc_opt_class()];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)ams_lastAuthenticationCredentialSource
{
  v1 = [self _accountPropertyForKey:@"lastAuthenticateCredentialSource" expectedClass:objc_opt_class()];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)ams_setLastAuthenticationCredentialSource:()AppleMediaServicesProject
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [self _setAccountProperty:v2 forKey:@"lastAuthenticateCredentialSource" expectedClass:objc_opt_class()];
}

- (uint64_t)ams_lastRestrictedRegionSyncTimestamp
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"lastRestrictedRegionSyncTimestamp" expectedClass:v2];
}

- (void)ams_setBiometricsState:()AppleMediaServicesProject
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [self _setAccountProperty:v2 forKey:@"biometricsState" expectedClass:objc_opt_class()];
}

- (void)ams_setDemoAccount:()AppleMediaServicesProject
{
  if ([self ams_isiTunesAccount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self _setAccountProperty:v5 forKey:@"isDemoAccount" expectedClass:objc_opt_class()];
  }
}

- (void)ams_setIsBundleOwner:()AppleMediaServicesProject
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"isBundleOwner" expectedClass:objc_opt_class()];
}

- (void)ams_setLastRestrictedRegionSyncTimestamp:()AppleMediaServicesProject
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"lastRestrictedRegionSyncTimestamp" expectedClass:objc_opt_class()];
}

- (void)ams_setRegulatoryAccount:()AppleMediaServicesProject
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setAccountProperty:v2 forKey:@"isRegulatoryAccount" expectedClass:objc_opt_class()];
}

- (uint64_t)ams_copyStorefrontFromAccount:()AppleMediaServicesProject
{
  v40 = *MEMORY[0x1E69E9840];
  ams_allStorefronts = [a3 ams_allStorefronts];
  if (![ams_allStorefronts count])
  {
    ams_allStorefronts2 = +[AMSLogConfig sharedAccountsConfig];
    if (!ams_allStorefronts2)
    {
      ams_allStorefronts2 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [ams_allStorefronts2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      *buf = 138543618;
      v32 = v19;
      v33 = 2114;
      v34 = v20;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] We can't update this account's storefront because the source account has no storefront.", buf, 0x16u);
    }

    goto LABEL_21;
  }

  ams_allStorefronts2 = [self ams_allStorefronts];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  oSLogObject = [ams_allStorefronts allKeys];
  v26 = [oSLogObject countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (!v26)
  {
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  v7 = 0;
  v25 = *v28;
  v23 = ams_allStorefronts;
  v24 = ams_allStorefronts2;
  selfCopy = self;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v28 != v25)
      {
        objc_enumerationMutation(oSLogObject);
      }

      v9 = *(*(&v27 + 1) + 8 * i);
      v10 = [ams_allStorefronts objectForKeyedSubscript:v9];
      v11 = [ams_allStorefronts2 objectForKeyedSubscript:v9];
      if (!v11 || ([v10 isEqualToString:v11] & 1) == 0)
      {
        [self ams_setStorefront:v10 forMediaType:v9];
        v12 = +[AMSLogConfig sharedAccountsConfig];
        if (!v12)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v12 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v14 = oSLogObject;
          v15 = objc_opt_class();
          v16 = AMSLogKey();
          v17 = AMSHashIfNeeded(v11);
          v18 = AMSHashIfNeeded(v10);
          *buf = 138544130;
          v32 = v15;
          oSLogObject = v14;
          self = selfCopy;
          v33 = 2114;
          v34 = v16;
          v35 = 2114;
          v36 = v17;
          v37 = 2114;
          v38 = v18;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Account storefront changed. old = %{public}@ | new = %{public}@", buf, 0x2Au);

          ams_allStorefronts = v23;
          ams_allStorefronts2 = v24;
        }

        v7 = 1;
      }
    }

    v26 = [oSLogObject countByEnumeratingWithState:&v27 objects:v39 count:16];
  }

  while (v26);
LABEL_22:

  return v7 & 1;
}

- (uint64_t)ams_migrateCookiePropertiesWithError:()AppleMediaServicesProject
{
  _ams_cookieProperties = [self _ams_cookieProperties];
  v6 = _ams_cookieProperties;
  if (_ams_cookieProperties)
  {
    if ([_ams_cookieProperties count])
    {
      v16 = 0;
      v7 = [AMSCookieStorage cookiesForAccount:self cookieDatabaseOnly:1 error:&v16];
      v8 = v16;
      v9 = v8;
      if (v7)
      {
        v15 = v8;
        v10 = [self _ams_migrateCookieProperties:v6 intoCookies:v7 error:&v15];
        v11 = v15;

        if (v10)
        {
          v12 = 1;
LABEL_17:
          v9 = v11;
          goto LABEL_18;
        }

        if (!a3)
        {
          v12 = 0;
          goto LABEL_17;
        }

        v9 = v11;
      }

      else
      {
        if (!a3)
        {
          v12 = 0;
          goto LABEL_18;
        }

        v11 = v8;
      }

      v13 = v11;
      v12 = 0;
      *a3 = v11;
LABEL_18:

      goto LABEL_19;
    }

    v12 = 1;
  }

  else if (a3)
  {
    AMSError(7, @"Cannot Migrate Cookie Properties", @"There are no cookie properties to migrate.", 0);
    *a3 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (id)ams_accountFlagOverrideValueForAccountFlag:()AppleMediaServicesProject
{
  v4 = a3;
  v5 = +[AMSDefaults accountFlagOverrides];
  v6 = v5;
  if (!v5 || ![v5 count])
  {
    v10 = 0;
    goto LABEL_13;
  }

  identifier = [self identifier];
  if (!identifier)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v8 = [v6 objectForKeyedSubscript:identifier];
  v9 = v8;
  if (!v8 || ![v8 count])
  {
    goto LABEL_8;
  }

  v10 = [v9 objectForKeyedSubscript:v4];
  if (([MEMORY[0x1E6959A28] _isAccountFlagValue:v10 validForAccountFlag:v4] & 1) == 0)
  {

LABEL_8:
    v10 = 0;
  }

LABEL_12:
LABEL_13:

  return v10;
}

- (uint64_t)ams_setAccountFlagOverrideValue:()AppleMediaServicesProject forAccountFlag:
{
  v6 = a3;
  v7 = a4;
  identifier = [self identifier];
  if (identifier && [MEMORY[0x1E6959A28] _isAccountFlagValue:v6 validForAccountFlag:v7])
  {
    v9 = +[AMSDefaults accountFlagOverrides];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v14 = v12;

    v15 = [v14 objectForKeyedSubscript:identifier];
    v16 = [v15 mutableCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v19 = v18;

    [v19 setObject:v6 forKeyedSubscript:v7];
    if (([v19 isEqualToDictionary:v15] & 1) == 0)
    {
      [v14 setObject:v19 forKeyedSubscript:identifier];
      [AMSDefaults setAccountFlagOverrides:v14];
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
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
  v3 = [a1 ams_storefront];
  [v2 ams_setNullableObject:v3 forKey:AMSAccountMediaTypeProduction];

  return v2;
}

- (uint64_t)ams_biometricsState
{
  v1 = [a1 _accountPropertyForKey:@"biometricsState" expectedClass:objc_opt_class()];
  v2 = [v1 integerValue];

  return v2;
}

- (id)ams_dataMigrationStoragePath
{
  v2 = [a1 ams_DSID];
  v3 = [v2 stringValue];
  if (v3)
  {
    v4 = v3;

LABEL_4:
    v5 = [@"/var/mobile/Library/com.apple.AppleMediaServices.notbackedup" stringByAppendingPathComponent:v4];

    goto LABEL_5;
  }

  v4 = [a1 ams_altDSID];

  if (v4)
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

  return [a1 _accountPropertyForKey:@"isBundleOwner" expectedClass:v2];
}

- (uint64_t)ams_isDemoAccount
{
  result = [a1 ams_isiTunesAccount];
  if (result)
  {
    v3 = [a1 _accountPropertyForKey:@"isDemoAccount" expectedClass:objc_opt_class()];
    v4 = [v3 BOOLValue];

    return v4;
  }

  return result;
}

- (uint64_t)ams_isRegulatoryAccount
{
  v1 = [a1 _accountPropertyForKey:@"isRegulatoryAccount" expectedClass:objc_opt_class()];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)ams_lastAuthenticationCredentialSource
{
  v1 = [a1 _accountPropertyForKey:@"lastAuthenticateCredentialSource" expectedClass:objc_opt_class()];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (void)ams_setLastAuthenticationCredentialSource:()AppleMediaServicesProject
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [a1 _setAccountProperty:v2 forKey:@"lastAuthenticateCredentialSource" expectedClass:objc_opt_class()];
}

- (uint64_t)ams_lastRestrictedRegionSyncTimestamp
{
  v2 = objc_opt_class();

  return [a1 _accountPropertyForKey:@"lastRestrictedRegionSyncTimestamp" expectedClass:v2];
}

- (void)ams_setBiometricsState:()AppleMediaServicesProject
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [a1 _setAccountProperty:v2 forKey:@"biometricsState" expectedClass:objc_opt_class()];
}

- (void)ams_setDemoAccount:()AppleMediaServicesProject
{
  if ([a1 ams_isiTunesAccount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [a1 _setAccountProperty:v5 forKey:@"isDemoAccount" expectedClass:objc_opt_class()];
  }
}

- (void)ams_setIsBundleOwner:()AppleMediaServicesProject
{
  v4 = a3;
  [a1 _setAccountProperty:v4 forKey:@"isBundleOwner" expectedClass:objc_opt_class()];
}

- (void)ams_setLastRestrictedRegionSyncTimestamp:()AppleMediaServicesProject
{
  v4 = a3;
  [a1 _setAccountProperty:v4 forKey:@"lastRestrictedRegionSyncTimestamp" expectedClass:objc_opt_class()];
}

- (void)ams_setRegulatoryAccount:()AppleMediaServicesProject
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _setAccountProperty:v2 forKey:@"isRegulatoryAccount" expectedClass:objc_opt_class()];
}

- (uint64_t)ams_copyStorefrontFromAccount:()AppleMediaServicesProject
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [a3 ams_allStorefronts];
  if (![v4 count])
  {
    v5 = +[AMSLogConfig sharedAccountsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      *buf = 138543618;
      v32 = v19;
      v33 = 2114;
      v34 = v20;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] We can't update this account's storefront because the source account has no storefront.", buf, 0x16u);
    }

    goto LABEL_21;
  }

  v5 = [a1 ams_allStorefronts];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v4 allKeys];
  v26 = [v6 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (!v26)
  {
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  v7 = 0;
  v25 = *v28;
  v23 = v4;
  v24 = v5;
  v22 = a1;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v28 != v25)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v27 + 1) + 8 * i);
      v10 = [v4 objectForKeyedSubscript:v9];
      v11 = [v5 objectForKeyedSubscript:v9];
      if (!v11 || ([v10 isEqualToString:v11] & 1) == 0)
      {
        [a1 ams_setStorefront:v10 forMediaType:v9];
        v12 = +[AMSLogConfig sharedAccountsConfig];
        if (!v12)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        v13 = [v12 OSLogObject];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = v6;
          v15 = objc_opt_class();
          v16 = AMSLogKey();
          v17 = AMSHashIfNeeded(v11);
          v18 = AMSHashIfNeeded(v10);
          *buf = 138544130;
          v32 = v15;
          v6 = v14;
          a1 = v22;
          v33 = 2114;
          v34 = v16;
          v35 = 2114;
          v36 = v17;
          v37 = 2114;
          v38 = v18;
          _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Account storefront changed. old = %{public}@ | new = %{public}@", buf, 0x2Au);

          v4 = v23;
          v5 = v24;
        }

        v7 = 1;
      }
    }

    v26 = [v6 countByEnumeratingWithState:&v27 objects:v39 count:16];
  }

  while (v26);
LABEL_22:

  return v7 & 1;
}

- (uint64_t)ams_migrateCookiePropertiesWithError:()AppleMediaServicesProject
{
  v5 = [a1 _ams_cookieProperties];
  v6 = v5;
  if (v5)
  {
    if ([v5 count])
    {
      v16 = 0;
      v7 = [AMSCookieStorage cookiesForAccount:a1 cookieDatabaseOnly:1 error:&v16];
      v8 = v16;
      v9 = v8;
      if (v7)
      {
        v15 = v8;
        v10 = [a1 _ams_migrateCookieProperties:v6 intoCookies:v7 error:&v15];
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

  v7 = [a1 identifier];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v8 = [v6 objectForKeyedSubscript:v7];
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
  v8 = [a1 identifier];
  if (v8 && [MEMORY[0x1E6959A28] _isAccountFlagValue:v6 validForAccountFlag:v7])
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

    v15 = [v14 objectForKeyedSubscript:v8];
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
      [v14 setObject:v19 forKeyedSubscript:v8];
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
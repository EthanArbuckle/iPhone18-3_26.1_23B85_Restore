@interface ACAccount(AppleMediaServices)
+ (AMSEphemeralAccount)ams_createEphemeralAccount;
+ (AMSStorageDatabase)_ams_storage;
+ (id)_defaultValueForAccountFlag:()AppleMediaServices;
+ (id)_getSetCookiesForResponse:()AppleMediaServices;
+ (id)_getSetGlobalCookiesForResponse:()AppleMediaServices;
+ (id)ams_globalEphemeralAccountProperties;
+ (id)ams_globalEphemeralAccountPropertiesForAccount:()AppleMediaServices;
+ (uint64_t)_isAccountFlagValue:()AppleMediaServices validForAccountFlag:;
+ (uint64_t)_isAccountFlagWritable:()AppleMediaServices;
- (AMSAccountIdentity)ams_accountID;
- (BOOL)_ams_migrateCookieProperties:()AppleMediaServices intoCookies:error:;
- (BOOL)ams_isInRestrictedRegionWithBag:()AppleMediaServices shouldWaitForSync:;
- (BOOL)ams_isSelectedProfile;
- (BOOL)ams_requiresAuthKitUpdate;
- (id)_accountPropertyForKey:()AppleMediaServices dataProtectionClass:expectedClasses:error:;
- (id)_accountPropertyForKey:()AppleMediaServices expectedClass:;
- (id)_accountPropertyForKey:()AppleMediaServices expectedClassContainedInArray:;
- (id)_ams_accountFlagsWithError:()AppleMediaServices;
- (id)_cookiesMatchingProperties:()AppleMediaServices;
- (id)_ephemeralAccountPropertyForKey:()AppleMediaServices dataProtectionClass:expectedClasses:error:;
- (id)_hashedActiveState;
- (id)_hashedIdentifiers;
- (id)_hashedStorefront;
- (id)_updateCookiesWithCookiesToAdd:()AppleMediaServices cookiesToRemove:;
- (id)ams_DSID;
- (id)ams_accountFlagValueForAccountFlag:()AppleMediaServices;
- (id)ams_accountFlags;
- (id)ams_altDSID;
- (id)ams_asynchronouslyAddCookiesForResponse:()AppleMediaServices;
- (id)ams_asynchronouslyAddGlobalCookiesForResponse:()AppleMediaServices;
- (id)ams_cookies;
- (id)ams_cookiesForURL:()AppleMediaServices;
- (id)ams_cookiesForURL:()AppleMediaServices bag:cleanupGlobalCookies:;
- (id)ams_delta:()AppleMediaServices;
- (id)ams_fullName;
- (id)ams_homeID;
- (id)ams_homeIdentifier;
- (id)ams_homeUserID;
- (id)ams_iCloudPartition;
- (id)ams_isInRestrictedRegionWithBag:()AppleMediaServices waitForSync:;
- (id)ams_lastAuthenticationServerResponse;
- (id)ams_password;
- (id)ams_rawPassword;
- (id)ams_secureToken;
- (id)ams_storefrontForMediaType:()AppleMediaServices;
- (id)hashedDescription;
- (uint64_t)_accountPropertyBooleanForKey:()AppleMediaServices;
- (uint64_t)_ams_cookieProperties;
- (uint64_t)_ams_setCookieProperties:()AppleMediaServices;
- (uint64_t)_updateCookiesWithCookiesToAdd:()AppleMediaServices cookiesToRemove:error:;
- (uint64_t)ams_addCookiesForResponse:()AppleMediaServices;
- (uint64_t)ams_addCookiesForResponse:()AppleMediaServices error:;
- (uint64_t)ams_addCookiesForResult:()AppleMediaServices;
- (uint64_t)ams_addGlobalCookiesForResponse:()AppleMediaServices;
- (uint64_t)ams_addGlobalCookiesForResult:()AppleMediaServices;
- (uint64_t)ams_automaticDownloadKinds;
- (uint64_t)ams_bundleOwner;
- (uint64_t)ams_creditsString;
- (uint64_t)ams_didAcknowledgeBundleHolderPrivacyAcknowledgementOnDevice;
- (uint64_t)ams_disableAccountFlagsSync;
- (uint64_t)ams_encryptAccountFlags;
- (uint64_t)ams_firstName;
- (uint64_t)ams_freePasswordPromptSetting;
- (uint64_t)ams_isActiveForMediaType:()AppleMediaServices;
- (uint64_t)ams_isDuplicate:()AppleMediaServices;
- (uint64_t)ams_isEphemeralAccount;
- (uint64_t)ams_isIDMSAccount;
- (uint64_t)ams_isLocalAccount;
- (uint64_t)ams_isLocalOrSandboxAccount;
- (uint64_t)ams_isSandboxAccount;
- (uint64_t)ams_isSubjectToPerDeviceBundleHolderAcknowledgement;
- (uint64_t)ams_isiCloudAccount;
- (uint64_t)ams_isiTunesAccount;
- (uint64_t)ams_lastName;
- (uint64_t)ams_mergePrivacyAcknowledgement:()AppleMediaServices;
- (uint64_t)ams_paidPasswordPromptSetting;
- (uint64_t)ams_privacyAcknowledgement;
- (uint64_t)ams_pushRegistrationThrottleMap;
- (uint64_t)ams_registerSuccessCriteria;
- (uint64_t)ams_removeAllCookiesWithError:()AppleMediaServices;
- (uint64_t)ams_removeCookiesMatchingProperties:()AppleMediaServices error:;
- (uint64_t)ams_securityLevel;
- (uint64_t)ams_setDisableAccountFlagsSync:()AppleMediaServices;
- (uint64_t)ams_setDisablePrivacyAcknowledgementSync:()AppleMediaServices;
- (uint64_t)ams_setHomeUserID:()AppleMediaServices;
- (uint64_t)ams_valueForAccountFlag:()AppleMediaServices;
- (void)_ams_setAccountFlagsShimmed:()AppleMediaServices;
- (void)_setAccountProperty:()AppleMediaServices forKey:dataProtectionClass:expectedClass:;
- (void)_setEphemeralAccountProperty:()AppleMediaServices forKey:dataProtectionClass:expectedClass:;
- (void)ams_setAccountFlagValue:()AppleMediaServices forAccountFlag:;
- (void)ams_setActive:()AppleMediaServices forMediaType:;
- (void)ams_setAgreedToTerms:()AppleMediaServices;
- (void)ams_setAltDSID:()AppleMediaServices;
- (void)ams_setCreditsString:()AppleMediaServices;
- (void)ams_setDSID:()AppleMediaServices;
- (void)ams_setDidAcknowledgeBundleHolderPrivacyAcknowledgementOnDevice:()AppleMediaServices;
- (void)ams_setFirstName:()AppleMediaServices;
- (void)ams_setFreePasswordPromptSetting:()AppleMediaServices;
- (void)ams_setHomeID:()AppleMediaServices;
- (void)ams_setHomeIdentifier:()AppleMediaServices;
- (void)ams_setInGoodStanding:()AppleMediaServices;
- (void)ams_setInUse:()AppleMediaServices;
- (void)ams_setLastName:()AppleMediaServices;
- (void)ams_setManagedAppleID:()AppleMediaServices;
- (void)ams_setMergedPrivacyAcknowledgement:()AppleMediaServices;
- (void)ams_setPaidPasswordPromptSetting:()AppleMediaServices;
- (void)ams_setPassword:()AppleMediaServices;
- (void)ams_setPushRegistrationThrottleMap:()AppleMediaServices;
- (void)ams_setRawPassword:()AppleMediaServices;
- (void)ams_setRegisterSuccessCriteria:()AppleMediaServices;
- (void)ams_setSelectedProfile:()AppleMediaServices;
- (void)ams_setServerResponse:()AppleMediaServices;
- (void)ams_setStorefront:()AppleMediaServices forMediaType:;
- (void)ams_setValidPayment:()AppleMediaServices;
- (void)ams_setValue:()AppleMediaServices forAccountFlag:;
- (void)ams_setiCloudFamily:()AppleMediaServices;
@end

@implementation ACAccount(AppleMediaServices)

- (uint64_t)ams_isLocalAccount
{
  result = [self ams_isiTunesAccount];
  if (result)
  {
    if ([self _accountPropertyBooleanForKey:0x1F071D158])
    {
      return 1;
    }

    else
    {
      identifier = [self identifier];
      v4 = [identifier isEqualToString:@"iTunesLocal-421A04EA-479A-4E46-B49D-556F7144518D"];

      return v4;
    }
  }

  return result;
}

- (uint64_t)ams_isiTunesAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  if ([identifier isEqualToString:*MEMORY[0x1E6959930]])
  {
    ams_isSandboxAccount = 1;
  }

  else
  {
    ams_isSandboxAccount = [self ams_isSandboxAccount];
  }

  return ams_isSandboxAccount;
}

- (uint64_t)ams_isEphemeralAccount
{
  identifier = [self identifier];
  v2 = [identifier isEqualToString:@"iTunes-Ephemeral"];

  return v2;
}

- (uint64_t)ams_isIDMSAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E6959888]];

  return v3;
}

- (uint64_t)ams_isiCloudAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  return v3;
}

- (id)ams_DSID
{
  v45 = *MEMORY[0x1E69E9840];
  if ([self ams_isiCloudAccount])
  {
    mEMORY[0x1E698DC80] = [self objectForKeyedSubscript:@"personID"];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      longLongValue = 0;
      goto LABEL_13;
    }

    v4 = [self objectForKeyedSubscript:@"personID"];
    longLongValue = [v4 longLongValue];
  }

  else
  {
    if (![self ams_isIDMSAccount])
    {
      if ([self ams_isiTunesAccount])
      {
        v8 = [self _accountPropertyForKey:@"dsid" expectedClass:objc_opt_class()];
        if (v8)
        {
          v9 = v8;
          longLongValue = [v8 longLongValue];
        }

        else
        {
          v18 = [self _accountPropertyForKey:@"dsid" expectedClass:objc_opt_class()];
          if (v18)
          {
            v19 = 0x1E73B0000uLL;
            v20 = +[AMSLogConfig sharedAccountsConfig];
            if (!v20)
            {
              v20 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject = [v20 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
            {
              v22 = AMSLogKey();
              v23 = MEMORY[0x1E696AEC0];
              v24 = objc_opt_class();
              v25 = v24;
              if (v22)
              {
                v19 = AMSLogKey();
                [v23 stringWithFormat:@"%@: [%@] ", v25, v19];
              }

              else
              {
                [v23 stringWithFormat:@"%@: ", v24];
              }
              v26 = ;
              v30 = AMSHashIfNeeded(v18);
              *buf = 138543618;
              v42 = v26;
              v43 = 2114;
              v44 = v30;
              _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Found a DSID stored as a string. Fixing. dsid = %{public}@", buf, 0x16u);
              if (v22)
              {

                v26 = v19;
              }
            }

            v31 = objc_alloc_init(MEMORY[0x1E696ADA0]);
            [v31 setAllowsFloats:0];
            [v31 setNumberStyle:1];
            [v31 setMaximumFractionDigits:0];
            v9 = [v31 numberFromString:v18];
            if (v9)
            {
              [self _setAccountProperty:v9 forKey:@"dsid" expectedClass:objc_opt_class()];
              longLongValue = [v9 longLongValue];
            }

            else
            {
              v32 = +[AMSLogConfig sharedAccountsConfig];
              if (!v32)
              {
                v32 = +[AMSLogConfig sharedConfig];
              }

              oSLogObject2 = [v32 OSLogObject];
              if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
              {
                v34 = AMSLogKey();
                v35 = MEMORY[0x1E696AEC0];
                v36 = objc_opt_class();
                v37 = v36;
                if (v34)
                {
                  v40 = AMSLogKey();
                  [v35 stringWithFormat:@"%@: [%@] ", v37, v40];
                }

                else
                {
                  [v35 stringWithFormat:@"%@: ", v36];
                }
                v38 = ;
                *buf = 138543362;
                v42 = v38;
                _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Found DSID could not be converted into expected format.", buf, 0xCu);
                if (v34)
                {

                  v38 = v40;
                }
              }

              [self _setAccountProperty:0 forKey:@"dsid" expectedClass:objc_opt_class()];
              longLongValue = 0;
            }
          }

          else
          {
            v9 = 0;
            longLongValue = 0;
          }
        }

        if (longLongValue)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v11 = +[AMSLogConfig sharedAccountsConfig];
        if (!v11)
        {
          v11 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [v11 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
        {
          v13 = AMSLogKey();
          v14 = MEMORY[0x1E696AEC0];
          v15 = objc_opt_class();
          v16 = v15;
          if (v13)
          {
            v1 = AMSLogKey();
            [v14 stringWithFormat:@"%@: [%@] ", v16, v1];
          }

          else
          {
            [v14 stringWithFormat:@"%@: ", v15];
          }
          v17 = ;
          accountType = [self accountType];
          identifier = [accountType identifier];
          v29 = AMSHashIfNeeded(identifier);
          *buf = 138543618;
          v42 = v17;
          v43 = 2114;
          v44 = v29;
          _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@Unexpected account type, cannot determine DSID. accountType = %{public}@", buf, 0x16u);

          if (v13)
          {

            v17 = v1;
          }
        }
      }

      goto LABEL_51;
    }

    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v4 = [mEMORY[0x1E698DC80] DSIDForAccount:self];
    if (objc_opt_respondsToSelector())
    {
      mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
      v7 = [mEMORY[0x1E698DC80]2 DSIDForAccount:self];
      longLongValue = [v7 longLongValue];
    }

    else
    {
      longLongValue = 0;
    }
  }

LABEL_13:
  if (longLongValue)
  {
LABEL_14:
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue];
    goto LABEL_52;
  }

LABEL_51:
  v10 = 0;
LABEL_52:

  return v10;
}

- (uint64_t)ams_isSandboxAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E6959938]];

  return v3;
}

- (id)ams_altDSID
{
  if ([self ams_isIDMSAccount])
  {
    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v3 = [mEMORY[0x1E698DC80] altDSIDForAccount:self];
  }

  else
  {
    v3 = [self _accountPropertyForKey:@"altDSID" expectedClass:objc_opt_class()];
  }

  return v3;
}

- (id)hashedDescription
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v4 = [identifier stringByReplacingOccurrencesOfString:@"com.apple.account." withString:&stru_1F071BA78];

  v5 = MEMORY[0x1E696AD60];
  identifier2 = [self identifier];
  v7 = [v5 stringWithFormat:@"<ACAccount: %p type = %@ | backingID = %@", self, v4, identifier2];

  _hashedIdentifiers = [self _hashedIdentifiers];
  [v7 ams_appendNullableString:_hashedIdentifiers];

  _hashedMultiUserIdentifiers = [self _hashedMultiUserIdentifiers];
  [v7 ams_appendNullableString:_hashedMultiUserIdentifiers];

  _hashedActiveState = [self _hashedActiveState];
  [v7 ams_appendNullableString:_hashedActiveState];

  _hashedStorefront = [self _hashedStorefront];
  [v7 ams_appendNullableString:_hashedStorefront];

  [v7 appendString:@">"];

  return v7;
}

- (id)_hashedIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" | username = "];
  ams_isLocalAccount = [self ams_isLocalAccount];
  username = [self username];
  ams_DSID = username;
  if (ams_isLocalAccount)
  {
    if (username)
    {
      v6 = username;
    }

    else
    {
      v6 = @"(null)";
    }

    [v2 appendString:v6];
  }

  else
  {
    v7 = AMSHashIfNeededNonnull(username);
    [v2 appendString:v7];

    ams_altDSID = [self ams_altDSID];
    v9 = AMSHashIfNeededNonnull(ams_altDSID);
    [v2 appendFormat:@" | altDSID = %@", v9];

    ams_DSID = [self ams_DSID];
    v10 = AMSHashIfNeededNonnull(ams_DSID);
    [v2 appendFormat:@" | DSID = %@", v10];
  }

  v11 = [v2 copy];

  return v11;
}

- (id)_hashedActiveState
{
  if ([self ams_isiTunesAccount] && (objc_msgSend(self, "ams_isLocalAccount") & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    isActive = [self isActive];
    v5 = @"false";
    if (isActive)
    {
      v5 = @"true";
    }

    v2 = [v3 stringWithFormat:@" | active = %@", v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_hashedStorefront
{
  if ([self ams_isiTunesAccount])
  {
    v2 = MEMORY[0x1E696AEC0];
    ams_storefront = [self ams_storefront];
    v4 = AMSHashIfNeeded(ams_storefront);
    v5 = [v2 stringWithFormat:@" | storefront = %@", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)ams_cookies
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    if (v8)
    {
      v2 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v9 stringWithFormat:@"%@: [%@] %@ ", v10, v2, v3];
    }

    else
    {
      v2 = NSStringFromSelector(a2);
      [v9 stringWithFormat:@"%@: %@ ", v10, v2];
    }
    v11 = ;
    v12 = AMSHashIfNeeded(self);
    *buf = 138543618;
    v41 = v11;
    v42 = 2114;
    v43 = v12;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching cookies from cookie storage for account: %{public}@", buf, 0x16u);
    if (v8)
    {

      v11 = v3;
    }
  }

  v39 = 0;
  v13 = [AMSCookieStorage cookiesForAccount:self error:&v39];
  v14 = v39;
  if (v13)
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v14;
      v17 = AMSLogKey();
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      if (v17)
      {
        v20 = AMSLogKey();
        a2 = NSStringFromSelector(a2);
        [v18 stringWithFormat:@"%@: [%@] %@ ", v19, v20, a2];
      }

      else
      {
        v20 = NSStringFromSelector(a2);
        [v18 stringWithFormat:@"%@: %@ ", v19, v20];
      }
      v21 = ;
      v29 = [v13 count];
      v30 = AMSHashIfNeeded(self);
      *buf = 138543874;
      v41 = v21;
      v42 = 2048;
      v43 = v29;
      v44 = 2114;
      v45 = v30;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched %lu cookies from cookie storage for account: %{public}@", buf, 0x20u);
      if (v17)
      {

        v21 = a2;
      }

      v14 = v37;
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __44__ACAccount_AppleMediaServices__ams_cookies__block_invoke;
    v38[3] = &unk_1E73B2DB8;
    v38[4] = self;
    v22 = [v13 ams_filterUsingTest:v38];

    v31 = +[AMSFeatureEnabler cookie];
    if (v31)
    {
      v32 = [v22 arrayByAddingObject:v31];

      v22 = v32;
    }

    v33 = [v22 ams_filterUsingTest:&__block_literal_global_167];
  }

  else
  {
    v22 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v24 = AMSLogKey();
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_opt_class();
      v27 = v26;
      if (v24)
      {
        v2 = AMSLogKey();
        [v25 stringWithFormat:@"%@: [%@] ", v27, v2];
      }

      else
      {
        [v25 stringWithFormat:@"%@: ", v26];
      }
      v28 = ;
      v34 = AMSHashIfNeeded(self);
      v35 = AMSLogableError(v14);
      *buf = 138543874;
      v41 = v28;
      v42 = 2114;
      v43 = v34;
      v44 = 2114;
      v45 = v35;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@An error occurred fetching cookies. account = %{public}@ | error = %{public}@", buf, 0x20u);
      if (v24)
      {

        v28 = v2;
      }
    }

    v33 = 0;
  }

  return v33;
}

- (uint64_t)ams_privacyAcknowledgement
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"privacyAcknowledgement" expectedClass:v2];
}

- (id)ams_accountFlags
{
  selfCopy = self;
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v2 = [self _ams_accountFlagsWithError:&v14];
  v3 = v14;
  if (!v2)
  {
    v4 = +[AMSLogConfig sharedAccountsConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v6 = AMSLogKey();
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = v8;
      if (v6)
      {
        selfCopy = AMSLogKey();
        [v7 stringWithFormat:@"%@: [%@] ", v9, selfCopy];
      }

      else
      {
        [v7 stringWithFormat:@"%@: ", v8];
      }
      v10 = ;
      v11 = AMSLogKey();
      v12 = AMSLogableError(v3);
      *buf = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error during account flags read: %{public}@", buf, 0x20u);
      if (v6)
      {

        v10 = selfCopy;
      }
    }
  }

  return v2;
}

- (uint64_t)ams_isLocalOrSandboxAccount
{
  if ([self ams_isLocalAccount])
  {
    return 1;
  }

  return [self ams_isSandboxAccount];
}

- (uint64_t)ams_firstName
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"firstName" expectedClass:v2];
}

- (uint64_t)ams_lastName
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"lastName" expectedClass:v2];
}

- (id)ams_fullName
{
  ams_firstName = [self ams_firstName];
  if (ams_firstName)
  {

LABEL_4:
    v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    ams_lastName = [self ams_lastName];
    [v4 setFamilyName:ams_lastName];

    ams_firstName2 = [self ams_firstName];
    [v4 setGivenName:ams_firstName2];

    v7 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v8 = [v7 stringFromPersonNameComponents:v4];

    goto LABEL_5;
  }

  ams_lastName2 = [self ams_lastName];

  if (ams_lastName2)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (uint64_t)ams_securityLevel
{
  v11 = *MEMORY[0x1E69E9840];
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v3 = [ams_sharedAccountStore ams_IDMSAccountForAccount:self];

  if (v3)
  {
    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v5 = [mEMORY[0x1E698DC80] securityLevelForAccount:v3];
  }

  else
  {
    v6 = +[AMSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Security level check failed to find IDMS account", &v9, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (AMSAccountIdentity)ams_accountID
{
  v23 = *MEMORY[0x1E69E9840];
  ams_altDSID = [self ams_altDSID];
  if (ams_altDSID && (v4 = ams_altDSID, [self ams_DSID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [AMSAccountIdentity alloc];
    ams_DSID = [self ams_DSID];
    ams_altDSID2 = [self ams_altDSID];
    v9 = [(AMSAccountIdentity *)v6 initWithDSID:ams_DSID altDSID:ams_altDSID2];
  }

  else
  {
    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        v1 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, v1];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v17 = AMSHashIfNeeded(self);
      *buf = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Account is missing an identifier. account = %{public}@", buf, 0x16u);
      if (v12)
      {

        v16 = v1;
      }
    }

    v9 = 0;
  }

  return v9;
}

- (uint64_t)ams_creditsString
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"accountCredits" expectedClass:v2];
}

- (id)_ams_accountFlagsWithError:()AppleMediaServices
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    *buf = 138543618;
    v24 = v7;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] ams_accountFlags access", buf, 0x16u);
  }

  if (([self ams_isLocalOrSandboxAccount] & 1) == 0)
  {
    v9 = +[AMSProcessInfo currentProcess];
    isAMSAccountsDaemon = [v9 isAMSAccountsDaemon];

    if ((isAMSAccountsDaemon & 1) == 0)
    {
      ams_accountID = [self ams_accountID];

      if (ams_accountID)
      {
        v12 = +[AMSLogConfig sharedAccountsConfig];
        if (!v12)
        {
          v12 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v12 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_opt_class();
          v15 = AMSLogKey();
          *buf = 138543618;
          v24 = v14;
          v25 = 2114;
          v26 = v15;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Attempting to lazy sync", buf, 0x16u);
        }

        v16 = +[AMSAccountCachedServerData sharedInstance];
        ams_accountID2 = [self ams_accountID];
        v22 = ams_accountID2;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
        [v16 lazySync:v18 completion:&__block_literal_global];
      }
    }
  }

  ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
  v20 = [self _accountPropertyForKey:@"accountFlags" dataProtectionClass:1 expectedClasses:ams_PLISTClasses error:a3];

  return v20;
}

- (uint64_t)ams_automaticDownloadKinds
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"automaticDownloadKinds" expectedClass:v2];
}

- (uint64_t)ams_disableAccountFlagsSync
{
  v1 = [self _accountPropertyForKey:@"disableAccountFlagsSync" expectedClass:objc_opt_class()];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)ams_freePasswordPromptSetting
{
  v1 = [self _accountPropertyForKey:@"freeDownloadsPasswordSetting" expectedClass:objc_opt_class()];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)ams_setFreePasswordPromptSetting:()AppleMediaServices
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [self _setAccountProperty:v2 forKey:@"freeDownloadsPasswordSetting" expectedClass:objc_opt_class()];
}

- (id)ams_iCloudPartition
{
  v1 = [self propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  v2 = [v1 objectForKey:@"partition"];

  return v2;
}

- (BOOL)ams_isSelectedProfile
{
  result = 1;
  if (([self _accountPropertyBooleanForKey:@"isSelectedProfile"] & 1) == 0)
  {
    if (![self isActive])
    {
      return 0;
    }

    childAccounts = [self childAccounts];
    v4 = [childAccounts ams_firstObjectPassingTest:&__block_literal_global_183];

    if (v4)
    {
      return 0;
    }
  }

  return result;
}

- (id)ams_lastAuthenticationServerResponse
{
  ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
  v3 = [self _accountPropertyForKey:@"lastAuthenticationServerResponse" dataProtectionClass:1 expectedClasses:ams_PLISTClasses error:0];

  return v3;
}

- (uint64_t)ams_paidPasswordPromptSetting
{
  v1 = [self _accountPropertyForKey:@"paidPurchasesPasswordSetting" expectedClass:objc_opt_class()];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)ams_setPaidPasswordPromptSetting:()AppleMediaServices
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [self _setAccountProperty:v2 forKey:@"paidPurchasesPasswordSetting" expectedClass:objc_opt_class()];
}

- (id)ams_password
{
  credential = [self credential];
  password = [credential password];

  return password;
}

- (uint64_t)ams_pushRegistrationThrottleMap
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"pushRegistrationThrottleMap" expectedClass:v2];
}

- (id)ams_rawPassword
{
  v18 = *MEMORY[0x1E69E9840];
  credential = [self credential];
  v3 = [credential credentialItemForKey:*MEMORY[0x1E6959A00]];

  if (!v3)
  {
    if (![self ams_isDemoAccount])
    {
      v3 = 0;
      goto LABEL_15;
    }

    v3 = [self _accountPropertyForKey:@"demoAccountRawPassword" expectedClass:objc_opt_class()];
    v4 = +[AMSLogConfig sharedAccountsConfig];
    v5 = v4;
    if (v3)
    {
      if (!v4)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v9 = "%{public}@: [%{public}@] Using the demo password.";
      v10 = oSLogObject;
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!v4)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v12 = objc_opt_class();
      v8 = AMSLogKey();
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v8;
      v9 = "%{public}@: [%{public}@] The demo account is missing a raw password.";
      v10 = oSLogObject;
      v11 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_192869000, v10, v11, v9, &v14, 0x16u);

LABEL_14:
  }

LABEL_15:

  return v3;
}

- (uint64_t)ams_registerSuccessCriteria
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"registerSuccessCriteria" expectedClass:v2];
}

- (BOOL)ams_requiresAuthKitUpdate
{
  ams_DSID = [self ams_DSID];
  if (ams_DSID)
  {
    credential = [self credential];
    password = [credential password];
    v5 = password == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)ams_setAgreedToTerms:()AppleMediaServices
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setAccountProperty:v2 forKey:@"didAgreeToTerms" expectedClass:objc_opt_class()];
}

- (void)ams_setAltDSID:()AppleMediaServices
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"altDSID" expectedClass:objc_opt_class()];
}

- (void)ams_setCreditsString:()AppleMediaServices
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"accountCredits" expectedClass:objc_opt_class()];
}

- (uint64_t)ams_setDisableAccountFlagsSync:()AppleMediaServices
{
  if (a3)
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_class();

  return [self _setAccountProperty:v4 forKey:@"disableAccountFlagsSync" expectedClass:v5];
}

- (uint64_t)ams_setDisablePrivacyAcknowledgementSync:()AppleMediaServices
{
  if (a3)
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_class();

  return [self _setAccountProperty:v4 forKey:@"disablePrivacyAcknowledgementSync" expectedClass:v5];
}

- (void)ams_setDSID:()AppleMediaServices
{
  v5 = a3;
  if ([self ams_isiCloudAccount])
  {
    stringValue = [v5 stringValue];
    [self _setAccountProperty:stringValue forKey:@"personID" expectedClass:objc_opt_class()];
  }

  else if ([self ams_isiTunesAccount])
  {
    [self _setAccountProperty:v5 forKey:@"dsid" expectedClass:objc_opt_class()];
  }
}

- (void)ams_setFirstName:()AppleMediaServices
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"firstName" expectedClass:objc_opt_class()];
}

- (void)ams_setiCloudFamily:()AppleMediaServices
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setAccountProperty:v2 forKey:@"iCloudFamily" expectedClass:objc_opt_class()];
}

- (void)ams_setInGoodStanding:()AppleMediaServices
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setAccountProperty:v2 forKey:@"inGoodStanding" expectedClass:objc_opt_class()];
}

- (void)ams_setLastName:()AppleMediaServices
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"lastName" expectedClass:objc_opt_class()];
}

- (void)ams_setManagedAppleID:()AppleMediaServices
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setAccountProperty:v2 forKey:@"isManagedAppleID" expectedClass:objc_opt_class()];
}

- (void)ams_setMergedPrivacyAcknowledgement:()AppleMediaServices
{
  v14 = *MEMORY[0x1E69E9840];
  if ([self ams_isLocalAccount])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self _setAccountProperty:v9 forKey:@"mergedPrivacyAcknowledgements" expectedClass:objc_opt_class()];
  }

  else
  {
    v5 = +[AMSLogConfig sharedAccountsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Someone is attempting to set mergedPrivacyAcknowledgement on a non-local account.", buf, 0x16u);
    }
  }
}

- (void)ams_setPassword:()AppleMediaServices
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v26 = a2;
    if (v9)
    {
      v12 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v3];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = AMSHashIfNeeded(self);
    v15 = AMSHashAndLogCacheMisses(v6, 0);
    *buf = 138543874;
    v28 = v13;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Updating the password of an account. account = %{public}@ | password = %{public}@", buf, 0x20u);
    if (v9)
    {

      v13 = v3;
    }

    a2 = v26;
  }

  credential = [self credential];
  if (!credential)
  {
    v17 = +[AMSLogConfig sharedAccountsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = AMSLogKey();
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      if (v19)
      {
        v22 = AMSLogKey();
        credential = NSStringFromSelector(a2);
        [v20 stringWithFormat:@"%@: [%@] %@ ", v21, v22, credential];
      }

      else
      {
        v22 = NSStringFromSelector(a2);
        [v20 stringWithFormat:@"%@: %@ ", v21, v22];
      }
      v23 = ;
      v24 = AMSHashIfNeeded(self);
      *buf = 138543618;
      v28 = v23;
      v29 = 2114;
      v30 = v24;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@The account did not have a credential, creating one. account = %{public}@", buf, 0x16u);
      if (v19)
      {

        v23 = credential;
      }
    }

    credential = objc_alloc_init(MEMORY[0x1E6959A30]);
    [self setCredential:credential];
  }

  credential2 = [self credential];
  [credential2 setPassword:v6];
}

- (void)ams_setPushRegistrationThrottleMap:()AppleMediaServices
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"pushRegistrationThrottleMap" expectedClass:objc_opt_class()];
}

- (void)ams_setRawPassword:()AppleMediaServices
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  credential = [self credential];
  if (!credential)
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      if (v10)
      {
        v13 = AMSLogKey();
        v3 = NSStringFromSelector(a2);
        [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v13, v3];
      }

      else
      {
        v13 = NSStringFromSelector(a2);
        [v11 stringWithFormat:@"%@: %@ ", v12, v13];
      }
      v14 = ;
      v15 = AMSHashIfNeeded(self);
      *buf = 138543618;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@The account did not have a credential, creating one. account = %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = v3;
      }
    }

    credential = objc_alloc_init(MEMORY[0x1E6959A30]);
    [self setCredential:credential];
  }

  credential2 = [self credential];
  [credential2 setCredentialItem:v6 forKey:*MEMORY[0x1E6959A00]];

  if ([self ams_isDemoAccount])
  {
    v17 = +[AMSLogConfig sharedAccountsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = AMSLogKey();
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      if (v19)
      {
        v22 = AMSLogKey();
        a2 = NSStringFromSelector(a2);
        [v20 stringWithFormat:@"%@: [%@] %@ ", v21, v22, a2];
      }

      else
      {
        v22 = NSStringFromSelector(a2);
        [v20 stringWithFormat:@"%@: %@ ", v21, v22];
      }
      v23 = ;
      v24 = AMSHashIfNeeded(self);
      *buf = 138543618;
      v26 = v23;
      v27 = 2114;
      v28 = v24;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Setting the demo account's raw password. account = %{public}@", buf, 0x16u);
      if (v19)
      {

        v23 = a2;
      }
    }

    [self _setAccountProperty:v6 forKey:@"demoAccountRawPassword" expectedClass:objc_opt_class()];
  }
}

- (void)ams_setRegisterSuccessCriteria:()AppleMediaServices
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"registerSuccessCriteria" expectedClass:objc_opt_class()];
}

- (void)ams_setServerResponse:()AppleMediaServices
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"lastAuthenticationServerResponse" dataProtectionClass:1 expectedClass:objc_opt_class()];
}

- (void)ams_setValidPayment:()AppleMediaServices
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setAccountProperty:v2 forKey:@"validPayment" expectedClass:objc_opt_class()];
}

+ (AMSEphemeralAccount)ams_createEphemeralAccount
{
  v0 = [AMSEphemeralAccount alloc];
  v1 = objc_alloc(MEMORY[0x1E6959A50]);
  v2 = [v1 initWithIdentifier:*MEMORY[0x1E6959930] description:@"Ephemeral Account"];
  v3 = [(AMSEphemeralAccount *)v0 initWithAccountType:v2];

  [(AMSEphemeralAccount *)v3 setIdentifier:@"iTunes-Ephemeral"];
  [(AMSEphemeralAccount *)v3 setActive:0];
  [(AMSEphemeralAccount *)v3 setUsername:@"Ephemeral"];

  return v3;
}

+ (AMSStorageDatabase)_ams_storage
{
  v0 = [[AMSStorageDatabase alloc] initWithDomain:@"com.apple.AppleMediaServices"];

  return v0;
}

- (id)ams_accountFlagValueForAccountFlag:()AppleMediaServices
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self ams_accountFlagOverrideValueForAccountFlag:v4];
  if (v5)
  {
    v6 = +[AMSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = v8;
      hashedDescription = [self hashedDescription];
      v27 = 138543874;
      v28 = v8;
      v29 = 2114;
      v30 = v4;
      v31 = 2114;
      v32 = hashedDescription;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: The account has overrode value for an account flag. accountFlag = %{public}@ | account = %{public}@", &v27, 0x20u);
    }

    v11 = v5;
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  ams_accountFlags = [self ams_accountFlags];
  v12 = [ams_accountFlags objectForKeyedSubscript:v4];

  if (!v12)
  {
    v22 = +[AMSLogConfig sharedAccountsConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = v24;
      hashedDescription2 = [self hashedDescription];
      v27 = 138543874;
      v28 = v24;
      v29 = 2114;
      v30 = v4;
      v31 = 2114;
      v32 = hashedDescription2;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: The account has no value for an account flag. We'll return the default value. accountFlag = %{public}@ | account = %{public}@", &v27, 0x20u);
    }

    v11 = [MEMORY[0x1E6959A28] _defaultValueForAccountFlag:v4];
    goto LABEL_7;
  }

  if (([MEMORY[0x1E6959A28] _isAccountFlagValue:v12 validForAccountFlag:v4] & 1) == 0)
  {
    v15 = +[AMSLogConfig sharedAccountsConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = v17;
      hashedDescription3 = [self hashedDescription];
      v20 = AMSHashIfNeeded(v12);
      v27 = 138544386;
      v28 = v17;
      v29 = 2114;
      v30 = hashedDescription3;
      v31 = 2114;
      v32 = v4;
      v33 = 2114;
      v34 = v20;
      v35 = 2114;
      v36 = objc_opt_class();
      v21 = v36;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: An account flag was stored with an invalid value. account = %{public}@ | flag = %{public}@ | value = %{public}@ | value.class = %{public}@", &v27, 0x34u);
    }

    v12 = 0;
  }

LABEL_8:

  return v12;
}

- (id)ams_delta:()AppleMediaServices
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 || ([self identifier], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = MEMORY[0x1E695DFD8];
    accountProperties = [self accountProperties];
    allKeys = [accountProperties allKeys];
    v12 = [v9 setWithArray:allKeys];
    [v8 unionSet:v12];

    if (v4)
    {
      v13 = MEMORY[0x1E695DFD8];
      accountProperties = [v4 accountProperties];
      allKeys2 = [accountProperties allKeys];
      v15 = [v13 setWithArray:allKeys2];
      [v8 unionSet:v15];
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v47;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v46 + 1) + 8 * i);
          accountProperties = [self objectForKeyedSubscript:v21];
          v22 = [v4 objectForKeyedSubscript:v21];
          if (accountProperties | v22 && ([accountProperties isEqual:v22] & 1) == 0)
          {
            v23 = [[AMSPair alloc] initWithFirst:accountProperties second:v22];
            [v45 setObject:v23 forKeyedSubscript:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v18);
    }

    accountType = [self accountType];
    if (accountType || ([v4 accountType], (accountProperties = objc_claimAutoreleasedReturnValue()) != 0))
    {
      accountType2 = [self accountType];
      accountType3 = [v4 accountType];
      v27 = [accountType2 isEqual:accountType3];

      if (accountType)
      {

        if (v27)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      if ((v27 & 1) == 0)
      {
LABEL_19:
        v28 = [AMSPair alloc];
        accountProperties = [self accountType];
        accountType4 = [v4 accountType];
        v30 = [(AMSPair *)v28 initWithFirst:accountProperties second:accountType4];
        [v45 setObject:v30 forKeyedSubscript:@"accountType"];
      }
    }

LABEL_20:
    isActive = [self isActive];
    if (isActive != [v4 isActive])
    {
      v32 = [AMSPair alloc];
      accountProperties = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isActive")}];
      v33 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isActive")}];
      v34 = [(AMSPair *)v32 initWithFirst:accountProperties second:v33];
      [v45 setObject:v34 forKeyedSubscript:@"active"];
    }

    username = [self username];
    if (!username)
    {
      accountProperties = [v4 username];
      if (!accountProperties)
      {
        goto LABEL_27;
      }
    }

    username2 = [self username];
    username3 = [v4 username];
    v38 = [username2 isEqual:username3];

    if (username)
    {

      if (v38)
      {
LABEL_27:
        v43 = [v45 copy];

        goto LABEL_29;
      }
    }

    else
    {

      if (v38)
      {
        goto LABEL_27;
      }
    }

    v39 = [AMSPair alloc];
    username4 = [self username];
    username5 = [v4 username];
    v42 = [(AMSPair *)v39 initWithFirst:username4 second:username5];
    [v45 setObject:v42 forKeyedSubscript:@"username"];

    goto LABEL_27;
  }

  v43 = 0;
LABEL_29:

  return v43;
}

- (uint64_t)ams_didAcknowledgeBundleHolderPrivacyAcknowledgementOnDevice
{
  v30 = *MEMORY[0x1E69E9840];
  _ams_storage = [objc_opt_class() _ams_storage];
  v23 = 0;
  v3 = [_ams_storage valueForKey:@"bundleHolderAcknowledgedAccounts" error:&v23];
  v4 = v23;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedAccountsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      hashedDescription = [self hashedDescription];
      v10 = AMSLogableError(v4);
      *buf = 138543874;
      v25 = v7;
      v26 = 2114;
      v27 = hashedDescription;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Could not pull accounts acknowledged on device for holder %{public}@ %{public}@", buf, 0x20u);
    }
  }

  if ([self ams_isLocalAccount])
  {
    stringValue = @"local";
  }

  else
  {
    ams_DSID = [self ams_DSID];
    stringValue = [ams_DSID stringValue];

    if (!stringValue)
    {
      v14 = 0;
      goto LABEL_18;
    }
  }

  if (v3)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__ACAccount_AppleMediaServices__ams_didAcknowledgeBundleHolderPrivacyAcknowledgementOnDevice__block_invoke;
    v21[3] = &unk_1E73B2E28;
    v22 = stringValue;
    v13 = stringValue;
    v14 = [v3 ams_anyWithTest:v21];
    v15 = v22;
  }

  else
  {
    v15 = +[AMSLogConfig sharedAccountsConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = v17;
      hashedDescription2 = [self hashedDescription];
      *buf = 138543618;
      v25 = v17;
      v26 = 2114;
      v27 = hashedDescription2;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: No accounts acknowledged on device for holder found %{public}@", buf, 0x16u);
    }

    v14 = 0;
  }

LABEL_18:
  return v14;
}

- (uint64_t)ams_encryptAccountFlags
{
  v2 = [self accountPropertyForKey:@"accountFlags"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
    goto LABEL_7;
  }

  v3 = v2;

  if (!v3)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  [v3 ams_encryptionResult];
  v4 = 1;
  [self ams_setAccountFlags:v3];

LABEL_8:
  return v4;
}

- (uint64_t)ams_isActiveForMediaType:()AppleMediaServices
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![v5 isEqualToString:AMSAccountMediaTypeAppStoreBeta])
  {
    v13 = [v5 isEqualToString:AMSAccountMediaTypeAppStoreSandbox];
    ams_isSandboxAccount = [self ams_isSandboxAccount];
    if (v13)
    {
      if (!ams_isSandboxAccount)
      {
        v6 = +[AMSLogConfig sharedAccountsConfig];
        if (!v6)
        {
          v6 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v6 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v15 = objc_opt_class();
        v9 = AMSLogKey();
        v10 = NSStringFromSelector(a2);
        v17 = 138543874;
        v18 = v15;
        v19 = 2114;
        v20 = v9;
        v21 = 2114;
        v22 = v10;
        v11 = "%{public}@: [%{public}@] %{public}@ does not support AMSAccountMediaTypeAppStoreSandbox for non-sandbox accounts.";
        goto LABEL_6;
      }
    }

    else if (ams_isSandboxAccount)
    {
      goto LABEL_8;
    }

    isActive = [self isActive];
    goto LABEL_17;
  }

  v6 = +[AMSLogConfig sharedAccountsConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  v8 = objc_opt_class();
  v9 = AMSLogKey();
  v10 = NSStringFromSelector(a2);
  v17 = 138543874;
  v18 = v8;
  v19 = 2114;
  v20 = v9;
  v21 = 2114;
  v22 = v10;
  v11 = "%{public}@: [%{public}@] %{public}@ does not support AMSAccountMediaTypeAppStoreBeta.";
LABEL_6:
  _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, v11, &v17, 0x20u);

LABEL_7:
LABEL_8:
  isActive = 0;
LABEL_17:

  return isActive;
}

- (uint64_t)ams_isDuplicate:()AppleMediaServices
{
  v4 = a3;
  identifier = [self identifier];
  identifier2 = [v4 identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    goto LABEL_32;
  }

  accountType = [self accountType];
  identifier3 = [accountType identifier];
  accountType2 = [v4 accountType];
  identifier4 = [accountType2 identifier];
  v12 = [identifier3 isEqualToString:identifier4];

  if (!v12)
  {
    goto LABEL_32;
  }

  ams_altDSID = [self ams_altDSID];
  if (ams_altDSID)
  {
    identifier3 = [self ams_altDSID];
    if ([identifier3 isEqualToString:&stru_1F071BA78])
    {

      goto LABEL_14;
    }
  }

  ams_altDSID2 = [v4 ams_altDSID];
  if (ams_altDSID2 && ([v4 ams_altDSID], identifier4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(identifier4, "isEqualToString:", &stru_1F071BA78) & 1) != 0))
  {
    v15 = 0;
  }

  else
  {
    ams_altDSID3 = [self ams_altDSID];
    ams_altDSID4 = [v4 ams_altDSID];
    v15 = [ams_altDSID3 isEqualToString:ams_altDSID4];

    if (!ams_altDSID2)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  if (ams_altDSID)
  {
  }

  if (v15)
  {
    goto LABEL_29;
  }

LABEL_14:
  ams_DSID = [v4 ams_DSID];
  if (ams_DSID)
  {
    v19 = ams_DSID;
    ams_DSID2 = [self ams_DSID];
    ams_DSID3 = [v4 ams_DSID];
    identifier4 = [ams_DSID2 isEqualToNumber:ams_DSID3];

    if (identifier4)
    {
      goto LABEL_29;
    }
  }

  username = [self username];
  if (username)
  {
    username2 = [self username];
    if ([username2 isEqualToString:&stru_1F071BA78])
    {

      goto LABEL_30;
    }

    v32 = username2;
  }

  username3 = [v4 username];
  if (username3 && ([v4 username], identifier4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(identifier4, "isEqualToString:", &stru_1F071BA78) & 1) != 0))
  {
    v25 = 0;
  }

  else
  {
    username4 = [self username];
    lowercaseString = [username4 lowercaseString];
    username5 = [v4 username];
    lowercaseString2 = [username5 lowercaseString];
    v25 = [lowercaseString isEqualToString:lowercaseString2];

    if (!username3)
    {
      goto LABEL_26;
    }
  }

LABEL_26:
  if (username)
  {
  }

  if ((v25 & 1) == 0)
  {
LABEL_30:
    if ([self ams_isLocalAccount])
    {
      ams_isLocalAccount = [v4 ams_isLocalAccount];
      goto LABEL_33;
    }

LABEL_32:
    ams_isLocalAccount = 0;
    goto LABEL_33;
  }

LABEL_29:
  ams_isLocalAccount = 1;
LABEL_33:

  return ams_isLocalAccount;
}

- (id)ams_isInRestrictedRegionWithBag:()AppleMediaServices waitForSync:
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = AMSSetLogKeyIfNeeded();
  v8 = [self ams_accountFlagValueForAccountFlag:AMSAccountFlagIsInRestrictedRegion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v6)
  {
    v16 = +[AMSLogConfig sharedAccountsConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v30 = objc_opt_class();
      v31 = 2114;
      v32 = v7;
      v18 = v30;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load bag", buf, 0x16u);
    }

    v10 = AMSError(200, @"Bag Invalid Value Error", @"Bag Load Failed", 0);
    v19 = [AMSPromise promiseWithError:v10];
    goto LABEL_23;
  }

  v10 = [[AMSSyncRestrictedRegionTask alloc] initWithAccount:self bag:v6];
  v11 = +[AMSLogConfig sharedAccountsConfig];
  v12 = v11;
  if (!a4)
  {
    if (!v11)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      bOOLValue = [v9 BOOLValue];
      v23 = @"NO";
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      if (bOOLValue)
      {
        v23 = @"YES";
      }

      v32 = v7;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Start AMSSyncRestrictedRegionTask but do not wait for the sync task to be finished, returning currentIsInRestrictedRegion = %{public}@", buf, 0x20u);
    }

    performSync = [(AMSSyncRestrictedRegionTask *)v10 performSync];
    v19 = [AMSPromise promiseWithResult:v9];
LABEL_23:
    v15 = v19;
    goto LABEL_24;
  }

  if (!v11)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v30 = objc_opt_class();
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Start AMSSyncRestrictedRegionTask and return the promise, which will be finished when the task is done.", buf, 0x16u);
  }

  performSync2 = [(AMSSyncRestrictedRegionTask *)v10 performSync];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__ACAccount_AppleMediaServices__ams_isInRestrictedRegionWithBag_waitForSync___block_invoke;
  v26[3] = &unk_1E73B2E50;
  v26[4] = self;
  v27 = v7;
  v28 = v9;
  v15 = [performSync2 continueWithBlock:v26];

LABEL_24:

  return v15;
}

- (BOOL)ams_isInRestrictedRegionWithBag:()AppleMediaServices shouldWaitForSync:
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = AMSSetLogKeyIfNeeded();
  v8 = [self ams_accountFlagValueForAccountFlag:AMSAccountFlagIsInRestrictedRegion];
  v9 = v8 != 0;

  v10 = [[AMSSyncRestrictedRegionTask alloc] initWithAccount:self bag:v6];
  v11 = +[AMSLogConfig sharedConfig];
  v12 = v11;
  if (a4)
  {
    if (!v11)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v38 = objc_opt_class();
      v39 = 2114;
      v40 = v7;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Start AMSSyncRestrictedRegionTask and wait until sync finishes.", buf, 0x16u);
    }

    performSync = [(AMSSyncRestrictedRegionTask *)v10 performSync];
    v36 = 0;
    v15 = [performSync resultWithError:&v36];
    v16 = v36;

    if (v16)
    {
      v17 = +[AMSLogConfig sharedAccountsConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v17 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = AMSHashIfNeeded(self);
        v21 = AMSLogableError(v16);
        *buf = 138544130;
        v38 = v19;
        v39 = 2114;
        v40 = v7;
        v41 = 2114;
        v42 = v20;
        v43 = 2114;
        v44 = v21;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] AMSSyncRestrictedRegionTask has failed. account = %{public}@ | error = %{public}@", buf, 0x2Au);
      }
    }

    v22 = [self ams_accountFlagValueForAccountFlag:AMSAccountFlagIsInRestrictedRegion];
    v9 = v22 != 0;

    v23 = +[AMSLogConfig sharedAccountsConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_opt_class();
      if (v7)
      {
        [v25 stringWithFormat:@"%@: [%@] ", v26, v7];
      }

      else
      {
        [v25 stringWithFormat:@"%@: ", v26, v35];
      }
      v31 = ;
      v32 = v31;
      v33 = @"false";
      if (v22)
      {
        v33 = @"true";
      }

      *buf = 138543618;
      v38 = v31;
      v39 = 2114;
      v40 = v33;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_INFO, "%{public}@AMSSyncRestrictedRegionTask has finished, IsInRestrictedRegion = %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (!v11)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = @"NO";
      *buf = 138543874;
      v38 = v28;
      v39 = 2114;
      if (v8)
      {
        v29 = @"YES";
      }

      v40 = v7;
      v41 = 2114;
      v42 = v29;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: Start AMSSyncRestrictedRegionTask but not waiting for sync, returning currentIsInRestrictedRegion = %{public}@", buf, 0x20u);
    }

    performSync2 = [(AMSSyncRestrictedRegionTask *)v10 performSync];
  }

  return v9;
}

- (uint64_t)ams_isSubjectToPerDeviceBundleHolderAcknowledgement
{
  ams_isBundleOwner = [self ams_isBundleOwner];

  if (!ams_isBundleOwner)
  {
    return 0;
  }

  ams_isBundleOwner2 = [self ams_isBundleOwner];
  if ([ams_isBundleOwner2 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v4 = [self ams_didAcknowledgeBundleHolderPrivacyAcknowledgementOnDevice] ^ 1;
  }

  return v4;
}

- (uint64_t)ams_mergePrivacyAcknowledgement:()AppleMediaServices
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    ams_privacyAcknowledgement = [self ams_privacyAcknowledgement];

    if (!ams_privacyAcknowledgement)
    {
      v15 = 0;
      goto LABEL_45;
    }
  }

  selfCopy = self;
  ams_privacyAcknowledgement2 = [self ams_privacyAcknowledgement];
  v7 = ams_privacyAcknowledgement2;
  v8 = MEMORY[0x1E695E0F8];
  if (ams_privacyAcknowledgement2)
  {
    v8 = ams_privacyAcknowledgement2;
  }

  v9 = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  allKeys = [v9 allKeys];
  [v10 addObjectsFromArray:allKeys];

  if (v4)
  {
    allKeys2 = [v4 allKeys];
    [v10 addObjectsFromArray:allKeys2];
  }

  else
  {
    [v10 addObjectsFromArray:MEMORY[0x1E695E0F0]];
  }

  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_44;
  }

  v14 = v13;
  v15 = 0;
  v37 = *v47;
  do
  {
    v16 = 0;
    do
    {
      if (*v47 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v46 + 1) + 8 * v16);
      v18 = [v9 objectForKeyedSubscript:v17];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v20 = [v9 objectForKeyedSubscript:v17];

        if (v20)
        {
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v43 = __65__ACAccount_AppleMediaServices__ams_mergePrivacyAcknowledgement___block_invoke;
          v44 = &unk_1E73B2E78;
          v45 = selfCopy;
          v21 = [v9 objectForKeyedSubscript:v17];
          v43(v42, v21);
        }

        v19 = 0;
      }

      v22 = [v4 objectForKeyedSubscript:v17];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = [v4 objectForKeyedSubscript:v17];

        if (v23)
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v39 = __65__ACAccount_AppleMediaServices__ams_mergePrivacyAcknowledgement___block_invoke_243;
          v40 = &unk_1E73B2E78;
          v41 = selfCopy;
          v24 = [v4 objectForKeyedSubscript:v17];
          v39(v38, v24);

          v23 = 0;
        }
      }

      if (v19 && !v23)
      {
        v25 = 4;
        v26 = v19;
LABEL_28:
        v15 |= v25;
        v27 = v26;
LABEL_29:
        [v36 setObject:v27 forKeyedSubscript:v17];

        goto LABEL_30;
      }

      if (!v19 && v23)
      {
        v25 = 2;
        v26 = v23;
        goto LABEL_28;
      }

      unsignedIntegerValue = [v19 unsignedIntegerValue];
      if (unsignedIntegerValue == [v23 unsignedIntegerValue])
      {
        goto LABEL_36;
      }

      if ([v23 unsignedIntegerValue])
      {
        unsignedIntegerValue2 = [v19 unsignedIntegerValue];
        if (unsignedIntegerValue2 > [v23 unsignedIntegerValue])
        {
          v15 |= 4uLL;
LABEL_36:
          v30 = v19;
          goto LABEL_39;
        }

        unsignedIntegerValue3 = [v19 unsignedIntegerValue];
        if (unsignedIntegerValue3 >= [v23 unsignedIntegerValue])
        {
          goto LABEL_30;
        }
      }

      v15 |= 2uLL;
      v30 = v23;
LABEL_39:
      v27 = v30;
      if (v27)
      {
        goto LABEL_29;
      }

LABEL_30:

      ++v16;
    }

    while (v14 != v16);
    v32 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    v14 = v32;
  }

  while (v32);
LABEL_44:

  [selfCopy _setAccountProperty:v36 forKey:@"privacyAcknowledgement" expectedClass:objc_opt_class()];
  [selfCopy setDirty:1 forProperty:@"privacyAcknowledgement"];

LABEL_45:
  return v15;
}

- (void)ams_setAccountFlagValue:()AppleMediaServices forAccountFlag:
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x1E6959A28] _isAccountFlagWritable:v7] & 1) == 0)
  {
    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      hashedDescription = [self hashedDescription];
      *buf = 138543874;
      v48 = v14;
      v49 = 2114;
      v50 = hashedDescription;
      v51 = 2114;
      v52 = v7;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Someone is trying to modify a read-only account flag. account = %{public}@ | flag = %{public}@", buf, 0x20u);
    }

    goto LABEL_57;
  }

  if (([MEMORY[0x1E6959A28] _isAccountFlagValue:v6 validForAccountFlag:v7] & 1) == 0)
  {
    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    v17 = objc_opt_class();
    v8OSLogObject = v17;
    hashedDescription2 = [self hashedDescription];
    *buf = 138544130;
    v48 = v17;
    v49 = 2114;
    v50 = hashedDescription2;
    v51 = 2114;
    v52 = v7;
    v53 = 2114;
    v54 = objc_opt_class();
    v19 = v54;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Someone is trying to set an account flag with an invalid value. account = %{public}@ | flag = %{public}@ value.class = %{public}@", buf, 0x2Au);

    goto LABEL_55;
  }

  if ([self ams_isLocalOrSandboxAccount])
  {
    v46 = 0;
    oSLogObject = [self _ams_accountFlagsWithError:&v46];
    v9 = v46;
    v10 = v9;
    if (oSLogObject || !v9)
    {
LABEL_33:
      v8OSLogObject = [oSLogObject mutableCopy];
      if (!v8OSLogObject)
      {
        v8OSLogObject = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      [v8OSLogObject setObject:v6 forKeyedSubscript:v7];
      if (([oSLogObject isEqualToDictionary:v8OSLogObject]& 1) == 0)
      {
        [self _ams_setAccountFlagsShimmed:v8OSLogObject];
      }

      goto LABEL_56;
    }

    userInfo = [v9 userInfo];
    v12 = [userInfo objectForKeyedSubscript:@"AMSCryptoErrorCode"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8OSLogObject = v12;
    }

    else
    {
      v8OSLogObject = 0;
    }

    if ([v8OSLogObject integerValue]== -4308)
    {
      v29 = +[AMSLogConfig sharedAccountsConfig];
      if (!v29)
      {
        v29 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v29 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        hashedDescription3 = [self hashedDescription];
        v32 = AMSLogableError(v10);
        *buf = 138544130;
        v48 = v45;
        v49 = 2114;
        v50 = v8OSLogObject;
        v51 = 2114;
        v52 = hashedDescription3;
        v53 = 2114;
        v54 = v32;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: We failed to decrypt the original account flags with error code %{public}@. Will overwrite with new ones. account = %{public}@ | error = %{public}@", buf, 0x2Au);
      }

      goto LABEL_33;
    }

    v33 = +[AMSLogConfig sharedAccountsConfig];
    v19 = v33;
    if (v8OSLogObject)
    {
      if (!v33)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v19 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v35 = objc_opt_class();
      hashedDescription4 = [self hashedDescription];
      v37 = AMSLogableError(v10);
      *buf = 138544130;
      v48 = v35;
      v49 = 2114;
      v50 = v8OSLogObject;
      v51 = 2114;
      v52 = hashedDescription4;
      v53 = 2114;
      v54 = v37;
      v38 = "%{public}@: We failed to decrypt the original account flags with error code %{public}@. Refusing to add new flags. account = %{public}@ | error = %{public}@";
      v39 = oSLogObject3;
      v40 = 42;
    }

    else
    {
      if (!v33)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v19 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      v42 = objc_opt_class();
      hashedDescription4 = [self hashedDescription];
      v37 = AMSLogableError(v10);
      *buf = 138543874;
      v48 = v42;
      v49 = 2114;
      v50 = hashedDescription4;
      v51 = 2114;
      v52 = v37;
      v38 = "%{public}@: We failed to decrypt the original account flags. Refusing to add new flags. account = %{public}@ | error = %{public}@";
      v39 = oSLogObject3;
      v40 = 32;
    }

    _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);

LABEL_54:
LABEL_55:

LABEL_56:
    goto LABEL_57;
  }

  v20 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v20;

    if (v10)
    {
      if ([v7 isEqualToString:AMSAccountFlagAutoPlay])
      {
        oSLogObject = +[AMSAccountCachedServerData sharedInstance];
        bOOLValue = [v10 BOOLValue];
        ams_accountID = [self ams_accountID];
        [oSLogObject setAutoPlay:bOOLValue forAccountID:ams_accountID];
      }

      else
      {
        if (![v7 isEqualToString:AMSAccountFlagPersonalization])
        {
          oSLogObject = +[AMSLogConfig sharedAccountsConfig];
          if (!oSLogObject)
          {
            oSLogObject = +[AMSLogConfig sharedConfig];
          }

          v8OSLogObject = [oSLogObject OSLogObject];
          if (!os_log_type_enabled(v8OSLogObject, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }

          v43 = objc_opt_class();
          v19 = v43;
          hashedDescription5 = [self hashedDescription];
          *buf = 138544130;
          v48 = v43;
          v49 = 2114;
          v50 = hashedDescription5;
          v51 = 2114;
          v52 = v7;
          v53 = 2114;
          v54 = objc_opt_class();
          oSLogObject3 = v54;
          _os_log_impl(&dword_192869000, v8OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Someone is trying to set an account flag that should not be set. account = %{public}@ | flag = %{public}@ value.class = %{public}@", buf, 0x2Au);

          goto LABEL_54;
        }

        oSLogObject = +[AMSAccountCachedServerData sharedInstance];
        bOOLValue2 = [v10 BOOLValue];
        ams_accountID = [self ams_accountID];
        [oSLogObject setPersonalization:bOOLValue2 forAccountID:ams_accountID];
      }

LABEL_57:
      goto LABEL_58;
    }
  }

  else
  {
  }

  v23 = +[AMSLogConfig sharedAccountsConfig];
  if (!v23)
  {
    v23 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject4 = [v23 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v25 = objc_opt_class();
    v26 = v25;
    hashedDescription6 = [self hashedDescription];
    *buf = 138544130;
    v48 = v25;
    v49 = 2114;
    v50 = hashedDescription6;
    v51 = 2114;
    v52 = v7;
    v53 = 2114;
    v54 = objc_opt_class();
    v28 = v54;
    _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: Someone is trying to set an account flag with a nil value. account = %{public}@ | flag = %{public}@ value.class = %{public}@", buf, 0x2Au);
  }

  v10 = 0;
LABEL_58:
}

- (void)ams_setActive:()AppleMediaServices forMediaType:
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ([self ams_isLocalAccount])
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = NSStringFromSelector(a2);
    v16 = 138543874;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v13 = "%{public}@: [%{public}@] %{public}@ cannot set active on local account.";
    goto LABEL_11;
  }

  if ([v7 isEqualToString:AMSAccountMediaTypeAppStoreBeta])
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = NSStringFromSelector(a2);
    v16 = 138543874;
    v17 = v14;
    v18 = 2114;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v13 = "%{public}@: [%{public}@] %{public}@ does not support AMSAccountMediaTypeAppStoreBeta.";
    goto LABEL_11;
  }

  if (![v7 isEqualToString:AMSAccountMediaTypeAppStoreSandbox] || objc_msgSend(self, "ams_isSandboxAccount"))
  {
    [self setActive:a3];
    goto LABEL_13;
  }

  v8 = +[AMSLogConfig sharedAccountsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = NSStringFromSelector(a2);
    v16 = 138543874;
    v17 = v15;
    v18 = 2114;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v13 = "%{public}@: [%{public}@] %{public}@ does not support AMSAccountMediaTypeAppStoreSandbox for non-sandbox accounts.";
LABEL_11:
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, v13, &v16, 0x20u);
  }

LABEL_12:

LABEL_13:
}

- (void)ams_setDidAcknowledgeBundleHolderPrivacyAcknowledgementOnDevice:()AppleMediaServices
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    hashedDescription = [self hashedDescription];
    *buf = 138543874;
    v28 = v7;
    v29 = 2114;
    v30 = hashedDescription;
    v31 = 1024;
    LODWORD(v32) = a3;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Will attempt to set new per device holder record. Setting  to %d", buf, 0x1Cu);
  }

  if ([self ams_isLocalAccount])
  {
    stringValue = @"local";
LABEL_8:
    _ams_storage = [objc_opt_class() _ams_storage];
    v12 = [_ams_storage valueForKey:@"bundleHolderAcknowledgedAccounts" error:0];
    v13 = v12;
    v14 = MEMORY[0x1E695E0F0];
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v16 = [MEMORY[0x1E695DFA8] setWithArray:v15];

    if (a3)
    {
      [v16 addObject:stringValue];
    }

    else
    {
      [v16 removeObject:stringValue];
    }

    allObjects = [v16 allObjects];
    v26 = 0;
    [_ams_storage setValue:allObjects forKey:@"bundleHolderAcknowledgedAccounts" error:&v26];
    oSLogObject3 = v26;

    if (oSLogObject3)
    {
      v19 = +[AMSLogConfig sharedAccountsConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        hashedDescription2 = [self hashedDescription];
        v23 = AMSLogableError(oSLogObject3);
        *buf = 138543874;
        v28 = v21;
        v29 = 2114;
        v30 = hashedDescription2;
        v31 = 2114;
        v32 = v23;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Cannot update acknowledgement record due to storage error %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_20;
  }

  ams_DSID = [self ams_DSID];
  stringValue = [ams_DSID stringValue];

  if (stringValue)
  {
    goto LABEL_8;
  }

  stringValue = +[AMSLogConfig sharedAccountsConfig];
  if (!stringValue)
  {
    stringValue = +[AMSLogConfig sharedConfig];
  }

  oSLogObject3 = [(__CFString *)stringValue OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v24 = objc_opt_class();
    hashedDescription3 = [self hashedDescription];
    *buf = 138543618;
    v28 = v24;
    v29 = 2114;
    v30 = hashedDescription3;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Cannot update acknowledgement record for unidentifiable account", buf, 0x16u);
  }

LABEL_20:
}

- (void)ams_setInUse:()AppleMediaServices
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    if (a3)
    {
      v9 = @"in";
    }

    else
    {
      v9 = @"not in";
    }

    v10 = AMSHashIfNeeded(self);
    v18 = 138544130;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2114;
    v25 = v10;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Marking an account as %@ use for AKAppleIDServiceStore. account = %{public}@", &v18, 0x2Au);
  }

  v11 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  ams_altDSID = [self ams_altDSID];

  if (ams_altDSID)
  {
    ams_altDSID2 = [self ams_altDSID];
    [v11 setAppleIDWithAltDSID:ams_altDSID2 inUse:a3 forService:2];
  }

  else
  {
    ams_DSID = [self ams_DSID];

    if (ams_DSID)
    {
      ams_altDSID2 = [self ams_DSID];
      [v11 setAppleIDWithDSID:ams_altDSID2 inUse:a3 forService:2];
    }

    else
    {
      ams_altDSID2 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!ams_altDSID2)
      {
        ams_altDSID2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [ams_altDSID2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = AMSLogKey();
        v18 = 138543618;
        v19 = v16;
        v20 = 2114;
        v21 = v17;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to mark the account as not in use. It has no altDSID or DSID.", &v18, 0x16u);
      }
    }
  }
}

- (void)ams_setSelectedProfile:()AppleMediaServices
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setAccountProperty:v2 forKey:@"isSelectedProfile" expectedClass:objc_opt_class()];
}

- (void)ams_setStorefront:()AppleMediaServices forMediaType:
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"storefrontID" expectedClass:objc_opt_class()];
}

- (id)ams_storefrontForMediaType:()AppleMediaServices
{
  v4 = a3;
  v5 = AMSAccountMediaTypeAppStoreSandbox;
  v6 = AMSAccountMediaTypeAppStoreBeta;
  ams_isSandboxAccount = [self ams_isSandboxAccount];
  if (v5 != v4 && v6 != v4)
  {
    if ((ams_isSandboxAccount & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_10;
  }

  if ((ams_isSandboxAccount & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v9 = [self _accountPropertyForKey:@"storefrontID" expectedClass:objc_opt_class()];
LABEL_10:

  return v9;
}

- (id)ams_asynchronouslyAddCookiesForResponse:()AppleMediaServices
{
  v2 = [MEMORY[0x1E6959A28] _getSetCookiesForResponse:?];
  v3 = [self ams_asynchronouslyAddCookies:v2];

  return v3;
}

- (id)ams_asynchronouslyAddGlobalCookiesForResponse:()AppleMediaServices
{
  v4 = a3;
  if ([self ams_isLocalAccount])
  {
    v5 = [MEMORY[0x1E6959A28] _getSetGlobalCookiesForResponse:v4];
    [self ams_asynchronouslyAddCookies:v5];
  }

  else
  {
    v5 = AMSError(2, @"Attempted adding cookies to non-local account", 0, 0);
    [AMSBinaryPromise promiseWithError:v5];
  }
  v6 = ;

  return v6;
}

- (uint64_t)ams_addGlobalCookiesForResult:()AppleMediaServices
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self ams_isLocalAccount])
  {
    response = [v4 response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = response;

      if (v6)
      {
        v7 = [self ams_addGlobalCookiesForResponse:v6];
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded(v4);
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to set global cookies. The given AMSURLResult does not contain a NSHTTPURLResponse. result = %{public}@", &v14, 0x20u);
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (id)ams_cookiesForURL:()AppleMediaServices
{
  v3 = [self ams_cookiesForURL:a3 bag:0];
  v4 = [v3 resultWithError:0];

  return v4;
}

- (id)ams_cookiesForURL:()AppleMediaServices bag:cleanupGlobalCookies:
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  ams_cookies = [self ams_cookies];
  v12 = ams_cookies;
  v13 = MEMORY[0x1E695E0F0];
  if (ams_cookies)
  {
    v13 = ams_cookies;
  }

  v14 = v13;

  v15 = +[AMSLogConfig sharedConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v31 = a5;
    v32 = v9;
    v17 = AMSLogKey();
    v18 = MEMORY[0x1E696AEC0];
    v19 = objc_opt_class();
    v33 = a2;
    if (v17)
    {
      v20 = AMSLogKey();
      v30 = NSStringFromSelector(a2);
      [v18 stringWithFormat:@"%@: [%@] %@ ", v19, v20, v30];
    }

    else
    {
      v20 = NSStringFromSelector(a2);
      [v18 stringWithFormat:@"%@: %@ ", v19, v20];
    }
    v21 = ;
    v22 = [v14 count];
    v23 = AMSHashIfNeeded(self);
    *buf = 138543874;
    v41 = v21;
    v42 = 2048;
    v43 = v22;
    v44 = 2114;
    v45 = v23;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Fetched %lu cookies for account: %{public}@", buf, 0x20u);
    if (v17)
    {

      v21 = v30;
    }

    v9 = v32;
    a2 = v33;
    a5 = v31;
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __76__ACAccount_AppleMediaServices__ams_cookiesForURL_bag_cleanupGlobalCookies___block_invoke;
  v34[3] = &unk_1E73B2EF0;
  v39 = a5;
  v35 = v9;
  selfCopy = self;
  v37 = v10;
  v38 = a2;
  v24 = v10;
  v25 = v9;
  v26 = [v14 ams_mapWithTransform:v34];
  v27 = [AMSPromise promiseWithSome:v26];
  v28 = [AMSPromise unwrappedPromiseWithPromise:v27];

  return v28;
}

- (uint64_t)ams_removeAllCookiesWithError:()AppleMediaServices
{
  ams_cookies = [self ams_cookies];
  v6 = [self _updateCookiesWithCookiesToAdd:0 cookiesToRemove:ams_cookies error:a3];

  return v6;
}

- (uint64_t)ams_removeCookiesMatchingProperties:()AppleMediaServices error:
{
  v2 = [self _cookiesMatchingProperties:?];
  v3 = [self ams_removeCookies:v2];

  return v3;
}

- (uint64_t)_accountPropertyBooleanForKey:()AppleMediaServices
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [self _accountPropertyForKey:v5 dataProtectionClass:0 expectedClasses:v7 error:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lowercaseString = [v8 lowercaseString];
      if ([lowercaseString isEqualToString:@"true"])
      {

LABEL_7:
        bOOLValue = 1;
        goto LABEL_12;
      }

      v11 = [v8 isEqualToString:@"1"];

      if (v11)
      {
        goto LABEL_7;
      }

      lowercaseString2 = [v8 lowercaseString];
      if (([lowercaseString2 isEqualToString:@"false"] & 1) == 0)
      {
        [v8 isEqualToString:@"0"];
      }
    }

    bOOLValue = 0;
    goto LABEL_12;
  }

  bOOLValue = [v8 BOOLValue];
LABEL_12:

  return bOOLValue;
}

- (id)_accountPropertyForKey:()AppleMediaServices expectedClass:
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [self _accountPropertyForKey:v7 dataProtectionClass:0 expectedClasses:v8 error:0];

  return v9;
}

- (id)_accountPropertyForKey:()AppleMediaServices expectedClassContainedInArray:
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [self _accountPropertyForKey:v6 expectedClass:objc_opt_class()];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = +[AMSLogConfig sharedAccountsConfig];
          if (!v13)
          {
            v13 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v13 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v15 = objc_opt_class();
            v16 = AMSLogKey();
            v17 = objc_opt_class();
            *buf = 138544386;
            v25 = v15;
            v26 = 2114;
            v27 = v16;
            v28 = 2114;
            v29 = v6;
            v30 = 2114;
            v31 = v17;
            v32 = 2114;
            v33 = a4;
            v18 = v17;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] An account property inside an NSArray was stored as the wrong type. key = %{public}@ | actualClass = %{public}@ | expectedClass = %{public}@", buf, 0x34u);
          }

          v12 = 0;
          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = v7;
LABEL_15:

  return v12;
}

- (id)_accountPropertyForKey:()AppleMediaServices dataProtectionClass:expectedClasses:error:
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if ([self ams_isEphemeralAccount])
  {
    v12 = [self _ephemeralAccountPropertyForKey:v10 dataProtectionClass:a4 expectedClasses:v11 error:a6];
    goto LABEL_31;
  }

  v13 = [self objectForKeyedSubscript:v10];
  if (v13)
  {
    if (!a4)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __98__ACAccount_AppleMediaServices___accountPropertyForKey_dataProtectionClass_expectedClasses_error___block_invoke;
      v33[3] = &unk_1E73B2F18;
      v13 = v13;
      v34 = v13;
      if ([v11 ams_firstObjectPassingTest:v33])
      {
        v12 = v13;
      }

      else
      {
        v26 = +[AMSLogConfig sharedAccountsConfig];
        if (!v26)
        {
          v26 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v26 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = AMSLogKey();
          v30 = objc_opt_class();
          *buf = 138544386;
          v39 = v28;
          v40 = 2114;
          v41 = v29;
          v42 = 2114;
          v43 = v10;
          v44 = 2114;
          v45 = v30;
          v46 = 2114;
          v47 = v11;
          v31 = v30;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] An account property was stored as the wrong type. key = %{public}@ | actualClass = %{public}@ | expectedClasses = %{public}@", buf, 0x34u);
        }

        if (a6)
        {
          AMSError(0, @"Account Property", @"Failed to retrieve an account property because it wasn't of the expected type.", 0);
          *a6 = v12 = 0;
        }

        else
        {
          v12 = 0;
        }
      }

      goto LABEL_30;
    }

    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      *buf = 138544130;
      v39 = v16;
      v40 = 2114;
      v41 = v17;
      v42 = 2114;
      v43 = v10;
      v44 = 2048;
      v45 = a4;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Decrypting an account property. key = %{public}@ | dataProtectionClass = %ld", buf, 0x2Au);
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    v13 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v13;

      [v18 ams_encryptionResult];
    }

    else
    {

      v18 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
    }

    v19 = +[AMSLogConfig sharedAccountsConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = AMSLogKey();
      v23 = AMSHashIfNeeded(v13);
      v24 = objc_opt_class();
      *buf = 138544386;
      v39 = v21;
      v40 = 2114;
      v41 = v22;
      v42 = 2114;
      v43 = v10;
      v44 = 2114;
      v45 = v23;
      v46 = 2114;
      v47 = v24;
      v25 = v24;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decrypt an account property. key = %{public}@ | value = %{public}@ | value.class = %{public}@", buf, 0x34u);
    }

    if (a6)
    {
      *a6 = AMSError(0, @"Account Property Encryption", @"Failed to retrieve an account property because its encrypted value was nil.", 0);
    }
  }

  v12 = 0;
LABEL_30:

LABEL_31:

  return v12;
}

- (uint64_t)_ams_cookieProperties
{
  v2 = objc_opt_class();

  return [self _accountPropertyForKey:@"cookies" expectedClassContainedInArray:v2];
}

- (uint64_t)_ams_setCookieProperties:()AppleMediaServices
{
  v4 = a3;
  [self _setAccountProperty:v4 forKey:@"cookies" expectedClass:objc_opt_class()];

  return 1;
}

- (BOOL)_ams_migrateCookieProperties:()AppleMediaServices intoCookies:error:
{
  v8 = MEMORY[0x1E695ABF8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 ams_propertiesForCookies:v9];
  v12 = [MEMORY[0x1E695ABF8] ams_cookiesByMergingProperties:v10 intoProperties:v11];

  v13 = [v12 differenceFromArray:v9 withOptions:0 usingEquivalenceTest:&__block_literal_global_299];

  if ([v13 hasChanges])
  {
    ams_insertedObjects = [v13 ams_insertedObjects];
    ams_removedObjects = [v13 ams_removedObjects];
    v16 = [AMSCookieStorage updateCookiesWithCookiesToAdd:ams_insertedObjects cookiesToRemove:ams_removedObjects forAccount:self error:a5];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)_ams_setAccountFlagsShimmed:()AppleMediaServices
{
  v6 = a3;
  if (([self ams_isLocalOrSandboxAccount] & 1) == 0)
  {
    v4 = +[AMSAccountCachedServerData sharedInstance];
    ams_accountID = [self ams_accountID];
    [v4 setAccountFlags:v6 forAccountID:ams_accountID];
  }

  [self _setAccountProperty:v6 forKey:@"accountFlags" dataProtectionClass:1 expectedClass:objc_opt_class()];
}

- (id)_cookiesMatchingProperties:()AppleMediaServices
{
  v4 = a3;
  ams_cookies = [self ams_cookies];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ACAccount_AppleMediaServices___cookiesMatchingProperties___block_invoke;
  v9[3] = &unk_1E73B2DB8;
  v10 = v4;
  v6 = v4;
  v7 = [ams_cookies ams_filterUsingTest:v9];

  return v7;
}

- (id)_updateCookiesWithCookiesToAdd:()AppleMediaServices cookiesToRemove:
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v8 = [AMSCookieStorage updateCookiesWithCookiesToAdd:v6 cookiesToRemove:v7 forAccount:self];
  }

  else
  {
    v8 = +[AMSBinaryPromise promiseWithSuccess];
  }

  v9 = v8;

  return v9;
}

+ (id)_defaultValueForAccountFlag:()AppleMediaServices
{
  v3 = _MergedGlobals_78;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_MergedGlobals_78, &__block_literal_global_301);
  }

  v5 = [qword_1ED6E2638 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)_getSetGlobalCookiesForResponse:()AppleMediaServices
{
  v3 = a3;
  allHeaderFields = [v3 allHeaderFields];
  v5 = [allHeaderFields objectForKey:@"X-Apple-Set-Cookie"];

  if ([v5 length])
  {
    allHeaderFields2 = [v3 allHeaderFields];
    v7 = [allHeaderFields2 mutableCopy];

    [v7 setObject:v5 forKeyedSubscript:@"Set-Cookie"];
    v8 = MEMORY[0x1E695ABF8];
    v9 = [v3 URL];
    v10 = [v8 cookiesWithResponseHeaderFields:v7 forURL:v9];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

+ (id)_getSetCookiesForResponse:()AppleMediaServices
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = 0x1E695A000uLL;
  v5 = MEMORY[0x1E695ABF8];
  allHeaderFields = [v3 allHeaderFields];
  v7 = [v3 URL];
  v8 = [v5 cookiesWithResponseHeaderFields:allHeaderFields forURL:v7];
  v9 = [v8 mutableCopy];

  allHeaderFields2 = [v3 allHeaderFields];
  v11 = [allHeaderFields2 objectForKey:@"X-Apple-Set-User-Cookie"];

  if ([v11 length])
  {
    allHeaderFields3 = [v3 allHeaderFields];
    v13 = [allHeaderFields3 mutableCopy];

    [v13 setObject:v11 forKeyedSubscript:@"Set-Cookie"];
    v14 = MEMORY[0x1E695ABF8];
    v15 = [v3 URL];
    v16 = [v14 cookiesWithResponseHeaderFields:v13 forURL:v15];
    [v9 addObjectsFromArray:v16];
  }

  if (os_variant_has_internal_content() && !+[AMSUnitTests isRunningUnitTests])
  {
    v39 = v11;
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v18 = [v3 valueForHTTPHeaderField:@"X-Apple-Jingle-Correlation-Key"];
    v40 = v3;
    v19 = [v3 URL];
    absoluteString = [v19 absoluteString];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v9;
    v51 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v51)
    {
      v49 = *MEMORY[0x1E695AAB8];
      v50 = *v53;
      v48 = *MEMORY[0x1E695AAC0];
      v42 = absoluteString;
      v43 = v18;
      v41 = v17;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v53 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v52 + 1) + 8 * i);
          properties = [v22 properties];
          v24 = [properties mutableCopy];

          if (v18)
          {
            [v24 setObject:v18 forKeyedSubscript:v49];
          }

          if (absoluteString)
          {
            [v24 setObject:absoluteString forKeyedSubscript:v48];
          }

          v25 = [*(v4 + 3064) cookieWithProperties:v24];
          if (v25)
          {
            v26 = +[AMSLogConfig sharedAccountsCookiesConfig];
            if (!v26)
            {
              v26 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject = [v26 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
            {
              v28 = v4;
              v29 = AMSLogKey();
              v30 = MEMORY[0x1E696AEC0];
              v31 = objc_opt_class();
              v32 = v31;
              if (v29)
              {
                v45 = AMSLogKey();
                v33 = [v30 stringWithFormat:@"%@: [%@] ", v32, v45];
                v44 = v33;
                v34 = v46;
              }

              else
              {
                v33 = [v30 stringWithFormat:@"%@: ", v31];
                v34 = v33;
              }

              v37 = AMSHashIfNeeded(v25);
              *buf = 138543618;
              v57 = v33;
              v58 = 2114;
              v59 = v37;
              _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Adding modified cookie: %{public}@", buf, 0x16u);
              v46 = v34;
              if (v29)
              {

                v34 = v45;
              }

              v4 = v28;
              v17 = v41;
              absoluteString = v42;
              v18 = v43;
            }

            v35 = v17;
            v36 = v25;
          }

          else
          {
            v35 = v17;
            v36 = v22;
          }

          [v35 addObject:v36];
        }

        v51 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v51);
    }

    v9 = [v17 copy];
    v11 = v39;
    v3 = v40;
  }

  return v9;
}

+ (uint64_t)_isAccountFlagValue:()AppleMediaServices validForAccountFlag:
{
  v5 = a3;
  v6 = a4;
  if (qword_1ED6E2640 != -1)
  {
    dispatch_once(&qword_1ED6E2640, &__block_literal_global_322);
  }

  if ([qword_1ED6E2648 containsObject:v6])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (uint64_t)_isAccountFlagWritable:()AppleMediaServices
{
  v3 = a3;
  if ([v3 isEqualToString:AMSAccountFlagAgeVerificationExpiration] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", AMSAccountFlagAutoPlay))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:AMSAccountFlagPersonalization];
  }

  return v4;
}

- (void)_setAccountProperty:()AppleMediaServices forKey:dataProtectionClass:expectedClass:
{
  v10 = a4;
  v11 = a3;
  if ([self ams_isEphemeralAccount])
  {
    [self _setEphemeralAccountProperty:v11 forKey:v10 dataProtectionClass:a5 expectedClass:a6];
  }

  else
  {
    AMSSetAccountProperty(self, v11, v10, a5, a6);
  }
}

+ (id)ams_globalEphemeralAccountProperties
{
  if (qword_1ED6E2650 != -1)
  {
    dispatch_once(&qword_1ED6E2650, &__block_literal_global_324);
  }

  v1 = qword_1ED6E2658;

  return v1;
}

+ (id)ams_globalEphemeralAccountPropertiesForAccount:()AppleMediaServices
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 ams_isEphemeralAccount] & 1) == 0)
  {
    v5 = +[AMSUnitTests isRunningUnitTests];
    v6 = +[AMSLogConfig sharedAccountsConfig];
    defaultCenter = v6;
    if (v5)
    {
      if (!v6)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v9 = AMSLogKey();
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v12 = v11;
        if (v9)
        {
          v13 = AMSLogKey();
          v14 = [v10 stringWithFormat:@"%@: [%@] ", v12, v13];
        }

        else
        {
          v14 = [v10 stringWithFormat:@"%@: ", v11];
          v13 = v14;
        }

        v22 = AMSHashIfNeeded(v4);
        *buf = 138543618;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@ Getting ephemeral account dictionary for non-ephemeral account. account = %@", buf, 0x16u);
        if (v9)
        {
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedAccountsConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v6)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v16 = AMSLogKey();
        v17 = MEMORY[0x1E696AEC0];
        v18 = objc_opt_class();
        v19 = v18;
        if (v16)
        {
          v20 = AMSLogKey();
          v21 = [v17 stringWithFormat:@"%@: [%@] ", v19, v20];
        }

        else
        {
          v21 = [v17 stringWithFormat:@"%@: ", v18];
          v20 = v21;
        }

        v23 = AMSHashIfNeeded(v4);
        *buf = 138543618;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@ Getting ephemeral account dictionary for non-ephemeral account. account = %@", buf, 0x16u);
        if (v16)
        {
        }
      }
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  ams_globalEphemeralAccountProperties = [self ams_globalEphemeralAccountProperties];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __80__ACAccount_AppleMediaServices__ams_globalEphemeralAccountPropertiesForAccount___block_invoke;
  v28[3] = &unk_1E73B2F60;
  v30 = buf;
  v25 = v4;
  v29 = v25;
  [ams_globalEphemeralAccountProperties readWrite:v28];

  v26 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v26;
}

- (void)_setEphemeralAccountProperty:()AppleMediaServices forKey:dataProtectionClass:expectedClass:
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      v4 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, v4];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    v16 = AMSHashIfNeeded(v8);
    v17 = AMSHashIfNeeded(v7);
    *buf = 138543874;
    v20 = v15;
    v21 = 2114;
    v22 = v16;
    v23 = 2114;
    v24 = v17;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@ Adding ephemeral account property. Key: %{public}@, Value: %{public}@", buf, 0x20u);
    if (v11)
    {

      v15 = v4;
    }
  }

  v18 = [MEMORY[0x1E6959A28] ams_globalEphemeralAccountPropertiesForAccount:self];
  [v18 setObject:v7 forKeyedSubscript:v8];
}

- (id)_ephemeralAccountPropertyForKey:()AppleMediaServices dataProtectionClass:expectedClasses:error:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v3 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    v13 = AMSHashIfNeeded(v5);
    *buf = 138543618;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@ Reading ephemeral account property. Key: %{public}@", buf, 0x16u);
    if (v8)
    {

      v12 = v3;
    }
  }

  v14 = [MEMORY[0x1E6959A28] ams_globalEphemeralAccountPropertiesForAccount:self];
  v15 = [v14 objectForKeyedSubscript:v5];

  return v15;
}

- (uint64_t)ams_bundleOwner
{
  ams_isBundleOwner = [self ams_isBundleOwner];
  bOOLValue = [ams_isBundleOwner BOOLValue];

  return bOOLValue;
}

- (id)ams_homeID
{
  ams_homeIdentifier = [self ams_homeIdentifier];
  uUIDString = [ams_homeIdentifier UUIDString];

  return uUIDString;
}

- (id)ams_homeIdentifier
{
  if (+[AMSDevice deviceIsAudioAccessory])
  {
    v2 = [self _accountPropertyForKey:@"homeIdentifier" expectedClass:objc_opt_class()];
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ams_homeUserID
{
  ams_homeUserIdentifiers = [self ams_homeUserIdentifiers];
  firstObject = [ams_homeUserIdentifiers firstObject];
  uUIDString = [firstObject UUIDString];

  return uUIDString;
}

- (id)ams_secureToken
{
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v3 = [ams_sharedAccountStore ams_secureTokenForAccount:self];

  return v3;
}

- (void)ams_setHomeID:()AppleMediaServices
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  [self ams_setHomeIdentifier:v6];
}

- (void)ams_setHomeIdentifier:()AppleMediaServices
{
  v5 = a3;
  if (+[AMSDevice deviceIsAudioAccessory])
  {
    uUIDString = [v5 UUIDString];
    [self _setAccountProperty:uUIDString forKey:@"homeIdentifier" expectedClass:objc_opt_class()];
  }
}

- (uint64_t)ams_setHomeUserID:()AppleMediaServices
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    if ([v4 isEqualToString:&stru_1F071BA78])
    {
      goto LABEL_6;
    }

    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    [self ams_addHomeUserIdentifier:v5];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:0];
    [self ams_removeHomeUserIdentifier:v5];
  }

LABEL_6:

  return MEMORY[0x1EEE66BB8]();
}

- (void)ams_setValue:()AppleMediaServices forAccountFlag:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:a3];
  [self ams_setAccountFlagValue:v8 forAccountFlag:v7];
}

- (uint64_t)ams_valueForAccountFlag:()AppleMediaServices
{
  v1 = [self ams_accountFlagValueForAccountFlag:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  bOOLValue = [v2 BOOLValue];
  return bOOLValue;
}

- (uint64_t)ams_addCookiesForResponse:()AppleMediaServices error:
{
  v6 = [MEMORY[0x1E6959A28] _getSetCookiesForResponse:?];
  v7 = [self ams_asynchronouslyAddCookies:v6];
  v8 = [v7 resultWithError:a4];

  return v8;
}

- (uint64_t)ams_addCookiesForResponse:()AppleMediaServices
{
  v1 = [self ams_asynchronouslyAddCookiesForResponse:?];
  v2 = [v1 resultWithError:0];

  return v2;
}

- (uint64_t)ams_addGlobalCookiesForResponse:()AppleMediaServices
{
  v1 = [self ams_asynchronouslyAddGlobalCookiesForResponse:?];
  v2 = [v1 resultWithError:0];

  return v2;
}

- (uint64_t)_updateCookiesWithCookiesToAdd:()AppleMediaServices cookiesToRemove:error:
{
  v6 = [self _updateCookiesWithCookiesToAdd:? cookiesToRemove:?];
  v7 = [v6 resultWithError:a5];

  return v7;
}

- (uint64_t)ams_addCookiesForResult:()AppleMediaServices
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  response = [v4 response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = response;

    if (v6)
    {
      v7 = [self ams_addCookiesForResponse:v6];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = +[AMSLogConfig sharedAccountsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = AMSHashIfNeeded(self);
    v13 = AMSHashIfNeeded(v4);
    v15 = 138544130;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to set cookies on an account. The given AMSURLResult does not contain a NSHTTPURLResponse. account = %{public}@ | result = %{public}@", &v15, 0x2Au);
  }

  v6 = 0;
  v7 = 0;
LABEL_10:

  return v7;
}

@end
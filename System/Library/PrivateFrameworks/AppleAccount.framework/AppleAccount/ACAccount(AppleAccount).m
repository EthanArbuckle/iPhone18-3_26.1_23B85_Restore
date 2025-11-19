@interface ACAccount(AppleAccount)
- (AARegionInfo)aa_regionInfo;
- (AASuspensionInfo)aa_suspensionInfo;
- (BOOL)_hasMailDataclassProperties;
- (BOOL)aa_isAuthKitAccount;
- (BOOL)aa_isRemotelyManaged;
- (BOOL)aa_isUsingiCloud;
- (BOOL)aa_updateAccountClassIfNecessary;
- (BOOL)aa_updateTokensWithProvisioningResponse:()AppleAccount;
- (__CFString)aa_accountClass;
- (id)_aa_rawPassword;
- (id)aa_authToken;
- (id)aa_authTokenWithError:()AppleAccount;
- (id)aa_childMailAccount;
- (id)aa_cloudKitAccount;
- (id)aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs;
- (id)aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount;
- (id)aa_fmfAccount;
- (id)aa_fmipAccount;
- (id)aa_fmipToken;
- (id)aa_formattedUsername;
- (id)aa_fullName;
- (id)aa_mapsToken;
- (id)aa_mdmServerToken;
- (id)aa_normalizedPersonID;
- (id)aa_password;
- (id)aa_pendingDOB;
- (id)aa_personID;
- (id)aa_repairState;
- (uint64_t)_aa_isExistingAccount:()AppleAccount;
- (uint64_t)_dataclassIsDisabledForProperties:()AppleAccount;
- (uint64_t)aa_ageCategory;
- (uint64_t)aa_allowUnlimitedUpdatesForDataclass:()AppleAccount;
- (uint64_t)aa_clearUserAcknowledgeMigrationAlertForAllBundles;
- (uint64_t)aa_hasDuplicateAccount;
- (uint64_t)aa_hasOptionalTerms;
- (uint64_t)aa_hsaTokenWithError:()AppleAccount;
- (uint64_t)aa_isAccountClass:()AppleAccount;
- (uint64_t)aa_isChildProtoAccount;
- (uint64_t)aa_isCloudDocsMigrationComplete;
- (uint64_t)aa_isCloudSubscriber;
- (uint64_t)aa_isDuplicateAccount:()AppleAccount;
- (uint64_t)aa_isFamilyEligible;
- (uint64_t)aa_isManagedAppleID;
- (uint64_t)aa_isNotesMigrated;
- (uint64_t)aa_isPrimaryAccount;
- (uint64_t)aa_isPrimaryEmailVerified;
- (uint64_t)aa_isProtoAccount;
- (uint64_t)aa_isRemindersAutoMigratableToCK;
- (uint64_t)aa_isRemindersMigrated;
- (uint64_t)aa_isSandboxAccount;
- (uint64_t)aa_isSuspended;
- (uint64_t)aa_isTeenProtoAccount;
- (uint64_t)aa_isUsingCloudDocs;
- (uint64_t)aa_needsEmailConfiguration;
- (uint64_t)aa_needsToVerifyTerms;
- (uint64_t)aa_serverDisabledDataclass:()AppleAccount;
- (uint64_t)aa_setPrimaryAccount:()AppleAccount;
- (uint64_t)aa_useCellularForDataclass:()AppleAccount;
- (void)_aa_clearRawPassword;
- (void)_aa_setAltDSID:()AppleAccount;
- (void)_aa_setAppleID:()AppleAccount;
- (void)_aa_setPrimaryEmail:()AppleAccount;
- (void)_aa_setRawPassword:()AppleAccount;
- (void)aa_clearUserAcknowledgeMigrationAlertForAllBundles;
- (void)aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs;
- (void)aa_hasDuplicateAccount;
- (void)aa_isPrimaryAccount;
- (void)aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount actionDetails:;
- (void)aa_setAccountClass:()AppleAccount;
- (void)aa_setAllowUnlimitedUpdates:()AppleAccount forDataclass:;
- (void)aa_setAuthToken:()AppleAccount;
- (void)aa_setCloudDocsMigrationComplete:()AppleAccount;
- (void)aa_setFirstName:()AppleAccount;
- (void)aa_setIsCloudSubscriber:()AppleAccount;
- (void)aa_setLastName:()AppleAccount;
- (void)aa_setMDMServerToken:()AppleAccount;
- (void)aa_setMapsToken:()AppleAccount;
- (void)aa_setMiddleName:()AppleAccount;
- (void)aa_setNeedsToVerifyTerms:()AppleAccount;
- (void)aa_setPassword:()AppleAccount;
- (void)aa_setPendingDOB:()AppleAccount;
- (void)aa_setPrimaryEmailVerified:()AppleAccount;
- (void)aa_setRepairState:()AppleAccount;
- (void)aa_setUseCellular:()AppleAccount forDataclass:;
- (void)aa_setUsesCloudDocs:()AppleAccount;
- (void)aa_updateAccountClassIfNecessary;
- (void)aa_updateWithProvisioningResponse:()AppleAccount;
@end

@implementation ACAccount(AppleAccount)

- (__CFString)aa_accountClass
{
  objc_opt_class();
  v2 = [a1 objectForKeyedSubscript:@"accountClass"];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    v5 = [a1 objectForKeyedSubscript:@"primaryAccount"];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 BOOLValue];
    v8 = @"basic";
    if (v7)
    {
      v8 = @"primary";
    }

    v4 = v8;
  }

  return v4;
}

- (id)aa_personID
{
  v1 = [a1 accountPropertyForKey:@"personID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 stringValue];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

- (id)aa_fmfAccount
{
  v1 = [a1 childAccountsWithAccountTypeIdentifier:*MEMORY[0x1E6959850]];
  v2 = [v1 firstObject];

  return v2;
}

- (AASuspensionInfo)aa_suspensionInfo
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 aa_suspensionInfo];
LABEL_8:
    v6 = v4;
    goto LABEL_9;
  }

  objc_opt_class();
  v5 = [a1 accountPropertyForKey:@"suspendedInfo"];
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = [[AASuspensionInfo alloc] initWithDictionary:v3];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (uint64_t)aa_needsToVerifyTerms
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 aa_needsToVerifyTerms];
  }

  else
  {
    v3 = [a1 accountPropertyForKey:@"needsToVerifyTerms"];
    v4 = [v3 BOOLValue];
  }

  v5 = v4;

  return v5;
}

- (uint64_t)aa_isSuspended
{
  v2 = [a1 aa_suspensionInfo];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 aa_needsToVerifyTerms];
  }

  return v3;
}

- (id)aa_fmipAccount
{
  v1 = [a1 childAccountsWithAccountTypeIdentifier:*MEMORY[0x1E6959838]];
  v2 = [v1 firstObject];

  return v2;
}

- (uint64_t)aa_isManagedAppleID
{
  v1 = [a1 accountPropertyForKey:@"isManagedAppleID"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (id)aa_cloudKitAccount
{
  v1 = [a1 childAccountsWithAccountTypeIdentifier:*MEMORY[0x1E6959828]];
  v2 = [v1 firstObject];

  return v2;
}

- (uint64_t)aa_isPrimaryEmailVerified
{
  v1 = [a1 accountPropertyForKey:@"primaryEmailVerified"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (id)aa_authToken
{
  v1 = [a1 credential];
  v2 = [v1 token];

  return v2;
}

- (id)aa_formattedUsername
{
  v1 = MEMORY[0x1E698DE10];
  v2 = [a1 username];
  v3 = [v1 formattedUsernameFromUsername:v2];

  return v3;
}

- (void)aa_setFirstName:()AppleAccount
{
  v4 = [a3 copy];
  [a1 setAccountProperty:v4 forKey:@"firstName"];
}

- (void)aa_setMiddleName:()AppleAccount
{
  v4 = [a3 copy];
  [a1 setAccountProperty:v4 forKey:@"middleName"];
}

- (void)aa_setLastName:()AppleAccount
{
  v4 = [a3 copy];
  [a1 setAccountProperty:v4 forKey:@"lastName"];
}

- (id)aa_fullName
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v3 = [a1 aa_firstName];
  [v2 setGivenName:v3];

  v4 = [a1 aa_lastName];
  [v2 setFamilyName:v4];

  v5 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v2 style:2 options:0];
  if (![v5 length])
  {
    v6 = [a1 accountPropertyForKey:*MEMORY[0x1E6959758]];

    v5 = v6;
  }

  return v5;
}

- (AARegionInfo)aa_regionInfo
{
  v1 = [a1 accountPropertyForKey:@"regionInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[AARegionInfo alloc] initWithDictionary:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)aa_normalizedPersonID
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

- (uint64_t)aa_isPrimaryAccount
{
  v2 = [a1 aa_accountClass];
  if (v2)
  {
    v3 = [a1 aa_isAccountClass:@"primary"];
  }

  else
  {
    v4 = _AALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_isPrimaryAccount];
    }

    objc_opt_class();
    v5 = [a1 objectForKeyedSubscript:@"primaryAccount"];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v3 = [v6 BOOLValue];
  }

  return v3;
}

- (uint64_t)aa_setPrimaryAccount:()AppleAccount
{
  if (a3)
  {
    v4 = @"primary";
  }

  else if (+[AAPreferences isMultipleFullAccountsEnabled])
  {
    v4 = @"full";
  }

  else
  {
    v4 = @"basic";
  }

  return [a1 aa_setAccountClass:v4];
}

- (uint64_t)aa_isAccountClass:()AppleAccount
{
  v4 = a3;
  v5 = [a1 aa_accountClass];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (void)aa_setAccountClass:()AppleAccount
{
  v5 = a3;
  v6 = [a1 accountType];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69597F8]];

  if ((v8 & 1) == 0)
  {
    [(ACAccount(AppleAccount) *)a2 aa_setAccountClass:a1];
  }

  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount(AppleAccount) aa_setAccountClass:];
  }

  [a1 setObject:v5 forKeyedSubscript:@"accountClass"];
  v10 = [v5 isEqualToString:@"primary"];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:v10];
  [a1 setObject:v11 forKeyedSubscript:@"primaryAccount"];
}

- (BOOL)aa_updateAccountClassIfNecessary
{
  objc_opt_class();
  v2 = [a1 objectForKeyedSubscript:@"accountClass"];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    objc_opt_class();
    v4 = [a1 objectForKeyedSubscript:@"primaryAccount"];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 BOOLValue];
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_updateAccountClassIfNecessary];
    }

    if (v6)
    {
      v8 = @"primary";
    }

    else
    {
      v8 = @"basic";
    }

    [a1 setObject:v8 forKeyedSubscript:@"accountClass"];
  }

  return v3 == 0;
}

- (void)aa_setPrimaryEmailVerified:()AppleAccount
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 setAccountProperty:v2 forKey:@"primaryEmailVerified"];
}

- (void)aa_setNeedsToVerifyTerms:()AppleAccount
{
  v5 = [a1 parentAccount];

  if (v5)
  {
    v6 = [a1 parentAccount];
    [v6 aa_setNeedsToVerifyTerms:a3];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [a1 setAccountProperty:? forKey:?];
  }
}

- (uint64_t)aa_isUsingCloudDocs
{
  v1 = [a1 accountPropertyForKey:@"usesCloudDocs"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)aa_setUsesCloudDocs:()AppleAccount
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 setAccountProperty:v2 forKey:@"usesCloudDocs"];
}

- (uint64_t)aa_isCloudSubscriber
{
  v1 = [a1 accountPropertyForKey:@"isCloudSubscriber"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)aa_setIsCloudSubscriber:()AppleAccount
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 setAccountProperty:v2 forKey:@"isCloudSubscriber"];
}

- (uint64_t)aa_isCloudDocsMigrationComplete
{
  v1 = [a1 accountPropertyForKey:@"cloudDocsMigrationComplete"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)aa_setCloudDocsMigrationComplete:()AppleAccount
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 setAccountProperty:v2 forKey:@"cloudDocsMigrationComplete"];
}

- (BOOL)aa_isUsingiCloud
{
  v1 = [a1 enabledDataclasses];
  v2 = [v1 count] != 0;

  return v2;
}

- (BOOL)aa_isRemotelyManaged
{
  v1 = [a1 accountPropertyForKey:*MEMORY[0x1E69597B0]];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)aa_isNotesMigrated
{
  v1 = [a1 accountPropertyForKey:@"notesMigrated"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)aa_isRemindersMigrated
{
  v1 = [a1 accountPropertyForKey:@"remindersMigrated"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)aa_isRemindersAutoMigratableToCK
{
  v1 = [a1 accountPropertyForKey:@"remindersAutoMigratableToCK"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)aa_isSandboxAccount
{
  v1 = [a1 accountPropertyForKey:@"isSandboxAcct"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (BOOL)aa_isAuthKitAccount
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [v2 compare:*MEMORY[0x1E6959888] options:4] == 0;

  return v3;
}

- (uint64_t)aa_hasOptionalTerms
{
  v1 = [a1 objectForKeyedSubscript:@"hasOptionalTerms"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (id)aa_repairState
{
  v2 = [a1 parentAccount];

  if (v2)
  {
    v3 = [a1 parentAccount];
    v4 = [v3 aa_repairState];
  }

  else
  {
    v4 = [a1 accountPropertyForKey:@"repairState"];
  }

  return v4;
}

- (void)aa_setRepairState:()AppleAccount
{
  v6 = a3;
  v4 = [a1 parentAccount];

  if (v4)
  {
    v5 = [a1 parentAccount];
    [v5 aa_setRepairState:v6];
  }

  else
  {
    [a1 setAccountProperty:v6 forKey:@"repairState"];
  }
}

- (uint64_t)aa_needsEmailConfiguration
{
  result = [a1 isProvisionedForDataclass:*MEMORY[0x1E6959B28]];
  if (result)
  {
    v3 = [a1 aa_childMailAccount];

    if (v3)
    {
      return 0;
    }

    else
    {
      return [a1 _hasMailDataclassProperties] ^ 1;
    }
  }

  return result;
}

- (uint64_t)aa_serverDisabledDataclass:()AppleAccount
{
  v4 = a3;
  if ([a1 aa_isManagedAppleID] && (objc_msgSend(a1, "dataclassProperties"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [a1 dataclassProperties];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = [a1 _dataclassIsDisabledForProperties:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)_dataclassIsDisabledForProperties:()AppleAccount
{
  v3 = [a3 objectForKeyedSubscript:@"status"];
  v4 = [v3 isEqualToString:@"disabled"];

  return v4;
}

- (BOOL)_hasMailDataclassProperties
{
  v1 = [a1 propertiesForDataclass:*MEMORY[0x1E6959B28]];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 allKeys];
    v4 = [v3 count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)aa_isFamilyEligible
{
  v1 = [a1 accountPropertyForKey:@"familyEligible"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)aa_ageCategory
{
  v1 = [a1 accountPropertyForKey:@"ageCategory"];
  v2 = [v1 integerValue];

  return v2;
}

- (id)aa_pendingDOB
{
  v2 = objc_opt_new();
  v3 = [v2 ageMigrationFeatureEnabled];

  if (v3)
  {
    v4 = [a1 accountPropertyForKey:@"pendingDOB"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)aa_setPendingDOB:()AppleAccount
{
  v6 = a3;
  v4 = objc_opt_new();
  v5 = [v4 ageMigrationFeatureEnabled];

  if (v5)
  {
    [a1 setAccountProperty:v6 forKey:@"pendingDOB"];
  }
}

- (id)aa_childMailAccount
{
  if ([a1 isProvisionedForDataclass:*MEMORY[0x1E6959B28]])
  {
    v2 = [a1 childAccountsWithAccountTypeIdentifier:*MEMORY[0x1E6959898]];
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)aa_password
{
  v1 = [a1 credential];
  v2 = [v1 password];

  return v2;
}

- (void)aa_setPassword:()AppleAccount
{
  v9 = a3;
  v4 = [a1 credential];
  v5 = [v4 password];
  v6 = [v9 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [a1 credential];

    if (v7)
    {
      v8 = [a1 credential];
      [v8 setPassword:v9];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E6959A30]) initWithPassword:v9];
      [a1 setCredential:v8];
    }
  }
}

- (void)aa_setAuthToken:()AppleAccount
{
  v9 = a3;
  v4 = [a1 credential];
  v5 = [v4 token];
  v6 = [v9 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [a1 credential];

    if (v7)
    {
      v8 = [a1 credential];
      [v8 setToken:v9];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E6959A30]);
      [v8 setToken:v9];
      [a1 setCredential:v8];
    }

    [a1 setAuthenticated:1];
  }
}

- (id)aa_fmipToken
{
  v2 = [a1 aa_fmipAccount];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 credential];
    v5 = [v4 token];
  }

  else
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "ERROR: Didn't find a child account, returning findMyiPhoneToken", v9, 2u);
    }

    v4 = [a1 credential];
    v5 = [v4 findMyiPhoneToken];
  }

  v7 = v5;

  return v7;
}

- (id)aa_mapsToken
{
  v1 = [a1 credential];
  v2 = [v1 mapsToken];

  return v2;
}

- (void)aa_setMapsToken:()AppleAccount
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [a1 credential];
    v6 = [v5 mapsToken];
    v7 = [v10 isEqualToString:v6];

    v4 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [a1 credential];

      if (v8)
      {
        v9 = [a1 credential];
        [v9 setMapsToken:v10];
      }

      else
      {
        v9 = objc_alloc_init(MEMORY[0x1E6959A30]);
        [v9 setMapsToken:v10];
        [a1 setCredential:v9];
      }

      v4 = v10;
    }
  }
}

- (id)aa_mdmServerToken
{
  v1 = [a1 credential];
  v2 = [v1 mdmServerToken];

  return v2;
}

- (void)aa_setMDMServerToken:()AppleAccount
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [a1 credential];
    v6 = [v5 mdmServerToken];
    v7 = [v10 isEqualToString:v6];

    v4 = v10;
    if ((v7 & 1) == 0)
    {
      v8 = [a1 credential];

      if (v8)
      {
        v9 = [a1 credential];
        [v9 setMdmServerToken:v10];
      }

      else
      {
        v9 = objc_alloc_init(MEMORY[0x1E6959A30]);
        [v9 setMdmServerToken:v10];
        [a1 setCredential:v9];
      }

      v4 = v10;
    }
  }
}

- (id)aa_authTokenWithError:()AppleAccount
{
  v10 = 0;
  v4 = [a1 credentialWithError:&v10];
  v5 = v10;
  v6 = v5;
  if (a3 && v5)
  {
    v7 = v5;
    v8 = 0;
    *a3 = v6;
  }

  else
  {
    v8 = [v4 token];
  }

  return v8;
}

- (uint64_t)aa_hsaTokenWithError:()AppleAccount
{
  v0 = _AALogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    [ACAccount(AppleAccount) aa_hsaTokenWithError:];
  }

  return 0;
}

- (uint64_t)aa_useCellularForDataclass:()AppleAccount
{
  v4 = a3;
  v5 = [a1 accountPropertyForKey:@"dataclassesDisabledForCellular"];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1u;
}

- (void)aa_setUseCellular:()AppleAccount forDataclass:
{
  v8 = a4;
  v6 = [a1 accountPropertyForKey:@"dataclassesDisabledForCellular"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (a3)
  {
    [v7 removeObject:v8];
  }

  else
  {
    [v7 addObject:v8];
  }

  [a1 setAccountProperty:v7 forKey:@"dataclassesDisabledForCellular"];
}

- (uint64_t)aa_allowUnlimitedUpdatesForDataclass:()AppleAccount
{
  v4 = a3;
  v5 = [a1 accountPropertyForKey:@"unlimitedUpdates"];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)aa_setAllowUnlimitedUpdates:()AppleAccount forDataclass:
{
  v8 = a4;
  v6 = [a1 accountPropertyForKey:@"unlimitedUpdates"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (a3)
  {
    [v7 addObject:v8];
  }

  else
  {
    [v7 removeObject:v8];
  }

  [a1 setAccountProperty:v7 forKey:@"unlimitedUpdates"];
}

- (void)aa_updateWithProvisioningResponse:()AppleAccount
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(ACAccount(AppleAccount) *)a2 aa_updateWithProvisioningResponse:a1];
  }

  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [a1 username];
    *buf = 138412290;
    v86 = v7;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Updating account %@ with provisioning response.", buf, 0xCu);
  }

  if ([a1 aa_needsToVerifyTerms])
  {
    [a1 aa_setNeedsToVerifyTerms:0];
  }

  v8 = [a1 aa_suspensionInfo];

  if (v8)
  {
    [a1 setAccountProperty:0 forKey:@"suspendedInfo"];
  }

  v9 = [v5 altDSID];
  if (v9)
  {
    [a1 setAccountProperty:v9 forKey:@"altDSID"];
  }

  v10 = [v5 dataclassProperties];
  [a1 _aa_setDataclassProperties:v10];

  v11 = [v5 personID];
  [a1 setAccountProperty:v11 forKey:@"personID"];

  v12 = [v5 firstName];
  [a1 setAccountProperty:v12 forKey:@"firstName"];

  v13 = [v5 lastName];
  [a1 setAccountProperty:v13 forKey:@"lastName"];

  v14 = [v5 primaryEmail];
  [a1 setAccountProperty:v14 forKey:@"primaryEmail"];

  v15 = [v5 primaryEmailVerified];
  [a1 setAccountProperty:v15 forKey:@"primaryEmailVerified"];

  v16 = [v5 appleIDAliases];
  [a1 setAccountProperty:v16 forKey:@"appleIDAliases"];

  v17 = [v5 protocolVersion];
  [a1 setAccountProperty:v17 forKey:@"protocolVersion"];

  v18 = [v5 appleID];
  [a1 setAccountProperty:v18 forKey:@"appleId"];

  v19 = [v5 regionInfo];
  [a1 setAccountProperty:v19 forKey:@"regionInfo"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isManagedAppleID")}];
  [a1 setAccountProperty:v20 forKey:@"isManagedAppleID"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isNotesMigrated")}];
  [a1 setAccountProperty:v21 forKey:@"notesMigrated"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isRemindersMigrated")}];
  [a1 setAccountProperty:v22 forKey:@"remindersMigrated"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isRemindersAutoMigratableToCK")}];
  [a1 setAccountProperty:v23 forKey:@"remindersAutoMigratableToCK"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isSandboxAccount")}];
  [a1 setAccountProperty:v24 forKey:@"isSandboxAcct"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isCloudDocsMigrated")}];
  [a1 setAccountProperty:v25 forKey:@"cloudDocsMigrationComplete"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isCloudDocsMigrated")}];
  [a1 setAccountProperty:v26 forKey:@"usesCloudDocs"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "hasOptionalTerms")}];
  [a1 setAccountProperty:v27 forKey:@"hasOptionalTerms"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isFamilyEligible")}];
  [a1 setAccountProperty:v28 forKey:@"familyEligible"];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "ageCategory")}];
  [a1 setAccountProperty:v29 forKey:@"ageCategory"];

  v30 = MEMORY[0x1E695DFD8];
  v64 = v5;
  v31 = [v5 provisionedDataclasses];
  v32 = [v30 setWithArray:v31];

  v33 = +[AADataclassManager sharedManager];
  v34 = [v33 filteredServerProvidedFeatures:v32 forAccount:a1];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v35 = v34;
  v36 = [v35 countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v78;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v78 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [a1 setProvisioned:1 forDataclass:*(*(&v77 + 1) + 8 * i)];
      }

      v37 = [v35 countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v37);
  }

  v62 = v32;
  v63 = v9;

  [a1 enabledDataclasses];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v40 = v76 = 0u;
  v41 = [v40 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v74;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v74 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v73 + 1) + 8 * j);
        if (([v35 containsObject:v45] & 1) == 0)
        {
          v46 = _AALogSystem();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v86 = v45;
            _os_log_impl(&dword_1B6F6A000, v46, OS_LOG_TYPE_DEFAULT, "Disabling dataclass %@ because it is not provisioned.", buf, 0xCu);
          }

          [a1 setEnabled:0 forDataclass:v45];
        }
      }

      v42 = [v40 countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v42);
  }

  v47 = [a1 provisionedDataclasses];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v48 = [v47 countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v70;
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v70 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v69 + 1) + 8 * k);
        if (([v35 containsObject:v52] & 1) == 0)
        {
          v53 = _AALogSystem();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v86 = v52;
            _os_log_impl(&dword_1B6F6A000, v53, OS_LOG_TYPE_DEFAULT, "Removing dataclass provisioning %@ because it is not provisioned.", buf, 0xCu);
          }

          [a1 setProvisioned:0 forDataclass:v52];
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v49);
  }

  if ([a1 aa_isManagedAppleID])
  {
    v54 = [a1 enabledDataclasses];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v40 = v54;
    v55 = [v40 countByEnumeratingWithState:&v65 objects:v81 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v66;
      do
      {
        for (m = 0; m != v56; ++m)
        {
          if (*v66 != v57)
          {
            objc_enumerationMutation(v40);
          }

          v59 = *(*(&v65 + 1) + 8 * m);
          if ([a1 aa_serverDisabledDataclass:v59])
          {
            v60 = _AALogSystem();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v86 = v59;
              _os_log_impl(&dword_1B6F6A000, v60, OS_LOG_TYPE_DEFAULT, "Disabling dataclass %@ because it has been restricted by the server.", buf, 0xCu);
            }

            [a1 setEnabled:0 forDataclass:v59];
          }
        }

        v56 = [v40 countByEnumeratingWithState:&v65 objects:v81 count:16];
      }

      while (v56);
    }
  }

  [a1 aa_updateTokensWithProvisioningResponse:v64];

  v61 = *MEMORY[0x1E69E9840];
}

- (BOOL)aa_updateTokensWithProvisioningResponse:()AppleAccount
{
  v4 = a3;
  v5 = [v4 authToken];
  v6 = v5 != 0;
  if (v5)
  {
    [a1 aa_setAuthToken:v5];
  }

  v46 = v5;
  v7 = [v4 mapsToken];
  if (v7)
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Saving the Maps token", buf, 2u);
    }

    [a1 aa_setMapsToken:v7];
    v6 = 1;
  }

  v9 = [v4 mdmServerToken];
  if (v9)
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Saving the MDM Server token", buf, 2u);
    }

    [a1 aa_setMDMServerToken:v9];
    v6 = 1;
  }

  v11 = [v4 searchPartyToken];
  if (v11)
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Setting SearchParty token...", buf, 2u);
    }

    v13 = [a1 credential];
    [v13 setCredentialItem:v11 forKey:*MEMORY[0x1E6959A08]];

    v6 = 1;
  }

  v43 = v11;
  v44 = v9;
  v45 = v7;
  v14 = [v4 keyTransparencyToken];
  if (v14)
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Setting KeyTransparency token...", buf, 2u);
    }

    v16 = [a1 credential];
    [v16 setCredentialItem:v14 forKey:*MEMORY[0x1E69599A8]];

    v6 = 1;
  }

  v17 = [v4 cloudKitToken];
  if (v17)
  {
    v18 = _AALogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Setting CloudKit token...", buf, 2u);
    }

    v19 = [a1 credential];
    [v19 setCredentialItem:v17 forKey:*MEMORY[0x1E6959940]];

    v20 = [a1 aa_cloudKitAccount];
    v21 = v20;
    if (v20)
    {
      [v20 setAuthenticated:1];
      v22 = [v21 credential];
      [v22 setToken:v17];

      v23 = [a1 accountStore];
      v47 = 0;
      v24 = [v23 saveVerifiedAccount:v21 error:&v47];
      v25 = v47;

      if ((v24 & 1) == 0)
      {
        v26 = _AALogSystem();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [ACAccount(AppleAccount) aa_updateTokensWithProvisioningResponse:];
        }
      }
    }

    else
    {
      v27 = _AALogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Couldn't find a CloudKit child account - stashing the token away", buf, 2u);
      }

      v25 = [a1 username];
      [AAKeychainManager setPassword:v17 forServiceName:@"com.apple.appleaccount.cloudkit.token" username:v25 accessGroup:@"appleaccount"];
    }

    v6 = 1;
  }

  v28 = [v4 fmipToken];
  if (v28)
  {
    v29 = [a1 credential];
    [v29 setFindMyiPhoneToken:v28];

    v6 = 1;
  }

  v30 = [v4 fmipAppToken];
  if (v30)
  {
    v31 = _AALogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v31, OS_LOG_TYPE_DEFAULT, "Setting FMIP App token...", buf, 2u);
    }

    v32 = [a1 credential];
    [v32 setCredentialItem:v30 forKey:*MEMORY[0x1E6959990]];

    v6 = 1;
  }

  v33 = [v4 fmipSiriToken];
  if (v33)
  {
    v34 = _AALogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v34, OS_LOG_TYPE_DEFAULT, "Setting FMIP Siri token...", buf, 2u);
    }

    v35 = [a1 credential];
    [v35 setCredentialItem:v33 forKey:*MEMORY[0x1E6959998]];

    v6 = 1;
  }

  v36 = [v4 fmfToken];
  if (v36)
  {
    v37 = _AALogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_updateTokensWithProvisioningResponse:];
    }

    v38 = [a1 credential];
    [v38 setCredentialItem:v36 forKey:*MEMORY[0x1E6959988]];

    v6 = 1;
  }

  v39 = [v4 fmfAppToken];
  if (v39)
  {
    v40 = _AALogSystem();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_updateTokensWithProvisioningResponse:];
    }

    v41 = [a1 credential];
    [v41 setCredentialItem:v39 forKey:*MEMORY[0x1E6959980]];

    v6 = 1;
  }

  return v6;
}

- (uint64_t)aa_hasDuplicateAccount
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 accountStore];
  v15[0] = *MEMORY[0x1E69597F8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14 = 0;
  v4 = [v2 accountsWithAccountTypeIdentifiers:v3 error:&v14];
  v5 = v14;

  if (!v4)
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACAccount(AppleAccount) aa_hasDuplicateAccount];
    }

    goto LABEL_8;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__ACAccount_AppleAccount__aa_hasDuplicateAccount__block_invoke;
  v13[3] = &unk_1E7C9B248;
  v13[4] = a1;
  v6 = [v4 aaf_firstObjectPassingTest:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__ACAccount_AppleAccount__aa_hasDuplicateAccount__block_invoke_2;
  v12[3] = &unk_1E7C9B248;
  v12[4] = a1;
  v7 = [v4 aaf_firstObjectPassingTest:v12];

  if (v6 || !v7)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = 1;
LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (uint64_t)_aa_isExistingAccount:()AppleAccount
{
  v4 = a3;
  v5 = [a1 accountType];
  v6 = [v5 identifier];
  v7 = [v4 accountType];
  v8 = [v7 identifier];
  v9 = [v6 isEqualToString:v8];

  v10 = [a1 identifier];
  v11 = [v4 identifier];

  LODWORD(v4) = [v10 isEqualToString:v11];
  return v4 & v9;
}

- (uint64_t)aa_isDuplicateAccount:()AppleAccount
{
  v4 = a3;
  v5 = [a1 accountType];
  v6 = [v5 identifier];
  v7 = [v4 accountType];
  v8 = [v7 identifier];
  v9 = [v6 isEqualToString:v8];

  v10 = [a1 identifier];
  v11 = [v4 identifier];
  LOBYTE(v7) = [v10 isEqualToString:v11];

  v12 = 0;
  if ((v7 & 1) == 0 && v9)
  {
    v13 = [a1 aa_personID];
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = v13;
    v15 = [a1 aa_personID];
    v16 = [v4 aa_personID];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      v18 = _AALogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [ACAccount(AppleAccount) aa_isDuplicateAccount:a1];
      }
    }

    else
    {
LABEL_7:
      v19 = [a1 username];
      if (!v19)
      {
        goto LABEL_11;
      }

      v20 = v19;
      v21 = [a1 username];
      v22 = [v4 username];
      v23 = [v21 isEqualToString:v22];

      if (v23)
      {
        v18 = _AALogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [ACAccount(AppleAccount) aa_isDuplicateAccount:];
        }
      }

      else
      {
LABEL_11:
        v24 = [a1 aa_altDSID];
        if (!v24)
        {
          goto LABEL_15;
        }

        v25 = v24;
        v26 = [a1 aa_altDSID];
        v27 = [v4 aa_altDSID];
        v28 = [v26 isEqualToString:v27];

        if (v28)
        {
          v18 = _AALogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [ACAccount(AppleAccount) aa_isDuplicateAccount:a1];
          }
        }

        else
        {
LABEL_15:
          v18 = [v4 aa_appleIDAliases];
          v12 = [a1 username];
          if (!v12)
          {
LABEL_21:

            goto LABEL_22;
          }

          v29 = [a1 username];
          v30 = [v18 containsObject:v29];

          if (!v30)
          {
            v12 = 0;
            goto LABEL_21;
          }

          v31 = _AALogSystem();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            [ACAccount(AppleAccount) aa_isDuplicateAccount:];
          }
        }
      }
    }

    v12 = 1;
    goto LABEL_21;
  }

LABEL_22:

  return v12;
}

- (uint64_t)aa_isChildProtoAccount
{
  result = [a1 aa_isProtoAccount];
  if (result)
  {
    return [a1 proto_ageRange] == 1;
  }

  return result;
}

- (uint64_t)aa_isTeenProtoAccount
{
  result = [a1 aa_isProtoAccount];
  if (result)
  {
    return [a1 proto_ageRange] == 2;
  }

  return result;
}

- (uint64_t)aa_isProtoAccount
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [MEMORY[0x1E698DC80] sharedInstance];
  v4 = [v3 protoAccountType];
  v5 = [v4 identifier];
  v6 = [v2 isEqualToString:v5];

  return v6;
}

- (void)_aa_setAppleID:()AppleAccount
{
  v4 = a3;
  if ([v4 length])
  {
    [a1 setAccountProperty:v4 forKey:@"appleId"];
  }
}

- (void)_aa_setAltDSID:()AppleAccount
{
  v4 = a3;
  if ([v4 length])
  {
    [a1 setAccountProperty:v4 forKey:@"altDSID"];
  }
}

- (void)_aa_setPrimaryEmail:()AppleAccount
{
  v4 = a3;
  if ([v4 length])
  {
    [a1 setAccountProperty:v4 forKey:@"primaryEmail"];
  }
}

- (id)_aa_rawPassword
{
  v1 = [a1 credential];
  v2 = [v1 credentialItemForKey:*MEMORY[0x1E6959A00]];

  return v2;
}

- (void)_aa_setRawPassword:()AppleAccount
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [a1 _aa_rawPassword];
    v6 = [v10 isEqualToString:v5];

    v4 = v10;
    if ((v6 & 1) == 0)
    {
      v7 = [a1 credential];
      v8 = v7;
      if (v7)
      {
        [v7 setCredentialItem:v10 forKey:*MEMORY[0x1E6959A00]];
      }

      else
      {
        v9 = objc_alloc_init(MEMORY[0x1E6959A30]);
        [v9 setCredentialItem:v10 forKey:*MEMORY[0x1E6959A00]];
        [a1 setCredential:v9];
      }

      v4 = v10;
    }
  }
}

- (void)_aa_clearRawPassword
{
  v1 = [a1 credential];
  if (v1)
  {
    v2 = v1;
    [v1 setCredentialItem:0 forKey:*MEMORY[0x1E6959A00]];
    v1 = v2;
  }
}

- (void)aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount actionDetails:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AALogSystem();
  v9 = v8;
  if (v6 && v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Saving user action %@ for bundle id %@", &v16, 0x16u);
    }

    v9 = [a1 aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs];
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:v9 actionDetails:?];
    }

    v11 = [v9 mutableCopy];
    if (!v9)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);

      v11 = v12;
    }

    [v11 setObject:v7 forKey:v6];
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v11 count];
      v16 = 134217984;
      v17 = v14;
      _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "All bundleId count is %lu... saving", &v16, 0xCu);
    }

    [a1 setAccountProperty:v11 forKey:@"userAcknowledgeMigrationAlert"];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [ACAccount(AppleAccount) aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:actionDetails:];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(AppleAccount) aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:];
    }
  }

  else
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ACAccount(AppleAccount) aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs
{
  v1 = [a1 accountPropertyForKey:@"userAcknowledgeMigrationAlert"];
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount(AppleAccount) aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs];
  }

  return v1;
}

- (uint64_t)aa_clearUserAcknowledgeMigrationAlertForAllBundles
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount(AppleAccount) aa_clearUserAcknowledgeMigrationAlertForAllBundles];
  }

  return [a1 setAccountProperty:0 forKey:@"userAcknowledgeMigrationAlert"];
}

- (void)aa_isPrimaryAccount
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)aa_setAccountClass:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACAccount+AppleAccount.m" lineNumber:227 description:@"Attempt to set accountClass on non-iCloud account"];
}

- (void)aa_setAccountClass:()AppleAccount .cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_updateAccountClassIfNecessary
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_updateWithProvisioningResponse:()AppleAccount .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACAccount+AppleAccount.m" lineNumber:635 description:{@"Invalid parameter not satisfying: %@", @"provisioningResponse"}];
}

- (void)aa_updateTokensWithProvisioningResponse:()AppleAccount .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_updateTokensWithProvisioningResponse:()AppleAccount .cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_updateTokensWithProvisioningResponse:()AppleAccount .cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_hasDuplicateAccount
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_isDuplicateAccount:()AppleAccount .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 aa_personID];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)aa_isDuplicateAccount:()AppleAccount .cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_isDuplicateAccount:()AppleAccount .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 aa_altDSID];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)aa_isDuplicateAccount:()AppleAccount .cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount actionDetails:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)aa_saveUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount actionDetails:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount .cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_fetchUserAcknowledgementForAgeMigrationAlertForBundleID:()AppleAccount .cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)aa_fetchUserAcknowledgementForAgeMigrationAlertForAllBundleIDs
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)aa_clearUserAcknowledgeMigrationAlertForAllBundles
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end
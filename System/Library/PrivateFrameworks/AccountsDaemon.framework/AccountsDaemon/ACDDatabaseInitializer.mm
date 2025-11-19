@interface ACDDatabaseInitializer
- (ACDDatabaseInitializer)init;
- (ACDDatabaseInitializer)initWithDatabaseConnection:(id)a3;
- (BOOL)_ensureAllDataclassesExist;
- (BOOL)_ensureAllInternalAccountTypesExist:(BOOL)a3;
- (BOOL)updateDefaultContentIfNecessary:(id *)a3;
- (id)_accessKeyWithName:(id)a3;
- (id)_accessKeys;
- (id)_accountTypeWithIdentifier:(id)a3;
- (id)_accountTypes;
- (id)_accounts;
- (id)_dataclassWithName:(id)a3;
- (id)_dataclasses;
- (id)_managedDataclassesSetForNames:(id)a3;
- (id)_modernDeviceLocatiorSupportedDataclasses;
- (id)_modernHolidayCalendarSupportedAndSyncableDataclasses;
- (id)_modernIMAPMailSupportedAndSyncableDataclasses;
- (id)_modernIMAPSupportedDataclasses;
- (id)_modernIMAPSyncableDataclasses;
- (id)_modernOnMyDeviceSupportedDataclasses;
- (id)_modernPOPSupportedAndSyncableDataclasses;
- (void)_addAccessKeyWithName:(id)a3;
- (void)_addAccessKeysAttributeToCloudKitAccountType;
- (void)_addAccessKeysAttributeToFacebookAccountType;
- (void)_addAccessKeysAttributeToLinkedInAccountType;
- (void)_addAccessKeysAttributeToLiverpoolAccountType;
- (void)_addAccessKeysAttributeToTencentWeiboAccountType;
- (void)_addAndConfigureAllOSXAccountTypes;
- (void)_addAppleAccountType;
- (void)_addAppleIDAccountType;
- (void)_addAppleIDAuthenticationAccountType;
- (void)_addBookmarkDAVAccountType;
- (void)_addCalDAVAccountType;
- (void)_addCardDAVAccountType;
- (void)_addCloudKitAccountType;
- (void)_addCloudKitDataclasses;
- (void)_addContactsCalendarsDataclassesToFB;
- (void)_addCredentialType:(id)a3 toAccountType:(id)a4 supportsAuthentication:(BOOL)a5;
- (void)_addDataclassNumberingToExistingDataclasses;
- (void)_addDataclassWithName:(id)a3;
- (void)_addDocumentsAndVPNDataclass;
- (void)_addExchangeAccountType;
- (void)_addFMFAccountType;
- (void)_addFaceTimeAccountType;
- (void)_addFacebookAccessKeys;
- (void)_addFacebookAccountType;
- (void)_addFacebookAndDAVLegacyAccountTypes;
- (void)_addFacebookAudienceAccessKeyToFacebookAccountType;
- (void)_addFindMyiPhoneAccountType;
- (void)_addFlickrAccountType;
- (void)_addGameCenterAccountType;
- (void)_addGmailAccountType;
- (void)_addHolidayCalendarAccountType;
- (void)_addHotmailAccountType;
- (void)_addIMAPAccountType;
- (void)_addIMAPMailAccountType;
- (void)_addIMAPNotesAccountType;
- (void)_addLDAPAccountType;
- (void)_addLinkedInAccessKeys;
- (void)_addLinkedInAccountType;
- (void)_addLinkedInLegacyAccountType;
- (void)_addLiverpoolAccountType;
- (void)_addMadridAccountType;
- (void)_addMissingAccountTypes;
- (void)_addNotesDataclassToAASupportedDataclasses;
- (void)_addObsoleteAttributeToAccountTypes;
- (void)_addOnMyDeviceAccountType;
- (void)_addPOPAccountType;
- (void)_addPublishedCalendarAccountType;
- (void)_addRemindersDataclassToCalDAVAccountType;
- (void)_addRemoteManagementAccountType;
- (void)_addSubscribedCalendarAccountType;
- (void)_addSupportsAuthenticationAttributeToAccountTypes;
- (void)_addSupportsAuthenticationAttributeToAccounts;
- (void)_addSupportsMultipleAccountsAttributeToAccountTypes;
- (void)_addSyncableDataclassesToCardAndCalDAV;
- (void)_addTudouAccountType;
- (void)_addVimeoAccountType;
- (void)_addWarmingUpAttributeToAccounts;
- (void)_addYahooAccountType;
- (void)_addYelpAccountType;
- (void)_addYoukuAccountType;
- (void)_addiTunesStoreAccountType;
- (void)_addiTunesStoreSandboxAccountType;
- (void)_allowMultipleAppleIDAuthenticationAccounts;
- (void)_aolSupportsAuthentication;
- (void)_changeFacebookAccountToLegacyAccountType;
- (void)_configureSMTPAccountType;
- (void)_createLiverpoolDataclasses;
- (void)_ensureAccountTypeWithIdentifier:(id)a3 supportsDataclasses:(id)a4 syncsDataclasses:(id)a5;
- (void)_ensureMajorDataclassesExist;
- (void)_ensurePresenceOfNewsDataclass;
- (void)_ensureProperAccountTypeDataclasses;
- (void)_limitFlickrToOneAccount;
- (void)_limitLinkedInToOneAccount;
- (void)_limitVimeoToOneAccount;
- (void)_makeTencentWeiboSingleton;
- (void)_makeTudouYoukuSingletons;
- (void)_removeAIMAccounts;
- (void)_removeBTMMType;
- (void)_removeFacebookAppVersionAccessKey;
- (void)_removeFacebookPermissionGroupAccessKey;
- (void)_removeLiverpoolTypes;
- (void)_removeMessagesFromAOLSupportedDataclasses;
- (void)_removeMessagesFromGoogleSupportedDataclasses;
- (void)_removeMessengerFromYahooSupportedDataclasses;
- (void)_removeRedundantAccountTypes;
- (void)_removeRedundantDataclasses;
- (void)_setCloudKitAllowsMultipleAccounts;
- (void)_setCloudKitCredentialType;
- (void)_setOwningBundleIDForNativeAccountTypes;
- (void)_setSupportedDataclassesForAOLAccountType;
- (void)_setYahooAccountsProvisionedDataclassesToSupportedOnes;
- (void)_supportiCloudKeychainSyncDataclass;
- (void)_supportiCloudNewsDataclass;
- (void)_switchAolAccountsToOAuth;
- (void)_switchGoogleToOAuthAuthentication;
- (void)_switchHotmailToOAuthAuthentication;
- (void)_switchYahooToOAuthAuthentication;
- (void)_switchYahooToPasswordAuthentication;
- (void)_updateFlickrCredentialTypeToOAuth;
- (void)_updateIdentityServicesAccountDescription;
- (void)_updateIdentityServicesAccountTypeToSupportAuthenticationAndMultipleAccounts;
- (void)_updateMacOSServerAccountDescription;
- (void)_updateOSXServerAccountDescription;
- (void)_updateTencentWeiboCredentialTypeToOAuth2;
- (void)_updateVimeoCredentialTypeToOAuth;
- (void)_updateWeiboAccountTypeIfNecessary;
- (void)_upgradeLinkedInAccountType;
@end

@implementation ACDDatabaseInitializer

- (ACDDatabaseInitializer)init
{
  [(ACDDatabaseInitializer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDDatabaseInitializer)initWithDatabaseConnection:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(ACDDatabaseInitializer *)a2 initWithDatabaseConnection:?];
  }

  v10.receiver = self;
  v10.super_class = ACDDatabaseInitializer;
  v7 = [(ACDDatabaseInitializer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_databaseConnection, a3);
  }

  return v8;
}

- (BOOL)updateDefaultContentIfNecessary:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v5 = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ACDDatabaseInitializer_updateDefaultContentIfNecessary___block_invoke;
  v8[3] = &unk_27848BFA0;
  v8[4] = self;
  v8[5] = &v15;
  v8[6] = &v9;
  [v5 performBlockAndWait:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __58__ACDDatabaseInitializer_updateDefaultContentIfNecessary___block_invoke(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 4);
  v3 = [*(a1[4] + 8) version];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = -1;
  }

  v6 = _ACDLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v8 = @"not migrating";
    *buf = 138412802;
    v27 = v7;
    v29 = &unk_28353F108;
    v28 = 2112;
    if (v5 < 107)
    {
      v8 = @"migrating";
    }

    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_221D2F000, v6, OS_LOG_TYPE_DEFAULT, "Opened database at version %@, current config version %@, %@", buf, 0x20u);
  }

  if (v5 >= 108)
  {
    v9 = _ACDLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __58__ACDDatabaseInitializer_updateDefaultContentIfNecessary___block_invoke_cold_1();
    }

    goto LABEL_13;
  }

  if (v5 != 107)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      [*v2 _addTwitterAccountType];
    }

    else
    {
      if (v5 == 1)
      {
LABEL_116:
        [*v2 _addFacebookAccountType];
        [*v2 _addCalDAVAccountType];
        [*v2 _addCardDAVAccountType];
        [*v2 _addDataclassWithName:*MEMORY[0x277CB90F0]];
        [*v2 _addDataclassWithName:*MEMORY[0x277CB9108]];
        goto LABEL_117;
      }

      if (v5)
      {
        if (v5 > 2)
        {
          if (v5 != 3)
          {
            if (v5 > 4)
            {
              if (v5 != 5)
              {
                if (v5 > 6)
                {
                  if (v5 != 7)
                  {
                    if (v5 > 8)
                    {
                      if (v5 != 9)
                      {
                        if (v5 > 0xA)
                        {
                          if (v5 != 11)
                          {
                            if (v5 > 0xC)
                            {
                              if (v5 != 13)
                              {
                                if (v5 > 0xE)
                                {
                                  if (v5 != 15)
                                  {
                                    if (v5 > 0x10)
                                    {
                                      if (v5 != 17)
                                      {
                                        if (v5 > 0x12)
                                        {
                                          if (v5 != 19)
                                          {
                                            if (v5 > 0x14)
                                            {
                                              if (v5 != 21)
                                              {
                                                if (v5 > 0x16)
                                                {
                                                  if (v5 != 23)
                                                  {
                                                    if (v5 > 0x18)
                                                    {
                                                      if (v5 > 0x1A)
                                                      {
                                                        if (v5 != 27)
                                                        {
                                                          if (v5 > 0x1C)
                                                          {
                                                            if (v5 != 29)
                                                            {
                                                              if (v5 > 0x1E)
                                                              {
                                                                if (v5 > 0x20)
                                                                {
                                                                  if (v5 != 33)
                                                                  {
                                                                    if (v5 > 0x22)
                                                                    {
                                                                      if (v5 != 35)
                                                                      {
                                                                        if (v5 > 0x24)
                                                                        {
                                                                          if (v5 != 37)
                                                                          {
                                                                            if (v5 > 0x26)
                                                                            {
                                                                              if (v5 > 0x29)
                                                                              {
                                                                                if (v5 != 42)
                                                                                {
                                                                                  if (v5 > 0x2C)
                                                                                  {
                                                                                    if (v5 != 45)
                                                                                    {
                                                                                      if (v5 > 0x2E)
                                                                                      {
                                                                                        if (v5 != 47)
                                                                                        {
                                                                                          if (v5 > 0x30)
                                                                                          {
                                                                                            if (v5 != 49)
                                                                                            {
                                                                                              if (v5 > 0x33)
                                                                                              {
                                                                                                if (v5 != 52)
                                                                                                {
                                                                                                  if (v5 > 0x35)
                                                                                                  {
                                                                                                    if (v5 > 0x37)
                                                                                                    {
                                                                                                      if (v5 != 56)
                                                                                                      {
                                                                                                        if (v5 > 0x39)
                                                                                                        {
                                                                                                          if (v5 != 58)
                                                                                                          {
                                                                                                            if (v5 > 0x3B)
                                                                                                            {
                                                                                                              if (v5 != 60)
                                                                                                              {
                                                                                                                if (v5 > 0x3D)
                                                                                                                {
                                                                                                                  if (v5 != 62)
                                                                                                                  {
                                                                                                                    if (v5 > 0x3F)
                                                                                                                    {
                                                                                                                      if (v5 != 64)
                                                                                                                      {
                                                                                                                        if (v5 > 0x41)
                                                                                                                        {
                                                                                                                          if (v5 != 66)
                                                                                                                          {
                                                                                                                            if (v5 > 0x43)
                                                                                                                            {
                                                                                                                              if (v5 != 68)
                                                                                                                              {
                                                                                                                                if (v5 > 0x45)
                                                                                                                                {
                                                                                                                                  if (v5 != 70)
                                                                                                                                  {
                                                                                                                                    if (v5 > 0x47)
                                                                                                                                    {
                                                                                                                                      if (v5 != 72)
                                                                                                                                      {
                                                                                                                                        if (v5 > 0x49)
                                                                                                                                        {
                                                                                                                                          if (v5 != 74)
                                                                                                                                          {
                                                                                                                                            if (v5 > 0x4B)
                                                                                                                                            {
                                                                                                                                              if (v5 != 76)
                                                                                                                                              {
                                                                                                                                                if (v5 > 0x4D)
                                                                                                                                                {
                                                                                                                                                  if (v5 != 78)
                                                                                                                                                  {
                                                                                                                                                    if (v5 > 0x4F)
                                                                                                                                                    {
                                                                                                                                                      if (v5 != 80)
                                                                                                                                                      {
                                                                                                                                                        if (v5 > 0x51)
                                                                                                                                                        {
                                                                                                                                                          if (v5 != 82)
                                                                                                                                                          {
                                                                                                                                                            if (v5 > 0x53)
                                                                                                                                                            {
                                                                                                                                                              if (v5 != 84)
                                                                                                                                                              {
                                                                                                                                                                if (v5 > 0x55)
                                                                                                                                                                {
                                                                                                                                                                  if (v5 != 86)
                                                                                                                                                                  {
                                                                                                                                                                    if (v5 > 0x57)
                                                                                                                                                                    {
                                                                                                                                                                      if (v5 != 88)
                                                                                                                                                                      {
                                                                                                                                                                        if (v5 > 0x59)
                                                                                                                                                                        {
                                                                                                                                                                          if (v5 != 90)
                                                                                                                                                                          {
                                                                                                                                                                            if (v5 > 0x5B)
                                                                                                                                                                            {
                                                                                                                                                                              if (v5 != 92)
                                                                                                                                                                              {
                                                                                                                                                                                if (v5 > 0x5E)
                                                                                                                                                                                {
                                                                                                                                                                                  if (v5 != 95)
                                                                                                                                                                                  {
                                                                                                                                                                                    if (v5 > 0x60)
                                                                                                                                                                                    {
                                                                                                                                                                                      if (v5 != 97)
                                                                                                                                                                                      {
                                                                                                                                                                                        if (v5 > 0x62)
                                                                                                                                                                                        {
                                                                                                                                                                                          if (v5 != 99)
                                                                                                                                                                                          {
                                                                                                                                                                                            if (v5 > 0x64)
                                                                                                                                                                                            {
                                                                                                                                                                                              if (v5 != 101)
                                                                                                                                                                                              {
                                                                                                                                                                                                if (v5 > 0x66)
                                                                                                                                                                                                {
                                                                                                                                                                                                  if (v5 != 103)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    if (v5 > 0x68)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      if (v5 == 106)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_213;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      goto LABEL_212;
                                                                                                                                                                                                    }

LABEL_211:
                                                                                                                                                                                                    [*v2 _addDCAAccountType];
LABEL_212:
                                                                                                                                                                                                    [*v2 _addDCAAccountType];
                                                                                                                                                                                                    [*v2 _addDataclassNumberingToExistingDataclasses];
LABEL_213:
                                                                                                                                                                                                    [*v2 _addDataclassWithName:*MEMORY[0x277CB8980]];
                                                                                                                                                                                                    v10 = 1;
                                                                                                                                                                                                    goto LABEL_214;
                                                                                                                                                                                                  }

LABEL_210:
                                                                                                                                                                                                  [*v2 _addDataclassWithName:*MEMORY[0x277CB89B0]];
                                                                                                                                                                                                  goto LABEL_211;
                                                                                                                                                                                                }

LABEL_209:
                                                                                                                                                                                                [*v2 _addDataclassWithName:*MEMORY[0x277CB8A00]];
                                                                                                                                                                                                goto LABEL_210;
                                                                                                                                                                                              }

LABEL_208:
                                                                                                                                                                                              [*v2 _addDataclassWithName:*MEMORY[0x277CB89E0]];
                                                                                                                                                                                              goto LABEL_209;
                                                                                                                                                                                            }

LABEL_207:
                                                                                                                                                                                            [*v2 _removeRedundantAccountTypes];
                                                                                                                                                                                            goto LABEL_208;
                                                                                                                                                                                          }

LABEL_206:
                                                                                                                                                                                          [*v2 _addDataclassWithName:*MEMORY[0x277CB8998]];
                                                                                                                                                                                          goto LABEL_207;
                                                                                                                                                                                        }

LABEL_205:
                                                                                                                                                                                        [*v2 _addDataclassWithName:*MEMORY[0x277CB8A28]];
                                                                                                                                                                                        goto LABEL_206;
                                                                                                                                                                                      }

LABEL_204:
                                                                                                                                                                                      [*v2 _addPublishedCalendarAccountType];
                                                                                                                                                                                      goto LABEL_205;
                                                                                                                                                                                    }

LABEL_203:
                                                                                                                                                                                    [*v2 _removeRedundantDataclasses];
                                                                                                                                                                                    goto LABEL_204;
                                                                                                                                                                                  }

LABEL_202:
                                                                                                                                                                                  [*v2 _addDataclassWithName:*MEMORY[0x277CB8990]];
                                                                                                                                                                                  goto LABEL_203;
                                                                                                                                                                                }

LABEL_201:
                                                                                                                                                                                [*v2 _addWarmingUpAttributeToAccounts];
                                                                                                                                                                                goto LABEL_202;
                                                                                                                                                                              }

LABEL_200:
                                                                                                                                                                              [*v2 _addRemoteManagementAccountType];
                                                                                                                                                                              goto LABEL_201;
                                                                                                                                                                            }

LABEL_199:
                                                                                                                                                                            [*v2 _removeRedundantDataclasses];
                                                                                                                                                                            goto LABEL_200;
                                                                                                                                                                          }

LABEL_198:
                                                                                                                                                                          [*v2 _addFindMyiPhoneAccountType];
                                                                                                                                                                          goto LABEL_199;
                                                                                                                                                                        }

LABEL_197:
                                                                                                                                                                        [*v2 _addDataclassWithName:*MEMORY[0x277CB8A10]];
                                                                                                                                                                        goto LABEL_198;
                                                                                                                                                                      }

LABEL_196:
                                                                                                                                                                      [*v2 _aolSupportsAuthentication];
                                                                                                                                                                      goto LABEL_197;
                                                                                                                                                                    }

LABEL_195:
                                                                                                                                                                    [*v2 _switchAolAccountsToOAuth];
                                                                                                                                                                    goto LABEL_196;
                                                                                                                                                                  }

LABEL_194:
                                                                                                                                                                  [*v2 _addDataclassWithName:*MEMORY[0x277CB91D0]];
                                                                                                                                                                  goto LABEL_195;
                                                                                                                                                                }

LABEL_193:
                                                                                                                                                                [*v2 _removeBTMMType];
                                                                                                                                                                goto LABEL_194;
                                                                                                                                                              }

LABEL_192:
                                                                                                                                                              [*v2 _changeSocialAccountTypeObsoleteAttributes];
                                                                                                                                                              goto LABEL_193;
                                                                                                                                                            }

LABEL_191:
                                                                                                                                                            [*v2 _changeFacebookAndLinkedInAccountsToLegacyAccountTypes];
                                                                                                                                                            goto LABEL_192;
                                                                                                                                                          }

LABEL_190:
                                                                                                                                                          [*v2 _addLinkedInLegacyAccountType];
                                                                                                                                                          goto LABEL_191;
                                                                                                                                                        }

LABEL_189:
                                                                                                                                                        [*v2 _addiTunesStoreSandboxAccountType];
                                                                                                                                                        goto LABEL_190;
                                                                                                                                                      }

LABEL_188:
                                                                                                                                                      [*v2 _addDataclassWithName:*MEMORY[0x277CB9188]];
                                                                                                                                                      goto LABEL_189;
                                                                                                                                                    }

LABEL_187:
                                                                                                                                                    [*v2 _removeMessagesFromAOLSupportedDataclasses];
                                                                                                                                                    goto LABEL_188;
                                                                                                                                                  }

LABEL_186:
                                                                                                                                                  [*v2 _addObsoleteAttributeToAccountTypes];
                                                                                                                                                  goto LABEL_187;
                                                                                                                                                }

LABEL_185:
                                                                                                                                                [*v2 _addFacebookAndDAVLegacyAccountTypes];
                                                                                                                                                [*v2 _changeFacebookAccountToLegacyAccountType];
                                                                                                                                                goto LABEL_186;
                                                                                                                                              }

LABEL_184:
                                                                                                                                              [*v2 _removeAIMAccounts];
                                                                                                                                              goto LABEL_185;
                                                                                                                                            }

LABEL_183:
                                                                                                                                            [*v2 _addDataclassWithName:*MEMORY[0x277CB91C0]];
                                                                                                                                            goto LABEL_184;
                                                                                                                                          }

LABEL_182:
                                                                                                                                          [*v2 _removeMessagesFromGoogleSupportedDataclasses];
                                                                                                                                          goto LABEL_183;
                                                                                                                                        }

LABEL_181:
                                                                                                                                        [*v2 _addDataclassWithName:*MEMORY[0x277CB9130]];
                                                                                                                                        goto LABEL_182;
                                                                                                                                      }

LABEL_180:
                                                                                                                                      [*v2 _addDataclassWithName:*MEMORY[0x277CB9138]];
                                                                                                                                      [*v2 _addDataclassWithName:*MEMORY[0x277CB9120]];
                                                                                                                                      goto LABEL_181;
                                                                                                                                    }

LABEL_179:
                                                                                                                                    [*v2 _setCloudKitAllowsMultipleAccounts];
                                                                                                                                    goto LABEL_180;
                                                                                                                                  }

LABEL_178:
                                                                                                                                  [*v2 _setYahooAccountsProvisionedDataclassesToSupportedOnes];
                                                                                                                                  goto LABEL_179;
                                                                                                                                }

LABEL_177:
                                                                                                                                [*v2 _removeMessengerFromYahooSupportedDataclasses];
                                                                                                                                goto LABEL_178;
                                                                                                                              }

LABEL_176:
                                                                                                                              [*v2 _updateMacOSServerAccountDescription];
                                                                                                                              goto LABEL_177;
                                                                                                                            }

LABEL_175:
                                                                                                                            [*v2 _addNotesDataclassToAASupportedDataclasses];
                                                                                                                            goto LABEL_176;
                                                                                                                          }

LABEL_174:
                                                                                                                          [*v2 _setSupportedDataclassesForAOLAccountType];
                                                                                                                          goto LABEL_175;
                                                                                                                        }

LABEL_173:
                                                                                                                        [*v2 _switchHotmailToOAuthAuthentication];
                                                                                                                        goto LABEL_174;
                                                                                                                      }

LABEL_172:
                                                                                                                      [*v2 _addSingleSignOnAccountType];
                                                                                                                      [*v2 _addDataclassWithName:*MEMORY[0x277CB90F8]];
                                                                                                                      goto LABEL_173;
                                                                                                                    }

LABEL_171:
                                                                                                                    [*v2 _addMSOAccountType];
                                                                                                                    goto LABEL_172;
                                                                                                                  }

LABEL_170:
                                                                                                                  [*v2 _supportiCloudKeychainSyncDataclass];
                                                                                                                  goto LABEL_171;
                                                                                                                }

LABEL_169:
                                                                                                                [*v2 _ensurePresenceOfNewsDataclass];
                                                                                                                goto LABEL_170;
                                                                                                              }

LABEL_168:
                                                                                                              [*v2 _supportiCloudNewsDataclass];
                                                                                                              goto LABEL_169;
                                                                                                            }

LABEL_167:
                                                                                                            [*v2 _allowMultipleAppleIDAuthenticationAccounts];
                                                                                                            [*v2 _makeTudouYoukuSingletons];
                                                                                                            goto LABEL_168;
                                                                                                          }

LABEL_166:
                                                                                                          [*v2 _addDataclassWithName:*MEMORY[0x277CB91A8]];
                                                                                                          [*v2 _addDataclassWithName:*MEMORY[0x277CB91C8]];
                                                                                                          goto LABEL_167;
                                                                                                        }

LABEL_165:
                                                                                                        [*v2 _configureSMTPAccountType];
                                                                                                        goto LABEL_166;
                                                                                                      }

LABEL_164:
                                                                                                      [*v2 _updateOSXServerAccountDescription];
                                                                                                      goto LABEL_165;
                                                                                                    }

LABEL_163:
                                                                                                    [*v2 _addOnMyDeviceAccountType];
                                                                                                    [*v2 _switchYahooToOAuthAuthentication];
                                                                                                    goto LABEL_164;
                                                                                                  }

LABEL_162:
                                                                                                  [*v2 _updateAOLAndAddNotificationsDataclass];
                                                                                                  goto LABEL_163;
                                                                                                }

LABEL_161:
                                                                                                [*v2 _addIDMSAccountType];
                                                                                                goto LABEL_162;
                                                                                              }

LABEL_160:
                                                                                              [*v2 _addDocumentsAndVPNDataclass];
                                                                                              goto LABEL_161;
                                                                                            }

LABEL_159:
                                                                                            [*v2 _switchGoogleToOAuthAuthentication];
                                                                                            goto LABEL_160;
                                                                                          }

LABEL_158:
                                                                                          [*v2 _addAndConfigureAllOSXAccountTypes];
                                                                                          goto LABEL_159;
                                                                                        }

LABEL_157:
                                                                                        [*v2 _removeLiverpoolTypes];
                                                                                        [*v2 _addCloudKitDataclasses];
                                                                                        [*v2 _setCloudKitCredentialType];
                                                                                        goto LABEL_158;
                                                                                      }

LABEL_156:
                                                                                      [*v2 _addAppleIDAuthenticationAccountType];
                                                                                      goto LABEL_157;
                                                                                    }

LABEL_155:
                                                                                    [*v2 _addCloudKitAccountType];
                                                                                    [*v2 _addAccessKeysAttributeToCloudKitAccountType];
                                                                                    goto LABEL_156;
                                                                                  }

LABEL_154:
                                                                                  [*v2 _createLiverpoolDataclasses];
                                                                                  goto LABEL_155;
                                                                                }

LABEL_153:
                                                                                [*v2 _setOwningBundleIDForNativeAccountTypes];
                                                                                goto LABEL_154;
                                                                              }

LABEL_152:
                                                                              [*v2 _addFMFAccountType];
                                                                              goto LABEL_153;
                                                                            }

LABEL_151:
                                                                            [*v2 _addHolidayCalendarAccountType];
                                                                            goto LABEL_152;
                                                                          }

LABEL_150:
                                                                          [*v2 _makeTencentWeiboSingleton];
                                                                          goto LABEL_151;
                                                                        }

LABEL_149:
                                                                        [*v2 _updateIdentityServicesAccountDescription];
                                                                        goto LABEL_150;
                                                                      }

LABEL_148:
                                                                      [*v2 _updateIdentityServicesAccountTypeToSupportAuthenticationAndMultipleAccounts];
                                                                      goto LABEL_149;
                                                                    }

LABEL_147:
                                                                    [*v2 _addFindMyiPhoneAccountType];
                                                                    goto LABEL_148;
                                                                  }

LABEL_146:
                                                                  [*v2 _addTencentWeiboAccessKeys];
                                                                  [*v2 _addAccessKeysAttributeToTencentWeiboAccountType];
                                                                  goto LABEL_147;
                                                                }

LABEL_145:
                                                                [*v2 _updateTencentWeiboCredentialTypeToOAuth2];
                                                                goto LABEL_146;
                                                              }

LABEL_144:
                                                              [*v2 _addDataclassWithName:*MEMORY[0x277CB9148]];
                                                              [*v2 _addDataclassWithName:*MEMORY[0x277CB9118]];
                                                              goto LABEL_145;
                                                            }

LABEL_143:
                                                            [*v2 _addIMAPMailAccountType];
                                                            goto LABEL_144;
                                                          }

LABEL_142:
                                                          [*v2 _addIMAPAccountType];
                                                          [*v2 _addPOPAccountType];
                                                          goto LABEL_143;
                                                        }

LABEL_141:
                                                        [*v2 _addPasswordCredentialTypeToSMTPAccountType];
                                                        [*v2 _addPasswordCredentialTypeToGmailAccountType];
                                                        [*v2 _addTokenCredentialTypeToYahooAccountType];
                                                        goto LABEL_142;
                                                      }

LABEL_140:
                                                      [*v2 _ensureMajorDataclassesExist];
                                                      [*v2 _addSubscribedCalendarAccountType];
                                                      [*v2 _addBookmarkDAVAccountType];
                                                      [*v2 _addExchangeAccountType];
                                                      [*v2 _addHotmailAccountType];
                                                      [*v2 _addIMAPNotesAccountType];
                                                      [*v2 _addLDAPAccountType];
                                                      [*v2 _ensureProperAccountTypeDataclasses];
                                                      goto LABEL_141;
                                                    }

LABEL_139:
                                                    [*v2 _limitLinkedInToOneAccount];
                                                    goto LABEL_140;
                                                  }

LABEL_138:
                                                  [*v2 _addIdentityServicesAccountType];
                                                  goto LABEL_139;
                                                }

LABEL_137:
                                                [*v2 _updateVimeoCredentialTypeToOAuth];
                                                goto LABEL_138;
                                              }

LABEL_136:
                                              [*v2 _updateFlickrCredentialTypeToOAuth];
                                              goto LABEL_137;
                                            }

LABEL_135:
                                            [*v2 _limitFlickrToOneAccount];
                                            [*v2 _limitVimeoToOneAccount];
                                            goto LABEL_136;
                                          }

LABEL_134:
                                          [*v2 _addLinkedInAccessKeys];
                                          [*v2 _addAccessKeysAttributeToLinkedInAccountType];
                                          goto LABEL_135;
                                        }

LABEL_133:
                                        [*v2 _addiTunesStoreAccountType];
                                        goto LABEL_134;
                                      }

LABEL_132:
                                      [*v2 _addFaceTimeAccountType];
                                      [*v2 _addMadridAccountType];
                                      [*v2 _addGameCenterAccountType];
                                      goto LABEL_133;
                                    }

LABEL_131:
                                    [*v2 _addRemindersDataclassToCalDAVAccountType];
                                    goto LABEL_132;
                                  }

LABEL_130:
                                  [*v2 _addSMTPAccountType];
                                  [*v2 _addGmailAccountType];
                                  [*v2 _addYahooAccountType];
                                  goto LABEL_131;
                                }

LABEL_129:
                                [*v2 _addTencentWeiboAccountType];
                                [*v2 _upgradeLinkedInAccountType];
                                goto LABEL_130;
                              }

LABEL_128:
                              [*v2 _addLiverpoolAccountType];
                              [*v2 _addLiverpoolAccessKeys];
                              [*v2 _addAccessKeysAttributeToLiverpoolAccountType];
                              goto LABEL_129;
                            }

LABEL_127:
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB90D0]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB9150]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB9190]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB9178]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB9110]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB9128]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB9158]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB91B0]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB90C8]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB91D8]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB9140]];
                            [*v2 _addDataclassWithName:*MEMORY[0x277CB91B8]];
                            [*v2 _addAppleAccountType];
                            goto LABEL_128;
                          }

LABEL_126:
                          [*v2 _removeFacebookPermissionGroupAccessKey];
                          [*v2 _removeFacebookAppVersionAccessKey];
                          [*v2 _addFacebookAudienceAccessKey];
                          [*v2 _addFacebookAudienceAccessKeyToFacebookAccountType];
                          goto LABEL_127;
                        }

LABEL_125:
                        [*v2 _addFacebookAccessKeys];
                        [*v2 _addAccessKeysAttributeToFacebookAccountType];
                        goto LABEL_126;
                      }

LABEL_124:
                      [*v2 _addYelpAccountType];
                      goto LABEL_125;
                    }

LABEL_123:
                    [*v2 _addSupportsMultipleAccountsAttributeToAccountTypes];
                    goto LABEL_124;
                  }

LABEL_122:
                  [*v2 _addSyncableDataclassesToCardAndCalDAV];
                  goto LABEL_123;
                }

LABEL_121:
                [*v2 _addMissingAccountTypes];
                goto LABEL_122;
              }

LABEL_120:
              [*v2 _addSupportsAuthenticationAttributeToAccountTypes];
              [*v2 _addSupportsAuthenticationAttributeToAccounts];
              goto LABEL_121;
            }

LABEL_119:
            [*v2 _updateWeiboAccountTypeIfNecessary];
            goto LABEL_120;
          }

LABEL_118:
          [*v2 _addTudouAccountType];
          [*v2 _addYoukuAccountType];
          goto LABEL_119;
        }

LABEL_117:
        [*v2 _addContactsCalendarsDataclassesToFB];
        goto LABEL_118;
      }
    }

    [*v2 _addWeiboAccountType];
    [*v2 _addAppleIDAccountType];
    [*v2 _addFlickrAccountType];
    [*v2 _addVimeoAccountType];
    [*v2 _addLinkedInAccountType];
    goto LABEL_116;
  }

LABEL_13:
  v10 = 0;
LABEL_214:
  v11 = [*v2 _ensureAllDataclassesExist];
  v12 = [*v2 _ensureAllInternalAccountTypesExist:v11];
  if ((v11 & 1) != 0 || (v10 & 1) != 0 || v12)
  {
    v13 = (a1 + 6);
    v14 = *(a1[4] + 8);
    v15 = *(a1[6] + 8);
    obj = *(v15 + 40);
    v16 = [v14 saveWithError:&obj];
    objc_storeStrong((v15 + 40), obj);
    *(*(a1[5] + 8) + 24) = v16;
    if (*(*(a1[5] + 8) + 24))
    {
      [*(a1[4] + 8) setVersion:&unk_28353F108];
      v17 = *(a1[4] + 8);
      v18 = *(a1[6] + 8);
      v24 = *(v18 + 40);
      v19 = [v17 saveWithError:&v24];
      objc_storeStrong((v18 + 40), v24);
      *(*(a1[5] + 8) + 24) = v19;
      LOBYTE(v18) = *(*(a1[5] + 8) + 24);
      v20 = _ACDLogSystem();
      v21 = v20;
      if (v18)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
          *buf = 138412546;
          v27 = v22;
          v28 = 2112;
          v29 = &unk_28353F108;
          _os_log_impl(&dword_221D2F000, v21, OS_LOG_TYPE_DEFAULT, "Updated database from version %@ to %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __58__ACDDatabaseInitializer_updateDefaultContentIfNecessary___block_invoke_cold_2(v13);
      }
    }

    else
    {
      v21 = _ACDLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __58__ACDDatabaseInitializer_updateDefaultContentIfNecessary___block_invoke_cold_3(v5, v13, v21);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_accounts
{
  accounts = self->_accounts;
  if (!accounts)
  {
    v4 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"Account"];
    v5 = self->_accounts;
    self->_accounts = v4;

    accounts = self->_accounts;
  }

  return accounts;
}

- (id)_accountTypes
{
  accountTypes = self->_accountTypes;
  if (!accountTypes)
  {
    v4 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"AccountType"];
    v5 = self->_accountTypes;
    self->_accountTypes = v4;

    accountTypes = self->_accountTypes;
  }

  return accountTypes;
}

- (id)_dataclasses
{
  dataclasses = self->_dataclasses;
  if (!dataclasses)
  {
    v4 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"Dataclass"];
    v5 = self->_dataclasses;
    self->_dataclasses = v4;

    dataclasses = self->_dataclasses;
  }

  return dataclasses;
}

- (id)_accessKeys
{
  accessKeys = self->_accessKeys;
  if (!accessKeys)
  {
    v4 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"AccessOptionsKey"];
    v5 = self->_accessKeys;
    self->_accessKeys = v4;

    accessKeys = self->_accessKeys;
  }

  return accessKeys;
}

- (id)_dataclassWithName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ACDDatabaseInitializer *)self _dataclasses];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_accountTypeWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ACDDatabaseInitializer *)self _accountTypes];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_accessKeyWithName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ACDDatabaseInitializer *)self _accessKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_addCredentialType:(id)a3 toAccountType:(id)a4 supportsAuthentication:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:v9];
    v11 = v10;
    if (v10)
    {
      [v10 setCredentialType:v8];
      if (v5)
      {
        v12 = MEMORY[0x277CBEC38];
      }

      else
      {
        v12 = MEMORY[0x277CBEC28];
      }

      [v11 setSupportsAuthentication:v12];
    }

    else
    {
      v13 = _ACDLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ACDDatabaseInitializer _addCredentialType:toAccountType:supportsAuthentication:];
      }
    }
  }
}

- (void)_addDataclassWithName:(id)a3
{
  v4 = a3;
  v5 = [(ACDDatabaseInitializer *)self _dataclassWithName:v4];

  if (v5)
  {
    v6 = _ACDLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseInitializer _addDataclassWithName:];
    }
  }

  else
  {
    v6 = [(ACDDatabaseConnection *)self->_databaseConnection insertNewObjectForEntityForName:@"Dataclass"];
    [v6 setName:v4];
    v7 = ACDataclassForACAccountDataclass();
    if (v7 == 0xFFFF)
    {
      v9 = _ACLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ACDDatabaseInitializer _addDataclassWithName:];
      }

      [v6 setEnumValue:&unk_28353F120];
    }

    else
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
      [v6 setEnumValue:v8];
    }

    v10 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"Dataclass"];
    v11 = [v10 mutableCopy];
    dataclasses = self->_dataclasses;
    self->_dataclasses = v11;
  }
}

- (void)_addAccessKeyWithName:(id)a3
{
  v4 = a3;
  v5 = [(ACDDatabaseInitializer *)self _accessKeyWithName:v4];

  if (v5)
  {
    v6 = _ACDLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseInitializer _addAccessKeyWithName:];
    }
  }

  else
  {
    v7 = [(ACDDatabaseConnection *)self->_databaseConnection insertNewObjectForEntityForName:@"AccessOptionsKey"];
    [v7 setName:v4];
    v8 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"AccessOptionsKey"];
    v9 = [v8 mutableCopy];
    accessKeys = self->_accessKeys;
    self->_accessKeys = v9;
  }
}

- (void)_addAppleIDAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8BB8] displayName:@"AppleID" visibility:0 supportedDataclasses:v5 credentialType:@"appleid-tokens" supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_addFaceTimeAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C08] displayName:@"FaceTime" visibility:0 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8DA8] supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_addMadridAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8CB8] displayName:@"Messages" visibility:0 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8DA8] supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_addGameCenterAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C38] displayName:@"Game Center" visibility:0 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8DA8] supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_addiTunesStoreAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8D58] displayName:@"iTunes Store" visibility:0 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_addFacebookAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
  v5 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v8 = [v3 setWithObjects:{v4, v5, 0}];

  LOBYTE(v7) = 0;
  v6 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C18] displayName:@"Facebook" visibility:1 supportedDataclasses:v8 credentialType:*MEMORY[0x277CB8D98] supportsAuthentication:1 supportsMultipleAccounts:v7];
}

- (void)_updateWeiboAccountTypeIfNecessary
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:@"com.apple.weibo"];
  if (v2)
  {
    v3 = v2;
    [v2 setIdentifier:*MEMORY[0x277CB8D00]];
    [v3 setAccountTypeDescription:@"Sina Weibo"];
    v2 = v3;
  }
}

- (void)_addCalDAVAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v7 = [v3 setWithObjects:{v4, 0}];

  LOBYTE(v6) = 1;
  v5 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8BC8] displayName:@"CalDAV" visibility:0 supportedDataclasses:v7 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v6];
}

- (void)_addCardDAVAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
  v7 = [v3 setWithObjects:{v4, 0}];

  LOBYTE(v6) = 1;
  v5 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8BD8] displayName:@"CardDAV" visibility:0 supportedDataclasses:v7 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v6];
}

- (void)_addFlickrAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C30] displayName:@"Flickr" visibility:1 supportedDataclasses:v5 credentialType:0 supportsAuthentication:0 supportsMultipleAccounts:v4];
}

- (void)_addVimeoAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8D30] displayName:@"Vimeo" visibility:1 supportedDataclasses:v5 credentialType:0 supportsAuthentication:0 supportsMultipleAccounts:v4];
}

- (void)_addLinkedInAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:@"com.apple.linkedin" displayName:@"LinkedIn" visibility:1 supportedDataclasses:v5 credentialType:0 supportsAuthentication:0 supportsMultipleAccounts:v4];
}

- (void)_addTudouAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8D20] displayName:@"Tudou" visibility:1 supportedDataclasses:v5 credentialType:0 supportsAuthentication:0 supportsMultipleAccounts:v4];
}

- (void)_addYoukuAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8D50] displayName:@"Youku" visibility:1 supportedDataclasses:v5 credentialType:0 supportsAuthentication:0 supportsMultipleAccounts:v4];
}

- (void)_addYelpAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 0;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8D48] displayName:@"Yelp" visibility:0 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8D90] supportsAuthentication:0 supportsMultipleAccounts:v4];
}

- (void)_addAppleAccountType
{
  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v14 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
  v18 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v17 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9150]];
  v12 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9190]];
  v13 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90D0]];
  v3 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9128]];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9158]];
  v5 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB91B0]];
  v6 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90C8]];
  v7 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB91D8]];
  v8 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9140]];
  v9 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB91B8]];
  v16 = [v15 initWithObjects:{v14, v18, v17, v12, v13, v3, v4, v5, v6, v7, v8, v9, 0}];

  LOBYTE(v11) = 1;
  v10 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8BA0] displayName:@"iCloud" visibility:1 supportedDataclasses:v16 credentialType:*MEMORY[0x277CB8DA8] supportsAuthentication:1 supportsMultipleAccounts:v11];
}

- (void)_addLiverpoolAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 0;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:@"com.apple.account.Liverpool" displayName:@"Liverpool" visibility:1 supportedDataclasses:v5 credentialType:@"liverpool-tokens" supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_upgradeLinkedInAccountType
{
  v3 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:@"com.apple.linkedin"];
  [v3 setCredentialType:*MEMORY[0x277CB8D90]];
  v2 = MEMORY[0x277CBEC38];
  [v3 setSupportsAuthentication:MEMORY[0x277CBEC38]];
  [v3 setSupportsMultipleAccounts:v2];
}

- (void)_addContactsCalendarsDataclassesToFB
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
  v5 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v7 = [v3 setWithObjects:{v4, v5, 0}];

  v6 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C18]];
  [v6 setSupportedDataclasses:v7];
}

- (void)_addSupportsAuthenticationAttributeToAccountTypes
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [(ACDDatabaseInitializer *)self _accountTypes];
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    v6 = *MEMORY[0x277CB8BB8];
    v7 = *MEMORY[0x277CB8C18];
    v27 = *MEMORY[0x277CB8D28];
    v24 = *MEMORY[0x277CB8D00];
    v22 = *MEMORY[0x277CB8BC8];
    v19 = *MEMORY[0x277CB8BD8];
    v25 = v2;
    v26 = *MEMORY[0x277CB8C18];
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [v9 identifier];
        if ([v10 isEqual:v6])
        {
          goto LABEL_15;
        }

        v11 = v6;
        v12 = [v9 identifier];
        if ([v12 isEqual:v7])
        {
          goto LABEL_14;
        }

        v13 = [v9 identifier];
        if ([v13 isEqual:v27])
        {
          goto LABEL_13;
        }

        v14 = [v9 identifier];
        if ([v14 isEqual:v24])
        {
          goto LABEL_12;
        }

        v23 = [v9 identifier];
        if ([v23 isEqual:v22])
        {

LABEL_12:
          v2 = v25;
LABEL_13:

          v7 = v26;
LABEL_14:

          v6 = v11;
LABEL_15:

LABEL_16:
          v15 = 1;
          goto LABEL_17;
        }

        v20 = [v9 identifier];
        v21 = [v20 isEqual:v19];

        v2 = v25;
        v7 = v26;
        v6 = v11;
        if (v21)
        {
          goto LABEL_16;
        }

        v15 = 0;
LABEL_17:
        v16 = [MEMORY[0x277CCABB0] numberWithBool:v15];
        [v9 setSupportsAuthentication:v16];

        ++v8;
      }

      while (v4 != v8);
      v17 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v4 = v17;
    }

    while (v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_addSupportsAuthenticationAttributeToAccounts
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(ACDDatabaseInitializer *)self _accounts];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = *MEMORY[0x277CB8BC8];
    v7 = *MEMORY[0x277CB8BD8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 accountType];
        v11 = [v10 identifier];
        if (([v11 isEqual:v6] & 1) != 0 || objc_msgSend(v11, "isEqual:", v7))
        {
          v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
        }

        else
        {
          v12 = [v10 supportsAuthentication];
        }

        v13 = v12;
        [v9 setSupportsAuthentication:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_addMissingAccountTypes
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(ACDDatabaseInitializer *)self _accountTypes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) identifier];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if (([v3 containsObject:*MEMORY[0x277CB8D28]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addTwitterAccountType];
  }

  if (([v3 containsObject:*MEMORY[0x277CB8D00]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addWeiboAccountType];
  }

  if (([v3 containsObject:*MEMORY[0x277CB8BB8]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addAppleIDAccountType];
  }

  if (([v3 containsObject:*MEMORY[0x277CB8C30]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addFlickrAccountType];
  }

  if (([v3 containsObject:*MEMORY[0x277CB8D30]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addVimeoAccountType];
  }

  if (([v3 containsObject:@"com.apple.linkedin"] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addLinkedInAccountType];
  }

  if (([v3 containsObject:*MEMORY[0x277CB8C18]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addFacebookAccountType];
  }

  if (([v3 containsObject:*MEMORY[0x277CB8BC8]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addCalDAVAccountType];
  }

  if (([v3 containsObject:*MEMORY[0x277CB8BD8]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addCardDAVAccountType];
  }

  if (([v3 containsObject:*MEMORY[0x277CB8D20]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addTudouAccountType];
  }

  if (([v3 containsObject:*MEMORY[0x277CB8D50]] & 1) == 0)
  {
    [(ACDDatabaseInitializer *)self _addYoukuAccountType];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_addSyncableDataclassesToCardAndCalDAV
{
  v10 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BD8]];
  if (v10)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
    v5 = [v3 setWithObjects:{v4, 0}];

    [v10 setSyncableDataclasses:v5];
  }

  v6 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BC8]];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
    v9 = [v7 setWithObjects:{v8, 0}];

    [v6 setSyncableDataclasses:v9];
  }
}

- (void)_addSupportsMultipleAccountsAttributeToAccountTypes
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(ACDDatabaseInitializer *)self _accountTypes];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = *MEMORY[0x277CB8C18];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [v9 isEqual:v6];

        v11 = [MEMORY[0x277CCABB0] numberWithBool:v10 ^ 1u];
        [v8 setSupportsMultipleAccounts:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_addFacebookAccessKeys
{
  [(ACDDatabaseInitializer *)self _addAccessKeyWithName:*MEMORY[0x277CB8DD0]];
  v3 = *MEMORY[0x277CB8DE0];

  [(ACDDatabaseInitializer *)self _addAccessKeyWithName:v3];
}

- (void)_addAccessKeysAttributeToFacebookAccountType
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8DD0]];
  v9[0] = v3;
  v4 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8DE0]];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v6 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C18]];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  [v6 setAccessKeys:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addAccessKeysAttributeToLiverpoolAccountType
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8E10]];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v5 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:@"com.apple.account.Liverpool"];
  v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
  [v5 setAccessKeys:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_removeFacebookPermissionGroupAccessKey
{
  v3 = [(ACDDatabaseInitializer *)self _accessKeyWithName:@"ACFacebookPermissionGroupKey"];
  if (v3)
  {
    [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v3];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_removeFacebookAppVersionAccessKey
{
  v3 = [(ACDDatabaseInitializer *)self _accessKeyWithName:@"ACFacebookAppVersionKey"];
  if (v3)
  {
    [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v3];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_addFacebookAudienceAccessKeyToFacebookAccountType
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8DD0]];
  v4 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8DE0], v3];
  v10[1] = v4;
  v5 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8DD8]];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v7 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C18]];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
  [v7 setAccessKeys:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addGmailAccountType
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9150]];
  v5 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
  v6 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v7 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9178]];
  v10 = [v3 initWithObjects:{v4, v5, v6, v7, 0}];

  LOBYTE(v9) = 1;
  v8 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C40] displayName:@"Gmail" visibility:0 supportedDataclasses:v10 credentialType:0 supportsAuthentication:0 supportsMultipleAccounts:v9];
}

- (void)_addYahooAccountType
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9150]];
  v5 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
  v6 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9190]];
  v7 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v8 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9178]];
  v11 = [v3 initWithObjects:{v4, v5, v6, v7, v8, 0}];

  LOBYTE(v10) = 1;
  v9 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8D38] displayName:@"Yahoo" visibility:0 supportedDataclasses:v11 credentialType:0 supportsAuthentication:0 supportsMultipleAccounts:v10];
}

- (void)_addRemindersDataclassToCalDAVAccountType
{
  v3 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BC8]];
  if (v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v8 = v3;
    v5 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
    v6 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9190]];
    v7 = [v4 setWithObjects:{v5, v6, 0}];

    [v8 setSyncableDataclasses:v7];
    [v8 setSupportedDataclasses:v7];

    v3 = v8;
  }
}

- (void)_addLinkedInAccessKeys
{
  [(ACDDatabaseInitializer *)self _addAccessKeyWithName:@"ACLinkedInAppIdKey"];

  [(ACDDatabaseInitializer *)self _addAccessKeyWithName:@"ACLinkedInPermissionsKey"];
}

- (void)_addAccessKeysAttributeToLinkedInAccountType
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(ACDDatabaseInitializer *)self _accessKeyWithName:@"ACLinkedInAppIdKey"];
  v9[0] = v3;
  v4 = [(ACDDatabaseInitializer *)self _accessKeyWithName:@"ACLinkedInPermissionsKey"];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v6 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:@"com.apple.linkedin"];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  [v6 setAccessKeys:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_limitFlickrToOneAccount
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C30]];
  [v2 setSupportsMultipleAccounts:MEMORY[0x277CBEC28]];
}

- (void)_limitVimeoToOneAccount
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D30]];
  [v2 setSupportsMultipleAccounts:MEMORY[0x277CBEC28]];
}

- (void)_updateFlickrCredentialTypeToOAuth
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C30]];
  [v2 setSupportsAuthentication:MEMORY[0x277CBEC38]];
  [v2 setCredentialType:*MEMORY[0x277CB8D90]];
}

- (void)_updateVimeoCredentialTypeToOAuth
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D30]];
  [v2 setSupportsAuthentication:MEMORY[0x277CBEC38]];
  [v2 setCredentialType:*MEMORY[0x277CB8D90]];
}

- (void)_addSubscribedCalendarAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v7 = [v3 setWithObjects:{v4, 0}];

  LOBYTE(v6) = 1;
  v5 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8D10] displayName:@"SubscribedCalendar" visibility:0 supportedDataclasses:v7 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v6];
}

- (void)_addBookmarkDAVAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90D0]];
  v7 = [v3 setWithObjects:{v4, 0}];

  LOBYTE(v6) = 1;
  v5 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8BC0] displayName:@"BookmarkDAV" visibility:0 supportedDataclasses:v7 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v6];
}

- (void)_addExchangeAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9150]];
  v5 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
  v6 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v7 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9190]];
  v8 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9178]];
  v11 = [v3 setWithObjects:{v4, v5, v6, v7, v8, 0}];

  LOBYTE(v10) = 1;
  v9 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C00] displayName:@"Exchange" visibility:0 supportedDataclasses:v11 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v10];
}

- (void)_addIMAPNotesAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9178]];
  v7 = [v3 setWithObjects:{v4, 0}];

  LOBYTE(v6) = 1;
  v5 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C70] displayName:@"IMAPNotes" visibility:0 supportedDataclasses:v7 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v6];
}

- (void)_addLDAPAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9110]];
  v7 = [v3 setWithObjects:{v4, 0}];

  LOBYTE(v6) = 1;
  v5 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C98] displayName:@"LDAP" visibility:0 supportedDataclasses:v7 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v6];
}

- (void)_addHotmailAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9150]];
  v5 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
  v6 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v7 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9190]];
  v8 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9178]];
  v11 = [v3 setWithObjects:{v4, v5, v6, v7, v8, 0}];

  LOBYTE(v10) = 1;
  v9 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C50] displayName:@"Hotmail" visibility:0 supportedDataclasses:v11 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v10];
}

- (void)_ensureAccountTypeWithIdentifier:(id)a3 supportsDataclasses:(id)a4 syncsDataclasses:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:a3];
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(ACDDatabaseInitializer *)self _dataclassWithName:*(*(&v34 + 1) + 8 * v16)];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v14);
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      v23 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [(ACDDatabaseInitializer *)self _dataclassWithName:*(*(&v30 + 1) + 8 * v23), v30];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  v25 = [v10 supportedDataclasses];
  v26 = [v25 isEqualToSet:v11];

  if ((v26 & 1) == 0)
  {
    [v10 setSupportedDataclasses:v11];
  }

  v27 = [v10 syncableDataclasses];
  v28 = [v27 isEqualToSet:v18];

  if ((v28 & 1) == 0)
  {
    [v10 setSyncableDataclasses:v18];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_ensureMajorDataclassesExist
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *MEMORY[0x277CB9178];
  v18[0] = *MEMORY[0x277CB9150];
  v18[1] = v3;
  v4 = *MEMORY[0x277CB90F0];
  v18[2] = *MEMORY[0x277CB9108];
  v18[3] = v4;
  v5 = *MEMORY[0x277CB9110];
  v18[4] = *MEMORY[0x277CB9190];
  v18[5] = v5;
  v18[6] = *MEMORY[0x277CB90D0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:{7, 0}];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(ACDDatabaseInitializer *)self _dataclassWithName:v11];

        if (!v12)
        {
          [(ACDDatabaseInitializer *)self _addDataclassWithName:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_ensureProperAccountTypeDataclasses
{
  v63[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8C18];
  v5 = *MEMORY[0x277CB90F0];
  v63[0] = *MEMORY[0x277CB9108];
  v4 = v63[0];
  v63[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v3 supportsDataclasses:v6 syncsDataclasses:0];

  v7 = *MEMORY[0x277CB8D10];
  v62 = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  v61 = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v7 supportsDataclasses:v8 syncsDataclasses:v9];

  v10 = *MEMORY[0x277CB8BC8];
  v11 = *MEMORY[0x277CB9190];
  v60[0] = v5;
  v60[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
  v59[0] = v5;
  v59[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v10 supportsDataclasses:v12 syncsDataclasses:v13];

  v14 = *MEMORY[0x277CB8BD8];
  v15 = *MEMORY[0x277CB9110];
  v58[0] = v4;
  v58[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v57[0] = v4;
  v57[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v14 supportsDataclasses:v16 syncsDataclasses:v17];

  v18 = *MEMORY[0x277CB8BC0];
  v56 = *MEMORY[0x277CB90D0];
  v19 = v56;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v55 = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v18 supportsDataclasses:v20 syncsDataclasses:v21];

  v22 = *MEMORY[0x277CB8C00];
  v24 = *MEMORY[0x277CB9178];
  v54[0] = *MEMORY[0x277CB9150];
  v23 = v54[0];
  v54[1] = v24;
  v54[2] = v4;
  v54[3] = v5;
  v54[4] = v11;
  v54[5] = v15;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:6];
  v53[0] = v23;
  v53[1] = v24;
  v53[2] = v4;
  v53[3] = v5;
  v53[4] = v11;
  v53[5] = v15;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:6];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v22 supportsDataclasses:v25 syncsDataclasses:v26];

  v27 = *MEMORY[0x277CB8C50];
  v52[0] = v23;
  v52[1] = v4;
  v52[2] = v5;
  v52[3] = v11;
  v52[4] = v15;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:5];
  v51[0] = v23;
  v51[1] = v4;
  v51[2] = v5;
  v51[3] = v11;
  v51[4] = v15;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:5];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v27 supportsDataclasses:v28 syncsDataclasses:v29];

  v30 = *MEMORY[0x277CB8C98];
  v50 = v15;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v49 = v15;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v30 supportsDataclasses:v31 syncsDataclasses:v32];

  v33 = *MEMORY[0x277CB8C40];
  v48[0] = v23;
  v48[1] = v24;
  v48[2] = v4;
  v48[3] = v5;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  v47 = v23;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v33 supportsDataclasses:v34 syncsDataclasses:v35];

  v36 = *MEMORY[0x277CB8D38];
  v46[0] = v23;
  v46[1] = v24;
  v46[2] = v4;
  v46[3] = v5;
  v46[4] = v11;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:5];
  v45 = v23;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v36 supportsDataclasses:v37 syncsDataclasses:v38];

  v39 = *MEMORY[0x277CB8C70];
  v44 = v24;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v43 = v24;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v39 supportsDataclasses:v40 syncsDataclasses:v41];

  v42 = *MEMORY[0x277D85DE8];
}

- (id)_modernIMAPSupportedDataclasses
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB9178];
  v6[0] = *MEMORY[0x277CB9150];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_modernIMAPSyncableDataclasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CB9150];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_addIMAPAccountType
{
  v3 = [(ACDDatabaseInitializer *)self _modernIMAPSupportedDataclasses];
  v8 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v3];

  v4 = [(ACDDatabaseInitializer *)self _modernIMAPSyncableDataclasses];
  v5 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v4];

  LOWORD(v7) = 257;
  v6 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C60] displayName:@"IMAP" visibility:0 supportedDataclasses:v8 syncableDataclasses:v5 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:v7 supportsMultipleAccounts:?];
}

- (id)_modernPOPSupportedAndSyncableDataclasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CB9150];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_addPOPAccountType
{
  v3 = [(ACDDatabaseInitializer *)self _modernPOPSupportedAndSyncableDataclasses];
  v8 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v3];

  v4 = [(ACDDatabaseInitializer *)self _modernPOPSupportedAndSyncableDataclasses];
  v5 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v4];

  LOWORD(v7) = 257;
  v6 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8CD8] displayName:@"POP" visibility:0 supportedDataclasses:v8 syncableDataclasses:v5 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:v7 supportsMultipleAccounts:?];
}

- (id)_modernIMAPMailSupportedAndSyncableDataclasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CB9150];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_addIMAPMailAccountType
{
  v3 = [(ACDDatabaseInitializer *)self _modernIMAPMailSupportedAndSyncableDataclasses];
  v8 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v3];

  v4 = [(ACDDatabaseInitializer *)self _modernIMAPMailSupportedAndSyncableDataclasses];
  v5 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v4];

  LOWORD(v7) = 257;
  v6 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C68] displayName:@"IMAPMail" visibility:0 supportedDataclasses:v8 syncableDataclasses:v5 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:v7 supportsMultipleAccounts:?];
}

- (void)_limitLinkedInToOneAccount
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:@"com.apple.linkedin"];
  [v2 setSupportsMultipleAccounts:MEMORY[0x277CBEC28]];
}

- (void)_updateTencentWeiboCredentialTypeToOAuth2
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D18]];
  [v2 setCredentialType:*MEMORY[0x277CB8D98]];
}

- (id)_modernDeviceLocatiorSupportedDataclasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CB9128];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_addFindMyiPhoneAccountType
{
  v3 = *MEMORY[0x277CB8BF8];
  v4 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BF8]];
  if (!v4)
  {
    v5 = [(ACDDatabaseInitializer *)self _modernDeviceLocatiorSupportedDataclasses];
    v6 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v5];

    LOWORD(v8) = 0;
    v7 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:v3 displayName:@"Device Locator" visibility:0 supportedDataclasses:v6 syncableDataclasses:0 credentialType:*MEMORY[0x277CB8DA8] supportsAuthentication:v8 supportsMultipleAccounts:*MEMORY[0x277CDBEF8] credentialProtectionPolicy:?];

    v4 = 0;
  }
}

- (void)_addAccessKeysAttributeToTencentWeiboAccountType
{
  v6 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D18]];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8F10]];
  v5 = [v3 setWithObject:v4];
  [v6 setAccessKeys:v5];
}

- (void)_updateIdentityServicesAccountTypeToSupportAuthenticationAndMultipleAccounts
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8C78];
  v4 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C78]];
  v5 = MEMORY[0x277CBEC38];
  [v4 setSupportsAuthentication:MEMORY[0x277CBEC38]];
  v16 = v4;
  [v4 setSupportsMultipleAccounts:v5];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(ACDDatabaseInitializer *)self _accounts];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 accountType];
        v13 = [v12 identifier];
        if ([v13 isEqual:v3])
        {
          v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v11 setSupportsAuthentication:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateIdentityServicesAccountDescription
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C78]];
  [v2 setAccountTypeDescription:@"Messages"];
}

- (void)_updateOSXServerAccountDescription
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8CC8]];
  [v2 setAccountTypeDescription:@"OS X Server"];
}

- (void)_updateMacOSServerAccountDescription
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8CC8]];
  [v2 setAccountTypeDescription:@"macOS Server"];
}

- (void)_makeTencentWeiboSingleton
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D18]];
  [v2 setSupportsMultipleAccounts:MEMORY[0x277CBEC28]];
}

- (id)_modernHolidayCalendarSupportedAndSyncableDataclasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CB90F0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_addHolidayCalendarAccountType
{
  v3 = [(ACDDatabaseInitializer *)self _modernHolidayCalendarSupportedAndSyncableDataclasses];
  v6 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v3];

  LOWORD(v5) = 0;
  v4 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C48] displayName:@"Holiday Calendar" visibility:0 supportedDataclasses:v6 syncableDataclasses:v6 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:v5 supportsMultipleAccounts:*MEMORY[0x277CDBEF8] credentialProtectionPolicy:?];
}

- (void)_addFMFAccountType
{
  v5 = [MEMORY[0x277CBEB98] set];
  LOBYTE(v4) = 0;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C28] displayName:@"Find My Friends" visibility:0 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8DA8] supportsAuthentication:0 supportsMultipleAccounts:v4];
}

- (void)_addAppleIDAuthenticationAccountType
{
  v5 = [MEMORY[0x277CBEB98] set];
  LOBYTE(v4) = 0;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8BB0] displayName:@"Apple ID" visibility:0 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8D88] supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_setOwningBundleIDForNativeAccountTypes
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(ACDDatabaseInitializer *)self _accountTypes];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 owningBundleID];

        if (!v8)
        {
          [v7 setOwningBundleID:@"com.apple.accountsd"];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_createLiverpoolDataclasses
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BA0]];
  v4 = [v3 supportedDataclasses];
  v5 = [v4 mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [&unk_28353F1E0 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(&unk_28353F1E0);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(ACDDatabaseInitializer *)self _dataclassWithName:v10];

        if (!v11)
        {
          [(ACDDatabaseInitializer *)self _addDataclassWithName:v10];
        }

        v12 = [(ACDDatabaseInitializer *)self _dataclassWithName:v10];
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v7 = [&unk_28353F1E0 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v3 setSupportedDataclasses:v5];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_addCloudKitAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 0;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8BE8] displayName:@"CloudKit" visibility:0 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8DA8] supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_addAccessKeysAttributeToCloudKitAccountType
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8E10]];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v5 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BE8]];
  v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
  [v5 setAccessKeys:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_removeLiverpoolTypes
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:@"com.apple.account.Liverpool"];
  if (v3)
  {
    [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v3];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [&unk_28353F1F8 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(&unk_28353F1F8);
        }

        v8 = [(ACDDatabaseInitializer *)self _dataclassWithName:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_28353F1F8 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_addCloudKitDataclasses
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *MEMORY[0x277CB90E0];
  v23[0] = *MEMORY[0x277CB90D8];
  v23[1] = v4;
  v23[2] = *MEMORY[0x277CB90E8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:{3, 0}];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(ACDDatabaseInitializer *)self _dataclassWithName:v10];

        if (!v11)
        {
          [(ACDDatabaseInitializer *)self _addDataclassWithName:v10];
        }

        v12 = [(ACDDatabaseInitializer *)self _dataclassWithName:v10];
        if (v12)
        {
          [v3 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v13 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BA0]];
  v14 = [v13 supportedDataclasses];
  v15 = [v14 mutableCopy];

  v16 = [v3 allObjects];
  [v15 addObjectsFromArray:v16];

  [v13 setSupportedDataclasses:v15];
  v17 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BE8]];
  [v17 setSupportedDataclasses:v3];
  [v17 setSyncableDataclasses:v3];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_setCloudKitCredentialType
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BE8]];
  [v2 setCredentialType:*MEMORY[0x277CB8DA8]];
}

- (void)_addAndConfigureAllOSXAccountTypes
{
  v3 = _ACDLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseInitializer _addAndConfigureAllOSXAccountTypes];
  }

  [(ACDDatabaseInitializer *)self _addDataclassWithName:*MEMORY[0x277CB9160]];
  [(ACDDatabaseInitializer *)self _addDataclassWithName:*MEMORY[0x277CB90C0]];
  [(ACDDatabaseInitializer *)self _add126AccountType];
  [(ACDDatabaseInitializer *)self _add163AccountType];
  [(ACDDatabaseInitializer *)self _addAOLAccountType];
  [(ACDDatabaseInitializer *)self _addQQAccountType];
  [(ACDDatabaseInitializer *)self _addJabberAccountType];
  [(ACDDatabaseInitializer *)self _addYahooIMAccountType];
  [(ACDDatabaseInitializer *)self _addAIMAccountType];
  [(ACDDatabaseInitializer *)self _addOSXServerAccountType];
}

- (void)_switchGoogleToOAuthAuthentication
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C40]];
  [v2 setCredentialType:*MEMORY[0x277CB8D98]];
}

- (void)_switchHotmailToOAuthAuthentication
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C50]];
  [v2 setCredentialType:*MEMORY[0x277CB8D98]];
}

- (void)_switchYahooToPasswordAuthentication
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D38]];
  [v2 setCredentialType:*MEMORY[0x277CB8DA0]];
}

- (void)_addDocumentsAndVPNDataclass
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB9168];
  [(ACDDatabaseInitializer *)self _addDataclassWithName:*MEMORY[0x277CB9168]];
  v4 = *MEMORY[0x277CB9198];
  [(ACDDatabaseInitializer *)self _addDataclassWithName:*MEMORY[0x277CB9198]];
  v13 = *MEMORY[0x277CB8CC8];
  v6 = *MEMORY[0x277CB9190];
  v15[0] = *MEMORY[0x277CB90F0];
  v5 = v15[0];
  v15[1] = v6;
  v8 = *MEMORY[0x277CB9150];
  v16 = *MEMORY[0x277CB9178];
  v7 = v16;
  v17 = v8;
  v18 = *MEMORY[0x277CB9108];
  v9 = v18;
  v19 = v3;
  v20 = v4;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:7];
  v14[0] = v5;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v3;
  v14[6] = v4;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];
  [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v13 supportsDataclasses:v10 syncsDataclasses:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_modernOnMyDeviceSupportedDataclasses
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB9108];
  v7[0] = *MEMORY[0x277CB9150];
  v7[1] = v2;
  v3 = *MEMORY[0x277CB90F0];
  v7[2] = *MEMORY[0x277CB9178];
  v7[3] = v3;
  v7[4] = *MEMORY[0x277CB9190];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_addOnMyDeviceAccountType
{
  v3 = *MEMORY[0x277CB8CD0];
  v4 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8CD0]];

  if (!v4)
  {
    v8 = [(ACDDatabaseInitializer *)self _modernOnMyDeviceSupportedDataclasses];
    v5 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v8];
    LOBYTE(v7) = 0;
    v6 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:v3 displayName:@"On My Device" visibility:0 supportedDataclasses:v5 credentialType:0 supportsAuthentication:0 supportsMultipleAccounts:v7];
  }
}

- (void)_switchYahooToOAuthAuthentication
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D38]];
  [v2 setCredentialType:*MEMORY[0x277CB8D98]];
}

- (void)_configureSMTPAccountType
{
  v6 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8CF8]];
  [v6 setSupportsAuthentication:MEMORY[0x277CBEC38]];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9150]];
  v5 = [v3 setWithObject:v4];
  [v6 setSupportedDataclasses:v5];
}

- (void)_allowMultipleAppleIDAuthenticationAccounts
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BB0]];
  [v2 setSupportsMultipleAccounts:MEMORY[0x277CBEC38]];
}

- (void)_makeTudouYoukuSingletons
{
  v5 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D20]];
  v3 = MEMORY[0x277CBEC28];
  [v5 setSupportsMultipleAccounts:MEMORY[0x277CBEC28]];
  v4 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D50]];
  [v4 setSupportsMultipleAccounts:v3];
}

- (void)_supportiCloudNewsDataclass
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_ensurePresenceOfNewsDataclass
{
  v3 = *MEMORY[0x277CB9170];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9170]];
  if (v4)
  {
    v5 = _ACLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ACDDatabaseInitializer _ensurePresenceOfNewsDataclass];
    }
  }

  else
  {
    [(ACDDatabaseInitializer *)self _addDataclassWithName:v3];
  }

  [(ACDDatabaseInitializer *)self _supportiCloudNewsDataclass];
}

- (void)_supportiCloudKeychainSyncDataclass
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setSupportedDataclassesForAOLAccountType
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_addNotesDataclassToAASupportedDataclasses
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeMessengerFromYahooSupportedDataclasses
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8D38]];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 supportedDataclasses];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = *MEMORY[0x277CB9160];
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      v10 = [v9 name];
      v11 = [v10 isEqualToString:v7];

      if (v11)
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = [v2 supportedDataclasses];
    v14 = [v13 mutableCopy];

    [v14 removeObject:v12];
    [v2 setSupportedDataclasses:v14];

    v3 = v12;
  }

LABEL_12:

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_setYahooAccountsProvisionedDataclassesToSupportedOnes
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(ACDDatabaseInitializer *)self _accounts];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = *MEMORY[0x277CB8D38];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 accountType];
        v10 = [v9 identifier];

        if ([v10 isEqual:v6])
        {
          v11 = [v8 accountType];
          v12 = [v11 supportedDataclasses];
          [v8 setProvisionedDataclasses:v12];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setCloudKitAllowsMultipleAccounts
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8BE8]];
  [v2 setSupportsMultipleAccounts:MEMORY[0x277CBEC38]];
}

- (void)_removeMessagesFromGoogleSupportedDataclasses
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8C40];
  [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8C40]];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = v38 = 0u;
  v4 = [v30 supportedDataclasses];
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    v8 = *MEMORY[0x277CB9160];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v36 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v35 + 1) + 8 * v9);
      v11 = [v10 name];
      v12 = [v11 isEqualToString:v8];

      if (v12)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      v28 = 0;
      goto LABEL_16;
    }

    v14 = _ACLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "Removing Messages from google account type.", buf, 2u);
    }

    v15 = [v30 supportedDataclasses];
    v4 = [v15 mutableCopy];

    [v4 removeObject:v13];
    [v30 setSupportedDataclasses:v4];
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  v28 = v13;

LABEL_16:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = [(ACDDatabaseInitializer *)self _accounts];
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = [v21 accountType];
        v23 = [v22 identifier];

        if ([v23 isEqual:v3])
        {
          v24 = _ACLogSystem();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v40 = v21;
            _os_log_impl(&dword_221D2F000, v24, OS_LOG_TYPE_DEFAULT, "Updating supported dataclass on account %@", buf, 0xCu);
          }

          v25 = [v21 accountType];
          v26 = [v25 supportedDataclasses];
          [v21 setProvisionedDataclasses:v26];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v18);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_removeAIMAccounts
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(ACDDatabaseInitializer *)self _accounts];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  v6 = *MEMORY[0x277CB8B90];
  if (v4)
  {
    v7 = v4;
    v8 = *v19;
    *&v5 = 138412290;
    v17 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 accountType];
        v12 = [v11 identifier];

        if ([v12 isEqual:v6])
        {
          v13 = _ACLogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v23 = v10;
            _os_log_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEFAULT, "Removing AIM account %@", buf, 0xCu);
          }

          [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v10];
        }
      }

      v7 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v14 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:v6];
  if (v14)
  {
    v15 = _ACLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEFAULT, "Removing AIM account type", buf, 2u);
    }

    [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v14];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_addFacebookAndDAVLegacyAccountTypes
{
  v34[3] = *MEMORY[0x277D85DE8];
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Adding Facebook legacy account types", buf, 2u);
  }

  v4 = MEMORY[0x277CBEB98];
  v5 = *MEMORY[0x277CB9108];
  v6 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
  v7 = *MEMORY[0x277CB90F0];
  v8 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v9 = [v4 setWithObjects:{v6, v8, 0}];

  v10 = *MEMORY[0x277CB8C20];
  LOBYTE(v30) = 0;
  v11 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8C20] displayName:@"Facebook Legacy" visibility:0 supportedDataclasses:v9 credentialType:*MEMORY[0x277CB8D98] supportsAuthentication:1 supportsMultipleAccounts:v30];
  v12 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8DD0]];
  v34[0] = v12;
  v13 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8DE0]];
  v34[1] = v13;
  v14 = [(ACDDatabaseInitializer *)self _accessKeyWithName:*MEMORY[0x277CB8DD8]];
  v34[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];

  v16 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:v10];
  v17 = [MEMORY[0x277CBEB98] setWithArray:v15];
  [v16 setAccessKeys:v17];

  v18 = MEMORY[0x277CBEB98];
  v19 = [(ACDDatabaseInitializer *)self _dataclassWithName:v7];
  v20 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9190]];
  v21 = [v18 setWithObjects:{v19, v20, 0}];

  v22 = *MEMORY[0x277CB8DA0];
  LOWORD(v31) = 257;
  v23 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8BD0] displayName:@"CalDAV Legacy" visibility:0 supportedDataclasses:v21 syncableDataclasses:v21 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:v31 supportsMultipleAccounts:?];
  v24 = MEMORY[0x277CBEB98];
  v25 = [(ACDDatabaseInitializer *)self _dataclassWithName:v5];
  v26 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9110]];
  v27 = [v24 setWithObjects:{v25, v26, 0}];

  LOWORD(v32) = 257;
  v28 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8BE0] displayName:@"CardDAV Legacy" visibility:0 supportedDataclasses:v27 syncableDataclasses:v27 credentialType:v22 supportsAuthentication:v32 supportsMultipleAccounts:?];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_changeFacebookAccountToLegacyAccountType
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Changing Facebook account types", buf, 2u);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(ACDDatabaseInitializer *)self _accounts];
  v4 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    v7 = *MEMORY[0x277CB8C18];
    v27 = *MEMORY[0x277CB8C20];
    v8 = *MEMORY[0x277CB8BC8];
    v36 = *MEMORY[0x277CB8BD8];
    v34 = *MEMORY[0x277CB8BE0];
    v35 = *MEMORY[0x277CB8BD0];
    v28 = *MEMORY[0x277CB8C18];
    v29 = *v42;
    do
    {
      v9 = 0;
      v30 = v5;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = [v10 accountType];
        v12 = [v11 identifier];

        if ([v12 isEqual:v7])
        {
          v32 = v12;
          v33 = v9;
          v13 = _ACLogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v47 = v10;
            _os_log_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEFAULT, "Changing account type of Facebook account %@", buf, 0xCu);
          }

          v14 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:v27];
          [v10 setAccountType:v14];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v15 = [v10 childAccounts];
          v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v38;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v38 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v37 + 1) + 8 * i);
                v21 = [v20 accountType];
                v22 = [v21 identifier];

                if ([v22 isEqualToString:v8])
                {
                  v23 = _ACLogSystem();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v47 = v20;
                    _os_log_impl(&dword_221D2F000, v23, OS_LOG_TYPE_DEFAULT, "Changing account type of Facebook child CalDAV account %@", buf, 0xCu);
                  }

                  v24 = v35;
                }

                else
                {
                  if (![v22 isEqualToString:v36])
                  {
                    goto LABEL_25;
                  }

                  v23 = _ACLogSystem();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v47 = v20;
                    _os_log_impl(&dword_221D2F000, v23, OS_LOG_TYPE_DEFAULT, "Changing account type of Facebook child CardDAV account %@", buf, 0xCu);
                  }

                  v24 = v34;
                }

                v25 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:v24];
                [v20 setAccountType:v25];

LABEL_25:
              }

              v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v17);
          }

          v6 = v29;
          v5 = v30;
          v7 = v28;
          v12 = v32;
          v9 = v33;
        }

        ++v9;
      }

      while (v9 != v5);
      v5 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v5);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_addObsoleteAttributeToAccountTypes
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Adding obsolete attribute to Account Types", buf, 2u);
  }

  v4 = *MEMORY[0x277CB8D28];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CB8C18], *MEMORY[0x277CB8D28], *MEMORY[0x277CB8D00], *MEMORY[0x277CB8D18], @"com.apple.linkedin", *MEMORY[0x277CB8C30], *MEMORY[0x277CB8D30], *MEMORY[0x277CB8D20], *MEMORY[0x277CB8D50], 0}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(ACDDatabaseInitializer *)self _accountTypes];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v5 containsObject:v12];

        if (v13)
        {
          v14 = _ACLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v11;
            _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "Marking account type %@ as obsolete", buf, 0xCu);
          }
        }

        v15 = [MEMORY[0x277CCABB0] numberWithBool:v13];
        [v11 setObsolete:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeMessagesFromAOLSupportedDataclasses
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8B98];
  [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8B98]];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = v38 = 0u;
  v4 = [v30 supportedDataclasses];
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    v8 = *MEMORY[0x277CB9160];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v36 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v35 + 1) + 8 * v9);
      v11 = [v10 name];
      v12 = [v11 isEqualToString:v8];

      if (v12)
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (!v13)
    {
      v28 = 0;
      goto LABEL_16;
    }

    v14 = _ACLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "Removing Messages from AOL account type.", buf, 2u);
    }

    v15 = [v30 supportedDataclasses];
    v4 = [v15 mutableCopy];

    [v4 removeObject:v13];
    [v30 setSupportedDataclasses:v4];
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  v28 = v13;

LABEL_16:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = [(ACDDatabaseInitializer *)self _accounts];
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = [v21 accountType];
        v23 = [v22 identifier];

        if ([v23 isEqual:v3])
        {
          v24 = _ACLogSystem();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v40 = v21;
            _os_log_impl(&dword_221D2F000, v24, OS_LOG_TYPE_DEFAULT, "Updating supported dataclass on account %@", buf, 0xCu);
          }

          v25 = [v21 accountType];
          v26 = [v25 supportedDataclasses];
          [v21 setProvisionedDataclasses:v26];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v18);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_addiTunesStoreSandboxAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8D60] displayName:@"iTunes Store (Sandbox)" visibility:0 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_addLinkedInLegacyAccountType
{
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Adding LinkedIn legacy account type", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEB58] set];
  v5 = MEMORY[0x277CB8CA8];
  if (v4)
  {
    v6 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9108]];
    v7 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9180]];
    if (v6)
    {
      [v4 addObject:v6];
    }

    if (v7)
    {
      [v4 addObject:v7];
    }

    LOBYTE(v14) = 0;
    v8 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*v5 displayName:@"LinkedIn Legacy" visibility:0 supportedDataclasses:v4 credentialType:*MEMORY[0x277CB8D90] supportsAuthentication:1 supportsMultipleAccounts:v14];
  }

  v9 = [MEMORY[0x277CBEB18] array];
  if (v9)
  {
    v10 = [(ACDDatabaseInitializer *)self _accessKeyWithName:@"ACLinkedInAppIdKey"];
    v11 = [(ACDDatabaseInitializer *)self _accessKeyWithName:@"ACLinkedInPermissionsKey"];
    if (v10)
    {
      [v9 addObject:v10];
    }

    if (v11)
    {
      [v9 addObject:v11];
    }

    v12 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*v5];
    if (v12)
    {
      v13 = [MEMORY[0x277CBEB98] setWithArray:v9];
      [v12 setAccessKeys:v13];
    }
  }
}

- (void)_removeBTMMType
{
  v3 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90C0]];
  if (v3)
  {
    [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v3];
  }

  MEMORY[0x2821F96F8]();
}

- (void)_switchAolAccountsToOAuth
{
  v2 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8B98]];
  [v2 setCredentialType:*MEMORY[0x277CB8D98]];
}

- (void)_aolSupportsAuthentication
{
  v3 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:*MEMORY[0x277CB8B98]];
  if (v3)
  {
    v6 = v3;
    v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB9150]];
    if (v4)
    {
      [v6 setSupportsAuthentication:MEMORY[0x277CBEC38]];
      v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
      [v6 setSyncableDataclasses:v5];
    }

    v3 = v6;
  }
}

- (void)_removeRedundantDataclasses
{
  v174 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v124 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  obj = [(ACDDatabaseInitializer *)self _dataclasses];
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v157 objects:v173 count:16];
  if (!v5)
  {
    goto LABEL_117;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v158;
  v112 = v3;
  v113 = self;
  do
  {
    v9 = 0;
    do
    {
      if (*v158 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v157 + 1) + 8 * v9);
      v11 = [v10 name];
      v12 = [v3 objectForKeyedSubscript:v11];

      if (v12)
      {
        v13 = _ACLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v10 name];
          *buf = 138412546;
          v170 = v14;
          v171 = 2112;
          v172 = v10;
          _os_log_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEFAULT, "Removing redundant dataclass of name %@ %@", buf, 0x16u);
        }

        v15 = _ACLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v170 = v12;
          _os_log_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEFAULT, "Replacing with canonical dataclass %@", buf, 0xCu);
        }

        v16 = [v10 objectID];
        v17 = [v16 URIRepresentation];
        [v4 addObject:v17];

        v18 = [v10 provisionedAccounts];
        v19 = [v18 count];

        if (v19)
        {
          v20 = [v10 provisionedAccounts];
          [v12 addProvisionedAccounts:v20];

          v21 = [v10 provisionedAccounts];
          [v124 unionSet:v21];
        }

        v22 = [v10 enabledAccounts];
        v23 = [v22 count];

        if (v23)
        {
          v24 = [v10 enabledAccounts];
          [v12 addEnabledAccounts:v24];

          v25 = [v10 enabledAccounts];
          [v124 unionSet:v25];
        }

        v26 = [v10 supportedTypes];
        v27 = [v26 count];

        if (v27)
        {
          v28 = [v10 supportedTypes];
          [v12 addSupportedTypes:v28];

          v29 = [v10 supportedTypes];
          [v124 unionSet:v29];
        }

        v30 = [v10 syncableTypes];
        v31 = [v30 count];

        if (v31)
        {
          v32 = [v10 syncableTypes];
          [v12 addSyncableTypes:v32];

          v33 = [v10 syncableTypes];
          [v124 unionSet:v33];
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      v34 = [v10 name];

      if (v34)
      {
        v35 = [v10 name];
        [v3 setObject:v10 forKeyedSubscript:v35];

        goto LABEL_31;
      }

      v36 = _ACDLogSystem();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v170 = v10;
        _os_log_error_impl(&dword_221D2F000, v36, OS_LOG_TYPE_ERROR, "@There was no name on the dataclass %@", buf, 0xCu);
      }

      v37 = [v10 supportedTypes];
      if ([v37 count])
      {

        self = v113;
        goto LABEL_31;
      }

      v38 = [v10 syncableTypes];
      if ([v38 count])
      {
        goto LABEL_30;
      }

      v39 = [v10 enabledAccounts];
      if ([v39 count])
      {

LABEL_30:
        v3 = v112;
        self = v113;
        goto LABEL_31;
      }

      v114 = [v10 provisionedAccounts];
      v117 = [v114 count];

      v3 = v112;
      self = v113;
      if (!v117)
      {
        v33 = _ACDLogSystem();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v170 = v10;
          _os_log_error_impl(&dword_221D2F000, v33, OS_LOG_TYPE_ERROR, "@Dataclass %@ has no types or accounts, deleting", buf, 0xCu);
        }

LABEL_19:

LABEL_20:
        [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v10];
        v7 = 1;
      }

LABEL_31:

      ++v9;
    }

    while (v6 != v9);
    v40 = [(NSArray *)obj countByEnumeratingWithState:&v157 objects:v173 count:16];
    v6 = v40;
  }

  while (v40);

  if (v7)
  {
    v41 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"Dataclass"];
    v42 = [v41 mutableCopy];
    dataclasses = self->_dataclasses;
    self->_dataclasses = v42;

    v44 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"Account"];
    v45 = [v44 mutableCopy];
    accounts = self->_accounts;
    self->_accounts = v45;

    v47 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"AccountType"];
    v48 = [v47 mutableCopy];
    accountTypes = self->_accountTypes;
    self->_accountTypes = v48;

    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v50 = v124;
    v51 = [v50 countByEnumeratingWithState:&v153 objects:v168 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v154;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v154 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v153 + 1) + 8 * i);
          v56 = _ACLogSystem();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v170 = v55;
            _os_log_impl(&dword_221D2F000, v56, OS_LOG_TYPE_DEFAULT, "Redundant dataclass removal affected %@", buf, 0xCu);
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v153 objects:v168 count:16];
      }

      while (v52);
    }

    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v57 = v113->_dataclasses;
    v58 = [(NSArray *)v57 countByEnumeratingWithState:&v149 objects:v167 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v150;
      do
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v150 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v149 + 1) + 8 * j);
          v63 = [v62 objectID];
          v64 = [v63 URIRepresentation];
          v65 = [v4 containsObject:v64];

          if (v65)
          {
            v66 = _ACLogSystem();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v170 = v62;
              _os_log_error_impl(&dword_221D2F000, v66, OS_LOG_TYPE_ERROR, "Ostensibly removed dataclass still exists! %@", buf, 0xCu);
            }
          }
        }

        v59 = [(NSArray *)v57 countByEnumeratingWithState:&v149 objects:v167 count:16];
      }

      while (v59);
    }

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v115 = v113->_accounts;
    v120 = [(NSArray *)v115 countByEnumeratingWithState:&v145 objects:v166 count:16];
    if (v120)
    {
      v118 = *v146;
      do
      {
        v67 = 0;
        do
        {
          if (*v146 != v118)
          {
            objc_enumerationMutation(v115);
          }

          obja = v67;
          v68 = *(*(&v145 + 1) + 8 * v67);
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v69 = [v68 provisionedDataclasses];
          v70 = [v69 countByEnumeratingWithState:&v141 objects:v165 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v142;
            do
            {
              for (k = 0; k != v71; ++k)
              {
                if (*v142 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                v74 = *(*(&v141 + 1) + 8 * k);
                v75 = [v74 objectID];
                v76 = [v75 URIRepresentation];
                v77 = [v4 containsObject:v76];

                if (v77)
                {
                  v78 = _ACLogSystem();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v170 = v74;
                    v171 = 2112;
                    v172 = v68;
                    _os_log_error_impl(&dword_221D2F000, v78, OS_LOG_TYPE_ERROR, "Ostensibly removed dataclass still among account.provisionedDataclasses! %@ %@", buf, 0x16u);
                  }
                }
              }

              v71 = [v69 countByEnumeratingWithState:&v141 objects:v165 count:16];
            }

            while (v71);
          }

          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          v79 = [v68 enabledDataclasses];
          v80 = [v79 countByEnumeratingWithState:&v137 objects:v164 count:16];
          if (v80)
          {
            v81 = v80;
            v82 = *v138;
            do
            {
              for (m = 0; m != v81; ++m)
              {
                if (*v138 != v82)
                {
                  objc_enumerationMutation(v79);
                }

                v84 = *(*(&v137 + 1) + 8 * m);
                v85 = [v84 objectID];
                v86 = [v85 URIRepresentation];
                v87 = [v4 containsObject:v86];

                if (v87)
                {
                  v88 = _ACLogSystem();
                  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v170 = v84;
                    v171 = 2112;
                    v172 = v68;
                    _os_log_error_impl(&dword_221D2F000, v88, OS_LOG_TYPE_ERROR, "Ostensibly removed dataclass still among account.enabledDataclasses! %@ %@", buf, 0x16u);
                  }
                }
              }

              v81 = [v79 countByEnumeratingWithState:&v137 objects:v164 count:16];
            }

            while (v81);
          }

          v67 = obja + 1;
        }

        while (obja + 1 != v120);
        v120 = [(NSArray *)v115 countByEnumeratingWithState:&v145 objects:v166 count:16];
      }

      while (v120);
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    obj = v113->_accountTypes;
    v119 = [(NSArray *)obj countByEnumeratingWithState:&v133 objects:v163 count:16];
    if (v119)
    {
      v116 = *v134;
      do
      {
        v89 = 0;
        do
        {
          if (*v134 != v116)
          {
            objc_enumerationMutation(obj);
          }

          v121 = v89;
          v90 = *(*(&v133 + 1) + 8 * v89);
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v91 = [v90 supportedDataclasses];
          v92 = [v91 countByEnumeratingWithState:&v129 objects:v162 count:16];
          if (v92)
          {
            v93 = v92;
            v94 = *v130;
            do
            {
              for (n = 0; n != v93; ++n)
              {
                if (*v130 != v94)
                {
                  objc_enumerationMutation(v91);
                }

                v96 = *(*(&v129 + 1) + 8 * n);
                v97 = [v96 objectID];
                v98 = [v97 URIRepresentation];
                v99 = [v4 containsObject:v98];

                if (v99)
                {
                  v100 = _ACLogSystem();
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v170 = v96;
                    v171 = 2112;
                    v172 = v90;
                    _os_log_error_impl(&dword_221D2F000, v100, OS_LOG_TYPE_ERROR, "Ostensibly removed dataclass still among accountType.supportedDataclasses! %@ %@", buf, 0x16u);
                  }
                }
              }

              v93 = [v91 countByEnumeratingWithState:&v129 objects:v162 count:16];
            }

            while (v93);
          }

          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v101 = [v90 syncableDataclasses];
          v102 = [v101 countByEnumeratingWithState:&v125 objects:v161 count:16];
          if (v102)
          {
            v103 = v102;
            v104 = *v126;
            do
            {
              for (ii = 0; ii != v103; ++ii)
              {
                if (*v126 != v104)
                {
                  objc_enumerationMutation(v101);
                }

                v106 = *(*(&v125 + 1) + 8 * ii);
                v107 = [v106 objectID];
                v108 = [v107 URIRepresentation];
                v109 = [v4 containsObject:v108];

                if (v109)
                {
                  v110 = _ACLogSystem();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v170 = v106;
                    v171 = 2112;
                    v172 = v90;
                    _os_log_error_impl(&dword_221D2F000, v110, OS_LOG_TYPE_ERROR, "Ostensibly removed dataclass still among accountType.syncableDataclasses! %@ %@", buf, 0x16u);
                  }
                }
              }

              v103 = [v101 countByEnumeratingWithState:&v125 objects:v161 count:16];
            }

            while (v103);
          }

          v89 = v121 + 1;
        }

        while (v121 + 1 != v119);
        v119 = [(NSArray *)obj countByEnumeratingWithState:&v133 objects:v163 count:16];
      }

      while (v119);
    }

    v3 = v112;
LABEL_117:
  }

  v111 = *MEMORY[0x277D85DE8];
}

- (void)_addDataclassNumberingToExistingDataclasses
{
  v7 = [a2 name];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_221D2F000, a4, OS_LOG_TYPE_ERROR, "@All dataclasses should have an enum value! %@ missing", a1, 0xCu);
}

- (void)_addRemoteManagementAccountType
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  LOBYTE(v4) = 1;
  v3 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8CF0] displayName:@"Remote Management" visibility:1 supportedDataclasses:v5 credentialType:*MEMORY[0x277CB8DA8] supportsAuthentication:1 supportsMultipleAccounts:v4];
}

- (void)_addPublishedCalendarAccountType
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(ACDDatabaseInitializer *)self _dataclassWithName:*MEMORY[0x277CB90F0]];
  v7 = [v3 setWithObject:v4];

  LOWORD(v6) = 257;
  v5 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:*MEMORY[0x277CB8CE0] displayName:@"Published Calendar" visibility:0 supportedDataclasses:v7 syncableDataclasses:v7 credentialType:*MEMORY[0x277CB8DA0] supportsAuthentication:v6 supportsMultipleAccounts:?];
}

- (void)_removeRedundantAccountTypes
{
  v95 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v70 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v69 = self;
  v5 = [(ACDDatabaseInitializer *)self _accountTypes];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v83 objects:v94 count:16];
  if (!v6)
  {
LABEL_53:

    goto LABEL_54;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v84;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v84 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v83 + 1) + 8 * i);
      v12 = [v11 identifier];
      v13 = [v3 objectForKeyedSubscript:v12];

      if (v13)
      {
        v14 = _ACLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v11 identifier];
          *buf = 138412546;
          v91 = v15;
          v92 = 2112;
          v93 = v11;
          _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "Removing redundant account type of name %@ %@", buf, 0x16u);
        }

        v16 = _ACLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v91 = v13;
          _os_log_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEFAULT, "Replacing with canonical account type %@", buf, 0xCu);
        }

        v17 = [v11 objectID];
        v18 = [v17 URIRepresentation];
        [v70 addObject:v18];

        v19 = [v11 accounts];

        if (v19)
        {
          v20 = [v11 accounts];
          [v13 addAccounts:v20];

          v21 = [v11 accounts];
          [v4 unionSet:v21];
        }

        v22 = [v11 permission];

        if (v22)
        {
          v23 = [v11 permission];
          [v13 addPermission:v23];

          v24 = [v11 permission];
          [v4 unionSet:v24];
        }

        v25 = [v11 accessKeys];

        if (v25)
        {
          v26 = [v11 accessKeys];
          [v13 addAccessKeys:v26];

          v27 = [v11 accessKeys];
          [v4 unionSet:v27];
        }

        [(ACDDatabaseConnection *)v69->_databaseConnection deleteObject:v11];
        v8 = 1;
      }

      else
      {
        v28 = [v11 identifier];
        [v3 setObject:v11 forKeyedSubscript:v28];
      }
    }

    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v83 objects:v94 count:16];
  }

  while (v7);

  if (v8)
  {
    v29 = [(ACDDatabaseConnection *)v69->_databaseConnection fetchObjectsForEntityNamed:@"Dataclass"];
    v30 = [v29 mutableCopy];
    dataclasses = v69->_dataclasses;
    v69->_dataclasses = v30;

    v32 = [(ACDDatabaseConnection *)v69->_databaseConnection fetchObjectsForEntityNamed:@"Account"];
    v33 = [v32 mutableCopy];
    accounts = v69->_accounts;
    v69->_accounts = v33;

    v35 = [(ACDDatabaseConnection *)v69->_databaseConnection fetchObjectsForEntityNamed:@"AccountType"];
    v36 = [v35 mutableCopy];
    accountTypes = v69->_accountTypes;
    v69->_accountTypes = v36;

    v38 = [(ACDDatabaseConnection *)v69->_databaseConnection fetchObjectsForEntityNamed:@"AccessOptionsKey"];
    v39 = [v38 mutableCopy];
    accessKeys = v69->_accessKeys;
    v69->_accessKeys = v39;

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v41 = v4;
    v42 = [v41 countByEnumeratingWithState:&v79 objects:v89 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v80;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v80 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v79 + 1) + 8 * j);
          v47 = _ACLogSystem();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v91 = v46;
            _os_log_impl(&dword_221D2F000, v47, OS_LOG_TYPE_DEFAULT, "Redundant account type removal affected %@", buf, 0xCu);
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v79 objects:v89 count:16];
      }

      while (v43);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v69->_accounts;
    v48 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v88 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v76;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v76 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v52 = *(*(&v75 + 1) + 8 * k);
          v53 = [v52 accountType];
          v54 = [v53 objectID];
          v55 = [v54 URIRepresentation];
          v56 = [v70 containsObject:v55];

          if (v56)
          {
            v57 = _ACLogSystem();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = [v52 accountType];
              *buf = 138412546;
              v91 = v58;
              v92 = 2112;
              v93 = v52;
              _os_log_error_impl(&dword_221D2F000, v57, OS_LOG_TYPE_ERROR, "Ostensibly removed account type still set for account.accountType! %@ %@", buf, 0x16u);
            }
          }
        }

        v49 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v88 count:16];
      }

      while (v49);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v5 = v69->_accessKeys;
    v59 = [(NSArray *)v5 countByEnumeratingWithState:&v71 objects:v87 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v72;
      do
      {
        for (m = 0; m != v60; ++m)
        {
          if (*v72 != v61)
          {
            objc_enumerationMutation(v5);
          }

          v63 = *(*(&v71 + 1) + 8 * m);
          v64 = [v63 owningAccountTypes];
          v65 = [v64 count];

          if (!v65)
          {
            v66 = _ACLogSystem();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v91 = v63;
              _os_log_error_impl(&dword_221D2F000, v66, OS_LOG_TYPE_ERROR, "Unowned access key! %@", buf, 0xCu);
            }
          }
        }

        v60 = [(NSArray *)v5 countByEnumeratingWithState:&v71 objects:v87 count:16];
      }

      while (v60);
    }

    goto LABEL_53;
  }

LABEL_54:

  v67 = *MEMORY[0x277D85DE8];
}

- (id)_managedDataclassesSetForNames:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ACDDatabaseInitializer *)self _dataclassWithName:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_ensureAllInternalAccountTypesExist:(BOOL)a3
{
  v32 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v30 = [MEMORY[0x277CBEB18] array];
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseInitializer _ensureAllInternalAccountTypesExist:];
  }

  v5 = +[ACDDatabasePersistentConfiguration accountTypes];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [v5 allKeys];
  v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v6 = *v42;
    v28 = *v42;
    v29 = v5;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = [v5 objectForKeyedSubscript:v8];
        v10 = [(ACDDatabaseInitializer *)self _accountTypeWithIdentifier:v8];

        if (v10)
        {
          if (!v32)
          {
            goto LABEL_13;
          }

          v11 = [v9 objectForKeyedSubscript:@"ACDAccountTypeSupportedDataclasses"];
          v12 = [v9 objectForKeyedSubscript:@"ACDAccountTypeSyncableDataclasses"];
          [(ACDDatabaseInitializer *)self _ensureAccountTypeWithIdentifier:v8 supportsDataclasses:v11 syncsDataclasses:v12];
        }

        else
        {
          [v30 addObject:v8];
          v37 = [v9 objectForKeyedSubscript:@"ACDAccountTypeDisplayName"];
          v38 = [v9 objectForKeyedSubscript:@"ACDAccountTypeVisibility"];
          v35 = [v38 unsignedIntValue];
          v39 = [v9 objectForKeyedSubscript:@"ACDAccountTypeSupportedDataclasses"];
          v13 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v39];
          v36 = [v9 objectForKeyedSubscript:@"ACDAccountTypeSyncableDataclasses"];
          v34 = [(ACDDatabaseInitializer *)self _managedDataclassesSetForNames:v36];
          v33 = [v9 objectForKeyedSubscript:@"ACDAccountTypeCredentialType"];
          v14 = [v9 objectForKeyedSubscript:@"ACDAccountTypeSupportsAuthentication"];
          v15 = self;
          v16 = [v14 BOOLValue];
          v17 = [v9 objectForKeyedSubscript:@"ACDAccountTypeSupportsMultipleAccounts"];
          v18 = [v17 BOOLValue];
          v19 = [v9 objectForKeyedSubscript:@"ACDAccountTypeCredentialProtectionPolicy"];
          BYTE1(v27) = v18;
          LOBYTE(v27) = v16;
          self = v15;
          v11 = v37;
          v20 = [(ACDDatabaseInitializer *)self _addAccountTypeWithIdentifier:v8 displayName:v37 visibility:v35 supportedDataclasses:v13 syncableDataclasses:v34 credentialType:v33 supportsAuthentication:v27 supportsMultipleAccounts:v19 credentialProtectionPolicy:?];

          v12 = v38;
          v5 = v29;

          v6 = v28;
        }

LABEL_13:
      }

      v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v40);
  }

  v21 = [v30 count];
  if (v21)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing account types: %@", v30];
    v23 = _ACDLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseInitializer _ensureAllInternalAccountTypesExist:];
    }

    v24 = +[ACDEventLedger sharedLedger];
    [v24 simulateCrashWithMessage:v22];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21 != 0;
}

- (BOOL)_ensureAllDataclassesExist
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = _ACDLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseInitializer _ensureAllDataclassesExist];
  }

  v4 = +[ACDDatabasePersistentConfiguration dataclasses];
  v5 = MEMORY[0x277CBEB98];
  v6 = [(ACDDatabaseInitializer *)self _dataclasses];
  v7 = [v6 valueForKeyPath:@"name"];
  v8 = [v5 setWithArray:v7];

  v9 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (([v8 containsObject:v15] & 1) == 0)
        {
          [(ACDDatabaseInitializer *)self _addDataclassWithName:v15];
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v16 = [v9 count];
  if (v16)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing dataclasses: %@", v9];
    v18 = _ACDLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseInitializer _ensureAllInternalAccountTypesExist:];
    }

    v19 = +[ACDEventLedger sharedLedger];
    [v19 simulateCrashWithMessage:v17];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16 != 0;
}

- (void)_addWarmingUpAttributeToAccounts
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(ACDDatabaseInitializer *)self _accounts];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [v7 setWarmingUp:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithDatabaseConnection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACDDatabaseInitializer.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"databaseConnection"}];
}

void __58__ACDDatabaseInitializer_updateDefaultContentIfNecessary___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __58__ACDDatabaseInitializer_updateDefaultContentIfNecessary___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__ACDDatabaseInitializer_updateDefaultContentIfNecessary___block_invoke_cold_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v6 = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_4();
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_221D2F000, a3, OS_LOG_TYPE_ERROR, "Database initialization failed. Stuck at version %@. Error: %@", v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_addCredentialType:toAccountType:supportsAuthentication:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_221D2F000, v1, OS_LOG_TYPE_ERROR, "Could not find account type %@ to set credential type %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_addDataclassWithName:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addDataclassWithName:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addAccessKeyWithName:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_ensureAllInternalAccountTypesExist:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
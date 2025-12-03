@interface AKAccountManager
+ (AKAccountManager)sharedInstance;
+ (id)personaIDIfCurrentPersonaIsDataSeparated;
+ (id)stringRepresentationForService:(int64_t)service;
+ (void)performWithinPersonaForAccount:(id)account withBlock:(id)block;
- (ACAccountType)appleIDAccountType;
- (ACAccountType)iCloudAccountType;
- (ACAccountType)protoAccountType;
- (AKAccountManager)init;
- (BOOL)_ageAttestationPhase1FeatureRestricted;
- (BOOL)_isAccountEligibleForSecurityUpgrade:(id)upgrade ofServiceType:(int64_t)type;
- (BOOL)_saveAccount:(id)account error:(id *)error;
- (BOOL)_setUsername:(id)username forAccount:(id)account;
- (BOOL)_shouldBlockAuthorizationForPersona:(id)persona;
- (BOOL)accountAccessTelemetryOptInForAccount:(id)account;
- (BOOL)accountIdentifiableTelemetryForAccount:(id)account;
- (BOOL)accountImprovementOptInForAccount:(id)account;
- (BOOL)accountIsSignedIntoServices:(id)services;
- (BOOL)authorizationUsedForAccount:(id)account;
- (BOOL)canBeBeneficiaryForAccount:(id)account;
- (BOOL)canBeCustodianForAccount:(id)account;
- (BOOL)canHaveBeneficiaryForAccount:(id)account;
- (BOOL)canHaveCustodianForAccount:(id)account;
- (BOOL)custodianEnabledForAccount:(id)account;
- (BOOL)demoAccountForAccount:(id)account;
- (BOOL)hasMDMForAccount:(id)account;
- (BOOL)hasPersonaAvailableForAltDSID:(id)d;
- (BOOL)hasPrimaryiCloudAccountForAltDSID:(id)d;
- (BOOL)hasPrimaryiCloudAccountForAppleID:(id)d;
- (BOOL)isAskToBuyForAccount:(id)account;
- (BOOL)isBeneficiaryForAccount:(id)account;
- (BOOL)isDataSeparatedAccountForAltDSID:(id)d;
- (BOOL)isEligibleForSafetyScreenForAccount:(id)account;
- (BOOL)isFidoForAccount:(id)account;
- (BOOL)isFulliCloudAccount:(id)account;
- (BOOL)isManagedAppleIDForAccount:(id)account;
- (BOOL)isNotificationEmailAvailableForAccount:(id)account;
- (BOOL)isPasscodeAuthEnabledForAccount:(id)account;
- (BOOL)isPasscodeAuthForAccount:(id)account;
- (BOOL)isPrimaryiCloudAccount:(id)account;
- (BOOL)isPrimaryiCloudAccountEmailVerified:(id)verified;
- (BOOL)isProximityAuthEligible:(id)eligible;
- (BOOL)isSignOutInProgress:(id)progress;
- (BOOL)isSiwaEnabledForChildAccount:(id)account;
- (BOOL)mdmInformationRequiredForAccount:(id)account;
- (BOOL)needsRepairForAccount:(id)account;
- (BOOL)phoneAsAppleIDForAccount:(id)account;
- (BOOL)piggybackingApprovalEligible:(id)eligible;
- (BOOL)primaryiCloudAccountHasPendingDOB;
- (BOOL)privateAttestationEnabledForAccount:(id)account;
- (BOOL)resetAccountImprovementOptInForAccount:(id)account error:(id *)error;
- (BOOL)saveAccount:(id)account error:(id *)error;
- (BOOL)selectedPrivateEmailForAccount:(id)account;
- (BOOL)setAccountAccessTelemetryOptIn:(BOOL)in forAccount:(id)account error:(id *)error;
- (BOOL)setAccountImprovementOptIn:(BOOL)in forAccount:(id)account error:(id *)error;
- (BOOL)shieldSignInOrCreateFlows;
- (BOOL)shouldPerformSatoriWarmupVerificationForAccount:(id)account;
- (BOOL)shouldUpdateAuthModeForAccount:(id)account;
- (BOOL)userIsSeniorForAccount:(id)account;
- (BOOL)userUnderAgeForAccount:(id)account;
- (BOOL)verifiedPrimaryEmailForAccount:(id)account;
- (id)DSIDForAccount:(id)account;
- (id)_accountTypeForServiceType:(int64_t)type;
- (id)_aliasesForiCloudAccount:(id)account;
- (id)_altDSIDForiCloudAccount:(id)account;
- (id)_creationKeyForTokenWithName:(id)name;
- (id)_credentialForAccount:(id)account;
- (id)_defaultSecurityUpgradeServiceNames;
- (id)_fetchAllAccountsWithType:(id)type error:(id *)error;
- (id)_iCloudAccountFromPersonaUniqueIdentifier:(id)identifier;
- (id)_iCloudAccountRequestingAuthorization;
- (id)_iCloudAccounts;
- (id)_idmsWalrusStatusForAccount:(id)account;
- (id)_isSilentBurnCDPRepairEnabledForAccount:(id)account;
- (id)_isSilentEscrowRecordRepairEnabledForAccount:(id)account;
- (id)_isSilentEscrowRecordRepairEnabledForAccountV2:(id)v2;
- (id)_matchingServiceAccountForAuthKitAccount:(id)account service:(int64_t)service;
- (id)_protoAccountWithError:(id *)error;
- (id)_serviceTypesForSecurityUpgrade;
- (id)_telemetryDeviceSessionIDForAccount:(id)account;
- (id)_tokenWithName:(id)name forAccount:(id)account error:(id *)error;
- (id)accountAccessTelemetryOptInDateForAccount:(id)account;
- (id)accountEligibleForUpdate;
- (id)accountTypeForTypeIdentifier:(id)identifier;
- (id)accountsUsingService:(int64_t)service;
- (id)activeServiceNamesForAccount:(id)account;
- (id)activeiCloudPrivateEmailCount;
- (id)activeiCloudPrivateEmailCountForAccount:(id)account;
- (id)additionalInfoForAccount:(id)account;
- (id)adpCohortForAccount:(id)account;
- (id)ageOfMajorityForAccount:(id)account;
- (id)aliasesForAccount:(id)account;
- (id)allAuthKitAccounts;
- (id)allAuthKitAccountsWithError:(id *)error;
- (id)allTokensForAccount:(id)account error:(id *)error;
- (id)altDSIDForAccount:(id)account;
- (id)altDSIDForAuthKitAccountRequestingAuthorization;
- (id)altDSIDforPrimaryiCloudAccount;
- (id)appleAccountConsentVersionForAccount:(id)account;
- (id)appleIDAccountWithAltDSID:(id)d;
- (id)appleIDAccountWithAppleID:(id)d;
- (id)appleIDCountryCodeForAccount:(id)account;
- (id)authKitAccountRequestingAuthorization;
- (id)authKitAccountTypeWithError:(id *)error;
- (id)authKitAccountWithAltDSID:(id)d;
- (id)authKitAccountWithAltDSID:(id)d error:(id *)error;
- (id)authKitAccountWithAppleID:(id)d;
- (id)authKitAccountWithAppleID:(id)d error:(id *)error;
- (id)authKitAccountWithDSID:(id)d;
- (id)beneficiaryInfoForAccount:(id)account;
- (id)beneficiaryLastModifiedForAccount:(id)account;
- (id)beneficiaryListVersionForAccount:(id)account;
- (id)birthYearForAccount:(id)account;
- (id)buildCredentialWithTokens:(id)tokens;
- (id)canAttestAgeForAccount:(id)account;
- (id)combinedAliasesAndReachableEmailsForAccount:(id)account;
- (id)configDataVersionForAccount:(id)account;
- (id)configValue:(id)value forAccount:(id)account;
- (id)continuationTokenForAccount:(id)account;
- (id)continuationTokenForAccount:(id)account error:(id *)error;
- (id)custodianInfosForAccount:(id)account;
- (id)custodianLastModifiedForAccount:(id)account;
- (id)custodianListVersionForAccount:(id)account;
- (id)deletedDevicesCacheExpiryOffsetForAccount:(id)account;
- (id)deviceListVersionForAccount:(id)account;
- (id)familyNameForAccount:(id)account;
- (id)formattedUsernameForAccount:(id)account;
- (id)forwardingEmailForAccount:(id)account;
- (id)get3PRegulatoryOverride:(id)override;
- (id)givenNameForAccount:(id)account;
- (id)groupKitEligibilityForAccount:(id)account;
- (id)hasModernRecoveryKeyForAccount:(id)account;
- (id)hasSOSActiveDeviceForAccount:(id)account;
- (id)hearbeatTokenForAccount:(id)account;
- (id)hearbeatTokenForAccount:(id)account error:(id *)error;
- (id)iCloudAccountForAltDSID:(id)d;
- (id)iCloudAccountForAppleID:(id)d;
- (id)idmsWalrusStatusForAccount:(id)account;
- (id)inactiveiCloudPrivateEmailCount;
- (id)inactiveiCloudPrivateEmailCountForAccount:(id)account;
- (id)isEligibleToMigrateToChildForAccount:(id)account;
- (id)isSOSNeededForAccount:(id)account;
- (id)isSilentBurnCDPRepairEnabledForAccount:(id)account;
- (id)isSilentEscrowRecordRepairEnabledForAccount:(id)account;
- (id)isSilentEscrowRecordRepairEnabledForAccountV2:(id)v2;
- (id)lastSettingsRedirectDateForAccount:(id)account;
- (id)loginHandlesForAccount:(id)account;
- (id)managedOrganizationNameForAccount:(id)account;
- (id)markedForSignOutForAccount:(id)account;
- (id)masterTokenForAccount:(id)account;
- (id)mostRecentlyUsedAuthKitAccount;
- (id)nextLivenessNonce:(id)nonce;
- (id)notificationEmailForAccount:(id)account;
- (id)passkeyEligibleForAccount:(id)account;
- (id)passkeyPresentForAccount:(id)account;
- (id)passkeyRegistrationAttemptDateForAccount:(id)account;
- (id)passkeysDeletionAttemptDateForAccount:(id)account;
- (id)passkeysInKeychainCountForAccount:(id)account;
- (id)passwordResetTokenBackupForAccount:(id)account;
- (id)passwordResetTokenBackupForAccount:(id)account error:(id *)error;
- (id)passwordResetTokenForAccount:(id)account;
- (id)passwordResetTokenForAccount:(id)account error:(id *)error;
- (id)personaUniqueStringForAltDSID:(id)d;
- (id)previousAccountInfoRefreshDateForAccount:(id)account;
- (id)primaryAuthKitAccount;
- (id)primaryEmailAddressForAccount:(id)account;
- (id)primaryiCloudAccount;
- (id)reachableEmailAddressesForAccount:(id)account;
- (id)renewDeviceSessionIDForAccount:(id)account;
- (id)securityKeysForAccount:(id)account;
- (id)selectedAuthorizationEmailForAccount:(id)account;
- (id)serverExperimentalFeaturesForAccount:(id)account;
- (id)servicesUsingAccount:(id)account;
- (id)settingsServiceTokenForAccount:(id)account;
- (id)sharingGroupLastNotificationDateForAccount:(id)account;
- (id)telemetryDeviceSessionIDForAccount:(id)account;
- (id)tokenCreationDateWithIdentifier:(id)identifier forAccount:(id)account error:(id *)error;
- (id)tokenCreationTimeStampWithIdentifier:(id)identifier forAccount:(id)account error:(id *)error;
- (id)transportableAuthKitAccount:(id)account;
- (id)trustedPhoneNumbersForAccount:(id)account;
- (id)webAccessEnabledForAccount:(id)account;
- (int64_t)_serviceTypeForServiceNameString:(id)string;
- (int64_t)deviceRemovalReasonForAccount:(id)account;
- (unint64_t)accountImprovementOptInValueForAccount:(id)account;
- (unint64_t)authenticationModeForAccount:(id)account;
- (unint64_t)managedOrganizationTypeForAccount:(id)account;
- (unint64_t)numberOfApprovedRecoveryContactsForAltDSID:(id)d;
- (unint64_t)repairStateForAccount:(id)account;
- (unint64_t)securityLevelForAccount:(id)account;
- (unint64_t)signInPartitionForLivenessWithAltDSID:(id)d;
- (unint64_t)userAgeRangeForAccount:(id)account;
- (void)_clearRawPasswordForAccount:(id)account;
- (void)_removeAllRawPasswordCaches;
- (void)_removeTokenForKeys:(id)keys forAccount:(id)account;
- (void)_removeTokenKey:(id)key forAccount:(id)account;
- (void)_reportTokenWithName:(id)name forAccount:(id)account error:(id)error;
- (void)_reportTokenWithTelemetryID:(id)d account:(id)account telemetryFlowID:(id)iD error:(id)error;
- (void)_setTokenCreationTimeForToken:(id)token tokenID:(id)d account:(id)account credential:(id)credential;
- (void)_triggerSilentTTRFor:(unint64_t)for;
- (void)clearDeviceRemovalReasonFromAccount:(id)account;
- (void)removeAllPasswordResetTokens;
- (void)removeContinuationTokenForAccount:(id)account telemetryFlowID:(id)d error:(id)error;
- (void)removeMasterTokenForAccount:(id)account;
- (void)removePasswordResetTokenForAccount:(id)account telemetryFlowID:(id)d error:(id)error;
- (void)set3PRegulatoryOverride:(id)override forAccount:(id)account;
- (void)setADPCohort:(id)cohort forAccount:(id)account;
- (void)setAccount:(id)account inUse:(BOOL)use byService:(int64_t)service;
- (void)setActiveiCloudPrivateEmailCount:(id)count forAccount:(id)account;
- (void)setAdditionalInfo:(id)info forAccount:(id)account;
- (void)setAgeOfMajority:(id)majority forAccount:(id)account;
- (void)setAliases:(id)aliases forAccount:(id)account;
- (void)setAltDSID:(id)d forAccount:(id)account;
- (void)setAppleIDCountryCode:(id)code forAccount:(id)account;
- (void)setAskToBuy:(BOOL)buy forAccount:(id)account;
- (void)setAuthenticationMode:(unint64_t)mode forAccount:(id)account;
- (void)setAuthorizationUsed:(BOOL)used forAccount:(id)account;
- (void)setBeneficiary:(BOOL)beneficiary forAccount:(id)account;
- (void)setBeneficiaryInfo:(id)info forAccount:(id)account;
- (void)setBeneficiaryLastModified:(id)modified forAccount:(id)account;
- (void)setBeneficiaryListVersion:(id)version forAccount:(id)account;
- (void)setBirthYear:(id)year forAccount:(id)account;
- (void)setCanAttestAge:(id)age forAccount:(id)account;
- (void)setCanBeBeneficiary:(BOOL)beneficiary forAccount:(id)account;
- (void)setCanBeCustodian:(BOOL)custodian forAccount:(id)account;
- (void)setCanHaveBeneficiary:(BOOL)beneficiary forAccount:(id)account;
- (void)setCanHaveCustodian:(BOOL)custodian forAccount:(id)account;
- (void)setConfigDataVersion:(id)version forAccount:(id)account;
- (void)setConfigValue:(id)value forKey:(id)key forAccount:(id)account;
- (void)setConsentVersion:(id)version forAccount:(id)account;
- (void)setCredentialStorageOption:(unint64_t)option forAccount:(id)account;
- (void)setCustodianEnabled:(BOOL)enabled forAccount:(id)account;
- (void)setCustodianInfos:(id)infos forAccount:(id)account;
- (void)setCustodianLastModified:(id)modified forAccount:(id)account;
- (void)setCustodianListVersion:(id)version forAccount:(id)account;
- (void)setDSID:(id)d forAccount:(id)account;
- (void)setDeletedDevicesCacheExpiryOffset:(id)offset forAccount:(id)account;
- (void)setDemoAccount:(BOOL)account forAccount:(id)forAccount;
- (void)setDeviceListVersion:(id)version forAccount:(id)account;
- (void)setDeviceRemovalReason:(int64_t)reason onAccount:(id)account;
- (void)setFamilyName:(id)name forAccount:(id)account;
- (void)setFido:(BOOL)fido forAccount:(id)account;
- (void)setForwardingEmail:(id)email forAccount:(id)account;
- (void)setGivenName:(id)name forAccount:(id)account;
- (void)setGroupKitEligibility:(id)eligibility forAccount:(id)account;
- (void)setHasMDM:(BOOL)m forAccount:(id)account;
- (void)setHasModernRecoveryKey:(BOOL)key forAccount:(id)account;
- (void)setHasSOSActiveDevice:(BOOL)device forAccount:(id)account;
- (void)setIdmsWalrusStatus:(id)status forAccount:(id)account;
- (void)setInactiveiCloudPrivateEmailCount:(id)count forAccount:(id)account;
- (void)setIsEligibleForSafetyScreen:(BOOL)screen forAccount:(id)account;
- (void)setIsEligibleToMigrateToChild:(id)child forAccount:(id)account;
- (void)setIsNotificationEmailAvailable:(BOOL)available forAccount:(id)account;
- (void)setIsProximityAuthEligible:(BOOL)eligible forAccount:(id)account;
- (void)setIsSiwaEnabled:(BOOL)enabled forChildAccount:(id)account;
- (void)setLastSettingsRedirectDate:(id)date forAccount:(id)account;
- (void)setLoginHandles:(id)handles forAccount:(id)account;
- (void)setMDMInformationRequired:(BOOL)required forAccount:(id)account;
- (void)setManagedOrganizationName:(id)name forAccount:(id)account;
- (void)setManagedOrganizationType:(unint64_t)type forAccount:(id)account;
- (void)setMarkedForSignOut:(BOOL)out forAccount:(id)account;
- (void)setNextLivenessNonce:(id)nonce nonce:(id)a4;
- (void)setNotificationEmail:(id)email forAccount:(id)account;
- (void)setPasscodeAuth:(BOOL)auth forAccount:(id)account;
- (void)setPasscodeAuthEnabled:(BOOL)enabled forAccount:(id)account;
- (void)setPasskeyEligible:(BOOL)eligible forAccount:(id)account;
- (void)setPasskeyPresent:(BOOL)present forAccount:(id)account;
- (void)setPasskeyRegistrationAttemptDateForAccount:(id)account forAccount:(id)forAccount;
- (void)setPasskeysDeletionAttemptDate:(id)date forAccount:(id)account;
- (void)setPasskeysInKeychainCount:(id)count forAccount:(id)account;
- (void)setPendingDOB:(id)b forAccount:(id)account;
- (void)setPhoneAsAppleID:(BOOL)d forAccount:(id)account;
- (void)setPiggybackingApprovalEligible:(BOOL)eligible forAccount:(id)account;
- (void)setPreviousAccountInfoRefreshDate:(id)date forAccount:(id)account;
- (void)setPrimaryEmailAddress:(id)address forAccount:(id)account;
- (void)setPrivateAttestationEnabled:(BOOL)enabled forAccount:(id)account;
- (void)setReachableEmailAddresses:(id)addresses forAccount:(id)account;
- (void)setRepairState:(unint64_t)state forAccount:(id)account;
- (void)setSOSNeeded:(BOOL)needed forAccount:(id)account;
- (void)setSecurityKeys:(id)keys forAccount:(id)account;
- (void)setSecurityLevel:(unint64_t)level forAccount:(id)account;
- (void)setSelectedAuthorizationEmail:(id)email forAccount:(id)account;
- (void)setSelectedPrivateEmail:(BOOL)email forAccount:(id)account;
- (void)setServerExperimentalFeatures:(id)features forAccount:(id)account;
- (void)setSharingGroupLastNotificationDate:(id)date forAccount:(id)account;
- (void)setSignOutInProgress:(id)progress forAccount:(id)account;
- (void)setSilentBurnCDPRepairEnabled:(id)enabled forAccount:(id)account;
- (void)setSilentEscrowRecordRepairEnabled:(id)enabled forAccount:(id)account;
- (void)setSilentEscrowRecordRepairEnabledV2:(id)v2 forAccount:(id)account;
- (void)setTelemetryDeviceSessionID:(id)d forAccount:(id)account;
- (void)setToken:(id)token tokenID:(id)d account:(id)account credential:(id)credential;
- (void)setTrustedPhoneNumbers:(id)numbers forAccount:(id)account;
- (void)setUserAgeRange:(unint64_t)range forAccount:(id)account;
- (void)setUserIsSenior:(BOOL)senior forAccount:(id)account;
- (void)setUserUnderage:(BOOL)underage forAccount:(id)account;
- (void)setVerifiedPrimaryEmail:(BOOL)email forAccount:(id)account;
- (void)setWebAccessEnabled:(BOOL)enabled forAccount:(id)account;
- (void)updateAccountAccessTelemetryOptInTimestampForAccount:(id)account withOptIn:(BOOL)in;
- (void)updateAuthModeTimestampForAccount:(id)account;
- (void)updateSatoriWarmUpTimestampForAccount:(id)account;
- (void)updateUsername:(id)username forAccountsWithAltDSID:(id)d;
- (void)updateVerifiedEmail:(BOOL)email forAccountWithAltDSID:(id)d;
@end

@implementation AKAccountManager

+ (AKAccountManager)sharedInstance
{
  if (+[AKAccountManager isAccountsFrameworkAvailable])
  {
    v5 = &sharedInstance_onceToken_1;
    location = 0;
    objc_storeStrong(&location, &__block_literal_global_22);
    if (*v5 != -1)
    {
      dispatch_once(v5, location);
    }

    objc_storeStrong(&location, 0);
    v3 = MEMORY[0x1E69E5928](sharedInstance_sharedInstance_1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __34__AKAccountManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AKAccountManager);
  v1 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (AKAccountManager)init
{
  v15 = a2;
  v16 = 0;
  v14.receiver = self;
  v14.super_class = AKAccountManager;
  v16 = [(AKAccountManager *)&v14 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v2 = objc_alloc_init(AKAccountStore);
    accountStore = v16->_accountStore;
    v16->_accountStore = v2;
    MEMORY[0x1E69E5920](accountStore);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AKAccountManagerQueue", v12);
    accountQueue = v16->_accountQueue;
    v16->_accountQueue = v4;
    MEMORY[0x1E69E5920](accountQueue);
    MEMORY[0x1E69E5920](v12);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("AKAccountManagerQueue.read.write", v13);
    serialQueue = v16->_serialQueue;
    v16->_serialQueue = v6;
    MEMORY[0x1E69E5920](serialQueue);
    MEMORY[0x1E69E5920](v13);
    v16->_authKitAccountTypeLock._os_unfair_lock_opaque = 0;
    v16->_appleIDAccountTypeLock._os_unfair_lock_opaque = 0;
    v16->_iCloudAccountTypeLock._os_unfair_lock_opaque = 0;
    v16->_iTunesAccountTypeLock._os_unfair_lock_opaque = 0;
    v16->_protoAccountTypeLock._os_unfair_lock_opaque = 0;
    v16->_accountTypeCacheLock._os_unfair_lock_opaque = 0;
    v16->_fetchAccountsLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    accountTypeCache = v16->_accountTypeCache;
    v16->_accountTypeCache = dictionary;
    MEMORY[0x1E69E5920](accountTypeCache);
  }

  v11 = MEMORY[0x1E69E5928](v16);
  objc_storeStrong(&v16, 0);
  return v11;
}

- (id)_iCloudAccounts
{
  iCloudAccountType = [(AKAccountManager *)self iCloudAccountType];
  v5 = [AKAccountManager _fetchAllAccountsWithType:"_fetchAllAccountsWithType:error:" error:?];
  MEMORY[0x1E69E5920](iCloudAccountType);

  return v5;
}

- (id)primaryAuthKitAccount
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [(AKAccountManager *)self altDSIDforPrimaryiCloudAccount];
  v3 = [(AKAccountManager *)selfCopy authKitAccountWithAltDSID:v4[0] error:?];
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)altDSIDforPrimaryiCloudAccount
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAccountManager *)self primaryiCloudAccount];
  if (location[0])
  {
    v6 = [(AKAccountManager *)selfCopy altDSIDForAccount:location[0]];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (id)primaryiCloudAccount
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAccountManager *)self _iCloudAccounts];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](location[0]);
  v9 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      if ([(AKAccountManager *)selfCopy isPrimaryiCloudAccount:v12])
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = MEMORY[0x1E69E5928](v12);
    v10 = 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  MEMORY[0x1E69E5920](obj);
  if (!v10)
  {
    v15 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v2 = v15;

  return v2;
}

- (ACAccountType)iCloudAccountType
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->_iCloudAccountType)
  {
    os_unfair_lock_lock(&self->_iCloudAccountTypeLock);
    if (!self->_iCloudAccountType)
    {
      v2 = [(AKAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959800] error:0];
      iCloudAccountType = self->_iCloudAccountType;
      self->_iCloudAccountType = v2;
      MEMORY[0x1E69E5920](iCloudAccountType);
    }

    os_unfair_lock_unlock(&self->_iCloudAccountTypeLock);
  }

  *MEMORY[0x1E69E9840];
  v4 = self->_iCloudAccountType;

  return v4;
}

- (ACAccountType)protoAccountType
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  if (!self->_protoAccountType)
  {
    os_unfair_lock_lock(&selfCopy->_protoAccountTypeLock);
    if (!selfCopy->_protoAccountType)
    {
      location[0] = 0;
      accountStore = selfCopy->_accountStore;
      v3 = *MEMORY[0x1E6959830];
      v8 = 0;
      v7 = [(AKAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v3 error:&v8];
      objc_storeStrong(location, v8);
      protoAccountType = selfCopy->_protoAccountType;
      selfCopy->_protoAccountType = v7;
      MEMORY[0x1E69E5920](protoAccountType);
      objc_storeStrong(location, 0);
    }

    os_unfair_lock_unlock(&selfCopy->_protoAccountTypeLock);
  }

  *MEMORY[0x1E69E9840];
  v5 = selfCopy->_protoAccountType;

  return v5;
}

- (BOOL)shieldSignInOrCreateFlows
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16[1] = a2;
  if ([(AKAccountManager *)self _ageAttestationPhase1FeatureRestricted])
  {
    v16[0] = 0;
    v14 = 0;
    v5 = [(AKAccountManager *)selfCopy _protoAccountWithError:&v14];
    objc_storeStrong(v16, v14);
    v15 = v5;
    domain = [v16[0] domain];
    v7 = 0;
    if ([domain isEqualToString:*MEMORY[0x1E6959970]])
    {
      v7 = [v16[0] code] == 9;
    }

    MEMORY[0x1E69E5920](domain);
    if (v7)
    {
      v13 = _AKLogSystem();
      v12 = 17;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        log = v13;
        type = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_fault_impl(&dword_193225000, log, type, "Client does not have access to DCA account type, falling back on authentication controller", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v10 = objc_alloc_init(AKAppleIDAuthenticationController);
      v18 = [(AKAppleIDAuthenticationController *)v10 shieldSignInOrCreateFlowsWithError:0];
      v9 = 1;
      objc_storeStrong(&v10, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, v15, v16[0]);
        _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Fetched proto account: %@ with error: %@", v19, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      v18 = [v15 proto_ageRange] == 1;
      v9 = 1;
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(v16, 0);
  }

  else
  {
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)_ageAttestationPhase1FeatureRestricted
{
  v3 = +[AKFeatureManager sharedManager];
  isAgeAttestationPhase1Enabled = [v3 isAgeAttestationPhase1Enabled];
  MEMORY[0x1E69E5920](v3);
  return isAgeAttestationPhase1Enabled;
}

- (id)altDSIDForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"altDSID"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (id)telemetryDeviceSessionIDForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  if (location[0])
  {
    if ([(AKAccountManager *)selfCopy accountIdentifiableTelemetryForAccount:location[0]])
    {
      v12 = [(AKAccountManager *)selfCopy _telemetryDeviceSessionIDForAccount:location[0]];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_193225000, log, type, "Attempting to fetch device session ID without an account", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    v12 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v12;

  return v3;
}

- (id)_telemetryDeviceSessionIDForAccount:(id)account
{
  v8 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = [location[0] accountPropertyForKey:@"telemetryDeviceSessionID"];
  if (v5)
  {
    v7 = MEMORY[0x1E69E5928](v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E5928](@"device_session_id_missing");
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v7;

  return v3;
}

- (id)appleAccountConsentVersionForAccount:(id)account
{
  v12 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  if (location[0])
  {
    v11 = [location[0] accountPropertyForKey:@"X-Apple-I-PrivacyConsent-Version"];
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_193225000, log, type, "Attempting to fetch consent version without an account", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v11;

  return v3;
}

- (id)renewDeviceSessionIDForAccount:(id)account
{
  v31 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  if (location[0])
  {
    v9 = [(AKAccountManager *)selfCopy telemetryDeviceSessionIDForAccount:location[0]];
    v10 = [v9 isEqualToString:@"device_session_id_missing"];
    MEMORY[0x1E69E5920](v9);
    if (v10)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      MEMORY[0x1E69E5920](uUID);
      [(AKAccountManager *)selfCopy setTelemetryDeviceSessionID:uUIDString forAccount:location[0]];
      v17 = _AKLogSystem();
      v16 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v30, uUIDString);
        _os_log_debug_impl(&dword_193225000, v17, v16, "Created a new device session id: %@", v30, 0xCu);
      }

      objc_storeStrong(&v17, 0);
      v15 = 0;
      obj = 0;
      v5 = [(AKAccountManager *)selfCopy saveAccount:location[0] error:&obj];
      objc_storeStrong(&v15, obj);
      if (!v5)
      {
        oslog = _AKLogSystem();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v29, v15);
          _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to save account after renewing device session ID: %@", v29, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      v28 = MEMORY[0x1E69E5928](uUIDString);
      v22 = 1;
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&uUIDString, 0);
    }

    else
    {
      v21 = _AKLogSystem();
      v20 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v7 = v21;
        v8 = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_error_impl(&dword_193225000, v7, v8, "Attempting to renew device session ID when it is not missing. Not permitted.", v19, 2u);
      }

      objc_storeStrong(&v21, 0);
      v28 = 0;
      v22 = 1;
    }
  }

  else
  {
    v25 = _AKLogSystem();
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_error_impl(&dword_193225000, log, type, "Attempting to renew device session ID without an account", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v28 = 0;
    v22 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v28;

  return v3;
}

- (BOOL)accountIsSignedIntoServices:(id)services
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, services);
  v6 = +[AKAccountManager sharedInstance];
  v4 = [(AKAccountManager *)v6 servicesUsingAccount:location[0]];
  aaf_hasObjects = [v4 aaf_hasObjects];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return aaf_hasObjects;
}

- (BOOL)accountAccessTelemetryOptInForAccount:(id)account
{
  v20 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v8 = +[AKConfiguration sharedConfiguration];
  shouldEnableTelemetryOptIn = [v8 shouldEnableTelemetryOptIn];
  MEMORY[0x1E69E5920](v8);
  v17 = shouldEnableTelemetryOptIn == 1;
  if (shouldEnableTelemetryOptIn == 1)
  {
    v16 = _AKLogSystem();
    v15 = 2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_debug_impl(&dword_193225000, log, type, "Telemetry Opt-In Override Enabled, approving Device Session ID vending...", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }

  v12 = 0;
  v10 = 0;
  bOOLValue = 1;
  if (!v17)
  {
    v4 = objc_opt_class();
    v13 = [location[0] accountPropertyForKey:@"com.apple.idms.config.privacy.appleid.data.access"];
    v12 = 1;
    v11 = _AKSafeCast_8(v4, v13);
    v10 = 1;
    bOOLValue = [v11 BOOLValue];
  }

  v19 = bOOLValue & 1;
  if (v10)
  {
    MEMORY[0x1E69E5920](v11);
  }

  if (v12)
  {
    MEMORY[0x1E69E5920](v13);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v19 & 1;
}

- (BOOL)accountImprovementOptInForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [(AKAccountManager *)selfCopy accountImprovementOptInValueForAccount:location[0]]== 1;
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)accountImprovementOptInValueForAccount:(id)account
{
  v19 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v9 = +[AKConfiguration sharedConfiguration];
  shouldEnableAccountImprovementOptIn = [v9 shouldEnableAccountImprovementOptIn];
  MEMORY[0x1E69E5920](v9);
  v16 = shouldEnableAccountImprovementOptIn == 1;
  if (shouldEnableAccountImprovementOptIn == 1)
  {
    v15 = _AKLogSystem();
    v14 = 2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      log = v15;
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_debug_impl(&dword_193225000, log, type, "Account Improvement Opt-In Override Enabled, approving Device Session ID vending...", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    unsignedIntegerValue = 1;
    v12 = 1;
  }

  else
  {
    v6 = [location[0] accountPropertyForKey:@"com.apple.idms.config.privacy.appleaccount.access"];
    MEMORY[0x1E69E5920](v6);
    if (v6)
    {
      v5 = objc_opt_class();
      v4 = [location[0] accountPropertyForKey:@"com.apple.idms.config.privacy.appleaccount.access"];
      v11 = _AKSafeCast_8(v5, v4);
      MEMORY[0x1E69E5920](v4);
      unsignedIntegerValue = [v11 unsignedIntegerValue];
      v12 = 1;
      objc_storeStrong(&v11, 0);
    }

    else
    {
      unsignedIntegerValue = 2;
      v12 = 1;
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (BOOL)accountIdentifiableTelemetryForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = 1;
  if (![(AKAccountManager *)selfCopy accountAccessTelemetryOptInForAccount:location[0]])
  {
    v4 = [(AKAccountManager *)selfCopy accountImprovementOptInForAccount:location[0]];
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)setInactiveiCloudPrivateEmailCount:(id)count forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, count);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"inActiveHMECount"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setActiveiCloudPrivateEmailCount:(id)count forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, count);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"activeHMECount"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setTelemetryDeviceSessionID:(id)d forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"telemetryDeviceSessionID"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setConsentVersion:(id)version forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"X-Apple-I-PrivacyConsent-Version"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)setAccountAccessTelemetryOptIn:(BOOL)in forAccount:(id)account error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v31 = a2;
  inCopy = in;
  location = 0;
  objc_storeStrong(&location, account);
  errorCopy = error;
  v13 = [MEMORY[0x1E696AD98] numberWithBool:inCopy];
  stringValue = [v13 stringValue];
  MEMORY[0x1E69E5920](v13);
  [location setAccountProperty:stringValue forKey:@"com.apple.idms.config.privacy.appleid.data.access"];
  v25 = 0;
  v12 = 0;
  if (inCopy)
  {
    v26 = [location accountPropertyForKey:@"telemetryDeviceSessionID"];
    v25 = 1;
    v12 = v26 == 0;
  }

  if (v25)
  {
    MEMORY[0x1E69E5920](v26);
  }

  if (v12)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    MEMORY[0x1E69E5920](uUID);
    [(AKAccountManager *)selfCopy setTelemetryDeviceSessionID:uUIDString forAccount:location];
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v33, uUIDString);
      _os_log_debug_impl(&dword_193225000, v23, v22, "Telemetry Opt-In detected, but we didn't have an existing device session ID, creating... %@", v33, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&uUIDString, 0);
  }

  objc_storeStrong(&stringValue, 0);
  [(AKAccountManager *)selfCopy updateAccountAccessTelemetryOptInTimestampForAccount:location withOptIn:inCopy];
  v21 = [(AKAccountManager *)selfCopy saveAccount:location error:errorCopy];
  if (v21)
  {
    v17 = _AKLogSystem();
    v16 = 2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v7 = v17;
      v8 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_debug_impl(&dword_193225000, v7, v8, "Successfully set account telemetry opt-in", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v9 = v20;
      v10 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_debug_impl(&dword_193225000, v9, v10, "Failed to set account telemetry opt-in", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
  }

  v6 = v21;
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)setAccountImprovementOptIn:(BOOL)in forAccount:(id)account error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v23 = a2;
  inCopy = in;
  location = 0;
  objc_storeStrong(&location, account);
  errorCopy = error;
  v19 = [MEMORY[0x1E696AD98] numberWithBool:inCopy];
  [location setAccountProperty:v19 forKey:@"com.apple.idms.config.privacy.appleaccount.access"];
  v17 = 0;
  v8 = 0;
  if (inCopy)
  {
    v18 = [location accountPropertyForKey:@"telemetryDeviceSessionID"];
    v17 = 1;
    v8 = v18 == 0;
  }

  if (v17)
  {
    MEMORY[0x1E69E5920](v18);
  }

  if (v8)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    MEMORY[0x1E69E5920](uUID);
    [(AKAccountManager *)selfCopy setTelemetryDeviceSessionID:uUIDString forAccount:location];
    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v27, uUIDString);
      _os_log_debug_impl(&dword_193225000, v15, v14, "Account Improvement Telemetry Opt-In detected, but we didn't have an existing device session ID, creating... %@", v27, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&uUIDString, 0);
  }

  objc_storeStrong(&v19, 0);
  v13 = [(AKAccountManager *)selfCopy saveAccount:location error:errorCopy];
  if (v13)
  {
    v10 = _AKLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v25, inCopy);
      _os_log_debug_impl(&dword_193225000, v10, OS_LOG_TYPE_DEBUG, "Successfully set account improvement program opt-in to %{BOOL}d", v25, 8u);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v26, inCopy);
      _os_log_debug_impl(&dword_193225000, v12, v11, "Failed to set account improvement program opt-in to %{BOOL}d", v26, 8u);
    }

    objc_storeStrong(&v12, 0);
  }

  v6 = v13;
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)resetAccountImprovementOptInForAccount:(id)account error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  errorCopy = error;
  [location[0] setAccountProperty:0 forKey:@"com.apple.idms.config.privacy.appleaccount.access"];
  v17 = [(AKAccountManager *)selfCopy saveAccount:location[0] error:error];
  if (v17)
  {
    v13 = _AKLogSystem();
    v12 = 2;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v6 = v13;
      v7 = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_debug_impl(&dword_193225000, v6, v7, "Successfully reset account improvement program opt-in", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_debug_impl(&dword_193225000, log, type, "Failed to reset account improvement program opt-in", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }

  v5 = v17;
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v5;
}

- (void)updateAccountAccessTelemetryOptInTimestampForAccount:(id)account withOptIn:(BOOL)in
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  if (in)
  {
    v5 = location[0];
    date = [MEMORY[0x1E695DF00] date];
    [v5 setAccountProperty:? forKey:?];
    MEMORY[0x1E69E5920](date);
  }

  else
  {
    [location[0] setAccountProperty:0 forKey:@"DataAccessAnalyticsOptInTimeStamp"];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)accountAccessTelemetryOptInDateForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"DataAccessAnalyticsOptInTimeStamp"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (id)configDataVersionForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"configDataVersion"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setConfigDataVersion:(id)version forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"configDataVersion"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)configValue:(id)value forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v7 = 0;
  objc_storeStrong(&v7, account);
  v9 = [v7 accountPropertyForKey:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v9;

  return v4;
}

- (void)setConfigValue:(id)value forKey:(id)key forAccount:(id)account
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v8 = 0;
  objc_storeStrong(&v8, key);
  v7 = 0;
  objc_storeStrong(&v7, account);
  [v7 setAccountProperty:location[0] forKey:v8];
  [(AKAccountManager *)selfCopy saveAccount:v7 error:0];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setAltDSID:(id)d forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v10 = 0;
  objc_storeStrong(&v10, account);
  if (location[0])
  {
    [v10 setAccountProperty:location[0] forKey:@"altDSID"];
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_193225000, log, type, "Will not allow nil altDSID to be set!", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)DSIDForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"DSID"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setDSID:(id)d forAccount:(id)account
{
  v19 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, account);
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v16 setAccountProperty:location[0] forKey:@"DSID"];
      v12 = 0;
    }

    else
    {
      v11 = _AKLogSystem();
      v10 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        aClass = objc_opt_class();
        v4 = NSStringFromClass(aClass);
        v9 = MEMORY[0x1E69E5928](v4);
        __os_log_helper_16_2_1_8_64(v18, v9);
        _os_log_error_impl(&dword_193225000, v11, v10, "DSID *must* be an NSNumber, but we got: %@", v18, 0xCu);
        MEMORY[0x1E69E5920](v4);
        objc_storeStrong(&v9, 0);
      }

      objc_storeStrong(&v11, 0);
      v12 = 1;
    }
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log = v15;
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_193225000, log, type, "Will not allow nil DSID to be set!", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    v12 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)combinedAliasesAndReachableEmailsForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v15 = [(AKAccountManager *)selfCopy aliasesForAccount:location[0]];
  v14 = [(AKAccountManager *)selfCopy reachableEmailAddressesForAccount:location[0]];
  array = [MEMORY[0x1E695DF70] array];
  v4 = v15;
  v7[1] = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __64__AKAccountManager_combinedAliasesAndReachableEmailsForAccount___block_invoke;
  v11 = &unk_1E73D69C0;
  v12 = MEMORY[0x1E69E5928](array);
  [v4 enumerateObjectsUsingBlock:?];
  v5 = v14;
  v7[0] = MEMORY[0x1E69E5928](array);
  [v5 enumerateObjectsUsingBlock:?];
  v6 = [array copy];
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&array, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v6;
}

void __64__AKAccountManager_combinedAliasesAndReachableEmailsForAccount___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (![a1[4] containsObject:location[0]])
  {
    [a1[4] addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

void __64__AKAccountManager_combinedAliasesAndReachableEmailsForAccount___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (![a1[4] containsObject:location[0]])
  {
    [a1[4] addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)aliasesForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"aliases"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setAliases:(id)aliases forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, aliases);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"aliases"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)formattedUsernameForAccount:(id)account
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  username = [location[0] username];
  v5 = [AKUsernameFormatter formattedUsernameFromUsername:?];
  MEMORY[0x1E69E5920](username);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)updateVerifiedEmail:(BOOL)email forAccountWithAltDSID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v18 = a2;
  emailCopy = email;
  location = 0;
  objc_storeStrong(&location, d);
  v15 = [(AKAccountManager *)selfCopy authKitAccountWithAltDSID:location error:0];
  v4 = [(AKAccountManager *)selfCopy verifiedPrimaryEmailForAccount:v15];
  if (v4 == emailCopy)
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (emailCopy)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      __os_log_helper_16_2_2_8_64_8_64(v20, v15, v7);
      _os_log_impl(&dword_193225000, v8, OS_LOG_TYPE_DEFAULT, "Account %@ already updated to reflect email verified is %@.", v20, 0x16u);
    }

    objc_storeStrong(&v8, 0);
  }

  else
  {
    [(AKAccountManager *)selfCopy setVerifiedPrimaryEmail:emailCopy forAccount:v15];
    v14 = 0;
    obj = 0;
    [(AKAccountManager *)selfCopy saveAccount:v15 error:&obj];
    objc_storeStrong(&v14, obj);
    if (v14)
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        if (emailCopy)
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        __os_log_helper_16_2_3_8_64_8_64_8_64(v22, v5, v14, v15);
        _os_log_error_impl(&dword_193225000, oslog, type, "Failed to update verified email to %@ with error %@ after observing verified primary email for account %@", v22, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      v10 = _AKLogSystem();
      v9 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (emailCopy)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        __os_log_helper_16_2_2_8_64_8_64(v21, v6, v15);
        _os_log_impl(&dword_193225000, v10, v9, "Updated account %@ verified email to %@ after observing verified email followup tear down", v21, 0x16u);
      }

      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)updateUsername:(id)username forAccountsWithAltDSID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v10 = 0;
  objc_storeStrong(&v10, d);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_64_8_112_8_64(v13, location[0], 1752392040, v10);
    _os_log_impl(&dword_193225000, oslog, type, "Requested to update username to %@ for altDSID: %{mask.hash}@", v13, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  v7 = [(AKAccountManager *)selfCopy authKitAccountWithAltDSID:v10 error:0];
  if (v7 && [(AKAccountManager *)selfCopy _setUsername:location[0] forAccount:v7])
  {
    [(AKAccountManager *)selfCopy saveAccount:v7 error:0];
  }

  v6 = [(AKAccountManager *)selfCopy appleIDAccountWithAltDSID:v10];
  if (v6 && [(AKAccountManager *)selfCopy _setUsername:location[0] forAccount:v6])
  {
    [(AKAccountManager *)selfCopy saveAccount:v6 error:0];
  }

  v5 = [(AKAccountManager *)selfCopy iCloudAccountForAltDSID:v10];
  if (v5 && [(AKAccountManager *)selfCopy _setUsername:location[0] forAccount:v5])
  {
    [(AKAccountManager *)selfCopy saveAccount:v5 error:0];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)_setUsername:(id)username forAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  v11 = 0;
  objc_storeStrong(&v11, account);
  v9 = 0;
  v7 = 0;
  if (location[0])
  {
    v5 = location[0];
    username = [v11 username];
    v9 = 1;
    v7 = [v5 isEqualToString:?] == 0;
  }

  if (v9)
  {
    MEMORY[0x1E69E5920](username);
  }

  if (v7)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v14, v11);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Updating username for: %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [v11 setUsername:location[0]];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (id)primaryEmailAddressForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"primaryEmail"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setPrimaryEmailAddress:(id)address forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, address);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"primaryEmail"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)verifiedPrimaryEmailForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"vettedPrimaryEmail"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setVerifiedPrimaryEmail:(BOOL)email forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  emailCopy = email;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:emailCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)phoneAsAppleIDForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"phoneAsAppleID"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setPhoneAsAppleID:(BOOL)d forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  dCopy = d;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:dCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)userUnderAgeForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"isUnderage"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setUserUnderage:(BOOL)underage forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  underageCopy = underage;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:underageCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isEligibleForSafetyScreenForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"safetyScreenEligibility"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setIsEligibleForSafetyScreen:(BOOL)screen forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  screenCopy = screen;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:screenCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setPendingDOB:(id)b forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, b);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"pendingDOB"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)primaryiCloudAccountHasPendingDOB
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKAccountManager *)self primaryiCloudAccount];
  v4 = 0;
  v3 = 0;
  if (location[0])
  {
    v5 = [location[0] accountPropertyForKey:@"pendingDOB"];
    v4 = 1;
    v3 = v5 != 0;
  }

  if (v4)
  {
    MEMORY[0x1E69E5920](v5);
  }

  v7 = v3;
  objc_storeStrong(location, 0);
  return v7;
}

- (BOOL)isSiwaEnabledForChildAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"isSiwaEnabled"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setIsSiwaEnabled:(BOOL)enabled forChildAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  enabledCopy = enabled;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)userIsSeniorForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"isSenior"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setUserAgeRange:(unint64_t)range forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  rangeCopy = range;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:rangeCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (unint64_t)userAgeRangeForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"userAgeRange"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (void)setUserIsSenior:(BOOL)senior forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  seniorCopy = senior;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:seniorCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)demoAccountForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"demoAccount"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setDemoAccount:(BOOL)account forAccount:(id)forAccount
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  accountCopy = account;
  location = 0;
  objc_storeStrong(&location, forAccount);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:accountCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)ageOfMajorityForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"ageOfMajority"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setAgeOfMajority:(id)majority forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, majority);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"ageOfMajority"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)appleIDCountryCodeForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"appleIDCountryCode"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setAppleIDCountryCode:(id)code forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"appleIDCountryCode"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)authorizationUsedForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"appleIdSignInEnabled"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setAuthorizationUsed:(BOOL)used forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  usedCopy = used;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:usedCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)privateAttestationEnabledForAccount:(id)account
{
  v8 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = [location[0] accountPropertyForKey:@"privateAttestationEnabled"];
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v7 = bOOLValue != 0;
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setPrivateAttestationEnabled:(BOOL)enabled forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  enabledCopy = enabled;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isProximityAuthEligible:(id)eligible
{
  v8 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, eligible);
  v5 = [location[0] accountPropertyForKey:@"isProximityAuthEligible"];
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v7 = bOOLValue != 0;
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setIsProximityAuthEligible:(BOOL)eligible forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  eligibleCopy = eligible;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:eligibleCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)piggybackingApprovalEligible:(id)eligible
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, eligible);
  v4 = [location[0] accountPropertyForKey:@"pbae"];
  if (v4)
  {
    v6 = [v4 BOOLValue] & 1;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setPiggybackingApprovalEligible:(BOOL)eligible forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  eligibleCopy = eligible;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:eligibleCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)reachableEmailAddressesForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"reachableEmailAddresses"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setReachableEmailAddresses:(id)addresses forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, addresses);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"reachableEmailAddresses"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)givenNameForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"firstName"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setGivenName:(id)name forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"firstName"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)familyNameForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"lastName"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setFamilyName:(id)name forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"lastName"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)forwardingEmailForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"forwardingEmail"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setForwardingEmail:(id)email forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, email);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"forwardingEmail"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)selectedPrivateEmailForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"privateEmailSelection"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setSelectedPrivateEmail:(BOOL)email forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  emailCopy = email;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:emailCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)selectedAuthorizationEmailForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"authorizationEmailSelection"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setSelectedAuthorizationEmail:(id)email forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, email);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"authorizationEmailSelection"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)saveAccount:(id)account error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  errorCopy = error;
  v16 = 0;
  v14 = 0;
  v10 = [(AKAccountManager *)selfCopy _saveAccount:location[0] error:&v14];
  objc_storeStrong(&v16, v14);
  v15 = v10;
  if ([(AKAccountStore *)selfCopy->_accountStore isAccountDaemonConnectionError:v16])
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v20, location[0]);
      _os_log_impl(&dword_193225000, v13, v12, "First attempt saving account %@ failed, retrying once...", v20, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v16, 0);
    v11 = v16;
    v8 = [(AKAccountManager *)selfCopy _saveAccount:location[0] error:&v11];
    objc_storeStrong(&v16, v11);
    v15 = v8;
  }

  if (errorCopy && v16)
  {
    v7 = v16;
    v4 = v16;
    *errorCopy = v7;
  }

  v6 = v15;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)_saveAccount:(id)account error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  errorCopy = error;
  v29 = 0;
  v30 = &v29;
  v31 = 0x20000000;
  v32 = 32;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 838860800;
  v25 = 48;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v39, location[0]);
    _os_log_impl(&dword_193225000, v21, v20, "Saving account %@...", v39, 0xCu);
  }

  objc_storeStrong(&v21, 0);
  v8 = location[0];
  v13 = MEMORY[0x1E69E9820];
  v14 = -1073741824;
  v15 = 0;
  v16 = __39__AKAccountManager__saveAccount_error___block_invoke;
  v17 = &unk_1E73D69E8;
  v19[1] = &v29;
  v18 = MEMORY[0x1E69E5928](selfCopy);
  v19[0] = MEMORY[0x1E69E5928](location[0]);
  v19[2] = &v22;
  [AKAccountManager performWithinPersonaForAccount:v8 withBlock:&v13];
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v18, 0);
  if (v30[3])
  {
    v10 = _AKLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v37, location[0]);
      _os_log_impl(&dword_193225000, v10, OS_LOG_TYPE_DEFAULT, "Saving of account %@ succeeed!", v37, 0xCu);
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v38, location[0], v23[5]);
      _os_log_error_impl(&dword_193225000, oslog, v11, "Could not save %@ due to %@", v38, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (errorCopy)
    {
      v7 = v23[5];
      v4 = v7;
      *errorCopy = v7;
    }
  }

  v6 = *(v30 + 24);
  _Block_object_dispose(&v22, 8);
  objc_storeStrong(&v28, 0);
  _Block_object_dispose(&v29, 8);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

uint64_t __39__AKAccountManager__saveAccount_error___block_invoke(uint64_t a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v6 = [*(a1 + 32) store];
  v1 = *(a1 + 40);
  location = (*(*(a1 + 56) + 8) + 40);
  v7[0] = *location;
  v5 = [v6 saveVerifiedAccount:v1 error:v7];
  objc_storeStrong(location, v7[0]);
  *(*(*(a1 + 48) + 8) + 24) = v5;
  return MEMORY[0x1E69E5920](v6);
}

- (unint64_t)securityLevelForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"security-level"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (void)setSecurityLevel:(unint64_t)level forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  levelCopy = level;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:levelCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setCredentialStorageOption:(unint64_t)option forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  optionCopy = option;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:optionCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)mdmInformationRequiredForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = objc_opt_class();
  v4 = [location[0] accountPropertyForKey:@"mdm-info-required"];
  v6 = _AKSafeCast_8(v5, v4);
  MEMORY[0x1E69E5920](v4);
  v8 = [v6 BOOLValue] & 1;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (void)setMDMInformationRequired:(BOOL)required forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  requiredCopy = required;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:requiredCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setDeviceRemovalReason:(int64_t)reason onAccount:(id)account
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v14 = a2;
  reasonCopy = reason;
  location = 0;
  objc_storeStrong(&location, account);
  v11 = _AKLogSystem();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v7 = reasonCopy;
    username = [location username];
    __os_log_helper_16_2_2_8_0_8_64(v17, v7, username);
    _os_log_impl(&dword_193225000, v11, v10, "AKAccountManager setDeviceRemovalReason:%ld onAccount:%@", v17, 0x16u);
    MEMORY[0x1E69E5920](username);
  }

  objc_storeStrong(&v11, 0);
  v9 = [(AKAccountManager *)selfCopy deviceRemovalReasonForAccount:location];
  if (v9 == -1)
  {
    v5 = location;
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:reasonCopy];
    [v5 setAccountProperty:? forKey:?];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_2_8_0_8_0(v16, v9, reasonCopy);
      _os_log_error_impl(&dword_193225000, v8, OS_LOG_TYPE_ERROR, "AKAccountManager setDeviceRemovalReason, there is already a removal reason set! Old reason: %ld. New reason: %ld", v16, 0x16u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)clearDeviceRemovalReasonFromAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v7 = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_193225000, log, type, "AKAccountManager clearDeviceRemovalReasonFromAccount", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  [location[0] setAccountProperty:&unk_1F07B4EC8 forKey:@"AKRemoteDeviceRemovalReasonKey"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (int64_t)deviceRemovalReasonForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"AKRemoteDeviceRemovalReasonKey"];
  if (v6)
  {
    v5 = objc_opt_class();
    v4 = _AKSafeCast_8(v5, v6);
    integerValue = [v4 integerValue];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    integerValue = -1;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return integerValue;
}

- (BOOL)shouldPerformSatoriWarmupVerificationForAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v12 = 0;
  v11 = [location[0] accountPropertyForKey:@"WarmUpVerificationTimeStamp"];
  if (v11)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v11];
    v8 = v3;
    MEMORY[0x1E69E5920](date);
    v10 = v8;
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      __os_log_helper_16_2_1_8_64(v14, v6);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Last Satori warmup occured %@ seconds ago", v14, 0xCu);
      MEMORY[0x1E69E5920](v6);
    }

    objc_storeStrong(&oslog, 0);
    v12 = v10 >= 3600.0;
  }

  else
  {
    v12 = 1;
  }

  v5 = v12;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v5;
}

- (void)updateSatoriWarmUpTimestampForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = location[0];
  date = [MEMORY[0x1E695DF00] date];
  [v4 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](date);
  [(AKAccountManager *)selfCopy saveAccount:location[0] error:0];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)needsRepairForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"repair-state"];
  v6 = [v4 integerValue] > 1;
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)repairStateForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"repair-state"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (void)setRepairState:(unint64_t)state forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:stateCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)webAccessEnabledForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"webAccessEnabled"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setWebAccessEnabled:(BOOL)enabled forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  enabledCopy = enabled;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)serverExperimentalFeaturesForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"serverExperimentalFeatures"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setServerExperimentalFeatures:(id)features forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"serverExperimentalFeatures"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)markedForSignOutForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"markedForSignOut"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setMarkedForSignOut:(BOOL)out forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  outCopy = out;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:outCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)hasSOSActiveDeviceForAccount:(id)account
{
  v13 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = +[AKConfiguration sharedConfiguration];
  forceHasSOSActiveDevice = [v6 forceHasSOSActiveDevice];
  MEMORY[0x1E69E5920](v6);
  v10 = forceHasSOSActiveDevice;
  if (forceHasSOSActiveDevice)
  {
    if (v10 == -1)
    {
      v3 = &unk_1F07B4EE0;
    }

    else
    {
      v3 = &unk_1F07B4EF8;
    }

    v12 = MEMORY[0x1E69E5928](v3);
    v9 = 1;
  }

  else
  {
    v8 = [location[0] accountPropertyForKey:@"SOSCompatibilityOptInNeeded"];
    v12 = MEMORY[0x1E69E5928](v8);
    v9 = 1;
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v12;

  return v4;
}

- (void)setHasSOSActiveDevice:(BOOL)device forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  deviceCopy = device;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:deviceCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)isSOSNeededForAccount:(id)account
{
  v13 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = +[AKConfiguration sharedConfiguration];
  forceSOSNeeded = [v6 forceSOSNeeded];
  MEMORY[0x1E69E5920](v6);
  v10 = forceSOSNeeded;
  if (forceSOSNeeded)
  {
    if (v10 == -1)
    {
      v3 = &unk_1F07B4EE0;
    }

    else
    {
      v3 = &unk_1F07B4EF8;
    }

    v12 = MEMORY[0x1E69E5928](v3);
    v9 = 1;
  }

  else
  {
    v8 = [location[0] accountPropertyForKey:@"SOSNeeded"];
    v12 = MEMORY[0x1E69E5928](v8);
    v9 = 1;
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v12;

  return v4;
}

- (void)setSOSNeeded:(BOOL)needed forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  neededCopy = needed;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:neededCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)hasModernRecoveryKeyForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"hasRK"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setHasModernRecoveryKey:(BOOL)key forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  keyCopy = key;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:keyCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)get3PRegulatoryOverride:(id)override
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, override);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"3PRegulatoryOverride"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)set3PRegulatoryOverride:(id)override forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, override);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"3PRegulatoryOverride"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)adpCohortForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"adpCh"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (id)hearbeatTokenForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [(AKAccountManager *)selfCopy hearbeatTokenForAccount:location[0] error:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)continuationTokenForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [(AKAccountManager *)selfCopy continuationTokenForAccount:location[0] error:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)passwordResetTokenForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [(AKAccountManager *)selfCopy passwordResetTokenForAccount:location[0] error:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)passwordResetTokenBackupForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [(AKAccountManager *)selfCopy passwordResetTokenBackupForAccount:location[0] error:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)hearbeatTokenForAccount:(id)account error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [(AKAccountManager *)selfCopy _tokenWithName:*MEMORY[0x1E69599A0] forAccount:location[0] error:error];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)continuationTokenForAccount:(id)account error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [(AKAccountManager *)selfCopy _tokenWithName:*MEMORY[0x1E6959948] forAccount:location[0] error:error];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)passwordResetTokenForAccount:(id)account error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [(AKAccountManager *)selfCopy _tokenWithName:*MEMORY[0x1E69599D8] forAccount:location[0] error:error];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)passwordResetTokenBackupForAccount:(id)account error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [(AKAccountManager *)selfCopy _tokenWithName:*MEMORY[0x1E69599D0] forAccount:location[0] error:error];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)allTokensForAccount:(id)account error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v21[1] = error;
  v21[0] = objc_opt_new();
  v20[0] = 0;
  obj = 0;
  v12 = [location[0] credentialWithError:&obj];
  objc_storeStrong(v20, obj);
  v19 = v12;
  keysForCredentialItems = [v12 keysForCredentialItems];
  memset(__b, 0, sizeof(__b));
  v10 = MEMORY[0x1E69E5928](keysForCredentialItems);
  v11 = [v10 countByEnumeratingWithState:__b objects:v24 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(__b[1] + 8 * v8);
      v14 = [v19 credentialItemForKey:v16];
      if ([v14 length])
      {
        [v21[0] setObject:v14 forKeyedSubscript:v16];
      }

      objc_storeStrong(&v14, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v10 countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v10);
  v23 = [v21[0] copy];
  objc_storeStrong(&keysForCredentialItems, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v20, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v23;

  return v4;
}

- (id)buildCredentialWithTokens:(id)tokens
{
  v18 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tokens);
  v15 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = [location[0] allKeys];
  v12 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v9);
      v5 = v15;
      v6 = [location[0] objectForKeyedSubscript:v14];
      [v5 setCredentialItem:? forKey:?];
      MEMORY[0x1E69E5920](v6);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  v4 = MEMORY[0x1E69E5928](v15);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (id)masterTokenForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = [(AKAccountManager *)selfCopy _tokenWithName:*MEMORY[0x1E6959A18] forAccount:location[0] error:0];
  if (v5)
  {
    v8 = [AKMasterToken tokenWithExternalizedVersionString:v5];
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  v3 = v8;

  return v3;
}

- (id)settingsServiceTokenForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  store = [(AKAccountManager *)selfCopy store];
  v6 = [(ACAccountStore *)store credentialForAccount:location[0] serviceID:@"com.apple.gs.appleid.auth"];
  MEMORY[0x1E69E5920](store);
  token = [v6 token];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return token;
}

- (void)removeMasterTokenForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  [(AKAccountManager *)selfCopy _removeTokenKey:*MEMORY[0x1E6959A18] forAccount:location[0]];
  objc_storeStrong(location, 0);
}

- (id)tokenCreationDateWithIdentifier:(id)identifier forAccount:(id)account error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v28 = 0;
  objc_storeStrong(&v28, account);
  errorCopy = error;
  v26 = _AKLogSystem();
  v25 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v33, location[0], v28);
    _os_log_debug_impl(&dword_193225000, v26, v25, "Fetching token creation date: %@ for account %@", v33, 0x16u);
  }

  objc_storeStrong(&v26, 0);
  if (v28)
  {
    v21 = [(AKAccountManager *)selfCopy _creationKeyForTokenWithName:location[0]];
    if (v21)
    {
      v17 = [(AKAccountManager *)selfCopy _tokenWithName:v21 forAccount:v28 error:errorCopy];
      v16 = 0;
      if (v17)
      {
        [v17 doubleValue];
        v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v6 / 1000.0];
        v8 = v16;
        v16 = v7;
        MEMORY[0x1E69E5920](v8);
      }

      v31 = MEMORY[0x1E69E5928](v16);
      v22 = 1;
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    else
    {
      v20 = _AKLogSystem();
      v19 = 2;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v11 = v20;
        v12 = v19;
        __os_log_helper_16_0_0(v18);
        _os_log_debug_impl(&dword_193225000, v11, v12, "Token creation key not found. Skipping fetching token creation date.", v18, 2u);
      }

      objc_storeStrong(&v20, 0);
      v31 = 0;
      v22 = 1;
    }

    objc_storeStrong(&v21, 0);
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v32, location[0]);
      _os_log_error_impl(&dword_193225000, v24, v23, "Nil account cannot possibly have a %@ token creation date!", v32, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    if (errorCopy)
    {
      v13 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7022];
      v5 = v13;
      *errorCopy = v13;
    }

    v31 = 0;
    v22 = 1;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v9 = v31;

  return v9;
}

- (id)tokenCreationTimeStampWithIdentifier:(id)identifier forAccount:(id)account error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v24 = 0;
  objc_storeStrong(&v24, account);
  errorCopy = error;
  v22 = _AKLogSystem();
  v21 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v29, location[0], v24);
    _os_log_debug_impl(&dword_193225000, v22, v21, "Fetching token creation date: %@ for account %@", v29, 0x16u);
  }

  objc_storeStrong(&v22, 0);
  if (v24)
  {
    v17 = [(AKAccountManager *)selfCopy _creationKeyForTokenWithName:location[0]];
    if (v17)
    {
      v13 = [(AKAccountManager *)selfCopy _tokenWithName:v17 forAccount:v24 error:errorCopy];
      v27 = MEMORY[0x1E69E5928](v13);
      v18 = 1;
      objc_storeStrong(&v13, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      v15 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v8 = oslog;
        v9 = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_debug_impl(&dword_193225000, v8, v9, "Token creation key not found. Skipping fetching token creation date.", v14, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v27 = 0;
      v18 = 1;
    }

    objc_storeStrong(&v17, 0);
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v28, location[0]);
      _os_log_error_impl(&dword_193225000, v20, v19, "Nil account cannot possibly have a %@ token creation date!", v28, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    if (errorCopy)
    {
      v10 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7022];
      v5 = v10;
      *errorCopy = v10;
    }

    v27 = 0;
    v18 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v6 = v27;

  return v6;
}

- (void)setToken:(id)token tokenID:(id)d account:(id)account credential:(id)credential
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  v13 = 0;
  objc_storeStrong(&v13, d);
  v12 = 0;
  objc_storeStrong(&v12, account);
  v11 = 0;
  objc_storeStrong(&v11, credential);
  v9 = v11;
  stringValue = [location[0] stringValue];
  [v9 setCredentialItem:? forKey:?];
  MEMORY[0x1E69E5920](stringValue);
  [(AKAccountManager *)selfCopy _setTokenCreationTimeForToken:location[0] tokenID:v13 account:v12 credential:v11];
  [v12 setCredential:v11];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_setTokenCreationTimeForToken:(id)token tokenID:(id)d account:(id)account credential:(id)credential
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  v34 = 0;
  objc_storeStrong(&v34, d);
  v33 = 0;
  objc_storeStrong(&v33, account);
  v32 = 0;
  objc_storeStrong(&v32, credential);
  if (v32)
  {
    v27 = [(AKAccountManager *)selfCopy _creationKeyForTokenWithName:v34];
    if (!v27)
    {
      v26 = _AKLogSystem();
      v25 = 2;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v11 = v26;
        v12 = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_debug_impl(&dword_193225000, v11, v12, "Token creation key not found. Skipping token creation time update.", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
      v28 = 1;
      goto LABEL_22;
    }

    if (!location[0])
    {
      [v32 setCredentialItem:0 forKey:v27];
      goto LABEL_21;
    }

    v23 = [(AKAccountManager *)selfCopy tokenCreationDateWithIdentifier:v34 forAccount:v33 error:0];
    creationDate = [location[0] creationDate];
    if (creationDate)
    {
      if (v23 && [creationDate compare:v23] != 1)
      {
        v20 = _AKLogSystem();
        v19 = 16;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v7 = v20;
          v8 = v19;
          __os_log_helper_16_0_0(v18);
          _os_log_error_impl(&dword_193225000, v7, v8, "Valid CK exists - Ignoring server response", v18, 2u);
        }

        objc_storeStrong(&v20, 0);
        v28 = 1;
LABEL_18:
        objc_storeStrong(&creationDate, 0);
        objc_storeStrong(&v23, 0);
        if (v28)
        {
LABEL_22:
          objc_storeStrong(&v27, 0);
          goto LABEL_23;
        }

LABEL_21:
        v28 = 0;
        goto LABEL_22;
      }

      creationDate2 = [location[0] creationDate];
      [creationDate2 timeIntervalSince1970];
      v10 = v6;
      MEMORY[0x1E69E5920](creationDate2);
      v21[1] = v10;
      v21[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&v10 * 1000.0];
      [v32 setCredentialItem:v21[0] forKey:v27];
      objc_storeStrong(v21, 0);
    }

    v28 = 0;
    goto LABEL_18;
  }

  v31 = _AKLogSystem();
  v30 = 2;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    log = v31;
    type = v30;
    __os_log_helper_16_0_0(v29);
    _os_log_debug_impl(&dword_193225000, log, type, "Credential is nil, skip token creation time update.", v29, 2u);
  }

  objc_storeStrong(&v31, 0);
  v28 = 1;
LABEL_23:
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (id)_creationKeyForTokenWithName:(id)name
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v5 = 0;
  if (location[0] == *MEMORY[0x1E6959948])
  {
    objc_storeStrong(&v5, @"continuation-key-creation");
  }

  else if (location[0] == *MEMORY[0x1E69599D8])
  {
    objc_storeStrong(&v5, @"password-reset-token-creation");
  }

  else if (location[0] == *MEMORY[0x1E69599A0])
  {
    objc_storeStrong(&v5, @"heartbeat-token-creation");
  }

  v4 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_tokenWithName:(id)name forAccount:(id)account error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v50 = 0;
  objc_storeStrong(&v50, account);
  errorCopy = error;
  if (v50)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 838860800;
    v42 = 48;
    v43 = __Block_byref_object_copy__7;
    v44 = __Block_byref_object_dispose__7;
    v45 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 838860800;
    v35 = 48;
    v36 = __Block_byref_object_copy__7;
    v37 = __Block_byref_object_dispose__7;
    v38 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 838860800;
    v28 = 48;
    v29 = __Block_byref_object_copy__7;
    v30 = __Block_byref_object_dispose__7;
    v31 = 0;
    v10 = v50;
    v17 = MEMORY[0x1E69E9820];
    v18 = -1073741824;
    v19 = 0;
    v20 = __52__AKAccountManager__tokenWithName_forAccount_error___block_invoke;
    v21 = &unk_1E73D6A10;
    v24[1] = &v32;
    v22 = MEMORY[0x1E69E5928](selfCopy);
    v23 = MEMORY[0x1E69E5928](v50);
    v24[2] = &v39;
    v24[3] = &v25;
    v24[0] = MEMORY[0x1E69E5928](location[0]);
    [AKAccountManager performWithinPersonaForAccount:v10 withBlock:&v17];
    if (v33[5])
    {
      if (!v26[5])
      {
        v14 = _AKLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_3_8_64_8_64_8_64(v54, location[0], v50, v33[5]);
          _os_log_error_impl(&dword_193225000, v14, OS_LOG_TYPE_ERROR, "AuthKit %@ token is missing! Account: %@. Credential: %@.", v54, 0x20u);
        }

        objc_storeStrong(&v14, 0);
      }
    }

    else
    {
      oslog = _AKLogSystem();
      v15 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v55, v50, v40[5]);
        _os_log_error_impl(&dword_193225000, oslog, v15, "AuthKit credential is completely MIA! Account: %@. Fetch error: %@", v55, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }

    if (v40[5])
    {
      if (errorCopy)
      {
        v9 = v40[5];
        v6 = v9;
        *errorCopy = v9;
      }

      [(AKAccountManager *)selfCopy _reportTokenWithName:location[0] forAccount:v50 error:v40[5]];
    }

    v53 = MEMORY[0x1E69E5928](v26[5]);
    v46 = 1;
    objc_storeStrong(v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    _Block_object_dispose(&v25, 8);
    objc_storeStrong(&v31, 0);
    _Block_object_dispose(&v32, 8);
    objc_storeStrong(&v38, 0);
    _Block_object_dispose(&v39, 8);
    objc_storeStrong(&v45, 0);
  }

  else
  {
    v48 = _AKLogSystem();
    v47 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v56, location[0]);
      _os_log_error_impl(&dword_193225000, v48, v47, "Nil account cannot possibly have a %@ token!", v56, 0xCu);
    }

    objc_storeStrong(&v48, 0);
    if (errorCopy)
    {
      v11 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7022];
      v5 = v11;
      *errorCopy = v11;
      [(AKAccountManager *)selfCopy _reportTokenWithName:location[0] forAccount:v50 error:*errorCopy];
    }

    v53 = 0;
    v46 = 1;
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v7 = v53;

  return v7;
}

uint64_t __52__AKAccountManager__tokenWithName_forAccount_error___block_invoke(void *a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v2 = *(a1[4] + 8);
  v3 = a1[5];
  location = (*(a1[8] + 8) + 40);
  v13[0] = *location;
  v11 = [v2 credentialForAccount:v3 error:v13];
  objc_storeStrong(location, v13[0]);
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v11;
  MEMORY[0x1E69E5920](v5);
  v6 = [*(*(a1[7] + 8) + 40) credentialItemForKey:a1[6]];
  v7 = *(a1[9] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  return MEMORY[0x1E69E5920](v8);
}

- (void)_reportTokenWithName:(id)name forAccount:(id)account error:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v10 = 0;
  objc_storeStrong(&v10, account);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v8 = 0;
  if (location[0] == *MEMORY[0x1E6959948])
  {
    objc_storeStrong(&v8, @"com.apple.authkit.token.ck.fetch");
LABEL_10:
    [(AKAccountManager *)selfCopy _reportTokenWithTelemetryID:v8 account:v10 telemetryFlowID:0 error:v9];
    goto LABEL_11;
  }

  if (location[0] == *MEMORY[0x1E69599D8])
  {
    objc_storeStrong(&v8, @"com.apple.authkit.token.prk.fetch");
    goto LABEL_10;
  }

  if (location[0] == *MEMORY[0x1E69599A0])
  {
    objc_storeStrong(&v8, @"com.apple.authkit.token.hb.fetch");
    goto LABEL_10;
  }

  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v13, location[0]);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Reporting not supported for token - %@", v13, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
LABEL_11:
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)authKitAccountTypeWithError:(id *)error
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self->_authKitAccountType)
  {
    os_unfair_lock_lock(&self->_authKitAccountTypeLock);
    if (!self->_authKitAccountType)
    {
      v3 = [(AKAccountStore *)self->_accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959880] error:error];
      authKitAccountType = self->_authKitAccountType;
      self->_authKitAccountType = v3;
      MEMORY[0x1E69E5920](authKitAccountType);
    }

    os_unfair_lock_unlock(&self->_authKitAccountTypeLock);
  }

  *MEMORY[0x1E69E9840];
  v5 = self->_authKitAccountType;

  return v5;
}

- (id)accountEligibleForUpdate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAccountManager *)self _serviceTypesForSecurityUpgrade];
  v16 = 0;
  v17 = &v16;
  v18 = 838860800;
  v19 = 48;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v6 = location[0];
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __44__AKAccountManager_accountEligibleForUpdate__block_invoke;
  v14 = &unk_1E73D6A60;
  v15[0] = MEMORY[0x1E69E5928](selfCopy);
  v15[1] = &v16;
  [v6 enumerateObjectsUsingBlock:&v10];
  if (!v17[5])
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v5 = type;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, log, v5, "No account is eligible for security upgrade.", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v3 = MEMORY[0x1E69E5928](v17[5]);
  objc_storeStrong(v15, 0);
  _Block_object_dispose(&v16, 8);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v3;
}

void __44__AKAccountManager_accountEligibleForUpdate__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = a3;
  v19 = a4;
  v18 = a1;
  v17 = [*(a1 + 32) _serviceTypeForServiceNameString:location[0]];
  v8 = [*(a1 + 32) accountsUsingService:v17];
  v7 = [v8 allObjects];
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __44__AKAccountManager_accountEligibleForUpdate__block_invoke_2;
  v14 = &unk_1E73D6A38;
  v15[0] = MEMORY[0x1E69E5928](*(a1 + 32));
  v15[1] = v17;
  v16 = [v7 aaf_firstObjectPassingTest:&v10];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  if (v16)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v22, location[0]);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Account of service type %@ is eligible for security upgrade.", v22, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v16);
    *v19 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __44__AKAccountManager_accountEligibleForUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [*(a1 + 32) _isAccountEligibleForSecurityUpgrade:location[0] ofServiceType:*(a1 + 40)];
  objc_storeStrong(location, 0);
  return v4;
}

- (id)_serviceTypesForSecurityUpgrade
{
  selfCopy = self;
  v7[1] = a2;
  v6 = [AKURLBag bagForAltDSID:0];
  v7[0] = [v6 securityUpgradeServiceNames];
  MEMORY[0x1E69E5920](v6);
  if (![v7[0] count])
  {
    _defaultSecurityUpgradeServiceNames = [(AKAccountManager *)selfCopy _defaultSecurityUpgradeServiceNames];
    v3 = v7[0];
    v7[0] = _defaultSecurityUpgradeServiceNames;
    MEMORY[0x1E69E5920](v3);
  }

  v5 = MEMORY[0x1E69E5928](v7[0]);
  objc_storeStrong(v7, 0);

  return v5;
}

- (id)_defaultSecurityUpgradeServiceNames
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"itunesstore";
  v4[1] = @"icloud";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  *MEMORY[0x1E69E9840];
  return v3;
}

- (int64_t)_serviceTypeForServiceNameString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  if ([location[0] isEqualToString:@"itunesstore"])
  {
    v5 = 2;
  }

  else if ([location[0] isEqualToString:@"icloud"])
  {
    v5 = 1;
  }

  else if ([location[0] isEqualToString:@"imessage"])
  {
    v5 = 4;
  }

  else if ([location[0] isEqualToString:@"facetime"])
  {
    v5 = 5;
  }

  else if ([location[0] isEqualToString:@"gamecenter"])
  {
    v5 = 6;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  return v5;
}

- (id)_accountTypeForServiceType:(int64_t)type
{
  selfCopy = self;
  location[2] = a2;
  location[1] = type;
  if (type == 1)
  {
    v11 = [(AKAccountManager *)selfCopy accountTypeForTypeIdentifier:*MEMORY[0x1E6959800]];
  }

  else if (type == 2)
  {
    v11 = [(AKAccountManager *)selfCopy accountTypeForTypeIdentifier:*MEMORY[0x1E6959928]];
  }

  else if ((type - 4) <= 1)
  {
    v11 = [(AKAccountManager *)selfCopy accountTypeForTypeIdentifier:*MEMORY[0x1E69598A8]];
  }

  else if (type == 6)
  {
    v11 = [(AKAccountManager *)selfCopy accountTypeForTypeIdentifier:*MEMORY[0x1E6959858]];
  }

  else
  {
    location[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_193225000, log, type, "Servicetype is not supported.", v7, 2u);
    }

    objc_storeStrong(location, 0);
    v11 = 0;
  }

  v3 = v11;

  return v3;
}

- (BOOL)_isAccountEligibleForSecurityUpgrade:(id)upgrade ofServiceType:(int64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, upgrade);
  typeCopy = type;
  if ([(AKAccountManager *)selfCopy securityLevelForAccount:location[0]]== 2)
  {
    v5 = [(AKAccountManager *)selfCopy _matchingServiceAccountForAuthKitAccount:location[0] service:typeCopy];
    MEMORY[0x1E69E5920](v5);
    if (v5)
    {
      v14 = 1;
      v8 = 1;
    }

    else
    {
      v7 = _AKLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_0_8_64(v15, typeCopy, location[0]);
        _os_log_debug_impl(&dword_193225000, v7, OS_LOG_TYPE_DEBUG, "There is no matching service account for service type (%li). (%@) may be abandoned authkit account, but still on device.", v15, 0x16u);
      }

      objc_storeStrong(&v7, 0);
      v14 = 0;
      v8 = 1;
    }
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v16, location[0]);
      _os_log_debug_impl(&dword_193225000, oslog, type, "AuthKit account (%@) that is not an SA account is not eligible for security upgrade.", v16, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v14 = 0;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (void)removeAllPasswordResetTokens
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAccountManager *)self allAuthKitAccountsWithError:0];
  MEMORY[0x1E69E5920](0);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(location[0], "count")}];
    __os_log_helper_16_2_1_8_64(v22, v13);
    _os_log_impl(&dword_193225000, oslog, type, "Found %@ IDMS accounts for which PRK might need to be cleared.", v22, 0xCu);
    MEMORY[0x1E69E5920](v13);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](location[0]);
  v12 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      v6 = selfCopy;
      v20[0] = *MEMORY[0x1E69599D8];
      v20[1] = *MEMORY[0x1E69599D0];
      v20[2] = @"password-reset-token-creation";
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
      [AKAccountManager _removeTokenForKeys:v6 forAccount:"_removeTokenForKeys:forAccount:"];
      MEMORY[0x1E69E5920](v5);
      v3 = selfCopy;
      v4 = v15;
      v2 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7080];
      [(AKAccountManager *)v3 _reportTokenWithTelemetryID:@"com.apple.authkit.token.prk.delete" account:v4 telemetryFlowID:0 error:?];
      MEMORY[0x1E69E5920](v2);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)removeContinuationTokenForAccount:(id)account telemetryFlowID:(id)d error:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v21 = 0;
  objc_storeStrong(&v21, d);
  v20 = 0;
  objc_storeStrong(&v20, error);
  v19 = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v25, selfCopy, location[0]);
    _os_log_impl(&dword_193225000, v19, v18, "%@: Attempting to remove continuation key for account (%@)", v25, 0x16u);
  }

  objc_storeStrong(&v19, 0);
  ak_allUnderlyingErrors = [v20 ak_allUnderlyingErrors];
  v5 = ak_allUnderlyingErrors;
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __76__AKAccountManager_removeContinuationTokenForAccount_telemetryFlowID_error___block_invoke;
  v14 = &unk_1E73D6A88;
  v15 = MEMORY[0x1E69E5928](selfCopy);
  v16 = MEMORY[0x1E69E5928](location[0]);
  [v5 enumerateObjectsUsingBlock:&v10];
  v6 = selfCopy;
  v24[0] = *MEMORY[0x1E6959948];
  v24[1] = @"continuation-key-creation";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [AKAccountManager _removeTokenForKeys:v6 forAccount:"_removeTokenForKeys:forAccount:"];
  MEMORY[0x1E69E5920](v7);
  [(AKAccountManager *)selfCopy _triggerSilentTTRFor:1];
  [(AKAccountManager *)selfCopy _reportTokenWithTelemetryID:@"com.apple.authkit.token.ck.delete" account:location[0] telemetryFlowID:v21 error:v20];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&ak_allUnderlyingErrors, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __76__AKAccountManager_removeContinuationTokenForAccount_telemetryFlowID_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a1;
  if ([location[0] code] == -698)
  {
    v11[0] = _AKLogSystem();
    v10 = 2;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_DEBUG))
    {
      log = v11[0];
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_debug_impl(&dword_193225000, log, type, "Removing continuation key as device is in lost mode", v9, 2u);
    }

    objc_storeStrong(v11, 0);
    [*(a1 + 32) setDeviceRemovalReason:3 onAccount:*(a1 + 40)];
  }

  objc_storeStrong(location, 0);
}

- (id)_credentialForAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = [location[0] credentialWithError:&v7];
  objc_storeStrong(&v8, v7);
  v3 = v9;
  v9 = v6;
  MEMORY[0x1E69E5920](v3);
  objc_storeStrong(&v8, 0);
  v5 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v5;
}

- (void)removePasswordResetTokenForAccount:(id)account telemetryFlowID:(id)d error:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v11 = 0;
  objc_storeStrong(&v11, d);
  v10 = 0;
  objc_storeStrong(&v10, error);
  v9 = _AKLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v15, selfCopy, location[0]);
    _os_log_impl(&dword_193225000, v9, OS_LOG_TYPE_DEFAULT, "%@: Attempting to remove PRK for account (%@)", v15, 0x16u);
  }

  objc_storeStrong(&v9, 0);
  v5 = selfCopy;
  v14[0] = *MEMORY[0x1E69599D8];
  v14[1] = @"password-reset-token-creation";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [AKAccountManager _removeTokenForKeys:v5 forAccount:"_removeTokenForKeys:forAccount:"];
  MEMORY[0x1E69E5920](v6);
  [(AKAccountManager *)selfCopy _reportTokenWithTelemetryID:@"com.apple.authkit.token.prk.delete" account:location[0] telemetryFlowID:v11 error:v10];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_removeTokenKey:(id)key forAccount:(id)account
{
  v15[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v12 = 0;
  objc_storeStrong(&v12, account);
  if (location[0])
  {
    v6 = selfCopy;
    v15[0] = location[0];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [AKAccountManager _removeTokenForKeys:v6 forAccount:"_removeTokenForKeys:forAccount:"];
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_193225000, log, type, "Attempted to remove a token for nil key", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_removeTokenForKeys:(id)keys forAccount:(id)account
{
  v42 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keys);
  v36 = 0;
  objc_storeStrong(&v36, account);
  v29 = 0;
  v30 = &v29;
  v31 = 838860800;
  v32 = 48;
  v33 = __Block_byref_object_copy__7;
  v34 = __Block_byref_object_dispose__7;
  v35 = 0;
  v28 = 0;
  v27 = 0;
  v12 = [v36 credentialWithError:&v27];
  objc_storeStrong(&v28, v27);
  v4 = v30[5];
  v30[5] = v12;
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&v28, 0);
  if (v30[5])
  {
    v23 = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_66_8_64(v40, location[0], v36);
      _os_log_impl(&dword_193225000, v23, v22, "Clearing %{public}@ for account %@...", v40, 0x16u);
    }

    objc_storeStrong(&v23, 0);
    memset(__b, 0, sizeof(__b));
    v10 = MEMORY[0x1E69E5928](location[0]);
    v11 = [v10 countByEnumeratingWithState:__b objects:v39 count:16];
    if (v11)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v11;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(v10);
        }

        v21 = *(__b[1] + 8 * v8);
        [v30[5] setCredentialItem:0 forKey:v21];
        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [v10 countByEnumeratingWithState:__b objects:v39 count:16];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x1E69E5920](v10);
    v5 = v36;
    v14 = MEMORY[0x1E69E9820];
    v15 = -1073741824;
    v16 = 0;
    v17 = __51__AKAccountManager__removeTokenForKeys_forAccount___block_invoke;
    v18 = &unk_1E73D6AB0;
    v19[0] = MEMORY[0x1E69E5928](v36);
    v19[1] = &v29;
    [AKAccountManager performWithinPersonaForAccount:v5 withBlock:&v14];
    [(AKAccountManager *)selfCopy saveAccount:v36 error:0];
    objc_storeStrong(v19, 0);
    v24 = 0;
  }

  else
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v41, v36);
      _os_log_impl(&dword_193225000, oslog, type, "Nil credential for account %@. Odd, but no clearing is necessary.", v41, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v24 = 1;
  }

  _Block_object_dispose(&v29, 8);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_triggerSilentTTRFor:(unint64_t)for
{
  location[3] = self;
  location[2] = a2;
  location[1] = for;
  location[0] = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_193225000, log, type, "SilentTTR not triggered - supported only on TvOS", v5, 2u);
  }

  objc_storeStrong(location, 0);
}

- (void)_reportTokenWithTelemetryID:(id)d account:(id)account telemetryFlowID:(id)iD error:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v23 = 0;
  objc_storeStrong(&v23, account);
  v22 = 0;
  objc_storeStrong(&v22, iD);
  v21 = 0;
  objc_storeStrong(&v21, error);
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v28, location[0], v23);
    _os_log_debug_impl(&dword_193225000, v20, v19, "Begin reporting %@ for account: %@", v28, 0x16u);
  }

  objc_storeStrong(&v20, 0);
  v8 = [AKURLBag bagForAltDSID:0];
  iDMSEnvironment = [v8 IDMSEnvironment];
  MEMORY[0x1E69E5920](v8);
  v18[1] = iDMSEnvironment;
  if (iDMSEnvironment)
  {
    v18[0] = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v18[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v27, location[0]);
      _os_log_debug_impl(&dword_193225000, v18[0], v17, "Reporting  %@ is not supported for non-prod environments", v27, 0xCu);
    }

    objc_storeStrong(v18, 0);
    v16 = 1;
  }

  else
  {
    v15 = [MEMORY[0x1E6985DB0] ak_analyticsEventWithEventName:location[0] account:v23 error:v21];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AKAccountManager securityLevelForAccount:](selfCopy, "securityLevelForAccount:", v23)}];
    [v15 setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v7);
    if (v22)
    {
      [v15 setObject:v22 forKeyedSubscript:*MEMORY[0x1E6985E48]];
    }

    if ([@"com.apple.authkit.token.ck.delete" isEqualToString:location[0]])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AKAccountManager deviceRemovalReasonForAccount:](selfCopy, "deviceRemovalReasonForAccount:", v23)}];
      [v15 setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v6);
    }

    v14 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
    [v14 sendEvent:v15];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v26, location[0], v23);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Finish reporting %@ for account: %@", v26, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setAccount:(id)account inUse:(BOOL)use byService:(int64_t)service
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  useCopy = use;
  serviceCopy = service;
  queue = selfCopy->_accountQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __47__AKAccountManager_setAccount_inUse_byService___block_invoke;
  v12 = &unk_1E73D6AD8;
  v13[0] = MEMORY[0x1E69E5928](location[0]);
  v14 = useCopy;
  v13[1] = serviceCopy;
  dispatch_barrier_sync(queue, &v8);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
}

void __47__AKAccountManager_setAccount_inUse_byService___block_invoke(uint64_t a1)
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a1;
  v3 = [*(a1 + 32) accountPropertyForKey:@"retaining-services"];
  location[0] = [v3 mutableCopy];
  MEMORY[0x1E69E5920](v3);
  if (!location[0])
  {
    location[0] = objc_alloc_init(MEMORY[0x1E695DFA8]);
    MEMORY[0x1E69E5920](0);
  }

  if (*(a1 + 48))
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [location[0] addObject:?];
    MEMORY[0x1E69E5920](v1);
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [location[0] removeObject:?];
    MEMORY[0x1E69E5920](v2);
  }

  [*(a1 + 32) setAccountProperty:location[0] forKey:@"retaining-services"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)servicesUsingAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v12 = 0;
  v13 = &v12;
  v14 = 838860800;
  v15 = 48;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  queue = selfCopy->_accountQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __41__AKAccountManager_servicesUsingAccount___block_invoke;
  v10 = &unk_1E73D6B00;
  v11[1] = &v12;
  v11[0] = MEMORY[0x1E69E5928](location[0]);
  dispatch_sync(queue, &v6);
  v5 = MEMORY[0x1E69E5928](v13[5]);
  objc_storeStrong(v11, 0);
  _Block_object_dispose(&v12, 8);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v5;
}

uint64_t __41__AKAccountManager_servicesUsingAccount___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) accountPropertyForKey:@"retaining-services"];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  result = MEMORY[0x1E69E5920](v3);
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)accountsUsingService:(int64_t)service
{
  selfCopy = self;
  v15 = a2;
  serviceCopy = service;
  v13 = [MEMORY[0x1E695DFA8] set];
  queue = selfCopy->_accountQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __41__AKAccountManager_accountsUsingService___block_invoke;
  v10 = &unk_1E73D6B50;
  v11 = MEMORY[0x1E69E5928](selfCopy);
  v12[1] = serviceCopy;
  v12[0] = MEMORY[0x1E69E5928](v13);
  dispatch_sync(queue, &v6);
  v5 = [v13 copy];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);

  return v5;
}

void __41__AKAccountManager_accountsUsingService___block_invoke(uint64_t a1)
{
  v9[3] = a1;
  v9[2] = a1;
  v2 = [*(a1 + 32) allAuthKitAccountsWithError:?];
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __41__AKAccountManager_accountsUsingService___block_invoke_2;
  v7 = &unk_1E73D6B28;
  v8 = MEMORY[0x1E69E5928](*(a1 + 32));
  v9[1] = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E5928](*(a1 + 40));
  [v2 enumerateObjectsUsingBlock:?];
  MEMORY[0x1E69E5920](v2);
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void __41__AKAccountManager_accountsUsingService___block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [*(a1 + 32) servicesUsingAccount:location[0]];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v5 = [v4 containsObject:?];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  if (v5)
  {
    [*(a1 + 40) addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)activeServiceNamesForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [(AKAccountManager *)selfCopy servicesUsingAccount:location[0]];
  allObjects = [v4 allObjects];
  MEMORY[0x1E69E5920](v4);
  v5 = [allObjects aaf_map:&__block_literal_global_227];
  objc_storeStrong(&allObjects, 0);
  objc_storeStrong(location, 0);

  return v5;
}

id __49__AKAccountManager_activeServiceNamesForAccount___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = +[AKAccountManager stringRepresentationForService:](AKAccountManager, "stringRepresentationForService:", [location[0] integerValue]);
  objc_storeStrong(location, 0);

  return v3;
}

+ (id)stringRepresentationForService:(int64_t)service
{
  location[3] = self;
  location[2] = a2;
  location[1] = service;
  location[0] = 0;
  switch(service)
  {
    case 1:
      objc_storeStrong(location, @"icloud");
      break;
    case 2:
      objc_storeStrong(location, @"itunesstore");
      break;
    case 4:
      objc_storeStrong(location, @"imessage");
      break;
    case 5:
      objc_storeStrong(location, @"facetime");
      break;
    case 6:
      objc_storeStrong(location, @"gamecenter");
      break;
    case 7:
      objc_storeStrong(location, @"piggybacking");
      break;
    default:
      objc_storeStrong(location, 0);
      break;
  }

  v4 = MEMORY[0x1E69E5928](location[0]);
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)hasPrimaryiCloudAccountForAppleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = selfCopy;
  v5 = [(AKAccountManager *)selfCopy iCloudAccountForAppleID:location[0]];
  v6 = [(AKAccountManager *)v4 isPrimaryiCloudAccount:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)hasPrimaryiCloudAccountForAltDSID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v7 = _AKLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v10, location[0]);
    _os_log_debug_impl(&dword_193225000, v7, OS_LOG_TYPE_DEBUG, "Logging altdsid : %@", v10, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  v4 = selfCopy;
  v5 = [(AKAccountManager *)selfCopy iCloudAccountForAltDSID:location[0]];
  v6 = [(AKAccountManager *)v4 isPrimaryiCloudAccount:?];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isPrimaryiCloudAccount:(id)account
{
  v11 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v7 = [location[0] accountPropertyForKey:@"accountClass"];
  if ([v7 isEqualToString:@"primary"])
  {
    v9 = 1;
    v6 = 1;
  }

  else
  {
    v5 = [location[0] accountPropertyForKey:@"primaryAccount"];
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v5 BOOLValue] & 1;
      v6 = 1;
    }

    else
    {
      v4 = _AKLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v10, v5, location[0]);
        _os_log_error_impl(&dword_193225000, v4, OS_LOG_TYPE_ERROR, "Invalid type for value of primaryAccount account property: %@. Account: %@", v10, 0x16u);
      }

      objc_storeStrong(&v4, 0);
      v9 = 0;
      v6 = 1;
    }

    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v9 & 1;
}

- (BOOL)isPrimaryiCloudAccountEmailVerified:(id)verified
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, verified);
  v5 = [location[0] accountPropertyForKey:@"primaryEmailVerified"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v5 BOOLValue] & 1;
  }

  else
  {
    v4 = _AKLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_64_8_64_8_64(v8, @"primaryEmailVerified", v5, location[0]);
      _os_log_error_impl(&dword_193225000, v4, OS_LOG_TYPE_ERROR, "Invalid type for value of %@ account property: %@. Account: %@", v8, 0x20u);
    }

    objc_storeStrong(&v4, 0);
    v7 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (id)transportableAuthKitAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] copy];
  v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v6 setAccountProperty:v5 forKey:@"retaining-services"];
  MEMORY[0x1E69E5920](v5);
  [v6 setAccountProperty:0 forKey:@"telemetryDeviceSessionID"];
  [v6 setAccountProperty:0 forKey:@"safetyScreenSeen"];
  v8 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (id)_aliasesForiCloudAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"appleIdAliases"];
  MEMORY[0x1E69E5920](0);
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = MEMORY[0x1E69E5928](v6);
  }

  else
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v9, v6, location[0]);
      _os_log_error_impl(&dword_193225000, v5, OS_LOG_TYPE_ERROR, "Invalid type for value of appleIdAliases %@. Account: %@", v9, 0x16u);
    }

    objc_storeStrong(&v5, 0);
    v8 = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (BOOL)isFulliCloudAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = objc_opt_class();
  v4 = [location[0] accountPropertyForKey:@"accountClass"];
  v6 = _AKSafeCast_8(v5, v4);
  MEMORY[0x1E69E5920](v4);
  v8 = [v6 isEqualToString:@"full"] & 1;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (id)_altDSIDForiCloudAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"altDSID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = MEMORY[0x1E69E5928](v6);
  }

  else
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v9, v6, location[0]);
      _os_log_error_impl(&dword_193225000, v5, OS_LOG_TYPE_ERROR, "Invalid type for altDSID %@. Account: %@", v9, 0x16u);
    }

    objc_storeStrong(&v5, 0);
    v8 = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (ACAccountType)appleIDAccountType
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  if (!self->_appleIDAccountType)
  {
    os_unfair_lock_lock(&selfCopy->_appleIDAccountTypeLock);
    if (!selfCopy->_appleIDAccountType)
    {
      location[0] = 0;
      accountStore = selfCopy->_accountStore;
      v3 = *MEMORY[0x1E6959808];
      v8 = 0;
      v7 = [(AKAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v3 error:&v8];
      objc_storeStrong(location, v8);
      appleIDAccountType = selfCopy->_appleIDAccountType;
      selfCopy->_appleIDAccountType = v7;
      MEMORY[0x1E69E5920](appleIDAccountType);
      objc_storeStrong(location, 0);
    }

    os_unfair_lock_unlock(&selfCopy->_appleIDAccountTypeLock);
  }

  *MEMORY[0x1E69E9840];
  v5 = selfCopy->_appleIDAccountType;

  return v5;
}

- (id)accountTypeForTypeIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  if (location[0])
  {
    v15 = [(NSMutableDictionary *)selfCopy->_accountTypeCache objectForKey:location[0]];
    if (!v15)
    {
      p_accountTypeCacheLock = &selfCopy->_accountTypeCacheLock;
      v8 = MEMORY[0x1E69E9820];
      v9 = -1073741824;
      v10 = 0;
      v11 = __49__AKAccountManager_accountTypeForTypeIdentifier___block_invoke;
      v12 = &unk_1E73D6BC0;
      v13 = MEMORY[0x1E69E5928](selfCopy);
      v14 = MEMORY[0x1E69E5928](location[0]);
      v3 = ak_unfair_lock_perform_with_result_2(p_accountTypeCacheLock, &v8);
      v4 = v15;
      v15 = v3;
      MEMORY[0x1E69E5920](v4);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
    }

    v19 = MEMORY[0x1E69E5928](v15);
    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v19 = 0;
    v16 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = v19;

  return v5;
}

id __49__AKAccountManager_accountTypeForTypeIdentifier___block_invoke(void *a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = 0;
  location = 0;
  v2 = *(a1[4] + 8);
  v3 = a1[5];
  v9 = 0;
  v7 = [v2 accountTypeWithAccountTypeIdentifier:v3 error:&v9];
  objc_storeStrong(&location, v9);
  v4 = v11[0];
  v11[0] = v7;
  MEMORY[0x1E69E5920](v4);
  [*(a1[4] + 120) setObject:v11[0] forKeyedSubscript:a1[5]];
  objc_storeStrong(&location, 0);
  v6 = MEMORY[0x1E69E5928](v11[0]);
  objc_storeStrong(v11, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

- (id)additionalInfoForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"additionalInfo"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setAdditionalInfo:(id)info forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"additionalInfo"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)trustedPhoneNumbersForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"trustedPhoneNumbers"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setTrustedPhoneNumbers:(id)numbers forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, numbers);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"trustedPhoneNumbers"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)securityKeysForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"securityKeys"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setSecurityKeys:(id)keys forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, keys);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"securityKeys"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)loginHandlesForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"loginHandles"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setLoginHandles:(id)handles forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handles);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"loginHandles"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_removeAllRawPasswordCaches
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v13[1] = a2;
  v13[0] = [(AKAccountManager *)self _iCloudAccounts];
  location = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13[0], "count")}];
    __os_log_helper_16_2_1_8_64(v16, v8);
    _os_log_impl(&dword_193225000, location, v11, "Found %@ iCloud accounts for which password cache might need to be cleared.", v16, 0xCu);
    MEMORY[0x1E69E5920](v8);
  }

  objc_storeStrong(&location, 0);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v13[0]);
  v7 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v4);
      [(AKAccountManager *)selfCopy _clearRawPasswordForAccount:v10];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  objc_storeStrong(v13, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_clearRawPasswordForAccount:(id)account
{
  v11 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v8 = 0;
  v6 = 0;
  v3 = [location[0] credentialWithError:&v6];
  objc_storeStrong(&v8, v6);
  v7 = v3;
  v4 = [v3 credentialItemForKey:*MEMORY[0x1E69599F8]];
  MEMORY[0x1E69E5920](v4);
  if (v4)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v10, location[0]);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Found a cached raw password for %@... removing...", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [v7 setCredentialItem:0 forKey:*MEMORY[0x1E69599F8]];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setNextLivenessNonce:(id)nonce nonce:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, nonce);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [location[0] setAccountProperty:v5 forKey:@"nextLivenessNonce"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)nextLivenessNonce:(id)nonce
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, nonce);
  v6 = [location[0] accountPropertyForKey:@"nextLivenessNonce"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (id)allAuthKitAccountsWithError:(id *)error
{
  selfCopy = self;
  v12 = a2;
  errorCopy = error;
  v10 = 0;
  obj = 0;
  v7 = [(AKAccountManager *)self authKitAccountTypeWithError:&obj];
  objc_storeStrong(&v10, obj);
  v9 = v7;
  if (v7)
  {
    v14 = [(AKAccountManager *)selfCopy _fetchAllAccountsWithType:v9 error:errorCopy];
  }

  else
  {
    if (errorCopy)
    {
      v6 = v10;
      v3 = v10;
      *errorCopy = v6;
    }

    v14 = 0;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  v4 = v14;

  return v4;
}

- (id)authKitAccountWithAltDSID:(id)d error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  errorCopy = error;
  if (location[0])
  {
    v24 = 0;
    obj = 0;
    v17 = [(AKAccountManager *)selfCopy allAuthKitAccountsWithError:&obj];
    objc_storeStrong(&v24, obj);
    v23 = v17;
    if (v24)
    {
      if (errorCopy)
      {
        v16 = v24;
        v5 = v24;
        *errorCopy = v16;
      }

      v29 = 0;
      v25 = 1;
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      v14 = MEMORY[0x1E69E5928](v23);
      v15 = [v14 countByEnumeratingWithState:__b objects:v30 count:16];
      if (v15)
      {
        v11 = *__b[2];
        v12 = 0;
        v13 = v15;
        while (1)
        {
          v10 = v12;
          if (*__b[2] != v11)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(__b[1] + 8 * v12);
          v8 = [v21 accountPropertyForKey:@"altDSID"];
          v9 = [v8 isEqual:location[0]];
          MEMORY[0x1E69E5920](v8);
          if (v9)
          {
            break;
          }

          ++v12;
          if (v10 + 1 >= v13)
          {
            v12 = 0;
            v13 = [v14 countByEnumeratingWithState:__b objects:v30 count:16];
            if (!v13)
            {
              goto LABEL_17;
            }
          }
        }

        v29 = MEMORY[0x1E69E5928](v21);
        v25 = 1;
      }

      else
      {
LABEL_17:
        v25 = 0;
      }

      MEMORY[0x1E69E5920](v14);
      if (!v25)
      {
        v29 = 0;
        v25 = 1;
      }
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  else
  {
    if (errorCopy)
    {
      v18 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7025];
      v4 = v18;
      *errorCopy = v18;
    }

    v29 = 0;
    v25 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v6 = v29;

  return v6;
}

- (id)authKitAccountWithAppleID:(id)d error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  errorCopy = error;
  if (location[0])
  {
    v25 = 0;
    obj = 0;
    v17 = [(AKAccountManager *)selfCopy allAuthKitAccountsWithError:&obj];
    objc_storeStrong(&v25, obj);
    v24 = v17;
    if (v25)
    {
      if (errorCopy)
      {
        v16 = v25;
        v5 = v25;
        *errorCopy = v16;
      }

      v30 = 0;
      v26 = 1;
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      v14 = MEMORY[0x1E69E5928](v24);
      v15 = [v14 countByEnumeratingWithState:__b objects:v31 count:16];
      if (v15)
      {
        v11 = *__b[2];
        v12 = 0;
        v13 = v15;
        while (1)
        {
          v10 = v12;
          if (*__b[2] != v11)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(__b[1] + 8 * v12);
          username = [v22 username];
          v9 = [username isEqual:location[0]];
          MEMORY[0x1E69E5920](username);
          if (v9)
          {
            break;
          }

          v20 = [(AKAccountManager *)selfCopy aliasesForAccount:v22];
          if ([v20 containsObject:location[0]])
          {
            v30 = MEMORY[0x1E69E5928](v22);
            v26 = 1;
          }

          else
          {
            v26 = 0;
          }

          objc_storeStrong(&v20, 0);
          if (v26)
          {
            goto LABEL_22;
          }

          ++v12;
          if (v10 + 1 >= v13)
          {
            v12 = 0;
            v13 = [v14 countByEnumeratingWithState:__b objects:v31 count:16];
            if (!v13)
            {
              goto LABEL_21;
            }
          }
        }

        v30 = MEMORY[0x1E69E5928](v22);
        v26 = 1;
      }

      else
      {
LABEL_21:
        v26 = 0;
      }

LABEL_22:
      MEMORY[0x1E69E5920](v14);
      if (!v26)
      {
        v30 = 0;
        v26 = 1;
      }
    }

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    if (errorCopy)
    {
      v18 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7022];
      v4 = v18;
      *errorCopy = v18;
    }

    v30 = 0;
    v26 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v6 = v30;

  return v6;
}

- (id)allAuthKitAccounts
{
  authKitAccountType = [(AKAccountManager *)self authKitAccountType];
  v5 = [AKAccountManager _fetchAllAccountsWithType:"_fetchAllAccountsWithType:error:" error:?];
  MEMORY[0x1E69E5920](authKitAccountType);

  return v5;
}

- (id)authKitAccountWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [(AKAccountManager *)selfCopy authKitAccountWithAltDSID:location[0] error:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)authKitAccountWithDSID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = [(AKAccountManager *)selfCopy allAuthKitAccountsWithError:0];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v16);
  v12 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      v5 = [v15 accountPropertyForKey:@"DSID"];
      v6 = [v5 isEqual:location[0]];
      MEMORY[0x1E69E5920](v5);
      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    v19 = MEMORY[0x1E69E5928](v15);
    v13 = 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  MEMORY[0x1E69E5920](obj);
  if (!v13)
  {
    v19 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v19;

  return v3;
}

- (id)authKitAccountWithAppleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [(AKAccountManager *)selfCopy authKitAccountWithAppleID:location[0] error:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_protoAccountWithError:(id *)error
{
  v7[3] = self;
  v7[2] = a2;
  v7[1] = error;
  protoAccountType = [(AKAccountManager *)self protoAccountType];
  v7[0] = [AKAccountManager _fetchAllAccountsWithType:"_fetchAllAccountsWithType:error:" error:?];
  MEMORY[0x1E69E5920](protoAccountType);
  firstObject = [v7[0] firstObject];
  objc_storeStrong(v7, 0);

  return firstObject;
}

- (id)appleIDAccountWithAltDSID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v13 = selfCopy;
  appleIDAccountType = [(AKAccountManager *)selfCopy appleIDAccountType];
  v20 = [AKAccountManager _fetchAllAccountsWithType:v13 error:"_fetchAllAccountsWithType:error:"];
  MEMORY[0x1E69E5920](appleIDAccountType);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v20);
  v16 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
  if (v16)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v16;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v11);
      v7 = [v19 accountPropertyForKey:@"altDSID"];
      v8 = [v7 isEqual:location[0]];
      MEMORY[0x1E69E5920](v7);
      if (v8)
      {
        break;
      }

      v5 = [v19 accountPropertyForKey:@"adsid"];
      v6 = [v5 isEqual:location[0]];
      MEMORY[0x1E69E5920](v5);
      if (v6)
      {
        break;
      }

      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v12)
        {
          goto LABEL_10;
        }
      }
    }

    v23 = MEMORY[0x1E69E5928](v19);
    v17 = 1;
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  MEMORY[0x1E69E5920](obj);
  if (!v17)
  {
    v23 = 0;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v23;

  return v3;
}

- (id)appleIDAccountWithAppleID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v11 = selfCopy;
  appleIDAccountType = [(AKAccountManager *)selfCopy appleIDAccountType];
  v18 = [AKAccountManager _fetchAllAccountsWithType:v11 error:"_fetchAllAccountsWithType:error:"];
  MEMORY[0x1E69E5920](appleIDAccountType);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v18);
  v14 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v14)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v14;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v9);
      username = [v17 username];
      v6 = [username isEqual:location[0]];
      MEMORY[0x1E69E5920](username);
      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    v21 = MEMORY[0x1E69E5928](v17);
    v15 = 1;
  }

  else
  {
LABEL_9:
    v15 = 0;
  }

  MEMORY[0x1E69E5920](obj);
  if (!v15)
  {
    v21 = 0;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v21;

  return v3;
}

- (id)_matchingServiceAccountForAuthKitAccount:(id)account service:(int64_t)service
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v21[1] = service;
  v21[0] = [(AKAccountManager *)selfCopy _accountTypeForServiceType:service];
  if (v21[0])
  {
    v19 = [(AKAccountManager *)selfCopy _fetchAllAccountsWithType:v21[0] error:0];
    if ([v19 count])
    {
      v18 = [(AKAccountManager *)selfCopy altDSIDForAccount:location[0]];
      username = [location[0] username];
      v6 = v19;
      v8 = MEMORY[0x1E69E9820];
      v9 = -1073741824;
      v10 = 0;
      v11 = __69__AKAccountManager__matchingServiceAccountForAuthKitAccount_service___block_invoke;
      v12 = &unk_1E73D6BE8;
      v13 = MEMORY[0x1E69E5928](v18);
      v14 = MEMORY[0x1E69E5928](selfCopy);
      v15 = MEMORY[0x1E69E5928](username);
      v16 = [v6 aaf_firstObjectPassingTest:&v8];
      v24 = MEMORY[0x1E69E5928](v16);
      v20 = 1;
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&username, 0);
      objc_storeStrong(&v18, 0);
    }

    else
    {
      v24 = 0;
      v20 = 1;
    }

    objc_storeStrong(&v19, 0);
  }

  else
  {
    v24 = 0;
    v20 = 1;
  }

  objc_storeStrong(v21, 0);
  objc_storeStrong(location, 0);
  v4 = v24;

  return v4;
}

uint64_t __69__AKAccountManager__matchingServiceAccountForAuthKitAccount_service___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) altDSIDForAccount:location[0]];
  v8 = 0;
  v7 = 1;
  if (([v5 isEqualToString:?] & 1) == 0)
  {
    v3 = *(a1 + 48);
    v9 = [location[0] username];
    v8 = 1;
    v7 = [v3 isEqualToString:?];
  }

  v11 = v7 & 1;
  if (v8)
  {
    MEMORY[0x1E69E5920](v9);
  }

  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (id)mostRecentlyUsedAuthKitAccount
{
  v18 = *MEMORY[0x1E69E9840];
  v16[2] = self;
  v16[1] = a2;
  v16[0] = [(AKAccountManager *)self allAuthKitAccountsWithError:0];
  location = [v16[0] firstObject];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v16[0]);
  v12 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v9);
      creationDate = [location creationDate];
      creationDate2 = [v14 creationDate];
      v6 = [creationDate compare:?];
      MEMORY[0x1E69E5920](creationDate2);
      MEMORY[0x1E69E5920](creationDate);
      if (v6 == -1)
      {
        objc_storeStrong(&location, v14);
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  v3 = MEMORY[0x1E69E5928](location);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v16, 0);
  *MEMORY[0x1E69E9840];

  return v3;
}

- (id)iCloudAccountForAppleID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  _iCloudAccounts = [(AKAccountManager *)selfCopy _iCloudAccounts];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](_iCloudAccounts);
  v12 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v9);
      username = [v16 username];
      v6 = [username isEqual:location[0]];
      MEMORY[0x1E69E5920](username);
      if (v6)
      {
        break;
      }

      v13 = [(AKAccountManager *)selfCopy _aliasesForiCloudAccount:v16];
      if ([v13 containsObject:location[0]])
      {
        v20 = MEMORY[0x1E69E5928](v16);
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong(&v13, 0);
      if (v14)
      {
        goto LABEL_14;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v10)
        {
          goto LABEL_13;
        }
      }
    }

    v20 = MEMORY[0x1E69E5928](v16);
    v14 = 1;
  }

  else
  {
LABEL_13:
    v14 = 0;
  }

LABEL_14:
  MEMORY[0x1E69E5920](obj);
  if (!v14)
  {
    v20 = 0;
    v14 = 1;
  }

  objc_storeStrong(&_iCloudAccounts, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v20;

  return v3;
}

- (id)iCloudAccountForAltDSID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  _iCloudAccounts = [(AKAccountManager *)selfCopy _iCloudAccounts];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](_iCloudAccounts);
  v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v7);
      v12 = [(AKAccountManager *)selfCopy _altDSIDForiCloudAccount:v14];
      if ([v12 isEqual:location[0]])
      {
        v18 = MEMORY[0x1E69E5928](v14);
        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      objc_storeStrong(&v12, 0);
      if (v11)
      {
        break;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  MEMORY[0x1E69E5920](obj);
  if (!v11)
  {
    v18 = 0;
  }

  objc_storeStrong(&_iCloudAccounts, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v18;

  return v3;
}

- (id)_fetchAllAccountsWithType:(id)type error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  errorCopy = error;
  v6 = selfCopy;
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __52__AKAccountManager__fetchAllAccountsWithType_error___block_invoke;
  v12 = &unk_1E73D6C10;
  v13 = MEMORY[0x1E69E5928](selfCopy);
  v14[0] = MEMORY[0x1E69E5928](location[0]);
  v14[1] = errorCopy;
  v7 = ak_unfair_lock_perform_with_result_2(v6 + 27, &v8);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v7;
}

id __52__AKAccountManager__fetchAllAccountsWithType_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = 0;
  location = 0;
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 40);
  v19 = 0;
  v13 = [v2 accountsWithAccountType:v3 options:0 error:&v19];
  objc_storeStrong(&location, v19);
  v4 = v21[0];
  v21[0] = v13;
  MEMORY[0x1E69E5920](v4);
  if ([*(*(a1 + 32) + 8) isAccountDaemonConnectionError:location])
  {
    objc_storeStrong(&location, 0);
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v23, *(a1 + 40));
      _os_log_impl(&dword_193225000, v18, v17, "First attempt fetching accounts of type %@ failed, retrying once...", v23, 0xCu);
    }

    objc_storeStrong(&v18, 0);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(a1 + 40);
    v16 = location;
    v12 = [v5 accountsWithAccountType:v6 options:0 error:&v16];
    objc_storeStrong(&location, v16);
    v7 = v21[0];
    v21[0] = v12;
    MEMORY[0x1E69E5920](v7);
  }

  if (*(a1 + 48))
  {
    v11 = location;
    v8 = location;
    **(a1 + 48) = v11;
  }

  if (location)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v22, *(a1 + 40), location);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Could not fetch accounts of type %@ due to %@", v22, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v10 = MEMORY[0x1E69E5928](v21[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v21, 0);
  *MEMORY[0x1E69E9840];

  return v10;
}

- (unint64_t)authenticationModeForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"auth-mode"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (void)setAuthenticationMode:(unint64_t)mode forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  modeCopy = mode;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:modeCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  [(AKAccountManager *)selfCopy updateAuthModeTimestampForAccount:location];
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)shouldUpdateAuthModeForAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v12 = 0;
  v11 = [location[0] accountPropertyForKey:@"AuthModeTimeStamp"];
  if (v11)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v11];
    v8 = v3;
    MEMORY[0x1E69E5920](date);
    v10 = v8;
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      __os_log_helper_16_2_1_8_64(v14, v6);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Last Authentication mode fetch occured %@ seconds ago", v14, 0xCu);
      MEMORY[0x1E69E5920](v6);
    }

    objc_storeStrong(&oslog, 0);
    v12 = v10 >= 86400.0;
  }

  else
  {
    v12 = 1;
  }

  v5 = v12;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v5;
}

- (void)updateAuthModeTimestampForAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = location[0];
  date = [MEMORY[0x1E695DF00] date];
  [v4 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](date);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isManagedAppleIDForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [(AKAccountManager *)selfCopy securityLevelForAccount:location[0]]== 5;
  objc_storeStrong(location, 0);
  return v4;
}

- (unint64_t)managedOrganizationTypeForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"managedOrganizationType"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (void)setManagedOrganizationType:(unint64_t)type forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:typeCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)managedOrganizationNameForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"managedOrganizationName"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setManagedOrganizationName:(id)name forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"managedOrganizationName"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isNotificationEmailAvailableForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"isNotificationEmailAvailable"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setIsNotificationEmailAvailable:(BOOL)available forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  availableCopy = available;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:availableCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)notificationEmailForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"notificationEmail"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setNotificationEmail:(id)email forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, email);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"notificationEmail"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)canBeCustodianForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"canBeCustodian"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setCanBeCustodian:(BOOL)custodian forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  custodianCopy = custodian;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:custodianCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)canHaveCustodianForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"canHaveCustodian"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setCanHaveCustodian:(BOOL)custodian forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  custodianCopy = custodian;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:custodianCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)custodianEnabledForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"custodianEnabled"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setCustodianEnabled:(BOOL)enabled forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  enabledCopy = enabled;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)custodianListVersionForAccount:(id)account
{
  v8 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = [location[0] accountPropertyForKey:@"custodianListVersion"];
  v7 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v7;

  return v3;
}

- (void)setCustodianListVersion:(id)version forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"custodianListVersion"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)custodianLastModifiedForAccount:(id)account
{
  v8 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = [location[0] accountPropertyForKey:@"custodianLastModified"];
  v7 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v7;

  return v3;
}

- (void)setCustodianLastModified:(id)modified forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, modified);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"custodianLastModified"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)custodianInfosForAccount:(id)account
{
  v8 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = [location[0] accountPropertyForKey:@"custodianInfos"];
  v7 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v7;

  return v3;
}

- (unint64_t)numberOfApprovedRecoveryContactsForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v7 = [(AKAccountManager *)selfCopy authKitAccountWithAltDSID:location[0] error:0];
  v6 = [(AKAccountManager *)selfCopy custodianInfosForAccount:v7];
  v5 = [v6 aaf_filter:&__block_literal_global_252];
  v4 = [v5 count];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v4;
}

BOOL __63__AKAccountManager_numberOfApprovedRecoveryContactsForAltDSID___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] objectForKeyedSubscript:@"status"];
  v4 = [v3 isEqualToString:@"APPROVED"];
  MEMORY[0x1E69E5920](v3);
  v6 = (v4 & 1) != 0;
  objc_storeStrong(location, 0);
  return v6;
}

- (void)setCustodianInfos:(id)infos forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, infos);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"custodianInfos"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)beneficiaryInfoForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"beneficiaryInfo"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (void)setBeneficiaryInfo:(id)info forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"beneficiaryInfo"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isBeneficiaryForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"beneficiaryAccount"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setBeneficiary:(BOOL)beneficiary forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  beneficiaryCopy = beneficiary;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:beneficiaryCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)canBeBeneficiaryForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"canBeBeneficiary"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setCanBeBeneficiary:(BOOL)beneficiary forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  beneficiaryCopy = beneficiary;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:beneficiaryCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)canHaveBeneficiaryForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"canHaveBeneficiary"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setCanHaveBeneficiary:(BOOL)beneficiary forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  beneficiaryCopy = beneficiary;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:beneficiaryCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)beneficiaryListVersionForAccount:(id)account
{
  v8 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = [location[0] accountPropertyForKey:@"beneficiaryListVersion"];
  v7 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v7;

  return v3;
}

- (void)setBeneficiaryListVersion:(id)version forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"beneficiaryListVersion"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)beneficiaryLastModifiedForAccount:(id)account
{
  v8 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = [location[0] accountPropertyForKey:@"beneficiaryLastModified"];
  v7 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v7;

  return v3;
}

- (void)setBeneficiaryLastModified:(id)modified forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, modified);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"beneficiaryLastModified"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)hasMDMForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"hasMDM"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setHasMDM:(BOOL)m forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  mCopy = m;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:mCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)isSilentEscrowRecordRepairEnabledForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v9 = +[AKConfiguration sharedConfiguration];
  forceSilentEscrowRecordRepairEnabled = [v9 forceSilentEscrowRecordRepairEnabled];
  MEMORY[0x1E69E5920](v9);
  if (forceSilentEscrowRecordRepairEnabled == -1)
  {
    v17 = _AKLogSystem();
    v16 = 2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_debug_impl(&dword_193225000, log, type, "Silent escrow record repair is force disabled", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v20 = MEMORY[0x1E69E5928](MEMORY[0x1E695E110]);
    v14 = 1;
  }

  else if (forceSilentEscrowRecordRepairEnabled)
  {
    if (forceSilentEscrowRecordRepairEnabled == 1)
    {
      v13 = _AKLogSystem();
      v12 = 2;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v5 = v13;
        v6 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_debug_impl(&dword_193225000, v5, v6, "Silent escrow record repair is force enabled", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v20 = MEMORY[0x1E69E5928](MEMORY[0x1E695E118]);
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v20 = [(AKAccountManager *)selfCopy _isSilentEscrowRecordRepairEnabledForAccount:location[0]];
    v14 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v20;

  return v3;
}

- (id)_isSilentEscrowRecordRepairEnabledForAccount:(id)account
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v7 = [(AKAccountManager *)selfCopy additionalInfoForAccount:location[0]];
  v6 = objc_opt_class();
  v5 = [v7 objectForKeyedSubscript:@"silentEscrowRecordRepairEnabled"];
  v10 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v10;

  return v3;
}

- (void)setSilentEscrowRecordRepairEnabled:(id)enabled forAccount:(id)account
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, enabled);
  v13 = 0;
  objc_storeStrong(&v13, account);
  v7 = [(AKAccountManager *)selfCopy additionalInfoForAccount:v13];
  v8 = [v7 mutableCopy];
  v10 = 0;
  if (v8)
  {
    v4 = MEMORY[0x1E69E5928](v8);
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v10 = 1;
    v4 = MEMORY[0x1E69E5928](v11);
  }

  v12 = v4;
  if (v10)
  {
    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v7);
  [v12 setObject:location[0] forKeyedSubscript:@"silentEscrowRecordRepairEnabled"];
  v5 = selfCopy;
  v6 = [v12 copy];
  [(AKAccountManager *)v5 setAdditionalInfo:v6 forAccount:v13];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)isSilentEscrowRecordRepairEnabledForAccountV2:(id)v2
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, v2);
  v9 = +[AKConfiguration sharedConfiguration];
  forceSilentEscrowRecordRepairEnabledV2 = [v9 forceSilentEscrowRecordRepairEnabledV2];
  MEMORY[0x1E69E5920](v9);
  if (forceSilentEscrowRecordRepairEnabledV2 == -1)
  {
    v17 = _AKLogSystem();
    v16 = 2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_debug_impl(&dword_193225000, log, type, "Silent escrow record repair V2 is force disabled", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v20 = MEMORY[0x1E69E5928](MEMORY[0x1E695E110]);
    v14 = 1;
  }

  else if (forceSilentEscrowRecordRepairEnabledV2)
  {
    if (forceSilentEscrowRecordRepairEnabledV2 == 1)
    {
      v13 = _AKLogSystem();
      v12 = 2;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v5 = v13;
        v6 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_debug_impl(&dword_193225000, v5, v6, "Silent escrow record repair V2 is force enabled", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v20 = MEMORY[0x1E69E5928](MEMORY[0x1E695E118]);
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v20 = [(AKAccountManager *)selfCopy _isSilentEscrowRecordRepairEnabledForAccountV2:location[0]];
    v14 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v20;

  return v3;
}

- (id)_isSilentEscrowRecordRepairEnabledForAccountV2:(id)v2
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, v2);
  v7 = [(AKAccountManager *)selfCopy additionalInfoForAccount:location[0]];
  v6 = objc_opt_class();
  v5 = [v7 objectForKeyedSubscript:@"silentEscrowRecordRepairEnabledV2"];
  v10 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v10;

  return v3;
}

- (void)setSilentEscrowRecordRepairEnabledV2:(id)v2 forAccount:(id)account
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, v2);
  v13 = 0;
  objc_storeStrong(&v13, account);
  v7 = [(AKAccountManager *)selfCopy additionalInfoForAccount:v13];
  v8 = [v7 mutableCopy];
  v10 = 0;
  if (v8)
  {
    v4 = MEMORY[0x1E69E5928](v8);
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v10 = 1;
    v4 = MEMORY[0x1E69E5928](v11);
  }

  v12 = v4;
  if (v10)
  {
    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v7);
  [v12 setObject:location[0] forKeyedSubscript:@"silentEscrowRecordRepairEnabledV2"];
  v5 = selfCopy;
  v6 = [v12 copy];
  [(AKAccountManager *)v5 setAdditionalInfo:v6 forAccount:v13];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)isSilentBurnCDPRepairEnabledForAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v9 = +[AKConfiguration sharedConfiguration];
  forceSilentBurnCDPRepairEnabled = [v9 forceSilentBurnCDPRepairEnabled];
  MEMORY[0x1E69E5920](v9);
  if (forceSilentBurnCDPRepairEnabled == -1)
  {
    v17 = _AKLogSystem();
    v16 = 2;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_debug_impl(&dword_193225000, log, type, "Silent burn in mini-buddy is force disabled", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v20 = MEMORY[0x1E69E5928](MEMORY[0x1E695E110]);
    v14 = 1;
  }

  else if (forceSilentBurnCDPRepairEnabled)
  {
    if (forceSilentBurnCDPRepairEnabled == 1)
    {
      v13 = _AKLogSystem();
      v12 = 2;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v5 = v13;
        v6 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_debug_impl(&dword_193225000, v5, v6, "Silent burn in mini-buddy is force enabled", v11, 2u);
      }

      objc_storeStrong(&v13, 0);
      v20 = MEMORY[0x1E69E5928](MEMORY[0x1E695E118]);
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v20 = [(AKAccountManager *)selfCopy _isSilentBurnCDPRepairEnabledForAccount:location[0]];
    v14 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v20;

  return v3;
}

- (id)_isSilentBurnCDPRepairEnabledForAccount:(id)account
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v7 = [(AKAccountManager *)selfCopy additionalInfoForAccount:location[0]];
  v6 = objc_opt_class();
  v5 = [v7 objectForKeyedSubscript:@"silenBurnMiniBuddyEnabled"];
  v10 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v10;

  return v3;
}

- (void)setSilentBurnCDPRepairEnabled:(id)enabled forAccount:(id)account
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, enabled);
  v13 = 0;
  objc_storeStrong(&v13, account);
  v7 = [(AKAccountManager *)selfCopy additionalInfoForAccount:v13];
  v8 = [v7 mutableCopy];
  v10 = 0;
  if (v8)
  {
    v4 = MEMORY[0x1E69E5928](v8);
  }

  else
  {
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v10 = 1;
    v4 = MEMORY[0x1E69E5928](v11);
  }

  v12 = v4;
  if (v10)
  {
    MEMORY[0x1E69E5920](v11);
  }

  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v7);
  [v12 setObject:location[0] forKeyedSubscript:@"silenBurnMiniBuddyEnabled"];
  v5 = selfCopy;
  v6 = [v12 copy];
  [(AKAccountManager *)v5 setAdditionalInfo:v6 forAccount:v13];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)idmsWalrusStatusForAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v7 = +[AKConfiguration sharedConfiguration];
  idmsWalrusStatusOverride = [v7 idmsWalrusStatusOverride];
  MEMORY[0x1E69E5920](v7);
  if (idmsWalrusStatusOverride)
  {
    v10 = _AKLogSystem();
    v9 = 2;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_debug_impl(&dword_193225000, log, type, "idmsWalrusStatusOverride Override Enabled", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
    v14 = MEMORY[0x1E69E5928](idmsWalrusStatusOverride);
  }

  else
  {
    v14 = [(AKAccountManager *)selfCopy _idmsWalrusStatusForAccount:location[0]];
  }

  objc_storeStrong(&idmsWalrusStatusOverride, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v14;

  return v3;
}

- (id)_idmsWalrusStatusForAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v8 = objc_opt_class();
  v7 = [location[0] accountPropertyForKey:@"idmsWalrusStatus"];
  v11 = _AKSafeCast_8(v8, v7);
  MEMORY[0x1E69E5920](v7);
  if (v11)
  {
    v14 = MEMORY[0x1E69E5928](v11);
  }

  else
  {
    v10 = [(AKAccountManager *)selfCopy additionalInfoForAccount:location[0]];
    v6 = objc_opt_class();
    v5 = [v10 objectForKeyedSubscript:@"idmsWalrusStatus"];
    v9 = _AKSafeCast_8(v6, v5);
    MEMORY[0x1E69E5920](v5);
    v14 = MEMORY[0x1E69E5928](v9);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v14;

  return v3;
}

- (void)setIdmsWalrusStatus:(id)status forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"idmsWalrusStatus"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isFidoForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v4 = [location[0] accountPropertyForKey:@"fidoAccount"];
  v6 = [v4 BOOLValue] & 1;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)setFido:(BOOL)fido forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  fidoCopy = fido;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:fidoCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (unint64_t)signInPartitionForLivenessWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [(AKAccountManager *)selfCopy iCloudAccountForAltDSID:location[0]];
  if (v4 && [(AKAccountManager *)selfCopy isPrimaryiCloudAccount:v4])
  {
    v7 = 1;
  }

  else if (v4 && [(AKAccountManager *)selfCopy isFulliCloudAccount:v4])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (BOOL)isDataSeparatedAccountForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v4 = [(AKAccountManager *)selfCopy iCloudAccountForAltDSID:location[0]];
  v7 = v4 && ([v4 isDataSeparatedAccount] & 1) != 0;
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)personaUniqueStringForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = [(AKAccountManager *)selfCopy iCloudAccountForAltDSID:location[0]];
  v5 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6959798]];
  if (v5)
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6959798]];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (BOOL)hasPersonaAvailableForAltDSID:(id)d
{
  v32 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v26 = [(AKAccountManager *)selfCopy iCloudAccountForAltDSID:location[0]];
  v25 = [v26 objectForKeyedSubscript:*MEMORY[0x1E6959798]];
  if (v25)
  {
    v24 = _AKLogSystem();
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      log = v24;
      type = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_impl(&dword_193225000, log, type, "Account has a persona id, checking for existence of persona.", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    if (UserManagementLibraryCore(0))
    {
      UMUserManagerClass = getUMUserManagerClass();
    }

    else
    {
      UMUserManagerClass = 0;
    }

    uMUserManagerClass = [UMUserManagerClass sharedManager];
    listAllPersonaWithAttributes = [uMUserManagerClass listAllPersonaWithAttributes];
    MEMORY[0x1E69E5920](uMUserManagerClass);
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v31, listAllPersonaWithAttributes);
      _os_log_debug_impl(&dword_193225000, v20, v19, "personaAttributes: %@", v31, 0xCu);
    }

    objc_storeStrong(&v20, 0);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x1E69E5928](listAllPersonaWithAttributes);
    v11 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
    if (v11)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v11;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(__b[1] + 8 * v8);
        userPersonaUniqueString = [v18 userPersonaUniqueString];
        v5 = [userPersonaUniqueString isEqual:v25];
        MEMORY[0x1E69E5920](userPersonaUniqueString);
        if (v5)
        {
          break;
        }

        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
          if (!v9)
          {
            goto LABEL_17;
          }
        }
      }

      v29 = 1;
      v16 = 1;
    }

    else
    {
LABEL_17:
      v16 = 0;
    }

    MEMORY[0x1E69E5920](obj);
    if (!v16)
    {
      v29 = 0;
    }

    objc_storeStrong(&listAllPersonaWithAttributes, 0);
  }

  else
  {
    v29 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v29 & 1;
}

- (id)altDSIDForAuthKitAccountRequestingAuthorization
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAccountManager *)self authKitAccountRequestingAuthorization];
  if (location[0])
  {
    v6 = [(AKAccountManager *)selfCopy altDSIDForAccount:location[0]];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (id)authKitAccountRequestingAuthorization
{
  selfCopy = self;
  v6[1] = a2;
  _iCloudAccountRequestingAuthorization = [(AKAccountManager *)self _iCloudAccountRequestingAuthorization];
  v6[0] = [(AKAccountManager *)self altDSIDForAccount:?];
  MEMORY[0x1E69E5920](_iCloudAccountRequestingAuthorization);
  v5 = [(AKAccountManager *)selfCopy authKitAccountWithAltDSID:v6[0] error:?];
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_iCloudAccountRequestingAuthorization
{
  selfCopy = self;
  v20[1] = a2;
  if (UserManagementLibraryCore(0))
  {
    UMUserManagerClass = getUMUserManagerClass();
  }

  else
  {
    UMUserManagerClass = 0;
  }

  uMUserManagerClass = [UMUserManagerClass sharedManager];
  v20[0] = [uMUserManagerClass currentPersona];
  MEMORY[0x1E69E5920](uMUserManagerClass);
  if ([v20[0] isDataSeparatedPersona])
  {
    location = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_impl(&dword_193225000, log, type, "DS:Persona requesting authorization is of Data Separated Type, we will find and give them the secondary iCloud Account.", v17, 2u);
    }

    objc_storeStrong(&location, 0);
    v6 = selfCopy;
    userPersonaUniqueString = [v20[0] userPersonaUniqueString];
    v16 = [(AKAccountManager *)v6 _iCloudAccountFromPersonaUniqueIdentifier:?];
    MEMORY[0x1E69E5920](userPersonaUniqueString);
    if ([(AKAccountManager *)selfCopy _shouldBlockAuthorizationForPersona:v20[0]])
    {
      primaryiCloudAccount = 0;
    }

    else
    {
      primaryiCloudAccount = MEMORY[0x1E69E5928](v16);
    }

    v15 = 1;
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v14;
      v5 = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_impl(&dword_193225000, v4, v5, "DS:Supports Data Separation but persona is not Data Separated - falling back to assuming primary iCloud account is desired.", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    primaryiCloudAccount = [(AKAccountManager *)selfCopy primaryiCloudAccount];
    v15 = 1;
  }

  objc_storeStrong(v20, 0);
  v2 = primaryiCloudAccount;

  return v2;
}

- (id)_iCloudAccountFromPersonaUniqueIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  _iCloudAccounts = [(AKAccountManager *)selfCopy _iCloudAccounts];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](_iCloudAccounts);
  v12 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      v5 = [v15 objectForKeyedSubscript:*MEMORY[0x1E6959798]];
      v6 = [v5 isEqualToString:location[0]];
      MEMORY[0x1E69E5920](v5);
      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    v19 = MEMORY[0x1E69E5928](v15);
    v13 = 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  MEMORY[0x1E69E5920](obj);
  if (!v13)
  {
    v19 = 0;
  }

  objc_storeStrong(&_iCloudAccounts, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v19;

  return v3;
}

- (BOOL)_shouldBlockAuthorizationForPersona:(id)persona
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, persona);
  if (([location[0] isDataSeparatedPersona] & 1) == 0)
  {
    goto LABEL_8;
  }

  primaryiCloudAccount = [(AKAccountManager *)selfCopy primaryiCloudAccount];
  if ([(AKAccountManager *)selfCopy isManagedAppleIDForAccount:primaryiCloudAccount])
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v5 = type;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&dword_193225000, log, v5, "DS: Data Separated account is requesting authorization while primary account is already enteprise! Show Error.", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v14 = 1;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&primaryiCloudAccount, 0);
  if (!v6)
  {
LABEL_8:
    v14 = 0;
  }

  objc_storeStrong(location, 0);
  return v14 & 1;
}

+ (id)personaIDIfCurrentPersonaIsDataSeparated
{
  v12 = *MEMORY[0x1E69E9840];
  v9[2] = self;
  v9[1] = a2;
  if (UserManagementLibraryCore(0))
  {
    UMUserManagerClass = getUMUserManagerClass();
  }

  else
  {
    UMUserManagerClass = 0;
  }

  uMUserManagerClass = [UMUserManagerClass sharedManager];
  v9[0] = [uMUserManagerClass currentPersona];
  MEMORY[0x1E69E5920](uMUserManagerClass);
  if ([v9[0] isEnterprisePersona] & 1) != 0 || (objc_msgSend(v9[0], "isGuestPersona"))
  {
    userPersonaUniqueString = [v9[0] userPersonaUniqueString];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      userPersonaNickName = [v9[0] userPersonaNickName];
      __os_log_helper_16_2_3_8_66_8_64_8_0(v11, userPersonaUniqueString, userPersonaNickName, [v9[0] userPersonaType]);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Running within data separated persona. {uniqueString=%{public}@, nickname=%@, type=%ld}", v11, 0x20u);
      MEMORY[0x1E69E5920](userPersonaNickName);
    }

    objc_storeStrong(&oslog, 0);
    v10 = MEMORY[0x1E69E5928](userPersonaUniqueString);
    objc_storeStrong(&userPersonaUniqueString, 0);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(v9, 0);
  *MEMORY[0x1E69E9840];
  v2 = v10;

  return v2;
}

+ (void)performWithinPersonaForAccount:(id)account withBlock:(id)block
{
  v66 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v59 = 0;
  objc_storeStrong(&v59, block);
  v58 = 0;
  v58 = [location[0] objectForKeyedSubscript:*MEMORY[0x1E6959798]];
  MEMORY[0x1E69E5920](0);
  v57 = _AKLogSystem();
  v56 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v65, v58);
    _os_log_impl(&dword_193225000, v57, v56, "Attempting to perform block in persona: %@", v65, 0xCu);
  }

  objc_storeStrong(&v57, 0);
  v55 = 0;
  v54 = 0;
  v53 = 0;
  if (v58 && [v58 length])
  {
    if (UserManagementLibraryCore(0))
    {
      UMUserManagerClass = getUMUserManagerClass();
    }

    else
    {
      UMUserManagerClass = 0;
    }

    uMUserManagerClass = [UMUserManagerClass sharedManager];
    currentPersona = [uMUserManagerClass currentPersona];
    v5 = v54;
    v54 = currentPersona;
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](uMUserManagerClass);
    v52 = v55;
    v29 = [v54 copyCurrentPersonaContextWithError:&v52];
    objc_storeStrong(&v55, v52);
    v6 = v53;
    v53 = v29;
    MEMORY[0x1E69E5920](v6);
    identifier = [location[0] identifier];
    if (v53)
    {
      v7 = [v54 createPersonaContextForBackgroundProcessingWithPersonaUniqueString:v58];
      v8 = v55;
      v55 = v7;
      MEMORY[0x1E69E5920](v8);
      if (v55)
      {
        domain = [v55 domain];
        v27 = 0;
        if ([domain isEqualToString:*MEMORY[0x1E696A798]])
        {
          v27 = [v55 code] == 1;
        }

        MEMORY[0x1E69E5920](domain);
        if (v27)
        {
          v50 = _AKLogSystem();
          v49 = 16;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v24 = v50;
            v25 = v49;
            __os_log_helper_16_0_0(v48);
            _os_log_error_impl(&dword_193225000, v24, v25, "This process needs entitlement com.apple.usermanagerd.persona.background", v48, 2u);
          }

          objc_storeStrong(&v50, 0);
        }

        oslog = _AKLogSystem();
        v46 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_3_8_64_8_64_8_64(v64, v58, identifier, v55);
          _os_log_error_impl(&dword_193225000, oslog, v46, "Failed to set persona ID (%@) context for account %@ with error %@", v64, 0x20u);
        }

        objc_storeStrong(&oslog, 0);
      }
    }

    else
    {
      v45 = _AKLogSystem();
      v44 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v63, identifier, v55);
        _os_log_error_impl(&dword_193225000, v45, v44, "Could not get current persona context for account %@, with error %@", v63, 0x16u);
      }

      objc_storeStrong(&v45, 0);
    }

    objc_storeStrong(&identifier, 0);
  }

  else
  {
    v43 = _AKLogSystem();
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v43;
      v23 = v42;
      __os_log_helper_16_0_0(v41);
      _os_log_impl(&dword_193225000, v22, v23, "No persona ID on account proceeding without setting context.", v41, 2u);
    }

    objc_storeStrong(&v43, 0);
  }

  v40 = _AKLogSystem();
  v39 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    if (UserManagementLibraryCore(0))
    {
      v21 = getUMUserManagerClass();
    }

    else
    {
      v21 = 0;
    }

    sharedManager = [v21 sharedManager];
    currentPersona2 = [sharedManager currentPersona];
    userPersonaNickName = [currentPersona2 userPersonaNickName];
    __os_log_helper_16_2_1_8_64(v62, userPersonaNickName);
    _os_log_impl(&dword_193225000, v40, v39, "Performing block within persona %@", v62, 0xCu);
    MEMORY[0x1E69E5920](userPersonaNickName);
    MEMORY[0x1E69E5920](currentPersona2);
    MEMORY[0x1E69E5920](sharedManager);
  }

  objc_storeStrong(&v40, 0);
  (*(v59 + 2))();
  if (v54 && v53 && !v55)
  {
    v38 = _AKLogSystem();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v38;
      v17 = v37;
      __os_log_helper_16_0_0(v36);
      _os_log_impl(&dword_193225000, v16, v17, "Restoring persona for current context", v36, 2u);
    }

    objc_storeStrong(&v38, 0);
    v9 = [v54 restorePersonaWithSavedPersonaContext:v53];
    v35 = _AKLogSystem();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v35;
      v15 = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_impl(&dword_193225000, v14, v15, "Restored persona for current context", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
  }

  v32 = _AKLogSystem();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    if (UserManagementLibraryCore(0))
    {
      v13 = getUMUserManagerClass();
    }

    else
    {
      v13 = 0;
    }

    sharedManager2 = [v13 sharedManager];
    currentPersona3 = [sharedManager2 currentPersona];
    userPersonaNickName2 = [currentPersona3 userPersonaNickName];
    __os_log_helper_16_2_1_8_64(v61, userPersonaNickName2);
    _os_log_impl(&dword_193225000, v32, OS_LOG_TYPE_DEFAULT, "Performed block within persona %@", v61, 0xCu);
    MEMORY[0x1E69E5920](userPersonaNickName2);
    MEMORY[0x1E69E5920](currentPersona3);
    MEMORY[0x1E69E5920](sharedManager2);
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setPasskeyEligible:(BOOL)eligible forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  eligibleCopy = eligible;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:eligibleCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)passkeyEligibleForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"passkeyEligible"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setPasskeyPresent:(BOOL)present forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  presentCopy = present;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:presentCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)passkeyPresentForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"passkeyPresent"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setPasskeysInKeychainCount:(id)count forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, count);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"passkeysCount"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)passkeysInKeychainCountForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"passkeysCount"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setPasskeyRegistrationAttemptDateForAccount:(id)account forAccount:(id)forAccount
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = 0;
  objc_storeStrong(&v5, forAccount);
  [v5 setAccountProperty:location[0] forKey:@"passkeyRegistrationAttemptDate"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)passkeyRegistrationAttemptDateForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"passkeyRegistrationAttemptDate"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setPasskeysDeletionAttemptDate:(id)date forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"passkeysDeletionAttemptDate"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)passkeysDeletionAttemptDateForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"passkeysDeletionAttemptDate"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (id)groupKitEligibilityForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"groupkitEligibilityInd"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setGroupKitEligibility:(id)eligibility forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, eligibility);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"groupkitEligibilityInd"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setPasscodeAuthEnabled:(BOOL)enabled forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  enabledCopy = enabled;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isPasscodeAuthEnabledForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = objc_opt_class();
  v4 = [location[0] accountPropertyForKey:@"passcodeAuthEnabled"];
  v6 = _AKSafeCast_8(v5, v4);
  MEMORY[0x1E69E5920](v4);
  v8 = [v6 BOOLValue] & 1;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (void)setPasscodeAuth:(BOOL)auth forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  authCopy = auth;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:authCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isPasscodeAuthForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = objc_opt_class();
  v4 = [location[0] accountPropertyForKey:@"isPasscodeAuth"];
  v6 = _AKSafeCast_8(v5, v4);
  MEMORY[0x1E69E5920](v4);
  v8 = [v6 BOOLValue] & 1;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (void)setAskToBuy:(BOOL)buy forAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v8 = a2;
  buyCopy = buy;
  location = 0;
  objc_storeStrong(&location, account);
  v5 = location;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:buyCopy];
  [v5 setAccountProperty:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isAskToBuyForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v5 = objc_opt_class();
  v4 = [location[0] accountPropertyForKey:@"askToBuy"];
  v6 = _AKSafeCast_8(v5, v4);
  MEMORY[0x1E69E5920](v4);
  v8 = [v6 BOOLValue] & 1;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (id)deviceListVersionForAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"deviceListVersion"];
  v7 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  v9 = MEMORY[0x1E69E5928](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v9;

  return v3;
}

- (void)setDeviceListVersion:(id)version forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"deviceListVersion"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)deletedDevicesCacheExpiryOffsetForAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"deletedDevicesCacheExpiryOffset"];
  v7 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  v9 = MEMORY[0x1E69E5928](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v9;

  return v3;
}

- (void)setDeletedDevicesCacheExpiryOffset:(id)offset forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, offset);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"deletedDevicesCacheExpiryOffset"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)birthYearForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"yob"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setBirthYear:(id)year forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, year);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"yob"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)setCanAttestAge:(id)age forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, age);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"parentalAgeConsent"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)canAttestAgeForAccount:(id)account
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  if ([(AKAccountManager *)selfCopy userUnderAgeForAccount:location[0]])
  {
    v6 = objc_opt_class();
    v5 = [location[0] accountPropertyForKey:@"parentalAgeConsent"];
    v9 = _AKSafeCast_8(v6, v5);
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    v9 = MEMORY[0x1E69E5928](&unk_1F07B4EF8);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v9;

  return v3;
}

- (void)setADPCohort:(id)cohort forAccount:(id)account
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cohort);
  v7 = 0;
  objc_storeStrong(&v7, account);
  if (location[0])
  {
    if (([location[0] intValue] & 0x80000000) != 0 || objc_msgSend(location[0], "intValue") > 10)
    {
      v5 = _AKLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_2_8_64_4_0(v10, selfCopy, [location[0] intValue]);
        _os_log_fault_impl(&dword_193225000, v5, OS_LOG_TYPE_FAULT, "%@: ADP cohort value %d obtained from IdMS outside the allowed range, rejected.", v10, 0x12u);
      }

      objc_storeStrong(&v5, 0);
      v6 = 1;
    }

    else
    {
      [v7 setAccountProperty:location[0] forKey:@"adpCh"];
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)activeiCloudPrivateEmailCountForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"activeHMECount"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (id)inactiveiCloudPrivateEmailCountForAccount:(id)account
{
  v7 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = [location[0] accountPropertyForKey:@"inActiveHMECount"];
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v6;

  return v3;
}

- (id)activeiCloudPrivateEmailCount
{
  primaryAuthKitAccount = [(AKAccountManager *)self primaryAuthKitAccount];
  v5 = [(AKAccountManager *)self activeiCloudPrivateEmailCountForAccount:?];
  MEMORY[0x1E69E5920](primaryAuthKitAccount);

  return v5;
}

- (id)inactiveiCloudPrivateEmailCount
{
  primaryAuthKitAccount = [(AKAccountManager *)self primaryAuthKitAccount];
  v5 = [(AKAccountManager *)self inactiveiCloudPrivateEmailCountForAccount:?];
  MEMORY[0x1E69E5920](primaryAuthKitAccount);

  return v5;
}

- (void)setSharingGroupLastNotificationDate:(id)date forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"signInWithAppleSharingGroupLastNotificationDate"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)sharingGroupLastNotificationDateForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"signInWithAppleSharingGroupLastNotificationDate"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setPreviousAccountInfoRefreshDate:(id)date forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"previousAccountInfoRefreshDate"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)previousAccountInfoRefreshDateForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"previousAccountInfoRefreshDate"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (BOOL)isSignOutInProgress:(id)progress
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, progress);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"signOutInProgress"];
  v4 = _AKSafeCast_8(v6, v5);
  v8 = [v4 BOOLValue] & 1;
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (void)setSignOutInProgress:(id)progress forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, progress);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"signOutInProgress"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)isEligibleToMigrateToChildForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"ageMigrationEligible"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setIsEligibleToMigrateToChild:(id)child forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, child);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"ageMigrationEligible"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)lastSettingsRedirectDateForAccount:(id)account
{
  v9 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v6 = objc_opt_class();
  v5 = [location[0] accountPropertyForKey:@"lastSettingsRedirectDate"];
  v8 = _AKSafeCast_8(v6, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

- (void)setLastSettingsRedirectDate:(id)date forAccount:(id)account
{
  location[6] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v5 = 0;
  objc_storeStrong(&v5, account);
  [v5 setAccountProperty:location[0] forKey:@"lastSettingsRedirectDate"];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end
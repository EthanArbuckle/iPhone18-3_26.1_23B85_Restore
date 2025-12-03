@interface AKServerResponseAccountUpdater
- (AKServerResponseAccountUpdater)init;
- (BOOL)_saveAccount:(id)account userInfoDictionary:(id)dictionary error:(id *)error;
- (BOOL)updateAuthKitAccount:(id)account withServerResponse:(id)response context:(id)context error:(id *)error;
- (void)_postUserInfoChangedNotificationWithPayload:(id)payload;
- (void)_updateAccountInUseForAccount:(id)account withContext:(id)context;
- (void)_updateAccountInfoPropertiesForAccount:(id)account withServerResponse:(id)response userInfoDictionary:(id)dictionary;
- (void)_updateAppleAccountSecurityPropertiesForAccount:(id)account withServerResponse:(id)response userInfoDictionary:(id)dictionary;
- (void)_updateBeneficiaryPropertiesForAccount:(id)account withServerResponse:(id)response;
- (void)_updateChildPasscodePropertiesForAccount:(id)account withServerResponse:(id)response;
- (void)_updateCustodianPropertiesForAccount:(id)account withServerResponse:(id)response;
- (void)_updateMaidPropertiesForAccount:(id)account withServerResponse:(id)response;
- (void)_updatePasskeyPropertiesForAccount:(id)account withServerResponse:(id)response;
- (void)_updateRemainingPropertiesForAccount:(id)account withServerResponse:(id)response;
- (void)_updateSecurityLevelForAccount:(id)account withServerResponse:(id)response userInfoDictionary:(id)dictionary;
- (void)_updateTelemetryDeviceSessionIDForAccount:(id)account withContext:(id)context;
- (void)_updateTokensForAccount:(id)account withServerResponse:(id)response context:(id)context;
- (void)_updateUserInfoPropertiesForAccount:(id)account withServerResponse:(id)response;
@end

@implementation AKServerResponseAccountUpdater

- (AKServerResponseAccountUpdater)init
{
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = AKServerResponseAccountUpdater;
  v10 = [(AKServerResponseAccountUpdater *)&v11 init];
  v13 = v10;
  objc_storeStrong(&v13, v10);
  if (v10)
  {
    v2 = +[AKAccountManager sharedInstance];
    accountManager = v13->_accountManager;
    v13->_accountManager = v2;
    _objc_release(accountManager);
    v4 = +[AKTokenManager sharedInstance];
    tokenManager = v13->_tokenManager;
    v13->_tokenManager = v4;
    _objc_release(tokenManager);
    v6 = +[AKUserInfoController sharedController];
    userInfoController = v13->_userInfoController;
    v13->_userInfoController = v6;
    _objc_release(userInfoController);
  }

  v9 = _objc_retain(v13);
  objc_storeStrong(&v13, 0);
  return v9;
}

- (BOOL)updateAuthKitAccount:(id)account withServerResponse:(id)response context:(id)context error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v14 = 0;
  objc_storeStrong(&v14, response);
  v13 = 0;
  objc_storeStrong(&v13, context);
  v12[1] = error;
  v12[0] = +[NSMutableDictionary dictionary];
  [(AKServerResponseAccountUpdater *)selfCopy _updateAccountInfoPropertiesForAccount:location[0] withServerResponse:v14 userInfoDictionary:v12[0]];
  [(AKServerResponseAccountUpdater *)selfCopy _updateUserInfoPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)selfCopy _updateSecurityLevelForAccount:location[0] withServerResponse:v14 userInfoDictionary:v12[0]];
  [(AKServerResponseAccountUpdater *)selfCopy _updateMaidPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)selfCopy _updateAppleAccountSecurityPropertiesForAccount:location[0] withServerResponse:v14 userInfoDictionary:v12[0]];
  [(AKServerResponseAccountUpdater *)selfCopy _updatePasskeyPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)selfCopy _updateChildPasscodePropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)selfCopy _updateCustodianPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)selfCopy _updateBeneficiaryPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)selfCopy _updateTokensForAccount:location[0] withServerResponse:v14 context:v13];
  [(AKServerResponseAccountUpdater *)selfCopy _updateTelemetryDeviceSessionIDForAccount:location[0] withContext:v13];
  [(AKServerResponseAccountUpdater *)selfCopy _updateAccountInUseForAccount:location[0] withContext:v13];
  [(AKServerResponseAccountUpdater *)selfCopy _updateRemainingPropertiesForAccount:location[0] withServerResponse:v14];
  [location[0] setAuthenticated:1];
  v11 = [(AKServerResponseAccountUpdater *)selfCopy _saveAccount:location[0] userInfoDictionary:v12[0] error:error];
  if ((v11 & 1) != 0 && [v12[0] count])
  {
    v7 = [(AKAccountManager *)selfCopy->_accountManager altDSIDForAccount:location[0]];
    [v12[0] setObject:? forKeyedSubscript:?];
    _objc_release(v7);
    [(AKServerResponseAccountUpdater *)selfCopy _postUserInfoChangedNotificationWithPayload:v12[0]];
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (void)_updateAccountInfoPropertiesForAccount:(id)account withServerResponse:(id)response userInfoDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v28 = 0;
  objc_storeStrong(&v28, response);
  v27 = 0;
  objc_storeStrong(&v27, dictionary);
  altDSID = [v28 altDSID];
  _objc_release(altDSID);
  if (altDSID)
  {
    accountManager = selfCopy->_accountManager;
    altDSID2 = [v28 altDSID];
    [AKAccountManager setAltDSID:"setAltDSID:forAccount:" forAccount:?];
    _objc_release(altDSID2);
  }

  dsid = [v28 dsid];
  _objc_release(dsid);
  if (dsid)
  {
    v16 = selfCopy->_accountManager;
    dsid2 = [v28 dsid];
    [AKAccountManager setDSID:v16 forAccount:"setDSID:forAccount:"];
    _objc_release(dsid2);
  }

  v26 = [(AKAccountManager *)selfCopy->_accountManager authenticationModeForAccount:location[0]];
  authMode = [v28 authMode];
  if (authMode)
  {
    [(AKAccountManager *)selfCopy->_accountManager setAuthenticationMode:authMode forAccount:location[0]];
  }

  if (authMode != v26 && v26 && authMode)
  {
    v15 = [NSNumber numberWithUnsignedInteger:authMode];
    [v27 setObject:? forKeyedSubscript:?];
    _objc_release(v15);
  }

  if ([v28 phoneAsAppleID])
  {
    v14 = selfCopy->_accountManager;
    phoneAsAppleID = [v28 phoneAsAppleID];
    [(AKAccountManager *)v14 setPhoneAsAppleID:phoneAsAppleID forAccount:location[0]];
  }

  v24 = [(AKAccountManager *)selfCopy->_accountManager demoAccountForAccount:location[0]];
  if (([v28 isDemoAccount] & 1) != (v24 & 1))
  {
    v13 = selfCopy->_accountManager;
    isDemoAccount = [v28 isDemoAccount];
    [(AKAccountManager *)v13 setDemoAccount:isDemoAccount forAccount:location[0]];
  }

  additionalInfo = [v28 additionalInfo];
  _objc_release(additionalInfo);
  if (additionalInfo)
  {
    v10 = selfCopy->_accountManager;
    additionalInfo2 = [v28 additionalInfo];
    [AKAccountManager setAdditionalInfo:v10 forAccount:"setAdditionalInfo:forAccount:"];
    _objc_release(additionalInfo2);
  }

  idmsWalrusStatus = [v28 idmsWalrusStatus];
  _objc_release(idmsWalrusStatus);
  if (idmsWalrusStatus)
  {
    v7 = selfCopy->_accountManager;
    idmsWalrusStatus2 = [v28 idmsWalrusStatus];
    [AKAccountManager setIdmsWalrusStatus:v7 forAccount:"setIdmsWalrusStatus:forAccount:"];
    _objc_release(idmsWalrusStatus2);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateUserInfoPropertiesForAccount:(id)account withServerResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v43 = 0;
  objc_storeStrong(&v43, response);
  firstName = [v43 firstName];
  _objc_release(firstName);
  if (firstName)
  {
    accountManager = selfCopy->_accountManager;
    firstName2 = [v43 firstName];
    [AKAccountManager setGivenName:"setGivenName:forAccount:" forAccount:?];
    _objc_release(firstName2);
  }

  lastName = [v43 lastName];
  _objc_release(lastName);
  if (lastName)
  {
    v36 = selfCopy->_accountManager;
    lastName2 = [v43 lastName];
    [AKAccountManager setFamilyName:v36 forAccount:"setFamilyName:forAccount:"];
    _objc_release(lastName2);
  }

  primaryEmail = [v43 primaryEmail];
  _objc_release(primaryEmail);
  if (primaryEmail)
  {
    v33 = selfCopy->_accountManager;
    primaryEmail2 = [v43 primaryEmail];
    [AKAccountManager setPrimaryEmailAddress:v33 forAccount:"setPrimaryEmailAddress:forAccount:"];
    _objc_release(primaryEmail2);
  }

  v31 = selfCopy->_accountManager;
  primaryEmailVetted = [v43 primaryEmailVetted];
  [(AKAccountManager *)v31 setVerifiedPrimaryEmail:primaryEmailVetted forAccount:location[0]];
  aliases = [v43 aliases];
  _objc_release(aliases);
  if (aliases)
  {
    v29 = selfCopy->_accountManager;
    aliases2 = [v43 aliases];
    [AKAccountManager setAliases:v29 forAccount:"setAliases:forAccount:"];
    _objc_release(aliases2);
  }

  appleIDCountryCode = [v43 appleIDCountryCode];
  _objc_release(appleIDCountryCode);
  if (appleIDCountryCode)
  {
    v26 = selfCopy->_accountManager;
    appleIDCountryCode2 = [v43 appleIDCountryCode];
    [AKAccountManager setAppleIDCountryCode:v26 forAccount:"setAppleIDCountryCode:forAccount:"];
    _objc_release(appleIDCountryCode2);
  }

  birthYear = [v43 birthYear];
  _objc_release(birthYear);
  if (birthYear)
  {
    v23 = selfCopy->_accountManager;
    birthYear2 = [v43 birthYear];
    [AKAccountManager setBirthYear:v23 forAccount:"setBirthYear:forAccount:"];
    _objc_release(birthYear2);
  }

  ageOfMajority = [v43 ageOfMajority];
  _objc_release(ageOfMajority);
  if (ageOfMajority)
  {
    v20 = selfCopy->_accountManager;
    ageOfMajority2 = [v43 ageOfMajority];
    [AKAccountManager setAgeOfMajority:v20 forAccount:"setAgeOfMajority:forAccount:"];
    _objc_release(ageOfMajority2);
  }

  canAttestAge = [v43 canAttestAge];
  _objc_release(canAttestAge);
  if (canAttestAge)
  {
    v17 = selfCopy->_accountManager;
    canAttestAge2 = [v43 canAttestAge];
    [AKAccountManager setCanAttestAge:v17 forAccount:"setCanAttestAge:forAccount:"];
    _objc_release(canAttestAge2);
  }

  if ([v43 userAgeRange])
  {
    v16 = selfCopy->_accountManager;
    userAgeRange = [v43 userAgeRange];
    [(AKAccountManager *)v16 setUserAgeRange:userAgeRange forAccount:location[0]];
  }

  v15 = selfCopy->_accountManager;
  isUnderAgeOfMajority = [v43 isUnderAgeOfMajority];
  [(AKAccountManager *)v15 setUserUnderage:isUnderAgeOfMajority forAccount:location[0]];
  if ([v43 isUnderAgeOfMajority])
  {
    v14 = selfCopy->_accountManager;
    isSiwaForChildEnabled = [v43 isSiwaForChildEnabled];
    [(AKAccountManager *)v14 setIsSiwaEnabled:isSiwaForChildEnabled forChildAccount:location[0]];
  }

  v12 = selfCopy->_accountManager;
  isSenior = [v43 isSenior];
  [(AKAccountManager *)v12 setUserIsSenior:isSenior forAccount:location[0]];
  isEligibleForSafetyScreen = [v43 isEligibleForSafetyScreen];
  _objc_release(isEligibleForSafetyScreen);
  if (isEligibleForSafetyScreen)
  {
    v10 = selfCopy->_accountManager;
    isEligibleForSafetyScreen2 = [v43 isEligibleForSafetyScreen];
    bOOLValue = [isEligibleForSafetyScreen2 BOOLValue];
    [(AKAccountManager *)v10 setIsEligibleForSafetyScreen:bOOLValue forAccount:location[0]];
    _objc_release(isEligibleForSafetyScreen2);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateSecurityLevelForAccount:(id)account withServerResponse:(id)response userInfoDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v11 = 0;
  objc_storeStrong(&v11, response);
  v10 = 0;
  objc_storeStrong(&v10, dictionary);
  v9 = [(AKAccountManager *)selfCopy->_accountManager securityLevelForAccount:location[0]];
  appleIDSecurityLevel = [v11 appleIDSecurityLevel];
  if (appleIDSecurityLevel)
  {
    [(AKAccountManager *)selfCopy->_accountManager setSecurityLevel:appleIDSecurityLevel forAccount:location[0]];
  }

  if (appleIDSecurityLevel != v9 && v9 && appleIDSecurityLevel)
  {
    v5 = [NSNumber numberWithUnsignedInteger:appleIDSecurityLevel];
    [v10 setObject:? forKeyedSubscript:?];
    _objc_release(v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateMaidPropertiesForAccount:(id)account withServerResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v15 = 0;
  objc_storeStrong(&v15, response);
  hasMDM = [v15 hasMDM];
  _objc_release(hasMDM);
  if (hasMDM)
  {
    accountManager = selfCopy->_accountManager;
    hasMDM2 = [v15 hasMDM];
    bOOLValue = [hasMDM2 BOOLValue];
    [(AKAccountManager *)accountManager setHasMDM:bOOLValue forAccount:location[0]];
    _objc_release(hasMDM2);
  }

  managedOrganizationType = [v15 managedOrganizationType];
  if (managedOrganizationType)
  {
    [(AKAccountManager *)selfCopy->_accountManager setManagedOrganizationType:managedOrganizationType forAccount:location[0]];
  }

  managedOrganizationName = [v15 managedOrganizationName];
  _objc_release(managedOrganizationName);
  if (managedOrganizationName)
  {
    v5 = selfCopy->_accountManager;
    managedOrganizationName2 = [v15 managedOrganizationName];
    [AKAccountManager setManagedOrganizationName:v5 forAccount:"setManagedOrganizationName:forAccount:"];
    _objc_release(managedOrganizationName2);
  }

  if (+[AKFeatureManager isEnforceMDMPolicyEnabled](AKFeatureManager, "isEnforceMDMPolicyEnabled") & 1) != 0 && location[0] && ([v15 isMdmInfoRequired])
  {
    [(AKAccountManager *)selfCopy->_accountManager setMarkedForSignOut:0 forAccount:location[0]];
  }

  v13 = [(AKAccountManager *)selfCopy->_accountManager mdmInformationRequiredForAccount:location[0]];
  isMdmInfoRequired = [v15 isMdmInfoRequired];
  if ((isMdmInfoRequired & 1) != (v13 & 1))
  {
    [(AKAccountManager *)selfCopy->_accountManager setMDMInformationRequired:isMdmInfoRequired & 1 forAccount:location[0]];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateAppleAccountSecurityPropertiesForAccount:(id)account withServerResponse:(id)response userInfoDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v31 = 0;
  objc_storeStrong(&v31, response);
  v30 = 0;
  objc_storeStrong(&v30, dictionary);
  adpCohort = [v31 adpCohort];
  _objc_release(adpCohort);
  if (adpCohort)
  {
    accountManager = selfCopy->_accountManager;
    adpCohort2 = [v31 adpCohort];
    [AKAccountManager setADPCohort:"setADPCohort:forAccount:" forAccount:?];
    _objc_release(adpCohort2);
  }

  webAccessEnabled = [v31 webAccessEnabled];
  _objc_release(webAccessEnabled);
  if (webAccessEnabled)
  {
    v19 = selfCopy->_accountManager;
    webAccessEnabled2 = [v31 webAccessEnabled];
    bOOLValue = [webAccessEnabled2 BOOLValue];
    [(AKAccountManager *)v19 setWebAccessEnabled:bOOLValue forAccount:location[0]];
    _objc_release(webAccessEnabled2);
  }

  if ([v31 isFidoAuthRequired])
  {
    v18 = selfCopy->_accountManager;
    isFidoAuthRequired = [v31 isFidoAuthRequired];
    [(AKAccountManager *)v18 setFido:isFidoAuthRequired forAccount:location[0]];
  }

  hasModernRecoveryKey = [v31 hasModernRecoveryKey];
  _objc_release(hasModernRecoveryKey);
  if (hasModernRecoveryKey)
  {
    v15 = selfCopy->_accountManager;
    hasModernRecoveryKey2 = [v31 hasModernRecoveryKey];
    bOOLValue2 = [hasModernRecoveryKey2 BOOLValue];
    [(AKAccountManager *)v15 setHasModernRecoveryKey:bOOLValue2 forAccount:location[0]];
    _objc_release(hasModernRecoveryKey2);
  }

  configurationInfo = [v31 configurationInfo];
  _objc_release(configurationInfo);
  if (configurationInfo)
  {
    v29 = +[AKUserConfigController sharedController];
    v12 = v29;
    v11 = location[0];
    configurationInfo2 = [v31 configurationInfo];
    [v12 updateUserConfigForAccount:v11 configurationInfo:?];
    _objc_release(configurationInfo2);
    objc_storeStrong(&v29, 0);
  }

  v28 = [(AKAccountManager *)selfCopy->_accountManager configDataVersionForAccount:location[0]];
  configDataVersion = [v31 configDataVersion];
  if (configDataVersion && !sub_100182F80(configDataVersion, v28))
  {
    v8 = selfCopy->_accountManager;
    configDataVersion2 = [v31 configDataVersion];
    [AKAccountManager setConfigDataVersion:v8 forAccount:"setConfigDataVersion:forAccount:"];
    _objc_release(configDataVersion2);
    configDataVersion3 = [v31 configDataVersion];
    [v30 setObject:? forKeyedSubscript:?];
    _objc_release(configDataVersion3);
  }

  objc_storeStrong(&configDataVersion, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateCustodianPropertiesForAccount:(id)account withServerResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v26 = 0;
  objc_storeStrong(&v26, response);
  canBeCustodian = [v26 canBeCustodian];
  _objc_release(canBeCustodian);
  if (canBeCustodian)
  {
    accountManager = selfCopy->_accountManager;
    canBeCustodian2 = [v26 canBeCustodian];
    bOOLValue = [canBeCustodian2 BOOLValue];
    [(AKAccountManager *)accountManager setCanBeCustodian:bOOLValue forAccount:location[0]];
    _objc_release(canBeCustodian2);
  }

  canHaveCustodian = [v26 canHaveCustodian];
  _objc_release(canHaveCustodian);
  if (canHaveCustodian)
  {
    v17 = selfCopy->_accountManager;
    canHaveCustodian2 = [v26 canHaveCustodian];
    bOOLValue2 = [canHaveCustodian2 BOOLValue];
    [(AKAccountManager *)v17 setCanHaveCustodian:bOOLValue2 forAccount:location[0]];
    _objc_release(canHaveCustodian2);
  }

  custodianEnabled = [v26 custodianEnabled];
  _objc_release(custodianEnabled);
  if (custodianEnabled)
  {
    v14 = selfCopy->_accountManager;
    custodianEnabled2 = [v26 custodianEnabled];
    bOOLValue3 = [custodianEnabled2 BOOLValue];
    [(AKAccountManager *)v14 setCustodianEnabled:bOOLValue3 forAccount:location[0]];
    _objc_release(custodianEnabled2);
  }

  custodianLastModified = [v26 custodianLastModified];
  _objc_release(custodianLastModified);
  if (custodianLastModified)
  {
    v11 = selfCopy->_accountManager;
    custodianLastModified2 = [v26 custodianLastModified];
    [AKAccountManager setCustodianLastModified:v11 forAccount:"setCustodianLastModified:forAccount:"];
    _objc_release(custodianLastModified2);
  }

  v9 = [(AKAccountManager *)selfCopy->_accountManager custodianInfosForAccount:location[0]];
  v25 = [NSSet setWithArray:?];
  _objc_release(v9);
  custodianInfos = [v26 custodianInfos];
  v24 = [NSSet setWithArray:?];
  _objc_release(custodianInfos);
  if (v24 && ![v24 isEqualToSet:v25])
  {
    v7 = selfCopy->_accountManager;
    custodianInfos2 = [v26 custodianInfos];
    [AKAccountManager setCustodianInfos:v7 forAccount:"setCustodianInfos:forAccount:"];
    _objc_release(custodianInfos2);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateBeneficiaryPropertiesForAccount:(id)account withServerResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v28 = 0;
  objc_storeStrong(&v28, response);
  beneficiaryIdentifier = [v28 beneficiaryIdentifier];
  _objc_release(beneficiaryIdentifier);
  if (beneficiaryIdentifier)
  {
    [(AKAccountManager *)selfCopy->_accountManager setBeneficiary:1 forAccount:location[0]];
  }

  canBeBeneficiary = [v28 canBeBeneficiary];
  _objc_release(canBeBeneficiary);
  if (canBeBeneficiary)
  {
    accountManager = selfCopy->_accountManager;
    canBeBeneficiary2 = [v28 canBeBeneficiary];
    bOOLValue = [canBeBeneficiary2 BOOLValue];
    [(AKAccountManager *)accountManager setCanBeBeneficiary:bOOLValue forAccount:location[0]];
    _objc_release(canBeBeneficiary2);
  }

  canHaveBeneficiary = [v28 canHaveBeneficiary];
  _objc_release(canHaveBeneficiary);
  if (canHaveBeneficiary)
  {
    v14 = selfCopy->_accountManager;
    canHaveBeneficiary2 = [v28 canHaveBeneficiary];
    bOOLValue2 = [canHaveBeneficiary2 BOOLValue];
    [(AKAccountManager *)v14 setCanHaveBeneficiary:bOOLValue2 forAccount:location[0]];
    _objc_release(canHaveBeneficiary2);
  }

  beneficiaryLastModified = [v28 beneficiaryLastModified];
  _objc_release(beneficiaryLastModified);
  if (beneficiaryLastModified)
  {
    v11 = selfCopy->_accountManager;
    beneficiaryLastModified2 = [v28 beneficiaryLastModified];
    [AKAccountManager setBeneficiaryLastModified:v11 forAccount:"setBeneficiaryLastModified:forAccount:"];
    _objc_release(beneficiaryLastModified2);
  }

  beneficiaryInfo = [v28 beneficiaryInfo];
  v26 = 0;
  v10 = 0;
  if (beneficiaryInfo)
  {
    beneficiaryInfo2 = [v28 beneficiaryInfo];
    v26 = 1;
    v10 = [beneficiaryInfo2 count] != 0;
  }

  if (v26)
  {
    _objc_release(beneficiaryInfo2);
  }

  _objc_release(beneficiaryInfo);
  if (v10)
  {
    v25 = [(AKAccountManager *)selfCopy->_accountManager beneficiaryInfoForAccount:location[0]];
    v7 = [AKBeneficiaryUpdater removeWrappedKeyFrom:v25];
    v24 = [NSSet setWithArray:?];
    _objc_release(v7);
    beneficiaryInfo3 = [v28 beneficiaryInfo];
    v23 = [NSSet setWithArray:?];
    _objc_release(beneficiaryInfo3);
    if (v23 && ![v23 isEqualToSet:v24])
    {
      beneficiaryInfo4 = [v28 beneficiaryInfo];
      v22 = [AKBeneficiaryUpdater saveWrappedKeyInKeychain:?];
      _objc_release(beneficiaryInfo4);
      [(AKAccountManager *)selfCopy->_accountManager setBeneficiaryInfo:v22 forAccount:location[0]];
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_updatePasskeyPropertiesForAccount:(id)account withServerResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v13 = 0;
  objc_storeStrong(&v13, response);
  passkeyEligible = [v13 passkeyEligible];
  _objc_release(passkeyEligible);
  if (passkeyEligible)
  {
    accountManager = selfCopy->_accountManager;
    passkeyEligible2 = [v13 passkeyEligible];
    bOOLValue = [passkeyEligible2 BOOLValue];
    [(AKAccountManager *)accountManager setPasskeyEligible:bOOLValue forAccount:location[0]];
    _objc_release(passkeyEligible2);
  }

  passkeyPresent = [v13 passkeyPresent];
  _objc_release(passkeyPresent);
  if (passkeyPresent)
  {
    v6 = selfCopy->_accountManager;
    passkeyPresent2 = [v13 passkeyPresent];
    bOOLValue2 = [passkeyPresent2 BOOLValue];
    [(AKAccountManager *)v6 setPasskeyPresent:bOOLValue2 forAccount:location[0]];
    _objc_release(passkeyPresent2);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateChildPasscodePropertiesForAccount:(id)account withServerResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v17 = 0;
  objc_storeStrong(&v17, response);
  passcodeAuthEnabled = [v17 passcodeAuthEnabled];
  _objc_release(passcodeAuthEnabled);
  if (passcodeAuthEnabled)
  {
    accountManager = selfCopy->_accountManager;
    passcodeAuthEnabled2 = [v17 passcodeAuthEnabled];
    bOOLValue = [passcodeAuthEnabled2 BOOLValue];
    [(AKAccountManager *)accountManager setPasscodeAuthEnabled:bOOLValue forAccount:location[0]];
    _objc_release(passcodeAuthEnabled2);
  }

  passcodeAuth = [v17 passcodeAuth];
  _objc_release(passcodeAuth);
  if (passcodeAuth)
  {
    v10 = selfCopy->_accountManager;
    passcodeAuth2 = [v17 passcodeAuth];
    bOOLValue2 = [passcodeAuth2 BOOLValue];
    [(AKAccountManager *)v10 setPasscodeAuth:bOOLValue2 forAccount:location[0]];
    _objc_release(passcodeAuth2);
  }

  askToBuy = [v17 askToBuy];
  _objc_release(askToBuy);
  if (askToBuy)
  {
    v7 = selfCopy->_accountManager;
    askToBuy2 = [v17 askToBuy];
    bOOLValue3 = [askToBuy2 BOOLValue];
    [(AKAccountManager *)v7 setAskToBuy:bOOLValue3 forAccount:location[0]];
    _objc_release(askToBuy2);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateTokensForAccount:(id)account withServerResponse:(id)response context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v88 = 0;
  objc_storeStrong(&v88, response);
  v87 = 0;
  objc_storeStrong(&v87, context);
  v86 = 0;
  v84 = 0;
  v47 = [location[0] credentialWithError:&v84];
  objc_storeStrong(&v86, v84);
  v85 = v47;
  if (!v47)
  {
    v83 = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      log = v83;
      v44 = type;
      sub_10001CEEC(v81);
      _os_log_debug_impl(&_mh_execute_header, log, v44, "No account credential found. Creating new credential.", v81, 2u);
    }

    objc_storeStrong(&v83, 0);
    v5 = objc_alloc_init(ACAccountCredential);
    v6 = v85;
    v85 = v5;
    _objc_release(v6);
  }

  masterToken = [v88 masterToken];
  externalizedVersionString = [masterToken externalizedVersionString];
  _objc_release(masterToken);
  if (externalizedVersionString)
  {
    v79 = _AKLogSystem();
    v78 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v99, location[0]);
      _os_log_impl(&_mh_execute_header, v79, v78, "Server auth response contained a master token, saving to the credential for account (%@)", v99, 0xCu);
    }

    objc_storeStrong(&v79, 0);
    [v85 setToken:externalizedVersionString];
  }

  heartbeatToken = [v88 heartbeatToken];
  stringValue = [heartbeatToken stringValue];
  _objc_release(heartbeatToken);
  if (stringValue)
  {
    v37 = +[AKFeatureManager sharedManager];
    isTokenCacheEnabled = [v37 isTokenCacheEnabled];
    _objc_release(v37);
    if (isTokenCacheEnabled)
    {
      v73 = _AKLogSystem();
      v72 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v98, location[0]);
        _os_log_impl(&_mh_execute_header, v73, v72, "Server auth response contained a HB token, saving via AKTokenManager for account (%@)", v98, 0xCu);
      }

      objc_storeStrong(&v73, 0);
      tokenManager = selfCopy->_tokenManager;
      heartbeatToken2 = [v88 heartbeatToken];
      v33 = ACHeartbeatTokenKey;
      altDSID = [v88 altDSID];
      [AKTokenManager updateToken:"updateToken:identifier:altDSID:account:credential:error:" identifier:heartbeatToken2 altDSID:v33 account:? credential:? error:?];
      _objc_release(altDSID);
      _objc_release(heartbeatToken2);
    }

    else
    {
      v71 = _AKLogSystem();
      v70 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v97, location[0]);
        _os_log_impl(&_mh_execute_header, v71, v70, "Server auth response contained a HB token, saving to the credential for account (%@)", v97, 0xCu);
      }

      objc_storeStrong(&v71, 0);
      accountManager = selfCopy->_accountManager;
      heartbeatToken3 = [v88 heartbeatToken];
      [AKAccountManager setToken:"setToken:tokenID:account:credential:" tokenID:? account:? credential:?];
      _objc_release(heartbeatToken3);
    }
  }

  else
  {
    v76 = _AKLogSystem();
    v75 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v39 = v76;
      v40 = v75;
      sub_10001CEEC(v74);
      _os_log_error_impl(&_mh_execute_header, v39, v40, "Server auth response did not contain HB token!", v74, 2u);
    }

    objc_storeStrong(&v76, 0);
  }

  continuationToken = [v88 continuationToken];
  stringValue2 = [continuationToken stringValue];
  _objc_release(continuationToken);
  if (stringValue2)
  {
    [(AKAccountManager *)selfCopy->_accountManager clearDeviceRemovalReasonFromAccount:location[0]];
    v26 = +[AKFeatureManager sharedManager];
    isTokenCacheEnabled2 = [v26 isTokenCacheEnabled];
    _objc_release(v26);
    if (isTokenCacheEnabled2)
    {
      v65 = _AKLogSystem();
      v64 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v96, location[0]);
        _os_log_impl(&_mh_execute_header, v65, v64, "Server auth response contained a CK token, saving via AKTokenManager for account (%@)", v96, 0xCu);
      }

      objc_storeStrong(&v65, 0);
      v23 = selfCopy->_tokenManager;
      continuationToken2 = [v88 continuationToken];
      v22 = ACContinuationTokenKey;
      altDSID2 = [v88 altDSID];
      [AKTokenManager updateToken:v23 identifier:"updateToken:identifier:altDSID:account:credential:error:" altDSID:continuationToken2 account:v22 credential:? error:?];
      _objc_release(altDSID2);
      _objc_release(continuationToken2);
    }

    else
    {
      oslog = _AKLogSystem();
      v62 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v95, location[0]);
        _os_log_impl(&_mh_execute_header, oslog, v62, "Server auth response contained a CK token, saving to the credential for account (%@)", v95, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v20 = selfCopy->_accountManager;
      continuationToken3 = [v88 continuationToken];
      [AKAccountManager setToken:v20 tokenID:"setToken:tokenID:account:credential:" account:? credential:?];
      _objc_release(continuationToken3);
    }
  }

  else
  {
    v68 = _AKLogSystem();
    v67 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v68;
      v29 = v67;
      sub_10001CEEC(v66);
      _os_log_impl(&_mh_execute_header, v28, v29, "Server auth response did not contain CK token.", v66, 2u);
    }

    objc_storeStrong(&v68, 0);
  }

  passwordResetToken = [v88 passwordResetToken];
  stringValue3 = [passwordResetToken stringValue];
  _objc_release(passwordResetToken);
  if (stringValue3)
  {
    if ([v87 _localUserHasEmptyPassword])
    {
      v51 = _AKLogSystem();
      v50 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v7 = v51;
        v8 = v50;
        sub_10001CEEC(v49);
        _os_log_error_impl(&_mh_execute_header, v7, v8, "We got a PRK token from the server, but we have no passcode... discarding", v49, 2u);
      }

      objc_storeStrong(&v51, 0);
    }

    else
    {
      v15 = +[AKFeatureManager sharedManager];
      isTokenCacheEnabled3 = [v15 isTokenCacheEnabled];
      _objc_release(v15);
      if (isTokenCacheEnabled3)
      {
        v57 = _AKLogSystem();
        v56 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v94, location[0]);
          _os_log_impl(&_mh_execute_header, v57, v56, "Server auth response contained a PRK token, saving via AKTokenMAnager for account (%@)", v94, 0xCu);
        }

        objc_storeStrong(&v57, 0);
        v12 = selfCopy->_tokenManager;
        passwordResetToken2 = [v88 passwordResetToken];
        v11 = ACPasswordResetTokenKey;
        altDSID3 = [v88 altDSID];
        [AKTokenManager updateToken:v12 identifier:"updateToken:identifier:altDSID:account:credential:error:" altDSID:passwordResetToken2 account:v11 credential:? error:?];
        _objc_release(altDSID3);
        _objc_release(passwordResetToken2);
      }

      else
      {
        v55 = _AKLogSystem();
        v54 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v93, location[0]);
          _os_log_impl(&_mh_execute_header, v55, v54, "Server auth response contained a PRK token, saving to the credential for account (%@)", v93, 0xCu);
        }

        objc_storeStrong(&v55, 0);
        v9 = selfCopy->_accountManager;
        passwordResetToken3 = [v88 passwordResetToken];
        [AKAccountManager setToken:v9 tokenID:"setToken:tokenID:account:credential:" account:? credential:?];
        _objc_release(passwordResetToken3);
      }

      if ([v87 anticipateEscrowAttempt])
      {
        v53 = _AKLogSystem();
        v52 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v92, location[0]);
          _os_log_impl(&_mh_execute_header, v53, v52, "Stashing the PRK token away for escrowing for account: %@", v92, 0xCu);
        }

        objc_storeStrong(&v53, 0);
        [v85 setCredentialItem:stringValue3 forKey:ACPasswordResetTokenBackupKey];
      }
    }
  }

  else
  {
    v60 = _AKLogSystem();
    v59 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v60;
      v18 = v59;
      sub_10001CEEC(v58);
      _os_log_impl(&_mh_execute_header, v17, v18, "Server auth response did not contain PRK token.", v58, 2u);
    }

    objc_storeStrong(&v60, 0);
  }

  v48 = _AKLogSystem();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B098(v91, v85, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Setting credential: %@ on account: %@", v91, 0x16u);
  }

  objc_storeStrong(&v48, 0);
  [location[0] setCredential:v85];
  objc_storeStrong(&stringValue3, 0);
  objc_storeStrong(&stringValue2, 0);
  objc_storeStrong(&stringValue, 0);
  objc_storeStrong(&externalizedVersionString, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateTelemetryDeviceSessionIDForAccount:(id)account withContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v11 = 0;
  objc_storeStrong(&v11, context);
  v10 = [(AKAccountManager *)selfCopy->_accountManager _telemetryDeviceSessionIDForAccount:location[0]];
  if (!v10 || [v10 isEqualToString:AKTelemetryMissingDeviceSessionID])
  {
    v4 = +[NSUUID UUID];
    uUIDString = [(NSUUID *)v4 UUIDString];
    _objc_release(v4);
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v14, uUIDString);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "AuthKit account exists, but is missing a deviceSessionID, creating a new one... %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(AKAccountManager *)selfCopy->_accountManager setTelemetryDeviceSessionID:uUIDString forAccount:location[0]];
    [v11 setTelemetryDeviceSessionID:uUIDString];
    objc_storeStrong(&uUIDString, 0);
  }

  else
  {
    v9 = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v15, v10);
      _os_log_debug_impl(&_mh_execute_header, v9, v8, "Device session ID exists, moving on: %@", v15, 0xCu);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateAccountInUseForAccount:(id)account withContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v13 = 0;
  objc_storeStrong(&v13, context);
  if ([v13 serviceType] == 7)
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      sub_10001CEEC(v10);
      _os_log_impl(&_mh_execute_header, log, type, "Detected a piggy service type, alias for iCloud", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    [v13 setServiceType:1];
  }

  if ([v13 serviceType])
  {
    identifier = [location[0] identifier];
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 serviceType]);
      sub_10001B098(v16, v4, identifier);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting serviceType %@ inUse for account %@", v16, 0x16u);
      _objc_release(v4);
    }

    objc_storeStrong(&v8, 0);
    -[AKAccountManager setAccount:inUse:byService:](selfCopy->_accountManager, "setAccount:inUse:byService:", location[0], 1, [v13 serviceType]);
    objc_storeStrong(&identifier, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateRemainingPropertiesForAccount:(id)account withServerResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v34 = 0;
  objc_storeStrong(&v34, response);
  hasSOSActiveDevice = [v34 hasSOSActiveDevice];
  _objc_release(hasSOSActiveDevice);
  if (hasSOSActiveDevice)
  {
    accountManager = selfCopy->_accountManager;
    hasSOSActiveDevice2 = [v34 hasSOSActiveDevice];
    bOOLValue = [hasSOSActiveDevice2 BOOLValue];
    [(AKAccountManager *)accountManager setHasSOSActiveDevice:bOOLValue forAccount:location[0]];
    _objc_release(hasSOSActiveDevice2);
  }

  sOSNeeded = [v34 SOSNeeded];
  _objc_release(sOSNeeded);
  if (sOSNeeded)
  {
    v27 = selfCopy->_accountManager;
    sOSNeeded2 = [v34 SOSNeeded];
    bOOLValue2 = [sOSNeeded2 BOOLValue];
    [(AKAccountManager *)v27 setSOSNeeded:bOOLValue2 forAccount:location[0]];
    _objc_release(sOSNeeded2);
  }

  if ([v34 authorizationUsed])
  {
    v26 = selfCopy->_accountManager;
    authorizationUsed = [v34 authorizationUsed];
    [(AKAccountManager *)v26 setAuthorizationUsed:authorizationUsed forAccount:location[0]];
  }

  privateAttestationEnabled = [v34 privateAttestationEnabled];
  _objc_release(privateAttestationEnabled);
  if (privateAttestationEnabled)
  {
    v23 = selfCopy->_accountManager;
    privateAttestationEnabled2 = [v34 privateAttestationEnabled];
    bOOLValue3 = [privateAttestationEnabled2 BOOLValue];
    [(AKAccountManager *)v23 setPrivateAttestationEnabled:bOOLValue3 forAccount:location[0]];
    _objc_release(privateAttestationEnabled2);
  }

  serverExperimentalFeatures = [v34 serverExperimentalFeatures];
  _objc_release(serverExperimentalFeatures);
  if (serverExperimentalFeatures)
  {
    v20 = selfCopy->_accountManager;
    serverExperimentalFeatures2 = [v34 serverExperimentalFeatures];
    [AKAccountManager setServerExperimentalFeatures:v20 forAccount:"setServerExperimentalFeatures:forAccount:"];
    _objc_release(serverExperimentalFeatures2);
  }

  if ([v34 isProximityEligible])
  {
    v19 = selfCopy->_accountManager;
    isProximityEligible = [v34 isProximityEligible];
    [(AKAccountManager *)v19 setIsProximityAuthEligible:isProximityEligible forAccount:location[0]];
  }

  isNotificationEmailAvailable = [v34 isNotificationEmailAvailable];
  _objc_release(isNotificationEmailAvailable);
  if (isNotificationEmailAvailable)
  {
    v16 = selfCopy->_accountManager;
    isNotificationEmailAvailable2 = [v34 isNotificationEmailAvailable];
    bOOLValue4 = [isNotificationEmailAvailable2 BOOLValue];
    [(AKAccountManager *)v16 setIsNotificationEmailAvailable:bOOLValue4 forAccount:location[0]];
    _objc_release(isNotificationEmailAvailable2);
  }

  notificationEmail = [v34 notificationEmail];
  _objc_release(notificationEmail);
  if (notificationEmail)
  {
    v13 = selfCopy->_accountManager;
    notificationEmail2 = [v34 notificationEmail];
    [AKAccountManager setNotificationEmail:v13 forAccount:"setNotificationEmail:forAccount:"];
    _objc_release(notificationEmail2);
  }

  thirdPartyRegulatoryOverride = [v34 thirdPartyRegulatoryOverride];
  _objc_release(thirdPartyRegulatoryOverride);
  if (thirdPartyRegulatoryOverride)
  {
    v10 = selfCopy->_accountManager;
    thirdPartyRegulatoryOverride2 = [v34 thirdPartyRegulatoryOverride];
    [AKAccountManager set3PRegulatoryOverride:v10 forAccount:"set3PRegulatoryOverride:forAccount:"];
    _objc_release(thirdPartyRegulatoryOverride2);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_saveAccount:(id)account userInfoDictionary:(id)dictionary error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  v18 = 0;
  objc_storeStrong(&v18, dictionary);
  errorCopy = error;
  v16 = 0;
  accountManager = selfCopy->_accountManager;
  v14 = 0;
  v12 = [(AKAccountManager *)accountManager saveAccount:location[0] error:&v14];
  objc_storeStrong(&v16, v14);
  v15 = v12;
  if ((v12 & 1) == 0)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v21, v16);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to update AuthKit account! Error: %@", v21, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (errorCopy)
    {
      v9 = v16;
      v6 = v16;
      *errorCopy = v9;
    }
  }

  v8 = v15;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (void)_postUserInfoChangedNotificationWithPayload:(id)payload
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  if ([location[0] count])
  {
    [(AKUserInfoController *)selfCopy->_userInfoController sendUserInfoChangeNotificationWithPayload:location[0]];
  }

  objc_storeStrong(location, 0);
}

@end
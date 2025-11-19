@interface AKServerResponseAccountUpdater
- (AKServerResponseAccountUpdater)init;
- (BOOL)_saveAccount:(id)a3 userInfoDictionary:(id)a4 error:(id *)a5;
- (BOOL)updateAuthKitAccount:(id)a3 withServerResponse:(id)a4 context:(id)a5 error:(id *)a6;
- (void)_postUserInfoChangedNotificationWithPayload:(id)a3;
- (void)_updateAccountInUseForAccount:(id)a3 withContext:(id)a4;
- (void)_updateAccountInfoPropertiesForAccount:(id)a3 withServerResponse:(id)a4 userInfoDictionary:(id)a5;
- (void)_updateAppleAccountSecurityPropertiesForAccount:(id)a3 withServerResponse:(id)a4 userInfoDictionary:(id)a5;
- (void)_updateBeneficiaryPropertiesForAccount:(id)a3 withServerResponse:(id)a4;
- (void)_updateChildPasscodePropertiesForAccount:(id)a3 withServerResponse:(id)a4;
- (void)_updateCustodianPropertiesForAccount:(id)a3 withServerResponse:(id)a4;
- (void)_updateMaidPropertiesForAccount:(id)a3 withServerResponse:(id)a4;
- (void)_updatePasskeyPropertiesForAccount:(id)a3 withServerResponse:(id)a4;
- (void)_updateRemainingPropertiesForAccount:(id)a3 withServerResponse:(id)a4;
- (void)_updateSecurityLevelForAccount:(id)a3 withServerResponse:(id)a4 userInfoDictionary:(id)a5;
- (void)_updateTelemetryDeviceSessionIDForAccount:(id)a3 withContext:(id)a4;
- (void)_updateTokensForAccount:(id)a3 withServerResponse:(id)a4 context:(id)a5;
- (void)_updateUserInfoPropertiesForAccount:(id)a3 withServerResponse:(id)a4;
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

- (BOOL)updateAuthKitAccount:(id)a3 withServerResponse:(id)a4 context:(id)a5 error:(id *)a6
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v12[1] = a6;
  v12[0] = +[NSMutableDictionary dictionary];
  [(AKServerResponseAccountUpdater *)v16 _updateAccountInfoPropertiesForAccount:location[0] withServerResponse:v14 userInfoDictionary:v12[0]];
  [(AKServerResponseAccountUpdater *)v16 _updateUserInfoPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)v16 _updateSecurityLevelForAccount:location[0] withServerResponse:v14 userInfoDictionary:v12[0]];
  [(AKServerResponseAccountUpdater *)v16 _updateMaidPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)v16 _updateAppleAccountSecurityPropertiesForAccount:location[0] withServerResponse:v14 userInfoDictionary:v12[0]];
  [(AKServerResponseAccountUpdater *)v16 _updatePasskeyPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)v16 _updateChildPasscodePropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)v16 _updateCustodianPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)v16 _updateBeneficiaryPropertiesForAccount:location[0] withServerResponse:v14];
  [(AKServerResponseAccountUpdater *)v16 _updateTokensForAccount:location[0] withServerResponse:v14 context:v13];
  [(AKServerResponseAccountUpdater *)v16 _updateTelemetryDeviceSessionIDForAccount:location[0] withContext:v13];
  [(AKServerResponseAccountUpdater *)v16 _updateAccountInUseForAccount:location[0] withContext:v13];
  [(AKServerResponseAccountUpdater *)v16 _updateRemainingPropertiesForAccount:location[0] withServerResponse:v14];
  [location[0] setAuthenticated:1];
  v11 = [(AKServerResponseAccountUpdater *)v16 _saveAccount:location[0] userInfoDictionary:v12[0] error:a6];
  if ((v11 & 1) != 0 && [v12[0] count])
  {
    v7 = [(AKAccountManager *)v16->_accountManager altDSIDForAccount:location[0]];
    [v12[0] setObject:? forKeyedSubscript:?];
    _objc_release(v7);
    [(AKServerResponseAccountUpdater *)v16 _postUserInfoChangedNotificationWithPayload:v12[0]];
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (void)_updateAccountInfoPropertiesForAccount:(id)a3 withServerResponse:(id)a4 userInfoDictionary:(id)a5
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v27 = 0;
  objc_storeStrong(&v27, a5);
  v23 = [v28 altDSID];
  _objc_release(v23);
  if (v23)
  {
    accountManager = v30->_accountManager;
    v20 = [v28 altDSID];
    [AKAccountManager setAltDSID:"setAltDSID:forAccount:" forAccount:?];
    _objc_release(v20);
  }

  v18 = [v28 dsid];
  _objc_release(v18);
  if (v18)
  {
    v16 = v30->_accountManager;
    v17 = [v28 dsid];
    [AKAccountManager setDSID:v16 forAccount:"setDSID:forAccount:"];
    _objc_release(v17);
  }

  v26 = [(AKAccountManager *)v30->_accountManager authenticationModeForAccount:location[0]];
  v25 = [v28 authMode];
  if (v25)
  {
    [(AKAccountManager *)v30->_accountManager setAuthenticationMode:v25 forAccount:location[0]];
  }

  if (v25 != v26 && v26 && v25)
  {
    v15 = [NSNumber numberWithUnsignedInteger:v25];
    [v27 setObject:? forKeyedSubscript:?];
    _objc_release(v15);
  }

  if ([v28 phoneAsAppleID])
  {
    v14 = v30->_accountManager;
    v5 = [v28 phoneAsAppleID];
    [(AKAccountManager *)v14 setPhoneAsAppleID:v5 forAccount:location[0]];
  }

  v24 = [(AKAccountManager *)v30->_accountManager demoAccountForAccount:location[0]];
  if (([v28 isDemoAccount] & 1) != (v24 & 1))
  {
    v13 = v30->_accountManager;
    v6 = [v28 isDemoAccount];
    [(AKAccountManager *)v13 setDemoAccount:v6 forAccount:location[0]];
  }

  v12 = [v28 additionalInfo];
  _objc_release(v12);
  if (v12)
  {
    v10 = v30->_accountManager;
    v11 = [v28 additionalInfo];
    [AKAccountManager setAdditionalInfo:v10 forAccount:"setAdditionalInfo:forAccount:"];
    _objc_release(v11);
  }

  v9 = [v28 idmsWalrusStatus];
  _objc_release(v9);
  if (v9)
  {
    v7 = v30->_accountManager;
    v8 = [v28 idmsWalrusStatus];
    [AKAccountManager setIdmsWalrusStatus:v7 forAccount:"setIdmsWalrusStatus:forAccount:"];
    _objc_release(v8);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateUserInfoPropertiesForAccount:(id)a3 withServerResponse:(id)a4
{
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
  v42 = [v43 firstName];
  _objc_release(v42);
  if (v42)
  {
    accountManager = v45->_accountManager;
    v40 = [v43 firstName];
    [AKAccountManager setGivenName:"setGivenName:forAccount:" forAccount:?];
    _objc_release(v40);
  }

  v38 = [v43 lastName];
  _objc_release(v38);
  if (v38)
  {
    v36 = v45->_accountManager;
    v37 = [v43 lastName];
    [AKAccountManager setFamilyName:v36 forAccount:"setFamilyName:forAccount:"];
    _objc_release(v37);
  }

  v35 = [v43 primaryEmail];
  _objc_release(v35);
  if (v35)
  {
    v33 = v45->_accountManager;
    v34 = [v43 primaryEmail];
    [AKAccountManager setPrimaryEmailAddress:v33 forAccount:"setPrimaryEmailAddress:forAccount:"];
    _objc_release(v34);
  }

  v31 = v45->_accountManager;
  v4 = [v43 primaryEmailVetted];
  [(AKAccountManager *)v31 setVerifiedPrimaryEmail:v4 forAccount:location[0]];
  v32 = [v43 aliases];
  _objc_release(v32);
  if (v32)
  {
    v29 = v45->_accountManager;
    v30 = [v43 aliases];
    [AKAccountManager setAliases:v29 forAccount:"setAliases:forAccount:"];
    _objc_release(v30);
  }

  v28 = [v43 appleIDCountryCode];
  _objc_release(v28);
  if (v28)
  {
    v26 = v45->_accountManager;
    v27 = [v43 appleIDCountryCode];
    [AKAccountManager setAppleIDCountryCode:v26 forAccount:"setAppleIDCountryCode:forAccount:"];
    _objc_release(v27);
  }

  v25 = [v43 birthYear];
  _objc_release(v25);
  if (v25)
  {
    v23 = v45->_accountManager;
    v24 = [v43 birthYear];
    [AKAccountManager setBirthYear:v23 forAccount:"setBirthYear:forAccount:"];
    _objc_release(v24);
  }

  v22 = [v43 ageOfMajority];
  _objc_release(v22);
  if (v22)
  {
    v20 = v45->_accountManager;
    v21 = [v43 ageOfMajority];
    [AKAccountManager setAgeOfMajority:v20 forAccount:"setAgeOfMajority:forAccount:"];
    _objc_release(v21);
  }

  v19 = [v43 canAttestAge];
  _objc_release(v19);
  if (v19)
  {
    v17 = v45->_accountManager;
    v18 = [v43 canAttestAge];
    [AKAccountManager setCanAttestAge:v17 forAccount:"setCanAttestAge:forAccount:"];
    _objc_release(v18);
  }

  if ([v43 userAgeRange])
  {
    v16 = v45->_accountManager;
    v5 = [v43 userAgeRange];
    [(AKAccountManager *)v16 setUserAgeRange:v5 forAccount:location[0]];
  }

  v15 = v45->_accountManager;
  v6 = [v43 isUnderAgeOfMajority];
  [(AKAccountManager *)v15 setUserUnderage:v6 forAccount:location[0]];
  if ([v43 isUnderAgeOfMajority])
  {
    v14 = v45->_accountManager;
    v7 = [v43 isSiwaForChildEnabled];
    [(AKAccountManager *)v14 setIsSiwaEnabled:v7 forChildAccount:location[0]];
  }

  v12 = v45->_accountManager;
  v8 = [v43 isSenior];
  [(AKAccountManager *)v12 setUserIsSenior:v8 forAccount:location[0]];
  v13 = [v43 isEligibleForSafetyScreen];
  _objc_release(v13);
  if (v13)
  {
    v10 = v45->_accountManager;
    v11 = [v43 isEligibleForSafetyScreen];
    v9 = [v11 BOOLValue];
    [(AKAccountManager *)v10 setIsEligibleForSafetyScreen:v9 forAccount:location[0]];
    _objc_release(v11);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateSecurityLevelForAccount:(id)a3 withServerResponse:(id)a4 userInfoDictionary:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = [(AKAccountManager *)v13->_accountManager securityLevelForAccount:location[0]];
  v8 = [v11 appleIDSecurityLevel];
  if (v8)
  {
    [(AKAccountManager *)v13->_accountManager setSecurityLevel:v8 forAccount:location[0]];
  }

  if (v8 != v9 && v9 && v8)
  {
    v5 = [NSNumber numberWithUnsignedInteger:v8];
    [v10 setObject:? forKeyedSubscript:?];
    _objc_release(v5);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateMaidPropertiesForAccount:(id)a3 withServerResponse:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v11 = [v15 hasMDM];
  _objc_release(v11);
  if (v11)
  {
    accountManager = v17->_accountManager;
    v9 = [v15 hasMDM];
    v4 = [v9 BOOLValue];
    [(AKAccountManager *)accountManager setHasMDM:v4 forAccount:location[0]];
    _objc_release(v9);
  }

  v14 = [v15 managedOrganizationType];
  if (v14)
  {
    [(AKAccountManager *)v17->_accountManager setManagedOrganizationType:v14 forAccount:location[0]];
  }

  v7 = [v15 managedOrganizationName];
  _objc_release(v7);
  if (v7)
  {
    v5 = v17->_accountManager;
    v6 = [v15 managedOrganizationName];
    [AKAccountManager setManagedOrganizationName:v5 forAccount:"setManagedOrganizationName:forAccount:"];
    _objc_release(v6);
  }

  if (+[AKFeatureManager isEnforceMDMPolicyEnabled](AKFeatureManager, "isEnforceMDMPolicyEnabled") & 1) != 0 && location[0] && ([v15 isMdmInfoRequired])
  {
    [(AKAccountManager *)v17->_accountManager setMarkedForSignOut:0 forAccount:location[0]];
  }

  v13 = [(AKAccountManager *)v17->_accountManager mdmInformationRequiredForAccount:location[0]];
  v12 = [v15 isMdmInfoRequired];
  if ((v12 & 1) != (v13 & 1))
  {
    [(AKAccountManager *)v17->_accountManager setMDMInformationRequired:v12 & 1 forAccount:location[0]];
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateAppleAccountSecurityPropertiesForAccount:(id)a3 withServerResponse:(id)a4 userInfoDictionary:(id)a5
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v26 = [v31 adpCohort];
  _objc_release(v26);
  if (v26)
  {
    accountManager = v33->_accountManager;
    v23 = [v31 adpCohort];
    [AKAccountManager setADPCohort:"setADPCohort:forAccount:" forAccount:?];
    _objc_release(v23);
  }

  v21 = [v31 webAccessEnabled];
  _objc_release(v21);
  if (v21)
  {
    v19 = v33->_accountManager;
    v20 = [v31 webAccessEnabled];
    v5 = [v20 BOOLValue];
    [(AKAccountManager *)v19 setWebAccessEnabled:v5 forAccount:location[0]];
    _objc_release(v20);
  }

  if ([v31 isFidoAuthRequired])
  {
    v18 = v33->_accountManager;
    v6 = [v31 isFidoAuthRequired];
    [(AKAccountManager *)v18 setFido:v6 forAccount:location[0]];
  }

  v17 = [v31 hasModernRecoveryKey];
  _objc_release(v17);
  if (v17)
  {
    v15 = v33->_accountManager;
    v16 = [v31 hasModernRecoveryKey];
    v7 = [v16 BOOLValue];
    [(AKAccountManager *)v15 setHasModernRecoveryKey:v7 forAccount:location[0]];
    _objc_release(v16);
  }

  v14 = [v31 configurationInfo];
  _objc_release(v14);
  if (v14)
  {
    v29 = +[AKUserConfigController sharedController];
    v12 = v29;
    v11 = location[0];
    v13 = [v31 configurationInfo];
    [v12 updateUserConfigForAccount:v11 configurationInfo:?];
    _objc_release(v13);
    objc_storeStrong(&v29, 0);
  }

  v28 = [(AKAccountManager *)v33->_accountManager configDataVersionForAccount:location[0]];
  v27 = [v31 configDataVersion];
  if (v27 && !sub_100182F80(v27, v28))
  {
    v8 = v33->_accountManager;
    v9 = [v31 configDataVersion];
    [AKAccountManager setConfigDataVersion:v8 forAccount:"setConfigDataVersion:forAccount:"];
    _objc_release(v9);
    v10 = [v31 configDataVersion];
    [v30 setObject:? forKeyedSubscript:?];
    _objc_release(v10);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateCustodianPropertiesForAccount:(id)a3 withServerResponse:(id)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v23 = [v26 canBeCustodian];
  _objc_release(v23);
  if (v23)
  {
    accountManager = v28->_accountManager;
    v21 = [v26 canBeCustodian];
    v4 = [v21 BOOLValue];
    [(AKAccountManager *)accountManager setCanBeCustodian:v4 forAccount:location[0]];
    _objc_release(v21);
  }

  v19 = [v26 canHaveCustodian];
  _objc_release(v19);
  if (v19)
  {
    v17 = v28->_accountManager;
    v18 = [v26 canHaveCustodian];
    v5 = [v18 BOOLValue];
    [(AKAccountManager *)v17 setCanHaveCustodian:v5 forAccount:location[0]];
    _objc_release(v18);
  }

  v16 = [v26 custodianEnabled];
  _objc_release(v16);
  if (v16)
  {
    v14 = v28->_accountManager;
    v15 = [v26 custodianEnabled];
    v6 = [v15 BOOLValue];
    [(AKAccountManager *)v14 setCustodianEnabled:v6 forAccount:location[0]];
    _objc_release(v15);
  }

  v13 = [v26 custodianLastModified];
  _objc_release(v13);
  if (v13)
  {
    v11 = v28->_accountManager;
    v12 = [v26 custodianLastModified];
    [AKAccountManager setCustodianLastModified:v11 forAccount:"setCustodianLastModified:forAccount:"];
    _objc_release(v12);
  }

  v9 = [(AKAccountManager *)v28->_accountManager custodianInfosForAccount:location[0]];
  v25 = [NSSet setWithArray:?];
  _objc_release(v9);
  v10 = [v26 custodianInfos];
  v24 = [NSSet setWithArray:?];
  _objc_release(v10);
  if (v24 && ![v24 isEqualToSet:v25])
  {
    v7 = v28->_accountManager;
    v8 = [v26 custodianInfos];
    [AKAccountManager setCustodianInfos:v7 forAccount:"setCustodianInfos:forAccount:"];
    _objc_release(v8);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateBeneficiaryPropertiesForAccount:(id)a3 withServerResponse:(id)a4
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = 0;
  objc_storeStrong(&v28, a4);
  v21 = [v28 beneficiaryIdentifier];
  _objc_release(v21);
  if (v21)
  {
    [(AKAccountManager *)v30->_accountManager setBeneficiary:1 forAccount:location[0]];
  }

  v19 = [v28 canBeBeneficiary];
  _objc_release(v19);
  if (v19)
  {
    accountManager = v30->_accountManager;
    v18 = [v28 canBeBeneficiary];
    v4 = [v18 BOOLValue];
    [(AKAccountManager *)accountManager setCanBeBeneficiary:v4 forAccount:location[0]];
    _objc_release(v18);
  }

  v16 = [v28 canHaveBeneficiary];
  _objc_release(v16);
  if (v16)
  {
    v14 = v30->_accountManager;
    v15 = [v28 canHaveBeneficiary];
    v5 = [v15 BOOLValue];
    [(AKAccountManager *)v14 setCanHaveBeneficiary:v5 forAccount:location[0]];
    _objc_release(v15);
  }

  v13 = [v28 beneficiaryLastModified];
  _objc_release(v13);
  if (v13)
  {
    v11 = v30->_accountManager;
    v12 = [v28 beneficiaryLastModified];
    [AKAccountManager setBeneficiaryLastModified:v11 forAccount:"setBeneficiaryLastModified:forAccount:"];
    _objc_release(v12);
  }

  v9 = [v28 beneficiaryInfo];
  v26 = 0;
  v10 = 0;
  if (v9)
  {
    v27 = [v28 beneficiaryInfo];
    v26 = 1;
    v10 = [v27 count] != 0;
  }

  if (v26)
  {
    _objc_release(v27);
  }

  _objc_release(v9);
  if (v10)
  {
    v25 = [(AKAccountManager *)v30->_accountManager beneficiaryInfoForAccount:location[0]];
    v7 = [AKBeneficiaryUpdater removeWrappedKeyFrom:v25];
    v24 = [NSSet setWithArray:?];
    _objc_release(v7);
    v8 = [v28 beneficiaryInfo];
    v23 = [NSSet setWithArray:?];
    _objc_release(v8);
    if (v23 && ![v23 isEqualToSet:v24])
    {
      v6 = [v28 beneficiaryInfo];
      v22 = [AKBeneficiaryUpdater saveWrappedKeyInKeychain:?];
      _objc_release(v6);
      [(AKAccountManager *)v30->_accountManager setBeneficiaryInfo:v22 forAccount:location[0]];
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)_updatePasskeyPropertiesForAccount:(id)a3 withServerResponse:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = [v13 passkeyEligible];
  _objc_release(v12);
  if (v12)
  {
    accountManager = v15->_accountManager;
    v10 = [v13 passkeyEligible];
    v4 = [v10 BOOLValue];
    [(AKAccountManager *)accountManager setPasskeyEligible:v4 forAccount:location[0]];
    _objc_release(v10);
  }

  v8 = [v13 passkeyPresent];
  _objc_release(v8);
  if (v8)
  {
    v6 = v15->_accountManager;
    v7 = [v13 passkeyPresent];
    v5 = [v7 BOOLValue];
    [(AKAccountManager *)v6 setPasskeyPresent:v5 forAccount:location[0]];
    _objc_release(v7);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateChildPasscodePropertiesForAccount:(id)a3 withServerResponse:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = [v17 passcodeAuthEnabled];
  _objc_release(v16);
  if (v16)
  {
    accountManager = v19->_accountManager;
    v14 = [v17 passcodeAuthEnabled];
    v4 = [v14 BOOLValue];
    [(AKAccountManager *)accountManager setPasscodeAuthEnabled:v4 forAccount:location[0]];
    _objc_release(v14);
  }

  v12 = [v17 passcodeAuth];
  _objc_release(v12);
  if (v12)
  {
    v10 = v19->_accountManager;
    v11 = [v17 passcodeAuth];
    v5 = [v11 BOOLValue];
    [(AKAccountManager *)v10 setPasscodeAuth:v5 forAccount:location[0]];
    _objc_release(v11);
  }

  v9 = [v17 askToBuy];
  _objc_release(v9);
  if (v9)
  {
    v7 = v19->_accountManager;
    v8 = [v17 askToBuy];
    v6 = [v8 BOOLValue];
    [(AKAccountManager *)v7 setAskToBuy:v6 forAccount:location[0]];
    _objc_release(v8);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateTokensForAccount:(id)a3 withServerResponse:(id)a4 context:(id)a5
{
  v90 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v88 = 0;
  objc_storeStrong(&v88, a4);
  v87 = 0;
  objc_storeStrong(&v87, a5);
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

  v42 = [v88 masterToken];
  v80 = [v42 externalizedVersionString];
  _objc_release(v42);
  if (v80)
  {
    v79 = _AKLogSystem();
    v78 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v99, location[0]);
      _os_log_impl(&_mh_execute_header, v79, v78, "Server auth response contained a master token, saving to the credential for account (%@)", v99, 0xCu);
    }

    objc_storeStrong(&v79, 0);
    [v85 setToken:v80];
  }

  v41 = [v88 heartbeatToken];
  v77 = [v41 stringValue];
  _objc_release(v41);
  if (v77)
  {
    v37 = +[AKFeatureManager sharedManager];
    v38 = [v37 isTokenCacheEnabled];
    _objc_release(v37);
    if (v38)
    {
      v73 = _AKLogSystem();
      v72 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v98, location[0]);
        _os_log_impl(&_mh_execute_header, v73, v72, "Server auth response contained a HB token, saving via AKTokenManager for account (%@)", v98, 0xCu);
      }

      objc_storeStrong(&v73, 0);
      tokenManager = v90->_tokenManager;
      v36 = [v88 heartbeatToken];
      v33 = ACHeartbeatTokenKey;
      v35 = [v88 altDSID];
      [AKTokenManager updateToken:"updateToken:identifier:altDSID:account:credential:error:" identifier:v36 altDSID:v33 account:? credential:? error:?];
      _objc_release(v35);
      _objc_release(v36);
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
      accountManager = v90->_accountManager;
      v32 = [v88 heartbeatToken];
      [AKAccountManager setToken:"setToken:tokenID:account:credential:" tokenID:? account:? credential:?];
      _objc_release(v32);
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

  v30 = [v88 continuationToken];
  v69 = [v30 stringValue];
  _objc_release(v30);
  if (v69)
  {
    [(AKAccountManager *)v90->_accountManager clearDeviceRemovalReasonFromAccount:location[0]];
    v26 = +[AKFeatureManager sharedManager];
    v27 = [v26 isTokenCacheEnabled];
    _objc_release(v26);
    if (v27)
    {
      v65 = _AKLogSystem();
      v64 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v96, location[0]);
        _os_log_impl(&_mh_execute_header, v65, v64, "Server auth response contained a CK token, saving via AKTokenManager for account (%@)", v96, 0xCu);
      }

      objc_storeStrong(&v65, 0);
      v23 = v90->_tokenManager;
      v25 = [v88 continuationToken];
      v22 = ACContinuationTokenKey;
      v24 = [v88 altDSID];
      [AKTokenManager updateToken:v23 identifier:"updateToken:identifier:altDSID:account:credential:error:" altDSID:v25 account:v22 credential:? error:?];
      _objc_release(v24);
      _objc_release(v25);
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
      v20 = v90->_accountManager;
      v21 = [v88 continuationToken];
      [AKAccountManager setToken:v20 tokenID:"setToken:tokenID:account:credential:" account:? credential:?];
      _objc_release(v21);
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

  v19 = [v88 passwordResetToken];
  v61 = [v19 stringValue];
  _objc_release(v19);
  if (v61)
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
      v16 = [v15 isTokenCacheEnabled];
      _objc_release(v15);
      if (v16)
      {
        v57 = _AKLogSystem();
        v56 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v94, location[0]);
          _os_log_impl(&_mh_execute_header, v57, v56, "Server auth response contained a PRK token, saving via AKTokenMAnager for account (%@)", v94, 0xCu);
        }

        objc_storeStrong(&v57, 0);
        v12 = v90->_tokenManager;
        v14 = [v88 passwordResetToken];
        v11 = ACPasswordResetTokenKey;
        v13 = [v88 altDSID];
        [AKTokenManager updateToken:v12 identifier:"updateToken:identifier:altDSID:account:credential:error:" altDSID:v14 account:v11 credential:? error:?];
        _objc_release(v13);
        _objc_release(v14);
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
        v9 = v90->_accountManager;
        v10 = [v88 passwordResetToken];
        [AKAccountManager setToken:v9 tokenID:"setToken:tokenID:account:credential:" account:? credential:?];
        _objc_release(v10);
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
        [v85 setCredentialItem:v61 forKey:ACPasswordResetTokenBackupKey];
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
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateTelemetryDeviceSessionIDForAccount:(id)a3 withContext:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [(AKAccountManager *)v13->_accountManager _telemetryDeviceSessionIDForAccount:location[0]];
  if (!v10 || [v10 isEqualToString:AKTelemetryMissingDeviceSessionID])
  {
    v4 = +[NSUUID UUID];
    v7 = [(NSUUID *)v4 UUIDString];
    _objc_release(v4);
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000194D4(v14, v7);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "AuthKit account exists, but is missing a deviceSessionID, creating a new one... %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(AKAccountManager *)v13->_accountManager setTelemetryDeviceSessionID:v7 forAccount:location[0]];
    [v11 setTelemetryDeviceSessionID:v7];
    objc_storeStrong(&v7, 0);
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

- (void)_updateAccountInUseForAccount:(id)a3 withContext:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
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
    v9 = [location[0] identifier];
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 serviceType]);
      sub_10001B098(v16, v4, v9);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting serviceType %@ inUse for account %@", v16, 0x16u);
      _objc_release(v4);
    }

    objc_storeStrong(&v8, 0);
    -[AKAccountManager setAccount:inUse:byService:](v15->_accountManager, "setAccount:inUse:byService:", location[0], 1, [v13 serviceType]);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateRemainingPropertiesForAccount:(id)a3 withServerResponse:(id)a4
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = [v34 hasSOSActiveDevice];
  _objc_release(v33);
  if (v33)
  {
    accountManager = v36->_accountManager;
    v31 = [v34 hasSOSActiveDevice];
    v4 = [v31 BOOLValue];
    [(AKAccountManager *)accountManager setHasSOSActiveDevice:v4 forAccount:location[0]];
    _objc_release(v31);
  }

  v29 = [v34 SOSNeeded];
  _objc_release(v29);
  if (v29)
  {
    v27 = v36->_accountManager;
    v28 = [v34 SOSNeeded];
    v5 = [v28 BOOLValue];
    [(AKAccountManager *)v27 setSOSNeeded:v5 forAccount:location[0]];
    _objc_release(v28);
  }

  if ([v34 authorizationUsed])
  {
    v26 = v36->_accountManager;
    v6 = [v34 authorizationUsed];
    [(AKAccountManager *)v26 setAuthorizationUsed:v6 forAccount:location[0]];
  }

  v25 = [v34 privateAttestationEnabled];
  _objc_release(v25);
  if (v25)
  {
    v23 = v36->_accountManager;
    v24 = [v34 privateAttestationEnabled];
    v7 = [v24 BOOLValue];
    [(AKAccountManager *)v23 setPrivateAttestationEnabled:v7 forAccount:location[0]];
    _objc_release(v24);
  }

  v22 = [v34 serverExperimentalFeatures];
  _objc_release(v22);
  if (v22)
  {
    v20 = v36->_accountManager;
    v21 = [v34 serverExperimentalFeatures];
    [AKAccountManager setServerExperimentalFeatures:v20 forAccount:"setServerExperimentalFeatures:forAccount:"];
    _objc_release(v21);
  }

  if ([v34 isProximityEligible])
  {
    v19 = v36->_accountManager;
    v8 = [v34 isProximityEligible];
    [(AKAccountManager *)v19 setIsProximityAuthEligible:v8 forAccount:location[0]];
  }

  v18 = [v34 isNotificationEmailAvailable];
  _objc_release(v18);
  if (v18)
  {
    v16 = v36->_accountManager;
    v17 = [v34 isNotificationEmailAvailable];
    v9 = [v17 BOOLValue];
    [(AKAccountManager *)v16 setIsNotificationEmailAvailable:v9 forAccount:location[0]];
    _objc_release(v17);
  }

  v15 = [v34 notificationEmail];
  _objc_release(v15);
  if (v15)
  {
    v13 = v36->_accountManager;
    v14 = [v34 notificationEmail];
    [AKAccountManager setNotificationEmail:v13 forAccount:"setNotificationEmail:forAccount:"];
    _objc_release(v14);
  }

  v12 = [v34 thirdPartyRegulatoryOverride];
  _objc_release(v12);
  if (v12)
  {
    v10 = v36->_accountManager;
    v11 = [v34 thirdPartyRegulatoryOverride];
    [AKAccountManager set3PRegulatoryOverride:v10 forAccount:"set3PRegulatoryOverride:forAccount:"];
    _objc_release(v11);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_saveAccount:(id)a3 userInfoDictionary:(id)a4 error:(id *)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = a5;
  v16 = 0;
  accountManager = v20->_accountManager;
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
    if (v17)
    {
      v9 = v16;
      v6 = v16;
      *v17 = v9;
    }
  }

  v8 = v15;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (void)_postUserInfoChangedNotificationWithPayload:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] count])
  {
    [(AKUserInfoController *)v4->_userInfoController sendUserInfoChangeNotificationWithPayload:location[0]];
  }

  objc_storeStrong(location, 0);
}

@end
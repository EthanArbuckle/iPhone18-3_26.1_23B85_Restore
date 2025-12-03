@interface AKLivenessRequestProvider
- (BOOL)signRequest:(id)request error:(id *)error;
- (id)authKitBody;
- (id)requestURLOverride;
- (void)_updateTelemtryOptInForAccount:(id)account withWalrusStatus:(unint64_t)status;
- (void)addMDMInformationIfNecessaryToRequest:(id)request;
- (void)addPairedDeviceInfoIfNecessary:(id)necessary;
@end

@implementation AKLivenessRequestProvider

- (id)requestURLOverride
{
  selfCopy = self;
  v8[1] = a2;
  context = [(AKURLRequestProviderImpl *)self context];
  altDSID = [(AKAuthenticatedServerRequest *)context altDSID];
  v8[0] = [AKURLBag bagForAltDSID:?];
  _objc_release(altDSID);
  _objc_release(context);
  v5 = v8[0];
  urlBagKey = [(AKURLRequestProviderImpl *)selfCopy urlBagKey];
  v7 = [v5 urlAtKey:?];
  _objc_release(urlBagKey);
  objc_storeStrong(v8, 0);

  return v7;
}

- (BOOL)signRequest:(id)request error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  errorCopy = error;
  v6.receiver = selfCopy;
  v6.super_class = AKLivenessRequestProvider;
  if ([(AKGrandSlamRequestProvider *)&v6 signRequest:location[0] error:error])
  {
    [(AKLivenessRequestProvider *)selfCopy addMDMInformationIfNecessaryToRequest:location[0]];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (void)addMDMInformationIfNecessaryToRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v25 = 0;
  v23 = 0;
  v17 = 0;
  if ((+[AKFeatureManager isEnforceMDMPolicyEnabled]& 1) != 0)
  {
    event = [(AKLivenessRequestProvider *)selfCopy event];
    v25 = 1;
    v16 = 1;
    if (![(NSString *)event isEqualToString:AKPostDataEventLiveness])
    {
      event2 = [(AKLivenessRequestProvider *)selfCopy event];
      v23 = 1;
      v16 = [(NSString *)event2 isEqualToString:AKPostDataEventUpdateDeviceState];
    }

    v17 = v16;
  }

  if (v23)
  {
    _objc_release(event2);
  }

  if (v25)
  {
    _objc_release(event);
  }

  if (v17)
  {
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      sub_10001CEEC(v20);
      _os_log_impl(&_mh_execute_header, log, type, "E+E: Checking if we need to gather MDM information", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    accountManager = [(AKURLRequestProviderImpl *)selfCopy accountManager];
    context = [(AKURLRequestProviderImpl *)selfCopy context];
    altDSID = [(AKAuthenticatedServerRequest *)context altDSID];
    v19 = [AKAccountManager authKitAccountWithAltDSID:accountManager error:"authKitAccountWithAltDSID:error:"];
    _objc_release(altDSID);
    _objc_release(context);
    _objc_release(accountManager);
    v12 = objc_alloc_init(AKMDMInformationProvider);
    accountManager2 = [(AKURLRequestProviderImpl *)selfCopy accountManager];
    v18 = [(AKMDMInformationProvider *)v12 fetchMDMInformationIfNecessaryForAccount:v19 accountManager:?];
    _objc_release(accountManager2);
    _objc_release(v12);
    deviceManagedState = [v18 deviceManagedState];
    _objc_release(deviceManagedState);
    if (deviceManagedState)
    {
      v6 = location[0];
      deviceManagedState2 = [v18 deviceManagedState];
      [v6 ak_addHeaderForDeviceManagementState:?];
      _objc_release(deviceManagedState2);
    }

    organizationToken = [v18 organizationToken];
    _objc_release(organizationToken);
    if (organizationToken)
    {
      v3 = location[0];
      organizationToken2 = [v18 organizationToken];
      [v3 ak_addHeaderForMDMOrganizationToken:?];
      _objc_release(organizationToken2);
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)addPairedDeviceInfoIfNecessary:(id)necessary
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, necessary);
  v5 = +[AKURLBag sharedBag];
  v4 = [v5 configurationAtKey:@"isAccessorySyncInLivenessEnabled"];
  bOOLValue = [v4 BOOLValue];
  _objc_release(v4);
  _objc_release(v5);
  if (bOOLValue)
  {
    v7 = +[AKAccessoryHandler getPairedDevices];
    if ([v7 count])
    {
      v3 = [v7 objectForKeyedSubscript:?];
      [location[0] setObject:? forKeyedSubscript:?];
      _objc_release(v3);
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(location, 0);
}

- (id)authKitBody
{
  selfCopy = self;
  v214[1] = a2;
  v214[0] = +[AKDevice currentDevice];
  v213 = objc_alloc_init(NSMutableDictionary);
  [v213 setObject:&off_100339220 forKeyedSubscript:@"ut"];
  event = [(AKLivenessRequestProvider *)selfCopy event];
  [v213 setObject:? forKeyedSubscript:?];
  _objc_release(event);
  serialNumber = [v214[0] serialNumber];
  if (serialNumber)
  {
    [v213 setObject:serialNumber forKeyedSubscript:@"sn"];
  }

  internationalMobileEquipmentIdentity = [v214[0] internationalMobileEquipmentIdentity];
  if (internationalMobileEquipmentIdentity)
  {
    [v213 setObject:internationalMobileEquipmentIdentity forKeyedSubscript:@"imei"];
  }

  internationalMobileEquipmentIdentity2 = [v214[0] internationalMobileEquipmentIdentity2];
  if (internationalMobileEquipmentIdentity2)
  {
    [v213 setObject:internationalMobileEquipmentIdentity2 forKeyedSubscript:@"imei2"];
  }

  userChosenName = [v214[0] userChosenName];
  if (userChosenName)
  {
    [v213 setObject:userChosenName forKeyedSubscript:@"dn"];
  }

  pushToken = [(AKLivenessRequestProvider *)selfCopy pushToken];
  _objc_release(pushToken);
  if (pushToken)
  {
    pushToken2 = [(AKLivenessRequestProvider *)selfCopy pushToken];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(pushToken2);
  }

  else
  {
    event2 = [(AKLivenessRequestProvider *)selfCopy event];
    v109 = [(NSString *)event2 isEqualToString:AKPostDataEventLiveness];
    _objc_release(event2);
    if (v109)
    {
      location = _AKLogSystem();
      v207 = 16;
      if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
      {
        log = location;
        type = v207;
        sub_10001CEEC(v206);
        _os_log_error_impl(&_mh_execute_header, log, type, "No push token available for check-in!", v206, 2u);
      }

      objc_storeStrong(&location, 0);
      [v213 setObject:&__kCFBooleanTrue forKeyedSubscript:@"noptkn"];
    }
  }

  mobileEquipmentIdentifier = [v214[0] mobileEquipmentIdentifier];
  if (mobileEquipmentIdentifier)
  {
    [v213 setObject:mobileEquipmentIdentifier forKeyedSubscript:@"meid"];
  }

  integratedCircuitCardIdentifier = [v214[0] integratedCircuitCardIdentifier];
  if (integratedCircuitCardIdentifier)
  {
    [v213 setObject:integratedCircuitCardIdentifier forKeyedSubscript:@"iccid"];
  }

  color = [v214[0] color];
  if (color)
  {
    [v213 setObject:color forKeyedSubscript:@"dc"];
  }

  enclosureColor = [v214[0] enclosureColor];
  if (enclosureColor)
  {
    [v213 setObject:enclosureColor forKeyedSubscript:@"dec"];
  }

  coverGlassColor = [v214[0] coverGlassColor];
  if (coverGlassColor)
  {
    stringValue = [coverGlassColor stringValue];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(stringValue);
  }

  housingColor = [v214[0] housingColor];
  if (housingColor)
  {
    stringValue2 = [housingColor stringValue];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(stringValue2);
  }

  backingColor = [v214[0] backingColor];
  if (backingColor)
  {
    stringValue3 = [backingColor stringValue];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(stringValue3);
  }

  modelNumber = [v214[0] modelNumber];
  if (modelNumber)
  {
    [v213 setObject:modelNumber forKeyedSubscript:@"prtn"];
  }

  phoneNumber = [v214[0] phoneNumber];
  if (phoneNumber)
  {
    [v213 setObject:phoneNumber forKeyedSubscript:@"pn"];
  }

  v102 = +[NSLocale currentLocale];
  localeIdentifier = [(NSLocale *)v102 localeIdentifier];
  _objc_release(v102);
  if (localeIdentifier)
  {
    [v213 setObject:localeIdentifier forKeyedSubscript:@"loc"];
  }

  v96 = +[NSDate now];
  [(NSDate *)v96 timeIntervalSince1970];
  v97 = (v2 * 1000.0);
  _objc_release(v96);
  v195[1] = v97;
  v98 = [NSNumber numberWithLongLong:v97];
  [v213 setObject:? forKeyedSubscript:?];
  _objc_release(v98);
  v101 = +[AKAccountManager sharedInstance];
  v100 = +[AKAccountManager sharedInstance];
  primaryAuthKitAccount = [(AKAccountManager *)v100 primaryAuthKitAccount];
  v195[0] = [(AKAccountManager *)v101 passkeysInKeychainCountForAccount:?];
  _objc_release(primaryAuthKitAccount);
  _objc_release(v100);
  _objc_release(v101);
  if (v195[0])
  {
    stringValue4 = [v195[0] stringValue];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(stringValue4);
  }

  v194 = objc_alloc_init(AKBiometricRatchetController);
  if ([v194 isDTOEnabled])
  {
    currentRachetState = [v194 currentRachetState];
    if (currentRachetState)
    {
      v92 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [currentRachetState rawState]);
      stringValue5 = [(NSNumber *)v92 stringValue];
      [v213 setObject:? forKeyedSubscript:?];
      _objc_release(stringValue5);
      _objc_release(v92);
    }

    else
    {
      oslog = _AKLogSystem();
      v191 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v93 = oslog;
        v94 = v191;
        sub_10001CEEC(v190);
        _os_log_error_impl(&_mh_execute_header, v93, v94, "Ratchet state unexpectly found nil during liveness", v190, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [v213 setObject:@"9" forKeyedSubscript:@"biometricRatchetEnablementState"];
    }

    objc_storeStrong(&currentRachetState, 0);
  }

  else
  {
    [v213 setObject:@"-1" forKeyedSubscript:@"biometricRatchetEnablementState"];
  }

  v189 = [[LAStorage alloc] initWithDomain:0 authenticationContext:0];
  v188 = [v189 BOOLForKey:12];
  if (v188)
  {
    v90 = AKTrueValue;
  }

  else
  {
    v90 = AKFalseValue;
  }

  [v213 setObject:v90 forKeyedSubscript:@"biometricLivenessInLast24Hours"];
  v85 = +[AKDevice currentDevice];
  isProtectedWithPasscode = [v85 isProtectedWithPasscode];
  _objc_release(v85);
  v187 = isProtectedWithPasscode;
  v87 = [NSNumber numberWithBool:isProtectedWithPasscode & 1];
  [v213 setObject:? forKeyedSubscript:?];
  _objc_release(v87);
  v186 = 0;
  v89 = +[AKCarrierBundleUtilities sharedInstance];
  obj = v186;
  v88 = [(AKCarrierBundleUtilities *)v89 phoneBundleInfoWithAdditionalInfo:0 error:&obj];
  objc_storeStrong(&v186, obj);
  v185 = v88;
  _objc_release(v89);
  if (v185)
  {
    [v213 setObject:v185 forKeyedSubscript:@"phones"];
  }

  else
  {
    v183 = _AKLogSystem();
    v182 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v220, v186);
      _os_log_error_impl(&_mh_execute_header, v183, v182, "Error getting phone bundle information: %@", v220, 0xCu);
    }

    objc_storeStrong(&v183, 0);
  }

  v82 = +[AKAccountManager sharedInstance];
  context = [(AKURLRequestProviderImpl *)selfCopy context];
  altDSID = [(AKAuthenticatedServerRequest *)context altDSID];
  v181 = [AKAccountManager authKitAccountWithAltDSID:v82 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(altDSID);
  _objc_release(context);
  _objc_release(v82);
  event3 = [(AKLivenessRequestProvider *)selfCopy event];
  v84 = [(NSString *)event3 isEqualToString:AKPostDataEventLiveness];
  _objc_release(event3);
  if (v84)
  {
    v77 = [NSNumber numberWithUnsignedInteger:[(AKLivenessRequestProvider *)selfCopy livenessReason]];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v77);
    v180 = 0;
    followUpProvider = [(AKLivenessRequestProvider *)selfCopy followUpProvider];
    v178 = v180;
    v78 = [(AKFollowUpProvider *)followUpProvider pendingFollowUpItems:&v178];
    objc_storeStrong(&v180, v178);
    v179 = [AKFollowUpServerPayloadFormatter pendingAuthKitFollowUpPayload:v78];
    _objc_release(v78);
    _objc_release(followUpProvider);
    if (v180)
    {
      v177 = _AKLogSystem();
      v176 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
      {
        sub_1000333DC(v219, v180);
        _os_log_error_impl(&_mh_execute_header, v177, v176, "Failed to fetch follow up identifiers: %{public}@", v219, 0xCu);
      }

      objc_storeStrong(&v177, 0);
    }

    else
    {
      [v213 setObject:v179 forKeyedSubscript:AKRequestBodyFollowupKey];
    }

    v75 = +[AKAccountManager sharedInstance];
    altDSIDforPrimaryiCloudAccount = [(AKAccountManager *)v75 altDSIDforPrimaryiCloudAccount];
    _objc_release(v75);
    v173 = 0;
    v171 = 0;
    v76 = 0;
    if (altDSIDforPrimaryiCloudAccount)
    {
      context2 = [(AKURLRequestProviderImpl *)selfCopy context];
      v173 = 1;
      altDSID2 = [context2 altDSID];
      v171 = 1;
      v76 = [altDSIDforPrimaryiCloudAccount isEqualToString:?];
    }

    if (v171)
    {
      _objc_release(altDSID2);
    }

    if (v173)
    {
      _objc_release(context2);
    }

    if (v76)
    {
      v74 = +[AKCDPFactory walrusStatusLiveValue];
      captureCurrentValue = [v74 captureCurrentValue];
      _objc_release(v74);
      unsignedIntegerValue = [captureCurrentValue unsignedIntegerValue];
      if (unsignedIntegerValue)
      {
        v168 = unsignedIntegerValue == 1;
        v73 = [NSNumber numberWithBool:unsignedIntegerValue == 1];
        [v213 setObject:? forKeyedSubscript:?];
        _objc_release(v73);
        [(AKLivenessRequestProvider *)selfCopy _updateTelemtryOptInForAccount:v181 withWalrusStatus:unsignedIntegerValue];
      }

      v72 = +[AKCDPFactory webAccessStatusLiveValue];
      captureCurrentValue2 = [v72 captureCurrentValue];
      _objc_release(v72);
      unsignedIntegerValue2 = [captureCurrentValue2 unsignedIntegerValue];
      if (unsignedIntegerValue2)
      {
        v165 = unsignedIntegerValue2 == 1;
        v71 = [NSNumber numberWithBool:unsignedIntegerValue2 == 1];
        [v213 setObject:? forKeyedSubscript:?];
        _objc_release(v71);
      }

      objc_storeStrong(&captureCurrentValue2, 0);
      objc_storeStrong(&captureCurrentValue, 0);
    }

    v70 = +[AKAccountManager sharedInstance];
    v164 = [(AKAccountManager *)v70 _matchingServiceAccountForAuthKitAccount:v181 service:2];
    _objc_release(v70);
    if (v164)
    {
      v163 = [v164 objectForKeyedSubscript:@"isRegulatoryAccount"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v163 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v162 = bOOLValue != 0;
      if (bOOLValue)
      {
        v161 = _AKLogSystem();
        v160 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
        {
          v67 = v161;
          v68 = v160;
          sub_10001CEEC(v159);
          _os_log_debug_impl(&_mh_execute_header, v67, v68, "Liveness is for the iTunes regulatory account. Fetching eligibility.", v159, 2u);
        }

        objc_storeStrong(&v161, 0);
        v158 = +[AKRegulatoryEligibilityHandler regulatoryEligibilities];
        if (v158)
        {
          [v213 setObject:v158 forKeyedSubscript:@"3prsd"];
        }

        objc_storeStrong(&v158, 0);
      }

      objc_storeStrong(&v163, 0);
    }

    v63 = +[AKAccountManager sharedInstance];
    context3 = [(AKURLRequestProviderImpl *)selfCopy context];
    altDSID3 = [(AKAuthenticatedServerRequest *)context3 altDSID];
    v157 = [NSNumber numberWithUnsignedInteger:[(AKAccountManager *)v63 signInPartitionForLivenessWithAltDSID:?]];
    _objc_release(altDSID3);
    _objc_release(context3);
    _objc_release(v63);
    [v213 setObject:v157 forKeyedSubscript:AKSignInPartitionLivenessBodyKey];
    v64 = +[AKAccountManager sharedInstance];
    v65 = [(AKAccountManager *)v64 securityLevelForAccount:v181];
    _objc_release(v64);
    v156[1] = v65;
    v66 = [NSNumber numberWithUnsignedInteger:v65];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v66);
    objc_storeStrong(&v157, 0);
    objc_storeStrong(&v164, 0);
    objc_storeStrong(&altDSIDforPrimaryiCloudAccount, 0);
    objc_storeStrong(&v179, 0);
    objc_storeStrong(&v180, 0);
  }

  if (v181)
  {
    v58 = +[AKAccountManager sharedInstance];
    v57 = [NSNumber numberWithUnsignedInteger:[(AKAccountManager *)v58 repairStateForAccount:v181]];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v57);
    _objc_release(v58);
    v59 = +[AKAccountManager sharedInstance];
    v156[0] = [(AKAccountManager *)v59 DSIDForAccount:v181];
    _objc_release(v59);
    v3 = objc_opt_class();
    v60 = sub_1001953B4(v3, v156[0]);
    v153 = 0;
    v151 = 0;
    if (v60)
    {
      v4 = _objc_retain(v60);
    }

    else
    {
      v5 = objc_opt_class();
      v154 = sub_1001953B4(v5, v156[0]);
      v153 = 1;
      stringValue6 = [v154 stringValue];
      v151 = 1;
      v4 = _objc_retain(stringValue6);
    }

    v155 = v4;
    if (v151)
    {
      _objc_release(stringValue6);
    }

    if (v153)
    {
      _objc_release(v154);
    }

    _objc_release(v60);
    v53 = [NSNumber numberWithBool:[AKCDPFactory cdpAccountIsICDPEnabledForDSID:v155]];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v53);
    context4 = [(AKURLRequestProviderImpl *)selfCopy context];
    altDSID4 = [(AKAuthenticatedServerRequest *)context4 altDSID];
    v54 = [NSNumber numberWithBool:[AKCDPFactory cdpAccountIsOTEnabledForAltDSID:?]];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v54);
    _objc_release(altDSID4);
    _objc_release(context4);
    objc_storeStrong(&v155, 0);
    objc_storeStrong(v156, 0);
  }

  event4 = [(AKLivenessRequestProvider *)selfCopy event];
  v52 = [(NSString *)event4 isEqual:AKPostDataEventFinalSignOut];
  _objc_release(event4);
  if (!v52)
  {
    v50 = +[AKAccountManager sharedInstance];
    v150 = [(AKAccountManager *)v50 activeServiceNamesForAccount:v181];
    _objc_release(v50);
    if ([v150 count])
    {
      v149 = _AKLogSystem();
      v148 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000194D4(v218, v150);
        _os_log_impl(&_mh_execute_header, v149, v148, "Posting active services as: %@", v218, 0xCu);
      }

      objc_storeStrong(&v149, 0);
      [v213 setObject:v150 forKeyedSubscript:@"services"];
    }

    else
    {
      v147 = _AKLogSystem();
      v146 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v217, v181);
        _os_log_error_impl(&_mh_execute_header, v147, v146, "Check-in to server without any active services for account: %@", v217, 0xCu);
      }

      objc_storeStrong(&v147, 0);
    }

    objc_storeStrong(&v150, 0);
  }

  v48 = +[AKDevice currentDevice];
  v47 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v48 isInCircle]);
  [v213 setObject:? forKeyedSubscript:?];
  _objc_release(v47);
  _objc_release(v48);
  v49 = +[AKAccountManager sharedInstance];
  primaryiCloudAccount = [(AKAccountManager *)v49 primaryiCloudAccount];
  _objc_release(v49);
  if (primaryiCloudAccount)
  {
    v144 = [primaryiCloudAccount accountPropertyForKey:@"custodianAssigneeStatus"];
    if (v144)
    {
      v46 = v144;
    }

    else
    {
      v46 = &off_100339238;
    }

    [v213 setObject:v46 forKeyedSubscript:@"isRecoveryContactAssignee"];
    v143 = [primaryiCloudAccount accountPropertyForKey:@"beneficiaryAssigneeStatus"];
    if (v143)
    {
      v45 = v143;
    }

    else
    {
      v45 = &off_100339238;
    }

    [v213 setObject:v45 forKeyedSubscript:@"isLegacyContactAssignee"];
    v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [primaryiCloudAccount isEnabledForDataclass:ACAccountDataclassMail]);
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v44);
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v144, 0);
  }

  if ([(AKLivenessRequestProvider *)selfCopy livenessReason]== 1)
  {
    v43 = +[AKAccountManager sharedInstance];
    v142 = [(AKAccountManager *)v43 nextLivenessNonce:v181];
    _objc_release(v43);
    v141 = 0;
    if (v142)
    {
      v140 = 0;
      context5 = [(AKURLRequestProviderImpl *)selfCopy context];
      altDSID5 = [(AKAuthenticatedServerRequest *)context5 altDSID];
      v138 = v140;
      v42 = [AKSecureKey osVersionAttestationRefKeyForAltDSID:"osVersionAttestationRefKeyForAltDSID:error:" error:?];
      objc_storeStrong(&v140, v138);
      _objc_release(altDSID5);
      _objc_release(context5);
      cf = v42;
      if (v42)
      {
        v137 = 0;
        v136 = [v142 dataUsingEncoding:4];
        v134 = v137;
        v39 = [AKSecurityHelper signData:v136 withKey:cf error:&v134];
        objc_storeStrong(&v137, v134);
        v135 = v39;
        if (v39)
        {
          v38 = [v135 base64EncodedStringWithOptions:0];
          [v213 setObject:? forKeyedSubscript:?];
          _objc_release(v38);
          [v213 setObject:v142 forKeyedSubscript:@"livenessNonce"];
        }

        else
        {
          objc_storeStrong(&v141, v137);
        }

        CFRelease(cf);
        objc_storeStrong(&v135, 0);
        objc_storeStrong(&v136, 0);
        objc_storeStrong(&v137, 0);
      }

      else
      {
        v6 = [NSError ak_generalErrorWithCode:-10009 errorDomain:AKAttestationErrorDomain underlyingError:v140];
        v7 = v141;
        v141 = v6;
        _objc_release(v7);
        v133 = _AKLogSystem();
        v132 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          v36 = v133;
          v37 = v132;
          sub_10001CEEC(v131);
          _os_log_error_impl(&_mh_execute_header, v36, v37, "OSBound RefKey is not available in keyChain...Can't send signed liveness nonce", v131, 2u);
        }

        objc_storeStrong(&v133, 0);
      }

      objc_storeStrong(&v140, 0);
    }

    else
    {
      v8 = [NSError ak_generalErrorWithCode:-10008 errorDomain:AKAttestationErrorDomain underlyingError:0];
      v9 = v141;
      v141 = v8;
      _objc_release(v9);
    }

    if (v141)
    {
      v130 = [AAFAnalyticsEvent ak_analyticsEventWithEventName:@"com.apple.authkit.sendLivenessNonce" error:v141];
      v34 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
      [v34 sendEvent:v130];
      _objc_release(v34);
      v35 = [v141 errorDescriptionIncludingUnderlyingErrorsWithMaxDepth:3];
      [v213 setObject:? forKeyedSubscript:?];
      _objc_release(v35);
      objc_storeStrong(&v130, 0);
    }

    context6 = [(AKURLRequestProviderImpl *)selfCopy context];
    altDSID6 = [(AKAuthenticatedServerRequest *)context6 altDSID];
    v128 = 0;
    isPRKHealingEnabled = 0;
    if (altDSID6)
    {
      isPRKHealingEnabled = 0;
      if (v187)
      {
        v129 = +[AKFeatureManager sharedManager];
        v128 = 1;
        isPRKHealingEnabled = [v129 isPRKHealingEnabled];
      }
    }

    if (v128)
    {
      _objc_release(v129);
    }

    _objc_release(altDSID6);
    _objc_release(context6);
    if (isPRKHealingEnabled)
    {
      v127 = 0;
      v29 = +[AKAccountManager sharedInstance];
      context7 = [(AKURLRequestProviderImpl *)selfCopy context];
      altDSID7 = [(AKAuthenticatedServerRequest *)context7 altDSID];
      v125 = v127;
      v26 = [AKAccountManager authKitAccountWithAltDSID:v29 error:"authKitAccountWithAltDSID:error:"];
      objc_storeStrong(&v127, v125);
      v126 = v26;
      _objc_release(altDSID7);
      _objc_release(context7);
      _objc_release(v29);
      v30 = +[AKAccountManager sharedInstance];
      v124 = [(AKAccountManager *)v30 passwordResetTokenForAccount:v26];
      _objc_release(v30);
      if (v124)
      {
        v123 = _AKLogSystem();
        v122 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v123;
          v25 = v122;
          sub_10001CEEC(v121);
          _os_log_impl(&_mh_execute_header, v24, v25, "Attempting to validate prk", v121, 2u);
        }

        objc_storeStrong(&v123, 0);
        [v213 setObject:v124 forKeyedSubscript:@"prk"];
      }

      objc_storeStrong(&v124, 0);
      objc_storeStrong(&v126, 0);
      objc_storeStrong(&v127, 0);
    }

    [(AKLivenessRequestProvider *)selfCopy addPairedDeviceInfoIfNecessary:v213];
    objc_storeStrong(&v141, 0);
    objc_storeStrong(&v142, 0);
  }

  context8 = [(AKURLRequestProviderImpl *)selfCopy context];
  altDSID8 = [(AKAuthenticatedServerRequest *)context8 altDSID];
  _objc_release(altDSID8);
  _objc_release(context8);
  if (altDSID8)
  {
    v21 = +[AKAccountManager sharedInstance];
    context9 = [(AKURLRequestProviderImpl *)selfCopy context];
    altDSID9 = [(AKAuthenticatedServerRequest *)context9 altDSID];
    v120 = [(AKAccountManager *)v21 iCloudAccountForAltDSID:?];
    _objc_release(altDSID9);
    _objc_release(context9);
    _objc_release(v21);
    if (v120)
    {
      v17 = objc_opt_class();
      v18 = [v120 accountPropertyForKey:@"escrowRecordHealthCheckFailureCount"];
      v119 = sub_1001953B4(v17, v18);
      _objc_release(v18);
      if (v119)
      {
        v118 = [v119 intValue] <= 0;
        v16 = [NSNumber numberWithBool:v118];
        [v213 setObject:? forKeyedSubscript:?];
        _objc_release(v16);
      }

      objc_storeStrong(&v119, 0);
    }

    else
    {
      v117 = _AKLogSystem();
      v116 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        context10 = [(AKURLRequestProviderImpl *)selfCopy context];
        altDSID10 = [(AKAuthenticatedServerRequest *)context10 altDSID];
        sub_1000194D4(v216, altDSID10);
        _os_log_error_impl(&_mh_execute_header, v117, v116, "Couldn't find iCloud account for altDSID: %@", v216, 0xCu);
        _objc_release(altDSID10);
        _objc_release(context10);
      }

      objc_storeStrong(&v117, 0);
    }

    objc_storeStrong(&v120, 0);
  }

  else
  {
    v115 = _AKLogSystem();
    v114 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      v12 = v115;
      v13 = v114;
      sub_10001CEEC(v113);
      _os_log_error_impl(&_mh_execute_header, v12, v13, "AltDSID in context is nil, couldn't fetch iCloud account for fetching iCSC health", v113, 2u);
    }

    objc_storeStrong(&v115, 0);
  }

  v11 = [v213 copy];
  objc_storeStrong(&primaryiCloudAccount, 0);
  objc_storeStrong(&v181, 0);
  objc_storeStrong(&v185, 0);
  objc_storeStrong(&v186, 0);
  objc_storeStrong(&v189, 0);
  objc_storeStrong(&v194, 0);
  objc_storeStrong(v195, 0);
  objc_storeStrong(&localeIdentifier, 0);
  objc_storeStrong(&phoneNumber, 0);
  objc_storeStrong(&modelNumber, 0);
  objc_storeStrong(&backingColor, 0);
  objc_storeStrong(&housingColor, 0);
  objc_storeStrong(&coverGlassColor, 0);
  objc_storeStrong(&enclosureColor, 0);
  objc_storeStrong(&color, 0);
  objc_storeStrong(&integratedCircuitCardIdentifier, 0);
  objc_storeStrong(&mobileEquipmentIdentifier, 0);
  objc_storeStrong(&userChosenName, 0);
  objc_storeStrong(&internationalMobileEquipmentIdentity2, 0);
  objc_storeStrong(&internationalMobileEquipmentIdentity, 0);
  objc_storeStrong(&serialNumber, 0);
  objc_storeStrong(&v213, 0);
  objc_storeStrong(v214, 0);

  return v11;
}

- (void)_updateTelemtryOptInForAccount:(id)account withWalrusStatus:(unint64_t)status
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, account);
  statusCopy = status;
  v20 = +[AKAccountManager sharedInstance];
  v21 = [(AKAccountManager *)v20 accountAccessTelemetryOptInForAccount:location[0]];
  _objc_release(v20);
  v48 = v21;
  v22 = +[AKAccountManager sharedInstance];
  v47 = [(AKAccountManager *)v22 accountAccessTelemetryOptInDateForAccount:location[0]];
  _objc_release(v22);
  if ((v21 & 1) != 1 || v47)
  {
    v38 = 0;
    v13 = +[AKDevice currentDevice];
    v36 = 0;
    v14 = 0;
    if ([v13 isInternalBuild])
    {
      v37 = +[AKConfiguration sharedConfiguration];
      v36 = 1;
      v14 = [v37 telemetryOptInGracePeriodOverride] == 1;
    }

    if (v36)
    {
      _objc_release(v37);
    }

    _objc_release(v13);
    if (v14)
    {
      v35 = _AKLogSystem();
      v34 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v35;
        v12 = v34;
        sub_10001CEEC(v33);
        _os_log_impl(&_mh_execute_header, v11, v12, "Telemetry opt-in grace period override is set, forcing update...", v33, 2u);
      }

      objc_storeStrong(&v35, 0);
      v38 = 1;
    }

    else
    {
      v9 = +[NSDate date];
      [(NSDate *)v9 timeIntervalSinceDate:v47];
      v10 = v4;
      _objc_release(v9);
      v32 = v10;
      v31 = _AKLogSystem();
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [NSNumber numberWithDouble:v32];
        sub_1000194D4(v52, v8);
        _os_log_impl(&_mh_execute_header, v31, v30, "Opt-in was last set %@ seconds ago", v52, 0xCu);
        _objc_release(v8);
      }

      objc_storeStrong(&v31, 0);
      v38 = v32 >= 172800.0;
    }

    if ((v48 & 1) == 1 && statusCopy == 2 && v38)
    {
      v29 = 0;
      v7 = +[AKAccountManager sharedInstance];
      obj = v29;
      [(AKAccountManager *)v7 setAccountAccessTelemetryOptIn:0 forAccount:location[0] error:&obj];
      objc_storeStrong(&v29, obj);
      _objc_release(v7);
      if (v29)
      {
        oslog = _AKLogSystem();
        v26 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v51, v29);
          _os_log_error_impl(&_mh_execute_header, oslog, v26, "Failed to update telemetry opt-in on account: %@", v51, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v29, 0);
    }

    else if (!v38)
    {
      v25 = _AKLogSystem();
      v24 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v25;
        v6 = v24;
        sub_10001CEEC(v23);
        _os_log_impl(&_mh_execute_header, v5, v6, "It has NOT been more than 48 hours since the last time telemetry opt-in was set.", v23, 2u);
      }

      objc_storeStrong(&v25, 0);
    }

    v39 = 0;
  }

  else
  {
    v46 = _AKLogSystem();
    v45 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      log = v46;
      type = v45;
      sub_10001CEEC(v44);
      _os_log_impl(&_mh_execute_header, log, type, "Telemetry opt-in time was not set, updating now in response to liveness...", v44, 2u);
    }

    objc_storeStrong(&v46, 0);
    v43 = 0;
    v15 = +[AKAccountManager sharedInstance];
    [(AKAccountManager *)v15 updateAccountAccessTelemetryOptInTimestampForAccount:location[0] withOptIn:1];
    _objc_release(v15);
    v16 = +[AKAccountManager sharedInstance];
    v42 = v43;
    [(AKAccountManager *)v16 saveAccount:location[0] error:&v42];
    objc_storeStrong(&v43, v42);
    _objc_release(v16);
    if (v43)
    {
      v41 = _AKLogSystem();
      v40 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v53, v43);
        _os_log_error_impl(&_mh_execute_header, v41, v40, "Failed to update telemetry opt-in timestamp on account: %@", v53, 0xCu);
      }

      objc_storeStrong(&v41, 0);
    }

    v39 = 1;
    objc_storeStrong(&v43, 0);
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

@end
@interface AKLivenessRequestProvider
- (BOOL)signRequest:(id)a3 error:(id *)a4;
- (id)authKitBody;
- (id)requestURLOverride;
- (void)_updateTelemtryOptInForAccount:(id)a3 withWalrusStatus:(unint64_t)a4;
- (void)addMDMInformationIfNecessaryToRequest:(id)a3;
- (void)addPairedDeviceInfoIfNecessary:(id)a3;
@end

@implementation AKLivenessRequestProvider

- (id)requestURLOverride
{
  v9 = self;
  v8[1] = a2;
  v4 = [(AKURLRequestProviderImpl *)self context];
  v3 = [(AKAuthenticatedServerRequest *)v4 altDSID];
  v8[0] = [AKURLBag bagForAltDSID:?];
  _objc_release(v3);
  _objc_release(v4);
  v5 = v8[0];
  v6 = [(AKURLRequestProviderImpl *)v9 urlBagKey];
  v7 = [v5 urlAtKey:?];
  _objc_release(v6);
  objc_storeStrong(v8, 0);

  return v7;
}

- (BOOL)signRequest:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = a4;
  v6.receiver = v9;
  v6.super_class = AKLivenessRequestProvider;
  if ([(AKGrandSlamRequestProvider *)&v6 signRequest:location[0] error:a4])
  {
    [(AKLivenessRequestProvider *)v9 addMDMInformationIfNecessaryToRequest:location[0]];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (void)addMDMInformationIfNecessaryToRequest:(id)a3
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  v23 = 0;
  v17 = 0;
  if ((+[AKFeatureManager isEnforceMDMPolicyEnabled]& 1) != 0)
  {
    v26 = [(AKLivenessRequestProvider *)v28 event];
    v25 = 1;
    v16 = 1;
    if (![(NSString *)v26 isEqualToString:AKPostDataEventLiveness])
    {
      v24 = [(AKLivenessRequestProvider *)v28 event];
      v23 = 1;
      v16 = [(NSString *)v24 isEqualToString:AKPostDataEventUpdateDeviceState];
    }

    v17 = v16;
  }

  if (v23)
  {
    _objc_release(v24);
  }

  if (v25)
  {
    _objc_release(v26);
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
    v10 = [(AKURLRequestProviderImpl *)v28 accountManager];
    v9 = [(AKURLRequestProviderImpl *)v28 context];
    v8 = [(AKAuthenticatedServerRequest *)v9 altDSID];
    v19 = [AKAccountManager authKitAccountWithAltDSID:v10 error:"authKitAccountWithAltDSID:error:"];
    _objc_release(v8);
    _objc_release(v9);
    _objc_release(v10);
    v12 = objc_alloc_init(AKMDMInformationProvider);
    v11 = [(AKURLRequestProviderImpl *)v28 accountManager];
    v18 = [(AKMDMInformationProvider *)v12 fetchMDMInformationIfNecessaryForAccount:v19 accountManager:?];
    _objc_release(v11);
    _objc_release(v12);
    v13 = [v18 deviceManagedState];
    _objc_release(v13);
    if (v13)
    {
      v6 = location[0];
      v7 = [v18 deviceManagedState];
      [v6 ak_addHeaderForDeviceManagementState:?];
      _objc_release(v7);
    }

    v5 = [v18 organizationToken];
    _objc_release(v5);
    if (v5)
    {
      v3 = location[0];
      v4 = [v18 organizationToken];
      [v3 ak_addHeaderForMDMOrganizationToken:?];
      _objc_release(v4);
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)addPairedDeviceInfoIfNecessary:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = +[AKURLBag sharedBag];
  v4 = [v5 configurationAtKey:@"isAccessorySyncInLivenessEnabled"];
  v6 = [v4 BOOLValue];
  _objc_release(v4);
  _objc_release(v5);
  if (v6)
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
  v215 = self;
  v214[1] = a2;
  v214[0] = +[AKDevice currentDevice];
  v213 = objc_alloc_init(NSMutableDictionary);
  [v213 setObject:&off_100339220 forKeyedSubscript:@"ut"];
  v112 = [(AKLivenessRequestProvider *)v215 event];
  [v213 setObject:? forKeyedSubscript:?];
  _objc_release(v112);
  v212 = [v214[0] serialNumber];
  if (v212)
  {
    [v213 setObject:v212 forKeyedSubscript:@"sn"];
  }

  v211 = [v214[0] internationalMobileEquipmentIdentity];
  if (v211)
  {
    [v213 setObject:v211 forKeyedSubscript:@"imei"];
  }

  v210 = [v214[0] internationalMobileEquipmentIdentity2];
  if (v210)
  {
    [v213 setObject:v210 forKeyedSubscript:@"imei2"];
  }

  v209 = [v214[0] userChosenName];
  if (v209)
  {
    [v213 setObject:v209 forKeyedSubscript:@"dn"];
  }

  v111 = [(AKLivenessRequestProvider *)v215 pushToken];
  _objc_release(v111);
  if (v111)
  {
    v110 = [(AKLivenessRequestProvider *)v215 pushToken];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v110);
  }

  else
  {
    v108 = [(AKLivenessRequestProvider *)v215 event];
    v109 = [(NSString *)v108 isEqualToString:AKPostDataEventLiveness];
    _objc_release(v108);
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

  v205 = [v214[0] mobileEquipmentIdentifier];
  if (v205)
  {
    [v213 setObject:v205 forKeyedSubscript:@"meid"];
  }

  v204 = [v214[0] integratedCircuitCardIdentifier];
  if (v204)
  {
    [v213 setObject:v204 forKeyedSubscript:@"iccid"];
  }

  v203 = [v214[0] color];
  if (v203)
  {
    [v213 setObject:v203 forKeyedSubscript:@"dc"];
  }

  v202 = [v214[0] enclosureColor];
  if (v202)
  {
    [v213 setObject:v202 forKeyedSubscript:@"dec"];
  }

  v201 = [v214[0] coverGlassColor];
  if (v201)
  {
    v105 = [v201 stringValue];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v105);
  }

  v200 = [v214[0] housingColor];
  if (v200)
  {
    v104 = [v200 stringValue];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v104);
  }

  v199 = [v214[0] backingColor];
  if (v199)
  {
    v103 = [v199 stringValue];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v103);
  }

  v198 = [v214[0] modelNumber];
  if (v198)
  {
    [v213 setObject:v198 forKeyedSubscript:@"prtn"];
  }

  v197 = [v214[0] phoneNumber];
  if (v197)
  {
    [v213 setObject:v197 forKeyedSubscript:@"pn"];
  }

  v102 = +[NSLocale currentLocale];
  v196 = [(NSLocale *)v102 localeIdentifier];
  _objc_release(v102);
  if (v196)
  {
    [v213 setObject:v196 forKeyedSubscript:@"loc"];
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
  v99 = [(AKAccountManager *)v100 primaryAuthKitAccount];
  v195[0] = [(AKAccountManager *)v101 passkeysInKeychainCountForAccount:?];
  _objc_release(v99);
  _objc_release(v100);
  _objc_release(v101);
  if (v195[0])
  {
    v95 = [v195[0] stringValue];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v95);
  }

  v194 = objc_alloc_init(AKBiometricRatchetController);
  if ([v194 isDTOEnabled])
  {
    v193 = [v194 currentRachetState];
    if (v193)
    {
      v92 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v193 rawState]);
      v91 = [(NSNumber *)v92 stringValue];
      [v213 setObject:? forKeyedSubscript:?];
      _objc_release(v91);
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

    objc_storeStrong(&v193, 0);
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
  v86 = [v85 isProtectedWithPasscode];
  _objc_release(v85);
  v187 = v86;
  v87 = [NSNumber numberWithBool:v86 & 1];
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
  v81 = [(AKURLRequestProviderImpl *)v215 context];
  v80 = [(AKAuthenticatedServerRequest *)v81 altDSID];
  v181 = [AKAccountManager authKitAccountWithAltDSID:v82 error:"authKitAccountWithAltDSID:error:"];
  _objc_release(v80);
  _objc_release(v81);
  _objc_release(v82);
  v83 = [(AKLivenessRequestProvider *)v215 event];
  v84 = [(NSString *)v83 isEqualToString:AKPostDataEventLiveness];
  _objc_release(v83);
  if (v84)
  {
    v77 = [NSNumber numberWithUnsignedInteger:[(AKLivenessRequestProvider *)v215 livenessReason]];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v77);
    v180 = 0;
    v79 = [(AKLivenessRequestProvider *)v215 followUpProvider];
    v178 = v180;
    v78 = [(AKFollowUpProvider *)v79 pendingFollowUpItems:&v178];
    objc_storeStrong(&v180, v178);
    v179 = [AKFollowUpServerPayloadFormatter pendingAuthKitFollowUpPayload:v78];
    _objc_release(v78);
    _objc_release(v79);
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
    v175 = [(AKAccountManager *)v75 altDSIDforPrimaryiCloudAccount];
    _objc_release(v75);
    v173 = 0;
    v171 = 0;
    v76 = 0;
    if (v175)
    {
      v174 = [(AKURLRequestProviderImpl *)v215 context];
      v173 = 1;
      v172 = [v174 altDSID];
      v171 = 1;
      v76 = [v175 isEqualToString:?];
    }

    if (v171)
    {
      _objc_release(v172);
    }

    if (v173)
    {
      _objc_release(v174);
    }

    if (v76)
    {
      v74 = +[AKCDPFactory walrusStatusLiveValue];
      v170 = [v74 captureCurrentValue];
      _objc_release(v74);
      v169 = [v170 unsignedIntegerValue];
      if (v169)
      {
        v168 = v169 == 1;
        v73 = [NSNumber numberWithBool:v169 == 1];
        [v213 setObject:? forKeyedSubscript:?];
        _objc_release(v73);
        [(AKLivenessRequestProvider *)v215 _updateTelemtryOptInForAccount:v181 withWalrusStatus:v169];
      }

      v72 = +[AKCDPFactory webAccessStatusLiveValue];
      v167 = [v72 captureCurrentValue];
      _objc_release(v72);
      v166 = [v167 unsignedIntegerValue];
      if (v166)
      {
        v165 = v166 == 1;
        v71 = [NSNumber numberWithBool:v166 == 1];
        [v213 setObject:? forKeyedSubscript:?];
        _objc_release(v71);
      }

      objc_storeStrong(&v167, 0);
      objc_storeStrong(&v170, 0);
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
        v69 = [v163 BOOLValue];
      }

      else
      {
        v69 = 0;
      }

      v162 = v69 != 0;
      if (v69)
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
    v62 = [(AKURLRequestProviderImpl *)v215 context];
    v61 = [(AKAuthenticatedServerRequest *)v62 altDSID];
    v157 = [NSNumber numberWithUnsignedInteger:[(AKAccountManager *)v63 signInPartitionForLivenessWithAltDSID:?]];
    _objc_release(v61);
    _objc_release(v62);
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
    objc_storeStrong(&v175, 0);
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
      v152 = [v154 stringValue];
      v151 = 1;
      v4 = _objc_retain(v152);
    }

    v155 = v4;
    if (v151)
    {
      _objc_release(v152);
    }

    if (v153)
    {
      _objc_release(v154);
    }

    _objc_release(v60);
    v53 = [NSNumber numberWithBool:[AKCDPFactory cdpAccountIsICDPEnabledForDSID:v155]];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v53);
    v56 = [(AKURLRequestProviderImpl *)v215 context];
    v55 = [(AKAuthenticatedServerRequest *)v56 altDSID];
    v54 = [NSNumber numberWithBool:[AKCDPFactory cdpAccountIsOTEnabledForAltDSID:?]];
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v54);
    _objc_release(v55);
    _objc_release(v56);
    objc_storeStrong(&v155, 0);
    objc_storeStrong(v156, 0);
  }

  v51 = [(AKLivenessRequestProvider *)v215 event];
  v52 = [(NSString *)v51 isEqual:AKPostDataEventFinalSignOut];
  _objc_release(v51);
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
  v145 = [(AKAccountManager *)v49 primaryiCloudAccount];
  _objc_release(v49);
  if (v145)
  {
    v144 = [v145 accountPropertyForKey:@"custodianAssigneeStatus"];
    if (v144)
    {
      v46 = v144;
    }

    else
    {
      v46 = &off_100339238;
    }

    [v213 setObject:v46 forKeyedSubscript:@"isRecoveryContactAssignee"];
    v143 = [v145 accountPropertyForKey:@"beneficiaryAssigneeStatus"];
    if (v143)
    {
      v45 = v143;
    }

    else
    {
      v45 = &off_100339238;
    }

    [v213 setObject:v45 forKeyedSubscript:@"isLegacyContactAssignee"];
    v44 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v145 isEnabledForDataclass:ACAccountDataclassMail]);
    [v213 setObject:? forKeyedSubscript:?];
    _objc_release(v44);
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v144, 0);
  }

  if ([(AKLivenessRequestProvider *)v215 livenessReason]== 1)
  {
    v43 = +[AKAccountManager sharedInstance];
    v142 = [(AKAccountManager *)v43 nextLivenessNonce:v181];
    _objc_release(v43);
    v141 = 0;
    if (v142)
    {
      v140 = 0;
      v41 = [(AKURLRequestProviderImpl *)v215 context];
      v40 = [(AKAuthenticatedServerRequest *)v41 altDSID];
      v138 = v140;
      v42 = [AKSecureKey osVersionAttestationRefKeyForAltDSID:"osVersionAttestationRefKeyForAltDSID:error:" error:?];
      objc_storeStrong(&v140, v138);
      _objc_release(v40);
      _objc_release(v41);
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

    v31 = [(AKURLRequestProviderImpl *)v215 context];
    v32 = [(AKAuthenticatedServerRequest *)v31 altDSID];
    v128 = 0;
    v33 = 0;
    if (v32)
    {
      v33 = 0;
      if (v187)
      {
        v129 = +[AKFeatureManager sharedManager];
        v128 = 1;
        v33 = [v129 isPRKHealingEnabled];
      }
    }

    if (v128)
    {
      _objc_release(v129);
    }

    _objc_release(v32);
    _objc_release(v31);
    if (v33)
    {
      v127 = 0;
      v29 = +[AKAccountManager sharedInstance];
      v28 = [(AKURLRequestProviderImpl *)v215 context];
      v27 = [(AKAuthenticatedServerRequest *)v28 altDSID];
      v125 = v127;
      v26 = [AKAccountManager authKitAccountWithAltDSID:v29 error:"authKitAccountWithAltDSID:error:"];
      objc_storeStrong(&v127, v125);
      v126 = v26;
      _objc_release(v27);
      _objc_release(v28);
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

    [(AKLivenessRequestProvider *)v215 addPairedDeviceInfoIfNecessary:v213];
    objc_storeStrong(&v141, 0);
    objc_storeStrong(&v142, 0);
  }

  v22 = [(AKURLRequestProviderImpl *)v215 context];
  v23 = [(AKAuthenticatedServerRequest *)v22 altDSID];
  _objc_release(v23);
  _objc_release(v22);
  if (v23)
  {
    v21 = +[AKAccountManager sharedInstance];
    v20 = [(AKURLRequestProviderImpl *)v215 context];
    v19 = [(AKAuthenticatedServerRequest *)v20 altDSID];
    v120 = [(AKAccountManager *)v21 iCloudAccountForAltDSID:?];
    _objc_release(v19);
    _objc_release(v20);
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
        v15 = [(AKURLRequestProviderImpl *)v215 context];
        v14 = [(AKAuthenticatedServerRequest *)v15 altDSID];
        sub_1000194D4(v216, v14);
        _os_log_error_impl(&_mh_execute_header, v117, v116, "Couldn't find iCloud account for altDSID: %@", v216, 0xCu);
        _objc_release(v14);
        _objc_release(v15);
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
  objc_storeStrong(&v145, 0);
  objc_storeStrong(&v181, 0);
  objc_storeStrong(&v185, 0);
  objc_storeStrong(&v186, 0);
  objc_storeStrong(&v189, 0);
  objc_storeStrong(&v194, 0);
  objc_storeStrong(v195, 0);
  objc_storeStrong(&v196, 0);
  objc_storeStrong(&v197, 0);
  objc_storeStrong(&v198, 0);
  objc_storeStrong(&v199, 0);
  objc_storeStrong(&v200, 0);
  objc_storeStrong(&v201, 0);
  objc_storeStrong(&v202, 0);
  objc_storeStrong(&v203, 0);
  objc_storeStrong(&v204, 0);
  objc_storeStrong(&v205, 0);
  objc_storeStrong(&v209, 0);
  objc_storeStrong(&v210, 0);
  objc_storeStrong(&v211, 0);
  objc_storeStrong(&v212, 0);
  objc_storeStrong(&v213, 0);
  objc_storeStrong(v214, 0);

  return v11;
}

- (void)_updateTelemtryOptInForAccount:(id)a3 withWalrusStatus:(unint64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = a4;
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

    if ((v48 & 1) == 1 && v49 == 2 && v38)
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
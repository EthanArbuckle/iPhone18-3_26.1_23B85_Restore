@interface AKAuthenticationServerResponse
+ (id)decodedConfigurationInfo:(id)info;
- (AKAuthenticationServerResponse)initWithSRPContext:(id)context;
- (AKAuthenticationServerResponse)initWithServerResponse:(id)response forAppleID:(id)d;
- (AKAuthenticationServerResponse)initWithServerResponse:(id)response responseBody:(id)body;
- (BOOL)_shouldBackgroundiCloudSignIn;
- (BOOL)shouldReportTokenGenerationMetricsWithTokenGenerationInfo:(id)info;
- (BOOL)updateWithSecondaryAuthenticationResponse:(id)response;
- (BOOL)updateWithSecondaryAuthenticationResponse:(id)response shouldUpdateDSID:(BOOL)d;
- (id)_decodeBase64String:(id)string;
- (id)_federatedPayloadFromInfo:(id)info;
- (id)_numberFormatter;
- (void)_harvestCommonFieldsFromBody:(id)body;
- (void)_harvestCommonFieldsFromResponse:(id)response;
- (void)_harvestManagedAppleIDInfoFromDictionary:(id)dictionary;
- (void)_setHeartbeatToken:(id)token;
- (void)_setIdmsDataToken:(id)token;
- (void)_setPasswordEquivalentToken:(id)token;
- (void)_setPasswordlessToken:(id)token;
- (void)_updateADPCohortWithRawValue:(id)value;
- (void)_updateAccountInformationWithResultsDictionary:(id)dictionary;
- (void)_updateDSIDWithRawValue:(id)value;
- (void)reportCriticalAuthTokensTelemetryForFlow:(unint64_t)flow withTokenGenerationInfo:(id)info;
- (void)updateWithSecondaryAuthenticationBody:(id)body;
@end

@implementation AKAuthenticationServerResponse

+ (id)decodedConfigurationInfo:(id)info
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v4 = [location[0] aaf_map:&stru_10031F7F0];
  objc_storeStrong(location, 0);

  return v4;
}

- (AKAuthenticationServerResponse)initWithSRPContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v221.receiver = v3;
  v221.super_class = AKAuthenticationServerResponse;
  selfCopy = [(AKAuthenticationServerResponse *)&v221 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    serverProvidedData = [location[0] serverProvidedData];
    status = [location[0] status];
    serverProvidedData2 = [location[0] serverProvidedData];
    serverProvidedData = selfCopy->_serverProvidedData;
    selfCopy->_serverProvidedData = serverProvidedData2;
    _objc_release(serverProvidedData);
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v163 = type;
      ak_redactedCopy = [serverProvidedData ak_redactedCopy];
      v216 = _objc_retain(ak_redactedCopy);
      sub_10001B098(v228, status, v216);
      _os_log_impl(&_mh_execute_header, log, v163, "Creating AKAuthenticationServerResponse with status: %@ contents: %@", v228, 0x16u);
      _objc_release(ak_redactedCopy);
      objc_storeStrong(&v216, 0);
    }

    objc_storeStrong(&oslog, 0);
    v6 = [serverProvidedData objectForKeyedSubscript:@"atxid"];
    transactionId = selfCopy->_transactionId;
    selfCopy->_transactionId = v6;
    _objc_release(transactionId);
    v160 = [serverProvidedData objectForKeyedSubscript:@"apb"];
    bOOLValue = [v160 BOOLValue];
    selfCopy->_allowPiggybacking = bOOLValue;
    _objc_release(v160);
    v161 = [serverProvidedData objectForKeyedSubscript:@"pbp"];
    bOOLValue2 = [v161 BOOLValue];
    selfCopy->_allowPiggybackingPresence = bOOLValue2;
    _objc_release(v161);
    obj = [serverProvidedData objectForKeyedSubscript:@"alias"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_aliases, obj);
    }

    [(AKAuthenticationServerResponse *)selfCopy _updateAccountInformationWithResultsDictionary:serverProvidedData];
    masterToken = [location[0] masterToken];
    masterToken = selfCopy->_masterToken;
    selfCopy->_masterToken = masterToken;
    _objc_release(masterToken);
    v12 = objc_alloc_init(NSMutableDictionary);
    serviceTokens = selfCopy->_serviceTokens;
    selfCopy->_serviceTokens = v12;
    _objc_release(serviceTokens);
    v214 = [serverProvidedData objectForKeyedSubscript:@"t"];
    memset(__b, 0, sizeof(__b));
    v158 = _objc_retain(v214);
    v159 = [v158 countByEnumeratingWithState:__b objects:v227 count:16];
    if (v159)
    {
      v155 = *__b[2];
      v156 = 0;
      v157 = v159;
      while (1)
      {
        v154 = v156;
        if (*__b[2] != v155)
        {
          objc_enumerationMutation(v158);
        }

        v213 = *(__b[1] + 8 * v156);
        v211 = [v214 objectForKeyedSubscript:v213];
        v210 = [AKToken tokenWithDictionary:v211];
        if (v210)
        {
          [(NSMutableDictionary *)selfCopy->_serviceTokens setObject:v210 forKeyedSubscript:v213];
        }

        objc_storeStrong(&v210, 0);
        objc_storeStrong(&v211, 0);
        ++v156;
        if (v154 + 1 >= v157)
        {
          v156 = 0;
          v157 = [v158 countByEnumeratingWithState:__b objects:v227 count:16];
          if (!v157)
          {
            break;
          }
        }
      }
    }

    _objc_release(v158);
    v209 = [serverProvidedData objectForKeyedSubscript:@"mu"];
    if (v209)
    {
      bOOLValue3 = [v209 BOOLValue];
      selfCopy->_isManagedAppleID = bOOLValue3;
    }

    v208 = [serverProvidedData objectForKeyedSubscript:@"demoAccount"];
    if (v208)
    {
      bOOLValue4 = [v208 BOOLValue];
      selfCopy->_isDemoAccount = bOOLValue4;
    }

    v16 = [status objectForKeyedSubscript:@"fu"];
    federatedAuthURL = selfCopy->_federatedAuthURL;
    selfCopy->_federatedAuthURL = v16;
    _objc_release(federatedAuthURL);
    v18 = [status objectForKeyedSubscript:?];
    federatedAuthSamlRequest = selfCopy->_federatedAuthSamlRequest;
    selfCopy->_federatedAuthSamlRequest = v18;
    _objc_release(federatedAuthSamlRequest);
    v152 = selfCopy;
    v153 = [status objectForKeyedSubscript:@"params"];
    v20 = [(AKAuthenticationServerResponse *)v152 _federatedPayloadFromInfo:?];
    federatedAuthRequestPayload = selfCopy->_federatedAuthRequestPayload;
    selfCopy->_federatedAuthRequestPayload = v20;
    _objc_release(federatedAuthRequestPayload);
    _objc_release(v153);
    v22 = [status objectForKeyedSubscript:@"dm"];
    federatedAuthURLWhiteList = selfCopy->_federatedAuthURLWhiteList;
    selfCopy->_federatedAuthURLWhiteList = v22;
    _objc_release(federatedAuthURLWhiteList);
    v207 = [serverProvidedData objectForKeyedSubscript:@"al"];
    if (v207)
    {
      bOOLValue5 = [v207 BOOLValue];
      selfCopy->_isAuditLogin = bOOLValue5;
    }

    v25 = [serverProvidedData objectForKeyedSubscript:@"imu"];
    imageURLString = selfCopy->_imageURLString;
    selfCopy->_imageURLString = v25;
    _objc_release(imageURLString);
    v206 = [status objectForKeyedSubscript:@"hsc"];
    if (v206)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v206 integerValue] == 409)
        {
          selfCopy->_isSecondaryActionRequired = 1;
        }

        else if ([v206 integerValue] == 433)
        {
          selfCopy->_isAnisetteReprovisioningRequired = 1;
        }

        else if ([v206 integerValue] == 434)
        {
          selfCopy->_isAnisetteResyncRequired = 1;
        }

        else if ([v206 integerValue] == 435)
        {
          selfCopy->_isURLSwitchingRequired = 1;
          v27 = [status objectForKeyedSubscript:@"X-Apple-I-Data"];
          urlSwitchingData = selfCopy->_urlSwitchingData;
          selfCopy->_urlSwitchingData = v27;
          _objc_release(urlSwitchingData);
        }

        else if ([v206 integerValue] == 436)
        {
          selfCopy->_isRetryRequired = 1;
        }

        else if ([v206 integerValue] == 443)
        {
          v203 = [status objectForKeyedSubscript:@"st"];
          if ([v203 length])
          {
            v151 = +[AKBAATimeProvider sharedInstance];
            [(AKBAATimeProvider *)v151 addServerAdjustment:v203];
            _objc_release(v151);
            selfCopy->_isRetryRequired = 1;
          }

          objc_storeStrong(&v203, 0);
        }

        else
        {
          v149 = +[AKFeatureManager sharedManager];
          v150 = 0;
          if ([v149 isServerBackoffEnabled])
          {
            v150 = [v206 integerValue] == 503;
          }

          _objc_release(v149);
          if (v150)
          {
            selfCopy->_isServerBackoff = 1;
          }
        }
      }

      else
      {
        v205 = _AKLogSystem();
        v204 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v226, @"hsc");
          _os_log_error_impl(&_mh_execute_header, v205, v204, "Invalid value type for key: %@", v226, 0xCu);
        }

        objc_storeStrong(&v205, 0);
      }
    }

    v202 = [status objectForKeyedSubscript:@"au"];
    if (v202)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_secondaryActionURLKey, v202);
      }

      else
      {
        v201 = _AKLogSystem();
        v200 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v225, @"au");
          _os_log_error_impl(&_mh_execute_header, v201, v200, "Invalid value type for key: %@", v225, 0xCu);
        }

        objc_storeStrong(&v201, 0);
      }
    }

    v199 = [status objectForKeyedSubscript:@"autype"];
    if ([v199 intValue])
    {
      isSecondaryActionRequired = 0;
      if ([v199 intValue] == 1)
      {
        isSecondaryActionRequired = selfCopy->_isSecondaryActionRequired;
      }

      selfCopy->_secondaryActionURLGSEndpoint = isSecondaryActionRequired;
    }

    v198 = [serverProvidedData objectForKeyedSubscript:@"fidoAuth"];
    if ([v198 BOOLValue])
    {
      bOOLValue6 = [v198 BOOLValue];
      selfCopy->_fidoAuthRequired = bOOLValue6;
    }

    v197 = [status objectForKeyedSubscript:@"naurl"];
    if (v197)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_nativeActionURLKey, v197);
      }

      else
      {
        v196 = _AKLogSystem();
        v195 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v224, @"naurl");
          _os_log_error_impl(&_mh_execute_header, v196, v195, "Invalid value type for key: %@", v224, 0xCu);
        }

        objc_storeStrong(&v196, 0);
      }
    }

    v194 = [serverProvidedData objectForKeyedSubscript:@"sm"];
    if (v194)
    {
      objc_storeStrong(&selfCopy->_secondaryActionMessage, v194);
    }

    v30 = [status objectForKeyedSubscript:@"em"];
    errorMessage = selfCopy->_errorMessage;
    selfCopy->_errorMessage = v30;
    _objc_release(errorMessage);
    v32 = [status objectForKeyedSubscript:@"tt"];
    errorMessageTitle = selfCopy->_errorMessageTitle;
    selfCopy->_errorMessageTitle = v32;
    _objc_release(errorMessageTitle);
    v146 = [status objectForKeyedSubscript:AKSubErrorStatusCodeKey];
    v147 = objc_opt_respondsToSelector();
    _objc_release(v146);
    if (v147)
    {
      v145 = [status objectForKeyedSubscript:AKSubErrorStatusCodeKey];
      integerValue = [v145 integerValue];
      selfCopy->_subErrorCode = integerValue;
      _objc_release(v145);
    }

    v143 = [status objectForKeyedSubscript:@"ec"];
    v144 = objc_opt_respondsToSelector();
    _objc_release(v143);
    if (v144)
    {
      v142 = [status objectForKeyedSubscript:@"ec"];
      integerValue2 = [v142 integerValue];
      selfCopy->_errorCode = integerValue2;
      _objc_release(v142);
    }

    v193 = [status objectForKeyedSubscript:@"X-Apple-I-MD-DATA"];
    if (v193)
    {
      v36 = [[NSData alloc] initWithBase64EncodedString:v193 options:0];
      anisetteResyncData = selfCopy->_anisetteResyncData;
      selfCopy->_anisetteResyncData = v36;
      _objc_release(anisetteResyncData);
    }

    v192 = [status objectForKeyedSubscript:@"X-Apple-I-MD-Cmd-Target"];
    if ([v192 isEqual:@"paired"])
    {
      selfCopy->_shouldProxyAnisetteAction = 1;
    }

    v140 = objc_opt_class();
    v141 = [serverProvidedData objectForKeyedSubscript:@"continuationKey"];
    v191 = sub_10002AEB8(v140, v141);
    _objc_release(v141);
    if (v191)
    {
      v38 = [AKToken tokenWithDictionary:v191];
      continuationToken = selfCopy->_continuationToken;
      selfCopy->_continuationToken = v38;
      _objc_release(continuationToken);
    }

    else
    {
      v139 = [serverProvidedData objectForKeyedSubscript:@"ck"];
      v40 = [AKToken tokenWithValue:"tokenWithValue:lifetime:" lifetime:?];
      v41 = selfCopy->_continuationToken;
      selfCopy->_continuationToken = v40;
      _objc_release(v41);
      _objc_release(v139);
    }

    stringValue = [(AKToken *)selfCopy->_continuationToken stringValue];
    _objc_release(stringValue);
    if (stringValue)
    {
      v190 = _AKLogSystem();
      v189 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
      {
        v136 = v190;
        v137 = v189;
        sub_10001CEEC(v188);
        _os_log_impl(&_mh_execute_header, v136, v137, "Successfully obtained new CK from SRP", v188, 2u);
      }

      objc_storeStrong(&v190, 0);
    }

    v134 = objc_opt_class();
    v135 = [serverProvidedData objectForKeyedSubscript:@"passwordResetKey"];
    v187 = sub_10002AEB8(v134, v135);
    _objc_release(v135);
    if (v187)
    {
      v42 = [AKToken tokenWithDictionary:v187];
      passwordResetToken = selfCopy->_passwordResetToken;
      selfCopy->_passwordResetToken = v42;
      _objc_release(passwordResetToken);
    }

    else
    {
      v133 = [serverProvidedData objectForKeyedSubscript:@"prk"];
      v44 = [AKToken tokenWithValue:"tokenWithValue:lifetime:" lifetime:?];
      v45 = selfCopy->_passwordResetToken;
      selfCopy->_passwordResetToken = v44;
      _objc_release(v45);
      _objc_release(v133);
    }

    stringValue2 = [(AKToken *)selfCopy->_passwordResetToken stringValue];
    _objc_release(stringValue2);
    if (stringValue2)
    {
      v186 = _AKLogSystem();
      v185 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
      {
        v130 = v186;
        v131 = v185;
        sub_10001CEEC(v184);
        _os_log_impl(&_mh_execute_header, v130, v131, "Successfully obtained new PRK from SRP", v184, 2u);
      }

      objc_storeStrong(&v186, 0);
    }

    v183 = [serverProvidedData objectForKeyedSubscript:@"appleIdSignInEnabled"];
    if ([v183 BOOLValue])
    {
      bOOLValue7 = [v183 BOOLValue];
      selfCopy->_authorizationUsed = bOOLValue7;
    }

    v47 = [serverProvidedData objectForKeyedSubscript:@"privateAttestationEnabled"];
    privateAttestationEnabled = selfCopy->_privateAttestationEnabled;
    selfCopy->_privateAttestationEnabled = v47;
    _objc_release(privateAttestationEnabled);
    v182 = [serverProvidedData objectForKeyedSubscript:@"phoneAsAppleId"];
    if ([v182 BOOLValue])
    {
      bOOLValue8 = [v182 BOOLValue];
      selfCopy->_phoneAsAppleID = bOOLValue8;
    }

    v181 = [status objectForKeyedSubscript:@"rsh"];
    if ([v181 BOOLValue])
    {
      bOOLValue9 = [v181 BOOLValue];
      selfCopy->_requireSigningHeaders = bOOLValue9;
    }

    v111 = objc_opt_class();
    v112 = [serverProvidedData objectForKeyedSubscript:AKWebAccessEnabledKey];
    v51 = sub_10002AEB8(v111, v112);
    webAccessEnabled = selfCopy->_webAccessEnabled;
    selfCopy->_webAccessEnabled = v51;
    _objc_release(webAccessEnabled);
    _objc_release(v112);
    v113 = objc_opt_class();
    v114 = [serverProvidedData objectForKeyedSubscript:AKServerExperimentalFeaturesKey];
    v53 = sub_10002AEB8(v113, v114);
    serverExperimentalFeatures = selfCopy->_serverExperimentalFeatures;
    selfCopy->_serverExperimentalFeatures = v53;
    _objc_release(serverExperimentalFeatures);
    _objc_release(v114);
    v115 = objc_opt_class();
    v116 = [serverProvidedData objectForKeyedSubscript:AKPasskeyEligibleKey];
    v55 = sub_10002AEB8(v115, v116);
    passkeyEligible = selfCopy->_passkeyEligible;
    selfCopy->_passkeyEligible = v55;
    _objc_release(passkeyEligible);
    _objc_release(v116);
    v117 = objc_opt_class();
    v118 = [serverProvidedData objectForKeyedSubscript:AKPasskeyPresentKey];
    v57 = sub_10002AEB8(v117, v118);
    passkeyPresent = selfCopy->_passkeyPresent;
    selfCopy->_passkeyPresent = v57;
    _objc_release(passkeyPresent);
    _objc_release(v118);
    v119 = objc_opt_class();
    v120 = [serverProvidedData objectForKeyedSubscript:AKProximityEligibleKey];
    v180 = sub_10002AEB8(v119, v120);
    _objc_release(v120);
    bOOLValue10 = [v180 BOOLValue];
    selfCopy->_isProximityEligible = bOOLValue10;
    v121 = objc_opt_class();
    v122 = [serverProvidedData objectForKeyedSubscript:AKPasscodeAuthEnabledKey];
    v60 = sub_10002AEB8(v121, v122);
    passcodeAuthEnabled = selfCopy->_passcodeAuthEnabled;
    selfCopy->_passcodeAuthEnabled = v60;
    _objc_release(passcodeAuthEnabled);
    _objc_release(v122);
    v123 = objc_opt_class();
    v124 = [serverProvidedData objectForKeyedSubscript:AKPasscodeAuthKey];
    v62 = sub_10002AEB8(v123, v124);
    passcodeAuth = selfCopy->_passcodeAuth;
    selfCopy->_passcodeAuth = v62;
    _objc_release(passcodeAuth);
    _objc_release(v124);
    v125 = objc_opt_class();
    v126 = [serverProvidedData objectForKeyedSubscript:AKAskToBuyKey];
    v64 = sub_10002AEB8(v125, v126);
    askToBuy = selfCopy->_askToBuy;
    selfCopy->_askToBuy = v64;
    _objc_release(askToBuy);
    _objc_release(v126);
    v127 = objc_opt_class();
    v128 = [serverProvidedData objectForKeyedSubscript:AKSOSNeededKey];
    v66 = sub_10002AEB8(v127, v128);
    SOSNeeded = selfCopy->_SOSNeeded;
    selfCopy->_SOSNeeded = v66;
    _objc_release(SOSNeeded);
    _objc_release(v128);
    v129 = [serverProvidedData objectForKeyedSubscript:AKSOSActiveDeviceKey];
    v178 = 0;
    v176 = 0;
    v174 = 0;
    v172 = 0;
    if (v129)
    {
      v110 = objc_opt_class();
      v179 = [serverProvidedData objectForKeyedSubscript:AKSOSActiveDeviceKey];
      v178 = 1;
      v177 = sub_10002AEB8(v110, v179);
      v176 = 1;
      objc_storeStrong(&selfCopy->_hasSOSActiveDevice, v177);
    }

    else
    {
      v109 = objc_opt_class();
      v175 = [serverProvidedData objectForKeyedSubscript:AKSOSActiveDeviceLegacyKey];
      v174 = 1;
      v173 = sub_10002AEB8(v109, v175);
      v172 = 1;
      objc_storeStrong(&selfCopy->_hasSOSActiveDevice, v173);
    }

    if (v172)
    {
      _objc_release(v173);
    }

    if (v174)
    {
      _objc_release(v175);
    }

    if (v176)
    {
      _objc_release(v177);
    }

    if (v178)
    {
      _objc_release(v179);
    }

    _objc_release(v129);
    v68 = [status objectForKeyedSubscript:AKConfigDataVersion];
    configDataVersion = selfCopy->_configDataVersion;
    selfCopy->_configDataVersion = v68;
    _objc_release(configDataVersion);
    v93 = objc_opt_class();
    v94 = [serverProvidedData objectForKeyedSubscript:AKUserBirthYearKey];
    v70 = sub_10002AEB8(v93, v94);
    birthYear = selfCopy->_birthYear;
    selfCopy->_birthYear = v70;
    _objc_release(birthYear);
    _objc_release(v94);
    v95 = objc_opt_class();
    v96 = [serverProvidedData objectForKeyedSubscript:AKUserBirthDayKey];
    v72 = sub_10002AEB8(v95, v96);
    birthDay = selfCopy->_birthDay;
    selfCopy->_birthDay = v72;
    _objc_release(birthDay);
    _objc_release(v96);
    v97 = objc_opt_class();
    v98 = [serverProvidedData objectForKeyedSubscript:AKUserBirthMonthKey];
    v74 = sub_10002AEB8(v97, v98);
    birthMonth = selfCopy->_birthMonth;
    selfCopy->_birthMonth = v74;
    _objc_release(birthMonth);
    _objc_release(v98);
    v99 = objc_opt_class();
    v100 = [serverProvidedData objectForKeyedSubscript:AKHasModernRKKey];
    v76 = sub_10002AEB8(v99, v100);
    hasModernRecoveryKey = selfCopy->_hasModernRecoveryKey;
    selfCopy->_hasModernRecoveryKey = v76;
    _objc_release(hasModernRecoveryKey);
    _objc_release(v100);
    v101 = objc_opt_class();
    v102 = [serverProvidedData objectForKeyedSubscript:AK3PRegulatoryOverrideKey];
    v78 = sub_10002AEB8(v101, v102);
    thirdPartyRegulatoryOverride = selfCopy->_thirdPartyRegulatoryOverride;
    selfCopy->_thirdPartyRegulatoryOverride = v78;
    _objc_release(thirdPartyRegulatoryOverride);
    _objc_release(v102);
    v103 = objc_opt_class();
    v104 = [serverProvidedData objectForKeyedSubscript:AKADPCohortKey];
    v80 = sub_10002AEB8(v103, v104);
    adpCohort = selfCopy->_adpCohort;
    selfCopy->_adpCohort = v80;
    _objc_release(adpCohort);
    _objc_release(v104);
    v105 = objc_opt_class();
    v106 = [serverProvidedData objectForKeyedSubscript:AKIdmsWalrusStatusKey];
    v82 = sub_10002AEB8(v105, v106);
    idmsWalrusStatus = selfCopy->_idmsWalrusStatus;
    selfCopy->_idmsWalrusStatus = v82;
    _objc_release(idmsWalrusStatus);
    _objc_release(v106);
    v107 = +[AKFeatureManager sharedManager];
    isBackgroundiCloudSignInEnabled = [v107 isBackgroundiCloudSignInEnabled];
    _objc_release(v107);
    if (isBackgroundiCloudSignInEnabled)
    {
      v92 = [v214 objectForKeyedSubscript:@"com.apple.gs.icloud.cloudkit.auth"];
      _objc_release(v92);
      if (v92)
      {
        v171 = _AKLogSystem();
        v170 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          v90 = v171;
          v91 = v170;
          sub_10001CEEC(v169);
          _os_log_impl(&_mh_execute_header, v90, v91, "Successfully obtained new Cloudkit GS Token from SRP", v169, 2u);
        }

        objc_storeStrong(&v171, 0);
      }

      v89 = [v214 objectForKeyedSubscript:@"com.apple.gs.icloud.escrow.auth"];
      _objc_release(v89);
      if (v89)
      {
        v168 = _AKLogSystem();
        v167 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          v87 = v168;
          v88 = v167;
          sub_10001CEEC(v166);
          _os_log_impl(&_mh_execute_header, v87, v88, "Successfully obtained new Escrow GS Token from SRP", v166, 2u);
        }

        objc_storeStrong(&v168, 0);
      }

      _shouldBackgroundiCloudSignIn = [(AKAuthenticationServerResponse *)selfCopy _shouldBackgroundiCloudSignIn];
      selfCopy->_canBackgroundiCloudSignIn = _shouldBackgroundiCloudSignIn;
    }

    v165 = objc_alloc_init(AKServerBackoffHelper);
    [v165 configureFromHeaderFields:status];
    objc_storeStrong(&v165, 0);
    objc_storeStrong(&v180, 0);
    objc_storeStrong(&v181, 0);
    objc_storeStrong(&v182, 0);
    objc_storeStrong(&v183, 0);
    objc_storeStrong(&v187, 0);
    objc_storeStrong(&v191, 0);
    objc_storeStrong(&v192, 0);
    objc_storeStrong(&v193, 0);
    objc_storeStrong(&v194, 0);
    objc_storeStrong(&v197, 0);
    objc_storeStrong(&v198, 0);
    objc_storeStrong(&v199, 0);
    objc_storeStrong(&v202, 0);
    objc_storeStrong(&v206, 0);
    objc_storeStrong(&v207, 0);
    objc_storeStrong(&v208, 0);
    objc_storeStrong(&v209, 0);
    objc_storeStrong(&v214, 0);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&status, 0);
    objc_storeStrong(&serverProvidedData, 0);
  }

  v86 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v86;
}

- (id)_federatedPayloadFromInfo:(id)info
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  aaf_toUrlQueryString = [location[0] aaf_toUrlQueryString];
  v3 = [aaf_toUrlQueryString stringByReplacingOccurrencesOfString:@"+" withString:@"%2B"];
  v4 = aaf_toUrlQueryString;
  aaf_toUrlQueryString = v3;
  _objc_release(v4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v10, aaf_toUrlQueryString);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Encoded payload for federated auth: %@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [aaf_toUrlQueryString dataUsingEncoding:4];
  objc_storeStrong(&aaf_toUrlQueryString, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (AKAuthenticationServerResponse)initWithServerResponse:(id)response forAppleID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v12 = 0;
  objc_storeStrong(&v12, d);
  v4 = selfCopy;
  selfCopy = 0;
  v11.receiver = v4;
  v11.super_class = AKAuthenticationServerResponse;
  v10 = [(AKAuthenticationServerResponse *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    serviceTokens = selfCopy->_serviceTokens;
    selfCopy->_serviceTokens = v5;
    _objc_release(serviceTokens);
    objc_storeStrong(&selfCopy->_appleID, v12);
    [(AKAuthenticationServerResponse *)selfCopy updateWithSecondaryAuthenticationResponse:location[0]];
  }

  v8 = _objc_retain(selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (AKAuthenticationServerResponse)initWithServerResponse:(id)response responseBody:(id)body
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v12 = 0;
  objc_storeStrong(&v12, body);
  v4 = selfCopy;
  selfCopy = 0;
  v11.receiver = v4;
  v11.super_class = AKAuthenticationServerResponse;
  v10 = [(AKAuthenticationServerResponse *)&v11 init];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    serviceTokens = selfCopy->_serviceTokens;
    selfCopy->_serviceTokens = v5;
    _objc_release(serviceTokens);
    [(AKAuthenticationServerResponse *)selfCopy _updateAccountInformationWithResultsDictionary:v12];
    [(AKAuthenticationServerResponse *)selfCopy updateWithSecondaryAuthenticationResponse:location[0]];
  }

  v8 = _objc_retain(selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)_harvestCommonFieldsFromResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  allHeaderFields = [location[0] allHeaderFields];
  v29 = [allHeaderFields objectForKeyedSubscript:AKAccountNameHeaderKey];
  if (v29)
  {
    objc_storeStrong(&selfCopy->_appleID, v29);
  }

  if (!selfCopy->_altDSID)
  {
    v3 = [allHeaderFields objectForKeyedSubscript:AKAltDSIDHeaderKey];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v3;
    _objc_release(altDSID);
  }

  if (!selfCopy->_dsid)
  {
    v28 = [allHeaderFields objectForKeyedSubscript:AKDSIDHeaderKey];
    [(AKAuthenticationServerResponse *)selfCopy _updateDSIDWithRawValue:v28];
    objc_storeStrong(&v28, 0);
  }

  if (!selfCopy->_altDSID)
  {
    v27 = _AKLogSystem();
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      sub_10001CEEC(v25);
      _os_log_error_impl(&_mh_execute_header, log, type, "No altDSID for auth server response. Could be bad.", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
  }

  if (!selfCopy->_dsid)
  {
    v24 = _AKLogSystem();
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v14 = v24;
      v15 = v23;
      sub_10001CEEC(v22);
      _os_log_error_impl(&_mh_execute_header, v14, v15, "No DSID for auth server response. Could be bad.", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
  }

  if (selfCopy->_appleID && selfCopy->_altDSID)
  {
    v5 = [AKMasterToken alloc];
    v6 = [v5 initWithAppleID:selfCopy->_appleID altDSID:selfCopy->_altDSID];
    masterToken = selfCopy->_masterToken;
    selfCopy->_masterToken = v6;
    _objc_release(masterToken);
  }

  ak_acceptedTermsInfo = [location[0] ak_acceptedTermsInfo];
  acceptedTermsInfo = selfCopy->_acceptedTermsInfo;
  selfCopy->_acceptedTermsInfo = ak_acceptedTermsInfo;
  _objc_release(acceptedTermsInfo);
  v10 = selfCopy->_acceptedTermsInfo;
  v20 = 0;
  v13 = 0;
  if (v10)
  {
    v21 = [(NSDictionary *)selfCopy->_acceptedTermsInfo objectForKeyedSubscript:@"alternateDsid"];
    v20 = 1;
    v13 = v21 == 0;
  }

  if (v20)
  {
    _objc_release(v21);
  }

  if (v13)
  {
    v19 = [(NSDictionary *)selfCopy->_acceptedTermsInfo mutableCopy];
    [v19 setObject:selfCopy->_altDSID forKeyedSubscript:@"alternateDsid"];
    v11 = [v19 copy];
    v12 = selfCopy->_acceptedTermsInfo;
    selfCopy->_acceptedTermsInfo = v11;
    _objc_release(v12);
    objc_storeStrong(&v19, 0);
  }

  if (!selfCopy->_adpCohort)
  {
    v18 = [allHeaderFields objectForKeyedSubscript:AKADPCohortHeaderKey];
    [(AKAuthenticationServerResponse *)selfCopy _updateADPCohortWithRawValue:v18];
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&allHeaderFields, 0);
  objc_storeStrong(location, 0);
}

- (void)_harvestCommonFieldsFromBody:(id)body
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, body);
  if (!selfCopy->_appleID)
  {
    v55 = [location[0] objectForKeyedSubscript:@"acname"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_appleID, v55);
    }

    else
    {
      v54 = _AKLogSystem();
      v53 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v63, v55);
        _os_log_error_impl(&_mh_execute_header, v54, v53, "Invalid/missing value for key acname: %@", v63, 0xCu);
      }

      objc_storeStrong(&v54, 0);
    }

    objc_storeStrong(&v55, 0);
  }

  if (!selfCopy->_lastName)
  {
    v3 = [location[0] objectForKeyedSubscript:@"ln"];
    lastName = selfCopy->_lastName;
    selfCopy->_lastName = v3;
    _objc_release(lastName);
  }

  if (!selfCopy->_firstName)
  {
    v5 = [location[0] objectForKeyedSubscript:@"fn"];
    firstName = selfCopy->_firstName;
    selfCopy->_firstName = v5;
    _objc_release(firstName);
  }

  if (!selfCopy->_dsid)
  {
    v7 = [location[0] objectForKeyedSubscript:@"DsPrsId"];
    dsid = selfCopy->_dsid;
    selfCopy->_dsid = v7;
    _objc_release(dsid);
  }

  if (!selfCopy->_appleIDSecurityLevel)
  {
    v52 = [location[0] objectForKeyedSubscript:AKUserInfoSecurityLevelKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_appleIDSecurityLevel = [v52 unsignedIntegerValue];
    }

    else
    {
      v51 = _AKLogSystem();
      v50 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v62, v52);
        _os_log_error_impl(&_mh_execute_header, v51, v50, "Invalid value for key ut: %@", v62, 0xCu);
      }

      objc_storeStrong(&v51, 0);
    }

    objc_storeStrong(&v52, 0);
  }

  if (!selfCopy->_authMode)
  {
    v49 = [location[0] objectForKeyedSubscript:AKAuthenticationModeKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_authMode = [v49 unsignedIntegerValue];
    }

    else
    {
      v48 = _AKLogSystem();
      v47 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v61, v49);
        _os_log_error_impl(&_mh_execute_header, v48, v47, "Invalid value for key authType: %@", v61, 0xCu);
      }

      objc_storeStrong(&v48, 0);
    }

    objc_storeStrong(&v49, 0);
  }

  v35 = objc_opt_class();
  v37 = [location[0] objectForKeyedSubscript:AKMDMInfoRequiredKey];
  v36 = sub_10002AEB8(v35, v37);
  selfCopy->_isMdmInfoRequired = [v36 BOOLValue];
  _objc_release(v36);
  _objc_release(v37);
  if (!selfCopy->_altDSID)
  {
    v9 = [location[0] objectForKeyedSubscript:@"adsid"];
    altDSID = selfCopy->_altDSID;
    selfCopy->_altDSID = v9;
    _objc_release(altDSID);
  }

  v46 = [location[0] objectForKeyedSubscript:@"ageOfMajority"];
  if (v46)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_ageOfMajority, v46);
    }

    else
    {
      v45 = _AKLogSystem();
      v44 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v60, v46);
        _os_log_error_impl(&_mh_execute_header, v45, v44, "Invalid value for key Age of Majority: %@", v60, 0xCu);
      }

      objc_storeStrong(&v45, 0);
    }
  }

  v24 = objc_opt_class();
  v25 = [location[0] objectForKeyedSubscript:AKUserCanAttestAgeKey];
  v11 = sub_10002AEB8(v24, v25);
  canAttestAge = selfCopy->_canAttestAge;
  selfCopy->_canAttestAge = v11;
  _objc_release(canAttestAge);
  _objc_release(v25);
  v26 = [location[0] objectForKeyedSubscript:@"underAge"];
  selfCopy->_isUnderAgeOfMajority = [v26 BOOLValue];
  _objc_release(v26);
  v27 = objc_opt_class();
  v29 = [location[0] objectForKeyedSubscript:AKUserInfoIsSiwaEnabledKey];
  v28 = sub_10002AEB8(v27, v29);
  selfCopy->_isSiwaForChildEnabled = [v28 BOOLValue];
  _objc_release(v28);
  _objc_release(v29);
  v30 = [location[0] objectForKeyedSubscript:@"isSenior"];
  selfCopy->_isSenior = [v30 BOOLValue];
  _objc_release(v30);
  v31 = objc_opt_class();
  v32 = [location[0] objectForKeyedSubscript:@"isEligibleForSafetyScreen"];
  v13 = sub_10002AEB8(v31, v32);
  isEligibleForSafetyScreen = selfCopy->_isEligibleForSafetyScreen;
  selfCopy->_isEligibleForSafetyScreen = v13;
  _objc_release(isEligibleForSafetyScreen);
  _objc_release(v32);
  v33 = objc_opt_class();
  v34 = [location[0] objectForKeyedSubscript:@"userAgeRange"];
  v43 = sub_10002AEB8(v33, v34);
  _objc_release(v34);
  if (v43)
  {
    selfCopy->_userAgeRange = [v43 unsignedIntegerValue];
  }

  else
  {
    selfCopy->_userAgeRange = 0;
  }

  v23 = [location[0] objectForKeyedSubscript:@"firstPartyApp"];
  selfCopy->_isFirstPartyApp = [v23 BOOLValue];
  _objc_release(v23);
  v15 = [location[0] objectForKeyedSubscript:@"privateEmail"];
  privateEmail = selfCopy->_privateEmail;
  selfCopy->_privateEmail = v15;
  _objc_release(privateEmail);
  v17 = [location[0] objectForKeyedSubscript:@"primaryEmail"];
  primaryEmail = selfCopy->_primaryEmail;
  selfCopy->_primaryEmail = v17;
  _objc_release(primaryEmail);
  v42 = [location[0] objectForKeyedSubscript:@"primaryEmailVetted"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy->_primaryEmailVetted = [v42 BOOLValue];
  }

  else
  {
    oslog = _AKLogSystem();
    v40 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v59, v42);
      _os_log_error_impl(&_mh_execute_header, oslog, v40, "Invalid value for key primary email vetted: %@", v59, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v39 = [location[0] objectForKeyedSubscript:AKProximityEligibleKey];
  if (v39)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_isProximityEligible = [v39 BOOLValue];
    }

    else
    {
      v38 = _AKLogSystem();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v58, v39);
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Invalid value for key is proximity auth eligible: %@", v58, 0xCu);
      }

      objc_storeStrong(&v38, 0);
    }
  }

  v21 = objc_opt_class();
  v22 = [location[0] objectForKeyedSubscript:@"groupId"];
  v19 = sub_10002AEB8(v21, v22);
  signInWithAppleSharedAccountGroupID = selfCopy->_signInWithAppleSharedAccountGroupID;
  selfCopy->_signInWithAppleSharedAccountGroupID = v19;
  _objc_release(signInWithAppleSharedAccountGroupID);
  _objc_release(v22);
  [(AKAuthenticationServerResponse *)selfCopy _harvestManagedAppleIDInfoFromDictionary:location[0]];
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

- (void)_harvestManagedAppleIDInfoFromDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v36 = [location[0] objectForKeyedSubscript:@"orgType"];
  if (v36)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v36 isEqual:@"EDU"])
      {
        selfCopy->_managedOrganizationType = 1;
      }

      else if ([v36 isEqual:@"ENT"])
      {
        selfCopy->_managedOrganizationType = 2;
      }

      else
      {
        v32 = _AKLogSystem();
        v31 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1000194D4(v42, v36);
          _os_log_error_impl(&_mh_execute_header, v32, v31, "Invalid value for key orgType: %@", v42, 0xCu);
        }

        objc_storeStrong(&v32, 0);
        selfCopy->_managedOrganizationType = 0;
      }
    }

    else
    {
      v35 = _AKLogSystem();
      v34 = 16;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        log = v35;
        type = v34;
        v3 = objc_opt_class();
        v18 = NSStringFromClass(v3);
        v33 = _objc_retain(v18);
        sub_1000194D4(v43, v33);
        _os_log_error_impl(&_mh_execute_header, log, type, "Invalid type for key orgType: %@", v43, 0xCu);
        _objc_release(v18);
        objc_storeStrong(&v33, 0);
      }

      objc_storeStrong(&v35, 0);
      selfCopy->_managedOrganizationType = 0;
    }
  }

  v30 = [location[0] objectForKeyedSubscript:@"orgName"];
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_managedOrganizationName, v30);
    }

    else
    {
      v29 = _AKLogSystem();
      v28 = 16;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v13 = v29;
        v14 = v28;
        v4 = objc_opt_class();
        v15 = NSStringFromClass(v4);
        v27 = _objc_retain(v15);
        sub_1000194D4(v41, v27);
        _os_log_error_impl(&_mh_execute_header, v13, v14, "Invalid type for key orgName: %@", v41, 0xCu);
        _objc_release(v15);
        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&v29, 0);
    }
  }

  v26 = [location[0] objectForKeyedSubscript:@"notificationEmailAvailable"];
  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_isNotificationEmailAvailable, v26);
    }

    else
    {
      v25 = _AKLogSystem();
      v24 = 16;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v10 = v25;
        v11 = v24;
        v5 = objc_opt_class();
        v12 = NSStringFromClass(v5);
        v23 = _objc_retain(v12);
        sub_1000194D4(v40, v23);
        _os_log_error_impl(&_mh_execute_header, v10, v11, "Invalid type for key isNotificationEmailAvailable: %@", v40, 0xCu);
        _objc_release(v12);
        objc_storeStrong(&v23, 0);
      }

      objc_storeStrong(&v25, 0);
    }
  }

  obj = [location[0] objectForKeyedSubscript:@"notificationEmail"];
  if (obj)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_notificationEmail, obj);
    }

    else
    {
      oslog = _AKLogSystem();
      v20 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v7 = oslog;
        v8 = v20;
        v6 = objc_opt_class();
        v9 = NSStringFromClass(v6);
        v19 = _objc_retain(v9);
        sub_1000194D4(v39, v19);
        _os_log_error_impl(&_mh_execute_header, v7, v8, "Invalid type for key notificationEmail: %@", v39, 0xCu);
        _objc_release(v9);
        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
}

- (void)_setPasswordEquivalentToken:(id)token
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  [(NSMutableDictionary *)selfCopy->_serviceTokens setObject:location[0] forKey:@"com.apple.gs.idms.pet"];
  objc_storeStrong(location, 0);
}

- (void)_setHeartbeatToken:(id)token
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  [(NSMutableDictionary *)selfCopy->_serviceTokens setObject:location[0] forKey:@"com.apple.gs.idms.hb"];
  objc_storeStrong(location, 0);
}

- (void)_setPasswordlessToken:(id)token
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  [(NSMutableDictionary *)selfCopy->_serviceTokens setObject:location[0] forKey:@"com.apple.gs.idms.plt"];
  objc_storeStrong(location, 0);
}

- (void)_setIdmsDataToken:(id)token
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, token);
  [(NSMutableDictionary *)selfCopy->_serviceTokens setObject:location[0] forKey:@"com.apple.gs.idmsdata"];
  objc_storeStrong(location, 0);
}

- (void)updateWithSecondaryAuthenticationBody:(id)body
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, body);
  v3 = [location[0] objectForKeyedSubscript:AKIdmsDataKey];
  serverInfo = selfCopy->_serverInfo;
  selfCopy->_serverInfo = v3;
  _objc_release(serverInfo);
  v5 = [location[0] objectForKeyedSubscript:AKTransactionId];
  transactionId = selfCopy->_transactionId;
  selfCopy->_transactionId = v5;
  _objc_release(transactionId);
  [(AKAuthenticationServerResponse *)selfCopy _updateAccountInformationWithResultsDictionary:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateAccountInformationWithResultsDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  [(AKAuthenticationServerResponse *)selfCopy _harvestCommonFieldsFromBody:location[0]];
  v42 = [location[0] objectForKeyedSubscript:@"uireq"];
  if (v42)
  {
    bOOLValue = [v42 BOOLValue];
    selfCopy->_isServerUIRequired = bOOLValue;
  }

  v41 = [location[0] objectForKeyedSubscript:@"fpc"];
  if (v41)
  {
    bOOLValue2 = [v41 BOOLValue];
    selfCopy->_isPasscodeResetRequired = bOOLValue2;
  }

  v40 = [location[0] objectForKeyedSubscript:@"cd"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [AKAuthenticationServerResponse decodedConfigurationInfo:v40];
    configurationInfo = selfCopy->_configurationInfo;
    selfCopy->_configurationInfo = v5;
    _objc_release(configurationInfo);
  }

  v39 = [location[0] objectForKeyedSubscript:AKAdditionalInfoKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&selfCopy->_additionalInfo, v39);
  }

  v38 = [location[0] objectForKeyedSubscript:@"hsa2Phones"];
  v7 = objc_opt_class();
  v8 = sub_10002AEB8(v7, v38);
  trustedPhoneNumbers = selfCopy->_trustedPhoneNumbers;
  selfCopy->_trustedPhoneNumbers = v8;
  _objc_release(trustedPhoneNumbers);
  v37 = [location[0] objectForKeyedSubscript:@"securityKeys"];
  v10 = objc_opt_class();
  v11 = sub_10002AEB8(v10, v37);
  securityKeys = selfCopy->_securityKeys;
  selfCopy->_securityKeys = v11;
  _objc_release(securityKeys);
  v36 = [location[0] objectForKeyedSubscript:@"loginHandles"];
  v13 = objc_opt_class();
  v14 = sub_10002AEB8(v13, v36);
  loginHandles = selfCopy->_loginHandles;
  selfCopy->_loginHandles = v14;
  _objc_release(loginHandles);
  v35 = [location[0] objectForKeyedSubscript:@"canHaveCustodian"];
  if (v35)
  {
    objc_storeStrong(&selfCopy->_canHaveCustodian, v35);
  }

  v34 = [location[0] objectForKeyedSubscript:@"canBeCustodian"];
  if (v34)
  {
    objc_storeStrong(&selfCopy->_canBeCustodian, v34);
  }

  v33 = [location[0] objectForKeyedSubscript:@"custodianEnabled"];
  if (v33)
  {
    objc_storeStrong(&selfCopy->_custodianEnabled, v33);
  }

  obj = [location[0] objectForKeyedSubscript:@"custodianLastUpdateDate"];
  if (obj)
  {
    objc_storeStrong(&selfCopy->_custodianLastModified, obj);
  }

  v31 = [location[0] objectForKeyedSubscript:AKInformationCustodianInfosKey];
  v16 = objc_opt_class();
  v17 = sub_10002AEB8(v16, v31);
  custodianInfos = selfCopy->_custodianInfos;
  selfCopy->_custodianInfos = v17;
  _objc_release(custodianInfos);
  v30 = [location[0] objectForKeyedSubscript:AKInformationBeneficiaryInfoKey];
  v19 = objc_opt_class();
  v20 = sub_10002AEB8(v19, v30);
  beneficiaryInfo = selfCopy->_beneficiaryInfo;
  selfCopy->_beneficiaryInfo = v20;
  _objc_release(beneficiaryInfo);
  v29 = [location[0] objectForKeyedSubscript:@"buuid"];
  v28 = [[NSUUID alloc] initWithUUIDString:v29];
  if (v28)
  {
    objc_storeStrong(&selfCopy->_beneficiaryIdentifier, v29);
  }

  v27 = [location[0] objectForKeyedSubscript:@"canHaveBeneficiary"];
  if (v27)
  {
    objc_storeStrong(&selfCopy->_canHaveBeneficiary, v27);
  }

  v26 = [location[0] objectForKeyedSubscript:@"canBeBeneficiary"];
  if (v26)
  {
    objc_storeStrong(&selfCopy->_canBeBeneficiary, v26);
  }

  v25 = [location[0] objectForKeyedSubscript:@"beneficiaryWrappedKey"];
  if ([v25 length])
  {
    objc_storeStrong(&selfCopy->_beneficiaryWrappedKey, v25);
  }

  v24 = [location[0] objectForKeyedSubscript:@"beneficiaryLastUpdateDate"];
  if (v24)
  {
    objc_storeStrong(&selfCopy->_beneficiaryLastModified, v24);
  }

  v23 = [location[0] objectForKeyedSubscript:@"countryCode"];
  if (v23)
  {
    objc_storeStrong(&selfCopy->_appleIDCountryCode, v23);
  }

  v22 = [location[0] objectForKeyedSubscript:@"appleManagedAccount"];
  if (v22)
  {
    objc_storeStrong(&selfCopy->_hasMDM, v22);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&obj, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)updateWithSecondaryAuthenticationResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v4 = [(AKAuthenticationServerResponse *)selfCopy updateWithSecondaryAuthenticationResponse:location[0] shouldUpdateDSID:0];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)updateWithSecondaryAuthenticationResponse:(id)response shouldUpdateDSID:(BOOL)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  dCopy = d;
  v132 = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v153, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v132, type, "Updating with secondary auth response: %@", v153, 0xCu);
  }

  objc_storeStrong(&v132, 0);
  [(AKAuthenticationServerResponse *)selfCopy _harvestCommonFieldsFromResponse:location[0]];
  v130 = 1;
  allHeaderFields = [location[0] allHeaderFields];
  if (!selfCopy->_masterToken)
  {
    v128 = _AKLogSystem();
    v127 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      v48 = v128;
      v49 = v127;
      sub_10001CEEC(v126);
      _os_log_error_impl(&_mh_execute_header, v48, v49, "Trying to update an auth response without an existing _masterToken. Trouble waiting down the line.", v126, 2u);
    }

    objc_storeStrong(&v128, 0);
  }

  v125 = [(AKMasterToken *)selfCopy->_masterToken updateWithHTTPURLResponse:location[0]];
  if (v125)
  {
    v121 = _AKLogSystem();
    v120 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v121;
      v45 = v120;
      sub_10001CEEC(v119);
      _os_log_impl(&_mh_execute_header, v44, v45, "Successfully obtained a new master token.", v119, 2u);
    }

    objc_storeStrong(&v121, 0);
  }

  else
  {
    v124 = _AKLogSystem();
    v123 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      v46 = v124;
      v47 = v123;
      sub_10001CEEC(v122);
      _os_log_error_impl(&_mh_execute_header, v46, v47, "Unable to update master token", v122, 2u);
    }

    objc_storeStrong(&v124, 0);
    v130 = 0;
  }

  v118 = [allHeaderFields objectForKeyedSubscript:AKPETHeaderKey];
  v117 = [AKToken tokenWithBase64String:v118];
  if (v117)
  {
    v114 = _AKLogSystem();
    v113 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v114;
      v43 = v113;
      sub_10001CEEC(v112);
      _os_log_impl(&_mh_execute_header, v42, v43, "Successfully obtained a new PET.", v112, 2u);
    }

    objc_storeStrong(&v114, 0);
    [(AKAuthenticationServerResponse *)selfCopy _setPasswordEquivalentToken:v117];
  }

  else
  {
    v116 = _AKLogSystem();
    v115 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v152, AKPETHeaderKey);
      _os_log_error_impl(&_mh_execute_header, v116, v115, "Value for %@ is missing/invalid!", v152, 0xCu);
    }

    objc_storeStrong(&v116, 0);
    v130 = 0;
  }

  v111 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-HB-Token"];
  v110 = [AKToken tokenWithBase64String:v111];
  if (v110)
  {
    v107 = _AKLogSystem();
    v106 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v107;
      v41 = v106;
      sub_10001CEEC(v105);
      _os_log_impl(&_mh_execute_header, v40, v41, "Successfully obtained a new HB token.", v105, 2u);
    }

    objc_storeStrong(&v107, 0);
    [(AKAuthenticationServerResponse *)selfCopy _setHeartbeatToken:v110];
  }

  else
  {
    v109 = _AKLogSystem();
    v108 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v151, @"X-Apple-HB-Token");
      _os_log_error_impl(&_mh_execute_header, v109, v108, "Value for %@ is missing/invalid!", v151, 0xCu);
    }

    objc_storeStrong(&v109, 0);
  }

  v104 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-GS-Token"];
  v103 = [v104 componentsSeparatedByString:{@", "}];
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(v103);
  v39 = [obj countByEnumeratingWithState:__b objects:v150 count:16];
  if (v39)
  {
    v35 = *__b[2];
    v36 = 0;
    v37 = v39;
    while (1)
    {
      v34 = v36;
      if (*__b[2] != v35)
      {
        objc_enumerationMutation(obj);
      }

      v102 = *(__b[1] + 8 * v36);
      v100 = [AKToken tokenWithBase64String:v102];
      if (v100)
      {
        v97 = _AKLogSystem();
        v96 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v97;
          name = [v100 name];
          sub_1000194D4(v148, name);
          _os_log_impl(&_mh_execute_header, v30, v96, "Updating token for service ID %@.", v148, 0xCu);
          _objc_release(name);
        }

        objc_storeStrong(&v97, 0);
        v27 = v100;
        serviceTokens = selfCopy->_serviceTokens;
        name2 = [v100 name];
        [(NSMutableDictionary *)serviceTokens setObject:v27 forKeyedSubscript:?];
        _objc_release(name2);
      }

      else
      {
        v99 = _AKLogSystem();
        v98 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v32 = v99;
          v33 = v98;
          sub_1000194D4(v149, v104);
          _os_log_error_impl(&_mh_execute_header, v32, v33, "Invalid format for service token in header %@", v149, 0xCu);
        }

        objc_storeStrong(&v99, 0);
      }

      objc_storeStrong(&v100, 0);
      ++v36;
      if (v34 + 1 >= v37)
      {
        v36 = 0;
        v37 = [obj countByEnumeratingWithState:__b objects:v150 count:16];
        if (!v37)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  v95 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-SL-Token"];
  if (v95)
  {
    v92 = _AKLogSystem();
    v91 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v92;
      v26 = v91;
      sub_10001CEEC(v90);
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully obtained new SLT from secondary auth", v90, 2u);
    }

    objc_storeStrong(&v92, 0);
    v4 = [AKToken tokenWithBase64String:v95];
    shortLivedToken = selfCopy->_shortLivedToken;
    selfCopy->_shortLivedToken = v4;
    _objc_release(shortLivedToken);
  }

  else
  {
    v94 = _AKLogSystem();
    v93 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v147, @"X-Apple-SL-Token");
      _os_log_error_impl(&_mh_execute_header, v94, v93, "Value for %@ is missing/invalid!", v147, 0xCu);
    }

    objc_storeStrong(&v94, 0);
  }

  v89 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-I-CK"];
  if (v89)
  {
    v86 = _AKLogSystem();
    v85 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v86;
      v24 = v85;
      sub_10001CEEC(v84);
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully obtained new CK from secondary auth", v84, 2u);
    }

    objc_storeStrong(&v86, 0);
    v6 = [AKToken idmsTokenWithBase64String:v89];
    continuationToken = selfCopy->_continuationToken;
    selfCopy->_continuationToken = v6;
    _objc_release(continuationToken);
  }

  else
  {
    v88 = _AKLogSystem();
    v87 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v146, @"X-Apple-I-CK");
      _os_log_error_impl(&_mh_execute_header, v88, v87, "Value for %@ is missing/invalid!", v146, 0xCu);
    }

    objc_storeStrong(&v88, 0);
  }

  v83 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-I-PRK"];
  if (v83)
  {
    v80 = _AKLogSystem();
    v79 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v80;
      v22 = v79;
      sub_10001CEEC(v78);
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully obtained new PRK from secondary auth.", v78, 2u);
    }

    objc_storeStrong(&v80, 0);
    v8 = [AKToken idmsTokenWithBase64String:v83];
    passwordResetToken = selfCopy->_passwordResetToken;
    selfCopy->_passwordResetToken = v8;
    _objc_release(passwordResetToken);
  }

  else
  {
    v82 = _AKLogSystem();
    v81 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v145, @"X-Apple-I-PRK");
      _os_log_error_impl(&_mh_execute_header, v82, v81, "Value for %@ is missing/invalid!", v145, 0xCu);
    }

    objc_storeStrong(&v82, 0);
  }

  v77 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-AK-Auth-Type"];
  if ([v77 isEqual:AKSecurityHeaderTypeHSA2])
  {
    selfCopy->_appleIDSecurityLevel = 4;
  }

  else if ([v77 isEqual:AKSecurityHeaderTypeHSA1])
  {
    selfCopy->_appleIDSecurityLevel = 3;
  }

  else if ([v77 isEqual:AKSecurityHeaderTypeSA])
  {
    selfCopy->_appleIDSecurityLevel = 2;
  }

  else if ([v77 isEqual:AKSecurityHeaderTypeManaged])
  {
    selfCopy->_appleIDSecurityLevel = 5;
  }

  statusCode = [location[0] statusCode];
  selfCopy->_isSecondaryActionRequired = statusCode == 409;
  v75 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-I-AURL"];
  if (v75)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_secondaryActionURLKey, v75);
    }

    else
    {
      v74 = _AKLogSystem();
      v73 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v144, @"X-Apple-I-AURL");
        _os_log_error_impl(&_mh_execute_header, v74, v73, "Invalid value type for key: %@", v144, 0xCu);
      }

      objc_storeStrong(&v74, 0);
    }
  }

  v72 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-I-AURL-Type"];
  if ([v72 intValue])
  {
    isSecondaryActionRequired = 0;
    if ([v72 intValue] == 1)
    {
      isSecondaryActionRequired = selfCopy->_isSecondaryActionRequired;
    }

    selfCopy->_secondaryActionURLGSEndpoint = isSecondaryActionRequired;
  }

  v71 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-I-NAURL"];
  if (v71)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_nativeActionURLKey, v71);
    }

    else
    {
      v70 = _AKLogSystem();
      v69 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v143, @"X-Apple-I-NAURL");
        _os_log_error_impl(&_mh_execute_header, v70, v69, "Invalid value type for key: %@", v143, 0xCu);
      }

      objc_storeStrong(&v70, 0);
    }
  }

  v68 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-I-Device-Terms"];
  if (v68)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v68 integerValue]);
      acceptedDeviceTermsVersion = selfCopy->_acceptedDeviceTermsVersion;
      selfCopy->_acceptedDeviceTermsVersion = v10;
      _objc_release(acceptedDeviceTermsVersion);
      v63 = _AKLogSystem();
      v62 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        sub_10001B098(v140, @"X-Apple-I-Device-Terms", selfCopy->_acceptedDeviceTermsVersion);
        _os_log_debug_impl(&_mh_execute_header, v63, v62, "Value for %@ is: %@", v140, 0x16u);
      }

      objc_storeStrong(&v63, 0);
    }

    else
    {
      oslog = _AKLogSystem();
      v64 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v141, @"X-Apple-I-Device-Terms", v68);
        _os_log_error_impl(&_mh_execute_header, oslog, v64, "Invalid value value for %@ header: %@", v141, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  else
  {
    v67 = _AKLogSystem();
    v66 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v142, @"X-Apple-I-Device-Terms");
      _os_log_debug_impl(&_mh_execute_header, v67, v66, "No value for %@ header.", v142, 0xCu);
    }

    objc_storeStrong(&v67, 0);
  }

  if (dCopy)
  {
    v61 = [allHeaderFields objectForKeyedSubscript:AKDSIDHeaderKey];
    [(AKAuthenticationServerResponse *)selfCopy _updateDSIDWithRawValue:v61];
    objc_storeStrong(&v61, 0);
  }

  v60 = [allHeaderFields objectForKeyedSubscript:@"X-Apple-I-Recovery-Session-Id"];
  if (v60)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_custodianSessionID, v60);
    }

    else
    {
      v59 = _AKLogSystem();
      v58 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v139, @"X-Apple-I-Recovery-Session-Id");
        _os_log_error_impl(&_mh_execute_header, v59, v58, "Invalid value type for key: %@", v139, 0xCu);
      }

      objc_storeStrong(&v59, 0);
    }
  }

  v57 = [allHeaderFields objectForKeyedSubscript:AKADPCohortHeaderKey];
  [(AKAuthenticationServerResponse *)selfCopy _updateADPCohortWithRawValue:v57];
  v18 = +[AKFeatureManager sharedManager];
  isBackgroundiCloudSignInEnabled = [v18 isBackgroundiCloudSignInEnabled];
  _objc_release(v18);
  if (isBackgroundiCloudSignInEnabled)
  {
    v17 = [(NSMutableDictionary *)selfCopy->_serviceTokens objectForKeyedSubscript:@"com.apple.gs.icloud.cloudkit.auth"];
    _objc_release(v17);
    if (!v17)
    {
      v56 = _AKLogSystem();
      v55 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v138, @"com.apple.gs.icloud.cloudkit.auth");
        _os_log_debug_impl(&_mh_execute_header, v56, v55, "Value for %@ is missing/invalid!", v138, 0xCu);
      }

      objc_storeStrong(&v56, 0);
    }

    v16 = [(NSMutableDictionary *)selfCopy->_serviceTokens objectForKeyedSubscript:@"com.apple.gs.icloud.escrow.auth"];
    _objc_release(v16);
    if (!v16)
    {
      v54 = _AKLogSystem();
      v53 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        sub_1000194D4(v137, @"com.apple.gs.icloud.escrow.auth");
        _os_log_debug_impl(&_mh_execute_header, v54, v53, "Value for %@ is missing/invalid!", v137, 0xCu);
      }

      objc_storeStrong(&v54, 0);
    }

    selfCopy->_canBackgroundiCloudSignIn = [(AKAuthenticationServerResponse *)selfCopy _shouldBackgroundiCloudSignIn];
  }

  [(AKAuthenticationServerResponse *)selfCopy reportCriticalAuthTokensTelemetryForFlow:2 withTokenGenerationInfo:0];
  objc_opt_class();
  v14 = objc_opt_class();
  v15 = [allHeaderFields objectForKeyedSubscript:AKMDMInfoRequiredHeaderKey];
  v52 = sub_10002AEB8(v14, v15);
  _objc_release(v15);
  if (v52)
  {
    v51 = _AKLogSystem();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B098(v136, AKMDMInfoRequiredHeaderKey, v52);
      _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "Value for %@ is: %@", v136, 0x16u);
    }

    objc_storeStrong(&v51, 0);
    selfCopy->_isMdmInfoRequired = [v52 BOOLValue];
  }

  v13 = v130;
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v103, 0);
  objc_storeStrong(&v104, 0);
  objc_storeStrong(&v110, 0);
  objc_storeStrong(&v111, 0);
  objc_storeStrong(&v117, 0);
  objc_storeStrong(&v118, 0);
  objc_storeStrong(&allHeaderFields, 0);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (void)_updateDSIDWithRawValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&selfCopy->_dsid, location[0]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _numberFormatter = [(AKAuthenticationServerResponse *)selfCopy _numberFormatter];
      v3 = [_numberFormatter numberFromString:location[0]];
      dsid = selfCopy->_dsid;
      selfCopy->_dsid = v3;
      _objc_release(dsid);
      _objc_release(_numberFormatter);
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_1000194D4(v9, location[0]);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Invalid type for DSID value: %@", v9, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_updateADPCohortWithRawValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B098(v9, AKADPCohortHeaderKey, selfCopy->_adpCohort);
      _os_log_debug_impl(&_mh_execute_header, oslog, type, "%@ = %@", v9, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&selfCopy->_adpCohort, location[0]);
  }

  else
  {
    v3 = _AKLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v8, location[0]);
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Invalid type for adpCohort value: %@", v8, 0xCu);
    }

    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(location, 0);
}

- (id)_decodeBase64String:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v3 = [NSData alloc];
  v7 = [v3 initWithBase64EncodedString:location[0] options:0];
  v4 = [NSString alloc];
  v6 = [v4 initWithData:v7 encoding:4];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_numberFormatter
{
  v5 = &unk_100374568;
  location = 0;
  objc_storeStrong(&location, &stru_10031F810);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374560;

  return v2;
}

- (BOOL)_shouldBackgroundiCloudSignIn
{
  selfCopy = self;
  v16 = a2;
  v5 = [AKURLBag bagForAltDSID:0];
  isBackgroundiCloudSignInEnabled = [v5 isBackgroundiCloudSignInEnabled];
  _objc_release(v5);
  v15 = isBackgroundiCloudSignInEnabled;
  v13 = 0;
  v11 = 0;
  v7 = 0;
  if (isBackgroundiCloudSignInEnabled)
  {
    v14 = [(NSMutableDictionary *)selfCopy->_serviceTokens objectForKeyedSubscript:@"com.apple.gs.icloud.cloudkit.auth"];
    v13 = 1;
    v7 = 0;
    if (v14)
    {
      v12 = [(NSMutableDictionary *)selfCopy->_serviceTokens objectForKeyedSubscript:@"com.apple.gs.icloud.escrow.auth"];
      v11 = 1;
      v7 = v12 != 0;
    }
  }

  if (v11)
  {
    _objc_release(v12);
  }

  if (v13)
  {
    _objc_release(v14);
  }

  if (!v7)
  {
    return 0;
  }

  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v4 = type;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, log, v4, "Elligible for backgrounding iCloud Sign In", v8, 2u);
  }

  objc_storeStrong(&oslog, 0);
  return 1;
}

- (void)reportCriticalAuthTokensTelemetryForFlow:(unint64_t)flow withTokenGenerationInfo:(id)info
{
  selfCopy = self;
  v30 = a2;
  flowCopy = flow;
  location = 0;
  objc_storeStrong(&location, info);
  v27 = +[AKAccountManager sharedInstance];
  v26 = [v27 authKitAccountWithAltDSID:selfCopy->_altDSID error:0];
  if ([(AKAuthenticationServerResponse *)selfCopy shouldReportTokenGenerationMetricsWithTokenGenerationInfo:location])
  {
    stringValue = [(AKToken *)selfCopy->_passwordResetToken stringValue];
    stringValue2 = [(AKToken *)selfCopy->_continuationToken stringValue];
    v22 = 0;
    v21 = 0;
    v10 = objc_opt_class();
    v12 = [location objectForKeyedSubscript:@"ckgen"];
    v11 = sub_10002AEB8(v10, v12);
    bOOLValue = [v11 BOOLValue];
    _objc_release(v11);
    _objc_release(v12);
    v20 = bOOLValue;
    v14 = objc_opt_class();
    v16 = [location objectForKeyedSubscript:@"prkgen"];
    v15 = sub_10002AEB8(v14, v16);
    bOOLValue2 = [v15 BOOLValue];
    _objc_release(v15);
    _objc_release(v16);
    v19 = bOOLValue2;
    if (flowCopy == 1)
    {
      v9 = 0;
      if (v20)
      {
        v9 = stringValue2 == 0;
      }

      v22 = v9;
      v8 = 0;
      if (v19)
      {
        v8 = 0;
        if (!stringValue)
        {
          v8 = v20;
        }
      }

      v21 = v8 & 1;
    }

    else
    {
      v22 = stringValue2 == 0;
      v21 = stringValue == 0;
    }

    if (v22)
    {
      v7 = [NSError ak_errorWithCode:-7116];
      [v27 _reportTokenWithTelemetryID:@"com.apple.authkit.token.ck.create" account:v26 telemetryFlowID:0 error:?];
      _objc_release(v7);
    }

    if (v21)
    {
      v6 = [NSError ak_errorWithCode:-7117];
      [v27 _reportTokenWithTelemetryID:@"com.apple.authkit.token.prk.create" account:v26 telemetryFlowID:0 error:?];
      _objc_release(v6);
    }

    heartbeatToken = [(AKAuthenticationServerResponse *)selfCopy heartbeatToken];
    stringValue3 = [(AKToken *)heartbeatToken stringValue];
    _objc_release(heartbeatToken);
    if (!stringValue3)
    {
      v4 = [NSError ak_errorWithCode:-7118];
      [v27 _reportTokenWithTelemetryID:@"com.apple.authkit.token.hb.create" account:v26 telemetryFlowID:0 error:?];
      _objc_release(v4);
    }

    objc_storeStrong(&stringValue3, 0);
    objc_storeStrong(&stringValue2, 0);
    objc_storeStrong(&stringValue, 0);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&location, 0);
}

- (BOOL)shouldReportTokenGenerationMetricsWithTokenGenerationInfo:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  if (selfCopy->_errorCode)
  {
    v44 = 0;
    v41 = 1;
  }

  else if (selfCopy->_isSecondaryActionRequired)
  {
    v40 = _AKLogSystem();
    v39 = 2;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      log = v40;
      v23 = v39;
      sub_10001CEEC(v38);
      _os_log_debug_impl(&_mh_execute_header, log, v23, "Secondary action required - Skipping metrics report", v38, 2u);
    }

    objc_storeStrong(&v40, 0);
    v44 = 0;
    v41 = 1;
  }

  else if (selfCopy->_appleIDSecurityLevel == 4 || selfCopy->_appleIDSecurityLevel == 5)
  {
    v16 = objc_opt_class();
    v18 = [location[0] objectForKeyedSubscript:AKEphemeralAuthKey];
    v17 = sub_10002AEB8(v16, v18);
    bOOLValue = [v17 BOOLValue];
    _objc_release(v17);
    _objc_release(v18);
    v34 = bOOLValue;
    if (bOOLValue)
    {
      v33 = _AKLogSystem();
      v32 = 2;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v14 = v33;
        v15 = v32;
        sub_10001CEEC(v31);
        _os_log_debug_impl(&_mh_execute_header, v14, v15, "Ephermeral auth - Skipping metrics report.", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      v44 = 0;
      v41 = 1;
    }

    else
    {
      v10 = objc_opt_class();
      v12 = [location[0] objectForKeyedSubscript:AKShortLivedTokenKey];
      v11 = sub_10002AEB8(v10, v12);
      bOOLValue2 = [v11 BOOLValue];
      _objc_release(v11);
      _objc_release(v12);
      v30 = bOOLValue2;
      if (bOOLValue2)
      {
        v29 = _AKLogSystem();
        v28 = 2;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v8 = v29;
          v9 = v28;
          sub_10001CEEC(v27);
          _os_log_debug_impl(&_mh_execute_header, v8, v9, "Require shortLived token - Skipping metrics report.", v27, 2u);
        }

        objc_storeStrong(&v29, 0);
        v44 = 0;
        v41 = 1;
      }

      else
      {
        v6 = [location[0] objectForKeyedSubscript:AKAppProvidedContextKey];
        v7 = [v6 isEqualToString:@"AuthorizationServices"];
        _objc_release(v6);
        if (v7)
        {
          v26 = _AKLogSystem();
          v25 = 2;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v4 = v26;
            v5 = v25;
            sub_10001CEEC(v24);
            _os_log_debug_impl(&_mh_execute_header, v4, v5, "SIWA - Skipping metrics report.", v24, 2u);
          }

          objc_storeStrong(&v26, 0);
          v44 = 0;
          v41 = 1;
        }

        else
        {
          v44 = 1;
          v41 = 1;
        }
      }
    }
  }

  else
  {
    v37 = _AKLogSystem();
    v36 = 2;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v20 = v37;
      type = v36;
      sub_10001CEEC(v35);
      _os_log_debug_impl(&_mh_execute_header, v20, type, "Not a HSA2 or MAID account - Skipping metrics report.", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
    v44 = 0;
    v41 = 1;
  }

  objc_storeStrong(location, 0);
  return v44 & 1;
}

@end
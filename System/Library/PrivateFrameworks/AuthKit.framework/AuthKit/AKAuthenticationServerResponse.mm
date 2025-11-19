@interface AKAuthenticationServerResponse
+ (id)decodedConfigurationInfo:(id)a3;
- (AKAuthenticationServerResponse)initWithSRPContext:(id)a3;
- (AKAuthenticationServerResponse)initWithServerResponse:(id)a3 forAppleID:(id)a4;
- (AKAuthenticationServerResponse)initWithServerResponse:(id)a3 responseBody:(id)a4;
- (BOOL)_shouldBackgroundiCloudSignIn;
- (BOOL)shouldReportTokenGenerationMetricsWithTokenGenerationInfo:(id)a3;
- (BOOL)updateWithSecondaryAuthenticationResponse:(id)a3;
- (BOOL)updateWithSecondaryAuthenticationResponse:(id)a3 shouldUpdateDSID:(BOOL)a4;
- (id)_decodeBase64String:(id)a3;
- (id)_federatedPayloadFromInfo:(id)a3;
- (id)_numberFormatter;
- (void)_harvestCommonFieldsFromBody:(id)a3;
- (void)_harvestCommonFieldsFromResponse:(id)a3;
- (void)_harvestManagedAppleIDInfoFromDictionary:(id)a3;
- (void)_setHeartbeatToken:(id)a3;
- (void)_setIdmsDataToken:(id)a3;
- (void)_setPasswordEquivalentToken:(id)a3;
- (void)_setPasswordlessToken:(id)a3;
- (void)_updateADPCohortWithRawValue:(id)a3;
- (void)_updateAccountInformationWithResultsDictionary:(id)a3;
- (void)_updateDSIDWithRawValue:(id)a3;
- (void)reportCriticalAuthTokensTelemetryForFlow:(unint64_t)a3 withTokenGenerationInfo:(id)a4;
- (void)updateWithSecondaryAuthenticationBody:(id)a3;
@end

@implementation AKAuthenticationServerResponse

+ (id)decodedConfigurationInfo:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] aaf_map:&stru_10031F7F0];
  objc_storeStrong(location, 0);

  return v4;
}

- (AKAuthenticationServerResponse)initWithSRPContext:(id)a3
{
  v223 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v223;
  v223 = 0;
  v221.receiver = v3;
  v221.super_class = AKAuthenticationServerResponse;
  v223 = [(AKAuthenticationServerResponse *)&v221 init];
  objc_storeStrong(&v223, v223);
  if (v223)
  {
    v220 = [location[0] serverProvidedData];
    v219 = [location[0] status];
    v4 = [location[0] serverProvidedData];
    serverProvidedData = v223->_serverProvidedData;
    v223->_serverProvidedData = v4;
    _objc_release(serverProvidedData);
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v163 = type;
      v164 = [v220 ak_redactedCopy];
      v216 = _objc_retain(v164);
      sub_10001B098(v228, v219, v216);
      _os_log_impl(&_mh_execute_header, log, v163, "Creating AKAuthenticationServerResponse with status: %@ contents: %@", v228, 0x16u);
      _objc_release(v164);
      objc_storeStrong(&v216, 0);
    }

    objc_storeStrong(&oslog, 0);
    v6 = [v220 objectForKeyedSubscript:@"atxid"];
    transactionId = v223->_transactionId;
    v223->_transactionId = v6;
    _objc_release(transactionId);
    v160 = [v220 objectForKeyedSubscript:@"apb"];
    v8 = [v160 BOOLValue];
    v223->_allowPiggybacking = v8;
    _objc_release(v160);
    v161 = [v220 objectForKeyedSubscript:@"pbp"];
    v9 = [v161 BOOLValue];
    v223->_allowPiggybackingPresence = v9;
    _objc_release(v161);
    obj = [v220 objectForKeyedSubscript:@"alias"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v223->_aliases, obj);
    }

    [(AKAuthenticationServerResponse *)v223 _updateAccountInformationWithResultsDictionary:v220];
    v10 = [location[0] masterToken];
    masterToken = v223->_masterToken;
    v223->_masterToken = v10;
    _objc_release(masterToken);
    v12 = objc_alloc_init(NSMutableDictionary);
    serviceTokens = v223->_serviceTokens;
    v223->_serviceTokens = v12;
    _objc_release(serviceTokens);
    v214 = [v220 objectForKeyedSubscript:@"t"];
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
          [(NSMutableDictionary *)v223->_serviceTokens setObject:v210 forKeyedSubscript:v213];
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
    v209 = [v220 objectForKeyedSubscript:@"mu"];
    if (v209)
    {
      v14 = [v209 BOOLValue];
      v223->_isManagedAppleID = v14;
    }

    v208 = [v220 objectForKeyedSubscript:@"demoAccount"];
    if (v208)
    {
      v15 = [v208 BOOLValue];
      v223->_isDemoAccount = v15;
    }

    v16 = [v219 objectForKeyedSubscript:@"fu"];
    federatedAuthURL = v223->_federatedAuthURL;
    v223->_federatedAuthURL = v16;
    _objc_release(federatedAuthURL);
    v18 = [v219 objectForKeyedSubscript:?];
    federatedAuthSamlRequest = v223->_federatedAuthSamlRequest;
    v223->_federatedAuthSamlRequest = v18;
    _objc_release(federatedAuthSamlRequest);
    v152 = v223;
    v153 = [v219 objectForKeyedSubscript:@"params"];
    v20 = [(AKAuthenticationServerResponse *)v152 _federatedPayloadFromInfo:?];
    federatedAuthRequestPayload = v223->_federatedAuthRequestPayload;
    v223->_federatedAuthRequestPayload = v20;
    _objc_release(federatedAuthRequestPayload);
    _objc_release(v153);
    v22 = [v219 objectForKeyedSubscript:@"dm"];
    federatedAuthURLWhiteList = v223->_federatedAuthURLWhiteList;
    v223->_federatedAuthURLWhiteList = v22;
    _objc_release(federatedAuthURLWhiteList);
    v207 = [v220 objectForKeyedSubscript:@"al"];
    if (v207)
    {
      v24 = [v207 BOOLValue];
      v223->_isAuditLogin = v24;
    }

    v25 = [v220 objectForKeyedSubscript:@"imu"];
    imageURLString = v223->_imageURLString;
    v223->_imageURLString = v25;
    _objc_release(imageURLString);
    v206 = [v219 objectForKeyedSubscript:@"hsc"];
    if (v206)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v206 integerValue] == 409)
        {
          v223->_isSecondaryActionRequired = 1;
        }

        else if ([v206 integerValue] == 433)
        {
          v223->_isAnisetteReprovisioningRequired = 1;
        }

        else if ([v206 integerValue] == 434)
        {
          v223->_isAnisetteResyncRequired = 1;
        }

        else if ([v206 integerValue] == 435)
        {
          v223->_isURLSwitchingRequired = 1;
          v27 = [v219 objectForKeyedSubscript:@"X-Apple-I-Data"];
          urlSwitchingData = v223->_urlSwitchingData;
          v223->_urlSwitchingData = v27;
          _objc_release(urlSwitchingData);
        }

        else if ([v206 integerValue] == 436)
        {
          v223->_isRetryRequired = 1;
        }

        else if ([v206 integerValue] == 443)
        {
          v203 = [v219 objectForKeyedSubscript:@"st"];
          if ([v203 length])
          {
            v151 = +[AKBAATimeProvider sharedInstance];
            [(AKBAATimeProvider *)v151 addServerAdjustment:v203];
            _objc_release(v151);
            v223->_isRetryRequired = 1;
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
            v223->_isServerBackoff = 1;
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

    v202 = [v219 objectForKeyedSubscript:@"au"];
    if (v202)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v223->_secondaryActionURLKey, v202);
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

    v199 = [v219 objectForKeyedSubscript:@"autype"];
    if ([v199 intValue])
    {
      isSecondaryActionRequired = 0;
      if ([v199 intValue] == 1)
      {
        isSecondaryActionRequired = v223->_isSecondaryActionRequired;
      }

      v223->_secondaryActionURLGSEndpoint = isSecondaryActionRequired;
    }

    v198 = [v220 objectForKeyedSubscript:@"fidoAuth"];
    if ([v198 BOOLValue])
    {
      v29 = [v198 BOOLValue];
      v223->_fidoAuthRequired = v29;
    }

    v197 = [v219 objectForKeyedSubscript:@"naurl"];
    if (v197)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v223->_nativeActionURLKey, v197);
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

    v194 = [v220 objectForKeyedSubscript:@"sm"];
    if (v194)
    {
      objc_storeStrong(&v223->_secondaryActionMessage, v194);
    }

    v30 = [v219 objectForKeyedSubscript:@"em"];
    errorMessage = v223->_errorMessage;
    v223->_errorMessage = v30;
    _objc_release(errorMessage);
    v32 = [v219 objectForKeyedSubscript:@"tt"];
    errorMessageTitle = v223->_errorMessageTitle;
    v223->_errorMessageTitle = v32;
    _objc_release(errorMessageTitle);
    v146 = [v219 objectForKeyedSubscript:AKSubErrorStatusCodeKey];
    v147 = objc_opt_respondsToSelector();
    _objc_release(v146);
    if (v147)
    {
      v145 = [v219 objectForKeyedSubscript:AKSubErrorStatusCodeKey];
      v34 = [v145 integerValue];
      v223->_subErrorCode = v34;
      _objc_release(v145);
    }

    v143 = [v219 objectForKeyedSubscript:@"ec"];
    v144 = objc_opt_respondsToSelector();
    _objc_release(v143);
    if (v144)
    {
      v142 = [v219 objectForKeyedSubscript:@"ec"];
      v35 = [v142 integerValue];
      v223->_errorCode = v35;
      _objc_release(v142);
    }

    v193 = [v219 objectForKeyedSubscript:@"X-Apple-I-MD-DATA"];
    if (v193)
    {
      v36 = [[NSData alloc] initWithBase64EncodedString:v193 options:0];
      anisetteResyncData = v223->_anisetteResyncData;
      v223->_anisetteResyncData = v36;
      _objc_release(anisetteResyncData);
    }

    v192 = [v219 objectForKeyedSubscript:@"X-Apple-I-MD-Cmd-Target"];
    if ([v192 isEqual:@"paired"])
    {
      v223->_shouldProxyAnisetteAction = 1;
    }

    v140 = objc_opt_class();
    v141 = [v220 objectForKeyedSubscript:@"continuationKey"];
    v191 = sub_10002AEB8(v140, v141);
    _objc_release(v141);
    if (v191)
    {
      v38 = [AKToken tokenWithDictionary:v191];
      continuationToken = v223->_continuationToken;
      v223->_continuationToken = v38;
      _objc_release(continuationToken);
    }

    else
    {
      v139 = [v220 objectForKeyedSubscript:@"ck"];
      v40 = [AKToken tokenWithValue:"tokenWithValue:lifetime:" lifetime:?];
      v41 = v223->_continuationToken;
      v223->_continuationToken = v40;
      _objc_release(v41);
      _objc_release(v139);
    }

    v138 = [(AKToken *)v223->_continuationToken stringValue];
    _objc_release(v138);
    if (v138)
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
    v135 = [v220 objectForKeyedSubscript:@"passwordResetKey"];
    v187 = sub_10002AEB8(v134, v135);
    _objc_release(v135);
    if (v187)
    {
      v42 = [AKToken tokenWithDictionary:v187];
      passwordResetToken = v223->_passwordResetToken;
      v223->_passwordResetToken = v42;
      _objc_release(passwordResetToken);
    }

    else
    {
      v133 = [v220 objectForKeyedSubscript:@"prk"];
      v44 = [AKToken tokenWithValue:"tokenWithValue:lifetime:" lifetime:?];
      v45 = v223->_passwordResetToken;
      v223->_passwordResetToken = v44;
      _objc_release(v45);
      _objc_release(v133);
    }

    v132 = [(AKToken *)v223->_passwordResetToken stringValue];
    _objc_release(v132);
    if (v132)
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

    v183 = [v220 objectForKeyedSubscript:@"appleIdSignInEnabled"];
    if ([v183 BOOLValue])
    {
      v46 = [v183 BOOLValue];
      v223->_authorizationUsed = v46;
    }

    v47 = [v220 objectForKeyedSubscript:@"privateAttestationEnabled"];
    privateAttestationEnabled = v223->_privateAttestationEnabled;
    v223->_privateAttestationEnabled = v47;
    _objc_release(privateAttestationEnabled);
    v182 = [v220 objectForKeyedSubscript:@"phoneAsAppleId"];
    if ([v182 BOOLValue])
    {
      v49 = [v182 BOOLValue];
      v223->_phoneAsAppleID = v49;
    }

    v181 = [v219 objectForKeyedSubscript:@"rsh"];
    if ([v181 BOOLValue])
    {
      v50 = [v181 BOOLValue];
      v223->_requireSigningHeaders = v50;
    }

    v111 = objc_opt_class();
    v112 = [v220 objectForKeyedSubscript:AKWebAccessEnabledKey];
    v51 = sub_10002AEB8(v111, v112);
    webAccessEnabled = v223->_webAccessEnabled;
    v223->_webAccessEnabled = v51;
    _objc_release(webAccessEnabled);
    _objc_release(v112);
    v113 = objc_opt_class();
    v114 = [v220 objectForKeyedSubscript:AKServerExperimentalFeaturesKey];
    v53 = sub_10002AEB8(v113, v114);
    serverExperimentalFeatures = v223->_serverExperimentalFeatures;
    v223->_serverExperimentalFeatures = v53;
    _objc_release(serverExperimentalFeatures);
    _objc_release(v114);
    v115 = objc_opt_class();
    v116 = [v220 objectForKeyedSubscript:AKPasskeyEligibleKey];
    v55 = sub_10002AEB8(v115, v116);
    passkeyEligible = v223->_passkeyEligible;
    v223->_passkeyEligible = v55;
    _objc_release(passkeyEligible);
    _objc_release(v116);
    v117 = objc_opt_class();
    v118 = [v220 objectForKeyedSubscript:AKPasskeyPresentKey];
    v57 = sub_10002AEB8(v117, v118);
    passkeyPresent = v223->_passkeyPresent;
    v223->_passkeyPresent = v57;
    _objc_release(passkeyPresent);
    _objc_release(v118);
    v119 = objc_opt_class();
    v120 = [v220 objectForKeyedSubscript:AKProximityEligibleKey];
    v180 = sub_10002AEB8(v119, v120);
    _objc_release(v120);
    v59 = [v180 BOOLValue];
    v223->_isProximityEligible = v59;
    v121 = objc_opt_class();
    v122 = [v220 objectForKeyedSubscript:AKPasscodeAuthEnabledKey];
    v60 = sub_10002AEB8(v121, v122);
    passcodeAuthEnabled = v223->_passcodeAuthEnabled;
    v223->_passcodeAuthEnabled = v60;
    _objc_release(passcodeAuthEnabled);
    _objc_release(v122);
    v123 = objc_opt_class();
    v124 = [v220 objectForKeyedSubscript:AKPasscodeAuthKey];
    v62 = sub_10002AEB8(v123, v124);
    passcodeAuth = v223->_passcodeAuth;
    v223->_passcodeAuth = v62;
    _objc_release(passcodeAuth);
    _objc_release(v124);
    v125 = objc_opt_class();
    v126 = [v220 objectForKeyedSubscript:AKAskToBuyKey];
    v64 = sub_10002AEB8(v125, v126);
    askToBuy = v223->_askToBuy;
    v223->_askToBuy = v64;
    _objc_release(askToBuy);
    _objc_release(v126);
    v127 = objc_opt_class();
    v128 = [v220 objectForKeyedSubscript:AKSOSNeededKey];
    v66 = sub_10002AEB8(v127, v128);
    SOSNeeded = v223->_SOSNeeded;
    v223->_SOSNeeded = v66;
    _objc_release(SOSNeeded);
    _objc_release(v128);
    v129 = [v220 objectForKeyedSubscript:AKSOSActiveDeviceKey];
    v178 = 0;
    v176 = 0;
    v174 = 0;
    v172 = 0;
    if (v129)
    {
      v110 = objc_opt_class();
      v179 = [v220 objectForKeyedSubscript:AKSOSActiveDeviceKey];
      v178 = 1;
      v177 = sub_10002AEB8(v110, v179);
      v176 = 1;
      objc_storeStrong(&v223->_hasSOSActiveDevice, v177);
    }

    else
    {
      v109 = objc_opt_class();
      v175 = [v220 objectForKeyedSubscript:AKSOSActiveDeviceLegacyKey];
      v174 = 1;
      v173 = sub_10002AEB8(v109, v175);
      v172 = 1;
      objc_storeStrong(&v223->_hasSOSActiveDevice, v173);
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
    v68 = [v219 objectForKeyedSubscript:AKConfigDataVersion];
    configDataVersion = v223->_configDataVersion;
    v223->_configDataVersion = v68;
    _objc_release(configDataVersion);
    v93 = objc_opt_class();
    v94 = [v220 objectForKeyedSubscript:AKUserBirthYearKey];
    v70 = sub_10002AEB8(v93, v94);
    birthYear = v223->_birthYear;
    v223->_birthYear = v70;
    _objc_release(birthYear);
    _objc_release(v94);
    v95 = objc_opt_class();
    v96 = [v220 objectForKeyedSubscript:AKUserBirthDayKey];
    v72 = sub_10002AEB8(v95, v96);
    birthDay = v223->_birthDay;
    v223->_birthDay = v72;
    _objc_release(birthDay);
    _objc_release(v96);
    v97 = objc_opt_class();
    v98 = [v220 objectForKeyedSubscript:AKUserBirthMonthKey];
    v74 = sub_10002AEB8(v97, v98);
    birthMonth = v223->_birthMonth;
    v223->_birthMonth = v74;
    _objc_release(birthMonth);
    _objc_release(v98);
    v99 = objc_opt_class();
    v100 = [v220 objectForKeyedSubscript:AKHasModernRKKey];
    v76 = sub_10002AEB8(v99, v100);
    hasModernRecoveryKey = v223->_hasModernRecoveryKey;
    v223->_hasModernRecoveryKey = v76;
    _objc_release(hasModernRecoveryKey);
    _objc_release(v100);
    v101 = objc_opt_class();
    v102 = [v220 objectForKeyedSubscript:AK3PRegulatoryOverrideKey];
    v78 = sub_10002AEB8(v101, v102);
    thirdPartyRegulatoryOverride = v223->_thirdPartyRegulatoryOverride;
    v223->_thirdPartyRegulatoryOverride = v78;
    _objc_release(thirdPartyRegulatoryOverride);
    _objc_release(v102);
    v103 = objc_opt_class();
    v104 = [v220 objectForKeyedSubscript:AKADPCohortKey];
    v80 = sub_10002AEB8(v103, v104);
    adpCohort = v223->_adpCohort;
    v223->_adpCohort = v80;
    _objc_release(adpCohort);
    _objc_release(v104);
    v105 = objc_opt_class();
    v106 = [v220 objectForKeyedSubscript:AKIdmsWalrusStatusKey];
    v82 = sub_10002AEB8(v105, v106);
    idmsWalrusStatus = v223->_idmsWalrusStatus;
    v223->_idmsWalrusStatus = v82;
    _objc_release(idmsWalrusStatus);
    _objc_release(v106);
    v107 = +[AKFeatureManager sharedManager];
    v108 = [v107 isBackgroundiCloudSignInEnabled];
    _objc_release(v107);
    if (v108)
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

      v84 = [(AKAuthenticationServerResponse *)v223 _shouldBackgroundiCloudSignIn];
      v223->_canBackgroundiCloudSignIn = v84;
    }

    v165 = objc_alloc_init(AKServerBackoffHelper);
    [v165 configureFromHeaderFields:v219];
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
    objc_storeStrong(&v219, 0);
    objc_storeStrong(&v220, 0);
  }

  v86 = _objc_retain(v223);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v223, 0);
  return v86;
}

- (id)_federatedPayloadFromInfo:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] aaf_toUrlQueryString];
  v3 = [v8 stringByReplacingOccurrencesOfString:@"+" withString:@"%2B"];
  v4 = v8;
  v8 = v3;
  _objc_release(v4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v10, v8);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Encoded payload for federated auth: %@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [v8 dataUsingEncoding:4];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (AKAuthenticationServerResponse)initWithServerResponse:(id)a3 forAppleID:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v4 = v14;
  v14 = 0;
  v11.receiver = v4;
  v11.super_class = AKAuthenticationServerResponse;
  v10 = [(AKAuthenticationServerResponse *)&v11 init];
  v14 = v10;
  objc_storeStrong(&v14, v10);
  if (v10)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    serviceTokens = v14->_serviceTokens;
    v14->_serviceTokens = v5;
    _objc_release(serviceTokens);
    objc_storeStrong(&v14->_appleID, v12);
    [(AKAuthenticationServerResponse *)v14 updateWithSecondaryAuthenticationResponse:location[0]];
  }

  v8 = _objc_retain(v14);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v8;
}

- (AKAuthenticationServerResponse)initWithServerResponse:(id)a3 responseBody:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v4 = v14;
  v14 = 0;
  v11.receiver = v4;
  v11.super_class = AKAuthenticationServerResponse;
  v10 = [(AKAuthenticationServerResponse *)&v11 init];
  v14 = v10;
  objc_storeStrong(&v14, v10);
  if (v10)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    serviceTokens = v14->_serviceTokens;
    v14->_serviceTokens = v5;
    _objc_release(serviceTokens);
    [(AKAuthenticationServerResponse *)v14 _updateAccountInformationWithResultsDictionary:v12];
    [(AKAuthenticationServerResponse *)v14 updateWithSecondaryAuthenticationResponse:location[0]];
  }

  v8 = _objc_retain(v14);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v8;
}

- (void)_harvestCommonFieldsFromResponse:(id)a3
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = [location[0] allHeaderFields];
  v29 = [v30 objectForKeyedSubscript:AKAccountNameHeaderKey];
  if (v29)
  {
    objc_storeStrong(&v32->_appleID, v29);
  }

  if (!v32->_altDSID)
  {
    v3 = [v30 objectForKeyedSubscript:AKAltDSIDHeaderKey];
    altDSID = v32->_altDSID;
    v32->_altDSID = v3;
    _objc_release(altDSID);
  }

  if (!v32->_dsid)
  {
    v28 = [v30 objectForKeyedSubscript:AKDSIDHeaderKey];
    [(AKAuthenticationServerResponse *)v32 _updateDSIDWithRawValue:v28];
    objc_storeStrong(&v28, 0);
  }

  if (!v32->_altDSID)
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

  if (!v32->_dsid)
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

  if (v32->_appleID && v32->_altDSID)
  {
    v5 = [AKMasterToken alloc];
    v6 = [v5 initWithAppleID:v32->_appleID altDSID:v32->_altDSID];
    masterToken = v32->_masterToken;
    v32->_masterToken = v6;
    _objc_release(masterToken);
  }

  v8 = [location[0] ak_acceptedTermsInfo];
  acceptedTermsInfo = v32->_acceptedTermsInfo;
  v32->_acceptedTermsInfo = v8;
  _objc_release(acceptedTermsInfo);
  v10 = v32->_acceptedTermsInfo;
  v20 = 0;
  v13 = 0;
  if (v10)
  {
    v21 = [(NSDictionary *)v32->_acceptedTermsInfo objectForKeyedSubscript:@"alternateDsid"];
    v20 = 1;
    v13 = v21 == 0;
  }

  if (v20)
  {
    _objc_release(v21);
  }

  if (v13)
  {
    v19 = [(NSDictionary *)v32->_acceptedTermsInfo mutableCopy];
    [v19 setObject:v32->_altDSID forKeyedSubscript:@"alternateDsid"];
    v11 = [v19 copy];
    v12 = v32->_acceptedTermsInfo;
    v32->_acceptedTermsInfo = v11;
    _objc_release(v12);
    objc_storeStrong(&v19, 0);
  }

  if (!v32->_adpCohort)
  {
    v18 = [v30 objectForKeyedSubscript:AKADPCohortHeaderKey];
    [(AKAuthenticationServerResponse *)v32 _updateADPCohortWithRawValue:v18];
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)_harvestCommonFieldsFromBody:(id)a3
{
  v57 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v57->_appleID)
  {
    v55 = [location[0] objectForKeyedSubscript:@"acname"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v57->_appleID, v55);
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

  if (!v57->_lastName)
  {
    v3 = [location[0] objectForKeyedSubscript:@"ln"];
    lastName = v57->_lastName;
    v57->_lastName = v3;
    _objc_release(lastName);
  }

  if (!v57->_firstName)
  {
    v5 = [location[0] objectForKeyedSubscript:@"fn"];
    firstName = v57->_firstName;
    v57->_firstName = v5;
    _objc_release(firstName);
  }

  if (!v57->_dsid)
  {
    v7 = [location[0] objectForKeyedSubscript:@"DsPrsId"];
    dsid = v57->_dsid;
    v57->_dsid = v7;
    _objc_release(dsid);
  }

  if (!v57->_appleIDSecurityLevel)
  {
    v52 = [location[0] objectForKeyedSubscript:AKUserInfoSecurityLevelKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57->_appleIDSecurityLevel = [v52 unsignedIntegerValue];
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

  if (!v57->_authMode)
  {
    v49 = [location[0] objectForKeyedSubscript:AKAuthenticationModeKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57->_authMode = [v49 unsignedIntegerValue];
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
  v57->_isMdmInfoRequired = [v36 BOOLValue];
  _objc_release(v36);
  _objc_release(v37);
  if (!v57->_altDSID)
  {
    v9 = [location[0] objectForKeyedSubscript:@"adsid"];
    altDSID = v57->_altDSID;
    v57->_altDSID = v9;
    _objc_release(altDSID);
  }

  v46 = [location[0] objectForKeyedSubscript:@"ageOfMajority"];
  if (v46)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v57->_ageOfMajority, v46);
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
  canAttestAge = v57->_canAttestAge;
  v57->_canAttestAge = v11;
  _objc_release(canAttestAge);
  _objc_release(v25);
  v26 = [location[0] objectForKeyedSubscript:@"underAge"];
  v57->_isUnderAgeOfMajority = [v26 BOOLValue];
  _objc_release(v26);
  v27 = objc_opt_class();
  v29 = [location[0] objectForKeyedSubscript:AKUserInfoIsSiwaEnabledKey];
  v28 = sub_10002AEB8(v27, v29);
  v57->_isSiwaForChildEnabled = [v28 BOOLValue];
  _objc_release(v28);
  _objc_release(v29);
  v30 = [location[0] objectForKeyedSubscript:@"isSenior"];
  v57->_isSenior = [v30 BOOLValue];
  _objc_release(v30);
  v31 = objc_opt_class();
  v32 = [location[0] objectForKeyedSubscript:@"isEligibleForSafetyScreen"];
  v13 = sub_10002AEB8(v31, v32);
  isEligibleForSafetyScreen = v57->_isEligibleForSafetyScreen;
  v57->_isEligibleForSafetyScreen = v13;
  _objc_release(isEligibleForSafetyScreen);
  _objc_release(v32);
  v33 = objc_opt_class();
  v34 = [location[0] objectForKeyedSubscript:@"userAgeRange"];
  v43 = sub_10002AEB8(v33, v34);
  _objc_release(v34);
  if (v43)
  {
    v57->_userAgeRange = [v43 unsignedIntegerValue];
  }

  else
  {
    v57->_userAgeRange = 0;
  }

  v23 = [location[0] objectForKeyedSubscript:@"firstPartyApp"];
  v57->_isFirstPartyApp = [v23 BOOLValue];
  _objc_release(v23);
  v15 = [location[0] objectForKeyedSubscript:@"privateEmail"];
  privateEmail = v57->_privateEmail;
  v57->_privateEmail = v15;
  _objc_release(privateEmail);
  v17 = [location[0] objectForKeyedSubscript:@"primaryEmail"];
  primaryEmail = v57->_primaryEmail;
  v57->_primaryEmail = v17;
  _objc_release(primaryEmail);
  v42 = [location[0] objectForKeyedSubscript:@"primaryEmailVetted"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57->_primaryEmailVetted = [v42 BOOLValue];
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
      v57->_isProximityEligible = [v39 BOOLValue];
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
  signInWithAppleSharedAccountGroupID = v57->_signInWithAppleSharedAccountGroupID;
  v57->_signInWithAppleSharedAccountGroupID = v19;
  _objc_release(signInWithAppleSharedAccountGroupID);
  _objc_release(v22);
  [(AKAuthenticationServerResponse *)v57 _harvestManagedAppleIDInfoFromDictionary:location[0]];
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

- (void)_harvestManagedAppleIDInfoFromDictionary:(id)a3
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = [location[0] objectForKeyedSubscript:@"orgType"];
  if (v36)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v36 isEqual:@"EDU"])
      {
        v38->_managedOrganizationType = 1;
      }

      else if ([v36 isEqual:@"ENT"])
      {
        v38->_managedOrganizationType = 2;
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
        v38->_managedOrganizationType = 0;
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
      v38->_managedOrganizationType = 0;
    }
  }

  v30 = [location[0] objectForKeyedSubscript:@"orgName"];
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v38->_managedOrganizationName, v30);
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
      objc_storeStrong(&v38->_isNotificationEmailAvailable, v26);
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
      objc_storeStrong(&v38->_notificationEmail, obj);
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

- (void)_setPasswordEquivalentToken:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableDictionary *)v4->_serviceTokens setObject:location[0] forKey:@"com.apple.gs.idms.pet"];
  objc_storeStrong(location, 0);
}

- (void)_setHeartbeatToken:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableDictionary *)v4->_serviceTokens setObject:location[0] forKey:@"com.apple.gs.idms.hb"];
  objc_storeStrong(location, 0);
}

- (void)_setPasswordlessToken:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableDictionary *)v4->_serviceTokens setObject:location[0] forKey:@"com.apple.gs.idms.plt"];
  objc_storeStrong(location, 0);
}

- (void)_setIdmsDataToken:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableDictionary *)v4->_serviceTokens setObject:location[0] forKey:@"com.apple.gs.idmsdata"];
  objc_storeStrong(location, 0);
}

- (void)updateWithSecondaryAuthenticationBody:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] objectForKeyedSubscript:AKIdmsDataKey];
  serverInfo = v8->_serverInfo;
  v8->_serverInfo = v3;
  _objc_release(serverInfo);
  v5 = [location[0] objectForKeyedSubscript:AKTransactionId];
  transactionId = v8->_transactionId;
  v8->_transactionId = v5;
  _objc_release(transactionId);
  [(AKAuthenticationServerResponse *)v8 _updateAccountInformationWithResultsDictionary:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateAccountInformationWithResultsDictionary:(id)a3
{
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAuthenticationServerResponse *)v44 _harvestCommonFieldsFromBody:location[0]];
  v42 = [location[0] objectForKeyedSubscript:@"uireq"];
  if (v42)
  {
    v3 = [v42 BOOLValue];
    v44->_isServerUIRequired = v3;
  }

  v41 = [location[0] objectForKeyedSubscript:@"fpc"];
  if (v41)
  {
    v4 = [v41 BOOLValue];
    v44->_isPasscodeResetRequired = v4;
  }

  v40 = [location[0] objectForKeyedSubscript:@"cd"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [AKAuthenticationServerResponse decodedConfigurationInfo:v40];
    configurationInfo = v44->_configurationInfo;
    v44->_configurationInfo = v5;
    _objc_release(configurationInfo);
  }

  v39 = [location[0] objectForKeyedSubscript:AKAdditionalInfoKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v44->_additionalInfo, v39);
  }

  v38 = [location[0] objectForKeyedSubscript:@"hsa2Phones"];
  v7 = objc_opt_class();
  v8 = sub_10002AEB8(v7, v38);
  trustedPhoneNumbers = v44->_trustedPhoneNumbers;
  v44->_trustedPhoneNumbers = v8;
  _objc_release(trustedPhoneNumbers);
  v37 = [location[0] objectForKeyedSubscript:@"securityKeys"];
  v10 = objc_opt_class();
  v11 = sub_10002AEB8(v10, v37);
  securityKeys = v44->_securityKeys;
  v44->_securityKeys = v11;
  _objc_release(securityKeys);
  v36 = [location[0] objectForKeyedSubscript:@"loginHandles"];
  v13 = objc_opt_class();
  v14 = sub_10002AEB8(v13, v36);
  loginHandles = v44->_loginHandles;
  v44->_loginHandles = v14;
  _objc_release(loginHandles);
  v35 = [location[0] objectForKeyedSubscript:@"canHaveCustodian"];
  if (v35)
  {
    objc_storeStrong(&v44->_canHaveCustodian, v35);
  }

  v34 = [location[0] objectForKeyedSubscript:@"canBeCustodian"];
  if (v34)
  {
    objc_storeStrong(&v44->_canBeCustodian, v34);
  }

  v33 = [location[0] objectForKeyedSubscript:@"custodianEnabled"];
  if (v33)
  {
    objc_storeStrong(&v44->_custodianEnabled, v33);
  }

  obj = [location[0] objectForKeyedSubscript:@"custodianLastUpdateDate"];
  if (obj)
  {
    objc_storeStrong(&v44->_custodianLastModified, obj);
  }

  v31 = [location[0] objectForKeyedSubscript:AKInformationCustodianInfosKey];
  v16 = objc_opt_class();
  v17 = sub_10002AEB8(v16, v31);
  custodianInfos = v44->_custodianInfos;
  v44->_custodianInfos = v17;
  _objc_release(custodianInfos);
  v30 = [location[0] objectForKeyedSubscript:AKInformationBeneficiaryInfoKey];
  v19 = objc_opt_class();
  v20 = sub_10002AEB8(v19, v30);
  beneficiaryInfo = v44->_beneficiaryInfo;
  v44->_beneficiaryInfo = v20;
  _objc_release(beneficiaryInfo);
  v29 = [location[0] objectForKeyedSubscript:@"buuid"];
  v28 = [[NSUUID alloc] initWithUUIDString:v29];
  if (v28)
  {
    objc_storeStrong(&v44->_beneficiaryIdentifier, v29);
  }

  v27 = [location[0] objectForKeyedSubscript:@"canHaveBeneficiary"];
  if (v27)
  {
    objc_storeStrong(&v44->_canHaveBeneficiary, v27);
  }

  v26 = [location[0] objectForKeyedSubscript:@"canBeBeneficiary"];
  if (v26)
  {
    objc_storeStrong(&v44->_canBeBeneficiary, v26);
  }

  v25 = [location[0] objectForKeyedSubscript:@"beneficiaryWrappedKey"];
  if ([v25 length])
  {
    objc_storeStrong(&v44->_beneficiaryWrappedKey, v25);
  }

  v24 = [location[0] objectForKeyedSubscript:@"beneficiaryLastUpdateDate"];
  if (v24)
  {
    objc_storeStrong(&v44->_beneficiaryLastModified, v24);
  }

  v23 = [location[0] objectForKeyedSubscript:@"countryCode"];
  if (v23)
  {
    objc_storeStrong(&v44->_appleIDCountryCode, v23);
  }

  v22 = [location[0] objectForKeyedSubscript:@"appleManagedAccount"];
  if (v22)
  {
    objc_storeStrong(&v44->_hasMDM, v22);
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

- (BOOL)updateWithSecondaryAuthenticationResponse:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKAuthenticationServerResponse *)v6 updateWithSecondaryAuthenticationResponse:location[0] shouldUpdateDSID:0];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)updateWithSecondaryAuthenticationResponse:(id)a3 shouldUpdateDSID:(BOOL)a4
{
  v135 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v133 = a4;
  v132 = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v153, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v132, type, "Updating with secondary auth response: %@", v153, 0xCu);
  }

  objc_storeStrong(&v132, 0);
  [(AKAuthenticationServerResponse *)v135 _harvestCommonFieldsFromResponse:location[0]];
  v130 = 1;
  v129 = [location[0] allHeaderFields];
  if (!v135->_masterToken)
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

  v125 = [(AKMasterToken *)v135->_masterToken updateWithHTTPURLResponse:location[0]];
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

  v118 = [v129 objectForKeyedSubscript:AKPETHeaderKey];
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
    [(AKAuthenticationServerResponse *)v135 _setPasswordEquivalentToken:v117];
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

  v111 = [v129 objectForKeyedSubscript:@"X-Apple-HB-Token"];
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
    [(AKAuthenticationServerResponse *)v135 _setHeartbeatToken:v110];
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

  v104 = [v129 objectForKeyedSubscript:@"X-Apple-GS-Token"];
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
          v31 = [v100 name];
          sub_1000194D4(v148, v31);
          _os_log_impl(&_mh_execute_header, v30, v96, "Updating token for service ID %@.", v148, 0xCu);
          _objc_release(v31);
        }

        objc_storeStrong(&v97, 0);
        v27 = v100;
        serviceTokens = v135->_serviceTokens;
        v29 = [v100 name];
        [(NSMutableDictionary *)serviceTokens setObject:v27 forKeyedSubscript:?];
        _objc_release(v29);
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
  v95 = [v129 objectForKeyedSubscript:@"X-Apple-SL-Token"];
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
    shortLivedToken = v135->_shortLivedToken;
    v135->_shortLivedToken = v4;
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

  v89 = [v129 objectForKeyedSubscript:@"X-Apple-I-CK"];
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
    continuationToken = v135->_continuationToken;
    v135->_continuationToken = v6;
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

  v83 = [v129 objectForKeyedSubscript:@"X-Apple-I-PRK"];
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
    passwordResetToken = v135->_passwordResetToken;
    v135->_passwordResetToken = v8;
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

  v77 = [v129 objectForKeyedSubscript:@"X-Apple-AK-Auth-Type"];
  if ([v77 isEqual:AKSecurityHeaderTypeHSA2])
  {
    v135->_appleIDSecurityLevel = 4;
  }

  else if ([v77 isEqual:AKSecurityHeaderTypeHSA1])
  {
    v135->_appleIDSecurityLevel = 3;
  }

  else if ([v77 isEqual:AKSecurityHeaderTypeSA])
  {
    v135->_appleIDSecurityLevel = 2;
  }

  else if ([v77 isEqual:AKSecurityHeaderTypeManaged])
  {
    v135->_appleIDSecurityLevel = 5;
  }

  v76 = [location[0] statusCode];
  v135->_isSecondaryActionRequired = v76 == 409;
  v75 = [v129 objectForKeyedSubscript:@"X-Apple-I-AURL"];
  if (v75)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v135->_secondaryActionURLKey, v75);
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

  v72 = [v129 objectForKeyedSubscript:@"X-Apple-I-AURL-Type"];
  if ([v72 intValue])
  {
    isSecondaryActionRequired = 0;
    if ([v72 intValue] == 1)
    {
      isSecondaryActionRequired = v135->_isSecondaryActionRequired;
    }

    v135->_secondaryActionURLGSEndpoint = isSecondaryActionRequired;
  }

  v71 = [v129 objectForKeyedSubscript:@"X-Apple-I-NAURL"];
  if (v71)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v135->_nativeActionURLKey, v71);
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

  v68 = [v129 objectForKeyedSubscript:@"X-Apple-I-Device-Terms"];
  if (v68)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v68 integerValue]);
      acceptedDeviceTermsVersion = v135->_acceptedDeviceTermsVersion;
      v135->_acceptedDeviceTermsVersion = v10;
      _objc_release(acceptedDeviceTermsVersion);
      v63 = _AKLogSystem();
      v62 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        sub_10001B098(v140, @"X-Apple-I-Device-Terms", v135->_acceptedDeviceTermsVersion);
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

  if (v133)
  {
    v61 = [v129 objectForKeyedSubscript:AKDSIDHeaderKey];
    [(AKAuthenticationServerResponse *)v135 _updateDSIDWithRawValue:v61];
    objc_storeStrong(&v61, 0);
  }

  v60 = [v129 objectForKeyedSubscript:@"X-Apple-I-Recovery-Session-Id"];
  if (v60)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v135->_custodianSessionID, v60);
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

  v57 = [v129 objectForKeyedSubscript:AKADPCohortHeaderKey];
  [(AKAuthenticationServerResponse *)v135 _updateADPCohortWithRawValue:v57];
  v18 = +[AKFeatureManager sharedManager];
  v19 = [v18 isBackgroundiCloudSignInEnabled];
  _objc_release(v18);
  if (v19)
  {
    v17 = [(NSMutableDictionary *)v135->_serviceTokens objectForKeyedSubscript:@"com.apple.gs.icloud.cloudkit.auth"];
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

    v16 = [(NSMutableDictionary *)v135->_serviceTokens objectForKeyedSubscript:@"com.apple.gs.icloud.escrow.auth"];
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

    v135->_canBackgroundiCloudSignIn = [(AKAuthenticationServerResponse *)v135 _shouldBackgroundiCloudSignIn];
  }

  [(AKAuthenticationServerResponse *)v135 reportCriticalAuthTokensTelemetryForFlow:2 withTokenGenerationInfo:0];
  objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v129 objectForKeyedSubscript:AKMDMInfoRequiredHeaderKey];
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
    v135->_isMdmInfoRequired = [v52 BOOLValue];
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
  objc_storeStrong(&v129, 0);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (void)_updateDSIDWithRawValue:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v8->_dsid, location[0]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AKAuthenticationServerResponse *)v8 _numberFormatter];
      v3 = [v5 numberFromString:location[0]];
      dsid = v8->_dsid;
      v8->_dsid = v3;
      _objc_release(dsid);
      _objc_release(v5);
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

- (void)_updateADPCohortWithRawValue:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B098(v9, AKADPCohortHeaderKey, v7->_adpCohort);
      _os_log_debug_impl(&_mh_execute_header, oslog, type, "%@ = %@", v9, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v7->_adpCohort, location[0]);
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

- (id)_decodeBase64String:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v17 = self;
  v16 = a2;
  v5 = [AKURLBag bagForAltDSID:0];
  v6 = [v5 isBackgroundiCloudSignInEnabled];
  _objc_release(v5);
  v15 = v6;
  v13 = 0;
  v11 = 0;
  v7 = 0;
  if (v6)
  {
    v14 = [(NSMutableDictionary *)v17->_serviceTokens objectForKeyedSubscript:@"com.apple.gs.icloud.cloudkit.auth"];
    v13 = 1;
    v7 = 0;
    if (v14)
    {
      v12 = [(NSMutableDictionary *)v17->_serviceTokens objectForKeyedSubscript:@"com.apple.gs.icloud.escrow.auth"];
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

- (void)reportCriticalAuthTokensTelemetryForFlow:(unint64_t)a3 withTokenGenerationInfo:(id)a4
{
  v31 = self;
  v30 = a2;
  v29 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v27 = +[AKAccountManager sharedInstance];
  v26 = [v27 authKitAccountWithAltDSID:v31->_altDSID error:0];
  if ([(AKAuthenticationServerResponse *)v31 shouldReportTokenGenerationMetricsWithTokenGenerationInfo:location])
  {
    v24 = [(AKToken *)v31->_passwordResetToken stringValue];
    v23 = [(AKToken *)v31->_continuationToken stringValue];
    v22 = 0;
    v21 = 0;
    v10 = objc_opt_class();
    v12 = [location objectForKeyedSubscript:@"ckgen"];
    v11 = sub_10002AEB8(v10, v12);
    v13 = [v11 BOOLValue];
    _objc_release(v11);
    _objc_release(v12);
    v20 = v13;
    v14 = objc_opt_class();
    v16 = [location objectForKeyedSubscript:@"prkgen"];
    v15 = sub_10002AEB8(v14, v16);
    v17 = [v15 BOOLValue];
    _objc_release(v15);
    _objc_release(v16);
    v19 = v17;
    if (v29 == 1)
    {
      v9 = 0;
      if (v20)
      {
        v9 = v23 == 0;
      }

      v22 = v9;
      v8 = 0;
      if (v19)
      {
        v8 = 0;
        if (!v24)
        {
          v8 = v20;
        }
      }

      v21 = v8 & 1;
    }

    else
    {
      v22 = v23 == 0;
      v21 = v24 == 0;
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

    v5 = [(AKAuthenticationServerResponse *)v31 heartbeatToken];
    v18 = [(AKToken *)v5 stringValue];
    _objc_release(v5);
    if (!v18)
    {
      v4 = [NSError ak_errorWithCode:-7118];
      [v27 _reportTokenWithTelemetryID:@"com.apple.authkit.token.hb.create" account:v26 telemetryFlowID:0 error:?];
      _objc_release(v4);
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
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

- (BOOL)shouldReportTokenGenerationMetricsWithTokenGenerationInfo:(id)a3
{
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v43->_errorCode)
  {
    v44 = 0;
    v41 = 1;
  }

  else if (v43->_isSecondaryActionRequired)
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

  else if (v43->_appleIDSecurityLevel == 4 || v43->_appleIDSecurityLevel == 5)
  {
    v16 = objc_opt_class();
    v18 = [location[0] objectForKeyedSubscript:AKEphemeralAuthKey];
    v17 = sub_10002AEB8(v16, v18);
    v19 = [v17 BOOLValue];
    _objc_release(v17);
    _objc_release(v18);
    v34 = v19;
    if (v19)
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
      v13 = [v11 BOOLValue];
      _objc_release(v11);
      _objc_release(v12);
      v30 = v13;
      if (v13)
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
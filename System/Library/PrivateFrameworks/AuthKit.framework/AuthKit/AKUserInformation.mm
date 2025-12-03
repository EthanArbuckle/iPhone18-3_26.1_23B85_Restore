@interface AKUserInformation
+ (BOOL)isFieldUpdateableForAccountWithAltDSID:(id)d fieldName:(id)name;
+ (id)_advancedSecurityFields;
+ (id)_ageFields;
+ (id)_coreIdentityFields;
+ (id)_emailFields;
+ (id)_featureFlagFields;
+ (id)_guitarfishFields;
+ (id)_managedFields;
+ (id)_securityFields;
+ (id)userInformationForUpdates;
- (AKUserInformation)initWithCoder:(id)coder;
- (AKUserInformation)initWithResponseBody:(id)body;
- (BOOL)hasUpdateableFieldsForAccountWithAltDSID:(id)d;
- (BOOL)validateForUpdatesWithContext:(id)context error:(id *)error;
- (NSNumber)silentBurnCDPRepairEnabled;
- (NSNumber)silentEscrowRecordRepairEnabled;
- (id)_getAdvancedSecurityFields;
- (id)_getAgeAndDemographicsFields;
- (id)_getCoreIdentityFields;
- (id)_getEmailFields;
- (id)_getFeatureFlagFields;
- (id)_getGuitarfishFields;
- (id)_getManagedAccountFields;
- (id)_getSecurityFields;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)sharedEmailForManagedAppleID;
- (id)updateableFieldNamesForAccountWithAltDSID:(id)d;
- (void)_parseBeneficiaryInfo:(id)info;
- (void)_parseCustodianInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
- (void)setSilentBurnCDPRepairEnabled:(id)enabled;
- (void)setSilentEscrowRecordRepairEnabled:(id)enabled;
@end

@implementation AKUserInformation

- (AKUserInformation)initWithResponseBody:(id)body
{
  v457 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, body);
  v3 = selfCopy;
  selfCopy = 0;
  v435.receiver = v3;
  v435.super_class = AKUserInformation;
  selfCopy = [(AKUserInformation *)&v435 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v434 = [location[0] objectForKeyedSubscript:@"ut"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v434 unsignedIntegerValue];
      selfCopy->_appleIDSecurityLevel = unsignedIntegerValue;
    }

    else
    {
      selfCopy->_appleIDSecurityLevel = 0;
    }

    v433 = [location[0] objectForKeyedSubscript:@"authmode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue2 = [v433 unsignedIntegerValue];
      selfCopy->_authMode = unsignedIntegerValue2;
    }

    else
    {
      selfCopy->_authMode = 0;
    }

    obj = [location[0] objectForKeyedSubscript:@"mdmInfoRequired"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_isMdmInfoRequired, obj);
    }

    else
    {
      objc_storeStrong(&selfCopy->_isMdmInfoRequired, 0);
    }

    v431 = [location[0] objectForKeyedSubscript:@"underAge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_isUnderage, v431);
    }

    else
    {
      objc_storeStrong(&selfCopy->_isUnderage, 0);
    }

    v430 = [location[0] objectForKeyedSubscript:@"isSiwaEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_isSiwaForChildEnabled, v430);
    }

    else
    {
      objc_storeStrong(&selfCopy->_isSiwaForChildEnabled, 0);
    }

    v429 = [location[0] objectForKeyedSubscript:@"userAgeRange"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue3 = [v429 unsignedIntegerValue];
      selfCopy->_userAgeRange = unsignedIntegerValue3;
    }

    else
    {
      selfCopy->_userAgeRange = 0;
    }

    v428 = [location[0] objectForKeyedSubscript:@"activeHMECount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_activeHMECount, v428);
    }

    else
    {
      objc_storeStrong(&selfCopy->_activeHMECount, 0);
    }

    v427 = [location[0] objectForKeyedSubscript:@"inActiveHMECount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_inActiveHMECount, v427);
    }

    else
    {
      objc_storeStrong(&selfCopy->_inActiveHMECount, 0);
    }

    v426 = [location[0] objectForKeyedSubscript:@"isSenior"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_isSenior, v426);
    }

    else
    {
      objc_storeStrong(&selfCopy->_isSenior, 0);
    }

    v425 = [location[0] objectForKeyedSubscript:@"ageOfMajority"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_ageOfMajority, v425);
    }

    else
    {
      objc_storeStrong(&selfCopy->_ageOfMajority, 0);
    }

    v424 = [location[0] objectForKeyedSubscript:@"studentAccount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_isLegacyStudent, v424);
    }

    else
    {
      objc_storeStrong(&selfCopy->_isLegacyStudent, 0);
    }

    v423 = [location[0] objectForKeyedSubscript:@"isEligibleForSafetyScreen"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_isEligibleForSafetyScreen, v423);
    }

    else
    {
      objc_storeStrong(&selfCopy->_isEligibleForSafetyScreen, 0);
    }

    v7 = [location[0] objectForKeyedSubscript:@"mkid"];
    masterKeyID = selfCopy->_masterKeyID;
    selfCopy->_masterKeyID = v7;
    MEMORY[0x1E69E5920](masterKeyID);
    v422 = [location[0] objectForKeyedSubscript:@"accountName"];
    if (v422)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_accountName, v422);
      }

      else
      {
        v418 = _AKLogSystem();
        v417 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v418, OS_LOG_TYPE_ERROR))
        {
          v235 = v418;
          v236 = v417;
          v9 = objc_opt_class();
          v237 = NSStringFromClass(v9);
          v416 = MEMORY[0x1E69E5928](v237);
          __os_log_helper_16_2_1_8_64(v456, v416);
          _os_log_error_impl(&dword_193225000, v235, v236, "Account name value has an invalid type: %@", v456, 0xCu);
          MEMORY[0x1E69E5920](v237);
          objc_storeStrong(&v416, 0);
        }

        objc_storeStrong(&v418, 0);
      }
    }

    else
    {
      oslog = _AKLogSystem();
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v239 = type;
        __os_log_helper_16_0_0(v419);
        _os_log_error_impl(&dword_193225000, log, v239, "Account name is missing.", v419, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v415 = [location[0] objectForKeyedSubscript:@"primaryEmail"];
    if (v415)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_primaryEmailAddress, v415);
      }

      else
      {
        v411 = _AKLogSystem();
        v410 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v411, OS_LOG_TYPE_ERROR))
        {
          v230 = v411;
          v231 = v410;
          v10 = objc_opt_class();
          v232 = NSStringFromClass(v10);
          v409 = MEMORY[0x1E69E5928](v232);
          __os_log_helper_16_2_1_8_64(v455, v409);
          _os_log_error_impl(&dword_193225000, v230, v231, "Primary email address value has an invalid type: %@", v455, 0xCu);
          MEMORY[0x1E69E5920](v232);
          objc_storeStrong(&v409, 0);
        }

        objc_storeStrong(&v411, 0);
      }
    }

    else
    {
      v414 = _AKLogSystem();
      v413 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v414, OS_LOG_TYPE_ERROR))
      {
        v233 = v414;
        v234 = v413;
        __os_log_helper_16_0_0(v412);
        _os_log_error_impl(&dword_193225000, v233, v234, "Primary email address is missing, probably MAKO account.", v412, 2u);
      }

      objc_storeStrong(&v414, 0);
    }

    v408 = [location[0] objectForKeyedSubscript:@"aliases"];
    if (v408)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v408 copy];
        accountAliases = selfCopy->_accountAliases;
        selfCopy->_accountAliases = v12;
        MEMORY[0x1E69E5920](accountAliases);
      }

      else
      {
        v404 = _AKLogSystem();
        v403 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v404, OS_LOG_TYPE_ERROR))
        {
          v225 = v404;
          v226 = v403;
          v11 = objc_opt_class();
          v227 = NSStringFromClass(v11);
          v402 = MEMORY[0x1E69E5928](v227);
          __os_log_helper_16_2_1_8_64(v454, v402);
          _os_log_error_impl(&dword_193225000, v225, v226, "Aliases array value has an invalid type: %@", v454, 0xCu);
          MEMORY[0x1E69E5920](v227);
          objc_storeStrong(&v402, 0);
        }

        objc_storeStrong(&v404, 0);
      }
    }

    else
    {
      v407 = _AKLogSystem();
      v406 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v407, OS_LOG_TYPE_DEBUG))
      {
        v228 = v407;
        v229 = v406;
        __os_log_helper_16_0_0(v405);
        _os_log_debug_impl(&dword_193225000, v228, v229, "No aliases.", v405, 2u);
      }

      objc_storeStrong(&v407, 0);
    }

    v401 = [location[0] objectForKeyedSubscript:@"additionalInfo"];
    if (v401)
    {
      v14 = [v401 copy];
      additionalInfo = selfCopy->_additionalInfo;
      selfCopy->_additionalInfo = v14;
      MEMORY[0x1E69E5920](additionalInfo);
    }

    else
    {
      v400 = _AKLogSystem();
      v399 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v400, OS_LOG_TYPE_DEBUG))
      {
        v223 = v400;
        v224 = v399;
        __os_log_helper_16_0_0(v398);
        _os_log_debug_impl(&dword_193225000, v223, v224, "No additional Info.", v398, 2u);
      }

      objc_storeStrong(&v400, 0);
    }

    v397 = [location[0] objectForKeyedSubscript:@"rep"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue4 = [v397 unsignedIntegerValue];
      selfCopy->_repairState = unsignedIntegerValue4;
    }

    else
    {
      selfCopy->_repairState = 0;
    }

    v396 = [location[0] objectForKeyedSubscript:@"firstName"];
    if (v396)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_givenName, v396);
      }

      else
      {
        v392 = _AKLogSystem();
        v391 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v392, OS_LOG_TYPE_ERROR))
        {
          v218 = v392;
          v219 = v391;
          v17 = objc_opt_class();
          v220 = NSStringFromClass(v17);
          v390 = MEMORY[0x1E69E5928](v220);
          __os_log_helper_16_2_1_8_64(v453, v390);
          _os_log_error_impl(&dword_193225000, v218, v219, "User given name name value has an invalid type: %@", v453, 0xCu);
          MEMORY[0x1E69E5920](v220);
          objc_storeStrong(&v390, 0);
        }

        objc_storeStrong(&v392, 0);
      }
    }

    else
    {
      v395 = _AKLogSystem();
      v394 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v395, OS_LOG_TYPE_ERROR))
      {
        v221 = v395;
        v222 = v394;
        __os_log_helper_16_0_0(v393);
        _os_log_error_impl(&dword_193225000, v221, v222, "User given name is missing.", v393, 2u);
      }

      objc_storeStrong(&v395, 0);
    }

    v389 = [location[0] objectForKeyedSubscript:@"lastName"];
    if (v389)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_familyName, v389);
      }

      else
      {
        v385 = _AKLogSystem();
        v384 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v385, OS_LOG_TYPE_ERROR))
        {
          v213 = v385;
          v214 = v384;
          v18 = objc_opt_class();
          v215 = NSStringFromClass(v18);
          v383 = MEMORY[0x1E69E5928](v215);
          __os_log_helper_16_2_1_8_64(v452, v383);
          _os_log_error_impl(&dword_193225000, v213, v214, "User family name value has an invalid type: %@", v452, 0xCu);
          MEMORY[0x1E69E5920](v215);
          objc_storeStrong(&v383, 0);
        }

        objc_storeStrong(&v385, 0);
      }
    }

    else
    {
      v388 = _AKLogSystem();
      v387 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v388, OS_LOG_TYPE_ERROR))
      {
        v216 = v388;
        v217 = v387;
        __os_log_helper_16_0_0(v386);
        _os_log_error_impl(&dword_193225000, v216, v217, "User family name is missing.", v386, 2u);
      }

      objc_storeStrong(&v388, 0);
    }

    v382 = [location[0] objectForKeyedSubscript:@"phoneAsAppleId"];
    if (v382)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_phoneAsAppleID, v382);
      }

      else
      {
        objc_storeStrong(&selfCopy->_phoneAsAppleID, 0);
        v378 = _AKLogSystem();
        v377 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v378, OS_LOG_TYPE_ERROR))
        {
          v208 = v378;
          v209 = v377;
          v19 = objc_opt_class();
          v210 = NSStringFromClass(v19);
          v376 = MEMORY[0x1E69E5928](v210);
          __os_log_helper_16_2_1_8_64(v451, v376);
          _os_log_error_impl(&dword_193225000, v208, v209, "Mako Account Identifier value has an invalid type: %@", v451, 0xCu);
          MEMORY[0x1E69E5920](v210);
          objc_storeStrong(&v376, 0);
        }

        objc_storeStrong(&v378, 0);
      }
    }

    else
    {
      v381 = _AKLogSystem();
      v380 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v381, OS_LOG_TYPE_DEBUG))
      {
        v211 = v381;
        v212 = v380;
        __os_log_helper_16_0_0(v379);
        _os_log_debug_impl(&dword_193225000, v211, v212, "Mako Account Identifier Missing", v379, 2u);
      }

      objc_storeStrong(&v381, 0);
    }

    v375 = [location[0] objectForKeyedSubscript:@"countryCode"];
    if (v375)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_appleIDCountryCode, v375);
      }

      else
      {
        v371 = _AKLogSystem();
        v370 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v371, OS_LOG_TYPE_ERROR))
        {
          v203 = v371;
          v204 = v370;
          v20 = objc_opt_class();
          v205 = NSStringFromClass(v20);
          v369 = MEMORY[0x1E69E5928](v205);
          __os_log_helper_16_2_1_8_64(v450, v369);
          _os_log_error_impl(&dword_193225000, v203, v204, "User apple id country code value has an invalid type: %@", v450, 0xCu);
          MEMORY[0x1E69E5920](v205);
          objc_storeStrong(&v369, 0);
        }

        objc_storeStrong(&v371, 0);
      }
    }

    else
    {
      v374 = _AKLogSystem();
      v373 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v374, OS_LOG_TYPE_ERROR))
      {
        v206 = v374;
        v207 = v373;
        __os_log_helper_16_0_0(v372);
        _os_log_error_impl(&dword_193225000, v206, v207, "User Apple ID country code is missing.", v372, 2u);
      }

      objc_storeStrong(&v374, 0);
    }

    v368 = [location[0] objectForKeyedSubscript:@"appleIdSignInEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_hasUsedAuthorization, v368);
    }

    else
    {
      objc_storeStrong(&selfCopy->_hasUsedAuthorization, 0);
    }

    v367 = [location[0] objectForKeyedSubscript:@"privateAttestationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_privateAttestationEnabled, v367);
    }

    else
    {
      objc_storeStrong(&selfCopy->_privateAttestationEnabled, 0);
    }

    v366 = [location[0] objectForKeyedSubscript:@"primaryEmailVetted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_vettedPrimaryEmail, v366);
    }

    else
    {
      v365 = _AKLogSystem();
      v364 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v365, OS_LOG_TYPE_DEBUG))
      {
        v201 = v365;
        v202 = v364;
        __os_log_helper_16_0_0(v363);
        _os_log_debug_impl(&dword_193225000, v201, v202, "User vetted primary email is missing, Possibly unverified or Mako Account.", v363, 2u);
      }

      objc_storeStrong(&v365, 0);
      objc_storeStrong(&selfCopy->_vettedPrimaryEmail, 0);
    }

    v362 = [location[0] objectForKeyedSubscript:@"reachableEmails"];
    if (v362)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v362 copy];
        reachableEmails = selfCopy->_reachableEmails;
        selfCopy->_reachableEmails = v22;
        MEMORY[0x1E69E5920](reachableEmails);
      }

      else
      {
        v358 = _AKLogSystem();
        v357 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v358, OS_LOG_TYPE_ERROR))
        {
          v196 = v358;
          v197 = v357;
          v21 = objc_opt_class();
          v198 = NSStringFromClass(v21);
          v356 = MEMORY[0x1E69E5928](v198);
          __os_log_helper_16_2_1_8_64(v449, v356);
          _os_log_error_impl(&dword_193225000, v196, v197, "User reachable emails value has an invalid type: %@", v449, 0xCu);
          MEMORY[0x1E69E5920](v198);
          objc_storeStrong(&v356, 0);
        }

        objc_storeStrong(&v358, 0);
      }
    }

    else
    {
      v361 = _AKLogSystem();
      v360 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v361, OS_LOG_TYPE_DEBUG))
      {
        v199 = v361;
        v200 = v360;
        __os_log_helper_16_0_0(v359);
        _os_log_debug_impl(&dword_193225000, v199, v200, "No reachable emails for account", v359, 2u);
      }

      objc_storeStrong(&v361, 0);
    }

    v355 = [location[0] objectForKeyedSubscript:@"hsa2Phones"];
    if ([v355 count])
    {
      v24 = [v355 copy];
      trustedPhoneNumbers = selfCopy->_trustedPhoneNumbers;
      selfCopy->_trustedPhoneNumbers = v24;
      MEMORY[0x1E69E5920](trustedPhoneNumbers);
    }

    else
    {
      v354 = _AKLogSystem();
      v353 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v354, OS_LOG_TYPE_DEBUG))
      {
        v194 = v354;
        v195 = v353;
        __os_log_helper_16_0_0(v352);
        _os_log_debug_impl(&dword_193225000, v194, v195, "No trusted phone numbers for account.", v352, 2u);
      }

      objc_storeStrong(&v354, 0);
    }

    v351 = [location[0] objectForKeyedSubscript:@"securityKeys"];
    if ([v351 count])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v351 copy];
        securityKeys = selfCopy->_securityKeys;
        selfCopy->_securityKeys = v27;
        MEMORY[0x1E69E5920](securityKeys);
      }

      else
      {
        v347 = _AKLogSystem();
        v346 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
        {
          v189 = v347;
          v190 = v346;
          v26 = objc_opt_class();
          v191 = NSStringFromClass(v26);
          v345 = MEMORY[0x1E69E5928](v191);
          __os_log_helper_16_2_1_8_64(v448, v345);
          _os_log_error_impl(&dword_193225000, v189, v190, "Security Keys value has an invalid type: %@", v448, 0xCu);
          MEMORY[0x1E69E5920](v191);
          objc_storeStrong(&v345, 0);
        }

        objc_storeStrong(&v347, 0);
      }
    }

    else
    {
      v350 = _AKLogSystem();
      v349 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v350, OS_LOG_TYPE_DEBUG))
      {
        v192 = v350;
        v193 = v349;
        __os_log_helper_16_0_0(v348);
        _os_log_debug_impl(&dword_193225000, v192, v193, "No security keys for account.", v348, 2u);
      }

      objc_storeStrong(&v350, 0);
    }

    v344 = [location[0] objectForKeyedSubscript:@"loginHandles"];
    if ([v344 count])
    {
      v29 = [v344 copy];
      loginHandles = selfCopy->_loginHandles;
      selfCopy->_loginHandles = v29;
      MEMORY[0x1E69E5920](loginHandles);
    }

    else
    {
      v343 = _AKLogSystem();
      v342 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v343, OS_LOG_TYPE_DEBUG))
      {
        v187 = v343;
        v188 = v342;
        __os_log_helper_16_0_0(v341);
        _os_log_debug_impl(&dword_193225000, v187, v188, "No login handles for account.", v341, 2u);
      }

      objc_storeStrong(&v343, 0);
    }

    v340 = [location[0] objectForKeyedSubscript:@"forwardTo"];
    if (v340)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_forwardingEmail, v340);
      }

      else
      {
        v336 = _AKLogSystem();
        v335 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v336, OS_LOG_TYPE_ERROR))
        {
          v182 = v336;
          v183 = v335;
          v31 = objc_opt_class();
          v184 = NSStringFromClass(v31);
          v334 = MEMORY[0x1E69E5928](v184);
          __os_log_helper_16_2_1_8_64(v447, v334);
          _os_log_error_impl(&dword_193225000, v182, v183, "Forwarding email value has an invalid type: %@", v447, 0xCu);
          MEMORY[0x1E69E5920](v184);
          objc_storeStrong(&v334, 0);
        }

        objc_storeStrong(&v336, 0);
      }
    }

    else
    {
      v339 = _AKLogSystem();
      v338 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v339, OS_LOG_TYPE_DEBUG))
      {
        v185 = v339;
        v186 = v338;
        __os_log_helper_16_0_0(v337);
        _os_log_debug_impl(&dword_193225000, v185, v186, "No Forwarding email set for this account", v337, 2u);
      }

      objc_storeStrong(&v339, 0);
    }

    v333 = [location[0] objectForKeyedSubscript:@"previouslySelectedAsPrivateEmail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_previouslyWantedPrivateEmail, v333);
    }

    else
    {
      objc_storeStrong(&selfCopy->_previouslyWantedPrivateEmail, 0);
    }

    v332 = [location[0] objectForKeyedSubscript:@"previouslySelectedEmail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_previouslySelectedEmail, v332);
    }

    else
    {
      v331 = _AKLogSystem();
      v330 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v331, OS_LOG_TYPE_ERROR))
      {
        v179 = v331;
        v180 = v330;
        v32 = objc_opt_class();
        v181 = NSStringFromClass(v32);
        v329 = MEMORY[0x1E69E5928](v181);
        __os_log_helper_16_2_1_8_64(v446, v329);
        _os_log_error_impl(&dword_193225000, v179, v180, "Previously selected email value has an invalid type: %@", v446, 0xCu);
        MEMORY[0x1E69E5920](v181);
        objc_storeStrong(&v329, 0);
      }

      objc_storeStrong(&v331, 0);
    }

    v328 = [location[0] objectForKeyedSubscript:@"authorizedAppListVersion"];
    if (v328)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_authorizedApplicationsListVersion, v328);
      }

      else
      {
        v324 = _AKLogSystem();
        v323 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v324, OS_LOG_TYPE_ERROR))
        {
          v174 = v324;
          v175 = v323;
          v33 = objc_opt_class();
          v176 = NSStringFromClass(v33);
          v322 = MEMORY[0x1E69E5928](v176);
          __os_log_helper_16_2_1_8_64(v445, v322);
          _os_log_error_impl(&dword_193225000, v174, v175, "Authorized applications list version value has an invalid type: %@", v445, 0xCu);
          MEMORY[0x1E69E5920](v176);
          objc_storeStrong(&v322, 0);
        }

        objc_storeStrong(&v324, 0);
      }
    }

    else
    {
      v327 = _AKLogSystem();
      v326 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v327, OS_LOG_TYPE_DEBUG))
      {
        v177 = v327;
        v178 = v326;
        __os_log_helper_16_0_0(v325);
        _os_log_debug_impl(&dword_193225000, v177, v178, "No authorized applications list version set for this account", v325, 2u);
      }

      objc_storeStrong(&v327, 0);
    }

    v321 = [location[0] objectForKeyedSubscript:@"hmeListVersion"];
    if (v321)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_privateEmailListVersion, v321);
      }

      else
      {
        v317 = _AKLogSystem();
        v316 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v317, OS_LOG_TYPE_ERROR))
        {
          v169 = v317;
          v170 = v316;
          v34 = objc_opt_class();
          v171 = NSStringFromClass(v34);
          v315 = MEMORY[0x1E69E5928](v171);
          __os_log_helper_16_2_1_8_64(v444, v315);
          _os_log_error_impl(&dword_193225000, v169, v170, "Private email list version value has an invalid type: %@", v444, 0xCu);
          MEMORY[0x1E69E5920](v171);
          objc_storeStrong(&v315, 0);
        }

        objc_storeStrong(&v317, 0);
      }
    }

    else
    {
      v320 = _AKLogSystem();
      v319 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
      {
        v172 = v320;
        v173 = v319;
        __os_log_helper_16_0_0(v318);
        _os_log_impl(&dword_193225000, v172, v173, "No private email list version set for this account", v318, 2u);
      }

      objc_storeStrong(&v320, 0);
    }

    v314 = [location[0] objectForKeyedSubscript:@"canBeCustodian"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_canBeCustodian, v314);
    }

    else
    {
      v313 = _AKLogSystem();
      v312 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v313, OS_LOG_TYPE_DEBUG))
      {
        v167 = v313;
        v168 = v312;
        __os_log_helper_16_0_0(v311);
        _os_log_debug_impl(&dword_193225000, v167, v168, "CanBeCustodian is missing.", v311, 2u);
      }

      objc_storeStrong(&v313, 0);
    }

    v310 = [location[0] objectForKeyedSubscript:@"canHaveCustodian"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_canHaveCustodian, v310);
    }

    else
    {
      v309 = _AKLogSystem();
      v308 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v309, OS_LOG_TYPE_DEBUG))
      {
        v165 = v309;
        v166 = v308;
        __os_log_helper_16_0_0(v307);
        _os_log_debug_impl(&dword_193225000, v165, v166, "CanHaveCustodian is missing.", v307, 2u);
      }

      objc_storeStrong(&v309, 0);
    }

    v306 = [location[0] objectForKeyedSubscript:@"custodianEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_custodianEnabled, v306);
    }

    else
    {
      v305 = _AKLogSystem();
      v304 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v305, OS_LOG_TYPE_DEBUG))
      {
        v163 = v305;
        v164 = v304;
        __os_log_helper_16_0_0(v303);
        _os_log_debug_impl(&dword_193225000, v163, v164, "custodianEnabled is missing.", v303, 2u);
      }

      objc_storeStrong(&v305, 0);
    }

    v302 = [location[0] objectForKeyedSubscript:@"custodianLastUpdateDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_custodianLastModified, v302);
    }

    else
    {
      v301 = _AKLogSystem();
      v300 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v301, OS_LOG_TYPE_DEBUG))
      {
        v161 = v301;
        v162 = v300;
        __os_log_helper_16_0_0(v299);
        _os_log_debug_impl(&dword_193225000, v161, v162, "CustodianLastModified is missing or has invalid type.", v299, 2u);
      }

      objc_storeStrong(&v301, 0);
    }

    v298 = [location[0] objectForKeyedSubscript:@"canBeBeneficiary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_canBeBeneficiary, v298);
    }

    else
    {
      v297 = _AKLogSystem();
      v296 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v297, OS_LOG_TYPE_DEBUG))
      {
        v159 = v297;
        v160 = v296;
        __os_log_helper_16_0_0(v295);
        _os_log_debug_impl(&dword_193225000, v159, v160, "canBeBeneficiary is missing.", v295, 2u);
      }

      objc_storeStrong(&v297, 0);
    }

    v294 = [location[0] objectForKeyedSubscript:@"canHaveBeneficiary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_canHaveBeneficiary, v294);
    }

    else
    {
      v293 = _AKLogSystem();
      v292 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v293, OS_LOG_TYPE_DEBUG))
      {
        v157 = v293;
        v158 = v292;
        __os_log_helper_16_0_0(v291);
        _os_log_debug_impl(&dword_193225000, v157, v158, "canHaveBeneficiary is missing.", v291, 2u);
      }

      objc_storeStrong(&v293, 0);
    }

    v290 = [location[0] objectForKeyedSubscript:@"beneficiaryLastUpdateDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_beneficiaryLastModified, v290);
    }

    else
    {
      v289 = _AKLogSystem();
      v288 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v289, OS_LOG_TYPE_DEBUG))
      {
        v155 = v289;
        v156 = v288;
        __os_log_helper_16_0_0(v287);
        _os_log_debug_impl(&dword_193225000, v155, v156, "beneficiaryLastModified is missing or has invalid type.", v287, 2u);
      }

      objc_storeStrong(&v289, 0);
    }

    v286 = [location[0] objectForKeyedSubscript:@"appleManagedAccount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_hasMDM, v286);
    }

    else
    {
      v285 = _AKLogSystem();
      v284 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v285, OS_LOG_TYPE_DEBUG))
      {
        v153 = v285;
        v154 = v284;
        __os_log_helper_16_0_0(v283);
        _os_log_debug_impl(&dword_193225000, v153, v154, "hasMDM is missing.", v283, 2u);
      }

      objc_storeStrong(&v285, 0);
    }

    v282 = [location[0] objectForKeyedSubscript:@"orgType"];
    if (v282)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v282 isEqual:@"EDU"])
        {
          objc_storeStrong(&selfCopy->_managedOrganizationType, &unk_1F07B50C0);
        }

        else if ([v282 isEqual:@"ENT"])
        {
          objc_storeStrong(&selfCopy->_managedOrganizationType, &unk_1F07B50D8);
        }

        else
        {
          v278 = _AKLogSystem();
          v277 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v278, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v442, v282);
            _os_log_error_impl(&dword_193225000, v278, v277, "Managed organization type has an invalid value: %@", v442, 0xCu);
          }

          objc_storeStrong(&v278, 0);
          objc_storeStrong(&selfCopy->_managedOrganizationType, &unk_1F07B50F0);
        }
      }

      else
      {
        v281 = _AKLogSystem();
        v280 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
        {
          v150 = v281;
          v151 = v280;
          v35 = objc_opt_class();
          v152 = NSStringFromClass(v35);
          v279 = MEMORY[0x1E69E5928](v152);
          __os_log_helper_16_2_1_8_64(v443, v279);
          _os_log_error_impl(&dword_193225000, v150, v151, "Managed organization type value has an invalid type: %@", v443, 0xCu);
          MEMORY[0x1E69E5920](v152);
          objc_storeStrong(&v279, 0);
        }

        objc_storeStrong(&v281, 0);
      }
    }

    v276 = [location[0] objectForKeyedSubscript:@"orgName"];
    if (v282)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_managedOrganizationName, v276);
      }

      else
      {
        v275 = _AKLogSystem();
        v274 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
        {
          v147 = v275;
          v148 = v274;
          v36 = objc_opt_class();
          v149 = NSStringFromClass(v36);
          v273 = MEMORY[0x1E69E5928](v149);
          __os_log_helper_16_2_1_8_64(v441, v273);
          _os_log_error_impl(&dword_193225000, v147, v148, "Managed organization name value has an invalid type: %@", v441, 0xCu);
          MEMORY[0x1E69E5920](v149);
          objc_storeStrong(&v273, 0);
        }

        objc_storeStrong(&v275, 0);
      }
    }

    v272 = [location[0] objectForKeyedSubscript:@"notificationEmailAvailable"];
    if (v272)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_isNotificationEmailAvailable, v272);
      }

      else
      {
        v271 = _AKLogSystem();
        v270 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
        {
          v144 = v271;
          v145 = v270;
          v37 = objc_opt_class();
          v146 = NSStringFromClass(v37);
          v269 = MEMORY[0x1E69E5928](v146);
          __os_log_helper_16_2_1_8_64(v440, v269);
          _os_log_error_impl(&dword_193225000, v144, v145, "Managed organization isNotificationEmailAvailable value has an invalid type: %@", v440, 0xCu);
          MEMORY[0x1E69E5920](v146);
          objc_storeStrong(&v269, 0);
        }

        objc_storeStrong(&v271, 0);
      }
    }

    v268 = [location[0] objectForKeyedSubscript:@"notificationEmail"];
    if (v268)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_notificationEmail, v268);
      }

      else
      {
        v267 = _AKLogSystem();
        v266 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
        {
          v141 = v267;
          v142 = v266;
          v38 = objc_opt_class();
          v143 = NSStringFromClass(v38);
          v265 = MEMORY[0x1E69E5928](v143);
          __os_log_helper_16_2_1_8_64(v439, v265);
          _os_log_error_impl(&dword_193225000, v141, v142, "Managed organization notificationEmail value has an invalid type: %@", v439, 0xCu);
          MEMORY[0x1E69E5920](v143);
          objc_storeStrong(&v265, 0);
        }

        objc_storeStrong(&v267, 0);
      }
    }

    v264 = [location[0] objectForKeyedSubscript:@"isProximityAuthEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_isProximityAuthEligible, v264);
    }

    else
    {
      v263 = _AKLogSystem();
      v262 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v263, OS_LOG_TYPE_DEBUG))
      {
        v139 = v263;
        v140 = v262;
        __os_log_helper_16_0_0(v261);
        _os_log_debug_impl(&dword_193225000, v139, v140, "isProximityAuthEligible is missing.", v261, 2u);
      }

      objc_storeStrong(&v263, 0);
      objc_storeStrong(&selfCopy->_isProximityAuthEligible, 0);
    }

    v260 = _AKLogSystem();
    v259 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG))
    {
      v137 = v260;
      v138 = v259;
      __os_log_helper_16_0_0(v258);
      _os_log_debug_impl(&dword_193225000, v137, v138, "Parsing custodianInfo.", v258, 2u);
    }

    objc_storeStrong(&v260, 0);
    [(AKUserInformation *)selfCopy _parseCustodianInfo:location[0]];
    v257 = _AKLogSystem();
    v256 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v257, OS_LOG_TYPE_DEBUG))
    {
      v135 = v257;
      v136 = v256;
      __os_log_helper_16_0_0(v255);
      _os_log_debug_impl(&dword_193225000, v135, v136, "Parsing beneficiaryInfo.", v255, 2u);
    }

    objc_storeStrong(&v257, 0);
    [(AKUserInformation *)selfCopy _parseBeneficiaryInfo:location[0]];
    v120 = objc_opt_class();
    v121 = [location[0] objectForKeyedSubscript:@"webAccessEnabled"];
    v39 = _AKSafeCast_25(v120, v121);
    webAccessEnabled = selfCopy->_webAccessEnabled;
    selfCopy->_webAccessEnabled = v39;
    MEMORY[0x1E69E5920](webAccessEnabled);
    MEMORY[0x1E69E5920](v121);
    v122 = objc_opt_class();
    v123 = [location[0] objectForKeyedSubscript:@"serverExperimentalFeatures"];
    v41 = _AKSafeCast_25(v122, v123);
    serverExperimentalFeatures = selfCopy->_serverExperimentalFeatures;
    selfCopy->_serverExperimentalFeatures = v41;
    MEMORY[0x1E69E5920](serverExperimentalFeatures);
    MEMORY[0x1E69E5920](v123);
    v124 = objc_opt_class();
    v125 = [location[0] objectForKeyedSubscript:@"passkeyEligible"];
    v43 = _AKSafeCast_25(v124, v125);
    passkeyEligible = selfCopy->_passkeyEligible;
    selfCopy->_passkeyEligible = v43;
    MEMORY[0x1E69E5920](passkeyEligible);
    MEMORY[0x1E69E5920](v125);
    v126 = objc_opt_class();
    v127 = [location[0] objectForKeyedSubscript:@"passkeyPresent"];
    v45 = _AKSafeCast_25(v126, v127);
    passkeyPresent = selfCopy->_passkeyPresent;
    selfCopy->_passkeyPresent = v45;
    MEMORY[0x1E69E5920](passkeyPresent);
    MEMORY[0x1E69E5920](v127);
    v128 = objc_opt_class();
    v129 = [location[0] objectForKeyedSubscript:@"groupkitEligibilityInd"];
    v47 = _AKSafeCast_25(v128, v129);
    groupKitEligibility = selfCopy->_groupKitEligibility;
    selfCopy->_groupKitEligibility = v47;
    MEMORY[0x1E69E5920](groupKitEligibility);
    MEMORY[0x1E69E5920](v129);
    v130 = objc_opt_class();
    v131 = [location[0] objectForKeyedSubscript:@"passcodeAuthEnabled"];
    v49 = _AKSafeCast_25(v130, v131);
    passcodeAuthEnabled = selfCopy->_passcodeAuthEnabled;
    selfCopy->_passcodeAuthEnabled = v49;
    MEMORY[0x1E69E5920](passcodeAuthEnabled);
    MEMORY[0x1E69E5920](v131);
    v132 = objc_opt_class();
    v133 = [location[0] objectForKeyedSubscript:@"askToBuy"];
    v51 = _AKSafeCast_25(v132, v133);
    askToBuy = selfCopy->_askToBuy;
    selfCopy->_askToBuy = v51;
    MEMORY[0x1E69E5920](askToBuy);
    MEMORY[0x1E69E5920](v133);
    v134 = [location[0] objectForKeyedSubscript:@"SOSCompatibilityOptInNeeded"];
    v253 = 0;
    v251 = 0;
    v249 = 0;
    v247 = 0;
    if (v134)
    {
      v119 = objc_opt_class();
      v254 = [location[0] objectForKeyedSubscript:@"SOSCompatibilityOptInNeeded"];
      v253 = 1;
      v252 = _AKSafeCast_25(v119, v254);
      v251 = 1;
      objc_storeStrong(&selfCopy->_hasSOSActiveDevice, v252);
    }

    else
    {
      v118 = objc_opt_class();
      v250 = [location[0] objectForKeyedSubscript:@"hasSOSActiveDevice"];
      v249 = 1;
      v248 = _AKSafeCast_25(v118, v250);
      v247 = 1;
      objc_storeStrong(&selfCopy->_hasSOSActiveDevice, v248);
    }

    if (v247)
    {
      MEMORY[0x1E69E5920](v248);
    }

    if (v249)
    {
      MEMORY[0x1E69E5920](v250);
    }

    if (v251)
    {
      MEMORY[0x1E69E5920](v252);
    }

    if (v253)
    {
      MEMORY[0x1E69E5920](v254);
    }

    MEMORY[0x1E69E5920](v134);
    v106 = objc_opt_class();
    v107 = [location[0] objectForKeyedSubscript:@"SOSNeeded"];
    v53 = _AKSafeCast_25(v106, v107);
    SOSNeeded = selfCopy->_SOSNeeded;
    selfCopy->_SOSNeeded = v53;
    MEMORY[0x1E69E5920](SOSNeeded);
    MEMORY[0x1E69E5920](v107);
    v108 = objc_opt_class();
    v109 = [location[0] objectForKeyedSubscript:@"deviceListVersion"];
    v55 = _AKSafeCast_25(v108, v109);
    deviceListVersion = selfCopy->_deviceListVersion;
    selfCopy->_deviceListVersion = v55;
    MEMORY[0x1E69E5920](deviceListVersion);
    MEMORY[0x1E69E5920](v109);
    v110 = objc_opt_class();
    v111 = [location[0] objectForKeyedSubscript:@"yob"];
    v57 = _AKSafeCast_25(v110, v111);
    birthYear = selfCopy->_birthYear;
    selfCopy->_birthYear = v57;
    MEMORY[0x1E69E5920](birthYear);
    MEMORY[0x1E69E5920](v111);
    v112 = objc_opt_class();
    v113 = [location[0] objectForKeyedSubscript:@"birthMM"];
    v59 = _AKSafeCast_25(v112, v113);
    birthMonth = selfCopy->_birthMonth;
    selfCopy->_birthMonth = v59;
    MEMORY[0x1E69E5920](birthMonth);
    MEMORY[0x1E69E5920](v113);
    v114 = objc_opt_class();
    v115 = [location[0] objectForKeyedSubscript:@"birthDD"];
    v61 = _AKSafeCast_25(v114, v115);
    birthDay = selfCopy->_birthDay;
    selfCopy->_birthDay = v61;
    MEMORY[0x1E69E5920](birthDay);
    MEMORY[0x1E69E5920](v115);
    v116 = objc_opt_class();
    v117 = [location[0] objectForKeyedSubscript:@"parentalAgeConsent"];
    v63 = _AKSafeCast_25(v116, v117);
    canAttestAge = selfCopy->_canAttestAge;
    selfCopy->_canAttestAge = v63;
    MEMORY[0x1E69E5920](canAttestAge);
    MEMORY[0x1E69E5920](v117);
    v246 = [location[0] objectForKeyedSubscript:@"configDataVersion"];
    if (v246)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&selfCopy->_configDataVersion, v246);
      }

      else
      {
        v242 = _AKLogSystem();
        v241 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
        {
          v101 = v242;
          v102 = v241;
          v65 = objc_opt_class();
          v103 = NSStringFromClass(v65);
          v240 = MEMORY[0x1E69E5928](v103);
          __os_log_helper_16_2_1_8_64(v438, v240);
          _os_log_error_impl(&dword_193225000, v101, v102, "Config data version value has an invalid type: %@", v438, 0xCu);
          MEMORY[0x1E69E5920](v103);
          objc_storeStrong(&v240, 0);
        }

        objc_storeStrong(&v242, 0);
      }
    }

    else
    {
      v245 = _AKLogSystem();
      v244 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
      {
        v104 = v245;
        v105 = v244;
        __os_log_helper_16_0_0(v243);
        _os_log_impl(&dword_193225000, v104, v105, "No config data version set for this account", v243, 2u);
      }

      objc_storeStrong(&v245, 0);
    }

    v90 = objc_opt_class();
    v91 = [location[0] objectForKeyedSubscript:@"hasRK"];
    v66 = _AKSafeCast_25(v90, v91);
    hasModernRecoveryKey = selfCopy->_hasModernRecoveryKey;
    selfCopy->_hasModernRecoveryKey = v66;
    MEMORY[0x1E69E5920](hasModernRecoveryKey);
    MEMORY[0x1E69E5920](v91);
    v92 = objc_opt_class();
    v93 = [location[0] objectForKeyedSubscript:@"3PRegulatoryOverride"];
    v68 = _AKSafeCast_25(v92, v93);
    thirdPartyRegulatoryOverride = selfCopy->_thirdPartyRegulatoryOverride;
    selfCopy->_thirdPartyRegulatoryOverride = v68;
    MEMORY[0x1E69E5920](thirdPartyRegulatoryOverride);
    MEMORY[0x1E69E5920](v93);
    v94 = objc_opt_class();
    v95 = [location[0] objectForKeyedSubscript:@"isCriticalAccountEditAllowed"];
    v70 = _AKSafeCast_25(v94, v95);
    criticalAccountEditsAllowed = selfCopy->_criticalAccountEditsAllowed;
    selfCopy->_criticalAccountEditsAllowed = v70;
    MEMORY[0x1E69E5920](criticalAccountEditsAllowed);
    MEMORY[0x1E69E5920](v95);
    v96 = objc_opt_class();
    v97 = [location[0] objectForKeyedSubscript:@"adpCh"];
    v72 = _AKSafeCast_25(v96, v97);
    adpCohort = selfCopy->_adpCohort;
    selfCopy->_adpCohort = v72;
    MEMORY[0x1E69E5920](adpCohort);
    MEMORY[0x1E69E5920](v97);
    v98 = objc_opt_class();
    v99 = [location[0] objectForKeyedSubscript:@"adpBlockMode"];
    v74 = _AKSafeCast_25(v98, v99);
    adpBlockMode = selfCopy->_adpBlockMode;
    selfCopy->_adpBlockMode = v74;
    MEMORY[0x1E69E5920](adpBlockMode);
    MEMORY[0x1E69E5920](v99);
    v100 = [location[0] objectForKeyedSubscript:@"pbae"];
    MEMORY[0x1E69E5920](v100);
    if (v100)
    {
      v88 = objc_opt_class();
      v89 = [location[0] objectForKeyedSubscript:@"pbae"];
      v76 = _AKSafeCast_25(v88, v89);
      piggybackingApprovalEligible = selfCopy->_piggybackingApprovalEligible;
      selfCopy->_piggybackingApprovalEligible = v76;
      MEMORY[0x1E69E5920](piggybackingApprovalEligible);
      MEMORY[0x1E69E5920](v89);
    }

    v84 = objc_opt_class();
    v85 = [location[0] objectForKeyedSubscript:@"ageMigrationEligible"];
    v78 = _AKSafeCast_25(v84, v85);
    isEligibleToMigrateToChild = selfCopy->_isEligibleToMigrateToChild;
    selfCopy->_isEligibleToMigrateToChild = v78;
    MEMORY[0x1E69E5920](isEligibleToMigrateToChild);
    MEMORY[0x1E69E5920](v85);
    v86 = objc_opt_class();
    v87 = [location[0] objectForKeyedSubscript:@"idmsWalrusStatus"];
    v80 = _AKSafeCast_25(v86, v87);
    idmsWalrusStatus = selfCopy->_idmsWalrusStatus;
    selfCopy->_idmsWalrusStatus = v80;
    MEMORY[0x1E69E5920](idmsWalrusStatus);
    MEMORY[0x1E69E5920](v87);
    objc_storeStrong(&v246, 0);
    objc_storeStrong(&v264, 0);
    objc_storeStrong(&v268, 0);
    objc_storeStrong(&v272, 0);
    objc_storeStrong(&v276, 0);
    objc_storeStrong(&v282, 0);
    objc_storeStrong(&v286, 0);
    objc_storeStrong(&v290, 0);
    objc_storeStrong(&v294, 0);
    objc_storeStrong(&v298, 0);
    objc_storeStrong(&v302, 0);
    objc_storeStrong(&v306, 0);
    objc_storeStrong(&v310, 0);
    objc_storeStrong(&v314, 0);
    objc_storeStrong(&v321, 0);
    objc_storeStrong(&v328, 0);
    objc_storeStrong(&v332, 0);
    objc_storeStrong(&v333, 0);
    objc_storeStrong(&v340, 0);
    objc_storeStrong(&v344, 0);
    objc_storeStrong(&v351, 0);
    objc_storeStrong(&v355, 0);
    objc_storeStrong(&v362, 0);
    objc_storeStrong(&v366, 0);
    objc_storeStrong(&v367, 0);
    objc_storeStrong(&v368, 0);
    objc_storeStrong(&v375, 0);
    objc_storeStrong(&v382, 0);
    objc_storeStrong(&v389, 0);
    objc_storeStrong(&v396, 0);
    objc_storeStrong(&v397, 0);
    objc_storeStrong(&v401, 0);
    objc_storeStrong(&v408, 0);
    objc_storeStrong(&v415, 0);
    objc_storeStrong(&v422, 0);
    objc_storeStrong(&v423, 0);
    objc_storeStrong(&v424, 0);
    objc_storeStrong(&v425, 0);
    objc_storeStrong(&v426, 0);
    objc_storeStrong(&v427, 0);
    objc_storeStrong(&v428, 0);
    objc_storeStrong(&v429, 0);
    objc_storeStrong(&v430, 0);
    objc_storeStrong(&v431, 0);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v433, 0);
    objc_storeStrong(&v434, 0);
  }

  v83 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x1E69E9840];
  return v83;
}

- (AKUserInformation)initWithCoder:(id)coder
{
  v327 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v329.receiver = v3;
  v329.super_class = AKUserInformation;
  v328 = [(AKUserInformation *)&v329 init];
  selfCopy = v328;
  objc_storeStrong(&selfCopy, v328);
  if (v328)
  {
    v225 = location[0];
    v312 = 0x1E696A000uLL;
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_givenName"];
    givenName = selfCopy->_givenName;
    selfCopy->_givenName = v4;
    MEMORY[0x1E69E5920](givenName);
    v226 = location[0];
    v6 = *(v312 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_familyName"];
    familyName = selfCopy->_familyName;
    selfCopy->_familyName = v7;
    MEMORY[0x1E69E5920](familyName);
    v227 = location[0];
    v9 = *(v312 + 3776);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_forwardingEmail"];
    forwardingEmail = selfCopy->_forwardingEmail;
    selfCopy->_forwardingEmail = v10;
    MEMORY[0x1E69E5920](forwardingEmail);
    v228 = location[0];
    v12 = *(v312 + 3776);
    v13 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_primaryEmailAddress"];
    primaryEmailAddress = selfCopy->_primaryEmailAddress;
    selfCopy->_primaryEmailAddress = v13;
    MEMORY[0x1E69E5920](primaryEmailAddress);
    v229 = location[0];
    v15 = *(v312 + 3776);
    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_accountName"];
    accountName = selfCopy->_accountName;
    selfCopy->_accountName = v16;
    MEMORY[0x1E69E5920](accountName);
    v232 = location[0];
    v295 = 0x1E695D000uLL;
    v231 = MEMORY[0x1E695DFD8];
    v296 = 0x1E695D000uLL;
    v230 = objc_opt_class();
    v18 = *(v312 + 3776);
    v233 = [v231 setWithObjects:{v230, objc_opt_class(), 0}];
    v19 = [v232 decodeObjectOfClasses:? forKey:?];
    accountAliases = selfCopy->_accountAliases;
    selfCopy->_accountAliases = v19;
    MEMORY[0x1E69E5920](accountAliases);
    MEMORY[0x1E69E5920](v233);
    v236 = location[0];
    v235 = *(v295 + 4056);
    v21 = *(v296 + 3784);
    v234 = objc_opt_class();
    v22 = *(v312 + 3776);
    v237 = [v235 setWithObjects:{v234, objc_opt_class(), 0}];
    v23 = [v236 decodeObjectOfClasses:? forKey:?];
    reachableEmails = selfCopy->_reachableEmails;
    selfCopy->_reachableEmails = v23;
    MEMORY[0x1E69E5920](reachableEmails);
    MEMORY[0x1E69E5920](v237);
    v238 = location[0];
    v25 = *(v312 + 3776);
    v26 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_previouslySelectedEmail"];
    previouslySelectedEmail = selfCopy->_previouslySelectedEmail;
    selfCopy->_previouslySelectedEmail = v26;
    MEMORY[0x1E69E5920](previouslySelectedEmail);
    v239 = location[0];
    v325 = 0x1E696A000uLL;
    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_ageOfMajority"];
    ageOfMajority = selfCopy->_ageOfMajority;
    selfCopy->_ageOfMajority = v28;
    MEMORY[0x1E69E5920](ageOfMajority);
    v240 = location[0];
    v30 = *(v312 + 3776);
    v31 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_authorizedApplicationsListVersion"];
    authorizedApplicationsListVersion = selfCopy->_authorizedApplicationsListVersion;
    selfCopy->_authorizedApplicationsListVersion = v31;
    MEMORY[0x1E69E5920](authorizedApplicationsListVersion);
    v241 = location[0];
    v33 = *(v312 + 3776);
    v34 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_masterKeyID"];
    masterKeyID = selfCopy->_masterKeyID;
    selfCopy->_masterKeyID = v34;
    MEMORY[0x1E69E5920](masterKeyID);
    v242 = location[0];
    v36 = *(v325 + 3480);
    v37 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_vettedPrimaryEmail"];
    vettedPrimaryEmail = selfCopy->_vettedPrimaryEmail;
    selfCopy->_vettedPrimaryEmail = v37;
    MEMORY[0x1E69E5920](vettedPrimaryEmail);
    v243 = location[0];
    v39 = *(v325 + 3480);
    v40 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_phoneAsAppleID"];
    phoneAsAppleID = selfCopy->_phoneAsAppleID;
    selfCopy->_phoneAsAppleID = v40;
    MEMORY[0x1E69E5920](phoneAsAppleID);
    v244 = location[0];
    v42 = *(v325 + 3480);
    v43 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isUnderage"];
    isUnderage = selfCopy->_isUnderage;
    selfCopy->_isUnderage = v43;
    MEMORY[0x1E69E5920](isUnderage);
    v245 = location[0];
    v45 = *(v325 + 3480);
    v46 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isSiwAEnabled"];
    isSiwaForChildEnabled = selfCopy->_isSiwaForChildEnabled;
    selfCopy->_isSiwaForChildEnabled = v46;
    MEMORY[0x1E69E5920](isSiwaForChildEnabled);
    v48 = [location[0] decodeIntegerForKey:@"_userAgeRange"];
    v49 = v325;
    selfCopy->_userAgeRange = v48;
    v246 = location[0];
    v50 = *(v49 + 3480);
    v51 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isSenior"];
    isSenior = selfCopy->_isSenior;
    selfCopy->_isSenior = v51;
    MEMORY[0x1E69E5920](isSenior);
    v247 = location[0];
    v53 = *(v325 + 3480);
    v54 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isLegacyStudent"];
    isLegacyStudent = selfCopy->_isLegacyStudent;
    selfCopy->_isLegacyStudent = v54;
    MEMORY[0x1E69E5920](isLegacyStudent);
    v248 = location[0];
    v56 = *(v325 + 3480);
    v57 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isEligibleForSafetyScreen"];
    isEligibleForSafetyScreen = selfCopy->_isEligibleForSafetyScreen;
    selfCopy->_isEligibleForSafetyScreen = v57;
    MEMORY[0x1E69E5920](isEligibleForSafetyScreen);
    v249 = location[0];
    v59 = *(v325 + 3480);
    v60 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hasUsedAuthorization"];
    hasUsedAuthorization = selfCopy->_hasUsedAuthorization;
    selfCopy->_hasUsedAuthorization = v60;
    MEMORY[0x1E69E5920](hasUsedAuthorization);
    v250 = location[0];
    v62 = *(v325 + 3480);
    v63 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_privateAttestationEnabled"];
    privateAttestationEnabled = selfCopy->_privateAttestationEnabled;
    selfCopy->_privateAttestationEnabled = v63;
    MEMORY[0x1E69E5920](privateAttestationEnabled);
    v251 = location[0];
    v65 = *(v325 + 3480);
    v66 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_previouslyWantedPrivateEmail"];
    previouslyWantedPrivateEmail = selfCopy->_previouslyWantedPrivateEmail;
    selfCopy->_previouslyWantedPrivateEmail = v66;
    MEMORY[0x1E69E5920](previouslyWantedPrivateEmail);
    v68 = [location[0] decodeIntegerForKey:@"_appleIDSecurityLevel"];
    selfCopy->_appleIDSecurityLevel = v68;
    v69 = [location[0] decodeIntegerForKey:@"_authMode"];
    v70 = v325;
    selfCopy->_authMode = v69;
    v252 = location[0];
    v71 = *(v70 + 3480);
    v72 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isMdmInfoRequired"];
    isMdmInfoRequired = selfCopy->_isMdmInfoRequired;
    selfCopy->_isMdmInfoRequired = v72;
    MEMORY[0x1E69E5920](isMdmInfoRequired);
    v74 = [location[0] decodeIntegerForKey:@"_repairState"];
    v75 = v312;
    selfCopy->_repairState = v74;
    v253 = location[0];
    v76 = *(v75 + 3776);
    v77 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_selectedEmail"];
    selectedEmail = selfCopy->_selectedEmail;
    selfCopy->_selectedEmail = v77;
    MEMORY[0x1E69E5920](selectedEmail);
    v259 = location[0];
    v258 = *(v295 + 4056);
    v297 = 0x1E695D000uLL;
    v257 = objc_opt_class();
    v79 = *(v296 + 3784);
    v254 = objc_opt_class();
    v80 = *(v312 + 3776);
    v255 = objc_opt_class();
    v81 = *(v325 + 3480);
    v256 = objc_opt_class();
    v260 = [v258 setWithObjects:{v257, v254, v255, v256, objc_opt_class(), 0}];
    v82 = [v259 decodeObjectOfClasses:? forKey:?];
    additionalInfo = selfCopy->_additionalInfo;
    selfCopy->_additionalInfo = v82;
    MEMORY[0x1E69E5920](additionalInfo);
    MEMORY[0x1E69E5920](v260);
    v263 = location[0];
    v262 = *(v295 + 4056);
    v84 = *(v296 + 3784);
    v261 = objc_opt_class();
    v85 = *(v312 + 3776);
    v264 = [v262 setWithObjects:{v261, objc_opt_class(), 0}];
    v86 = [v263 decodeObjectOfClasses:? forKey:?];
    trustedPhoneNumbers = selfCopy->_trustedPhoneNumbers;
    selfCopy->_trustedPhoneNumbers = v86;
    MEMORY[0x1E69E5920](trustedPhoneNumbers);
    MEMORY[0x1E69E5920](v264);
    v268 = location[0];
    v267 = *(v295 + 4056);
    v88 = *(v296 + 3784);
    v266 = objc_opt_class();
    v89 = *(v297 + 3872);
    v265 = objc_opt_class();
    v90 = *(v312 + 3776);
    v269 = [v267 setWithObjects:{v266, v265, objc_opt_class(), 0}];
    v91 = [v268 decodeObjectOfClasses:? forKey:?];
    securityKeys = selfCopy->_securityKeys;
    selfCopy->_securityKeys = v91;
    MEMORY[0x1E69E5920](securityKeys);
    MEMORY[0x1E69E5920](v269);
    v272 = location[0];
    v271 = *(v295 + 4056);
    v93 = *(v296 + 3784);
    v270 = objc_opt_class();
    v94 = *(v312 + 3776);
    v273 = [v271 setWithObjects:{v270, objc_opt_class(), 0}];
    v95 = [v272 decodeObjectOfClasses:? forKey:?];
    loginHandles = selfCopy->_loginHandles;
    selfCopy->_loginHandles = v95;
    MEMORY[0x1E69E5920](loginHandles);
    MEMORY[0x1E69E5920](v273);
    v274 = location[0];
    v97 = *(v312 + 3776);
    v98 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_privateEmailListVersion"];
    privateEmailListVersion = selfCopy->_privateEmailListVersion;
    selfCopy->_privateEmailListVersion = v98;
    MEMORY[0x1E69E5920](privateEmailListVersion);
    v275 = location[0];
    v100 = *(v325 + 3480);
    v101 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_canBeCustodian"];
    canBeCustodian = selfCopy->_canBeCustodian;
    selfCopy->_canBeCustodian = v101;
    MEMORY[0x1E69E5920](canBeCustodian);
    v276 = location[0];
    v103 = *(v325 + 3480);
    v104 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_canHaveCustodian"];
    canHaveCustodian = selfCopy->_canHaveCustodian;
    selfCopy->_canHaveCustodian = v104;
    MEMORY[0x1E69E5920](canHaveCustodian);
    v277 = location[0];
    v106 = *(v325 + 3480);
    v107 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_custodianEnabled"];
    custodianEnabled = selfCopy->_custodianEnabled;
    selfCopy->_custodianEnabled = v107;
    MEMORY[0x1E69E5920](custodianEnabled);
    v278 = location[0];
    v109 = *(v325 + 3480);
    v110 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_custodianLastModified"];
    custodianLastModified = selfCopy->_custodianLastModified;
    selfCopy->_custodianLastModified = v110;
    MEMORY[0x1E69E5920](custodianLastModified);
    v279 = location[0];
    v112 = *(v325 + 3480);
    v113 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_canBeBeneficiary"];
    canBeBeneficiary = selfCopy->_canBeBeneficiary;
    selfCopy->_canBeBeneficiary = v113;
    MEMORY[0x1E69E5920](canBeBeneficiary);
    v280 = location[0];
    v115 = *(v325 + 3480);
    v116 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_canHaveBeneficiary"];
    canHaveBeneficiary = selfCopy->_canHaveBeneficiary;
    selfCopy->_canHaveBeneficiary = v116;
    MEMORY[0x1E69E5920](canHaveBeneficiary);
    v281 = location[0];
    v118 = *(v325 + 3480);
    v119 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryLastModified"];
    beneficiaryLastModified = selfCopy->_beneficiaryLastModified;
    selfCopy->_beneficiaryLastModified = v119;
    MEMORY[0x1E69E5920](beneficiaryLastModified);
    v282 = location[0];
    v121 = *(v312 + 3776);
    v122 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_appleIDCountryCode"];
    appleIDCountryCode = selfCopy->_appleIDCountryCode;
    selfCopy->_appleIDCountryCode = v122;
    MEMORY[0x1E69E5920](appleIDCountryCode);
    v283 = location[0];
    v124 = *(v325 + 3480);
    v125 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hasMDM"];
    hasMDM = selfCopy->_hasMDM;
    selfCopy->_hasMDM = v125;
    MEMORY[0x1E69E5920](hasMDM);
    v284 = location[0];
    v127 = *(v325 + 3480);
    v128 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_managedOrganizationType"];
    managedOrganizationType = selfCopy->_managedOrganizationType;
    selfCopy->_managedOrganizationType = v128;
    MEMORY[0x1E69E5920](managedOrganizationType);
    v285 = location[0];
    v130 = *(v312 + 3776);
    v131 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_managedOrganizationName"];
    managedOrganizationName = selfCopy->_managedOrganizationName;
    selfCopy->_managedOrganizationName = v131;
    MEMORY[0x1E69E5920](managedOrganizationName);
    v286 = location[0];
    v133 = *(v325 + 3480);
    v134 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isNotificationEmailAvailable"];
    isNotificationEmailAvailable = selfCopy->_isNotificationEmailAvailable;
    selfCopy->_isNotificationEmailAvailable = v134;
    MEMORY[0x1E69E5920](isNotificationEmailAvailable);
    v287 = location[0];
    v136 = *(v312 + 3776);
    v137 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_notificationEmail"];
    notificationEmail = selfCopy->_notificationEmail;
    selfCopy->_notificationEmail = v137;
    MEMORY[0x1E69E5920](notificationEmail);
    v288 = location[0];
    v139 = *(v325 + 3480);
    v140 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_webAccessEnabled"];
    webAccessEnabled = selfCopy->_webAccessEnabled;
    selfCopy->_webAccessEnabled = v140;
    MEMORY[0x1E69E5920](webAccessEnabled);
    v289 = location[0];
    v142 = *(v325 + 3480);
    v143 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serverExperimentalFeatures"];
    serverExperimentalFeatures = selfCopy->_serverExperimentalFeatures;
    selfCopy->_serverExperimentalFeatures = v143;
    MEMORY[0x1E69E5920](serverExperimentalFeatures);
    v293 = location[0];
    v292 = *(v295 + 4056);
    v145 = *(v296 + 3784);
    v291 = objc_opt_class();
    v146 = *(v297 + 3872);
    v290 = objc_opt_class();
    v147 = *(v312 + 3776);
    v294 = [v292 setWithObjects:{v291, v290, objc_opt_class(), 0}];
    v148 = [v293 decodeObjectOfClasses:? forKey:?];
    custodianInfos = selfCopy->_custodianInfos;
    selfCopy->_custodianInfos = v148;
    MEMORY[0x1E69E5920](custodianInfos);
    MEMORY[0x1E69E5920](v294);
    v301 = location[0];
    v300 = *(v295 + 4056);
    v150 = *(v296 + 3784);
    v299 = objc_opt_class();
    v151 = *(v297 + 3872);
    v298 = objc_opt_class();
    v152 = *(v312 + 3776);
    v302 = [v300 setWithObjects:{v299, v298, objc_opt_class(), 0}];
    v153 = [v301 decodeObjectOfClasses:? forKey:?];
    beneficiaryInfo = selfCopy->_beneficiaryInfo;
    selfCopy->_beneficiaryInfo = v153;
    MEMORY[0x1E69E5920](beneficiaryInfo);
    MEMORY[0x1E69E5920](v302);
    v303 = location[0];
    v155 = *(v325 + 3480);
    v156 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_passkeyEligible"];
    passkeyEligible = selfCopy->_passkeyEligible;
    selfCopy->_passkeyEligible = v156;
    MEMORY[0x1E69E5920](passkeyEligible);
    v304 = location[0];
    v158 = *(v325 + 3480);
    v159 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_passkeyPresent"];
    passkeyPresent = selfCopy->_passkeyPresent;
    selfCopy->_passkeyPresent = v159;
    MEMORY[0x1E69E5920](passkeyPresent);
    v305 = location[0];
    v161 = *(v325 + 3480);
    v162 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isProximityAuthEligible"];
    isProximityAuthEligible = selfCopy->_isProximityAuthEligible;
    selfCopy->_isProximityAuthEligible = v162;
    MEMORY[0x1E69E5920](isProximityAuthEligible);
    v306 = location[0];
    v164 = *(v325 + 3480);
    v165 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_groupKitEligibility"];
    groupKitEligibility = selfCopy->_groupKitEligibility;
    selfCopy->_groupKitEligibility = v165;
    MEMORY[0x1E69E5920](groupKitEligibility);
    v307 = location[0];
    v167 = *(v325 + 3480);
    v168 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_passcodeAuthEnabled"];
    passcodeAuthEnabled = selfCopy->_passcodeAuthEnabled;
    selfCopy->_passcodeAuthEnabled = v168;
    MEMORY[0x1E69E5920](passcodeAuthEnabled);
    v308 = location[0];
    v170 = *(v325 + 3480);
    v171 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_askToBuy"];
    askToBuy = selfCopy->_askToBuy;
    selfCopy->_askToBuy = v171;
    MEMORY[0x1E69E5920](askToBuy);
    v309 = location[0];
    v173 = *(v325 + 3480);
    v174 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hasSOSActiveDevice"];
    hasSOSActiveDevice = selfCopy->_hasSOSActiveDevice;
    selfCopy->_hasSOSActiveDevice = v174;
    MEMORY[0x1E69E5920](hasSOSActiveDevice);
    v310 = location[0];
    v176 = *(v325 + 3480);
    v177 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_SOSNeeded"];
    SOSNeeded = selfCopy->_SOSNeeded;
    selfCopy->_SOSNeeded = v177;
    MEMORY[0x1E69E5920](SOSNeeded);
    v311 = location[0];
    v179 = *(v312 + 3776);
    v180 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_deviceListVersion"];
    deviceListVersion = selfCopy->_deviceListVersion;
    selfCopy->_deviceListVersion = v180;
    MEMORY[0x1E69E5920](deviceListVersion);
    v313 = location[0];
    v182 = *(v312 + 3776);
    v183 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_configDataVersion"];
    configDataVersion = selfCopy->_configDataVersion;
    selfCopy->_configDataVersion = v183;
    MEMORY[0x1E69E5920](configDataVersion);
    v314 = location[0];
    v185 = *(v325 + 3480);
    v186 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_birthYear"];
    birthYear = selfCopy->_birthYear;
    selfCopy->_birthYear = v186;
    MEMORY[0x1E69E5920](birthYear);
    v315 = location[0];
    v188 = *(v325 + 3480);
    v189 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_birthDay"];
    birthDay = selfCopy->_birthDay;
    selfCopy->_birthDay = v189;
    MEMORY[0x1E69E5920](birthDay);
    v316 = location[0];
    v191 = *(v325 + 3480);
    v192 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_birthMonth"];
    birthMonth = selfCopy->_birthMonth;
    selfCopy->_birthMonth = v192;
    MEMORY[0x1E69E5920](birthMonth);
    v317 = location[0];
    v194 = *(v325 + 3480);
    v195 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_canAttestAge"];
    canAttestAge = selfCopy->_canAttestAge;
    selfCopy->_canAttestAge = v195;
    MEMORY[0x1E69E5920](canAttestAge);
    v318 = location[0];
    v197 = *(v325 + 3480);
    v198 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_hasModernRecoveryKey"];
    hasModernRecoveryKey = selfCopy->_hasModernRecoveryKey;
    selfCopy->_hasModernRecoveryKey = v198;
    MEMORY[0x1E69E5920](hasModernRecoveryKey);
    v319 = location[0];
    v200 = *(v325 + 3480);
    v201 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_thirdPartyRegulatoryOverride"];
    thirdPartyRegulatoryOverride = selfCopy->_thirdPartyRegulatoryOverride;
    selfCopy->_thirdPartyRegulatoryOverride = v201;
    MEMORY[0x1E69E5920](thirdPartyRegulatoryOverride);
    v320 = location[0];
    v203 = *(v325 + 3480);
    v204 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_criticalAccountEditsAllowed"];
    criticalAccountEditsAllowed = selfCopy->_criticalAccountEditsAllowed;
    selfCopy->_criticalAccountEditsAllowed = v204;
    MEMORY[0x1E69E5920](criticalAccountEditsAllowed);
    v321 = location[0];
    v206 = *(v325 + 3480);
    v207 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_adpCohort"];
    adpCohort = selfCopy->_adpCohort;
    selfCopy->_adpCohort = v207;
    MEMORY[0x1E69E5920](adpCohort);
    v322 = location[0];
    v209 = *(v325 + 3480);
    v210 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_adpBlockMode"];
    adpBlockMode = selfCopy->_adpBlockMode;
    selfCopy->_adpBlockMode = v210;
    MEMORY[0x1E69E5920](adpBlockMode);
    v323 = location[0];
    v212 = *(v325 + 3480);
    v213 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_piggybackingApprovalEligible"];
    piggybackingApprovalEligible = selfCopy->_piggybackingApprovalEligible;
    selfCopy->_piggybackingApprovalEligible = v213;
    MEMORY[0x1E69E5920](piggybackingApprovalEligible);
    v324 = location[0];
    v215 = *(v325 + 3480);
    v216 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_isEligibleToMigrateToChild"];
    isEligibleToMigrateToChild = selfCopy->_isEligibleToMigrateToChild;
    selfCopy->_isEligibleToMigrateToChild = v216;
    MEMORY[0x1E69E5920](isEligibleToMigrateToChild);
    v326 = location[0];
    v218 = *(v325 + 3480);
    v219 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_idmsWalrusStatus"];
    idmsWalrusStatus = selfCopy->_idmsWalrusStatus;
    selfCopy->_idmsWalrusStatus = v219;
    MEMORY[0x1E69E5920](idmsWalrusStatus);
  }

  v222 = &selfCopy;
  v224 = MEMORY[0x1E69E5928](selfCopy);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v222, obj);
  return v224;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_givenName forKey:@"_givenName"];
  [location[0] encodeObject:selfCopy->_familyName forKey:@"_familyName"];
  [location[0] encodeObject:selfCopy->_forwardingEmail forKey:@"_forwardingEmail"];
  [location[0] encodeObject:selfCopy->_primaryEmailAddress forKey:@"_primaryEmailAddress"];
  [location[0] encodeObject:selfCopy->_accountName forKey:@"_accountName"];
  [location[0] encodeObject:selfCopy->_accountAliases forKey:@"_accountAliases"];
  [location[0] encodeObject:selfCopy->_reachableEmails forKey:@"_reachableEmails"];
  [location[0] encodeObject:selfCopy->_previouslySelectedEmail forKey:@"_previouslySelectedEmail"];
  [location[0] encodeObject:selfCopy->_ageOfMajority forKey:@"_ageOfMajority"];
  [location[0] encodeObject:selfCopy->_authorizedApplicationsListVersion forKey:@"_authorizedApplicationsListVersion"];
  [location[0] encodeObject:selfCopy->_masterKeyID forKey:@"_masterKeyID"];
  [location[0] encodeObject:selfCopy->_vettedPrimaryEmail forKey:@"_vettedPrimaryEmail"];
  [location[0] encodeObject:selfCopy->_phoneAsAppleID forKey:@"_phoneAsAppleID"];
  [location[0] encodeObject:selfCopy->_isUnderage forKey:@"_isUnderage"];
  [location[0] encodeObject:selfCopy->_isSiwaForChildEnabled forKey:@"_isSiwAEnabled"];
  [location[0] encodeInteger:selfCopy->_userAgeRange forKey:@"_userAgeRange"];
  [location[0] encodeObject:selfCopy->_isSenior forKey:@"_isSenior"];
  [location[0] encodeObject:selfCopy->_isLegacyStudent forKey:@"_isLegacyStudent"];
  [location[0] encodeObject:selfCopy->_isEligibleForSafetyScreen forKey:@"_isEligibleForSafetyScreen"];
  [location[0] encodeObject:selfCopy->_hasUsedAuthorization forKey:@"_hasUsedAuthorization"];
  [location[0] encodeObject:selfCopy->_privateAttestationEnabled forKey:@"_privateAttestationEnabled"];
  [location[0] encodeObject:selfCopy->_previouslyWantedPrivateEmail forKey:@"_previouslyWantedPrivateEmail"];
  [location[0] encodeInteger:selfCopy->_appleIDSecurityLevel forKey:@"_appleIDSecurityLevel"];
  [location[0] encodeInteger:selfCopy->_authMode forKey:@"_authMode"];
  [location[0] encodeObject:selfCopy->_isMdmInfoRequired forKey:@"_isMdmInfoRequired"];
  [location[0] encodeInteger:selfCopy->_repairState forKey:@"_repairState"];
  [location[0] encodeObject:selfCopy->_selectedEmail forKey:@"_selectedEmail"];
  [location[0] encodeObject:selfCopy->_additionalInfo forKey:@"_additionalInfo"];
  [location[0] encodeObject:selfCopy->_trustedPhoneNumbers forKey:@"_trustedPhoneNumbers"];
  [location[0] encodeObject:selfCopy->_securityKeys forKey:@"_securityKeys"];
  [location[0] encodeObject:selfCopy->_loginHandles forKey:@"_loginHandles"];
  [location[0] encodeObject:selfCopy->_privateEmailListVersion forKey:@"_privateEmailListVersion"];
  [location[0] encodeObject:selfCopy->_canBeCustodian forKey:@"_canBeCustodian"];
  [location[0] encodeObject:selfCopy->_canHaveCustodian forKey:@"_canHaveCustodian"];
  [location[0] encodeObject:selfCopy->_custodianEnabled forKey:@"_custodianEnabled"];
  [location[0] encodeObject:selfCopy->_custodianLastModified forKey:@"_custodianLastModified"];
  [location[0] encodeObject:selfCopy->_canBeBeneficiary forKey:@"_canBeBeneficiary"];
  [location[0] encodeObject:selfCopy->_canHaveBeneficiary forKey:@"_canHaveBeneficiary"];
  [location[0] encodeObject:selfCopy->_beneficiaryLastModified forKey:@"_beneficiaryLastModified"];
  [location[0] encodeObject:selfCopy->_appleIDCountryCode forKey:@"_appleIDCountryCode"];
  [location[0] encodeObject:selfCopy->_hasMDM forKey:@"_hasMDM"];
  [location[0] encodeObject:selfCopy->_managedOrganizationType forKey:@"_managedOrganizationType"];
  [location[0] encodeObject:selfCopy->_managedOrganizationName forKey:@"_managedOrganizationName"];
  [location[0] encodeObject:selfCopy->_isNotificationEmailAvailable forKey:@"_isNotificationEmailAvailable"];
  [location[0] encodeObject:selfCopy->_notificationEmail forKey:@"_notificationEmail"];
  [location[0] encodeObject:selfCopy->_webAccessEnabled forKey:@"_webAccessEnabled"];
  [location[0] encodeObject:selfCopy->_serverExperimentalFeatures forKey:@"_serverExperimentalFeatures"];
  [location[0] encodeObject:selfCopy->_custodianInfos forKey:@"_custodianInfos"];
  [location[0] encodeObject:selfCopy->_beneficiaryInfo forKey:@"_beneficiaryInfo"];
  [location[0] encodeObject:selfCopy->_passkeyEligible forKey:@"_passkeyEligible"];
  [location[0] encodeObject:selfCopy->_passkeyPresent forKey:@"_passkeyPresent"];
  [location[0] encodeObject:selfCopy->_isProximityAuthEligible forKey:@"_isProximityAuthEligible"];
  [location[0] encodeObject:selfCopy->_groupKitEligibility forKey:@"_groupKitEligibility"];
  [location[0] encodeObject:selfCopy->_passcodeAuthEnabled forKey:@"_passcodeAuthEnabled"];
  [location[0] encodeObject:selfCopy->_askToBuy forKey:@"_askToBuy"];
  [location[0] encodeObject:selfCopy->_hasSOSActiveDevice forKey:@"_hasSOSActiveDevice"];
  [location[0] encodeObject:selfCopy->_SOSNeeded forKey:@"_SOSNeeded"];
  [location[0] encodeObject:selfCopy->_deviceListVersion forKey:@"_deviceListVersion"];
  [location[0] encodeObject:selfCopy->_configDataVersion forKey:@"_configDataVersion"];
  [location[0] encodeObject:selfCopy->_birthYear forKey:@"_birthYear"];
  [location[0] encodeObject:selfCopy->_birthDay forKey:@"_birthDay"];
  [location[0] encodeObject:selfCopy->_birthMonth forKey:@"_birthMonth"];
  [location[0] encodeObject:selfCopy->_canAttestAge forKey:@"_canAttestAge"];
  [location[0] encodeObject:selfCopy->_hasModernRecoveryKey forKey:@"_hasModernRecoveryKey"];
  [location[0] encodeObject:selfCopy->_thirdPartyRegulatoryOverride forKey:@"_thirdPartyRegulatoryOverride"];
  [location[0] encodeObject:selfCopy->_criticalAccountEditsAllowed forKey:@"_criticalAccountEditsAllowed"];
  [location[0] encodeObject:selfCopy->_adpCohort forKey:@"_adpCohort"];
  [location[0] encodeObject:selfCopy->_adpBlockMode forKey:@"_adpBlockMode"];
  [location[0] encodeObject:selfCopy->_piggybackingApprovalEligible forKey:@"_piggybackingApprovalEligible"];
  [location[0] encodeObject:selfCopy->_isEligibleToMigrateToChild forKey:@"_isEligibleToMigrateToChild"];
  [location[0] encodeObject:selfCopy->_idmsWalrusStatus forKey:@"_idmsWalrusStatus"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v71[2] = a2;
  v71[1] = zone;
  v71[0] = objc_alloc_init(AKUserInformation);
  v4 = [(NSString *)selfCopy->_givenName copy];
  [v71[0] setGivenName:?];
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSString *)selfCopy->_familyName copy];
  [v71[0] setFamilyName:?];
  MEMORY[0x1E69E5920](v5);
  v6 = [(NSString *)selfCopy->_forwardingEmail copy];
  [v71[0] setForwardingEmail:?];
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)selfCopy->_primaryEmailAddress copy];
  [v71[0] setPrimaryEmailAddress:?];
  MEMORY[0x1E69E5920](v7);
  v8 = [(NSString *)selfCopy->_accountName copy];
  [v71[0] setAccountName:?];
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSArray *)selfCopy->_accountAliases copy];
  [v71[0] setAccountAliases:?];
  MEMORY[0x1E69E5920](v9);
  v10 = [(NSArray *)selfCopy->_reachableEmails copy];
  [v71[0] setReachableEmails:?];
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSString *)selfCopy->_authorizedApplicationsListVersion copy];
  [v71[0] setAuthorizedApplicationsListVersion:?];
  MEMORY[0x1E69E5920](v11);
  v12 = [(NSString *)selfCopy->_masterKeyID copy];
  [v71[0] setMasterKeyID:?];
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSNumber *)selfCopy->_vettedPrimaryEmail copy];
  [v71[0] setVettedPrimaryEmail:?];
  MEMORY[0x1E69E5920](v13);
  v14 = [(NSNumber *)selfCopy->_phoneAsAppleID copy];
  [v71[0] setPhoneAsAppleID:?];
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSNumber *)selfCopy->_hasUsedAuthorization copy];
  [v71[0] setHasUsedAuthorization:?];
  MEMORY[0x1E69E5920](v15);
  v16 = [(NSNumber *)selfCopy->_privateAttestationEnabled copy];
  [v71[0] setPrivateAttestationEnabled:?];
  MEMORY[0x1E69E5920](v16);
  v17 = [(NSNumber *)selfCopy->_isUnderage copy];
  [v71[0] setIsUnderage:?];
  MEMORY[0x1E69E5920](v17);
  v18 = [(NSNumber *)selfCopy->_isSiwaForChildEnabled copy];
  [v71[0] setIsSiwaForChildEnabled:?];
  MEMORY[0x1E69E5920](v18);
  [v71[0] setUserAgeRange:selfCopy->_userAgeRange];
  v19 = [(NSNumber *)selfCopy->_isSenior copy];
  [v71[0] setIsSenior:?];
  MEMORY[0x1E69E5920](v19);
  v20 = [(NSNumber *)selfCopy->_ageOfMajority copy];
  [v71[0] setAgeOfMajority:?];
  MEMORY[0x1E69E5920](v20);
  v21 = [(NSString *)selfCopy->_previouslySelectedEmail copy];
  [v71[0] setPreviouslySelectedEmail:?];
  MEMORY[0x1E69E5920](v21);
  v22 = [(NSNumber *)selfCopy->_previouslyWantedPrivateEmail copy];
  [v71[0] setPreviouslyWantedPrivateEmail:?];
  MEMORY[0x1E69E5920](v22);
  v23 = [(NSNumber *)selfCopy->_isLegacyStudent copy];
  [v71[0] setIsLegacyStudent:?];
  MEMORY[0x1E69E5920](v23);
  v24 = [(NSNumber *)selfCopy->_isEligibleForSafetyScreen copy];
  [v71[0] setIsEligibleForSafetyScreen:?];
  MEMORY[0x1E69E5920](v24);
  [v71[0] setAppleIDSecurityLevel:selfCopy->_appleIDSecurityLevel];
  [v71[0] setAuthMode:selfCopy->_authMode];
  v25 = [(NSNumber *)selfCopy->_isMdmInfoRequired copy];
  [v71[0] setIsMdmInfoRequired:?];
  MEMORY[0x1E69E5920](v25);
  [v71[0] setRepairState:selfCopy->_repairState];
  v26 = [(NSString *)selfCopy->_selectedEmail copy];
  [v71[0] setSelectedEmail:?];
  MEMORY[0x1E69E5920](v26);
  v27 = [(NSDictionary *)selfCopy->_additionalInfo copy];
  [v71[0] setAdditionalInfo:?];
  MEMORY[0x1E69E5920](v27);
  v28 = [(NSArray *)selfCopy->_trustedPhoneNumbers copy];
  [v71[0] setTrustedPhoneNumbers:?];
  MEMORY[0x1E69E5920](v28);
  v29 = [(NSArray *)selfCopy->_securityKeys copy];
  [v71[0] setSecurityKeys:?];
  MEMORY[0x1E69E5920](v29);
  v30 = [(NSArray *)selfCopy->_loginHandles copy];
  [v71[0] setLoginHandles:?];
  MEMORY[0x1E69E5920](v30);
  v31 = [(NSNumber *)selfCopy->_canBeCustodian copy];
  [v71[0] setCanBeCustodian:?];
  MEMORY[0x1E69E5920](v31);
  v32 = [(NSNumber *)selfCopy->_canHaveCustodian copy];
  [v71[0] setCanHaveCustodian:?];
  MEMORY[0x1E69E5920](v32);
  v33 = [(NSNumber *)selfCopy->_canBeBeneficiary copy];
  [v71[0] setCanBeBeneficiary:?];
  MEMORY[0x1E69E5920](v33);
  v34 = [(NSNumber *)selfCopy->_canHaveBeneficiary copy];
  [v71[0] setCanHaveBeneficiary:?];
  MEMORY[0x1E69E5920](v34);
  v35 = [(NSString *)selfCopy->_privateEmailListVersion copy];
  [v71[0] setPrivateEmailListVersion:?];
  MEMORY[0x1E69E5920](v35);
  v36 = [(NSNumber *)selfCopy->_custodianEnabled copy];
  [v71[0] setCustodianEnabled:?];
  MEMORY[0x1E69E5920](v36);
  v37 = [(NSNumber *)selfCopy->_custodianLastModified copy];
  [v71[0] setCustodianLastModified:?];
  MEMORY[0x1E69E5920](v37);
  v38 = [(NSNumber *)selfCopy->_beneficiaryLastModified copy];
  [v71[0] setBeneficiaryLastModified:?];
  MEMORY[0x1E69E5920](v38);
  v39 = [(NSString *)selfCopy->_appleIDCountryCode copy];
  [v71[0] setAppleIDCountryCode:?];
  MEMORY[0x1E69E5920](v39);
  [v71[0] setHasMDM:selfCopy->_hasMDM];
  v40 = [(NSNumber *)selfCopy->_managedOrganizationType copy];
  [v71[0] setManagedOrganizationType:?];
  MEMORY[0x1E69E5920](v40);
  v41 = [(NSString *)selfCopy->_managedOrganizationName copy];
  [v71[0] setManagedOrganizationName:?];
  MEMORY[0x1E69E5920](v41);
  v42 = [(NSNumber *)selfCopy->_isNotificationEmailAvailable copy];
  [v71[0] setIsNotificationEmailAvailable:?];
  MEMORY[0x1E69E5920](v42);
  v43 = [(NSString *)selfCopy->_notificationEmail copy];
  [v71[0] setNotificationEmail:?];
  MEMORY[0x1E69E5920](v43);
  v44 = [(NSNumber *)selfCopy->_webAccessEnabled copy];
  [v71[0] setWebAccessEnabled:?];
  MEMORY[0x1E69E5920](v44);
  v45 = [(NSNumber *)selfCopy->_serverExperimentalFeatures copy];
  [v71[0] setServerExperimentalFeatures:?];
  MEMORY[0x1E69E5920](v45);
  v46 = [(NSArray *)selfCopy->_custodianInfos copy];
  [v71[0] setCustodianInfos:?];
  MEMORY[0x1E69E5920](v46);
  v47 = [(NSArray *)selfCopy->_beneficiaryInfo copy];
  [v71[0] setBeneficiaryInfo:?];
  MEMORY[0x1E69E5920](v47);
  v48 = [(NSNumber *)selfCopy->_passkeyEligible copy];
  [v71[0] setPasskeyEligible:?];
  MEMORY[0x1E69E5920](v48);
  v49 = [(NSNumber *)selfCopy->_passkeyPresent copy];
  [v71[0] setPasskeyPresent:?];
  MEMORY[0x1E69E5920](v49);
  v50 = [(NSNumber *)selfCopy->_isProximityAuthEligible copy];
  [v71[0] setIsProximityAuthEligible:?];
  MEMORY[0x1E69E5920](v50);
  v51 = [(NSNumber *)selfCopy->_groupKitEligibility copy];
  [v71[0] setGroupKitEligibility:?];
  MEMORY[0x1E69E5920](v51);
  v52 = [(NSNumber *)selfCopy->_passcodeAuthEnabled copy];
  [v71[0] setPasscodeAuthEnabled:?];
  MEMORY[0x1E69E5920](v52);
  v53 = [(NSNumber *)selfCopy->_askToBuy copy];
  [v71[0] setAskToBuy:?];
  MEMORY[0x1E69E5920](v53);
  v54 = [(NSNumber *)selfCopy->_hasSOSActiveDevice copy];
  [v71[0] setHasSOSActiveDevice:?];
  MEMORY[0x1E69E5920](v54);
  v55 = [(NSNumber *)selfCopy->_SOSNeeded copy];
  [v71[0] setSOSNeeded:?];
  MEMORY[0x1E69E5920](v55);
  v56 = [(NSString *)selfCopy->_deviceListVersion copy];
  [v71[0] setDeviceListVersion:?];
  MEMORY[0x1E69E5920](v56);
  v57 = [(NSString *)selfCopy->_configDataVersion copy];
  [v71[0] setConfigDataVersion:?];
  MEMORY[0x1E69E5920](v57);
  v58 = [(NSNumber *)selfCopy->_birthYear copy];
  [v71[0] setBirthYear:?];
  MEMORY[0x1E69E5920](v58);
  v59 = [(NSNumber *)selfCopy->_birthDay copy];
  [v71[0] setBirthDay:?];
  MEMORY[0x1E69E5920](v59);
  v60 = [(NSNumber *)selfCopy->_birthMonth copy];
  [v71[0] setBirthMonth:?];
  MEMORY[0x1E69E5920](v60);
  v61 = [(NSNumber *)selfCopy->_canAttestAge copy];
  [v71[0] setCanAttestAge:?];
  MEMORY[0x1E69E5920](v61);
  v62 = [(NSNumber *)selfCopy->_hasModernRecoveryKey copy];
  [v71[0] setHasModernRecoveryKey:?];
  MEMORY[0x1E69E5920](v62);
  v63 = [(NSNumber *)selfCopy->_thirdPartyRegulatoryOverride copy];
  [v71[0] setThirdPartyRegulatoryOverride:?];
  MEMORY[0x1E69E5920](v63);
  v64 = [(NSNumber *)selfCopy->_criticalAccountEditsAllowed copy];
  [v71[0] setCriticalAccountEditsAllowed:?];
  MEMORY[0x1E69E5920](v64);
  v65 = [(NSNumber *)selfCopy->_adpCohort copy];
  [v71[0] setAdpCohort:?];
  MEMORY[0x1E69E5920](v65);
  v66 = [(NSNumber *)selfCopy->_adpBlockMode copy];
  [v71[0] setAdpBlockMode:?];
  MEMORY[0x1E69E5920](v66);
  v67 = [(NSNumber *)selfCopy->_piggybackingApprovalEligible copy];
  [v71[0] setPiggybackingApprovalEligible:?];
  MEMORY[0x1E69E5920](v67);
  v68 = [(NSNumber *)selfCopy->_isEligibleToMigrateToChild copy];
  [v71[0] setIsEligibleToMigrateToChild:?];
  MEMORY[0x1E69E5920](v68);
  v69 = [(NSNumber *)selfCopy->_idmsWalrusStatus copy];
  [v71[0] setIdmsWalrusStatus:?];
  MEMORY[0x1E69E5920](v69);
  v70 = MEMORY[0x1E69E5928](v71[0]);
  objc_storeStrong(v71, 0);
  return v70;
}

- (void)_parseCustodianInfo:(id)info
{
  v31 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v10 = objc_opt_class();
  v11 = [location[0] objectForKeyedSubscript:@"custodianInfos"];
  v27 = _AKSafeCast_25(v10, v11);
  MEMORY[0x1E69E5920](v11);
  if (v27)
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = v27;
    v20 = MEMORY[0x1E69E9820];
    v21 = -1073741824;
    v22 = 0;
    v23 = __41__AKUserInformation__parseCustodianInfo___block_invoke;
    v24 = &unk_1E73D7240;
    v25 = MEMORY[0x1E69E5928](v26);
    [v9 enumerateObjectsUsingBlock:&v20];
    if ([v26 count])
    {
      v16 = _AKLogSystem();
      v15 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v30, v26);
        _os_log_debug_impl(&dword_193225000, v16, v15, "Valid Custodian Info found in custodianInfos array %@", v30, 0xCu);
      }

      objc_storeStrong(&v16, 0);
    }

    else
    {
      v19 = _AKLogSystem();
      v18 = 2;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        log = v19;
        type = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_debug_impl(&dword_193225000, log, type, "No valid Custodian Info found in custodianInfos array.", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
    }

    v3 = [v26 copy];
    custodianInfos = selfCopy->_custodianInfos;
    selfCopy->_custodianInfos = v3;
    MEMORY[0x1E69E5920](custodianInfos);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v5 = oslog;
      v6 = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_debug_impl(&dword_193225000, v5, v6, "No custodian info in response.", v12, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __41__AKUserInformation__parseCustodianInfo___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21[3] = a3;
  v21[2] = a4;
  v21[1] = a1;
  v4 = objc_opt_class();
  v21[0] = _AKSafeCast_25(v4, location[0]);
  if (v21[0])
  {
    v5 = objc_opt_class();
    v6 = [v21[0] objectForKeyedSubscript:@"custodianUuid"];
    v20 = _AKSafeCast_25(v5, v6);
    MEMORY[0x1E69E5920](v6);
    v7 = objc_opt_class();
    v8 = [v21[0] objectForKeyedSubscript:@"status"];
    v19 = _AKSafeCast_25(v7, v8);
    MEMORY[0x1E69E5920](v8);
    v9 = objc_opt_class();
    v10 = [v21[0] objectForKeyedSubscript:@"wrappingKeyHash"];
    v18 = _AKSafeCast_25(v9, v10);
    MEMORY[0x1E69E5920](v10);
    v11 = objc_opt_class();
    v12 = [v21[0] objectForKeyedSubscript:@"prkcHash"];
    v17 = _AKSafeCast_25(v11, v12);
    MEMORY[0x1E69E5920](v12);
    if (v20 && v19)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v16 setValue:v20 forKey:@"custodianUuid"];
      [v16 setValue:v19 forKey:@"status"];
      if (v18)
      {
        [v16 setValue:v18 forKey:@"wrappingKeyHash"];
      }

      if (v17)
      {
        [v16 setValue:v17 forKey:@"prkcHash"];
      }

      [a1[4] addObject:v16];
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(v21, 0);
  objc_storeStrong(location, 0);
}

- (void)_parseBeneficiaryInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v10 = objc_opt_class();
  v11 = [location[0] objectForKeyedSubscript:@"beneficiaryInfo"];
  v26 = _AKSafeCast_25(v10, v11);
  MEMORY[0x1E69E5920](v11);
  if (v26 && [v26 count])
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = v26;
    v16 = MEMORY[0x1E69E9820];
    v17 = -1073741824;
    v18 = 0;
    v19 = __43__AKUserInformation__parseBeneficiaryInfo___block_invoke;
    v20 = &unk_1E73D7240;
    v21 = MEMORY[0x1E69E5928](v22);
    [v7 enumerateObjectsUsingBlock:&v16];
    if ([v22 count])
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v29, v22);
        _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Beneficiary Info found for account %@", v29, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      v15 = _AKLogSystem();
      v14 = 2;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v5 = v15;
        v6 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_debug_impl(&dword_193225000, v5, v6, "No valid Beneficiary Info found in beneficiaryInfoArray.", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
    }

    v3 = [v22 copy];
    beneficiaryInfo = selfCopy->_beneficiaryInfo;
    selfCopy->_beneficiaryInfo = v3;
    MEMORY[0x1E69E5920](beneficiaryInfo);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v25 = _AKLogSystem();
    v24 = 2;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      log = v25;
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_debug_impl(&dword_193225000, log, type, "No beneficiary info for account.", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&selfCopy->_beneficiaryInfo, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __43__AKUserInformation__parseBeneficiaryInfo___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v23[3] = a3;
  v23[2] = a4;
  v23[1] = a1;
  v4 = objc_opt_class();
  v23[0] = _AKSafeCast_25(v4, location[0]);
  if (v23[0])
  {
    v5 = objc_opt_class();
    v6 = [v23[0] objectForKeyedSubscript:@"beneficiaryUuid"];
    v22 = _AKSafeCast_25(v5, v6);
    MEMORY[0x1E69E5920](v6);
    v7 = objc_opt_class();
    v8 = [v23[0] objectForKeyedSubscript:@"claimCodeHash"];
    v21 = _AKSafeCast_25(v7, v8);
    MEMORY[0x1E69E5920](v8);
    v9 = objc_opt_class();
    v10 = [v23[0] objectForKeyedSubscript:@"wrappedKey"];
    v20 = _AKSafeCast_25(v9, v10);
    MEMORY[0x1E69E5920](v10);
    v11 = objc_opt_class();
    v12 = [v23[0] objectForKeyedSubscript:@"wrappedKeyHash"];
    v19 = _AKSafeCast_25(v11, v12);
    MEMORY[0x1E69E5920](v12);
    if (v22)
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v25, v22);
        _os_log_debug_impl(&dword_193225000, v18, v17, "Adding beneficiaryInfo for UUID: %@", v25, 0xCu);
      }

      objc_storeStrong(&v18, 0);
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v16 setValue:v22 forKey:@"beneficiaryUuid"];
      if (v21)
      {
        [v16 setValue:v21 forKey:@"claimCodeHash"];
      }

      if (v20 && ![v20 isEqual:&stru_1F0781300])
      {
        [v16 setValue:v20 forKey:@"wrappedKey"];
      }

      if (v19)
      {
        [v16 setValue:v19 forKey:@"wrappedKeyHash"];
      }

      [a1[4] addObject:v16];
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)description
{
  v8 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v10 = NSStringFromClass(v2);
  idmsWalrusStatus = self->_idmsWalrusStatus;
  adpCohort = self->_adpCohort;
  thirdPartyRegulatoryOverride = self->_thirdPartyRegulatoryOverride;
  piggybackingApprovalEligible = self->_piggybackingApprovalEligible;
  isEligibleToMigrateToChild = self->_isEligibleToMigrateToChild;
  v11 = [v8 stringWithFormat:@"<%@: %p {\n\tgivenName: %@, \n\tfamilyName: %@, \n\tforwardingEmail: %@, \n\tprimaryEmailAddress: %@, \n\taccountName: %@, \n\taccountAliases: %@, \n\treachableEmails: %@, \n\tauthorizedApplicationsListVersion: %@, \n\tmasterKeyID: %@, \n\tvettedPrimaryEmail: %@, \n\tphoneAsAppleID: %@, \n\tisUnderage: %@, \n\tparentalAgeConsent: %@, \n\tisSiwaForChildEnabled: %@, \n\tuserAgeRange: %lu, \n\tisSenior: %@, \n\tageOfMajority: %@, \n\tisLegacyStudent: %@, \n\tappleIDCountryCode: %@, \n\thasUsedAuthorization: %@, \n\tprivateAttestationEnabled: %@, \n\tappleIDSecurityLevel: %lu, \n\tauthMode: %lu, \n\tisMdmInfoRequired: %@, \n\trepairState: %lu, \n\tselectedEmail: %@, \n\tcanBeCustodian: %@, \n\tcanHaveCustodian: %@, \n\tcustodianEnabled: %@, \n\tcanBeBeneficiary: %@, \n\tcanHaveBeneficiary: %@, \n\thasMDM: %@, \n\tmanagedOrganizationType: %@, \n\tmanagedOrganizationName: %@, \n\tisNotificationEmailAvailable: %@, \n\tnotificationEmail: %@, \n\tadditionalInfo: %@, \n\ttrustedPhoneNumbers: %@, \n\tsecurityKeys: %@, \n\tloginHandles: %@, \n\tprivateEmailListVersion: %@, \n\tisProximityAuthEligible: %@, \n\twebAccessEnabled: %@, \n\tserverExperimentalFeatures: %@, \n\tcustodianInfos: %@, \n\tbeneficiaryInfo: %@, \n\tpasskeyEligible: %@, \n\tpasskeyPresent: %@, \n\tgroupKitEligibility: %@, \n\tpasscodeAuthEnabled: %@, \n\taskToBuy: %@, \n\thasSOSActiveDevice: %@, \n\tSOSNeeded: %@, \n\tdeviceListVersion: %@, \n\tconfigDataVersion: %@, \n\tbirthYear: %@, \n\tcriticalAccountEditsAllowed: %@, \n\thasModernRecoveryKey: %@, \n\tadpCohort: %@, \n\tthirdPartyRegulatoryOverride: %@, \n\tpiggybackingApprovalEligible: %@, \n\tageMigrationEligible: %@, \n\tidmsWalrusStatus : %@, \n}>", v10, self, self->_givenName, self->_familyName, self->_forwardingEmail, self->_primaryEmailAddress, self->_accountName, self->_accountAliases, self->_reachableEmails, self->_authorizedApplicationsListVersion, self->_masterKeyID, self->_vettedPrimaryEmail, self->_phoneAsAppleID, self->_isUnderage, self->_canAttestAge, self->_isSiwaForChildEnabled, self->_userAgeRange, self->_isSenior, self->_ageOfMajority, self->_isLegacyStudent, self->_appleIDCountryCode, self->_hasUsedAuthorization, self->_privateAttestationEnabled, self->_appleIDSecurityLevel, self->_authMode, self->_isMdmInfoRequired, self->_repairState, self->_selectedEmail, self->_canBeCustodian, self->_canHaveCustodian, self->_custodianEnabled, self->_canBeBeneficiary, self->_canHaveBeneficiary, self->_hasMDM, self->_managedOrganizationType, self->_managedOrganizationName, self->_isNotificationEmailAvailable, self->_notificationEmail, self->_additionalInfo, self->_trustedPhoneNumbers, self->_securityKeys, self->_loginHandles, self->_privateEmailListVersion, self->_isProximityAuthEligible, self->_webAccessEnabled, self->_serverExperimentalFeatures, self->_custodianInfos, self->_beneficiaryInfo, self->_passkeyEligible, self->_passkeyPresent, self->_groupKitEligibility, self->_passcodeAuthEnabled, self->_askToBuy, self->_hasSOSActiveDevice, self->_SOSNeeded, self->_deviceListVersion, self->_configDataVersion, self->_birthYear, self->_criticalAccountEditsAllowed, self->_hasModernRecoveryKey];
  MEMORY[0x1E69E5920](v10);

  return v11;
}

- (NSNumber)silentEscrowRecordRepairEnabled
{
  v3 = objc_opt_class();
  v4 = [(NSDictionary *)self->_additionalInfo objectForKeyedSubscript:@"silentEscrowRecordRepairEnabled"];
  v5 = _AKSafeCast_25(v3, v4);
  MEMORY[0x1E69E5920](v4);

  return v5;
}

- (void)setSilentEscrowRecordRepairEnabled:(id)enabled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, enabled);
  v6 = [(NSDictionary *)selfCopy->_additionalInfo mutableCopy];
  v7 = 0;
  if (v6)
  {
    v3 = MEMORY[0x1E69E5928](v6);
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v7 = 1;
    v3 = MEMORY[0x1E69E5928](v8);
  }

  v9 = v3;
  if (v7)
  {
    MEMORY[0x1E69E5920](v8);
  }

  MEMORY[0x1E69E5920](v6);
  [v9 setObject:location[0] forKeyedSubscript:@"silentEscrowRecordRepairEnabled"];
  v4 = [v9 copy];
  additionalInfo = selfCopy->_additionalInfo;
  selfCopy->_additionalInfo = v4;
  MEMORY[0x1E69E5920](additionalInfo);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (NSNumber)silentBurnCDPRepairEnabled
{
  v3 = objc_opt_class();
  v4 = [(NSDictionary *)self->_additionalInfo objectForKeyedSubscript:@"silenBurnMiniBuddyEnabled"];
  v5 = _AKSafeCast_25(v3, v4);
  MEMORY[0x1E69E5920](v4);

  return v5;
}

- (void)setSilentBurnCDPRepairEnabled:(id)enabled
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, enabled);
  v6 = [(NSDictionary *)selfCopy->_additionalInfo mutableCopy];
  v7 = 0;
  if (v6)
  {
    v3 = MEMORY[0x1E69E5928](v6);
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v7 = 1;
    v3 = MEMORY[0x1E69E5928](v8);
  }

  v9 = v3;
  if (v7)
  {
    MEMORY[0x1E69E5920](v8);
  }

  MEMORY[0x1E69E5920](v6);
  [v9 setObject:location[0] forKeyedSubscript:@"silenBurnMiniBuddyEnabled"];
  v4 = [v9 copy];
  additionalInfo = selfCopy->_additionalInfo;
  selfCopy->_additionalInfo = v4;
  MEMORY[0x1E69E5920](additionalInfo);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)sharedEmailForManagedAppleID
{
  if ([(AKUserInformation *)self isManagedAppleID]&& [(NSNumber *)self->_isNotificationEmailAvailable BOOLValue]&& [(NSString *)self->_notificationEmail length])
  {
    v4 = MEMORY[0x1E69E5928](self->_notificationEmail);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)userInformationForUpdates
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(AKUserInformation);
  v3 = MEMORY[0x1E69E5928](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

+ (id)_coreIdentityFields
{
  v5 = &_coreIdentityFields_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_51);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _coreIdentityFields_fields;

  return v2;
}

uint64_t __49__AKUserInformation_Updates___coreIdentityFields__block_invoke(uint64_t a1)
{
  v5 = a1;
  v4 = a1;
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"firstName", @"lastName", @"accountName", @"primaryEmail", @"countryCode", 0}];
  v2 = _coreIdentityFields_fields;
  _coreIdentityFields_fields = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (id)_emailFields
{
  v5 = &_emailFields_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_645);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _emailFields_fields;

  return v2;
}

uint64_t __42__AKUserInformation_Updates___emailFields__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"forwardTo", @"previouslySelectedEmail", @"aliases", @"reachableEmails", 0, a1, a1}];
  v2 = _emailFields_fields;
  _emailFields_fields = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (id)_featureFlagFields
{
  v5 = &_featureFlagFields_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_647);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _featureFlagFields_fields;

  return v2;
}

uint64_t __48__AKUserInformation_Updates___featureFlagFields__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"primaryEmailVetted", @"phoneAsAppleId", @"appleIdSignInEnabled", @"privateAttestationEnabled", @"previouslySelectedAsPrivateEmail", @"webAccessEnabled", 0, a1, a1}];
  v2 = _featureFlagFields_fields;
  _featureFlagFields_fields = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (id)_ageFields
{
  v5 = &_ageFields_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_649);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _ageFields_fields;

  return v2;
}

uint64_t __40__AKUserInformation_Updates___ageFields__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"underAge", @"userAgeRange", @"isSenior", @"ageOfMajority", @"studentAccount", @"yob", @"birthMM", @"birthDD", 0, a1, a1}];
  v2 = _ageFields_fields;
  _ageFields_fields = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (id)_securityFields
{
  v5 = &_securityFields_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_651);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _securityFields_fields;

  return v2;
}

uint64_t __45__AKUserInformation_Updates___securityFields__block_invoke(uint64_t a1)
{
  v5 = a1;
  v4 = a1;
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"hsa2Phones", @"loginHandles", @"rep", 0}];
  v2 = _securityFields_fields;
  _securityFields_fields = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (id)_advancedSecurityFields
{
  v5 = &_advancedSecurityFields_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_653);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _advancedSecurityFields_fields;

  return v2;
}

void __53__AKUserInformation_Updates___advancedSecurityFields__block_invoke(void *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = [MEMORY[0x1E695DFA8] set];
  [v3[0] addObject:@"isCriticalAccountEditAllowed"];
  [v3[0] addObject:@"adpBlockMode"];
  v1 = [v3[0] copy];
  v2 = _advancedSecurityFields_fields;
  _advancedSecurityFields_fields = v1;
  MEMORY[0x1E69E5920](v2);
  objc_storeStrong(v3, 0);
}

+ (id)_guitarfishFields
{
  v5 = &_guitarfishFields_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_656);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _guitarfishFields_fields;

  return v2;
}

void __47__AKUserInformation_Updates___guitarfishFields__block_invoke(void *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = [MEMORY[0x1E695DFA8] set];
  v1 = [v3[0] copy];
  v2 = _guitarfishFields_fields;
  _guitarfishFields_fields = v1;
  MEMORY[0x1E69E5920](v2);
  objc_storeStrong(v3, 0);
}

+ (id)_managedFields
{
  v5 = &_managedFields_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_658);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _managedFields_fields;

  return v2;
}

uint64_t __44__AKUserInformation_Updates___managedFields__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{@"orgType", @"orgName", @"notificationEmailAvailable", @"notificationEmail", 0, a1, a1}];
  v2 = _managedFields_fields;
  _managedFields_fields = v1;
  return MEMORY[0x1E69E5920](v2);
}

- (BOOL)validateForUpdatesWithContext:(id)context error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  errorCopy = error;
  v43 = 0;
  v41 = 0;
  v27 = 1;
  if (location[0])
  {
    altDSID = [location[0] altDSID];
    v43 = 1;
    v27 = 1;
    if (altDSID)
    {
      altDSID2 = [location[0] altDSID];
      v41 = 1;
      v27 = [altDSID2 isEqualToString:&stru_1F0781300];
    }
  }

  if (v41)
  {
    MEMORY[0x1E69E5920](altDSID2);
  }

  if (v43)
  {
    MEMORY[0x1E69E5920](altDSID);
  }

  if (v27)
  {
    if (errorCopy)
    {
      v25 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7025];
      v4 = v25;
      *errorCopy = v25;
      v40 = _AKLogSystem();
      v39 = 16;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        log = v40;
        type = v39;
        __os_log_helper_16_0_0(v38);
        _os_log_error_impl(&dword_193225000, log, type, "Authentication error missing AltDSID", v38, 2u);
      }

      objc_storeStrong(&v40, 0);
    }

    v48 = 0;
    v37 = 1;
  }

  else
  {
    v36 = 0;
    v22 = +[AKAccountManager sharedInstance];
    altDSID3 = [location[0] altDSID];
    v34 = v36;
    v20 = [AKAccountManager authKitAccountWithAltDSID:v22 error:"authKitAccountWithAltDSID:error:"];
    objc_storeStrong(&v36, v34);
    v35 = v20;
    MEMORY[0x1E69E5920](altDSID3);
    MEMORY[0x1E69E5920](v22);
    if (v20)
    {
      v16 = +[AKAccountManager sharedInstance];
      v17 = [(AKAccountManager *)v16 securityLevelForAccount:v35];
      MEMORY[0x1E69E5920](v16);
      v31 = v17;
      if (v17 == 4 || v31 == 5)
      {
        v11 = selfCopy;
        altDSID4 = [location[0] altDSID];
        v13 = [(AKUserInformation *)v11 hasUpdateableFieldsForAccountWithAltDSID:?];
        MEMORY[0x1E69E5920](altDSID4);
        if (v13)
        {
          v48 = 1;
          v37 = 1;
        }

        else
        {
          v28 = _AKLogSystem();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            altDSID5 = [location[0] altDSID];
            __os_log_helper_16_2_2_8_112_8_64(v49, 1752392040, altDSID5);
            _os_log_error_impl(&dword_193225000, v28, OS_LOG_TYPE_ERROR, "No updateable fields provided for account with altDSID %{mask.hash}@", v49, 0x16u);
            MEMORY[0x1E69E5920](altDSID5);
          }

          objc_storeStrong(&v28, 0);
          if (errorCopy)
          {
            v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7056];
            v7 = v9;
            *errorCopy = v9;
          }

          v48 = 0;
          v37 = 1;
        }
      }

      else
      {
        v30 = _AKLogSystem();
        v29 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          altDSID6 = [location[0] altDSID];
          __os_log_helper_16_2_3_8_112_8_64_8_0(v50, 1752392040, altDSID6, v31);
          _os_log_error_impl(&dword_193225000, v30, v29, "Account with altDSID %{mask.hash}@ has unsupported security level %lu for user info updates", v50, 0x20u);
          MEMORY[0x1E69E5920](altDSID6);
        }

        objc_storeStrong(&v30, 0);
        if (errorCopy)
        {
          v14 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7070];
          v6 = v14;
          *errorCopy = v14;
        }

        v48 = 0;
        v37 = 1;
      }
    }

    else
    {
      oslog = _AKLogSystem();
      v32 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        altDSID7 = [location[0] altDSID];
        __os_log_helper_16_2_3_8_112_8_64_8_64(v51, 1752392040, altDSID7, v36);
        _os_log_error_impl(&dword_193225000, oslog, v32, "Failed to fetch account for altDSID %{mask.hash}@: %@", v51, 0x20u);
        MEMORY[0x1E69E5920](altDSID7);
      }

      objc_storeStrong(&oslog, 0);
      if (errorCopy)
      {
        v18 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7055 underlyingError:v36];
        v5 = v18;
        *errorCopy = v18;
      }

      v48 = 0;
      v37 = 1;
    }

    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v48 & 1;
}

+ (BOOL)isFieldUpdateableForAccountWithAltDSID:(id)d fieldName:(id)name
{
  v42 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v37 = 0;
  objc_storeStrong(&v37, name);
  if (location[0] && v37)
  {
    v35 = 0;
    v13 = +[AKAccountManager sharedInstance];
    v33 = v35;
    v12 = [(AKAccountManager *)v13 authKitAccountWithAltDSID:location[0] error:&v33];
    objc_storeStrong(&v35, v33);
    v34 = v12;
    MEMORY[0x1E69E5920](v13);
    if (v34)
    {
      v10 = +[AKAccountManager sharedInstance];
      v11 = [(AKAccountManager *)v10 securityLevelForAccount:v34];
      MEMORY[0x1E69E5920](v10);
      v30 = v11;
      if (v11 == 4 || v30 == 5)
      {
        _coreIdentityFields = [selfCopy _coreIdentityFields];
        v25 = 0;
        v23 = 0;
        v21 = 0;
        v19 = 0;
        v17 = 0;
        v15 = 0;
        v7 = 1;
        if (([_coreIdentityFields containsObject:v37] & 1) == 0)
        {
          _emailFields = [selfCopy _emailFields];
          v25 = 1;
          v7 = 1;
          if (([_emailFields containsObject:v37] & 1) == 0)
          {
            _featureFlagFields = [selfCopy _featureFlagFields];
            v23 = 1;
            v7 = 1;
            if (([_featureFlagFields containsObject:v37] & 1) == 0)
            {
              _ageFields = [selfCopy _ageFields];
              v21 = 1;
              v7 = 1;
              if (([_ageFields containsObject:v37] & 1) == 0)
              {
                _securityFields = [selfCopy _securityFields];
                v19 = 1;
                v7 = 1;
                if (([_securityFields containsObject:v37] & 1) == 0)
                {
                  _advancedSecurityFields = [selfCopy _advancedSecurityFields];
                  v17 = 1;
                  v7 = 1;
                  if (([_advancedSecurityFields containsObject:v37] & 1) == 0)
                  {
                    _guitarfishFields = [selfCopy _guitarfishFields];
                    v15 = 1;
                    v7 = [_guitarfishFields containsObject:v37];
                  }
                }
              }
            }
          }
        }

        if (v15)
        {
          MEMORY[0x1E69E5920](_guitarfishFields);
        }

        if (v17)
        {
          MEMORY[0x1E69E5920](_advancedSecurityFields);
        }

        if (v19)
        {
          MEMORY[0x1E69E5920](_securityFields);
        }

        if (v21)
        {
          MEMORY[0x1E69E5920](_ageFields);
        }

        if (v23)
        {
          MEMORY[0x1E69E5920](_featureFlagFields);
        }

        if (v25)
        {
          MEMORY[0x1E69E5920](_emailFields);
        }

        MEMORY[0x1E69E5920](_coreIdentityFields);
        if (v7)
        {
          v40 = 1;
          v36 = 1;
        }

        else
        {
          if (v30 == 5)
          {
            _managedFields = [selfCopy _managedFields];
            v40 = [_managedFields containsObject:v37] & 1;
            MEMORY[0x1E69E5920](_managedFields);
          }

          else
          {
            v40 = 0;
          }

          v36 = 1;
        }
      }

      else
      {
        v29 = _AKLogSystem();
        v28 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v29;
          v9 = v28;
          __os_log_helper_16_0_0(v27);
          _os_log_impl(&dword_193225000, v8, v9, "Incompatible security level for account updates", v27, 2u);
        }

        objc_storeStrong(&v29, 0);
        v40 = 0;
        v36 = 1;
      }
    }

    else
    {
      v32 = _AKLogSystem();
      v31 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_3_8_112_8_64_8_64(v41, 1752392040, location[0], v35);
        _os_log_error_impl(&dword_193225000, v32, v31, "Failed to fetch account for altDSID %{mask.hash}@: %@", v41, 0x20u);
      }

      objc_storeStrong(&v32, 0);
      v40 = 0;
      v36 = 1;
    }

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  else
  {
    v40 = 0;
    v36 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v40 & 1;
}

- (BOOL)hasUpdateableFieldsForAccountWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v5 = [(AKUserInformation *)selfCopy updateableFieldNamesForAccountWithAltDSID:location[0]];
  v4 = [v5 count] != 0;
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (id)updateableFieldNamesForAccountWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  _getCoreIdentityFields = [(AKUserInformation *)selfCopy _getCoreIdentityFields];
  _getEmailFields = [(AKUserInformation *)selfCopy _getEmailFields];
  _getSecurityFields = [(AKUserInformation *)selfCopy _getSecurityFields];
  _getFeatureFlagFields = [(AKUserInformation *)selfCopy _getFeatureFlagFields];
  _getAgeAndDemographicsFields = [(AKUserInformation *)selfCopy _getAgeAndDemographicsFields];
  _getManagedAccountFields = [(AKUserInformation *)selfCopy _getManagedAccountFields];
  _getAdvancedSecurityFields = [(AKUserInformation *)selfCopy _getAdvancedSecurityFields];
  _getGuitarfishFields = [(AKUserInformation *)selfCopy _getGuitarfishFields];
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:_getCoreIdentityFields];
  [array addObjectsFromArray:_getEmailFields];
  [array addObjectsFromArray:_getSecurityFields];
  [array addObjectsFromArray:_getFeatureFlagFields];
  [array addObjectsFromArray:_getAgeAndDemographicsFields];
  [array addObjectsFromArray:_getManagedAccountFields];
  [array addObjectsFromArray:_getAdvancedSecurityFields];
  [array addObjectsFromArray:_getGuitarfishFields];
  v5 = array;
  v4 = MEMORY[0x1E696AE18];
  v8 = MEMORY[0x1E69E5928](location[0]);
  v6 = [v4 predicateWithBlock:?];
  v9 = [v5 filteredArrayUsingPredicate:?];
  MEMORY[0x1E69E5920](v6);
  v7 = MEMORY[0x1E69E5928](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&array, 0);
  objc_storeStrong(&_getGuitarfishFields, 0);
  objc_storeStrong(&_getAdvancedSecurityFields, 0);
  objc_storeStrong(&_getManagedAccountFields, 0);
  objc_storeStrong(&_getAgeAndDemographicsFields, 0);
  objc_storeStrong(&_getFeatureFlagFields, 0);
  objc_storeStrong(&_getSecurityFields, 0);
  objc_storeStrong(&_getEmailFields, 0);
  objc_storeStrong(&_getCoreIdentityFields, 0);
  objc_storeStrong(location, 0);

  return v7;
}

BOOL __72__AKUserInformation_Updates__updateableFieldNamesForAccountWithAltDSID___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6 = [AKUserInformation isFieldUpdateableForAccountWithAltDSID:a1[4] fieldName:location[0]];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (id)_getCoreIdentityFields
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = [MEMORY[0x1E695DF70] array];
  givenName = [(AKUserInformation *)selfCopy givenName];
  MEMORY[0x1E69E5920](givenName);
  if (givenName)
  {
    [v9[0] addObject:@"firstName"];
  }

  familyName = [(AKUserInformation *)selfCopy familyName];
  MEMORY[0x1E69E5920](familyName);
  if (familyName)
  {
    [v9[0] addObject:@"lastName"];
  }

  accountName = [(AKUserInformation *)selfCopy accountName];
  MEMORY[0x1E69E5920](accountName);
  if (accountName)
  {
    [v9[0] addObject:@"accountName"];
  }

  primaryEmailAddress = [(AKUserInformation *)selfCopy primaryEmailAddress];
  MEMORY[0x1E69E5920](primaryEmailAddress);
  if (primaryEmailAddress)
  {
    [v9[0] addObject:@"primaryEmail"];
  }

  appleIDCountryCode = [(AKUserInformation *)selfCopy appleIDCountryCode];
  MEMORY[0x1E69E5920](appleIDCountryCode);
  if (appleIDCountryCode)
  {
    [v9[0] addObject:@"countryCode"];
  }

  v3 = [v9[0] copy];
  objc_storeStrong(v9, 0);

  return v3;
}

- (id)_getEmailFields
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = [MEMORY[0x1E695DF70] array];
  forwardingEmail = [(AKUserInformation *)selfCopy forwardingEmail];
  MEMORY[0x1E69E5920](forwardingEmail);
  if (forwardingEmail)
  {
    [v14[0] addObject:@"forwardTo"];
  }

  previouslySelectedEmail = [(AKUserInformation *)selfCopy previouslySelectedEmail];
  MEMORY[0x1E69E5920](previouslySelectedEmail);
  if (previouslySelectedEmail)
  {
    [v14[0] addObject:@"previouslySelectedEmail"];
  }

  accountAliases = [(AKUserInformation *)selfCopy accountAliases];
  v12 = 0;
  v7 = 0;
  if (accountAliases)
  {
    accountAliases2 = [(AKUserInformation *)selfCopy accountAliases];
    v12 = 1;
    v7 = [(NSArray *)accountAliases2 count]!= 0;
  }

  if (v12)
  {
    MEMORY[0x1E69E5920](accountAliases2);
  }

  MEMORY[0x1E69E5920](accountAliases);
  if (v7)
  {
    [v14[0] addObject:@"aliases"];
  }

  reachableEmails = [(AKUserInformation *)selfCopy reachableEmails];
  v10 = 0;
  v5 = 0;
  if (reachableEmails)
  {
    reachableEmails2 = [(AKUserInformation *)selfCopy reachableEmails];
    v10 = 1;
    v5 = [(NSArray *)reachableEmails2 count]!= 0;
  }

  if (v10)
  {
    MEMORY[0x1E69E5920](reachableEmails2);
  }

  MEMORY[0x1E69E5920](reachableEmails);
  if (v5)
  {
    [v14[0] addObject:@"reachableEmails"];
  }

  v3 = [v14[0] copy];
  objc_storeStrong(v14, 0);

  return v3;
}

- (id)_getSecurityFields
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = [MEMORY[0x1E695DF70] array];
  trustedPhoneNumbers = [(AKUserInformation *)selfCopy trustedPhoneNumbers];
  v11 = 0;
  v8 = 0;
  if (trustedPhoneNumbers)
  {
    trustedPhoneNumbers2 = [(AKUserInformation *)selfCopy trustedPhoneNumbers];
    v11 = 1;
    v8 = [(NSArray *)trustedPhoneNumbers2 count]!= 0;
  }

  if (v11)
  {
    MEMORY[0x1E69E5920](trustedPhoneNumbers2);
  }

  MEMORY[0x1E69E5920](trustedPhoneNumbers);
  if (v8)
  {
    [v13[0] addObject:@"hsa2Phones"];
  }

  loginHandles = [(AKUserInformation *)selfCopy loginHandles];
  v9 = 0;
  v6 = 0;
  if (loginHandles)
  {
    loginHandles2 = [(AKUserInformation *)selfCopy loginHandles];
    v9 = 1;
    v6 = [(NSArray *)loginHandles2 count]!= 0;
  }

  if (v9)
  {
    MEMORY[0x1E69E5920](loginHandles2);
  }

  MEMORY[0x1E69E5920](loginHandles);
  if (v6)
  {
    [v13[0] addObject:@"loginHandles"];
  }

  if ([(AKUserInformation *)selfCopy repairState])
  {
    [v13[0] addObject:@"rep"];
  }

  v4 = [v13[0] copy];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_getFeatureFlagFields
{
  selfCopy = self;
  v11[1] = a2;
  v11[0] = [MEMORY[0x1E695DF70] array];
  vettedPrimaryEmail = [(AKUserInformation *)selfCopy vettedPrimaryEmail];
  MEMORY[0x1E69E5920](vettedPrimaryEmail);
  if (vettedPrimaryEmail)
  {
    [v11[0] addObject:@"primaryEmailVetted"];
  }

  phoneAsAppleID = [(AKUserInformation *)selfCopy phoneAsAppleID];
  MEMORY[0x1E69E5920](phoneAsAppleID);
  if (phoneAsAppleID)
  {
    [v11[0] addObject:@"phoneAsAppleId"];
  }

  hasUsedAuthorization = [(AKUserInformation *)selfCopy hasUsedAuthorization];
  MEMORY[0x1E69E5920](hasUsedAuthorization);
  if (hasUsedAuthorization)
  {
    [v11[0] addObject:@"appleIdSignInEnabled"];
  }

  privateAttestationEnabled = [(AKUserInformation *)selfCopy privateAttestationEnabled];
  MEMORY[0x1E69E5920](privateAttestationEnabled);
  if (privateAttestationEnabled)
  {
    [v11[0] addObject:@"privateAttestationEnabled"];
  }

  previouslyWantedPrivateEmail = [(AKUserInformation *)selfCopy previouslyWantedPrivateEmail];
  MEMORY[0x1E69E5920](previouslyWantedPrivateEmail);
  if (previouslyWantedPrivateEmail)
  {
    [v11[0] addObject:@"previouslySelectedAsPrivateEmail"];
  }

  webAccessEnabled = [(AKUserInformation *)selfCopy webAccessEnabled];
  MEMORY[0x1E69E5920](webAccessEnabled);
  if (webAccessEnabled)
  {
    [v11[0] addObject:@"webAccessEnabled"];
  }

  v4 = [v11[0] copy];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_getAgeAndDemographicsFields
{
  selfCopy = self;
  v11[1] = a2;
  v11[0] = [MEMORY[0x1E695DF70] array];
  isUnderage = [(AKUserInformation *)selfCopy isUnderage];
  MEMORY[0x1E69E5920](isUnderage);
  if (isUnderage)
  {
    [v11[0] addObject:@"underAge"];
  }

  if ([(AKUserInformation *)selfCopy userAgeRange])
  {
    [v11[0] addObject:@"userAgeRange"];
  }

  isSenior = [(AKUserInformation *)selfCopy isSenior];
  MEMORY[0x1E69E5920](isSenior);
  if (isSenior)
  {
    [v11[0] addObject:@"isSenior"];
  }

  ageOfMajority = [(AKUserInformation *)selfCopy ageOfMajority];
  MEMORY[0x1E69E5920](ageOfMajority);
  if (ageOfMajority)
  {
    [v11[0] addObject:@"ageOfMajority"];
  }

  isLegacyStudent = [(AKUserInformation *)selfCopy isLegacyStudent];
  MEMORY[0x1E69E5920](isLegacyStudent);
  if (isLegacyStudent)
  {
    [v11[0] addObject:@"studentAccount"];
  }

  birthYear = [(AKUserInformation *)selfCopy birthYear];
  MEMORY[0x1E69E5920](birthYear);
  if (birthYear)
  {
    [v11[0] addObject:@"yob"];
  }

  birthMonth = [(AKUserInformation *)selfCopy birthMonth];
  MEMORY[0x1E69E5920](birthMonth);
  if (birthMonth)
  {
    [v11[0] addObject:@"birthMM"];
  }

  birthDay = [(AKUserInformation *)selfCopy birthDay];
  MEMORY[0x1E69E5920](birthDay);
  if (birthDay)
  {
    [v11[0] addObject:@"birthDD"];
  }

  v3 = [v11[0] copy];
  objc_storeStrong(v11, 0);

  return v3;
}

- (id)_getManagedAccountFields
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = [MEMORY[0x1E695DF70] array];
  managedOrganizationType = [(AKUserInformation *)selfCopy managedOrganizationType];
  MEMORY[0x1E69E5920](managedOrganizationType);
  if (managedOrganizationType)
  {
    [v9[0] addObject:@"orgType"];
  }

  managedOrganizationName = [(AKUserInformation *)selfCopy managedOrganizationName];
  MEMORY[0x1E69E5920](managedOrganizationName);
  if (managedOrganizationName)
  {
    [v9[0] addObject:@"orgName"];
  }

  isNotificationEmailAvailable = [(AKUserInformation *)selfCopy isNotificationEmailAvailable];
  MEMORY[0x1E69E5920](isNotificationEmailAvailable);
  if (isNotificationEmailAvailable)
  {
    [v9[0] addObject:@"notificationEmailAvailable"];
  }

  notificationEmail = [(AKUserInformation *)selfCopy notificationEmail];
  MEMORY[0x1E69E5920](notificationEmail);
  if (notificationEmail)
  {
    [v9[0] addObject:@"notificationEmail"];
  }

  v4 = [v9[0] copy];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_getAdvancedSecurityFields
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = [MEMORY[0x1E695DF70] array];
  criticalAccountEditsAllowed = [(AKUserInformation *)selfCopy criticalAccountEditsAllowed];
  MEMORY[0x1E69E5920](criticalAccountEditsAllowed);
  if (criticalAccountEditsAllowed)
  {
    [v7[0] addObject:@"isCriticalAccountEditAllowed"];
  }

  adpBlockMode = [(AKUserInformation *)selfCopy adpBlockMode];
  bOOLValue = [(NSNumber *)adpBlockMode BOOLValue];
  MEMORY[0x1E69E5920](adpBlockMode);
  if (bOOLValue)
  {
    [v7[0] addObject:@"adpBlockMode"];
  }

  v3 = [v7[0] copy];
  objc_storeStrong(v7, 0);

  return v3;
}

- (id)_getGuitarfishFields
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x1E695DF70] array];
  v3 = [v4[0] copy];
  objc_storeStrong(v4, 0);

  return v3;
}

@end
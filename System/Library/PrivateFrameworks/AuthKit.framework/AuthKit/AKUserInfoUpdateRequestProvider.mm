@interface AKUserInfoUpdateRequestProvider
+ (BOOL)_isADPBlockModeOnlyRequest:(id)request context:(id)context;
+ (BOOL)_isPDPOnlyRequest:(id)request context:(id)context;
+ (BOOL)_validateParameterCombination:(id)combination context:(id)context error:(id *)error;
+ (id)_urlBagKeyForUserInformation:(id)information context:(id)context;
+ (id)providerWithContext:(id)context userInformation:(id)information error:(id *)error;
- (AKUserInfoUpdateRequestProvider)initWithContext:(id)context userInformation:(id)information;
- (id)_buildRequestBodyFromUserInformation:(id)information;
- (void)_setupRequestWithUserInformation:(id)information;
@end

@implementation AKUserInfoUpdateRequestProvider

+ (id)providerWithContext:(id)context userInformation:(id)information error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, information);
  errorCopy = error;
  v14 = 0;
  v13 = 0;
  v12 = [selfCopy _validateParameterCombination:v16 context:location[0] error:&v13];
  objc_storeStrong(&v14, v13);
  if (v12)
  {
    v6 = [selfCopy alloc];
    v19 = [v6 initWithContext:location[0] userInformation:v16];
  }

  else
  {
    if (errorCopy)
    {
      v9 = v14;
      v5 = v14;
      *errorCopy = v9;
    }

    v19 = 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v7 = v19;

  return v7;
}

- (AKUserInfoUpdateRequestProvider)initWithContext:(id)context userInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, information);
  v10 = [objc_opt_class() _urlBagKeyForUserInformation:v11 context:location[0]];
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKUserInfoUpdateRequestProvider;
  v8 = [(AKURLRequestProviderImpl *)&v9 initWithContext:location[0] urlBagKey:v10];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    [(AKUserInfoUpdateRequestProvider *)selfCopy _setupRequestWithUserInformation:v11];
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)_setupRequestWithUserInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  [(AKGrandSlamRequestProvider *)selfCopy setAuthenticatedRequest:1];
  [(AKGrandSlamRequestProvider *)selfCopy setExpectedResponseType:?];
  [(AKGrandSlamRequestProvider *)selfCopy setRequestBodyType:1];
  v10 = [(AKUserInfoUpdateRequestProvider *)selfCopy _buildRequestBodyFromUserInformation:location[0]];
  if ([v10 count])
  {
    [(AKURLRequestProviderImpl *)selfCopy setAuthKitBody:v10];
    v9 = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100036FE8(v13, [v10 count]);
      _os_log_debug_impl(&_mh_execute_header, v9, v8, "Request body created with %lu fields", v13, 0xCu);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    v6 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v3 = oslog;
      v4 = v6;
      sub_10001CEEC(v5);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "No updateable fields provided in user information", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_buildRequestBodyFromUserInformation:(id)information
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  v232 = +[NSMutableDictionary dictionary];
  givenName = [location[0] givenName];
  _objc_release(givenName);
  if (givenName)
  {
    givenName2 = [location[0] givenName];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(givenName2);
    v231 = _AKLogSystem();
    v230 = 2;
    if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
    {
      log = v231;
      type = v230;
      sub_10001CEEC(v229);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Adding givenName to request body", v229, 2u);
    }

    objc_storeStrong(&v231, 0);
  }

  familyName = [location[0] familyName];
  _objc_release(familyName);
  if (familyName)
  {
    familyName2 = [location[0] familyName];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(familyName2);
    v228 = _AKLogSystem();
    v227 = 2;
    if (os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG))
    {
      v123 = v228;
      v124 = v227;
      sub_10001CEEC(v226);
      _os_log_debug_impl(&_mh_execute_header, v123, v124, "Adding familyName to request body", v226, 2u);
    }

    objc_storeStrong(&v228, 0);
  }

  accountName = [location[0] accountName];
  _objc_release(accountName);
  if (accountName)
  {
    accountName2 = [location[0] accountName];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(accountName2);
    v225 = _AKLogSystem();
    v224 = 2;
    if (os_log_type_enabled(v225, OS_LOG_TYPE_DEBUG))
    {
      v119 = v225;
      v120 = v224;
      sub_10001CEEC(v223);
      _os_log_debug_impl(&_mh_execute_header, v119, v120, "Adding accountName to request body", v223, 2u);
    }

    objc_storeStrong(&v225, 0);
  }

  primaryEmailAddress = [location[0] primaryEmailAddress];
  _objc_release(primaryEmailAddress);
  if (primaryEmailAddress)
  {
    primaryEmailAddress2 = [location[0] primaryEmailAddress];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(primaryEmailAddress2);
    v222 = _AKLogSystem();
    v221 = 2;
    if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
    {
      v115 = v222;
      v116 = v221;
      sub_10001CEEC(v220);
      _os_log_debug_impl(&_mh_execute_header, v115, v116, "Adding primaryEmailAddress to request body", v220, 2u);
    }

    objc_storeStrong(&v222, 0);
  }

  appleIDCountryCode = [location[0] appleIDCountryCode];
  _objc_release(appleIDCountryCode);
  if (appleIDCountryCode)
  {
    appleIDCountryCode2 = [location[0] appleIDCountryCode];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(appleIDCountryCode2);
    v219 = _AKLogSystem();
    v218 = 2;
    if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
    {
      v111 = v219;
      v112 = v218;
      sub_10001CEEC(v217);
      _os_log_debug_impl(&_mh_execute_header, v111, v112, "Adding appleIDCountryCode to request body", v217, 2u);
    }

    objc_storeStrong(&v219, 0);
  }

  forwardingEmail = [location[0] forwardingEmail];
  _objc_release(forwardingEmail);
  if (forwardingEmail)
  {
    forwardingEmail2 = [location[0] forwardingEmail];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(forwardingEmail2);
    v216 = _AKLogSystem();
    v215 = 2;
    if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
    {
      v107 = v216;
      v108 = v215;
      sub_10001CEEC(v214);
      _os_log_debug_impl(&_mh_execute_header, v107, v108, "Adding forwardingEmail to request body", v214, 2u);
    }

    objc_storeStrong(&v216, 0);
  }

  previouslySelectedEmail = [location[0] previouslySelectedEmail];
  _objc_release(previouslySelectedEmail);
  if (previouslySelectedEmail)
  {
    previouslySelectedEmail2 = [location[0] previouslySelectedEmail];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(previouslySelectedEmail2);
    v213 = _AKLogSystem();
    v212 = 2;
    if (os_log_type_enabled(v213, OS_LOG_TYPE_DEBUG))
    {
      v103 = v213;
      v104 = v212;
      sub_10001CEEC(v211);
      _os_log_debug_impl(&_mh_execute_header, v103, v104, "Adding previouslySelectedEmail to request body", v211, 2u);
    }

    objc_storeStrong(&v213, 0);
  }

  accountAliases = [location[0] accountAliases];
  v209 = 0;
  v102 = 0;
  if (accountAliases)
  {
    accountAliases2 = [location[0] accountAliases];
    v209 = 1;
    v102 = [accountAliases2 count] != 0;
  }

  if (v209)
  {
    _objc_release(accountAliases2);
  }

  _objc_release(accountAliases);
  if (v102)
  {
    accountAliases3 = [location[0] accountAliases];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(accountAliases3);
    v208 = _AKLogSystem();
    v207 = 2;
    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
    {
      v98 = v208;
      v99 = v207;
      sub_10001CEEC(v206);
      _os_log_debug_impl(&_mh_execute_header, v98, v99, "Adding accountAliases to request body", v206, 2u);
    }

    objc_storeStrong(&v208, 0);
  }

  reachableEmails = [location[0] reachableEmails];
  v204 = 0;
  v97 = 0;
  if (reachableEmails)
  {
    reachableEmails2 = [location[0] reachableEmails];
    v204 = 1;
    v97 = [reachableEmails2 count] != 0;
  }

  if (v204)
  {
    _objc_release(reachableEmails2);
  }

  _objc_release(reachableEmails);
  if (v97)
  {
    reachableEmails3 = [location[0] reachableEmails];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(reachableEmails3);
    v203 = _AKLogSystem();
    v202 = 2;
    if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
    {
      v93 = v203;
      v94 = v202;
      sub_10001CEEC(v201);
      _os_log_debug_impl(&_mh_execute_header, v93, v94, "Adding reachableEmails to request body", v201, 2u);
    }

    objc_storeStrong(&v203, 0);
  }

  trustedPhoneNumbers = [location[0] trustedPhoneNumbers];
  v199 = 0;
  v92 = 0;
  if (trustedPhoneNumbers)
  {
    trustedPhoneNumbers2 = [location[0] trustedPhoneNumbers];
    v199 = 1;
    v92 = [trustedPhoneNumbers2 count] != 0;
  }

  if (v199)
  {
    _objc_release(trustedPhoneNumbers2);
  }

  _objc_release(trustedPhoneNumbers);
  if (v92)
  {
    trustedPhoneNumbers3 = [location[0] trustedPhoneNumbers];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(trustedPhoneNumbers3);
    v198 = _AKLogSystem();
    v197 = 2;
    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
    {
      v88 = v198;
      v89 = v197;
      sub_10001CEEC(v196);
      _os_log_debug_impl(&_mh_execute_header, v88, v89, "Adding trustedPhoneNumbers to request body", v196, 2u);
    }

    objc_storeStrong(&v198, 0);
  }

  loginHandles = [location[0] loginHandles];
  v194 = 0;
  v87 = 0;
  if (loginHandles)
  {
    loginHandles2 = [location[0] loginHandles];
    v194 = 1;
    v87 = [loginHandles2 count] != 0;
  }

  if (v194)
  {
    _objc_release(loginHandles2);
  }

  _objc_release(loginHandles);
  if (v87)
  {
    loginHandles3 = [location[0] loginHandles];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(loginHandles3);
    oslog = _AKLogSystem();
    v192 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v83 = oslog;
      v84 = v192;
      sub_10001CEEC(v191);
      _os_log_debug_impl(&_mh_execute_header, v83, v84, "Adding loginHandles to request body", v191, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  if ([location[0] repairState])
  {
    v82 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] repairState]);
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v82);
    v190 = _AKLogSystem();
    v189 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
    {
      v80 = v190;
      v81 = v189;
      sub_10001CEEC(v188);
      _os_log_debug_impl(&_mh_execute_header, v80, v81, "Adding repairState to request body", v188, 2u);
    }

    objc_storeStrong(&v190, 0);
  }

  vettedPrimaryEmail = [location[0] vettedPrimaryEmail];
  _objc_release(vettedPrimaryEmail);
  if (vettedPrimaryEmail)
  {
    vettedPrimaryEmail2 = [location[0] vettedPrimaryEmail];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(vettedPrimaryEmail2);
    v187 = _AKLogSystem();
    v186 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
    {
      v76 = v187;
      v77 = v186;
      sub_10001CEEC(v185);
      _os_log_debug_impl(&_mh_execute_header, v76, v77, "Adding vettedPrimaryEmail to request body", v185, 2u);
    }

    objc_storeStrong(&v187, 0);
  }

  phoneAsAppleID = [location[0] phoneAsAppleID];
  _objc_release(phoneAsAppleID);
  if (phoneAsAppleID)
  {
    phoneAsAppleID2 = [location[0] phoneAsAppleID];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(phoneAsAppleID2);
    v184 = _AKLogSystem();
    v183 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
    {
      v72 = v184;
      v73 = v183;
      sub_10001CEEC(v182);
      _os_log_debug_impl(&_mh_execute_header, v72, v73, "Adding phoneAsAppleID to request body", v182, 2u);
    }

    objc_storeStrong(&v184, 0);
  }

  hasUsedAuthorization = [location[0] hasUsedAuthorization];
  _objc_release(hasUsedAuthorization);
  if (hasUsedAuthorization)
  {
    hasUsedAuthorization2 = [location[0] hasUsedAuthorization];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(hasUsedAuthorization2);
    v181 = _AKLogSystem();
    v180 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
    {
      v68 = v181;
      v69 = v180;
      sub_10001CEEC(v179);
      _os_log_debug_impl(&_mh_execute_header, v68, v69, "Adding hasUsedAuthorization to request body", v179, 2u);
    }

    objc_storeStrong(&v181, 0);
  }

  privateAttestationEnabled = [location[0] privateAttestationEnabled];
  _objc_release(privateAttestationEnabled);
  if (privateAttestationEnabled)
  {
    privateAttestationEnabled2 = [location[0] privateAttestationEnabled];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(privateAttestationEnabled2);
    v178 = _AKLogSystem();
    v177 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
    {
      v64 = v178;
      v65 = v177;
      sub_10001CEEC(v176);
      _os_log_debug_impl(&_mh_execute_header, v64, v65, "Adding privateAttestationEnabled to request body", v176, 2u);
    }

    objc_storeStrong(&v178, 0);
  }

  webAccessEnabled = [location[0] webAccessEnabled];
  _objc_release(webAccessEnabled);
  if (webAccessEnabled)
  {
    webAccessEnabled2 = [location[0] webAccessEnabled];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(webAccessEnabled2);
    v175 = _AKLogSystem();
    v174 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
    {
      v60 = v175;
      v61 = v174;
      sub_10001CEEC(v173);
      _os_log_debug_impl(&_mh_execute_header, v60, v61, "Adding webAccessEnabled to request body", v173, 2u);
    }

    objc_storeStrong(&v175, 0);
  }

  isUnderage = [location[0] isUnderage];
  _objc_release(isUnderage);
  if (isUnderage)
  {
    isUnderage2 = [location[0] isUnderage];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(isUnderage2);
    v172 = _AKLogSystem();
    v171 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
    {
      v56 = v172;
      v57 = v171;
      sub_10001CEEC(v170);
      _os_log_debug_impl(&_mh_execute_header, v56, v57, "Adding isUnderage to request body", v170, 2u);
    }

    objc_storeStrong(&v172, 0);
  }

  if ([location[0] userAgeRange])
  {
    v55 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location[0] userAgeRange]);
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v55);
    v169 = _AKLogSystem();
    v168 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
    {
      v53 = v169;
      v54 = v168;
      sub_10001CEEC(v167);
      _os_log_debug_impl(&_mh_execute_header, v53, v54, "Adding userAgeRange to request body", v167, 2u);
    }

    objc_storeStrong(&v169, 0);
  }

  isSenior = [location[0] isSenior];
  _objc_release(isSenior);
  if (isSenior)
  {
    isSenior2 = [location[0] isSenior];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(isSenior2);
    v166 = _AKLogSystem();
    v165 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
    {
      v49 = v166;
      v50 = v165;
      sub_10001CEEC(v164);
      _os_log_debug_impl(&_mh_execute_header, v49, v50, "Adding isSenior to request body", v164, 2u);
    }

    objc_storeStrong(&v166, 0);
  }

  ageOfMajority = [location[0] ageOfMajority];
  _objc_release(ageOfMajority);
  if (ageOfMajority)
  {
    ageOfMajority2 = [location[0] ageOfMajority];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(ageOfMajority2);
    v163 = _AKLogSystem();
    v162 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
    {
      v45 = v163;
      v46 = v162;
      sub_10001CEEC(v161);
      _os_log_debug_impl(&_mh_execute_header, v45, v46, "Adding ageOfMajority to request body", v161, 2u);
    }

    objc_storeStrong(&v163, 0);
  }

  isLegacyStudent = [location[0] isLegacyStudent];
  _objc_release(isLegacyStudent);
  if (isLegacyStudent)
  {
    isLegacyStudent2 = [location[0] isLegacyStudent];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(isLegacyStudent2);
    v160 = _AKLogSystem();
    v159 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
    {
      v41 = v160;
      v42 = v159;
      sub_10001CEEC(v158);
      _os_log_debug_impl(&_mh_execute_header, v41, v42, "Adding isLegacyStudent to request body", v158, 2u);
    }

    objc_storeStrong(&v160, 0);
  }

  managedOrganizationType = [location[0] managedOrganizationType];
  _objc_release(managedOrganizationType);
  if (managedOrganizationType)
  {
    managedOrganizationType2 = [location[0] managedOrganizationType];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(managedOrganizationType2);
    v157 = _AKLogSystem();
    v156 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
    {
      v37 = v157;
      v38 = v156;
      sub_10001CEEC(v155);
      _os_log_debug_impl(&_mh_execute_header, v37, v38, "Adding managedOrganizationType to request body", v155, 2u);
    }

    objc_storeStrong(&v157, 0);
  }

  managedOrganizationName = [location[0] managedOrganizationName];
  _objc_release(managedOrganizationName);
  if (managedOrganizationName)
  {
    managedOrganizationName2 = [location[0] managedOrganizationName];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(managedOrganizationName2);
    v154 = _AKLogSystem();
    v153 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
    {
      v33 = v154;
      v34 = v153;
      sub_10001CEEC(v152);
      _os_log_debug_impl(&_mh_execute_header, v33, v34, "Adding managedOrganizationName to request body", v152, 2u);
    }

    objc_storeStrong(&v154, 0);
  }

  isNotificationEmailAvailable = [location[0] isNotificationEmailAvailable];
  _objc_release(isNotificationEmailAvailable);
  if (isNotificationEmailAvailable)
  {
    isNotificationEmailAvailable2 = [location[0] isNotificationEmailAvailable];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(isNotificationEmailAvailable2);
    v151 = _AKLogSystem();
    v150 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
    {
      v29 = v151;
      v30 = v150;
      sub_10001CEEC(v149);
      _os_log_debug_impl(&_mh_execute_header, v29, v30, "Adding isNotificationEmailAvailable to request body", v149, 2u);
    }

    objc_storeStrong(&v151, 0);
  }

  notificationEmail = [location[0] notificationEmail];
  _objc_release(notificationEmail);
  if (notificationEmail)
  {
    notificationEmail2 = [location[0] notificationEmail];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(notificationEmail2);
    v148 = _AKLogSystem();
    v147 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
    {
      v25 = v148;
      v26 = v147;
      sub_10001CEEC(v146);
      _os_log_debug_impl(&_mh_execute_header, v25, v26, "Adding notificationEmail to request body", v146, 2u);
    }

    objc_storeStrong(&v148, 0);
  }

  birthYear = [location[0] birthYear];
  _objc_release(birthYear);
  if (birthYear)
  {
    birthYear2 = [location[0] birthYear];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(birthYear2);
    v145 = _AKLogSystem();
    v144 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
    {
      v21 = v145;
      v22 = v144;
      sub_10001CEEC(v143);
      _os_log_debug_impl(&_mh_execute_header, v21, v22, "Adding birthYear to request body", v143, 2u);
    }

    objc_storeStrong(&v145, 0);
  }

  birthMonth = [location[0] birthMonth];
  _objc_release(birthMonth);
  if (birthMonth)
  {
    birthMonth2 = [location[0] birthMonth];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(birthMonth2);
    v142 = _AKLogSystem();
    v141 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
    {
      v17 = v142;
      v18 = v141;
      sub_10001CEEC(v140);
      _os_log_debug_impl(&_mh_execute_header, v17, v18, "Adding birthMonth to request body", v140, 2u);
    }

    objc_storeStrong(&v142, 0);
  }

  birthDay = [location[0] birthDay];
  _objc_release(birthDay);
  if (birthDay)
  {
    birthDay2 = [location[0] birthDay];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(birthDay2);
    v139 = _AKLogSystem();
    v138 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
    {
      v13 = v139;
      v14 = v138;
      sub_10001CEEC(v137);
      _os_log_debug_impl(&_mh_execute_header, v13, v14, "Adding birthDay to request body", v137, 2u);
    }

    objc_storeStrong(&v139, 0);
  }

  criticalAccountEditsAllowed = [location[0] criticalAccountEditsAllowed];
  _objc_release(criticalAccountEditsAllowed);
  if (criticalAccountEditsAllowed)
  {
    criticalAccountEditsAllowed2 = [location[0] criticalAccountEditsAllowed];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(criticalAccountEditsAllowed2);
    v136 = _AKLogSystem();
    v135 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
    {
      v9 = v136;
      v10 = v135;
      sub_10001CEEC(v134);
      _os_log_debug_impl(&_mh_execute_header, v9, v10, "Adding criticalAccountEditsAllowed to request body", v134, 2u);
    }

    objc_storeStrong(&v136, 0);
  }

  adpBlockMode = [location[0] adpBlockMode];
  _objc_release(adpBlockMode);
  if (adpBlockMode)
  {
    adpBlockMode2 = [location[0] adpBlockMode];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(adpBlockMode2);
    v133 = _AKLogSystem();
    v132 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
    {
      v5 = v133;
      v6 = v132;
      sub_10001CEEC(v131);
      _os_log_debug_impl(&_mh_execute_header, v5, v6, "Adding adpBlockMode to request body", v131, 2u);
    }

    objc_storeStrong(&v133, 0);
  }

  v4 = [v232 copy];
  objc_storeStrong(&v232, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)_urlBagKeyForUserInformation:(id)information context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, information);
  v7 = 0;
  objc_storeStrong(&v7, context);
  if ([selfCopy _isADPBlockModeOnlyRequest:location[0] context:v7])
  {
    v10 = _objc_retain(AKURLBagKeyADPBlockMode);
  }

  else
  {
    v10 = _objc_retain(AKURLBagKeyUpdateUserInfo);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  v4 = v10;

  return v4;
}

+ (BOOL)_isPDPOnlyRequest:(id)request context:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v6 = 0;
  objc_storeStrong(&v6, context);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (BOOL)_isADPBlockModeOnlyRequest:(id)request context:(id)context
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v14 = 0;
  objc_storeStrong(&v14, context);
  adpBlockMode = [location[0] adpBlockMode];
  v9 = adpBlockMode != 0;
  _objc_release(adpBlockMode);
  v13 = v9;
  if (v9)
  {
    v6 = location[0];
    altDSID = [v14 altDSID];
    v11 = [v6 updateableFieldNamesForAccountWithAltDSID:?];
    _objc_release(altDSID);
    v10 = [v11 mutableCopy];
    [v10 removeObject:AKUserInfoADPBlockModeKey];
    v16 = [v10 count] == 0;
    v12 = 1;
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v16 = 0;
    v12 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v16;
}

+ (BOOL)_validateParameterCombination:(id)combination context:(id)context error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, combination);
  v7 = 0;
  objc_storeStrong(&v7, context);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end
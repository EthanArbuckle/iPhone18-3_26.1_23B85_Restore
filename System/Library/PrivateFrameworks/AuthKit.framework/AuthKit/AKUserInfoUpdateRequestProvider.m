@interface AKUserInfoUpdateRequestProvider
+ (BOOL)_isADPBlockModeOnlyRequest:(id)a3 context:(id)a4;
+ (BOOL)_isPDPOnlyRequest:(id)a3 context:(id)a4;
+ (BOOL)_validateParameterCombination:(id)a3 context:(id)a4 error:(id *)a5;
+ (id)_urlBagKeyForUserInformation:(id)a3 context:(id)a4;
+ (id)providerWithContext:(id)a3 userInformation:(id)a4 error:(id *)a5;
- (AKUserInfoUpdateRequestProvider)initWithContext:(id)a3 userInformation:(id)a4;
- (id)_buildRequestBodyFromUserInformation:(id)a3;
- (void)_setupRequestWithUserInformation:(id)a3;
@end

@implementation AKUserInfoUpdateRequestProvider

+ (id)providerWithContext:(id)a3 userInformation:(id)a4 error:(id *)a5
{
  v18 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = a5;
  v14 = 0;
  v13 = 0;
  v12 = [v18 _validateParameterCombination:v16 context:location[0] error:&v13];
  objc_storeStrong(&v14, v13);
  if (v12)
  {
    v6 = [v18 alloc];
    v19 = [v6 initWithContext:location[0] userInformation:v16];
  }

  else
  {
    if (v15)
    {
      v9 = v14;
      v5 = v14;
      *v15 = v9;
    }

    v19 = 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  v7 = v19;

  return v7;
}

- (AKUserInfoUpdateRequestProvider)initWithContext:(id)a3 userInformation:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [objc_opt_class() _urlBagKeyForUserInformation:v11 context:location[0]];
  v4 = v13;
  v13 = 0;
  v9.receiver = v4;
  v9.super_class = AKUserInfoUpdateRequestProvider;
  v8 = [(AKURLRequestProviderImpl *)&v9 initWithContext:location[0] urlBagKey:v10];
  v13 = v8;
  objc_storeStrong(&v13, v8);
  if (v8)
  {
    [(AKUserInfoUpdateRequestProvider *)v13 _setupRequestWithUserInformation:v11];
  }

  v6 = _objc_retain(v13);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v6;
}

- (void)_setupRequestWithUserInformation:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKGrandSlamRequestProvider *)v12 setAuthenticatedRequest:1];
  [(AKGrandSlamRequestProvider *)v12 setExpectedResponseType:?];
  [(AKGrandSlamRequestProvider *)v12 setRequestBodyType:1];
  v10 = [(AKUserInfoUpdateRequestProvider *)v12 _buildRequestBodyFromUserInformation:location[0]];
  if ([v10 count])
  {
    [(AKURLRequestProviderImpl *)v12 setAuthKitBody:v10];
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

- (id)_buildRequestBodyFromUserInformation:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v232 = +[NSMutableDictionary dictionary];
  v130 = [location[0] givenName];
  _objc_release(v130);
  if (v130)
  {
    v129 = [location[0] givenName];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v129);
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

  v126 = [location[0] familyName];
  _objc_release(v126);
  if (v126)
  {
    v125 = [location[0] familyName];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v125);
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

  v122 = [location[0] accountName];
  _objc_release(v122);
  if (v122)
  {
    v121 = [location[0] accountName];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v121);
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

  v118 = [location[0] primaryEmailAddress];
  _objc_release(v118);
  if (v118)
  {
    v117 = [location[0] primaryEmailAddress];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v117);
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

  v114 = [location[0] appleIDCountryCode];
  _objc_release(v114);
  if (v114)
  {
    v113 = [location[0] appleIDCountryCode];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v113);
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

  v110 = [location[0] forwardingEmail];
  _objc_release(v110);
  if (v110)
  {
    v109 = [location[0] forwardingEmail];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v109);
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

  v106 = [location[0] previouslySelectedEmail];
  _objc_release(v106);
  if (v106)
  {
    v105 = [location[0] previouslySelectedEmail];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v105);
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

  v101 = [location[0] accountAliases];
  v209 = 0;
  v102 = 0;
  if (v101)
  {
    v210 = [location[0] accountAliases];
    v209 = 1;
    v102 = [v210 count] != 0;
  }

  if (v209)
  {
    _objc_release(v210);
  }

  _objc_release(v101);
  if (v102)
  {
    v100 = [location[0] accountAliases];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v100);
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

  v96 = [location[0] reachableEmails];
  v204 = 0;
  v97 = 0;
  if (v96)
  {
    v205 = [location[0] reachableEmails];
    v204 = 1;
    v97 = [v205 count] != 0;
  }

  if (v204)
  {
    _objc_release(v205);
  }

  _objc_release(v96);
  if (v97)
  {
    v95 = [location[0] reachableEmails];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v95);
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

  v91 = [location[0] trustedPhoneNumbers];
  v199 = 0;
  v92 = 0;
  if (v91)
  {
    v200 = [location[0] trustedPhoneNumbers];
    v199 = 1;
    v92 = [v200 count] != 0;
  }

  if (v199)
  {
    _objc_release(v200);
  }

  _objc_release(v91);
  if (v92)
  {
    v90 = [location[0] trustedPhoneNumbers];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v90);
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

  v86 = [location[0] loginHandles];
  v194 = 0;
  v87 = 0;
  if (v86)
  {
    v195 = [location[0] loginHandles];
    v194 = 1;
    v87 = [v195 count] != 0;
  }

  if (v194)
  {
    _objc_release(v195);
  }

  _objc_release(v86);
  if (v87)
  {
    v85 = [location[0] loginHandles];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v85);
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

  v79 = [location[0] vettedPrimaryEmail];
  _objc_release(v79);
  if (v79)
  {
    v78 = [location[0] vettedPrimaryEmail];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v78);
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

  v75 = [location[0] phoneAsAppleID];
  _objc_release(v75);
  if (v75)
  {
    v74 = [location[0] phoneAsAppleID];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v74);
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

  v71 = [location[0] hasUsedAuthorization];
  _objc_release(v71);
  if (v71)
  {
    v70 = [location[0] hasUsedAuthorization];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v70);
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

  v67 = [location[0] privateAttestationEnabled];
  _objc_release(v67);
  if (v67)
  {
    v66 = [location[0] privateAttestationEnabled];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v66);
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

  v63 = [location[0] webAccessEnabled];
  _objc_release(v63);
  if (v63)
  {
    v62 = [location[0] webAccessEnabled];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v62);
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

  v59 = [location[0] isUnderage];
  _objc_release(v59);
  if (v59)
  {
    v58 = [location[0] isUnderage];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v58);
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

  v52 = [location[0] isSenior];
  _objc_release(v52);
  if (v52)
  {
    v51 = [location[0] isSenior];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v51);
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

  v48 = [location[0] ageOfMajority];
  _objc_release(v48);
  if (v48)
  {
    v47 = [location[0] ageOfMajority];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v47);
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

  v44 = [location[0] isLegacyStudent];
  _objc_release(v44);
  if (v44)
  {
    v43 = [location[0] isLegacyStudent];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v43);
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

  v40 = [location[0] managedOrganizationType];
  _objc_release(v40);
  if (v40)
  {
    v39 = [location[0] managedOrganizationType];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v39);
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

  v36 = [location[0] managedOrganizationName];
  _objc_release(v36);
  if (v36)
  {
    v35 = [location[0] managedOrganizationName];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v35);
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

  v32 = [location[0] isNotificationEmailAvailable];
  _objc_release(v32);
  if (v32)
  {
    v31 = [location[0] isNotificationEmailAvailable];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v31);
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

  v28 = [location[0] notificationEmail];
  _objc_release(v28);
  if (v28)
  {
    v27 = [location[0] notificationEmail];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v27);
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

  v24 = [location[0] birthYear];
  _objc_release(v24);
  if (v24)
  {
    v23 = [location[0] birthYear];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v23);
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

  v20 = [location[0] birthMonth];
  _objc_release(v20);
  if (v20)
  {
    v19 = [location[0] birthMonth];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v19);
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

  v16 = [location[0] birthDay];
  _objc_release(v16);
  if (v16)
  {
    v15 = [location[0] birthDay];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v15);
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

  v12 = [location[0] criticalAccountEditsAllowed];
  _objc_release(v12);
  if (v12)
  {
    v11 = [location[0] criticalAccountEditsAllowed];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v11);
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

  v8 = [location[0] adpBlockMode];
  _objc_release(v8);
  if (v8)
  {
    v7 = [location[0] adpBlockMode];
    [v232 setObject:? forKeyedSubscript:?];
    _objc_release(v7);
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

+ (id)_urlBagKeyForUserInformation:(id)a3 context:(id)a4
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ([v9 _isADPBlockModeOnlyRequest:location[0] context:v7])
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

+ (BOOL)_isPDPOnlyRequest:(id)a3 context:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

+ (BOOL)_isADPBlockModeOnlyRequest:(id)a3 context:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v4 = [location[0] adpBlockMode];
  v9 = v4 != 0;
  _objc_release(v4);
  v13 = v9;
  if (v9)
  {
    v6 = location[0];
    v7 = [v14 altDSID];
    v11 = [v6 updateableFieldNamesForAccountWithAltDSID:?];
    _objc_release(v7);
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

+ (BOOL)_validateParameterCombination:(id)a3 context:(id)a4 error:(id *)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

@end
@interface SOKerberosExtensionData
- (SOKerberosExtensionData)initWithDictionary:(id)dictionary;
@end

@implementation SOKerberosExtensionData

- (SOKerberosExtensionData)initWithDictionary:(id)dictionary
{
  v262 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v257.receiver = self;
  v257.super_class = SOKerberosExtensionData;
  v5 = [(SOKerberosExtensionData *)&v257 init];

  if (v5)
  {
    v6 = NSStringFromSelector(sel_pwReqComplexity);
    v7 = [dictionaryCopy objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = NSStringFromSelector(sel_pwReqComplexity);
      v9 = [dictionaryCopy objectForKeyedSubscript:v8];
      v5->_pwReqComplexity = [v9 BOOLValue];
    }

    else
    {
      v5->_pwReqComplexity = 0;
    }

    v10 = NSStringFromSelector(sel_syncLocalPassword);
    v11 = [dictionaryCopy objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = NSStringFromSelector(sel_syncLocalPassword);
      v13 = [dictionaryCopy objectForKeyedSubscript:v12];
      v5->_syncLocalPassword = [v13 BOOLValue];
    }

    else
    {
      v5->_syncLocalPassword = 0;
    }

    v14 = NSStringFromSelector(sel_pwNotificationDays);
    v15 = [dictionaryCopy objectForKeyedSubscript:v14];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = NSStringFromSelector(sel_pwNotificationDays);
      v18 = [dictionaryCopy objectForKeyedSubscript:v17];
      pwNotificationDays = v5->_pwNotificationDays;
      v5->_pwNotificationDays = v18;
    }

    else
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:15];
      v17 = v5->_pwNotificationDays;
      v5->_pwNotificationDays = v20;
    }

    v21 = NSStringFromSelector(sel_pwExpireOverride);
    v22 = [dictionaryCopy objectForKeyedSubscript:v21];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if (v23)
    {
      v24 = NSStringFromSelector(sel_pwExpireOverride);
      v25 = [dictionaryCopy objectForKeyedSubscript:v24];
      pwExpireOverride = v5->_pwExpireOverride;
      v5->_pwExpireOverride = v25;
    }

    v27 = NSStringFromSelector(sel_pwChangeURL);
    v28 = [dictionaryCopy objectForKeyedSubscript:v27];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      v30 = NSStringFromSelector(sel_pwChangeURL);
      v31 = [dictionaryCopy objectForKeyedSubscript:v30];
      pwChangeURL = v5->_pwChangeURL;
      v5->_pwChangeURL = v31;
    }

    v33 = NSStringFromSelector(sel_pwReqLength);
    v34 = [dictionaryCopy objectForKeyedSubscript:v33];
    objc_opt_class();
    v35 = objc_opt_isKindOfClass();

    if (v35)
    {
      v36 = NSStringFromSelector(sel_pwReqLength);
      v37 = [dictionaryCopy objectForKeyedSubscript:v36];
      pwReqLength = v5->_pwReqLength;
      v5->_pwReqLength = v37;
    }

    v39 = NSStringFromSelector(sel_pwReqMinAge);
    v40 = [dictionaryCopy objectForKeyedSubscript:v39];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();

    if (v41)
    {
      v42 = NSStringFromSelector(sel_pwReqMinAge);
      v43 = [dictionaryCopy objectForKeyedSubscript:v42];
      pwReqMinAge = v5->_pwReqMinAge;
      v5->_pwReqMinAge = v43;
    }

    v45 = NSStringFromSelector(sel_pwReqHistory);
    v46 = [dictionaryCopy objectForKeyedSubscript:v45];
    objc_opt_class();
    v47 = objc_opt_isKindOfClass();

    if (v47)
    {
      v48 = NSStringFromSelector(sel_pwReqHistory);
      v49 = [dictionaryCopy objectForKeyedSubscript:v48];
      pwReqHistory = v5->_pwReqHistory;
      v5->_pwReqHistory = v49;
    }

    v51 = NSStringFromSelector(sel_pwReqText);
    v52 = [dictionaryCopy objectForKeyedSubscript:v51];
    objc_opt_class();
    v53 = objc_opt_isKindOfClass();

    if (v53)
    {
      v54 = NSStringFromSelector(sel_pwReqText);
      v55 = [dictionaryCopy objectForKeyedSubscript:v54];
      pwReqText = v5->_pwReqText;
      v5->_pwReqText = v55;
    }

    v57 = NSStringFromSelector(sel_pwReqRTFData);
    v58 = [dictionaryCopy objectForKeyedSubscript:v57];
    objc_opt_class();
    v59 = objc_opt_isKindOfClass();

    if (v59)
    {
      v60 = NSStringFromSelector(sel_pwReqRTFData);
      v61 = [dictionaryCopy objectForKeyedSubscript:v60];
      pwReqRTFData = v5->_pwReqRTFData;
      v5->_pwReqRTFData = v61;
    }

    v63 = NSStringFromSelector(sel_helpText);
    v64 = [dictionaryCopy objectForKeyedSubscript:v63];
    objc_opt_class();
    v65 = objc_opt_isKindOfClass();

    if (v65)
    {
      v66 = NSStringFromSelector(sel_helpText);
      v67 = [dictionaryCopy objectForKeyedSubscript:v66];
      helpText = v5->_helpText;
      v5->_helpText = v67;
    }

    v69 = NSStringFromSelector(sel_customUsernameLabel);
    v70 = [dictionaryCopy objectForKeyedSubscript:v69];
    objc_opt_class();
    v71 = objc_opt_isKindOfClass();

    if (v71)
    {
      v72 = NSStringFromSelector(sel_customUsernameLabel);
      v73 = [dictionaryCopy objectForKeyedSubscript:v72];
      customUsernameLabel = v5->_customUsernameLabel;
      v5->_customUsernameLabel = v73;
    }

    v75 = NSStringFromSelector(sel_cacheName);
    v76 = [dictionaryCopy objectForKeyedSubscript:v75];
    objc_opt_class();
    v77 = objc_opt_isKindOfClass();

    if (v77)
    {
      v78 = NSStringFromSelector(sel_cacheName);
      v79 = [dictionaryCopy objectForKeyedSubscript:v78];
      cacheName = v5->_cacheName;
      v5->_cacheName = v79;
    }

    v81 = NSStringFromSelector(sel_principalName);
    v82 = [dictionaryCopy objectForKeyedSubscript:v81];
    objc_opt_class();
    v83 = objc_opt_isKindOfClass();

    if (v83)
    {
      v84 = NSStringFromSelector(sel_principalName);
      v85 = [dictionaryCopy objectForKeyedSubscript:v84];
      principalName = v5->_principalName;
      v5->_principalName = v85;
    }

    v87 = NSStringFromSelector(sel_siteCode);
    v88 = [dictionaryCopy objectForKeyedSubscript:v87];
    objc_opt_class();
    v89 = objc_opt_isKindOfClass();

    if (v89)
    {
      v90 = NSStringFromSelector(sel_siteCode);
      v91 = [dictionaryCopy objectForKeyedSubscript:v90];
      siteCode = v5->_siteCode;
      v5->_siteCode = v91;
    }

    v93 = NSStringFromSelector(sel_certificateUUID);
    v94 = [dictionaryCopy objectForKeyedSubscript:v93];
    objc_opt_class();
    v95 = objc_opt_isKindOfClass();

    if (v95)
    {
      v96 = NSStringFromSelector(sel_certificateUUID);
      v97 = [dictionaryCopy objectForKeyedSubscript:v96];
      certificateUUID = v5->_certificateUUID;
      v5->_certificateUUID = v97;
    }

    v99 = NSStringFromSelector(sel_useSiteAutoDiscovery);
    v100 = [dictionaryCopy objectForKeyedSubscript:v99];

    if (v100)
    {
      v101 = NSStringFromSelector(sel_useSiteAutoDiscovery);
      v102 = [dictionaryCopy objectForKeyedSubscript:v101];
      v5->_useSiteAutoDiscovery = [v102 BOOLValue];
    }

    else
    {
      v5->_useSiteAutoDiscovery = 1;
    }

    v103 = NSStringFromSelector(sel_allowAutomaticLogin);
    v104 = [dictionaryCopy objectForKeyedSubscript:v103];

    if (v104)
    {
      v105 = NSStringFromSelector(sel_allowAutomaticLogin);
      v106 = [dictionaryCopy objectForKeyedSubscript:v105];
      v5->_allowAutomaticLogin = [v106 BOOLValue];
    }

    else
    {
      v5->_allowAutomaticLogin = 1;
    }

    v107 = NSStringFromSelector(sel_requireUserPresence);
    v108 = [dictionaryCopy objectForKeyedSubscript:v107];

    if (v108)
    {
      v109 = NSStringFromSelector(sel_requireUserPresence);
      v110 = [dictionaryCopy objectForKeyedSubscript:v109];
      v5->_requireUserPresence = [v110 BOOLValue];
    }

    else
    {
      v5->_requireUserPresence = 0;
    }

    v111 = NSStringFromSelector(sel_monitorCredentialsCache);
    v112 = [dictionaryCopy objectForKeyedSubscript:v111];

    if (v112)
    {
      v113 = NSStringFromSelector(sel_monitorCredentialsCache);
      v114 = [dictionaryCopy objectForKeyedSubscript:v113];
      v5->_monitorCredentialsCache = [v114 BOOLValue];
    }

    else
    {
      v5->_monitorCredentialsCache = 1;
    }

    v115 = NSStringFromSelector(sel_replicationTime);
    v116 = [dictionaryCopy objectForKeyedSubscript:v115];
    objc_opt_class();
    v117 = objc_opt_isKindOfClass();

    if (v117)
    {
      v118 = NSStringFromSelector(sel_replicationTime);
      v119 = [dictionaryCopy objectForKeyedSubscript:v118];
      replicationTime = v5->_replicationTime;
      v5->_replicationTime = v119;
    }

    else
    {
      v121 = [MEMORY[0x277CCABB0] numberWithDouble:1800.0];
      v118 = v5->_replicationTime;
      v5->_replicationTime = v121;
    }

    v122 = NSStringFromSelector(sel_credentialBundleIdACL);
    v123 = [dictionaryCopy objectForKeyedSubscript:v122];

    if (v123)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        array = [MEMORY[0x277CBEB18] array];
        v253 = 0u;
        v254 = 0u;
        v255 = 0u;
        v256 = 0u;
        v125 = v123;
        v126 = [v125 countByEnumeratingWithState:&v253 objects:v261 count:16];
        if (v126)
        {
          v127 = v126;
          v128 = *v254;
          do
          {
            for (i = 0; i != v127; ++i)
            {
              if (*v254 != v128)
              {
                objc_enumerationMutation(v125);
              }

              v130 = *(*(&v253 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [array addObject:v130];
              }
            }

            v127 = [v125 countByEnumeratingWithState:&v253 objects:v261 count:16];
          }

          while (v127);
        }

        v131 = [array copy];
        credentialBundleIdACL = v5->_credentialBundleIdACL;
        v5->_credentialBundleIdACL = v131;
      }
    }

    v133 = NSStringFromSelector(sel_domainRealmMapping);
    v134 = [dictionaryCopy objectForKeyedSubscript:v133];

    v236 = v134;
    if (v134)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v231 = v123;
        v233 = v5;
        v234 = dictionaryCopy;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v249 = 0u;
        v250 = 0u;
        v251 = 0u;
        v252 = 0u;
        v240 = v134;
        obj = [v240 allKeys];
        v135 = [obj countByEnumeratingWithState:&v249 objects:v260 count:16];
        if (v135)
        {
          v136 = v135;
          v239 = *v250;
          do
          {
            for (j = 0; j != v136; ++j)
            {
              if (*v250 != v239)
              {
                objc_enumerationMutation(obj);
              }

              v138 = *(*(&v249 + 1) + 8 * j);
              array2 = [MEMORY[0x277CBEB18] array];
              v140 = [v240 objectForKeyedSubscript:v138];
              v245 = 0u;
              v246 = 0u;
              v247 = 0u;
              v248 = 0u;
              v141 = v140;
              v142 = [v141 countByEnumeratingWithState:&v245 objects:v259 count:16];
              if (v142)
              {
                v143 = v142;
                v144 = *v246;
                do
                {
                  for (k = 0; k != v143; ++k)
                  {
                    if (*v246 != v144)
                    {
                      objc_enumerationMutation(v141);
                    }

                    v146 = *(*(&v245 + 1) + 8 * k);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [array2 addObject:v146];
                    }
                  }

                  v143 = [v141 countByEnumeratingWithState:&v245 objects:v259 count:16];
                }

                while (v143);
              }

              if ([array2 count])
              {
                [dictionary setObject:array2 forKeyedSubscript:v138];
              }
            }

            v136 = [obj countByEnumeratingWithState:&v249 objects:v260 count:16];
          }

          while (v136);
        }

        v147 = [dictionary copy];
        v5 = v233;
        domainRealmMapping = v233->_domainRealmMapping;
        v233->_domainRealmMapping = v147;

        dictionaryCopy = v234;
        v123 = v231;
      }
    }

    v149 = NSStringFromSelector(sel_isDefaultRealm);
    v150 = [dictionaryCopy objectForKeyedSubscript:v149];

    if (v150)
    {
      v151 = NSStringFromSelector(sel_isDefaultRealm);
      v152 = [dictionaryCopy objectForKeyedSubscript:v151];
      v5->_isDefaultRealm = [v152 BOOLValue];
    }

    else
    {
      v5->_isDefaultRealm = 0;
    }

    v153 = NSStringFromSelector(sel_allowPasswordChange);
    v154 = [dictionaryCopy objectForKeyedSubscript:v153];

    if (v154)
    {
      v155 = NSStringFromSelector(sel_allowPasswordChange);
      v156 = [dictionaryCopy objectForKeyedSubscript:v155];
      v5->_allowPasswordChange = [v156 BOOLValue];
    }

    else
    {
      v5->_allowPasswordChange = 1;
    }

    v157 = NSStringFromSelector(sel_delayUserSetup);
    v158 = [dictionaryCopy objectForKeyedSubscript:v157];

    if (v158)
    {
      v159 = NSStringFromSelector(sel_delayUserSetup);
      v160 = [dictionaryCopy objectForKeyedSubscript:v159];
      v5->_delayUserSetup = [v160 BOOLValue];
    }

    else
    {
      v5->_delayUserSetup = 0;
    }

    v161 = NSStringFromSelector(sel_requireTLSForLDAP);
    v162 = [dictionaryCopy objectForKeyedSubscript:v161];

    if (v162)
    {
      v163 = NSStringFromSelector(sel_requireTLSForLDAP);
      v164 = [dictionaryCopy objectForKeyedSubscript:v163];
      v5->_requireTLSForLDAP = [v164 BOOLValue];
    }

    else
    {
      v5->_requireTLSForLDAP = 0;
    }

    v165 = NSStringFromSelector(sel_includeManagedAppsInBundleIdACL);
    v166 = [dictionaryCopy objectForKeyedSubscript:v165];

    if (v166)
    {
      v167 = NSStringFromSelector(sel_includeManagedAppsInBundleIdACL);
      v168 = [dictionaryCopy objectForKeyedSubscript:v167];
      v5->_includeManagedAppsInBundleIdACL = [v168 BOOLValue];
    }

    else
    {
      v5->_includeManagedAppsInBundleIdACL = 0;
    }

    v169 = NSStringFromSelector(sel_includeKerberosAppsInBundleIdACL);
    v170 = [dictionaryCopy objectForKeyedSubscript:v169];

    if (v170)
    {
      v171 = NSStringFromSelector(sel_includeKerberosAppsInBundleIdACL);
      v172 = [dictionaryCopy objectForKeyedSubscript:v171];
      v5->_includeKerberosAppsInBundleIdACL = [v172 BOOLValue];
    }

    else
    {
      v5->_includeKerberosAppsInBundleIdACL = 0;
    }

    v173 = NSStringFromSelector(sel_credentialUseMode);
    v174 = [dictionaryCopy objectForKeyedSubscript:v173];
    objc_opt_class();
    v175 = objc_opt_isKindOfClass();

    if (v175)
    {
      v176 = NSStringFromSelector(sel_credentialUseMode);
      v177 = [dictionaryCopy objectForKeyedSubscript:v176];

      if ([v177 isEqualToString:@"kerberosDefault"])
      {
        v5->_credentialUseMode = 0;
      }

      if ([v177 isEqualToString:@"whenNotSpecified"])
      {
        v5->_credentialUseMode = 1;
      }

      if ([v177 isEqualToString:@"always"])
      {
        v5->_credentialUseMode = 2;
      }
    }

    else
    {
      v5->_credentialUseMode = 2;
    }

    if ([MEMORY[0x277CEBF10] isInternalBuild])
    {
      v178 = NSStringFromSelector(sel_password);
      v179 = [dictionaryCopy objectForKeyedSubscript:v178];
      objc_opt_class();
      v180 = objc_opt_isKindOfClass();

      if (v180)
      {
        v181 = NSStringFromSelector(sel_password);
        v182 = [dictionaryCopy objectForKeyedSubscript:v181];
        password = v5->_password;
        v5->_password = v182;
      }
    }

    v184 = NSStringFromSelector(sel_preferredKDCs);
    v185 = [dictionaryCopy objectForKeyedSubscript:v184];

    if (v185)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v232 = v123;
        v235 = dictionaryCopy;
        array3 = [MEMORY[0x277CBEB18] array];
        v241 = 0u;
        v242 = 0u;
        v243 = 0u;
        v244 = 0u;
        v187 = v185;
        v188 = [v187 countByEnumeratingWithState:&v241 objects:v258 count:16];
        if (v188)
        {
          v189 = v188;
          v190 = *v242;
          do
          {
            for (m = 0; m != v189; ++m)
            {
              if (*v242 != v190)
              {
                objc_enumerationMutation(v187);
              }

              v192 = *(*(&v241 + 1) + 8 * m);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v193 = [SOKerberosServer serverWithString:v192];

                if (v193)
                {
                  [array3 addObject:v192];
                }
              }
            }

            v189 = [v187 countByEnumeratingWithState:&v241 objects:v258 count:16];
          }

          while (v189);
        }

        v194 = [array3 copy];
        preferredKDCs = v5->_preferredKDCs;
        v5->_preferredKDCs = v194;

        dictionaryCopy = v235;
        v123 = v232;
      }
    }

    v196 = NSStringFromSelector(sel_usePlatformSSOTGT);
    v197 = [dictionaryCopy objectForKeyedSubscript:v196];

    if (v197)
    {
      v198 = NSStringFromSelector(sel_usePlatformSSOTGT);
      v199 = [dictionaryCopy objectForKeyedSubscript:v198];
      v5->_usePlatformSSOTGT = [v199 BOOLValue];
    }

    else
    {
      v5->_usePlatformSSOTGT = 0;
    }

    v200 = NSStringFromSelector(sel_allowPlatformSSOAuthFallback);
    v201 = [dictionaryCopy objectForKeyedSubscript:v200];

    if (v201)
    {
      v202 = NSStringFromSelector(sel_allowPlatformSSOAuthFallback);
      v203 = [dictionaryCopy objectForKeyedSubscript:v202];
      v5->_allowPlatformSSOAuthFallback = [v203 BOOLValue];
    }

    else
    {
      v5->_allowPlatformSSOAuthFallback = 1;
    }

    v204 = NSStringFromSelector(sel_performKerberosOnly);
    v205 = [dictionaryCopy objectForKeyedSubscript:v204];

    if (v205)
    {
      v206 = NSStringFromSelector(sel_performKerberosOnly);
      v207 = [dictionaryCopy objectForKeyedSubscript:v206];
      v5->_performKerberosOnly = [v207 BOOLValue];
    }

    else
    {
      v5->_performKerberosOnly = 0;
    }

    v208 = NSStringFromSelector(sel_identityIssuerAutoSelectFilter);
    v209 = [dictionaryCopy objectForKeyedSubscript:v208];

    if (v209)
    {
      v210 = NSStringFromSelector(sel_identityIssuerAutoSelectFilter);
      v211 = [dictionaryCopy objectForKeyedSubscript:v210];
      identityIssuerAutoSelectFilter = v5->_identityIssuerAutoSelectFilter;
      v5->_identityIssuerAutoSelectFilter = v211;
    }

    else
    {
      v5->_performKerberosOnly = 0;
    }

    v213 = NSStringFromSelector(sel_allowSmartCard);
    v214 = [dictionaryCopy objectForKeyedSubscript:v213];

    if (v214)
    {
      v215 = NSStringFromSelector(sel_allowSmartCard);
      v216 = [dictionaryCopy objectForKeyedSubscript:v215];
      allowSmartCard = v5->_allowSmartCard;
      v5->_allowSmartCard = v216;
    }

    else
    {
      v215 = v5->_allowSmartCard;
      v5->_allowSmartCard = MEMORY[0x277CBEC38];
    }

    v218 = NSStringFromSelector(sel_allowPassword);
    v219 = [dictionaryCopy objectForKeyedSubscript:v218];

    if (v219)
    {
      v220 = NSStringFromSelector(sel_allowPassword);
      v221 = [dictionaryCopy objectForKeyedSubscript:v220];
      allowPassword = v5->_allowPassword;
      v5->_allowPassword = v221;
    }

    else
    {
      v220 = v5->_allowPassword;
      v5->_allowPassword = MEMORY[0x277CBEC38];
    }

    v223 = NSStringFromSelector(sel_startInSmartCardMode);
    v224 = [dictionaryCopy objectForKeyedSubscript:v223];

    if (v224)
    {
      v225 = NSStringFromSelector(sel_startInSmartCardMode);
      v226 = [dictionaryCopy objectForKeyedSubscript:v225];
      startInSmartCardMode = v5->_startInSmartCardMode;
      v5->_startInSmartCardMode = v226;
    }

    else
    {
      v225 = v5->_startInSmartCardMode;
      v5->_startInSmartCardMode = MEMORY[0x277CBEC28];
    }
  }

  v228 = v5;

  v229 = *MEMORY[0x277D85DE8];
  return v228;
}

@end
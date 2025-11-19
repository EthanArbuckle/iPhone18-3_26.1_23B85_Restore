@interface SOKerberosExtensionData
- (SOKerberosExtensionData)initWithDictionary:(id)a3;
@end

@implementation SOKerberosExtensionData

- (SOKerberosExtensionData)initWithDictionary:(id)a3
{
  v262 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v257.receiver = self;
  v257.super_class = SOKerberosExtensionData;
  v5 = [(SOKerberosExtensionData *)&v257 init];

  if (v5)
  {
    v6 = NSStringFromSelector(sel_pwReqComplexity);
    v7 = [v4 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = NSStringFromSelector(sel_pwReqComplexity);
      v9 = [v4 objectForKeyedSubscript:v8];
      v5->_pwReqComplexity = [v9 BOOLValue];
    }

    else
    {
      v5->_pwReqComplexity = 0;
    }

    v10 = NSStringFromSelector(sel_syncLocalPassword);
    v11 = [v4 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = NSStringFromSelector(sel_syncLocalPassword);
      v13 = [v4 objectForKeyedSubscript:v12];
      v5->_syncLocalPassword = [v13 BOOLValue];
    }

    else
    {
      v5->_syncLocalPassword = 0;
    }

    v14 = NSStringFromSelector(sel_pwNotificationDays);
    v15 = [v4 objectForKeyedSubscript:v14];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = NSStringFromSelector(sel_pwNotificationDays);
      v18 = [v4 objectForKeyedSubscript:v17];
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
    v22 = [v4 objectForKeyedSubscript:v21];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if (v23)
    {
      v24 = NSStringFromSelector(sel_pwExpireOverride);
      v25 = [v4 objectForKeyedSubscript:v24];
      pwExpireOverride = v5->_pwExpireOverride;
      v5->_pwExpireOverride = v25;
    }

    v27 = NSStringFromSelector(sel_pwChangeURL);
    v28 = [v4 objectForKeyedSubscript:v27];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if (v29)
    {
      v30 = NSStringFromSelector(sel_pwChangeURL);
      v31 = [v4 objectForKeyedSubscript:v30];
      pwChangeURL = v5->_pwChangeURL;
      v5->_pwChangeURL = v31;
    }

    v33 = NSStringFromSelector(sel_pwReqLength);
    v34 = [v4 objectForKeyedSubscript:v33];
    objc_opt_class();
    v35 = objc_opt_isKindOfClass();

    if (v35)
    {
      v36 = NSStringFromSelector(sel_pwReqLength);
      v37 = [v4 objectForKeyedSubscript:v36];
      pwReqLength = v5->_pwReqLength;
      v5->_pwReqLength = v37;
    }

    v39 = NSStringFromSelector(sel_pwReqMinAge);
    v40 = [v4 objectForKeyedSubscript:v39];
    objc_opt_class();
    v41 = objc_opt_isKindOfClass();

    if (v41)
    {
      v42 = NSStringFromSelector(sel_pwReqMinAge);
      v43 = [v4 objectForKeyedSubscript:v42];
      pwReqMinAge = v5->_pwReqMinAge;
      v5->_pwReqMinAge = v43;
    }

    v45 = NSStringFromSelector(sel_pwReqHistory);
    v46 = [v4 objectForKeyedSubscript:v45];
    objc_opt_class();
    v47 = objc_opt_isKindOfClass();

    if (v47)
    {
      v48 = NSStringFromSelector(sel_pwReqHistory);
      v49 = [v4 objectForKeyedSubscript:v48];
      pwReqHistory = v5->_pwReqHistory;
      v5->_pwReqHistory = v49;
    }

    v51 = NSStringFromSelector(sel_pwReqText);
    v52 = [v4 objectForKeyedSubscript:v51];
    objc_opt_class();
    v53 = objc_opt_isKindOfClass();

    if (v53)
    {
      v54 = NSStringFromSelector(sel_pwReqText);
      v55 = [v4 objectForKeyedSubscript:v54];
      pwReqText = v5->_pwReqText;
      v5->_pwReqText = v55;
    }

    v57 = NSStringFromSelector(sel_pwReqRTFData);
    v58 = [v4 objectForKeyedSubscript:v57];
    objc_opt_class();
    v59 = objc_opt_isKindOfClass();

    if (v59)
    {
      v60 = NSStringFromSelector(sel_pwReqRTFData);
      v61 = [v4 objectForKeyedSubscript:v60];
      pwReqRTFData = v5->_pwReqRTFData;
      v5->_pwReqRTFData = v61;
    }

    v63 = NSStringFromSelector(sel_helpText);
    v64 = [v4 objectForKeyedSubscript:v63];
    objc_opt_class();
    v65 = objc_opt_isKindOfClass();

    if (v65)
    {
      v66 = NSStringFromSelector(sel_helpText);
      v67 = [v4 objectForKeyedSubscript:v66];
      helpText = v5->_helpText;
      v5->_helpText = v67;
    }

    v69 = NSStringFromSelector(sel_customUsernameLabel);
    v70 = [v4 objectForKeyedSubscript:v69];
    objc_opt_class();
    v71 = objc_opt_isKindOfClass();

    if (v71)
    {
      v72 = NSStringFromSelector(sel_customUsernameLabel);
      v73 = [v4 objectForKeyedSubscript:v72];
      customUsernameLabel = v5->_customUsernameLabel;
      v5->_customUsernameLabel = v73;
    }

    v75 = NSStringFromSelector(sel_cacheName);
    v76 = [v4 objectForKeyedSubscript:v75];
    objc_opt_class();
    v77 = objc_opt_isKindOfClass();

    if (v77)
    {
      v78 = NSStringFromSelector(sel_cacheName);
      v79 = [v4 objectForKeyedSubscript:v78];
      cacheName = v5->_cacheName;
      v5->_cacheName = v79;
    }

    v81 = NSStringFromSelector(sel_principalName);
    v82 = [v4 objectForKeyedSubscript:v81];
    objc_opt_class();
    v83 = objc_opt_isKindOfClass();

    if (v83)
    {
      v84 = NSStringFromSelector(sel_principalName);
      v85 = [v4 objectForKeyedSubscript:v84];
      principalName = v5->_principalName;
      v5->_principalName = v85;
    }

    v87 = NSStringFromSelector(sel_siteCode);
    v88 = [v4 objectForKeyedSubscript:v87];
    objc_opt_class();
    v89 = objc_opt_isKindOfClass();

    if (v89)
    {
      v90 = NSStringFromSelector(sel_siteCode);
      v91 = [v4 objectForKeyedSubscript:v90];
      siteCode = v5->_siteCode;
      v5->_siteCode = v91;
    }

    v93 = NSStringFromSelector(sel_certificateUUID);
    v94 = [v4 objectForKeyedSubscript:v93];
    objc_opt_class();
    v95 = objc_opt_isKindOfClass();

    if (v95)
    {
      v96 = NSStringFromSelector(sel_certificateUUID);
      v97 = [v4 objectForKeyedSubscript:v96];
      certificateUUID = v5->_certificateUUID;
      v5->_certificateUUID = v97;
    }

    v99 = NSStringFromSelector(sel_useSiteAutoDiscovery);
    v100 = [v4 objectForKeyedSubscript:v99];

    if (v100)
    {
      v101 = NSStringFromSelector(sel_useSiteAutoDiscovery);
      v102 = [v4 objectForKeyedSubscript:v101];
      v5->_useSiteAutoDiscovery = [v102 BOOLValue];
    }

    else
    {
      v5->_useSiteAutoDiscovery = 1;
    }

    v103 = NSStringFromSelector(sel_allowAutomaticLogin);
    v104 = [v4 objectForKeyedSubscript:v103];

    if (v104)
    {
      v105 = NSStringFromSelector(sel_allowAutomaticLogin);
      v106 = [v4 objectForKeyedSubscript:v105];
      v5->_allowAutomaticLogin = [v106 BOOLValue];
    }

    else
    {
      v5->_allowAutomaticLogin = 1;
    }

    v107 = NSStringFromSelector(sel_requireUserPresence);
    v108 = [v4 objectForKeyedSubscript:v107];

    if (v108)
    {
      v109 = NSStringFromSelector(sel_requireUserPresence);
      v110 = [v4 objectForKeyedSubscript:v109];
      v5->_requireUserPresence = [v110 BOOLValue];
    }

    else
    {
      v5->_requireUserPresence = 0;
    }

    v111 = NSStringFromSelector(sel_monitorCredentialsCache);
    v112 = [v4 objectForKeyedSubscript:v111];

    if (v112)
    {
      v113 = NSStringFromSelector(sel_monitorCredentialsCache);
      v114 = [v4 objectForKeyedSubscript:v113];
      v5->_monitorCredentialsCache = [v114 BOOLValue];
    }

    else
    {
      v5->_monitorCredentialsCache = 1;
    }

    v115 = NSStringFromSelector(sel_replicationTime);
    v116 = [v4 objectForKeyedSubscript:v115];
    objc_opt_class();
    v117 = objc_opt_isKindOfClass();

    if (v117)
    {
      v118 = NSStringFromSelector(sel_replicationTime);
      v119 = [v4 objectForKeyedSubscript:v118];
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
    v123 = [v4 objectForKeyedSubscript:v122];

    if (v123)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v124 = [MEMORY[0x277CBEB18] array];
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
                [v124 addObject:v130];
              }
            }

            v127 = [v125 countByEnumeratingWithState:&v253 objects:v261 count:16];
          }

          while (v127);
        }

        v131 = [v124 copy];
        credentialBundleIdACL = v5->_credentialBundleIdACL;
        v5->_credentialBundleIdACL = v131;
      }
    }

    v133 = NSStringFromSelector(sel_domainRealmMapping);
    v134 = [v4 objectForKeyedSubscript:v133];

    v236 = v134;
    if (v134)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v231 = v123;
        v233 = v5;
        v234 = v4;
        v238 = [MEMORY[0x277CBEB38] dictionary];
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
              v139 = [MEMORY[0x277CBEB18] array];
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
                      [v139 addObject:v146];
                    }
                  }

                  v143 = [v141 countByEnumeratingWithState:&v245 objects:v259 count:16];
                }

                while (v143);
              }

              if ([v139 count])
              {
                [v238 setObject:v139 forKeyedSubscript:v138];
              }
            }

            v136 = [obj countByEnumeratingWithState:&v249 objects:v260 count:16];
          }

          while (v136);
        }

        v147 = [v238 copy];
        v5 = v233;
        domainRealmMapping = v233->_domainRealmMapping;
        v233->_domainRealmMapping = v147;

        v4 = v234;
        v123 = v231;
      }
    }

    v149 = NSStringFromSelector(sel_isDefaultRealm);
    v150 = [v4 objectForKeyedSubscript:v149];

    if (v150)
    {
      v151 = NSStringFromSelector(sel_isDefaultRealm);
      v152 = [v4 objectForKeyedSubscript:v151];
      v5->_isDefaultRealm = [v152 BOOLValue];
    }

    else
    {
      v5->_isDefaultRealm = 0;
    }

    v153 = NSStringFromSelector(sel_allowPasswordChange);
    v154 = [v4 objectForKeyedSubscript:v153];

    if (v154)
    {
      v155 = NSStringFromSelector(sel_allowPasswordChange);
      v156 = [v4 objectForKeyedSubscript:v155];
      v5->_allowPasswordChange = [v156 BOOLValue];
    }

    else
    {
      v5->_allowPasswordChange = 1;
    }

    v157 = NSStringFromSelector(sel_delayUserSetup);
    v158 = [v4 objectForKeyedSubscript:v157];

    if (v158)
    {
      v159 = NSStringFromSelector(sel_delayUserSetup);
      v160 = [v4 objectForKeyedSubscript:v159];
      v5->_delayUserSetup = [v160 BOOLValue];
    }

    else
    {
      v5->_delayUserSetup = 0;
    }

    v161 = NSStringFromSelector(sel_requireTLSForLDAP);
    v162 = [v4 objectForKeyedSubscript:v161];

    if (v162)
    {
      v163 = NSStringFromSelector(sel_requireTLSForLDAP);
      v164 = [v4 objectForKeyedSubscript:v163];
      v5->_requireTLSForLDAP = [v164 BOOLValue];
    }

    else
    {
      v5->_requireTLSForLDAP = 0;
    }

    v165 = NSStringFromSelector(sel_includeManagedAppsInBundleIdACL);
    v166 = [v4 objectForKeyedSubscript:v165];

    if (v166)
    {
      v167 = NSStringFromSelector(sel_includeManagedAppsInBundleIdACL);
      v168 = [v4 objectForKeyedSubscript:v167];
      v5->_includeManagedAppsInBundleIdACL = [v168 BOOLValue];
    }

    else
    {
      v5->_includeManagedAppsInBundleIdACL = 0;
    }

    v169 = NSStringFromSelector(sel_includeKerberosAppsInBundleIdACL);
    v170 = [v4 objectForKeyedSubscript:v169];

    if (v170)
    {
      v171 = NSStringFromSelector(sel_includeKerberosAppsInBundleIdACL);
      v172 = [v4 objectForKeyedSubscript:v171];
      v5->_includeKerberosAppsInBundleIdACL = [v172 BOOLValue];
    }

    else
    {
      v5->_includeKerberosAppsInBundleIdACL = 0;
    }

    v173 = NSStringFromSelector(sel_credentialUseMode);
    v174 = [v4 objectForKeyedSubscript:v173];
    objc_opt_class();
    v175 = objc_opt_isKindOfClass();

    if (v175)
    {
      v176 = NSStringFromSelector(sel_credentialUseMode);
      v177 = [v4 objectForKeyedSubscript:v176];

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
      v179 = [v4 objectForKeyedSubscript:v178];
      objc_opt_class();
      v180 = objc_opt_isKindOfClass();

      if (v180)
      {
        v181 = NSStringFromSelector(sel_password);
        v182 = [v4 objectForKeyedSubscript:v181];
        password = v5->_password;
        v5->_password = v182;
      }
    }

    v184 = NSStringFromSelector(sel_preferredKDCs);
    v185 = [v4 objectForKeyedSubscript:v184];

    if (v185)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v232 = v123;
        v235 = v4;
        v186 = [MEMORY[0x277CBEB18] array];
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
                  [v186 addObject:v192];
                }
              }
            }

            v189 = [v187 countByEnumeratingWithState:&v241 objects:v258 count:16];
          }

          while (v189);
        }

        v194 = [v186 copy];
        preferredKDCs = v5->_preferredKDCs;
        v5->_preferredKDCs = v194;

        v4 = v235;
        v123 = v232;
      }
    }

    v196 = NSStringFromSelector(sel_usePlatformSSOTGT);
    v197 = [v4 objectForKeyedSubscript:v196];

    if (v197)
    {
      v198 = NSStringFromSelector(sel_usePlatformSSOTGT);
      v199 = [v4 objectForKeyedSubscript:v198];
      v5->_usePlatformSSOTGT = [v199 BOOLValue];
    }

    else
    {
      v5->_usePlatformSSOTGT = 0;
    }

    v200 = NSStringFromSelector(sel_allowPlatformSSOAuthFallback);
    v201 = [v4 objectForKeyedSubscript:v200];

    if (v201)
    {
      v202 = NSStringFromSelector(sel_allowPlatformSSOAuthFallback);
      v203 = [v4 objectForKeyedSubscript:v202];
      v5->_allowPlatformSSOAuthFallback = [v203 BOOLValue];
    }

    else
    {
      v5->_allowPlatformSSOAuthFallback = 1;
    }

    v204 = NSStringFromSelector(sel_performKerberosOnly);
    v205 = [v4 objectForKeyedSubscript:v204];

    if (v205)
    {
      v206 = NSStringFromSelector(sel_performKerberosOnly);
      v207 = [v4 objectForKeyedSubscript:v206];
      v5->_performKerberosOnly = [v207 BOOLValue];
    }

    else
    {
      v5->_performKerberosOnly = 0;
    }

    v208 = NSStringFromSelector(sel_identityIssuerAutoSelectFilter);
    v209 = [v4 objectForKeyedSubscript:v208];

    if (v209)
    {
      v210 = NSStringFromSelector(sel_identityIssuerAutoSelectFilter);
      v211 = [v4 objectForKeyedSubscript:v210];
      identityIssuerAutoSelectFilter = v5->_identityIssuerAutoSelectFilter;
      v5->_identityIssuerAutoSelectFilter = v211;
    }

    else
    {
      v5->_performKerberosOnly = 0;
    }

    v213 = NSStringFromSelector(sel_allowSmartCard);
    v214 = [v4 objectForKeyedSubscript:v213];

    if (v214)
    {
      v215 = NSStringFromSelector(sel_allowSmartCard);
      v216 = [v4 objectForKeyedSubscript:v215];
      allowSmartCard = v5->_allowSmartCard;
      v5->_allowSmartCard = v216;
    }

    else
    {
      v215 = v5->_allowSmartCard;
      v5->_allowSmartCard = MEMORY[0x277CBEC38];
    }

    v218 = NSStringFromSelector(sel_allowPassword);
    v219 = [v4 objectForKeyedSubscript:v218];

    if (v219)
    {
      v220 = NSStringFromSelector(sel_allowPassword);
      v221 = [v4 objectForKeyedSubscript:v220];
      allowPassword = v5->_allowPassword;
      v5->_allowPassword = v221;
    }

    else
    {
      v220 = v5->_allowPassword;
      v5->_allowPassword = MEMORY[0x277CBEC38];
    }

    v223 = NSStringFromSelector(sel_startInSmartCardMode);
    v224 = [v4 objectForKeyedSubscript:v223];

    if (v224)
    {
      v225 = NSStringFromSelector(sel_startInSmartCardMode);
      v226 = [v4 objectForKeyedSubscript:v225];
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
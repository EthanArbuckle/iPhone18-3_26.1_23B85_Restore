@interface GKAppleIDAuthenticationDelegate
- (void)didReceiveAuthenticationResponseParameters:(id)parameters accountStore:(id)store account:(id)account completion:(id)completion;
@end

@implementation GKAppleIDAuthenticationDelegate

- (void)didReceiveAuthenticationResponseParameters:(id)parameters accountStore:(id)store account:(id)account completion:(id)completion
{
  parametersCopy = parameters;
  storeCopy = store;
  accountCopy = account;
  completionCopy = completion;
  if (!completionCopy)
  {
    v13 = [NSString stringWithFormat:@"Assertion failed"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GameCenterAppleIDAuthenticationDelegate/GKAppleIDAuthenticationDelegate.m"];
    lastPathComponent = [v14 lastPathComponent];
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (completion != ((void*)0))\n[%s (%s:%d)]", v13, "-[GKAppleIDAuthenticationDelegate didReceiveAuthenticationResponseParameters:accountStore:account:completion:]", [lastPathComponent UTF8String], 75);

    completionCopy = 0;
    [NSException raise:@"GameKit Exception" format:@"%@", v16];
  }

  v17 = [NSUserDefaults alloc];
  v207 = [v17 initWithSuiteName:GKDaemonIdentifier];
  v18 = [v207 objectForKey:GKOptedOutOfGameCenter];
  bOOLValue = [v18 BOOLValue];

  if (bOOLValue)
  {
    v20 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
      v20 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate ignoring authentication response since user has opted out of game center.", buf, 2u);
    }

LABEL_17:
    completionCopy[2](completionCopy);
LABEL_18:
    v36 = v207;
    goto LABEL_19;
  }

  v22 = [parametersCopy objectForKeyedSubscript:@"com.apple.gamecenter"];

  if (v22)
  {
    v23 = [parametersCopy objectForKeyedSubscript:@"com.apple.gamecenter"];

    parametersCopy = v23;
  }

  block = completionCopy;
  v24 = +[GKPreferences shared];
  if ([v24 isAccountModificationRestricted])
  {

LABEL_13:
    if (!os_log_GKGeneral)
    {
      v27 = GKOSLoggers();
    }

    v28 = os_log_GKAccount;
    completionCopy = block;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      sub_2768(v28, v29, v30, v31, v32, v33, v34, v35);
    }

    goto LABEL_17;
  }

  v25 = +[GKPreferences shared];
  isGameCenterRestricted = [v25 isGameCenterRestricted];

  if (isGameCenterRestricted)
  {
    goto LABEL_13;
  }

  v37 = [parametersCopy objectForKeyedSubscript:@"status"];
  intValue = [v37 intValue];

  if (intValue)
  {
    v39 = [parametersCopy objectForKeyedSubscript:@"status-message"];
    if (!os_log_GKGeneral)
    {
      v40 = GKOSLoggers();
    }

    v41 = os_log_GKAccount;
    completionCopy = block;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      sub_2680(v39, v41);
    }

    block[2](block);

    goto LABEL_18;
  }

  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v191 = ACAccountTypeIdentifierAppleAccount;
  v44 = [identifier isEqualToString:?];

  v45 = os_log_GKGeneral;
  if ((v44 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v70 = GKOSLoggers();
    }

    v71 = os_log_GKAccount;
    completionCopy = block;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      sub_26F8(v71, v72, v73, v74, v75, v76, v77, v78);
    }

    goto LABEL_17;
  }

  if (!os_log_GKGeneral)
  {
    v46 = GKOSLoggers();
    v45 = os_log_GKGeneral;
  }

  v47 = v45;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v231 = accountCopy;
    _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate inAccount:%@", buf, 0xCu);
  }

  v48 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v49 = GKOSLoggers();
    v48 = os_log_GKGeneral;
  }

  v50 = v48;
  completionCopy = block;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v231 = parametersCopy;
    _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate parameters:%@", buf, 0xCu);
  }

  v194 = [parametersCopy objectForKeyedSubscript:@"alias"];
  v193 = [parametersCopy objectForKeyedSubscript:@"firstName"];
  v192 = [parametersCopy objectForKeyedSubscript:@"lastName"];
  v51 = [parametersCopy objectForKeyedSubscript:GKAppleIDKey];
  v198 = [parametersCopy objectForKeyedSubscript:@"dsid"];
  v52 = [parametersCopy objectForKeyedSubscript:@"altDSID"];
  v195 = [parametersCopy objectForKeyedSubscript:GKPlayerIDKey];
  v196 = [parametersCopy objectForKeyedSubscript:@"auth-token"];
  v53 = v52;
  v54 = [parametersCopy objectForKeyedSubscript:GKEnvironmentKey];
  v204 = [GKPreferences environmentForString:v54];

  if (!v53)
  {
    v53 = [parametersCopy objectForKeyedSubscript:@"alternate-dsid"];
  }

  v55 = v51;
  v197 = v53;
  if (v51 && v198 | v53 && v196 && v195)
  {
    v56 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v57 = GKOSLoggers();
      v56 = os_log_GKGeneral;
    }

    v58 = v56;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v231 = v51;
      _os_log_impl(&dword_0, v58, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate: Looking for GC account with username: %@", buf, 0xCu);
    }

    v200 = v51;

    v187 = ACAccountTypeIdentifierGameCenter;
    [storeCopy accountsWithAccountTypeIdentifier:?];
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v59 = v226 = 0u;
    v60 = [v59 countByEnumeratingWithState:&v223 objects:v229 count:16];
    v189 = parametersCopy;
    v190 = storeCopy;
    v188 = accountCopy;
    if (v60)
    {
      v61 = v60;
      v62 = *v224;
      while (2)
      {
        for (i = 0; i != v61; i = i + 1)
        {
          if (*v224 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v199 = *(*(&v223 + 1) + 8 * i);
          username = [v199 username];
          v65 = [username isEqualToString:v51];

          if (v65)
          {
            v81 = v199;
            v82 = os_log_GKGeneral;
            if (!os_log_GKGeneral)
            {
              v83 = GKOSLoggers();
              v82 = os_log_GKGeneral;
            }

            v84 = v82;
            if (!os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
            {
              goto LABEL_82;
            }

            username2 = [v81 username];
            *buf = 138412290;
            v231 = username2;
            v86 = "GKAppleIDAuthenticationDelegate: will populate existing account '%@' with production token";
            v87 = v84;
            v88 = 12;
LABEL_81:
            _os_log_impl(&dword_0, v87, OS_LOG_TYPE_INFO, v86, buf, v88);

            goto LABEL_82;
          }

          if (v197)
          {
            v66 = [v199 accountPropertyForKey:@"altDSID"];
            v67 = [v66 isEqualToString:v197];

            if (v67)
            {
              v89 = v199;
              v90 = os_log_GKGeneral;
              if (!os_log_GKGeneral)
              {
                v91 = GKOSLoggers();
                v90 = os_log_GKGeneral;
              }

              v84 = v90;
              if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
              {
                username2 = [v89 username];
                *buf = 138412546;
                v231 = username2;
                v232 = 2112;
                v233 = v51;
                v86 = "GKAppleIDAuthenticationDelegate: found a gamecenter ACAccount (%@) with same altDSID than incoming account:%@";
                goto LABEL_80;
              }

LABEL_82:

              v202 = 0;
              goto LABEL_83;
            }
          }

          if (v198)
          {
            v68 = [v199 accountPropertyForKey:@"dsid"];
            v69 = [v68 isEqualToString:v198];

            if (v69)
            {
              v92 = v199;
              v93 = os_log_GKGeneral;
              if (!os_log_GKGeneral)
              {
                v94 = GKOSLoggers();
                v93 = os_log_GKGeneral;
              }

              v84 = v93;
              if (!os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
              {
                goto LABEL_82;
              }

              username2 = [v92 username];
              *buf = 138412546;
              v231 = username2;
              v232 = 2112;
              v233 = v51;
              v86 = "GKAppleIDAuthenticationDelegate: found a gamecenter ACAccount (%@) with same dsid than incoming account:%@";
LABEL_80:
              v87 = v84;
              v88 = 22;
              goto LABEL_81;
            }
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v223 objects:v229 count:16];
        v199 = 0;
        v202 = 1;
        if (v61)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v199 = 0;
      v202 = 1;
    }

LABEL_83:

    v221 = 0u;
    v222 = 0u;
    v219 = 0u;
    v220 = 0u;
    obj = v59;
    v95 = [obj countByEnumeratingWithState:&v219 objects:v228 count:16];
    v96 = &GKOSLoggers_ptr;
    if (v95)
    {
      v97 = v95;
      v201 = 0;
      v98 = *v220;
      v99 = @"<gone>";
      do
      {
        v100 = 0;
        v205 = v97;
        do
        {
          if (*v220 != v98)
          {
            objc_enumerationMutation(obj);
          }

          v101 = *(*(&v219 + 1) + 8 * v100);
          credential = [v101 credential];
          token = [credential token];

          if (token)
          {
            if (([token isEqualToString:v99] & 1) == 0)
            {
              [v96[57] numberWithInteger:v204];
              v104 = v98;
              v105 = v99;
              v107 = v106 = v96;
              v107 = [NSString stringWithFormat:@"GKCredentialScope-%@", v107];
              v109 = [v101 accountPropertyForKey:v107];
              unsignedIntegerValue = [v109 unsignedIntegerValue];

              v96 = v106;
              v99 = v105;
              v98 = v104;
              v97 = v205;
              if ((unsignedIntegerValue & 4) != 0)
              {
                v111 = os_log_GKGeneral;
                if (!os_log_GKGeneral)
                {
                  v112 = GKOSLoggers();
                  v111 = os_log_GKGeneral;
                }

                v113 = v111;
                if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                {
                  username3 = [v101 username];
                  *buf = 138412290;
                  v231 = username3;
                  _os_log_impl(&dword_0, v113, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate: Existing primary production account '%@'", buf, 0xCu);
                }

                v201 = 1;
                v202 = 0;
              }
            }
          }

          v100 = v100 + 1;
        }

        while (v97 != v100);
        v97 = [obj countByEnumeratingWithState:&v219 objects:v228 count:16];
      }

      while (v97);
    }

    else
    {
      v201 = 0;
    }

    v115 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v116 = GKOSLoggers();
      v115 = os_log_GKGeneral;
    }

    v117 = v115;
    storeCopy = v190;
    accountCopy = v188;
    completionCopy = block;
    if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
    {
      v118 = @"NO";
      if (v202)
      {
        v119 = @"YES";
      }

      else
      {
        v119 = @"NO";
      }

      if (v201)
      {
        v118 = @"YES";
      }

      *buf = 138412546;
      v231 = v119;
      v232 = 2112;
      v233 = v118;
      _os_log_impl(&dword_0, v117, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate: looked at the existing account. We want to create a new GC account (%@), and existingPrimaryAccount is %@", buf, 0x16u);
    }

    parametersCopy = v189;
    if ((v202 & 1) != 0 && ([v188 accountType], v120 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v120, "identifier"), v121 = objc_claimAutoreleasedReturnValue(), v122 = objc_msgSend(v121, "isEqualToString:", v191), v121, v120, v122))
    {
      v123 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v124 = GKOSLoggers();
        v123 = os_log_GKGeneral;
      }

      v125 = v123;
      v55 = v200;
      if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v125, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate: No existing primary GC account found.", buf, 2u);
      }

      v126 = [v190 accountTypeWithIdentifier:v187];
      v127 = [[ACAccount alloc] initWithAccountType:v126];

      [v127 setUsername:v200];
      v199 = v127;
    }

    else
    {
      v55 = v200;
    }

    v128 = os_log_GKGeneral;
    if (v199)
    {
      if (!os_log_GKGeneral)
      {
        v129 = GKOSLoggers();
        v128 = os_log_GKGeneral;
      }

      v130 = v128;
      if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
      {
        shortDebugName = [v199 shortDebugName];
        *buf = 138412290;
        v231 = shortDebugName;
        _os_log_impl(&dword_0, v130, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate: Updating token for account %@", buf, 0xCu);
      }

      credential2 = [v199 credential];

      if (!credential2)
      {
        v133 = objc_alloc_init(ACAccountCredential);
        [v199 setCredential:v133];
      }

      [v199 setAuthenticated:1];
      if (v204 == &dword_4 + 1)
      {
        credential3 = [v199 credential];
        [credential3 setToken:v196];
      }

      else
      {
        v144 = os_log_GKGeneral;
        if (!os_log_GKGeneral)
        {
          v145 = GKOSLoggers();
          v144 = os_log_GKGeneral;
        }

        v146 = v144;
        if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v146, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate: non production environment, set account property", buf, 2u);
        }

        credential3 = [v96[57] numberWithInteger:v204];
        v134 = [NSString stringWithFormat:@"GKEnvToken-%@", credential3];
        [v199 setAccountProperty:v196 forKey:v134];
      }

      v148 = [v96[57] numberWithInteger:v204];
      v148 = [NSString stringWithFormat:@"GKCredentialScope-%@", v148];
      if (v201)
      {
        v150 = [v199 accountPropertyForKey:v148];
        v151 = v96;
        unsignedIntegerValue2 = [v150 unsignedIntegerValue];

        v148 = [v151[57] numberWithInteger:v204];
        v148 = [NSString stringWithFormat:@"GKCredentialScope-%@", v148];
        if ((unsignedIntegerValue2 & 4) != 0)
        {
          v153 = &off_8560;
        }

        else
        {
          v153 = &off_8578;
        }

        [v199 setAccountProperty:v153 forKey:v148];
        v96 = v151;
      }

      else
      {
        [v199 setAccountProperty:&off_8560 forKey:v148];
      }

      v154 = +[NSDate date];
      v155 = [v96[57] numberWithInteger:v204];
      v155 = [NSString stringWithFormat:@"GKCredentialScope-%@-mod-date", v155];
      [v199 setAccountProperty:v154 forKey:v155];

      v157 = [v96[57] numberWithInteger:v204];
      v157 = [NSString stringWithFormat:@"altDSID-%@", v157];
      [v199 setAccountProperty:v197 forKey:v157];

      [v199 setAccountProperty:v197 forKey:@"altDSID"];
      v159 = +[NSDate date];
      v160 = v96;
      v161 = [v96[57] numberWithInteger:v204];
      v161 = [NSString stringWithFormat:@"altDSID-%@-mod-date", v161];
      [v199 setAccountProperty:v159 forKey:v161];

      [v199 setAccountProperty:v198 forKey:@"dsid"];
      [v199 setAccountProperty:v195 forKey:@"playerID"];
      v163 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v164 = GKOSLoggers();
        v163 = os_log_GKGeneral;
      }

      v165 = v163;
      if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
      {
        accountProperties = [v199 accountProperties];
        *buf = 138412290;
        v231 = accountProperties;
        _os_log_impl(&dword_0, v165, OS_LOG_TYPE_INFO, "GKAppleIDAuthenticationDelegate: all account properties: %@", buf, 0xCu);
      }

      [v199 setUsername:v200];
      [v199 setAccountDescription:v200];
      _gkPlayerInternal = [v199 _gkPlayerInternal];
      [GKContactsIntegrationUserSettings applySettingsToObject:_gkPlayerInternal fromResults:v189];
      [_gkPlayerInternal setAlias:v194];
      [_gkPlayerInternal setFirstName:v193];
      [_gkPlayerInternal setLastName:v192];
      v168 = [GKPlayerInternal compositeNameForFirstName:v193 lastName:v192];
      [_gkPlayerInternal setCompositeName:v168];

      [_gkPlayerInternal setAccountName:v200];
      [v199 _gkSetPlayerInternal:_gkPlayerInternal];
      v169 = objc_alloc_init(AKAppleIDAuthenticationController);
      if (v197)
      {
        if (!os_log_GKGeneral)
        {
          v170 = GKOSLoggers();
        }

        v171 = os_log_GKDaemon;
        if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v231 = v197;
          _os_log_impl(&dword_0, v171, OS_LOG_TYPE_INFO, "GKAuth:telling authkit account is in use using altDSID:%@", buf, 0xCu);
        }

        [v169 setAppleIDWithAltDSID:v197 inUse:1 forService:6];
      }

      else if (v198)
      {
        v172 = [v160[57] numberWithLongLong:{objc_msgSend(v198, "longLongValue")}];
        if (!os_log_GKGeneral)
        {
          v173 = GKOSLoggers();
        }

        v174 = os_log_GKDaemon;
        if (os_log_type_enabled(v174, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v231 = v172;
          _os_log_impl(&dword_0, v174, OS_LOG_TYPE_INFO, "GKAuth:telling authkit account is in use using DSID:%@", buf, 0xCu);
        }

        [v169 setAppleIDWithDSID:v172 inUse:1 forService:6];
      }

      v206 = v169;
      v175 = dispatch_group_create();
      dispatch_group_enter(v175);
      v216[0] = _NSConcreteStackBlock;
      v216[1] = 3221225472;
      v216[2] = sub_2400;
      v216[3] = &unk_8208;
      v176 = v199;
      v217 = v176;
      v177 = v175;
      v218 = v177;
      [v190 saveAccount:v176 verify:0 dataclassActions:0 completion:v216];
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v178 = obj;
      v179 = [v178 countByEnumeratingWithState:&v212 objects:v227 count:16];
      if (v179)
      {
        v180 = v179;
        v181 = *v213;
        while (2)
        {
          for (j = 0; j != v180; j = j + 1)
          {
            if (*v213 != v181)
            {
              objc_enumerationMutation(v178);
            }

            v183 = *(*(&v212 + 1) + 8 * j);
            username4 = [v183 username];
            v185 = [username4 isEqualToString:v200];

            if ((v185 & 1) == 0)
            {
              [v183 setAccountProperty:&stru_8508 forKey:@"GKPlayerSelectedEnvironment"];
              dispatch_group_enter(v177);
              v209[0] = _NSConcreteStackBlock;
              v209[1] = 3221225472;
              v209[2] = sub_2554;
              v209[3] = &unk_8208;
              v210 = v176;
              v211 = v177;
              [v190 saveAccount:v183 verify:0 dataclassActions:0 completion:v209];

              goto LABEL_168;
            }
          }

          v180 = [v178 countByEnumeratingWithState:&v212 objects:v227 count:16];
          if (v180)
          {
            continue;
          }

          break;
        }
      }

LABEL_168:

      v186 = dispatch_get_global_queue(0, 0);
      completionCopy = block;
      dispatch_group_notify(v177, v186, block);

      parametersCopy = v189;
      storeCopy = v190;
      accountCopy = v188;
      v55 = v200;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v135 = GKOSLoggers();
      }

      v136 = os_log_GKAccount;
      if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
      {
        sub_2730(v136, v137, v138, v139, v140, v141, v142, v143);
      }

      block[2](block);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v79 = GKOSLoggers();
    }

    v80 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v231 = v51;
      v232 = 2112;
      v233 = v198;
      v234 = 2112;
      v235 = v195;
      v236 = 2112;
      v237 = v196;
      _os_log_error_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "GKAppleIDAuthenticationDelegate did not receive the required parameters. Apple ID: %@ DSID: %@ playerID: %@ token: %@", buf, 0x2Au);
    }

    block[2](block);
  }

  v36 = v207;

LABEL_19:
}

@end
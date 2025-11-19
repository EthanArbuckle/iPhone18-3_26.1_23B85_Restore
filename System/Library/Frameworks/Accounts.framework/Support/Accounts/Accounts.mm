uint64_t start()
{
  v177 = objc_autoreleasePoolPush();
  v0 = _ACLogSystem();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);

  if (v1)
  {
    v175 = objc_alloc_init(ACAccountStore);
    v176 = [v175 accounts];
    if ([v176 count])
    {
      sub_100001224(@"=======================================", v9, v10, v11, v12, v13, v14, v15, v174[0]);
      sub_100001224(@"Accounts Summary:", v16, v17, v18, v19, v20, v21, v22, v174[0]);
      sub_100001224(@"=======================================", v23, v24, v25, v26, v27, v28, v29, v174[0]);
      sub_100001224(&stru_100004210, v30, v31, v32, v33, v34, v35, v36, v174[0]);
      v174[1] = v174;
      __chkstk_darwin();
      v207[0] = _NSConcreteStackBlock;
      v207[1] = 3221225472;
      v207[2] = sub_1000012AC;
      v207[3] = &unk_100004170;
      v207[4] = &v173;
      v208 = 10;
      v179 = objc_retainBlock(v207);
      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v37 = v176;
      v38 = [v37 countByEnumeratingWithState:&v203 objects:v213 count:16];
      if (v38)
      {
        v39 = *v204;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v204 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = *(*(&v203 + 1) + 8 * i);
            v42 = [v41 parentAccountIdentifier];
            v43 = v42 == 0;

            if (v43)
            {
              LOBYTE(v173) = 0;
              v44 = objc_retainBlock(v179);
              (v179[2])(v179, v41, 0, v44);
            }
          }

          v38 = [v37 countByEnumeratingWithState:&v203 objects:v213 count:16];
        }

        while (v38);
      }

      sub_100001224(&stru_100004210, v45, v46, v47, v48, v49, v50, v51, v173);
      sub_100001224(&stru_100004210, v52, v53, v54, v55, v56, v57, v58, v173);
      sub_100001224(@"=======================================", v59, v60, v61, v62, v63, v64, v65, v173);
      sub_100001224(@"Accounts Configuration:", v66, v67, v68, v69, v70, v71, v72, v173);
      sub_100001224(@"=======================================", v73, v74, v75, v76, v77, v78, v79, v173);
      sub_100001224(&stru_100004210, v80, v81, v82, v83, v84, v85, v86, v173);
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v178 = v37;
      v181 = [v178 countByEnumeratingWithState:&v199 objects:v212 count:16];
      if (v181)
      {
        v180 = *v200;
        do
        {
          for (j = 0; j != v181; j = j + 1)
          {
            if (*v200 != v180)
            {
              objc_enumerationMutation(v178);
            }

            v87 = *(*(&v199 + 1) + 8 * j);
            v88 = [v87 objectForKeyedSubscript:@"AccountDelegate"];
            v194 = [v88 mutableCopy];

            [v194 removeObjectForKey:@"tokens"];
            [v87 setObject:v194 forKeyedSubscript:@"AccountDelegate"];
            [v87 setObject:0 forKeyedSubscript:@"pushDeviceToken"];
            v191 = [v87 objectForKeyedSubscript:@"kCalDAVPrincipalsKey"];
            v184 = [v87 objectForKeyedSubscript:@"kCalDAVMainPrincipalUIDKey"];
            v193 = [v191 objectForKeyedSubscript:?];
            if (v193)
            {
              v210 = v184;
              v211 = v193;
              v89 = [NSDictionary dictionaryWithObjects:&v211 forKeys:&v210 count:1];
              [v87 setObject:v89 forKeyedSubscript:@"kCalDAVPrincipalsKey"];
            }

            v90 = [v87 fullDescription];
            v91 = v90;
            v92 = [v90 UTF8String];
            sub_100001224(@"%s", v93, v94, v95, v96, v97, v98, v99, v92);

            v190 = [v87 credential];
            v189 = [v190 password];
            v100 = [v189 length];
            v101 = @"Yes";
            if (!v100)
            {
              v101 = @"No";
            }

            v183 = v101;
            v188 = [v87 credential];
            v187 = [v188 token];
            v102 = [v187 length];
            v103 = @"Yes";
            if (!v102)
            {
              v103 = @"No";
            }

            v182 = v103;
            v186 = [v87 credential];
            v185 = [v186 oauthToken];
            [v185 length];
            v104 = [v87 credential];
            v105 = [v104 oauthRefreshToken];
            [v105 length];
            v106 = [v87 credential];
            v107 = [v106 oauthTokenSecret];
            [v107 length];
            v108 = [v87 credential];
            v172 = [v108 expiryDate];
            sub_100001224(@"credential: Password:%@ Token:%@ OAuthToken:%@ RefreshToken:%@ TokenSecret:%@ ExpirationDate:%@\n\n", v109, v110, v111, v112, v113, v114, v115, v183);
          }

          v181 = [v178 countByEnumeratingWithState:&v199 objects:v212 count:16];
        }

        while (v181);
      }
    }

    else
    {
      sub_100001224(@"No accounts.", v9, v10, v11, v12, v13, v14, v15, v174[0]);
    }

    sub_100001224(&stru_100004210, v116, v117, v118, v119, v120, v121, v122, v174[0]);
    sub_100001224(&stru_100004210, v123, v124, v125, v126, v127, v128, v129, v174[0]);
    sub_100001224(@"=======================================", v130, v131, v132, v133, v134, v135, v136, v174[0]);
    sub_100001224(@"Accounts Types:", v137, v138, v139, v140, v141, v142, v143, v174[0]);
    sub_100001224(@"=======================================", v144, v145, v146, v147, v148, v149, v150, v174[0]);
    sub_100001224(&stru_100004210, v151, v152, v153, v154, v155, v156, v157, v174[0]);
    v158 = [v175 allAccountTypes];
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v159 = v158;
    v160 = [v159 countByEnumeratingWithState:&v195 objects:v209 count:16];
    if (v160)
    {
      v161 = *v196;
      do
      {
        for (k = 0; k != v160; k = k + 1)
        {
          if (*v196 != v161)
          {
            objc_enumerationMutation(v159);
          }

          v163 = [*(*(&v195 + 1) + 8 * k) fullDescription];
          sub_100001224(@"%@\n\n", v164, v165, v166, v167, v168, v169, v170, v163);
        }

        v160 = [v159 countByEnumeratingWithState:&v195 objects:v209 count:16];
      }

      while (v160);
    }
  }

  else
  {
    sub_100001224(@"Accounts summary disabled. It can be enabled by installing the Accounts profile from https://developer.apple.com/bug-reporting/profiles-and-logs/", v2, v3, v4, v5, v6, v7, v8, v174[0]);
  }

  objc_autoreleasePoolPop(v177);
  return 0;
}

void sub_100001224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  fprintf(__stdoutp, "%s\n", [v10 UTF8String]);
}

void sub_1000012AC(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      strcpy((*(a1 + 32) + v9), "    ");
      v9 += 4;
    }

    while (4 * a3 != v9);
  }

  v35 = a3;
  v36 = *(a1 + 32);
  v37 = [v7 accountType];
  v10 = [v37 identifier];
  v11 = [v7 accountType];
  v12 = [v11 objectID];
  v13 = [v7 username];
  v14 = [v7 username];
  v15 = ACHashedString();
  v34 = [v7 identifier];
  sub_100001224(@"%s%@(%@) %@ (%@) %@", v16, v17, v18, v19, v20, v21, v22, v36);

  v23 = objc_retainBlock(v8);
  v24 = [v7 childAccounts];
  v25 = [NSArray arrayWithArray:v24];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v39;
    v30 = v35 + 1;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(a1 + 40);
        if (v30 >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v30;
        }

        v23[2](v23, *(*(&v38 + 1) + 8 * i), v33, v8);
      }

      v28 = [v26 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v28);
  }
}
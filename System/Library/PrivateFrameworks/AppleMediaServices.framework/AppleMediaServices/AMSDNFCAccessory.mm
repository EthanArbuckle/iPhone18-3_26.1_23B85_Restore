@interface AMSDNFCAccessory
- (id)_addCampaignToken:(id)token andGroup:(id)group toURL:(id)l;
- (id)_hasArcadeSubscription:(id)subscription;
- (id)_hasFitnessPlusSubscription;
- (id)_hasMusicSubscription;
- (id)_hasTVSubscription;
- (void)handleInboundURL:(id)l;
@end

@implementation AMSDNFCAccessory

- (void)handleInboundURL:(id)l
{
  lCopy = l;
  v5 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:1];
  [v5 setQuery:0];
  v177 = v5;
  v6 = [v5 URL];
  selfCopy = self;
  _bag = [(AMSDNFCAccessory *)self _bag];
  v8 = [_bag URLForKey:@"nfc-accessories/music/tag-url"];
  v208 = 0;
  v9 = [v8 valueWithError:&v208];
  v10 = v208;

  v11 = [_bag URLForKey:@"nfc-accessories/tv/tag-url"];
  v207 = v10;
  v179 = [v11 valueWithError:&v207];
  v12 = v207;

  v13 = [_bag URLForKey:@"nfc-accessories/arcade/tag-url"];
  v206 = v12;
  v178 = [v13 valueWithError:&v206];
  v14 = v206;

  v15 = [_bag URLForKey:@"nfc-accessories/appstore/tag-url"];
  v205 = v14;
  v16 = [v15 valueWithError:&v205];
  v17 = v205;

  v18 = [_bag URLForKey:@"nfc-accessories/fitness/tag-url"];
  v204 = v17;
  v19 = [v18 valueWithError:&v204];
  v20 = v204;

  v21 = v6;
  v174 = _bag;
  if (v9 && [v6 isEqual:v9])
  {
    v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v170 = v19;
    oSLogObject = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      AMSLogableURL();
      v162 = lCopy;
      v26 = v9;
      v28 = v27 = _bag;
      *buf = 138543874;
      v213 = v24;
      v214 = 2114;
      v215 = v25;
      v216 = 2114;
      v217 = v28;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music URL detected. URL = %{public}@", buf, 0x20u);

      _bag = v27;
      v9 = v26;
      lCopy = v162;
    }

    _hasMusicSubscription = [(AMSDNFCAccessory *)selfCopy _hasMusicSubscription];
    v203 = v20;
    v30 = [_hasMusicSubscription resultWithError:&v203];
    v31 = v203;

    if (v30)
    {
      v32 = [_bag dictionaryForKey:@"nfc-accessories/music/payloads/subscribed"];
      v202 = v31;
      v33 = [v32 valueWithError:&v202];
      v34 = v202;
    }

    else
    {
      v32 = [_bag dictionaryForKey:@"nfc-accessories/music/payloads/unsubscribed"];
      v201 = v31;
      v33 = [v32 valueWithError:&v201];
      v34 = v201;
    }

    v175 = v34;
    v166 = @"music-notification-default";
    v20 = v31;
    v21 = v6;
    v36 = v16;
    v46 = v33;
  }

  else
  {
    if (v179 && [v6 isEqual:?])
    {
      v171 = v6;
      v35 = +[AMSLogConfig sharedAccountsDaemonConfig];
      v36 = v16;
      if (!v35)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v170 = v19;
      oSLogObject2 = [v35 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        v39 = AMSLogKey();
        AMSLogableURL();
        v163 = lCopy;
        v40 = v9;
        v42 = v41 = _bag;
        *buf = 138543874;
        v213 = v38;
        v214 = 2114;
        v215 = v39;
        v216 = 2114;
        v217 = v42;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV URL detected. URL = %{public}@", buf, 0x20u);

        _bag = v41;
        v9 = v40;
        lCopy = v163;
      }

      _hasTVSubscription = [(AMSDNFCAccessory *)selfCopy _hasTVSubscription];
      v200 = v20;
      v44 = [_hasTVSubscription resultWithError:&v200];
      v45 = v200;

      if (v44)
      {
        v32 = [_bag dictionaryForKey:@"nfc-accessories/tv/payloads/subscribed"];
        v199 = v45;
        v46 = [v32 valueWithError:&v199];
        v47 = v199;
      }

      else
      {
        v32 = [_bag dictionaryForKey:@"nfc-accessories/tv/payloads/unsubscribed"];
        v198 = v45;
        v46 = [v32 valueWithError:&v198];
        v47 = v198;
      }

      v175 = v47;
      v91 = @"com.apple.tv-default";
    }

    else
    {
      v36 = v16;
      if (v178 && [v21 isEqual:?])
      {
        v164 = lCopy;
        v170 = v19;
        v157 = v9;
        v172 = v21;
        v48 = +[AMSLogConfig sharedAccountsDaemonConfig];
        if (!v48)
        {
          v48 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [v48 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v50 = objc_opt_class();
          v51 = AMSLogKey();
          AMSLogableURL();
          v53 = v52 = _bag;
          *buf = 138543874;
          v213 = v50;
          v214 = 2114;
          v215 = v51;
          v216 = 2114;
          v217 = v53;
          _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Arcade URL detected. URL = %{public}@", buf, 0x20u);

          _bag = v52;
        }

        v54 = _bag;
        v55 = [_bag stringForKey:@"arcade-iap-family-id"];
        v197 = v20;
        v32 = [v55 valueWithError:&v197];
        v56 = v197;

        v57 = [(AMSDNFCAccessory *)selfCopy _hasArcadeSubscription:v32];
        v196 = v56;
        v58 = [v57 resultWithError:&v196];
        v59 = v196;

        if (v59 && [v59 code] == 1)
        {
          v60 = +[AMSLogConfig sharedAccountsDaemonConfig];
          if (!v60)
          {
            v60 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject4 = [v60 OSLogObject];
          if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
          {
            v62 = objc_opt_class();
            v63 = AMSLogKey();
            *buf = 138543874;
            v213 = v62;
            v214 = 2114;
            v215 = v63;
            v216 = 2114;
            v217 = v59;
            _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Timed out getting Arcade subscription status. Error = %{public}@", buf, 0x20u);

            v36 = v16;
          }
        }

        _bag = v54;
        if (v58)
        {
          v64 = [v54 dictionaryForKey:@"nfc-accessories/arcade/payloads/subscribed"];
          v20 = v64;
          v195 = v59;
          v65 = &v195;
          v66 = &v195;
        }

        else
        {
          v64 = [v54 dictionaryForKey:@"nfc-accessories/arcade/payloads/unsubscribed"];
          v20 = v64;
          v194 = v59;
          v65 = &v194;
          v66 = &v194;
        }

        v46 = [v64 valueWithError:v66];
        lCopy = v164;
        v175 = *v65;

        v166 = @"asd-notification-default";
        v9 = v157;
        v21 = v172;
        goto LABEL_64;
      }

      if (v16 && [v21 isEqual:v16])
      {
        v170 = v19;
        v67 = +[AMSLogConfig sharedAccountsDaemonConfig];
        if (!v67)
        {
          v67 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject5 = [v67 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          v69 = v21;
          v70 = objc_opt_class();
          v71 = AMSLogKey();
          AMSLogableURL();
          v165 = lCopy;
          v72 = v9;
          v74 = v73 = _bag;
          *buf = 138543874;
          v213 = v70;
          v21 = v69;
          v214 = 2114;
          v215 = v71;
          v216 = 2114;
          v217 = v74;
          _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] App Store URL detected. URL = %{public}@", buf, 0x20u);

          _bag = v73;
          v9 = v72;
          v36 = v16;
          lCopy = v165;
        }

        v32 = [_bag dictionaryForKey:@"nfc-accessories/appstore/payloads/unsubscribed"];
        v193 = v20;
        v46 = [v32 valueWithError:&v193];
        v175 = v193;
        v166 = @"asd-notification-default";
        goto LABEL_64;
      }

      if (!v19 || ![v21 isEqual:v19])
      {
        v175 = v20;
        goto LABEL_89;
      }

      v171 = v21;
      v75 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v75)
      {
        v75 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject6 = [v75 OSLogObject];
      v170 = v19;
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
      {
        v77 = objc_opt_class();
        v78 = AMSLogKey();
        AMSLogableURL();
        v167 = lCopy;
        v79 = v9;
        v81 = v80 = _bag;
        *buf = 138543874;
        v213 = v77;
        v214 = 2114;
        v215 = v78;
        v216 = 2114;
        v217 = v81;
        _os_log_impl(&_mh_execute_header, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fitness URL detected. URL = %{public}@", buf, 0x20u);

        _bag = v80;
        v9 = v79;
        lCopy = v167;
      }

      _hasFitnessPlusSubscription = [(AMSDNFCAccessory *)selfCopy _hasFitnessPlusSubscription];
      v192 = v20;
      v83 = [_hasFitnessPlusSubscription resultWithError:&v192];
      v45 = v192;

      if (v45 && [v45 code] == 1)
      {
        v84 = +[AMSLogConfig sharedAccountsDaemonConfig];
        if (!v84)
        {
          v84 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject7 = [v84 OSLogObject];
        if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
        {
          v86 = v9;
          v87 = _bag;
          v88 = objc_opt_class();
          AMSLogKey();
          v89 = v168 = lCopy;
          *buf = 138543874;
          v213 = v88;
          _bag = v87;
          v9 = v86;
          v214 = 2114;
          v215 = v89;
          v216 = 2114;
          v217 = v45;
          _os_log_impl(&_mh_execute_header, oSLogObject7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Timed out getting Fitness+ subscription status. Error = %{public}@", buf, 0x20u);

          lCopy = v168;
        }
      }

      if (v83)
      {
        v32 = [_bag dictionaryForKey:@"nfc-accessories/fitness/payloads/subscribed"];
        v191 = v45;
        v46 = [v32 valueWithError:&v191];
        v90 = v191;
      }

      else
      {
        v32 = [_bag dictionaryForKey:@"nfc-accessories/fitness/payloads/unsubscribed"];
        v190 = v45;
        v46 = [v32 valueWithError:&v190];
        v90 = v190;
      }

      v175 = v90;
      v91 = @"fitcored-engagement-category";
    }

    v166 = v91;
    v20 = v45;
    v21 = v171;
  }

LABEL_64:

  if (v46)
  {
    v92 = [[AMSPushPayload alloc] initWithPayload:v46];
    v93 = [AMSPushConfiguration alloc];
    v211 = AMSPushActionTypeRichNotification;
    v94 = [NSArray arrayWithObjects:&v211 count:1];
    v95 = [NSSet setWithArray:v94];
    v96 = [v93 initWithEnabledActionTypes:v95];

    v176 = v92;
    v97 = [[AMSUserNotification alloc] initWithPayload:v92 andConfig:v96];
    v98 = v177;
    v160 = v96;
    v161 = v97;
    if (v97)
    {
      v99 = v97;
      v154 = v46;
      v155 = v36;
      v158 = v9;
      v173 = v21;
      v100 = +[ACAccountStore ams_sharedAccountStore];
      ams_activeiTunesAccount = [v100 ams_activeiTunesAccount];
      [v99 setAccount:ams_activeiTunesAccount];

      v102 = lCopy;
      v103 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:1];
      oSLogObject8 = objc_alloc_init(NSMutableDictionary);
      v186 = 0u;
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v159 = v103;
      queryItems = [v103 queryItems];
      v106 = [queryItems countByEnumeratingWithState:&v186 objects:v210 count:16];
      if (v106)
      {
        v107 = v106;
        v108 = *v187;
        do
        {
          for (i = 0; i != v107; i = i + 1)
          {
            if (*v187 != v108)
            {
              objc_enumerationMutation(queryItems);
            }

            v110 = *(*(&v186 + 1) + 8 * i);
            name = [v110 name];
            if (name)
            {
              v112 = name;
              value = [v110 value];

              if (value)
              {
                value2 = [v110 value];
                name2 = [v110 name];
                [oSLogObject8 setObject:value2 forKey:name2];
              }
            }
          }

          v107 = [queryItems countByEnumeratingWithState:&v186 objects:v210 count:16];
        }

        while (v107);
      }

      v116 = v161;
      metricsEvent = [v161 metricsEvent];
      v118 = [metricsEvent mutableCopy];

      absoluteString = [v102 absoluteString];
      [v118 setObject:absoluteString forKeyedSubscript:@"tagURL"];

      if ([oSLogObject8 count])
      {
        v120 = [oSLogObject8 copy];
        [v118 setObject:v120 forKeyedSubscript:@"tagParameters"];
      }

      v121 = [v118 copy];
      [v161 setMetricsEvent:v121];

      [v161 setCategoryIdentifier:v166];
      v122 = [oSLogObject8 objectForKeyedSubscript:@"itscg"];
      v123 = [oSLogObject8 objectForKeyedSubscript:@"itsct"];
      if (v122 | v123)
      {
        v153 = v118;
        v169 = v102;
        defaultAction = [v161 defaultAction];
        defaultURL = [defaultAction defaultURL];
        v126 = [(AMSDNFCAccessory *)selfCopy _addCampaignToken:v123 andGroup:v122 toURL:defaultURL];

        defaultAction2 = [v161 defaultAction];
        v152 = v126;
        [defaultAction2 setDefaultURL:v126];

        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        buttonActions = [v161 buttonActions];
        v129 = [buttonActions countByEnumeratingWithState:&v182 objects:v209 count:16];
        if (v129)
        {
          v130 = v129;
          v131 = *v183;
          do
          {
            for (j = 0; j != v130; j = j + 1)
            {
              if (*v183 != v131)
              {
                objc_enumerationMutation(buttonActions);
              }

              v133 = *(*(&v182 + 1) + 8 * j);
              defaultURL2 = [v133 defaultURL];
              v135 = [(AMSDNFCAccessory *)selfCopy _addCampaignToken:v123 andGroup:v122 toURL:defaultURL2];

              [v133 setDefaultURL:v135];
            }

            v130 = [buttonActions countByEnumeratingWithState:&v182 objects:v209 count:16];
          }

          while (v130);
        }

        v116 = v161;
        v102 = v169;
        _bag = v174;
        v118 = v153;
      }

      clientIdentifier = [v176 clientIdentifier];
      v137 = [AMSUserNotificationCenter postNotification:v116 bag:_bag centerBundleId:clientIdentifier];

      v138 = v102;
      v181[0] = _NSConcreteStackBlock;
      v181[1] = 3221225472;
      v181[2] = sub_100074DD0;
      v181[3] = &unk_1002B0568;
      v181[4] = selfCopy;
      [v137 addFinishBlock:v181];

      v139 = v116;
      v98 = v177;
      v19 = v170;
      v21 = v173;
      v36 = v155;
      v9 = v158;
      v140 = v179;
      v46 = v154;
    }

    else
    {
      v148 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v148)
      {
        v148 = +[AMSLogConfig sharedConfig];
      }

      v159 = v148;
      oSLogObject8 = [v148 OSLogObject];
      v19 = v170;
      v138 = lCopy;
      if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
      {
        v149 = objc_opt_class();
        AMSLogKey();
        v156 = v36;
        v151 = v150 = v21;
        *buf = 138543874;
        v213 = v149;
        v214 = 2114;
        v215 = v151;
        v216 = 2114;
        v217 = v46;
        _os_log_impl(&_mh_execute_header, oSLogObject8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There was a problem parsing the payload dictionary. Payload = %{public}@", buf, 0x20u);

        v21 = v150;
        v36 = v156;
      }

      v140 = v179;
      v139 = 0;
    }

    oSLogObject9 = v160;
    goto LABEL_100;
  }

  v19 = v170;
LABEL_89:
  v98 = v177;
  v138 = lCopy;
  v141 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v141)
  {
    v141 = +[AMSLogConfig sharedConfig];
  }

  v176 = v141;
  oSLogObject9 = [v141 OSLogObject];
  if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
  {
    v143 = objc_opt_class();
    v144 = AMSLogKey();
    AMSLogableURL();
    v145 = v36;
    v147 = v146 = v21;
    *buf = 138544130;
    v213 = v143;
    v214 = 2114;
    v215 = v144;
    v216 = 2114;
    v217 = v147;
    v218 = 2114;
    v219 = v175;
    _os_log_impl(&_mh_execute_header, oSLogObject9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No payload was found for the incoming NFC URL. TagURL = %{public}@, Error = %{public}@", buf, 0x2Au);

    v21 = v146;
    v36 = v145;
  }

  v46 = 0;
  v140 = v179;
LABEL_100:
}

- (id)_addCampaignToken:(id)token andGroup:(id)group toURL:(id)l
{
  tokenCopy = token;
  groupCopy = group;
  lCopy = l;
  v10 = lCopy;
  if (tokenCopy | groupCopy)
  {
    v11 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    queryItems = [v11 queryItems];
    v13 = [queryItems mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(NSMutableArray);
    }

    v17 = v15;

    if (groupCopy)
    {
      v18 = [NSURLQueryItem queryItemWithName:@"itscg" value:groupCopy];
      [v17 addObject:v18];
    }

    if (tokenCopy)
    {
      v19 = [NSURLQueryItem queryItemWithName:@"itsct" value:tokenCopy];
      [v17 addObject:v19];
    }

    [v11 setQueryItems:v17];
    v16 = [v11 URL];
  }

  else
  {
    v16 = lCopy;
  }

  return v16;
}

- (id)_hasArcadeSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v5 = [[AMSMutablePromise alloc] initWithTimeout:2.0];
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking Arcade subscription status", buf, 0x16u);
  }

  sharedInstance = [sub_10007526C() sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007534C;
  v15[3] = &unk_1002B18D8;
  v16 = subscriptionCopy;
  selfCopy = self;
  v18 = v5;
  v11 = v5;
  v12 = subscriptionCopy;
  [sharedInstance getSubscriptionEntitlementsForSegment:1 ignoreCaches:0 withResultHandler:v15];
  binaryPromiseAdapter = [v11 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

- (id)_hasFitnessPlusSubscription
{
  v3 = [[AMSMutablePromise alloc] initWithTimeout:2.0];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking Fitness+ subscription status", buf, 0x16u);
  }

  sharedInstance = [sub_10007526C() sharedInstance];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100075844;
  v15 = &unk_1002B1940;
  selfCopy = self;
  v17 = v3;
  v9 = v3;
  [sharedInstance getSubscriptionEntitlementsForSegment:2 ignoreCaches:0 withResultHandler:&v12];
  binaryPromiseAdapter = [v9 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

- (id)_hasMusicSubscription
{
  v3 = [[AMSMutablePromise alloc] initWithTimeout:2.0];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking Music subscription status", buf, 0x16u);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v8 = qword_1002E32B8;
  v23 = qword_1002E32B8;
  if (!qword_1002E32B8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10007664C;
    v25 = &unk_1002B0728;
    v26 = &v20;
    sub_10007664C(buf);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  v10 = objc_alloc_init(v8);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100075D48;
  v17 = &unk_1002B1968;
  selfCopy = self;
  v19 = v3;
  v11 = v3;
  [v10 getSubscriptionStatusWithCompletionHandler:&v14];
  binaryPromiseAdapter = [v11 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

- (id)_hasTVSubscription
{
  v3 = [[AMSMutablePromise alloc] initWithTimeout:2.0];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking TV subscription status", buf, 0x16u);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v8 = qword_1002E32C8;
  v23 = qword_1002E32C8;
  if (!qword_1002E32C8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100076804;
    v25 = &unk_1002B0728;
    v26 = &v20;
    sub_100076804(buf);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  v10 = objc_alloc_init(v8);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100076228;
  v17 = &unk_1002B1990;
  selfCopy = self;
  v19 = v3;
  v11 = v3;
  [v10 fetchSubscriptionData:1 completion:&v14];
  binaryPromiseAdapter = [v11 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

@end
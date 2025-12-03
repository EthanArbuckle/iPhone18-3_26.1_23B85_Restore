@interface AMSDNFCAccessory
- (id)_addCampaignToken:(id)token andGroup:(id)group toURL:(id)l;
- (id)_bag;
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
  v4 = [NSURLComponents componentsWithURL:"componentsWithURL:resolvingAgainstBaseURL:" resolvingAgainstBaseURL:?];
  [v4 setQuery:0];
  v5 = [v4 URL];
  selfCopy = self;
  _bag = [(AMSDNFCAccessory *)self _bag];
  v7 = [_bag URLForKey:@"nfc-accessories/music/tag-url"];
  v189 = 0;
  v8 = [v7 valueWithError:&v189];
  v9 = v189;

  v10 = [_bag URLForKey:@"nfc-accessories/tv/tag-url"];
  v188 = v9;
  v160 = [v10 valueWithError:&v188];
  v11 = v188;

  v12 = [_bag URLForKey:@"nfc-accessories/arcade/tag-url"];
  v187 = v11;
  v13 = [v12 valueWithError:&v187];
  v14 = v187;

  v15 = [_bag URLForKey:@"nfc-accessories/appstore/tag-url"];
  v186 = v14;
  v157 = [v15 valueWithError:&v186];
  v16 = v186;

  v17 = [_bag URLForKey:@"nfc-accessories/fitness/tag-url"];
  v185 = v16;
  v18 = [v17 valueWithError:&v185];
  v19 = v185;

  v156 = v13;
  if (v8 && [v5 isEqual:v8])
  {
    v154 = v18;
    v20 = v8;
    v21 = _bag;
    v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543874;
      v194 = v24;
      v195 = 2114;
      v196 = v25;
      v197 = 2114;
      v198 = v5;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music URL detected. URL = %{public}@", buf, 0x20u);
    }

    _hasMusicSubscription = [(AMSDNFCAccessory *)selfCopy _hasMusicSubscription];
    v184 = v19;
    v27 = [_hasMusicSubscription resultWithError:&v184];
    v28 = v184;

    v29 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      AMSLogKey();
      v33 = v32 = v4;
      *buf = 138543618;
      v194 = v31;
      v195 = 2114;
      v196 = v33;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Constructing music payload.", buf, 0x16u);

      v4 = v32;
    }

    _bag = v21;
    if (v27)
    {
      v34 = [v21 dictionaryForKey:@"nfc-accessories/music/payloads/subscribed"];
      v183 = v28;
      v35 = [v34 valueWithError:&v183];
      v36 = v183;
    }

    else
    {
      v34 = [v21 dictionaryForKey:@"nfc-accessories/music/payloads/unsubscribed"];
      v182 = v28;
      v35 = [v34 valueWithError:&v182];
      v36 = v182;
    }

    v66 = v36;
    v152 = @"music-notification-default";
    v19 = v28;
    v8 = v20;
    v13 = v156;
  }

  else
  {
    if (v160 && [v5 isEqual:v160])
    {
      v154 = v18;
      v37 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v37)
      {
        v37 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v37 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v40 = AMSLogKey();
        *buf = 138543874;
        v194 = v39;
        v195 = 2114;
        v196 = v40;
        v197 = 2114;
        v198 = v5;
        _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV URL detected. URL = %{public}@", buf, 0x20u);
      }

      _hasTVSubscription = [(AMSDNFCAccessory *)selfCopy _hasTVSubscription];
      v181 = v19;
      v42 = [_hasTVSubscription resultWithError:&v181];
      v43 = v181;

      if (v42)
      {
        v34 = [_bag dictionaryForKey:@"nfc-accessories/tv/payloads/subscribed"];
        v180 = v43;
        v35 = [v34 valueWithError:&v180];
        v44 = v180;
      }

      else
      {
        v34 = [_bag dictionaryForKey:@"nfc-accessories/tv/payloads/unsubscribed"];
        v179 = v43;
        v35 = [v34 valueWithError:&v179];
        v44 = v179;
      }

      v66 = v44;
      v79 = @"com.apple.tv-default";
    }

    else
    {
      if (v13 && [v5 isEqual:v13])
      {
        v154 = v18;
        v148 = v4;
        v45 = +[AMSLogConfig sharedAccountsDaemonConfig];
        if (!v45)
        {
          v45 = +[AMSLogConfig sharedConfig];
        }

        v146 = v8;
        oSLogObject4 = [v45 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v47 = objc_opt_class();
          v48 = AMSLogKey();
          *buf = 138543874;
          v194 = v47;
          v195 = 2114;
          v196 = v48;
          v197 = 2114;
          v198 = v5;
          _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Arcade URL detected. URL = %{public}@", buf, 0x20u);
        }

        v49 = _bag;
        v50 = [_bag stringForKey:@"arcade-iap-family-id"];
        v178 = v19;
        v34 = [v50 valueWithError:&v178];
        v51 = v178;

        v52 = [(AMSDNFCAccessory *)selfCopy _hasArcadeSubscription:v34];
        v177 = v51;
        v53 = [v52 resultWithError:&v177];
        v54 = v177;

        if (v54 && [v54 code] == 1)
        {
          v55 = +[AMSLogConfig sharedAccountsDaemonConfig];
          if (!v55)
          {
            v55 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject5 = [v55 OSLogObject];
          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
          {
            v57 = objc_opt_class();
            v58 = AMSLogKey();
            *buf = 138543874;
            v194 = v57;
            v195 = 2114;
            v196 = v58;
            v197 = 2114;
            v198 = v54;
            _os_log_impl(&_mh_execute_header, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Timed out getting Arcade subscription status. Error = %{public}@", buf, 0x20u);
          }
        }

        _bag = v49;
        if (v53)
        {
          v59 = [v49 dictionaryForKey:@"nfc-accessories/arcade/payloads/subscribed"];
          v19 = v59;
          v176 = v54;
          v60 = &v176;
          v61 = &v176;
        }

        else
        {
          v59 = [v49 dictionaryForKey:@"nfc-accessories/arcade/payloads/unsubscribed"];
          v19 = v59;
          v175 = v54;
          v60 = &v175;
          v61 = &v175;
        }

        v35 = [v59 valueWithError:v61];
        v4 = v148;
        v66 = *v60;

        v152 = @"asd-notification-default";
        v8 = v146;
        goto LABEL_68;
      }

      if (v157 && [v5 isEqual:?])
      {
        v154 = v18;
        v62 = +[AMSLogConfig sharedAccountsDaemonConfig];
        if (!v62)
        {
          v62 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject6 = [v62 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
        {
          v64 = objc_opt_class();
          v65 = AMSLogKey();
          *buf = 138543874;
          v194 = v64;
          v195 = 2114;
          v196 = v65;
          v197 = 2114;
          v198 = v5;
          _os_log_impl(&_mh_execute_header, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] App Store URL detected. URL = %{public}@", buf, 0x20u);
        }

        v34 = [_bag dictionaryForKey:@"nfc-accessories/appstore/payloads/unsubscribed"];
        v174 = v19;
        v35 = [v34 valueWithError:&v174];
        v66 = v174;
        v152 = @"asd-notification-default";
        goto LABEL_68;
      }

      if (!v18 || ![v5 isEqual:v18])
      {
        v66 = v19;
        goto LABEL_93;
      }

      v154 = v18;
      v141 = _bag;
      v67 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v67)
      {
        v67 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject7 = [v67 OSLogObject];
      if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
      {
        v69 = objc_opt_class();
        v70 = AMSLogKey();
        *buf = 138543874;
        v194 = v69;
        v195 = 2114;
        v196 = v70;
        v197 = 2114;
        v198 = v5;
        _os_log_impl(&_mh_execute_header, oSLogObject7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fitness URL detected. URL = %{public}@", buf, 0x20u);
      }

      _hasFitnessPlusSubscription = [(AMSDNFCAccessory *)selfCopy _hasFitnessPlusSubscription];
      v173 = v19;
      v72 = [_hasFitnessPlusSubscription resultWithError:&v173];
      v43 = v173;

      if (v43 && [v43 code] == 1)
      {
        v73 = +[AMSLogConfig sharedAccountsDaemonConfig];
        if (!v73)
        {
          v73 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject8 = [v73 OSLogObject];
        if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
        {
          v75 = objc_opt_class();
          AMSLogKey();
          v77 = v76 = v4;
          *buf = 138543874;
          v194 = v75;
          v195 = 2114;
          v196 = v77;
          v197 = 2114;
          v198 = v43;
          _os_log_impl(&_mh_execute_header, oSLogObject8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Timed out getting Fitness+ subscription status. Error = %{public}@", buf, 0x20u);

          v4 = v76;
        }
      }

      _bag = v141;
      if (v72)
      {
        v34 = [v141 dictionaryForKey:@"nfc-accessories/fitness/payloads/subscribed"];
        v172 = v43;
        v35 = [v34 valueWithError:&v172];
        v78 = v172;
      }

      else
      {
        v34 = [v141 dictionaryForKey:@"nfc-accessories/fitness/payloads/unsubscribed"];
        v171 = v43;
        v35 = [v34 valueWithError:&v171];
        v78 = v171;
      }

      v66 = v78;
      v79 = @"fitcored-engagement-category";
    }

    v152 = v79;
    v19 = v43;
  }

LABEL_68:

  if (v35)
  {
    v151 = v35;
    v80 = [[AMSPushPayload alloc] initWithPayload:v35];
    v81 = [AMSPushConfiguration alloc];
    v192 = AMSPushActionTypeRichNotification;
    v82 = [NSArray arrayWithObjects:&v192 count:1];
    v83 = [NSSet setWithArray:v82];
    v84 = [v81 initWithEnabledActionTypes:v83];

    v158 = v80;
    v85 = [[AMSUserNotification alloc] initWithPayload:v80 andConfig:v84];
    v155 = v84;
    if (v85)
    {
      v143 = v66;
      v144 = v5;
      v147 = v8;
      v149 = v4;
      v86 = +[ACAccountStore ams_sharedAccountStore];
      ams_activeiTunesAccount = [v86 ams_activeiTunesAccount];
      v145 = v85;
      [v85 setAccount:ams_activeiTunesAccount];

      v88 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:1];
      oSLogObject9 = objc_alloc_init(NSMutableDictionary);
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v150 = v88;
      queryItems = [v88 queryItems];
      v91 = [queryItems countByEnumeratingWithState:&v167 objects:v191 count:16];
      if (v91)
      {
        v92 = v91;
        v93 = *v168;
        do
        {
          for (i = 0; i != v92; i = i + 1)
          {
            if (*v168 != v93)
            {
              objc_enumerationMutation(queryItems);
            }

            v95 = *(*(&v167 + 1) + 8 * i);
            name = [v95 name];
            if (name)
            {
              v97 = name;
              value = [v95 value];

              if (value)
              {
                value2 = [v95 value];
                name2 = [v95 name];
                [oSLogObject9 setObject:value2 forKey:name2];
              }
            }
          }

          v92 = [queryItems countByEnumeratingWithState:&v167 objects:v191 count:16];
        }

        while (v92);
      }

      v85 = v145;
      metricsEvent = [v145 metricsEvent];
      v102 = [metricsEvent mutableCopy];

      absoluteString = [lCopy absoluteString];
      [v102 setObject:absoluteString forKeyedSubscript:@"tagURL"];

      if ([oSLogObject9 count])
      {
        v104 = [oSLogObject9 copy];
        [v102 setObject:v104 forKeyedSubscript:@"tagParameters"];
      }

      v105 = [v102 copy];
      [v145 setMetricsEvent:v105];

      [v145 setCategoryIdentifier:v152];
      v106 = [oSLogObject9 objectForKeyedSubscript:@"itscg"];
      v107 = [oSLogObject9 objectForKeyedSubscript:@"itsct"];
      if (v106 | v107)
      {
        v153 = v102;
        v142 = _bag;
        defaultAction = [v145 defaultAction];
        defaultURL = [defaultAction defaultURL];
        v110 = [(AMSDNFCAccessory *)selfCopy _addCampaignToken:v107 andGroup:v106 toURL:defaultURL];

        defaultAction2 = [v145 defaultAction];
        v140 = v110;
        [defaultAction2 setDefaultURL:v110];

        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        buttonActions = [v145 buttonActions];
        v113 = [buttonActions countByEnumeratingWithState:&v163 objects:v190 count:16];
        if (v113)
        {
          v114 = v113;
          v115 = *v164;
          do
          {
            for (j = 0; j != v114; j = j + 1)
            {
              if (*v164 != v115)
              {
                objc_enumerationMutation(buttonActions);
              }

              v117 = *(*(&v163 + 1) + 8 * j);
              defaultURL2 = [v117 defaultURL];
              v119 = [(AMSDNFCAccessory *)selfCopy _addCampaignToken:v107 andGroup:v106 toURL:defaultURL2];

              [v117 setDefaultURL:v119];
            }

            v114 = [buttonActions countByEnumeratingWithState:&v163 objects:v190 count:16];
          }

          while (v114);
        }

        _bag = v142;
        v85 = v145;
        v102 = v153;
      }

      clientIdentifier = [v158 clientIdentifier];
      v121 = [AMSUserNotificationCenter postNotification:v85 bag:_bag centerBundleId:clientIdentifier];

      v162[0] = _NSConcreteStackBlock;
      v162[1] = 3221225472;
      v162[2] = sub_1000719CC;
      v162[3] = &unk_100243F98;
      v162[4] = selfCopy;
      [v121 addFinishBlock:v162];

      v8 = v147;
      v4 = v149;
      v66 = v143;
      v5 = v144;
      v13 = v156;
      v122 = v157;
    }

    else
    {
      v133 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v133)
      {
        v133 = +[AMSLogConfig sharedConfig];
      }

      v150 = v133;
      oSLogObject9 = [v133 OSLogObject];
      v13 = v156;
      if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
      {
        v134 = objc_opt_class();
        AMSLogKey();
        v135 = v8;
        v136 = v4;
        v137 = v5;
        v139 = v138 = v66;
        *buf = 138543874;
        v194 = v134;
        v195 = 2114;
        v196 = v139;
        v197 = 2114;
        v198 = v151;
        _os_log_impl(&_mh_execute_header, oSLogObject9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There was a problem parsing the payload dictionary. Payload = %{public}@", buf, 0x20u);

        v66 = v138;
        v5 = v137;
        v4 = v136;
        v8 = v135;
        v132 = v151;
        v122 = v157;
LABEL_104:

        v18 = v154;
        goto LABEL_105;
      }

      v122 = v157;
    }

    v132 = v151;
    goto LABEL_104;
  }

  v18 = v154;
LABEL_93:
  v123 = _bag;
  v124 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v124)
  {
    v124 = +[AMSLogConfig sharedConfig];
  }

  v158 = v124;
  oSLogObject10 = [v124 OSLogObject];
  v155 = oSLogObject10;
  if (os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_ERROR))
  {
    v126 = objc_opt_class();
    AMSLogKey();
    v127 = v8;
    v128 = v4;
    v129 = v5;
    v131 = v130 = v18;
    *buf = 138544130;
    v194 = v126;
    v195 = 2114;
    v196 = v131;
    v197 = 2114;
    v198 = lCopy;
    v199 = 2114;
    v200 = v66;
    _os_log_impl(&_mh_execute_header, oSLogObject10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No payload was found for the incoming NFC URL. TagURL = %{public}@, Error = %{public}@", buf, 0x2Au);

    v18 = v130;
    v5 = v129;
    v4 = v128;
    v8 = v127;
  }

  v132 = 0;
  v122 = v157;
  _bag = v123;
LABEL_105:
}

- (id)_bag
{
  v2 = objc_alloc_init(AMSMutableBagKeySet);
  [v2 addBagKey:@"arcade-iap-family-id" valueType:4];
  [v2 addBagKey:@"nfc-accessories/music/tag-url" valueType:5];
  [v2 addBagKey:@"nfc-accessories/music/payloads/unsubscribed" valueType:6];
  [v2 addBagKey:@"nfc-accessories/music/payloads/subscribed" valueType:6];
  [v2 addBagKey:@"nfc-accessories/tv/tag-url" valueType:5];
  [v2 addBagKey:@"nfc-accessories/tv/payloads/unsubscribed" valueType:6];
  [v2 addBagKey:@"nfc-accessories/tv/payloads/subscribed" valueType:6];
  [v2 addBagKey:@"nfc-accessories/arcade/tag-url" valueType:5];
  [v2 addBagKey:@"nfc-accessories/arcade/payloads/unsubscribed" valueType:6];
  [v2 addBagKey:@"nfc-accessories/arcade/payloads/subscribed" valueType:6];
  v3 = +[AMSURLRequestEncoder bagKeySet];
  [v2 unionBagKeySet:v3];

  v4 = +[AMSMetrics bagKeySet];
  [v2 unionBagKeySet:v4];

  v5 = +[AMSMescal bagKeySet];
  [v2 unionBagKeySet:v5];

  v6 = +[AMSUserNotification bagKeySet];
  [v2 unionBagKeySet:v6];

  [AMSBagKeySet registerBagKeySet:v2 forProfile:@"AMSNFCAccessory" profileVersion:@"1"];
  v7 = [AMSBag bagForProfile:@"AMSNFCAccessory" profileVersion:@"1"];

  return v7;
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
  v5 = [[AMSPromise alloc] initWithTimeout:2.0];
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

  sharedInstance = [sub_100072030() sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072110;
  v15[3] = &unk_100243FE8;
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
  v3 = [[AMSPromise alloc] initWithTimeout:2.0];
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

  sharedInstance = [sub_100072030() sharedInstance];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100072608;
  v15 = &unk_100244050;
  selfCopy = self;
  v17 = v3;
  v9 = v3;
  [sharedInstance getSubscriptionEntitlementsForSegment:2 ignoreCaches:0 withResultHandler:&v12];
  binaryPromiseAdapter = [v9 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

- (id)_hasMusicSubscription
{
  v3 = [[AMSPromise alloc] initWithTimeout:2.0];
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
  v8 = qword_100272B10;
  v23 = qword_100272B10;
  if (!qword_100272B10)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100073414;
    v25 = &unk_1002440C8;
    v26 = &v20;
    sub_100073414(buf);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  sharedStatusController = [v8 sharedStatusController];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100072B10;
  v17 = &unk_100244078;
  selfCopy = self;
  v19 = v3;
  v11 = v3;
  [sharedStatusController getSubscriptionStatusWithCompletionHandler:&v14];
  binaryPromiseAdapter = [v11 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

- (id)_hasTVSubscription
{
  v3 = [[AMSPromise alloc] initWithTimeout:2.0];
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
  v8 = qword_100272B20;
  v23 = qword_100272B20;
  if (!qword_100272B20)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000735CC;
    v25 = &unk_1002440C8;
    v26 = &v20;
    sub_1000735CC(buf);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  v10 = objc_alloc_init(v8);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100072FF0;
  v17 = &unk_1002440A0;
  selfCopy = self;
  v19 = v3;
  v11 = v3;
  [v10 fetchSubscriptionData:1 completion:&v14];
  binaryPromiseAdapter = [v11 binaryPromiseAdapter];

  return binaryPromiseAdapter;
}

@end
@interface AMSDNFCAccessory
- (id)_addCampaignToken:(id)a3 andGroup:(id)a4 toURL:(id)a5;
- (id)_bag;
- (id)_hasArcadeSubscription:(id)a3;
- (id)_hasFitnessPlusSubscription;
- (id)_hasMusicSubscription;
- (id)_hasTVSubscription;
- (void)handleInboundURL:(id)a3;
@end

@implementation AMSDNFCAccessory

- (void)handleInboundURL:(id)a3
{
  v159 = a3;
  v4 = [NSURLComponents componentsWithURL:"componentsWithURL:resolvingAgainstBaseURL:" resolvingAgainstBaseURL:?];
  [v4 setQuery:0];
  v5 = [v4 URL];
  v161 = self;
  v6 = [(AMSDNFCAccessory *)self _bag];
  v7 = [v6 URLForKey:@"nfc-accessories/music/tag-url"];
  v189 = 0;
  v8 = [v7 valueWithError:&v189];
  v9 = v189;

  v10 = [v6 URLForKey:@"nfc-accessories/tv/tag-url"];
  v188 = v9;
  v160 = [v10 valueWithError:&v188];
  v11 = v188;

  v12 = [v6 URLForKey:@"nfc-accessories/arcade/tag-url"];
  v187 = v11;
  v13 = [v12 valueWithError:&v187];
  v14 = v187;

  v15 = [v6 URLForKey:@"nfc-accessories/appstore/tag-url"];
  v186 = v14;
  v157 = [v15 valueWithError:&v186];
  v16 = v186;

  v17 = [v6 URLForKey:@"nfc-accessories/fitness/tag-url"];
  v185 = v16;
  v18 = [v17 valueWithError:&v185];
  v19 = v185;

  v156 = v13;
  if (v8 && [v5 isEqual:v8])
  {
    v154 = v18;
    v20 = v8;
    v21 = v6;
    v22 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543874;
      v194 = v24;
      v195 = 2114;
      v196 = v25;
      v197 = 2114;
      v198 = v5;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Music URL detected. URL = %{public}@", buf, 0x20u);
    }

    v26 = [(AMSDNFCAccessory *)v161 _hasMusicSubscription];
    v184 = v19;
    v27 = [v26 resultWithError:&v184];
    v28 = v184;

    v29 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v30 = [v29 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      AMSLogKey();
      v33 = v32 = v4;
      *buf = 138543618;
      v194 = v31;
      v195 = 2114;
      v196 = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Constructing music payload.", buf, 0x16u);

      v4 = v32;
    }

    v6 = v21;
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

      v38 = [v37 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v40 = AMSLogKey();
        *buf = 138543874;
        v194 = v39;
        v195 = 2114;
        v196 = v40;
        v197 = 2114;
        v198 = v5;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] TV URL detected. URL = %{public}@", buf, 0x20u);
      }

      v41 = [(AMSDNFCAccessory *)v161 _hasTVSubscription];
      v181 = v19;
      v42 = [v41 resultWithError:&v181];
      v43 = v181;

      if (v42)
      {
        v34 = [v6 dictionaryForKey:@"nfc-accessories/tv/payloads/subscribed"];
        v180 = v43;
        v35 = [v34 valueWithError:&v180];
        v44 = v180;
      }

      else
      {
        v34 = [v6 dictionaryForKey:@"nfc-accessories/tv/payloads/unsubscribed"];
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
        v46 = [v45 OSLogObject];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = objc_opt_class();
          v48 = AMSLogKey();
          *buf = 138543874;
          v194 = v47;
          v195 = 2114;
          v196 = v48;
          v197 = 2114;
          v198 = v5;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Arcade URL detected. URL = %{public}@", buf, 0x20u);
        }

        v49 = v6;
        v50 = [v6 stringForKey:@"arcade-iap-family-id"];
        v178 = v19;
        v34 = [v50 valueWithError:&v178];
        v51 = v178;

        v52 = [(AMSDNFCAccessory *)v161 _hasArcadeSubscription:v34];
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

          v56 = [v55 OSLogObject];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = objc_opt_class();
            v58 = AMSLogKey();
            *buf = 138543874;
            v194 = v57;
            v195 = 2114;
            v196 = v58;
            v197 = 2114;
            v198 = v54;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Timed out getting Arcade subscription status. Error = %{public}@", buf, 0x20u);
          }
        }

        v6 = v49;
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

        v63 = [v62 OSLogObject];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = objc_opt_class();
          v65 = AMSLogKey();
          *buf = 138543874;
          v194 = v64;
          v195 = 2114;
          v196 = v65;
          v197 = 2114;
          v198 = v5;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] App Store URL detected. URL = %{public}@", buf, 0x20u);
        }

        v34 = [v6 dictionaryForKey:@"nfc-accessories/appstore/payloads/unsubscribed"];
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
      v141 = v6;
      v67 = +[AMSLogConfig sharedAccountsDaemonConfig];
      if (!v67)
      {
        v67 = +[AMSLogConfig sharedConfig];
      }

      v68 = [v67 OSLogObject];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = objc_opt_class();
        v70 = AMSLogKey();
        *buf = 138543874;
        v194 = v69;
        v195 = 2114;
        v196 = v70;
        v197 = 2114;
        v198 = v5;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fitness URL detected. URL = %{public}@", buf, 0x20u);
      }

      v71 = [(AMSDNFCAccessory *)v161 _hasFitnessPlusSubscription];
      v173 = v19;
      v72 = [v71 resultWithError:&v173];
      v43 = v173;

      if (v43 && [v43 code] == 1)
      {
        v73 = +[AMSLogConfig sharedAccountsDaemonConfig];
        if (!v73)
        {
          v73 = +[AMSLogConfig sharedConfig];
        }

        v74 = [v73 OSLogObject];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
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
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Timed out getting Fitness+ subscription status. Error = %{public}@", buf, 0x20u);

          v4 = v76;
        }
      }

      v6 = v141;
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
      v87 = [v86 ams_activeiTunesAccount];
      v145 = v85;
      [v85 setAccount:v87];

      v88 = [NSURLComponents componentsWithURL:v159 resolvingAgainstBaseURL:1];
      v89 = objc_alloc_init(NSMutableDictionary);
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v150 = v88;
      v90 = [v88 queryItems];
      v91 = [v90 countByEnumeratingWithState:&v167 objects:v191 count:16];
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
              objc_enumerationMutation(v90);
            }

            v95 = *(*(&v167 + 1) + 8 * i);
            v96 = [v95 name];
            if (v96)
            {
              v97 = v96;
              v98 = [v95 value];

              if (v98)
              {
                v99 = [v95 value];
                v100 = [v95 name];
                [v89 setObject:v99 forKey:v100];
              }
            }
          }

          v92 = [v90 countByEnumeratingWithState:&v167 objects:v191 count:16];
        }

        while (v92);
      }

      v85 = v145;
      v101 = [v145 metricsEvent];
      v102 = [v101 mutableCopy];

      v103 = [v159 absoluteString];
      [v102 setObject:v103 forKeyedSubscript:@"tagURL"];

      if ([v89 count])
      {
        v104 = [v89 copy];
        [v102 setObject:v104 forKeyedSubscript:@"tagParameters"];
      }

      v105 = [v102 copy];
      [v145 setMetricsEvent:v105];

      [v145 setCategoryIdentifier:v152];
      v106 = [v89 objectForKeyedSubscript:@"itscg"];
      v107 = [v89 objectForKeyedSubscript:@"itsct"];
      if (v106 | v107)
      {
        v153 = v102;
        v142 = v6;
        v108 = [v145 defaultAction];
        v109 = [v108 defaultURL];
        v110 = [(AMSDNFCAccessory *)v161 _addCampaignToken:v107 andGroup:v106 toURL:v109];

        v111 = [v145 defaultAction];
        v140 = v110;
        [v111 setDefaultURL:v110];

        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        v112 = [v145 buttonActions];
        v113 = [v112 countByEnumeratingWithState:&v163 objects:v190 count:16];
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
                objc_enumerationMutation(v112);
              }

              v117 = *(*(&v163 + 1) + 8 * j);
              v118 = [v117 defaultURL];
              v119 = [(AMSDNFCAccessory *)v161 _addCampaignToken:v107 andGroup:v106 toURL:v118];

              [v117 setDefaultURL:v119];
            }

            v114 = [v112 countByEnumeratingWithState:&v163 objects:v190 count:16];
          }

          while (v114);
        }

        v6 = v142;
        v85 = v145;
        v102 = v153;
      }

      v120 = [v158 clientIdentifier];
      v121 = [AMSUserNotificationCenter postNotification:v85 bag:v6 centerBundleId:v120];

      v162[0] = _NSConcreteStackBlock;
      v162[1] = 3221225472;
      v162[2] = sub_1000719CC;
      v162[3] = &unk_100243F98;
      v162[4] = v161;
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
      v89 = [v133 OSLogObject];
      v13 = v156;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] There was a problem parsing the payload dictionary. Payload = %{public}@", buf, 0x20u);

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
  v123 = v6;
  v124 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v124)
  {
    v124 = +[AMSLogConfig sharedConfig];
  }

  v158 = v124;
  v125 = [v124 OSLogObject];
  v155 = v125;
  if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
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
    v198 = v159;
    v199 = 2114;
    v200 = v66;
    _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No payload was found for the incoming NFC URL. TagURL = %{public}@, Error = %{public}@", buf, 0x2Au);

    v18 = v130;
    v5 = v129;
    v4 = v128;
    v8 = v127;
  }

  v132 = 0;
  v122 = v157;
  v6 = v123;
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

- (id)_addCampaignToken:(id)a3 andGroup:(id)a4 toURL:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 | v8)
  {
    v11 = [NSURLComponents componentsWithURL:v9 resolvingAgainstBaseURL:1];
    v12 = [v11 queryItems];
    v13 = [v12 mutableCopy];
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

    if (v8)
    {
      v18 = [NSURLQueryItem queryItemWithName:@"itscg" value:v8];
      [v17 addObject:v18];
    }

    if (v7)
    {
      v19 = [NSURLQueryItem queryItemWithName:@"itsct" value:v7];
      [v17 addObject:v19];
    }

    [v11 setQueryItems:v17];
    v16 = [v11 URL];
  }

  else
  {
    v16 = v9;
  }

  return v16;
}

- (id)_hasArcadeSubscription:(id)a3
{
  v4 = a3;
  v5 = [[AMSPromise alloc] initWithTimeout:2.0];
  v6 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    *buf = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking Arcade subscription status", buf, 0x16u);
  }

  v10 = [sub_100072030() sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100072110;
  v15[3] = &unk_100243FE8;
  v16 = v4;
  v17 = self;
  v18 = v5;
  v11 = v5;
  v12 = v4;
  [v10 getSubscriptionEntitlementsForSegment:1 ignoreCaches:0 withResultHandler:v15];
  v13 = [v11 binaryPromiseAdapter];

  return v13;
}

- (id)_hasFitnessPlusSubscription
{
  v3 = [[AMSPromise alloc] initWithTimeout:2.0];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking Fitness+ subscription status", buf, 0x16u);
  }

  v8 = [sub_100072030() sharedInstance];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100072608;
  v15 = &unk_100244050;
  v16 = self;
  v17 = v3;
  v9 = v3;
  [v8 getSubscriptionEntitlementsForSegment:2 ignoreCaches:0 withResultHandler:&v12];
  v10 = [v9 binaryPromiseAdapter];

  return v10;
}

- (id)_hasMusicSubscription
{
  v3 = [[AMSPromise alloc] initWithTimeout:2.0];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking Music subscription status", buf, 0x16u);
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
  v10 = [v8 sharedStatusController];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100072B10;
  v17 = &unk_100244078;
  v18 = self;
  v19 = v3;
  v11 = v3;
  [v10 getSubscriptionStatusWithCompletionHandler:&v14];
  v12 = [v11 binaryPromiseAdapter];

  return v12;
}

- (id)_hasTVSubscription
{
  v3 = [[AMSPromise alloc] initWithTimeout:2.0];
  v4 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking TV subscription status", buf, 0x16u);
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
  v18 = self;
  v19 = v3;
  v11 = v3;
  [v10 fetchSubscriptionData:1 completion:&v14];
  v12 = [v11 binaryPromiseAdapter];

  return v12;
}

@end
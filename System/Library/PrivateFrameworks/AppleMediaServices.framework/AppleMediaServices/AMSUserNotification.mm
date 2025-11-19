@interface AMSUserNotification
+ (AMSBagKeySet)bagKeySet;
+ (BOOL)_canParseNotificationWithIdentifier:(id)a3 userInfo:(id)a4;
+ (BOOL)shouldDeleteNotificationForPayload:(id)a3 outIdentifier:(id *)a4 scheduledOnly:(BOOL *)a5;
+ (BOOL)shouldHandleNotificationResponse:(id)a3;
+ (BOOL)shouldHandleServiceExtensionNotificationRequest:(id)a3;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_cachedImagePathForIdentifier:(id)a3 assetURL:(id)a4;
+ (id)_dateFromString:(id)a3;
+ (id)_downloadAssetAtUrl:(id)a3 withIdentifier:(id)a4 logKey:(id)a5 bag:(id)a6;
+ (id)_identifierFromPayload:(id)a3;
+ (id)createBagForSubProfile;
+ (id)handleNotificationResponse:(id)a3 bag:(id)a4;
+ (id)handleNotificationResponse:(id)a3 bagContract:(id)a4;
+ (id)notificationCenter:(id)a3 didChangeSettings:(id)a4 bag:(id)a5;
+ (id)notificationWithPayload:(id)a3 andConfig:(id)a4;
+ (void)handleServiceExtensionNotificationRequest:(id)a3 bag:(id)a4 withContentHandler:(id)a5;
+ (void)openAppUsingBundleIdentifier:(id)a3;
- (AMSUserNotification)init;
- (AMSUserNotification)initWithPayload:(id)a3 andConfig:(id)a4;
- (AMSUserNotification)initWithTitle:(id)a3 intent:(int64_t)a4;
- (AMSUserNotification)initWithUNNotification:(id)a3;
- (id)_generatePayloadWithBase:(id)a3;
- (id)createUNNotificationActions;
- (id)createUNNotificationContent;
- (id)createUNNotificationRequestFromContent:(id)a3;
- (id)determineSelectedActionFromResponse:(id)a3 error:(id *)a4;
- (id)handleSelectedButton:(id)a3 bag:(id)a4;
- (id)handleSelectedButton:(id)a3 bagContract:(id)a4;
- (void)addButtonAction:(id)a3;
@end

@implementation AMSUserNotification

- (AMSUserNotification)init
{
  v3.receiver = self;
  v3.super_class = AMSUserNotification;
  result = [(AMSUserNotification *)&v3 init];
  if (result)
  {
    result->_interruptionLevel = *MEMORY[0x1E6983418];
  }

  return result;
}

- (AMSUserNotification)initWithTitle:(id)a3 intent:(int64_t)a4
{
  v7 = a3;
  v8 = [(AMSUserNotification *)self init];
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    v12 = [v9 stringWithFormat:@"%@%@", @"ams_", v11];
    categoryIdentifier = v8->_categoryIdentifier;
    v8->_categoryIdentifier = v12;

    v14 = MEMORY[0x1E696AEC0];
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];
    v17 = [v14 stringWithFormat:@"%@%@", @"ams_", v16];
    identifier = v8->_identifier;
    v8->_identifier = v17;

    v8->_intent = a4;
    v19 = AMSGenerateLogCorrelationKey();
    logKey = v8->_logKey;
    v8->_logKey = v19;

    objc_storeStrong(&v8->_title, a3);
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v8->_userInfo;
    v8->_userInfo = v21;
  }

  return v8;
}

+ (id)notificationWithPayload:(id)a3 andConfig:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AMSUserNotification alloc] initWithPayload:v6 andConfig:v5];

  return v7;
}

- (AMSUserNotification)initWithPayload:(id)a3 andConfig:(id)a4
{
  v201 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AMSUserNotification *)self init];

  if (!v8)
  {
    goto LABEL_144;
  }

  v9 = [v6 aps];
  v10 = [v9 objectForKeyedSubscript:@"alert"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = 0x1E696A000uLL;
  v184 = v12;
  if (v12)
  {
    v14 = [v12 objectForKeyedSubscript:@"body"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v19 = v15;

    informativeText = v8->_informativeText;
    v8->_informativeText = v19;

    v21 = v184;
    v22 = [v184 objectForKeyedSubscript:@"level"];
    if (objc_opt_respondsToSelector())
    {
      v23 = [v184 objectForKeyedSubscript:@"level"];
      v8->_interruptionLevel = [v23 integerValue];

      v21 = v184;
    }

    else
    {
      v8->_interruptionLevel = 1;
    }

    v24 = [v21 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    subtitle = v8->_subtitle;
    v8->_subtitle = v26;

    v28 = [v184 objectForKeyedSubscript:@"title"];
  }

  else
  {
    v16 = [v6 aps];
    v17 = [v16 objectForKeyedSubscript:@"text"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v29 = v18;

    v30 = v8->_informativeText;
    v8->_informativeText = v29;

    v31 = [v6 aps];
    v32 = [v31 objectForKeyedSubscript:@"_lv"];
    if (objc_opt_respondsToSelector())
    {
      v33 = [v6 aps];
      v34 = [v33 objectForKeyedSubscript:@"_lv"];
      v8->_interruptionLevel = [v34 integerValue];
    }

    else
    {
      v8->_interruptionLevel = 1;
    }

    v35 = [v6 aps];
    v36 = [v35 objectForKeyedSubscript:@"_sb"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    v39 = v8->_subtitle;
    v8->_subtitle = v38;

    v40 = [v6 aps];
    v28 = [v40 objectForKeyedSubscript:@"title"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v28;
    v28 = v41;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  if (v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = &stru_1F071BA78;
  }

  objc_storeStrong(&v8->_title, v43);

  v44 = [v6 account];
  account = v8->_account;
  v8->_account = v44;

  v46 = [v6 clientIdentifier];
  centerBundleIdentifier = v8->_centerBundleIdentifier;
  v8->_centerBundleIdentifier = v46;

  v48 = [v6 aps];
  v49 = [v48 objectForKeyedSubscript:@"icon"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50;

  v183 = v51;
  if (v51 && [&unk_1F0779C70 containsObject:v51])
  {
    objc_storeStrong(&v8->_iconBundleIdentifier, v50);
  }

  v52 = [v6 objectForKeyedSubscript:@"_logKey"];
  v53 = v52;
  if (v52)
  {
    v54 = v52;
    logKey = v8->_logKey;
    v8->_logKey = v54;
  }

  else
  {
    logKey = [v6 logKey];
    objc_storeStrong(&v8->_logKey, logKey);
  }

  v56 = [v6 aps];
  v57 = [v56 objectForKeyedSubscript:@"thread"];
  threadIdentifier = v8->_threadIdentifier;
  v8->_threadIdentifier = v57;

  v59 = [v6 aps];
  v60 = [v59 objectForKeyedSubscript:@"_st"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  v62 = v61;

  if (v62)
  {
    v63 = [AMSUserNotification _dateFromString:v62];
    scheduledTime = v8->_scheduledTime;
    v8->_scheduledTime = v63;
  }

  v65 = [v6 aps];
  v66 = [v65 objectForKeyedSubscript:@"_sd"];

  v187 = v62;
  v181 = v66;
  if (objc_opt_respondsToSelector())
  {
    v67 = [v66 BOOLValue];
  }

  else
  {
    v67 = 0;
  }

  v8->_shouldSuppressDefaultAction = v67;
  v68 = [v6 aps];
  v69 = [v68 objectForKeyedSubscript:@"_ss"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = [MEMORY[0x1E695DFD8] setWithObject:v69];
LABEL_53:
    subsections = v8->_subsections;
    v8->_subsections = v70;

    goto LABEL_54;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = [MEMORY[0x1E695DFD8] setWithArray:v69];
    goto LABEL_53;
  }

LABEL_54:
  v180 = v69;
  v72 = [v6 aps];
  v73 = [v72 objectForKeyedSubscript:@"category"];
  categoryIdentifier = v8->_categoryIdentifier;
  v8->_categoryIdentifier = v73;

  if (!v8->_categoryIdentifier)
  {
    v75 = [v7 userNotificationExtensionId];
    v76 = v8->_categoryIdentifier;
    v8->_categoryIdentifier = v75;
  }

  v77 = [AMSUserNotification _identifierFromPayload:v6];
  identifier = v8->_identifier;
  v8->_identifier = v77;

  v79 = [v6 aps];
  v80 = [v79 objectForKeyedSubscript:@"_ex"];

  v179 = v80;
  if (objc_opt_respondsToSelector())
  {
    v81 = [v80 BOOLValue];
  }

  else
  {
    v81 = 0;
  }

  v182 = v7;
  v8->_explicitContent = v81;
  v82 = [v6 aps];
  v83 = [v82 objectForKeyedSubscript:@"_an"];
  v84 = v83;
  v85 = MEMORY[0x1E695E110];
  if (v83)
  {
    v85 = v83;
  }

  v86 = v85;

  v178 = v86;
  v8->_anonymizeMetrics = [v86 BOOLValue];
  v87 = [v6 aps];
  v88 = [v87 objectForKeyedSubscript:@"_au"];
  v89 = v88;
  v90 = &stru_1F071BA78;
  if (v88)
  {
    v90 = v88;
  }

  v91 = v90;

  v177 = v91;
  v92 = [MEMORY[0x1E695DFF8] URLWithString:v91];
  artworkUrl = v8->_artworkUrl;
  v8->_artworkUrl = v92;

  v94 = [v6 aps];
  v95 = [v94 objectForKeyedSubscript:@"_vu"];

  v176 = v95;
  v96 = [MEMORY[0x1E695DFF8] URLWithString:v95];
  videoUrl = v8->_videoUrl;
  v188 = v8;
  v8->_videoUrl = v96;

  v185 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [MEMORY[0x1E695DF70] array];
  v190 = v189 = v6;
  v98 = [v6 aps];
  v99 = [v98 objectForKeyedSubscript:@"_ba"];

  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  obj = v99;
  v193 = [obj countByEnumeratingWithState:&v196 objects:v200 count:16];
  if (v193)
  {
    v191 = *v197;
    v192 = 0;
    while (1)
    {
      for (i = 0; i != v193; ++i)
      {
        if (*v197 != v191)
        {
          objc_enumerationMutation(obj);
        }

        v101 = *(*(&v196 + 1) + 8 * i);
        v102 = [v101 objectForKeyedSubscript:@"_tl"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v103 = v102;
        }

        else
        {
          v103 = 0;
        }

        v104 = v103;

        v105 = &stru_1F071BA78;
        if (v104)
        {
          v105 = v104;
        }

        v106 = v105;

        v195 = v106;
        v107 = [[AMSUserNotificationAction alloc] initWithTitle:v106];
        v108 = [v101 objectForKeyedSubscript:@"_id"];
        [(AMSUserNotificationAction *)v107 setIdentifier:v108];

        v109 = [(AMSUserNotificationAction *)v107 identifier];

        if (!v109)
        {
          v110 = *(v13 + 3776);
          v111 = [MEMORY[0x1E696AFB0] UUID];
          v112 = [v111 UUIDString];
          v113 = [v110 stringWithFormat:@"%@%@", @"ams_", v112];
          [(AMSUserNotificationAction *)v107 setIdentifier:v113];
        }

        v114 = [v101 objectForKeyedSubscript:@"_mt"];
        if (v114)
        {
          [v190 addObject:v114];
          v115 = [v189 clientIdentifier];
          v116 = [AMSUserNotificationMetricsEvent eventFromMetricsDictionary:v114 centerBundleId:v115];

          [v116 setAnonymous:{-[AMSUserNotification anonymizeMetrics](v188, "anonymizeMetrics")}];
          [v116 setDisplayScheduledTime:v187];
          [v116 setPostedSuccessfully:1];
          [(AMSUserNotificationAction *)v107 setMetricsEvent:v116];
        }

        v117 = [v101 objectForKeyedSubscript:@"_ru"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v118 = v117;
        }

        else
        {
          v118 = 0;
        }

        v119 = v118;

        v194 = v114;
        if (v119)
        {
          v120 = [MEMORY[0x1E695DFF8] URLWithString:v119];

          if (v120)
          {
            v121 = [v101 objectForKeyedSubscript:@"_rm"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v122 = v121;
            }

            else
            {
              v122 = 0;
            }

            v123 = v122;

            v124 = @"GET";
            if (v123)
            {
              v124 = v123;
            }

            v125 = v124;

            v126 = [v101 objectForKeyedSubscript:@"_rh"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v127 = v126;
            }

            else
            {
              v127 = 0;
            }

            v128 = v127;

            v129 = MEMORY[0x1E695E0F8];
            if (v128)
            {
              v129 = v128;
            }

            v130 = v129;

            v131 = [v101 objectForKeyedSubscript:@"_rb"];
            v132 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v120];
            [v132 setHTTPMethod:v125];
            [v132 setAllHTTPHeaderFields:v130];
            if (v131)
            {
              v133 = [v131 dataUsingEncoding:4];
              [v132 setHTTPBody:v133];
            }

            [(AMSUserNotificationAction *)v107 setRequest:v132];
          }
        }

        else
        {
          v120 = 0;
        }

        v134 = [v101 objectForKeyedSubscript:@"_url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v135 = v134;
        }

        else
        {
          v135 = 0;
        }

        v136 = v135;

        if (v136)
        {
          v137 = [MEMORY[0x1E695DFF8] URLWithString:v136];
          [(AMSUserNotificationAction *)v107 setDefaultURL:v137];
        }

        v138 = [v101 objectForKeyedSubscript:@"_tp"];
        v139 = (objc_opt_respondsToSelector() & 1) != 0 && [v138 integerValue] == 1;
        v140 = [v101 objectForKeyedSubscript:@"_gl"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v141 = v140;
        }

        else
        {
          v141 = 0;
        }

        v142 = v141;

        [(AMSUserNotificationAction *)v107 setSystemImageName:v142];
        v143 = [v101 objectForKeyedSubscript:@"_ci"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v144 = v143;
        }

        else
        {
          v144 = 0;
        }

        v145 = v144;

        [(AMSUserNotificationAction *)v107 setClientIdentifier:v145];
        v146 = [v101 objectForKeyedSubscript:@"_mru"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v147 = v146;
        }

        else
        {
          v147 = 0;
        }

        v148 = v147;

        if (v148)
        {
          v149 = [MEMORY[0x1E695DFF8] URLWithString:v148];
          [(AMSUserNotificationAction *)v107 setMediaApiRequestURL:v149];

          if (v139)
          {
            goto LABEL_115;
          }
        }

        else
        {
          [(AMSUserNotificationAction *)v107 setMediaApiRequestURL:0];
          if (v139)
          {
LABEL_115:
            v150 = v107;

            v192 = v150;
            goto LABEL_118;
          }
        }

        [v185 addObject:v107];
LABEL_118:

        v13 = 0x1E696A000;
      }

      v193 = [obj countByEnumeratingWithState:&v196 objects:v200 count:16];
      if (!v193)
      {
        goto LABEL_122;
      }
    }
  }

  v192 = 0;
LABEL_122:

  v6 = v189;
  v151 = [v189 aps];
  v152 = [v151 objectForKeyedSubscript:@"_mt"];
  v8 = v188;
  p_metricsEvent = &v188->_metricsEvent;
  metricsEvent = v188->_metricsEvent;
  v188->_metricsEvent = v152;

  if ([v190 count] && *p_metricsEvent)
  {
    v155 = [*p_metricsEvent mutableCopy];
    [v155 setObject:v190 forKeyedSubscript:@"options"];
    objc_storeStrong(p_metricsEvent, v155);
  }

  v156 = [v189 aps];
  v157 = [v156 objectForKeyedSubscript:@"tapUrl"];

  objc_opt_class();
  v7 = v182;
  if (objc_opt_isKindOfClass())
  {
    v158 = v157;
  }

  else
  {
    v158 = 0;
  }

  v159 = v158;

  v160 = v192;
  if (!v192 && v159)
  {
    v161 = [MEMORY[0x1E695DFF8] URLWithString:v159];
    if (v161)
    {
      v162 = objc_alloc_init(AMSUserNotificationAction);
      [(AMSUserNotificationAction *)v162 setDefaultURL:v161];
    }

    else
    {
      v162 = 0;
    }

    v160 = v162;
  }

  v163 = v185;
  if (v160)
  {
    goto LABEL_135;
  }

  v165 = [v189 URLString];

  if (!v165 || (v166 = MEMORY[0x1E695DFF8], [v189 URLString], v167 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v166, "URLWithString:", v167), v168 = objc_claimAutoreleasedReturnValue(), v167, !v168))
  {
    v164 = 0;
    v163 = v185;
    goto LABEL_141;
  }

  v169 = objc_alloc_init(AMSUserNotificationAction);
  [(AMSUserNotificationAction *)v169 setDefaultURL:v168];

  v160 = v169;
  v163 = v185;
  if (v169)
  {
LABEL_135:
    v164 = v160;
    objc_storeStrong(&v188->_defaultAction, v160);
  }

  else
  {
    v164 = 0;
  }

LABEL_141:
  if ([v163 count])
  {
    objc_storeStrong(&v188->_buttonActions, v163);
  }

  [v189 payload];
  v171 = v170 = v163;
  v172 = [v171 mutableCopy];
  userInfo = v188->_userInfo;
  v188->_userInfo = v172;

LABEL_144:
  v174 = v8;

  return v174;
}

- (AMSUserNotification)initWithUNNotification:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 userInfo];

  v8 = [[AMSPushPayload alloc] initWithPayload:v7];
  v9 = [(AMSUserNotification *)self initWithPayload:v8 andConfig:0];
  if (!v9)
  {
LABEL_6:
    v18 = v9;
    goto LABEL_12;
  }

  if ([AMSUserNotification _canParseNotificationWithIdentifier:v9->_identifier userInfo:v7])
  {
    v10 = [v4 request];
    v11 = [v10 content];

    v12 = [v11 attachments];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [v11 attachments];
      v15 = [v14 objectAtIndexedSubscript:0];
      v16 = [v15 URL];
      artworkUrl = v9->_artworkUrl;
      v9->_artworkUrl = v16;
    }

    goto LABEL_6;
  }

  v19 = +[AMSLogConfig sharedUserNotificationConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    logKey = v9->_logKey;
    identifier = v9->_identifier;
    v26 = 138543874;
    v27 = v21;
    v28 = 2114;
    v29 = logKey;
    v30 = 2114;
    v31 = identifier;
    v24 = v21;
    _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Not allowed to operate on a NSUserNotification that did not originate from AMS. Identifier: %{public}@", &v26, 0x20u);
  }

  v18 = 0;
LABEL_12:

  return v18;
}

- (id)createUNNotificationActions
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(AMSUserNotification *)self buttonActions];
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 systemImageName];

        if (v9)
        {
          v10 = MEMORY[0x1E6983260];
          v11 = [v8 systemImageName];
          v9 = [v10 iconWithSystemImageName:v11];
        }

        v12 = MEMORY[0x1E6983250];
        v13 = [v8 identifier];
        v14 = [v8 title];
        v15 = [v12 actionWithIdentifier:v13 title:v14 options:objc_msgSend(v8 icon:{"un_ActionOptions"), v9}];

        [v3 addObject:v15];
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = [v3 copy];

  return v16;
}

- (id)createUNNotificationContent
{
  v3 = objc_alloc_init(MEMORY[0x1E6983220]);
  v4 = [(AMSUserNotification *)self informativeText];
  [v3 setBody:v4];

  v5 = [(AMSUserNotification *)self categoryIdentifier];
  [v3 setCategoryIdentifier:v5];

  v6 = [(AMSUserNotification *)self threadIdentifier];
  [v3 setThreadIdentifier:v6];

  v7 = [(AMSUserNotification *)self title];
  [v3 setTitle:v7];

  v8 = [(AMSUserNotification *)self subtitle];
  [v3 setSubtitle:v8];

  v9 = [(AMSUserNotification *)self userInfo];
  v10 = [(AMSUserNotification *)self _generatePayloadWithBase:v9];
  [v3 setUserInfo:v10];

  [v3 setInterruptionLevel:{-[AMSUserNotification interruptionLevel](self, "interruptionLevel")}];
  [v3 setShouldSuppressDefaultAction:{-[AMSUserNotification shouldSuppressDefaultAction](self, "shouldSuppressDefaultAction")}];
  v11 = [(AMSUserNotification *)self defaultAction];

  if (v11)
  {
    [v3 setShouldBackgroundDefaultAction:1];
    [v3 setShouldAuthenticateDefaultAction:1];
  }

  v12 = [(AMSUserNotification *)self subsections];

  if (v12)
  {
    v13 = [(AMSUserNotification *)self subsections];
    [v3 setTopicIdentifiers:v13];
  }

  v14 = [(AMSUserNotification *)self iconBundleIdentifier];

  if (v14)
  {
    v15 = MEMORY[0x1E6983290];
    v16 = [(AMSUserNotification *)self iconBundleIdentifier];
    v17 = [v15 iconForApplicationIdentifier:v16];
    [v3 setIcon:v17];
  }

  return v3;
}

- (id)createUNNotificationRequestFromContent:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSUserNotification *)self scheduledTime];

  if (v5)
  {
    v6 = [(AMSUserNotification *)self scheduledTime];
    [v6 timeIntervalSinceNow];
    v8 = v7;

    v9 = +[AMSLogConfig sharedUserNotificationConfig];
    v10 = v9;
    if (v8 >= 0.0)
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v10 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = AMSLogKey();
        v19 = [(AMSUserNotification *)self scheduledTime];
        v26 = 138543874;
        v27 = v17;
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        v31 = v19;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Scheduling notification for time: %{public}@", &v26, 0x20u);
      }

      v20 = [MEMORY[0x1E695DEE8] currentCalendar];
      v21 = [(AMSUserNotification *)self scheduledTime];
      v10 = [v20 components:252 fromDate:v21];

      v15 = [MEMORY[0x1E69831E8] triggerWithDateMatchingComponents:v10 repeats:0];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = AMSLogKey();
        v14 = [(AMSUserNotification *)self scheduledTime];
        v26 = 138543874;
        v27 = v12;
        v28 = 2114;
        v29 = v13;
        v30 = 2114;
        v31 = v14;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Notification scheduled time %{public}@ has passed, ignoring schedule.", &v26, 0x20u);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v22 = MEMORY[0x1E6983298];
  v23 = [(AMSUserNotification *)self identifier];
  v24 = [v22 requestWithIdentifier:v23 content:v4 trigger:v15];

  return v24;
}

- (void)addButtonAction:(id)a3
{
  v4 = a3;
  v5 = [(AMSUserNotification *)self buttonActions];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v9 = v8;

  [v9 addObject:v4];
  [(AMSUserNotification *)self setButtonActions:v9];
}

- (id)determineSelectedActionFromResponse:(id)a3 error:(id *)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AMSUserNotification *)self logKey];
  v8 = AMSSetLogKey(v7);

  v9 = [v6 actionIdentifier];
  v10 = [v9 isEqualToString:*MEMORY[0x1E69833E0]];

  if (v10)
  {
    v11 = [(AMSUserNotification *)self defaultAction];
    v12 = +[AMSLogConfig sharedUserNotificationConfig];
    v13 = v12;
    if (v11)
    {
      if (!v12)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(AMSUserNotification *)self logKey];
        *buf = 138543618;
        v44 = self;
        v45 = 2114;
        v46 = v15;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Default action selected", buf, 0x16u);
      }

      v16 = 0;
      goto LABEL_39;
    }

    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v30 = [v13 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(AMSUserNotification *)self logKey];
      *buf = 138543618;
      v44 = self;
      v45 = 2114;
      v46 = v31;
      _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Default action selected, but action not defined", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v17 = [v6 actionIdentifier];
    v18 = [v17 isEqualToString:*MEMORY[0x1E69833F8]];

    if (v18)
    {
      v19 = +[AMSLogConfig sharedUserNotificationConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(AMSUserNotification *)self logKey];
        *buf = 138543618;
        v44 = self;
        v45 = 2114;
        v46 = v21;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] User dismissed alert", buf, 0x16u);
      }

      v16 = AMSError(6, @"User Notification Cancelled", @"Cancel action selected", 0);
      v11 = 0;
      goto LABEL_37;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v22 = [(AMSUserNotification *)self buttonActions];
    v11 = [v22 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v11)
    {
      v36 = self;
      v37 = a4;
      v23 = 0;
      v24 = *v40;
      while (2)
      {
        v25 = 0;
        v38 = v23 + v11;
        do
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v39 + 1) + 8 * v25);
          v27 = [v26 identifier];
          v28 = [v6 actionIdentifier];
          v29 = [v27 isEqualToString:v28];

          if (v29)
          {
            v11 = v26;
            goto LABEL_29;
          }

          ++v23;
          ++v25;
        }

        while (v11 != v25);
        v11 = [v22 countByEnumeratingWithState:&v39 objects:v49 count:16];
        v23 = v38;
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_29:
      self = v36;
      a4 = v37;
    }

    else
    {
      v23 = 0;
    }

    v32 = +[AMSLogConfig sharedUserNotificationConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v32 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(AMSUserNotification *)self logKey];
      *buf = 138543874;
      v44 = self;
      v45 = 2114;
      v46 = v34;
      v47 = 1024;
      v48 = v23;
      _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] User selected button index: %d", buf, 0x1Cu);
    }
  }

  v16 = 0;
LABEL_37:
  if (!(v11 | v16))
  {
    v16 = AMSError(7, @"User Notification Failure", @"Action not found", 0);
    v11 = 0;
  }

LABEL_39:
  if (a4)
  {
    v16 = v16;
    *a4 = v16;
  }

  return v11;
}

+ (id)handleNotificationResponse:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(AMSMutableBinaryPromise);
  v9 = dispatch_get_global_queue(0, 0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__AMSUserNotification_handleNotificationResponse_bag___block_invoke;
  v16[3] = &unk_1E73B92F0;
  v20 = a1;
  v17 = v6;
  v10 = v8;
  v18 = v10;
  v19 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, v16);

  v13 = v19;
  v14 = v10;

  return v10;
}

void __54__AMSUserNotification_handleNotificationResponse_bag___block_invoke(uint64_t a1)
{
  if ([*(a1 + 56) shouldHandleNotificationResponse:*(a1 + 32)])
  {
    v2 = [AMSUserNotification alloc];
    v3 = [*(a1 + 32) notification];
    v4 = [(AMSUserNotification *)v2 initWithUNNotification:v3];

    v5 = *(a1 + 32);
    v13 = 0;
    v6 = [(AMSUserNotification *)v4 determineSelectedActionFromResponse:v5 error:&v13];
    v7 = v13;
    if ([v7 code] != 6)
    {
      v8 = [v6 request];
      if (v8)
      {
      }

      else
      {
        v9 = [v6 defaultURL];

        if (!v9)
        {
          [*(a1 + 56) openAppUsingBundleIdentifier:v4];
        }
      }
    }

    if (v6)
    {
      v10 = [(AMSUserNotification *)v4 handleSelectedButton:v6 bag:*(a1 + 48)];
      v11 = [*(a1 + 40) completionHandlerAdapter];
      [v10 addFinishBlock:v11];
    }

    else
    {
      [*(a1 + 40) finishWithSuccess];
    }
  }

  else
  {
    v12 = AMSError(2, @"User Notification Failure", @"Unable to parse the notification response", 0);
    [*(a1 + 40) finishWithError:v12];
  }
}

- (id)handleSelectedButton:(id)a3 bag:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(AMSMutableBinaryPromise);
  if (!v7)
  {
    v9 = +[AMSLogConfig sharedUserNotificationConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [(AMSUserNotification *)self logKey];
      *buf = 138543618;
      v26 = v11;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Handling button tap without a bag.", buf, 0x16u);
    }
  }

  v14 = dispatch_get_global_queue(2, 0);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __48__AMSUserNotification_handleSelectedButton_bag___block_invoke;
  v21[3] = &unk_1E73B72B8;
  v21[4] = self;
  v22 = v6;
  v23 = v7;
  v15 = v8;
  v24 = v15;
  v16 = v7;
  v17 = v6;
  dispatch_async(v14, v21);

  v18 = v24;
  v19 = v15;

  return v15;
}

void __48__AMSUserNotification_handleSelectedButton_bag___block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) intent];
  if (v2 == 1)
  {
    v3 = off_1E73B1058;
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_6;
    }

    v3 = off_1E73B1060;
  }

  [(__objc2_class *)*v3 userNotification:*(a1 + 32) selectedButtonAction:*(a1 + 40) bag:*(a1 + 48)];
LABEL_6:
  v4 = +[AMSLogConfig sharedUserNotificationConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 logKey];
    *buf = 138543618;
    v89 = v6;
    v90 = 2114;
    v91 = v9;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling RichNotification response.", buf, 0x16u);
  }

  v10 = [*(a1 + 40) request];

  if (v10)
  {
    v11 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = [v14 logKey];
      *buf = 138543618;
      v89 = v13;
      v90 = 2114;
      v91 = v16;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing request", buf, 0x16u);
    }

    v17 = [[AMSURLRequestEncoder alloc] initWithBag:*(a1 + 48)];
    v18 = [*(a1 + 32) account];
    [(AMSURLRequestEncoder *)v17 setAccount:v18];

    v19 = [*(a1 + 32) logKey];
    [(AMSURLRequestEncoder *)v17 setLogUUID:v19];

    v20 = [*(a1 + 40) request];
    v21 = [(AMSURLRequestEncoder *)v17 requestByEncodingRequest:v20 parameters:0];
    v87 = 0;
    v22 = [v21 resultWithError:&v87];
    v23 = v87;

    if (v23)
    {
      v24 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = *(a1 + 32);
        v28 = v23;
        v29 = v26;
        v30 = [v27 logKey];
        *buf = 138543874;
        v89 = v26;
        v90 = 2114;
        v91 = v30;
        v92 = 2114;
        v93 = v28;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error creating request: %{public}@", buf, 0x20u);

        v23 = v28;
      }

      v31 = 0;
    }

    else
    {
      v24 = +[AMSURLSession defaultSession];
      v31 = [v24 dataTaskPromiseWithRequest:v22];
    }
  }

  else
  {
    v23 = 0;
    v31 = 0;
  }

  v32 = [*(a1 + 40) mediaApiRequestURL];

  if (v32)
  {
    v33 = [*(a1 + 40) clientIdentifier];

    v34 = +[AMSLogConfig sharedPushNotificationConfig];
    v35 = v34;
    if (v33)
    {
      if (!v34)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v36 = [(AMSMediaTokenService *)v35 OSLogObject];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = *(a1 + 32);
        v39 = v37;
        v40 = [v38 logKey];
        *buf = 138543618;
        v89 = v37;
        v90 = 2114;
        v91 = v40;
        _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing Media API request", buf, 0x16u);
      }

      v41 = [AMSMediaTokenService alloc];
      v42 = [*(a1 + 40) clientIdentifier];
      v35 = [(AMSMediaTokenService *)v41 initWithClientIdentifier:v42 bag:*(a1 + 48)];

      v43 = [[AMSMediaRequestEncoder alloc] initWithTokenService:v35 bag:*(a1 + 48)];
      v44 = objc_alloc_init(AMSMediaResponseDecoder);
      [(AMSMediaRequestEncoder *)v43 setResponseDecoder:v44];

      v45 = [*(a1 + 32) account];
      [(AMSMediaRequestEncoder *)v43 setAccount:v45];

      v46 = [*(a1 + 32) logKey];
      [(AMSMediaRequestEncoder *)v43 setLogKey:v46];

      v47 = +[AMSURLSession defaultSession];
      v48 = [v47 configuration];

      v49 = [[AMSURLSession alloc] initWithConfiguration:v48 delegate:0 delegateQueue:0];
      v50 = [[AMSMediaProtocolHandler alloc] initWithTokenService:v35];
      [(AMSURLSession *)v49 setProtocolHandler:v50];

      v51 = [*(a1 + 40) mediaApiRequestURL];
      v52 = [(AMSMediaRequestEncoder *)v43 requestWithURL:v51];

      v32 = [(AMSURLSession *)v49 dataTaskPromiseWithRequestPromise:v52];
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __48__AMSUserNotification_handleSelectedButton_bag___block_invoke_187;
      v86[3] = &unk_1E73B5BD8;
      v86[4] = *(a1 + 32);
      [v32 addFinishBlock:v86];

      v23 = v80;
    }

    else
    {
      if (!v34)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v43 = [(AMSMediaTokenService *)v35 OSLogObject];
      if (os_log_type_enabled(&v43->super, OS_LOG_TYPE_ERROR))
      {
        v53 = objc_opt_class();
        v54 = *(a1 + 32);
        v55 = v53;
        v56 = [v54 logKey];
        *buf = 138543618;
        v89 = v53;
        v90 = 2114;
        v91 = v56;
        _os_log_impl(&dword_192869000, &v43->super, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Payload set mediaApiRequestURL but clientIdentifier is not set", buf, 0x16u);
      }

      v32 = 0;
    }
  }

  v57 = [*(a1 + 40) defaultURL];

  if (v57)
  {
    v58 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v58)
    {
      v58 = +[AMSLogConfig sharedConfig];
    }

    v59 = [v58 OSLogObject];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      v61 = v32;
      v62 = v31;
      v63 = v23;
      v64 = *(a1 + 32);
      v81 = v60;
      v65 = [v64 logKey];
      v66 = [*(a1 + 40) defaultURL];
      v67 = AMSLogableURL(v66);
      *buf = 138543874;
      v89 = v60;
      v90 = 2114;
      v91 = v65;
      v92 = 2112;
      v93 = v67;
      _os_log_impl(&dword_192869000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening url: %@", buf, 0x20u);

      v23 = v63;
      v31 = v62;
      v32 = v61;
    }

    v68 = [*(a1 + 40) defaultURL];
    [AMSOpenURL openStandardURL:v68];
  }

  v69 = [*(a1 + 40) metricsEvent];

  if (v69)
  {
    v70 = [*(a1 + 32) metricsEvent];
    v71 = [v70 mutableCopy];
    v72 = v71;
    if (v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = [MEMORY[0x1E695DF90] dictionary];
    }

    v74 = v73;

    v75 = [*(a1 + 40) metricsEvent];
    v76 = [v75 underlyingDictionary];
    [v74 addEntriesFromDictionary:v76];

    v77 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v74];
    -[AMSMetricsEvent setAnonymous:](v77, "setAnonymous:", [*(a1 + 32) anonymizeMetrics]);
    v78 = [AMSMetrics internalInstanceUsingBag:*(a1 + 48)];
    [v78 enqueueEvent:v77];
  }

  if (v31)
  {
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __48__AMSUserNotification_handleSelectedButton_bag___block_invoke_192;
    v84[3] = &unk_1E73BA3F8;
    v84[4] = *(a1 + 32);
    v85 = *(a1 + 56);
    [v31 addFinishBlock:v84];
    v79 = v85;
  }

  else
  {
    if (v23)
    {
      [*(a1 + 56) finishWithError:v23];
      goto LABEL_53;
    }

    if (!v32)
    {
      [*(a1 + 56) finishWithSuccess];
      goto LABEL_53;
    }

    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __48__AMSUserNotification_handleSelectedButton_bag___block_invoke_194;
    v82[3] = &unk_1E73B5BD8;
    v83 = *(a1 + 56);
    [v32 addFinishBlock:v82];
    v79 = v83;
  }

LABEL_53:
}

void __48__AMSUserNotification_handleSelectedButton_bag___block_invoke_187(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedPushNotificationConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 logKey];
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v4;
      v12 = "%{public}@: [%{public}@] Finished Media API request with error %{public}@";
      v13 = v7;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
LABEL_10:
      _os_log_impl(&dword_192869000, v13, v14, v12, &v18, v15);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 32);
      v10 = v16;
      v11 = [v17 logKey];
      v18 = 138543618;
      v19 = v16;
      v20 = 2114;
      v21 = v11;
      v12 = "%{public}@: [%{public}@] Finished Media API request successfully";
      v13 = v7;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 22;
      goto LABEL_10;
    }
  }
}

void __48__AMSUserNotification_handleSelectedButton_bag___block_invoke_192(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 logKey];
      v11 = 138543874;
      v12 = v7;
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error performing request: %{public}@", &v11, 0x20u);
    }
  }

  [*(a1 + 40) finishWithSuccess:v4 == 0 error:v4];
}

+ (void)handleServiceExtensionNotificationRequest:(id)a3 bag:(id)a4 withContentHandler:(id)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [AMSPushPayload alloc];
  v11 = [v7 content];
  v12 = [v11 userInfo];
  v13 = [(AMSPushPayload *)v10 initWithPayload:v12];

  v73 = v13;
  v14 = [[AMSUserNotification alloc] initWithPayload:v13 andConfig:0];
  v15 = [(AMSUserNotification *)v14 logKey];
  v16 = AMSSetLogKey(v15);

  v17 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  v18 = [v17 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = v19;
    v21 = [(AMSUserNotification *)v14 logKey];
    *buf = 138543874;
    v78 = v19;
    v79 = 2114;
    v80 = v21;
    v81 = 2114;
    v82 = v14;
    _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling service extension for note: %{public}@", buf, 0x20u);
  }

  v22 = [(AMSUserNotification *)v14 logKey];
  if (!v22)
  {
    v23 = AMSGenerateLogCorrelationKey();
    [(AMSUserNotification *)v14 setLogKey:v23];
  }

  v24 = [(AMSUserNotification *)v14 centerBundleIdentifier];
  v25 = [AMSRestrictions explicitContentSettingForBundleID:v24];

  if ([(AMSUserNotification *)v14 explicitContent]&& !v25)
  {
    v26 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [(AMSUserNotification *)v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v78 = a1;
      v79 = 2114;
      v80 = v22;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Explicit content disallowed", buf, 0x16u);
    }

LABEL_21:

    v33 = [(AMSUserNotification *)v14 centerBundleIdentifier];

    v34 = +[AMSLogConfig sharedPushNotificationConfig];
    v35 = v34;
    if (v33)
    {
      if (!v34)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v36 = [v35 OSLogObject];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = v37;
        v39 = [(AMSUserNotification *)v14 logKey];
        *buf = 138543618;
        v78 = v37;
        v79 = 2114;
        v80 = v39;
        _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing notification", buf, 0x16u);
      }

      v35 = [(AMSUserNotification *)v14 centerBundleIdentifier];
      v40 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:v35];
      v41 = [v7 identifier];
      v76 = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      [v40 removePendingNotificationRequestsWithIdentifiers:v42];
    }

    else
    {
      if (!v34)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v40 = [v35 OSLogObject];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v78 = a1;
        v79 = 2114;
        v80 = v22;
        _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to remove notification for nil bundle identifier", buf, 0x16u);
      }
    }

    goto LABEL_51;
  }

  v28 = [(AMSUserNotification *)v14 account];
  v26 = v28;
  if (v28)
  {
    if (([(AMSUserNotification *)v28 isActive]& 1) == 0)
    {
      v29 = [(AMSUserNotification *)v14 centerBundleIdentifier];

      if (v29)
      {
        v27 = +[AMSLogConfig sharedPushNotificationConfig];
        if (!v27)
        {
          v27 = +[AMSLogConfig sharedConfig];
        }

        v30 = [v27 OSLogObject];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          *buf = 138543874;
          v78 = v31;
          v79 = 2114;
          v80 = v22;
          v81 = 2114;
          v82 = v26;
          v32 = v31;
          _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Ignoring notification for inactive account: %{public}@", buf, 0x20u);
        }

        goto LABEL_21;
      }
    }
  }

  v43 = [(AMSUserNotification *)v14 metricsEvent];

  if (v43)
  {
    v44 = [AMSUserNotificationMetricsEvent eventForPostedNotification:v14];
    [v44 setPostedSuccessfully:1];
    [v44 setAnonymous:{-[AMSUserNotification anonymizeMetrics](v14, "anonymizeMetrics")}];
    v45 = [(AMSUserNotification *)v14 scheduledTime];

    if (v45)
    {
      v46 = [MEMORY[0x1E696AB78] ams_serverFriendlyFormatter];
      v47 = [(AMSUserNotification *)v14 scheduledTime];
      v48 = [v46 stringFromDate:v47];
      [v44 setDisplayScheduledTime:v48];
    }

    v49 = [AMSMetrics internalInstanceUsingBag:v8];
    [v49 enqueueEvent:v44];
  }

  v50 = [(AMSUserNotification *)v14 createUNNotificationContent];
  v35 = [v50 mutableCopy];

  v51 = [(AMSUserNotification *)v14 artworkUrl];
  v52 = [v51 absoluteString];
  v53 = [v52 length];

  if (v53)
  {
    v71 = v9;
    v54 = [MEMORY[0x1E696AFB0] UUID];
    v55 = [v54 UUIDString];

    v56 = [(AMSUserNotification *)v14 artworkUrl];
    v72 = v8;
    v57 = [a1 _downloadAssetAtUrl:v56 withIdentifier:v55 logKey:v22 bag:v8];

    if (v57)
    {
      v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v75 = 0;
      v59 = [MEMORY[0x1E6983268] attachmentWithIdentifier:v55 URL:v57 options:0 error:&v75];
      v60 = v75;
      if (v60)
      {
        v69 = v59;
        v70 = v58;
        v61 = +[AMSLogConfig sharedUserNotificationConfig];
        if (!v61)
        {
          v61 = +[AMSLogConfig sharedConfig];
        }

        v62 = [v61 OSLogObject];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = objc_opt_class();
          *buf = 138543874;
          v78 = v63;
          v79 = 2114;
          v80 = v22;
          v81 = 2114;
          v82 = v60;
          v64 = v63;
          _os_log_impl(&dword_192869000, v62, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error generating attachment: %{public}@", buf, 0x20u);
        }

        v59 = v69;
        v58 = v70;
      }

      else if (v59)
      {
        [v58 addObject:v59];
        [v35 setAttachments:v58];
      }
    }

    v9 = v71;
    v8 = v72;
  }

  v65 = [v7 content];
  v66 = [v65 icon];

  if (v66)
  {
    v67 = [v7 content];
    v68 = [v67 icon];
    [v35 setIcon:v68];
  }

  v9[2](v9, v35);
LABEL_51:
}

+ (void)openAppUsingBundleIdentifier:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69636B8]);
  v6 = *MEMORY[0x1E699F990];
  v14[0] = *MEMORY[0x1E699F970];
  v14[1] = v6;
  v15[0] = MEMORY[0x1E695E118];
  v15[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v5 setFrontBoardOptions:v7];

  v8 = [MEMORY[0x1E6963608] defaultWorkspace];
  v9 = [v4 centerBundleIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__AMSUserNotification_openAppUsingBundleIdentifier___block_invoke;
  v11[3] = &unk_1E73BDE18;
  v12 = v4;
  v13 = a1;
  v10 = v4;
  [v8 openApplicationWithBundleIdentifier:v9 configuration:v5 completionHandler:v11];
}

void __52__AMSUserNotification_openAppUsingBundleIdentifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedUserNotificationConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) logKey];
      v11 = [*(a1 + 32) centerBundleIdentifier];
      v17 = 138543874;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v12 = "%{public}@: [%{public}@] No default action - Opened via %@ instead";
      v13 = v8;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 32;
LABEL_10:
      _os_log_impl(&dword_192869000, v13, v14, v12, &v17, v15);
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      v10 = [*(a1 + 32) logKey];
      v11 = [*(a1 + 32) centerBundleIdentifier];
      v17 = 138544130;
      v18 = v16;
      v19 = 2114;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      v12 = "%{public}@: [%{public}@] No default action - Failed to open via %@ - %@";
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 42;
      goto LABEL_10;
    }
  }
}

+ (id)notificationCenter:(id)a3 didChangeSettings:(id)a4 bag:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = objc_alloc_init(AMSMutableBinaryPromise);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__AMSUserNotification_notificationCenter_didChangeSettings_bag___block_invoke;
  v15[3] = &unk_1E73BDE68;
  v16 = v6;
  v17 = v7;
  v9 = v8;
  v18 = v9;
  v10 = v7;
  v11 = v6;
  [v11 getNotificationSettingsWithCompletionHandler:v15];
  v12 = v18;
  v13 = v9;

  return v9;
}

void __64__AMSUserNotification_notificationCenter_didChangeSettings_bag___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [a1[4] bundleIdentifier];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v6 = [v5 ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__AMSUserNotification_notificationCenter_didChangeSettings_bag___block_invoke_2;
  v12[3] = &unk_1E73BDE40;
  v13 = v3;
  v14 = v4;
  v15 = a1[5];
  v7 = v4;
  v8 = v3;
  v9 = [v6 continueWithBlock:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AMSUserNotification_notificationCenter_didChangeSettings_bag___block_invoke_3;
  v10[3] = &unk_1E73B3A88;
  v11 = a1[6];
  [v9 addFinishBlock:v10];
}

id __64__AMSUserNotification_notificationCenter_didChangeSettings_bag___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = [AMSUserNotificationMetricsEvent eventForSettingsChangedWithSettings:a1[4] bundleID:a1[5] account:a2];
  v4 = [AMSMetrics internalInstanceUsingBag:a1[6]];
  [v4 enqueueEvent:v3];
  v5 = [v4 flush];

  return v5;
}

+ (BOOL)shouldDeleteNotificationForPayload:(id)a3 outIdentifier:(id *)a4 scheduledOnly:(BOOL *)a5
{
  v8 = a3;
  v9 = [v8 aps];
  v10 = [v9 objectForKeyedSubscript:@"_delAll"];

  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 aps];
  v13 = [v12 objectForKeyedSubscript:@"_del"];

  if (objc_opt_respondsToSelector())
  {
    v14 = [v13 BOOLValue];
    if (((v14 | v11) & 1) == 0)
    {
      v15 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v15 = 0;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a4)
  {
    *a4 = [a1 _identifierFromPayload:v8];
  }

  v15 = 1;
LABEL_13:

  return v15;
}

+ (BOOL)shouldHandleNotificationResponse:(id)a3
{
  v4 = [a3 notification];
  v5 = [v4 request];

  v6 = [v5 identifier];
  v7 = [v5 content];
  v8 = [v7 userInfo];
  LOBYTE(a1) = [a1 _canParseNotificationWithIdentifier:v6 userInfo:v8];

  return a1;
}

+ (BOOL)shouldHandleServiceExtensionNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 content];

  v7 = [v6 userInfo];
  LOBYTE(a1) = [a1 _canParseNotificationWithIdentifier:v5 userInfo:v7];

  return a1;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_162 != -1)
  {
    dispatch_once(&_MergedGlobals_162, &__block_literal_global_151);
  }

  v3 = qword_1ED6E3278;

  return v3;
}

void __36__AMSUserNotification_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E3278;
  qword_1ED6E3278 = @"AMSUserNotifications";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E3280 != -1)
  {
    dispatch_once(&qword_1ED6E3280, &__block_literal_global_213);
  }

  v3 = qword_1ED6E3288;

  return v3;
}

void __43__AMSUserNotification_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E3288;
  qword_1ED6E3288 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (BOOL)_canParseNotificationWithIdentifier:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [a3 hasPrefix:@"ams_"];
  v7 = [v5 objectForKeyedSubscript:@"aps"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v6 & 1) != 0 || (([v8 objectForKeyedSubscript:@"_id"], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v10 = 0) : (v10 = v9), v9, v11 = objc_msgSend(v10, "hasPrefix:", @"ams_"), v10, (v11))
  {
    v12 = 1;
  }

  else
  {
    v13 = [v8 objectForKeyedSubscript:@"uuid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v12 = [v14 hasPrefix:@"ams_"];
  }

  return v12;
}

+ (id)_cachedImagePathForIdentifier:(id)a3 assetURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x1E695DEC8]);
  v8 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v9 = [v8 lastObject];
  v10 = [v7 initWithObjects:{v9, @"com.apple.AppleMediaServices", @"UserNotificationImageCache", 0}];

  v11 = [MEMORY[0x1E696AEC0] pathWithComponents:v10];
  v12 = 0;
  if ([MEMORY[0x1E696AC08] ams_ensureDirectoryExists:v11])
  {
    v13 = [v6 pathExtension];
    if (v13)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v5, v13];
    }

    else
    {
      v14 = v5;
    }

    v15 = v14;
    v12 = [v11 stringByAppendingPathComponent:v14];
  }

  return v12;
}

+ (id)_identifierFromPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 aps];
  v5 = [v4 objectForKeyedSubscript:@"_id"];

  if (![v5 length])
  {
    v6 = [v3 aps];
    v7 = [v6 objectForKeyedSubscript:@"uuid"];

    v5 = v7;
  }

  if (![v5 length])
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [v8 stringWithFormat:@"%@%@", @"ams_", v10];

    v5 = v11;
  }

  if (([v5 hasPrefix:@"ams_"] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"ams_", v5];

    v5 = v12;
  }

  return v5;
}

+ (id)_downloadAssetAtUrl:(id)a3 withIdentifier:(id)a4 logKey:(id)a5 bag:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [a1 _cachedImagePathForIdentifier:a4 assetURL:v10];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [v14 absoluteString];
  v17 = [v15 fileExistsAtPath:v16];

  if (v17)
  {
    goto LABEL_16;
  }

  v18 = [[AMSURLRequestEncoder alloc] initWithBag:v12];
  [(AMSURLRequestEncoder *)v18 setLogUUID:v11];
  [(AMSURLRequestEncoder *)v18 setUrlKnownToBeTrusted:1];
  v19 = [(AMSURLRequestEncoder *)v18 requestWithMethod:2 URL:v10 parameters:0];
  v34 = 0;
  v31 = [v19 resultWithError:&v34];
  v20 = v34;

  if (v20)
  {
    goto LABEL_8;
  }

  v21 = +[AMSURLSession defaultSession];
  v22 = [v21 dataTaskPromiseWithRequest:v31];
  v33 = 0;
  v23 = [v22 resultWithError:&v33];
  v20 = v33;

  if (v20)
  {

LABEL_8:
    v24 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v36 = a1;
      v37 = 2114;
      v38 = v11;
      v39 = 2114;
      v40 = v20;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Error downloading asset: %{public}@", buf, 0x20u);
    }

    v26 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v28 = [v23 data];

  if (v28)
  {
    v26 = [v23 data];
  }

  else
  {
    v26 = 0;
  }

  if (v14)
  {
    v32 = 0;
    v29 = [v26 writeToURL:v14 options:1 error:&v32];
    v30 = v32;
    v20 = v30;
    if ((v29 & 1) == 0 && v30)
    {
      v24 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v36 = a1;
        v37 = 2114;
        v38 = v11;
        v39 = 2114;
        v40 = v20;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to cache asset data: %{public}@", buf, 0x20u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_14:

  if (v20)
  {

    v14 = 0;
  }

LABEL_16:

  return v14;
}

- (id)_generatePayloadWithBase:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v4];
  v6 = [(AMSUserNotification *)self account];
  v7 = [v6 ams_DSID];
  [v5 setObject:v7 forKeyedSubscript:@"0"];

  v8 = [(AMSUserNotification *)self centerBundleIdentifier];
  [v5 setObject:v8 forKeyedSubscript:@"2"];

  v9 = [(AMSUserNotification *)self logKey];
  [v5 setObject:v9 forKeyedSubscript:@"_logKey"];

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = [(AMSUserNotification *)self informativeText];
  [v11 setObject:v12 forKeyedSubscript:@"body"];

  v13 = [(AMSUserNotification *)self title];
  [v11 setObject:v13 forKeyedSubscript:@"title"];

  v14 = [(AMSUserNotification *)self subtitle];
  [v11 setObject:v14 forKeyedSubscript:@"subtitle"];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSUserNotification interruptionLevel](self, "interruptionLevel")}];
  [v11 setObject:v15 forKeyedSubscript:@"level"];

  [v10 setObject:v11 forKeyedSubscript:@"alert"];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotification anonymizeMetrics](self, "anonymizeMetrics")}];
  [v10 setObject:v16 forKeyedSubscript:@"_an"];

  v17 = [(AMSUserNotification *)self artworkUrl];
  v18 = [v17 absoluteString];
  [v10 setObject:v18 forKeyedSubscript:@"_au"];

  v19 = [(AMSUserNotification *)self videoUrl];
  v20 = [v19 absoluteString];
  [v10 setObject:v20 forKeyedSubscript:@"_vu"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotification shouldSuppressDefaultAction](self, "shouldSuppressDefaultAction")}];
  [v10 setObject:v21 forKeyedSubscript:@"_sd"];

  v22 = [(AMSUserNotification *)self categoryIdentifier];
  [v10 setObject:v22 forKeyedSubscript:@"category"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSUserNotification explicitContent](self, "explicitContent")}];
  [v10 setObject:v23 forKeyedSubscript:@"_ex"];

  v24 = [(AMSUserNotification *)self metricsEvent];
  [v10 setObject:v24 forKeyedSubscript:@"_mt"];

  v25 = [(AMSUserNotification *)self subsections];
  v26 = [v25 allObjects];
  [v10 setObject:v26 forKeyedSubscript:@"_ss"];

  v27 = [(AMSUserNotification *)self threadIdentifier];
  [v10 setObject:v27 forKeyedSubscript:@"thread"];

  v28 = [(AMSUserNotification *)self identifier];
  [v10 setObject:v28 forKeyedSubscript:@"_id"];

  v29 = [(AMSUserNotification *)self scheduledTime];

  if (v29)
  {
    v30 = [MEMORY[0x1E696AB78] ams_serverFriendlyFormatter];
    v31 = [(AMSUserNotification *)self scheduledTime];
    v32 = [v30 stringFromDate:v31];

    [v10 setObject:v32 forKeyedSubscript:@"_st"];
  }

  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = [(AMSUserNotification *)self defaultAction];
  v35 = __48__AMSUserNotification__generatePayloadWithBase___block_invoke(v34, 1);
  [v33 ams_addNullableObject:v35];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = [(AMSUserNotification *)self buttonActions];
  v37 = [v36 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v44;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = __48__AMSUserNotification__generatePayloadWithBase___block_invoke(*(*(&v43 + 1) + 8 * i), 0);
        [v33 ams_addNullableObject:v41];
      }

      v38 = [v36 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v38);
  }

  [v10 setObject:v33 forKeyedSubscript:@"_ba"];
  [v5 setObject:v10 forKeyedSubscript:@"aps"];

  return v5;
}

id __48__AMSUserNotification__generatePayloadWithBase___block_invoke(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  if (a2)
  {
    v6 = &unk_1F0779B38;
  }

  else
  {
    v6 = &unk_1F0779B50;
  }

  [v4 setObject:v6 forKeyedSubscript:@"_tp"];
  v7 = [v3 defaultURL];
  v8 = [v7 absoluteString];
  [v5 setObject:v8 forKeyedSubscript:@"_url"];

  v9 = [v3 identifier];
  [v5 setObject:v9 forKeyedSubscript:@"_id"];

  v10 = [v3 metricsEvent];
  v11 = [v10 underlyingDictionary];
  [v5 setObject:v11 forKeyedSubscript:@"_mt"];

  v12 = [v3 request];

  if (v12)
  {
    v13 = [v3 request];
    v14 = [v13 HTTPBody];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = [v3 request];
      v17 = [v16 HTTPBody];
      v18 = [v15 initWithData:v17 encoding:4];

      [v5 setObject:v18 forKeyedSubscript:@"_rb"];
    }

    v19 = [v3 request];
    v20 = [v19 HTTPMethod];
    [v5 setObject:v20 forKeyedSubscript:@"_rm"];

    v21 = [v3 request];
    v22 = [v21 allHTTPHeaderFields];
    [v5 setObject:v22 forKeyedSubscript:@"_rh"];

    v23 = [v3 request];
    v24 = [v23 URL];
    v25 = [v24 absoluteString];
    [v5 setObject:v25 forKeyedSubscript:@"_ru"];
  }

  v26 = [v3 clientIdentifier];
  [v5 setObject:v26 forKeyedSubscript:@"_ci"];

  v27 = [v3 mediaApiRequestURL];
  v28 = [v27 absoluteString];
  [v5 setObject:v28 forKeyedSubscript:@"_mru"];

  v29 = [v3 title];
  [v5 setObject:v29 forKeyedSubscript:@"_tl"];

  v30 = [v3 systemImageName];
  [v5 setObject:v30 forKeyedSubscript:@"_gl"];

  return v5;
}

+ (id)_dateFromString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AB78] ams_serverFriendlyFormatter];
  v5 = [v4 dateFromString:v3];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AB78] ams_serverFriendlyLocalTimeZoneFormatter];
    v5 = [v6 dateFromString:v3];
  }

  return v5;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

+ (id)handleNotificationResponse:(id)a3 bagContract:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AMSContractBagShim alloc] initWithBagContract:v6];

  v9 = [a1 handleNotificationResponse:v7 bag:v8];

  return v9;
}

- (id)handleSelectedButton:(id)a3 bagContract:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AMSContractBagShim alloc] initWithBagContract:v6];

  v9 = [(AMSUserNotification *)self handleSelectedButton:v7 bag:v8];

  return v9;
}

@end
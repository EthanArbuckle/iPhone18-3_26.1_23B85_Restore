@interface MetricsHandler
- (BOOL)shouldEnableSystemAppsForAppUsageType:(int64_t)type;
- (Class)appEventEntityClass;
- (id)createAppEventsForBundleIDs:(id)ds eventType:(unsigned __int8)type installType:(unsigned __int8)installType connection:(id)connection;
- (id)createAppEventsWithLaunchEvents:(id)events;
- (id)getAppUsageSessionForBundleID:(id)d;
- (id)getCrashEventsSinceDate:(id)date;
- (void)recordAppEventsForBundleIDs:(id)ds eventType:(unsigned __int8)type installType:(unsigned __int8)installType;
- (void)recordLaunches:(id)launches;
@end

@implementation MetricsHandler

- (Class)appEventEntityClass
{
  if ([(MetricsHandler *)self appUsageType]- 1 > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (id)createAppEventsForBundleIDs:(id)ds eventType:(unsigned __int8)type installType:(unsigned __int8)installType connection:(id)connection
{
  installTypeCopy = installType;
  typeCopy = type;
  dsCopy = ds;
  connectionCopy = connection;
  v56 = +[NSMutableArray array];
  v52 = +[LSDatabaseContext sharedDatabaseContext];
  v51 = [v52 startAccessingReturningError:0];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = dsCopy;
  v10 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v10)
  {
    v12 = v10;
    v59 = *v62;
    *&v11 = 138412546;
    v50 = v11;
    v55 = typeCopy;
    do
    {
      v13 = 0;
      v57 = v12;
      do
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v61 + 1) + 8 * v13);
        context = objc_autoreleasePoolPush();
        if (typeCopy == 3)
        {
          if (self)
          {
            currentApps = self->_currentApps;
          }

          else
          {
            currentApps = 0;
          }

          v16 = currentApps;
          v17 = [(NSDictionary *)v16 objectForKeyedSubscript:v14];
LABEL_19:

          if (v17 && [(MetricsHandler *)self isCandidateAppMetadata:v17])
          {
            v25 = sub_1001FBCE4([AppEvent alloc], v17);
            if (v25)
            {
              v26 = [NSNumber numberWithUnsignedChar:typeCopy];
              sub_10023E000(v25, v26, @"event_type");

              if (typeCopy == 1)
              {
                v27 = [NSNumber numberWithUnsignedChar:installTypeCopy];
                sub_10023E000(v25, v27, @"event_subtype");
              }

              if (sub_1001FD2EC(v25) && [(MetricsHandler *)self appUsageType]== 1)
              {
                v28 = [(MetricsHandler *)self getAppUsageSessionForBundleID:v14];
                v29 = sub_100228834(v28);

                if (v29)
                {
                  v30 = sub_100228834(v28);
                  sub_10023E000(v25, v30, @"device_vendor_id");

                  v31 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    logKey = [(MetricsHandler *)self logKey];
                    v33 = sub_1001FC658(AppEvent, typeCopy);
                    v34 = sub_100228834(v28);
                    *buf = 138413058;
                    v66 = logKey;
                    v67 = 2114;
                    v68 = v33;
                    v69 = 2114;
                    v70 = v14;
                    v71 = 2114;
                    v72 = v34;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%@] [%{public}@] [%{public}@] Using generated deviceVendorID: %{public}@", buf, 0x2Au);

                    typeCopy = v55;
                  }
                }

                v12 = v57;
              }

              [v56 addObject:{v25, v50}];
              v35 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                logKey2 = [(MetricsHandler *)self logKey];
                v37 = sub_1001FC658(AppEvent, typeCopy);
                v38 = sub_100382084(v17);
                v39 = sub_100382830(v17);
                v40 = sub_1003826A0(v17);
                *buf = 138413314;
                v66 = logKey2;
                v67 = 2114;
                v68 = v37;
                v69 = 2114;
                v70 = v38;
                v71 = 2114;
                v72 = v39;
                v73 = 2114;
                v74 = v40;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] [%{public}@] Created app event with version: %{public}@ bundleVersion: %{public}@", buf, 0x34u);

                typeCopy = v55;
                v12 = v57;
              }
            }
          }

          else
          {
            v25 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              logKey3 = [(MetricsHandler *)self logKey];
              v42 = sub_1001FC658(AppEvent, typeCopy);
              *buf = 138413058;
              v66 = logKey3;
              v67 = 2114;
              v68 = v42;
              v69 = 2114;
              v70 = v14;
              v71 = 1024;
              LODWORD(v72) = v17 == 0;
              _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] [%{public}@] Not creating event for non-candidate app hasMetadata: %{BOOL}d", buf, 0x26u);

              v12 = v57;
            }
          }

          goto LABEL_39;
        }

        v16 = [ApplicationProxy proxyForBundleID:v14];
        if (!v16)
        {
          v17 = 0;
          goto LABEL_19;
        }

        if ([(MetricsHandler *)self isCandidateAppProxy:v16 isMetadataLookup:0])
        {
          v17 = sub_100381B80([AppMetadata alloc], v16);
          if ([(MetricsHandler *)self shouldEnableSystemAppsForAppUsageType:[(MetricsHandler *)self appUsageType]])
          {
            if (sub_1003D2AE4(v16) == 1)
            {
              v18 = sub_1003820BC(v17);

              if (!v18)
              {
                v19 = +[BagService appstoredService];
                lastBag = [v19 lastBag];
                v21 = [lastBag itemIDForSystemAppWithBundleID:v14];

                if (v21)
                {
                  sub_10023E000(v17, v21, @"item_id");
                  v22 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                  {
                    v23 = sub_1001FC658(AppEvent, typeCopy);
                    logKey4 = [(MetricsHandler *)self logKey];
                    *buf = 138413058;
                    v66 = v23;
                    v67 = 2114;
                    v68 = v14;
                    v69 = 2114;
                    v70 = logKey4;
                    v71 = 2114;
                    v72 = v21;
                    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] [%{public}@] Mapped itemID: %{public}@ to system app", buf, 0x2Au);
                  }
                }

                else
                {
                  v22 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    logKey5 = [(MetricsHandler *)self logKey];
                    unsignedLongLongValue = [0 unsignedLongLongValue];
                    *buf = v50;
                    v66 = logKey5;
                    v67 = 2048;
                    v68 = unsignedLongLongValue;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%@] Error looking up system apps with item ID %llu", buf, 0x16u);
                  }
                }

                v12 = v57;
              }
            }
          }

          goto LABEL_19;
        }

        v25 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          logKey6 = [(MetricsHandler *)self logKey];
          v44 = sub_1001FC658(AppEvent, typeCopy);
          *buf = 138412802;
          v66 = logKey6;
          v67 = 2114;
          v68 = v44;
          v69 = 2114;
          v70 = v14;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] [%{public}@] Not creating app event for non-candidate", buf, 0x20u);

          v12 = v57;
        }

        v17 = v16;
LABEL_39:

        objc_autoreleasePoolPop(context);
        v13 = v13 + 1;
      }

      while (v12 != v13);
      v47 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
      v12 = v47;
    }

    while (v47);
  }

  if (v51)
  {
    [v52 stopAccessing];
  }

  v48 = [v56 copy];

  return v48;
}

- (id)createAppEventsWithLaunchEvents:(id)events
{
  eventsCopy = events;
  v68 = +[NSMutableArray array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v69 objects:v85 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v70;
    v65 = v5;
    v67 = *v70;
    selfCopy = self;
    do
    {
      v9 = 0;
      v66 = v7;
      do
      {
        if (*v70 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v69 + 1) + 8 * v9);
        if (self)
        {
          currentApps = self->_currentApps;
        }

        else
        {
          currentApps = 0;
        }

        v12 = currentApps;
        if (v10)
        {
          v13 = *(v10 + 40);
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [(NSDictionary *)v12 objectForKeyedSubscript:v14];

        if (!v15)
        {
          v17 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_57;
          }

          logKey = [(MetricsHandler *)self logKey];
          if (v10)
          {
            v33 = *(v10 + 40);
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;
          *buf = 138412546;
          v74 = logKey;
          v75 = 2114;
          v76 = v34;
          v35 = v17;
          v36 = "[%@] [%{public}@] Could not find app metadata";
LABEL_40:
          _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0x16u);

          goto LABEL_57;
        }

        if (![(MetricsHandler *)self isCandidateAppMetadata:v15])
        {
          v17 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_57;
          }

          logKey = [(MetricsHandler *)self logKey];
          if (v10)
          {
            v37 = *(v10 + 40);
          }

          else
          {
            v37 = 0;
          }

          v34 = v37;
          *buf = 138412546;
          v74 = logKey;
          v75 = 2114;
          v76 = v34;
          v35 = v17;
          v36 = "[%@] [%{public}@] Skipping non candidate app";
          goto LABEL_40;
        }

        v16 = sub_1001FBCE4([AppEvent alloc], v15);
        v17 = v16;
        if (!v16)
        {
          goto LABEL_57;
        }

        sub_10023E000(v16, &off_100547EC0, @"event_type");
        if (v10)
        {
          v18 = [NSNumber numberWithLongLong:*(v10 + 144)];
          sub_10023E000(v17, v18, @"usage_time");

          v19 = *(v10 + 24);
        }

        else
        {
          v60 = [NSNumber numberWithLongLong:0];
          sub_10023E000(v17, v60, @"usage_time");

          v19 = 0;
        }

        v20 = v19;

        if (v20)
        {
          if (v10)
          {
            v21 = *(v10 + 24);
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;
          sub_10023E000(v17, v22, @"launch_time");
        }

        if (v10)
        {
          v23 = *(v10 + 16);
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;

        if (v24)
        {
          if (v10)
          {
            v25 = *(v10 + 16);
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;
          sub_10023E000(v17, v26, @"launch_end_time");
        }

        includeClipDetails = [(MetricsHandler *)self includeClipDetails];
        if (v10 && includeClipDetails && *(v10 + 10) == 1)
        {
          sub_10023E000(v17, &off_100547ED8, @"is_clip");
          v28 = *(v10 + 96);
          if (v28)
          {
            v29 = v28;
            v30 = *(v10 + 96);
            if ([v30 isEqualToString:@"App Referral"])
            {
              v31 = *(v10 + 112);

              if (v31)
              {
                v29 = *(v10 + 112);
                sub_10023E000(v17, v29, @"clip_ref_source");
                goto LABEL_42;
              }
            }

            else
            {

LABEL_42:
            }
          }

          v38 = *(v10 + 96);

          if (v38)
          {
            v39 = *(v10 + 96);
            sub_10023E000(v17, v39, @"clip_ref_type");
          }

          v40 = *(v10 + 88);

          if (v40)
          {
            v41 = [CampaignTokens alloc];
            v42 = *(v10 + 88);
            v43 = sub_100381860(v41, v42);

            sub_1001FD4E8(v17, v43);
          }

          sub_10023E000(v17, @"clip", @"clip_app_type");
          v44 = sub_1001FCF14(v17);
          v45 = [(MetricsHandler *)self getAppUsageSessionForBundleID:v44];

          v46 = sub_100228834(v45);

          v7 = v66;
          if (v46)
          {
            v47 = sub_100228834(v45);
            sub_10023E000(v17, v47, @"device_vendor_id");

            v48 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              logKey2 = [(MetricsHandler *)self logKey];
              v50 = sub_1001FCF14(v17);
              v51 = sub_100228834(v45);
              *buf = 138412802;
              v74 = logKey2;
              v75 = 2114;
              v76 = v50;
              v77 = 2114;
              v78 = v51;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Using deviceVendorID: %{public}@", buf, 0x20u);

              v5 = v65;
              v7 = v66;
            }
          }
        }

        [v68 addObject:v17];
        v52 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          logKey3 = [(MetricsHandler *)self logKey];
          v54 = sub_1001FC658(AppEvent, 2u);
          v55 = sub_100382084(v15);
          v56 = sub_100382830(v15);
          v57 = sub_1003826A0(v15);
          v58 = v57;
          if (v10)
          {
            v59 = *(v10 + 144);
          }

          else
          {
            v59 = 0;
          }

          *buf = 138413570;
          v74 = logKey3;
          v75 = 2114;
          v76 = v54;
          v77 = 2114;
          v78 = v55;
          v79 = 2114;
          v80 = v56;
          v81 = 2114;
          v82 = v57;
          v83 = 2048;
          v84 = v59;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] [%{public}@] Created app event with version: %{public}@ bundleVersion: %{public}@ duration: %lld", buf, 0x3Eu);

          v5 = v65;
          v7 = v66;
          self = selfCopy;
        }

        v8 = v67;
LABEL_57:

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v61 = [v5 countByEnumeratingWithState:&v69 objects:v85 count:16];
      v7 = v61;
    }

    while (v61);
  }

  v62 = [v68 copy];

  return v62;
}

- (id)getAppUsageSessionForBundleID:(id)d
{
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10030A368;
  v28 = sub_10030A378;
  v29 = 0;
  v5 = sub_10036C90C();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10030A380;
  v21[3] = &unk_10051C738;
  v6 = dCopy;
  v22 = v6;
  v23 = &v24;
  [v5 readUsingSession:v21];

  v7 = v25[5];
  if (!v7 || sub_1002288EC(v7))
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      logKey = [(MetricsHandler *)self logKey];
      v10 = sub_1002288EC(v25[5]);
      *buf = 138412802;
      *&buf[4] = logKey;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 1024;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Creating fresh app usage session entity. Was expired: %d", buf, 0x1Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v31) = 0;
    v11 = sub_100228670([AppUsageSession alloc], v6);
    v12 = sub_10036C90C();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10030A4D4;
    v16[3] = &unk_100522A58;
    v20 = buf;
    v13 = v11;
    v17 = v13;
    selfCopy = self;
    v19 = v6;
    [v12 modifyUsingTransaction:v16];

    if (*(*&buf[8] + 24) == 1)
    {
      objc_storeStrong(v25 + 5, v11);
    }

    _Block_object_dispose(buf, 8);
  }

  v14 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)getCrashEventsSinceDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v5 = objc_opt_new();
    v6 = +[_TtC9appstored16CrashCoordinator shared];
    logKey = [(MetricsHandler *)self logKey];
    v8 = [v6 getBiomeCrashesWithLogKey:logKey startDate:dateCopy];

    v39 = dateCopy;
    if (self)
    {
      currentApps = self->_currentApps;
    }

    else
    {
      currentApps = 0;
    }

    v10 = currentApps;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v8;
    v45 = [v11 countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (v45)
    {
      v12 = *v47;
      v43 = *v47;
      v41 = v5;
      selfCopy = self;
      v40 = v11;
      do
      {
        v13 = 0;
        do
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v46 + 1) + 8 * v13);
          bundleID = [v14 bundleID];
          v16 = [(NSDictionary *)v10 objectForKeyedSubscript:bundleID];

          if (!v16)
          {
            v18 = ASDLogHandleForCategory();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_24;
            }

            logKey2 = [(MetricsHandler *)self logKey];
            v32 = sub_1001FC658(AppEvent, 0);
            bundleID2 = [v14 bundleID];
            *buf = 138412802;
            v51 = logKey2;
            v52 = 2114;
            v53 = v32;
            v54 = 2114;
            v55 = bundleID2;
            v34 = v18;
            v35 = "[%@] [%{public}@] [%{public}@] Could not find app metadata";
LABEL_27:
            _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, v35, buf, 0x20u);

            v12 = v43;
            goto LABEL_24;
          }

          if (![(MetricsHandler *)self isCandidateAppMetadata:v16])
          {
            v18 = ASDLogHandleForCategory();
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_24;
            }

            logKey2 = [(MetricsHandler *)self logKey];
            v32 = sub_1001FC658(AppEvent, 0);
            bundleID2 = [v14 bundleID];
            *buf = 138412802;
            v51 = logKey2;
            v52 = 2114;
            v53 = v32;
            v54 = 2114;
            v55 = bundleID2;
            v34 = v18;
            v35 = "[%@] [%{public}@] [%{public}@] Non candidate app metadata";
            goto LABEL_27;
          }

          v17 = sub_1001FBCE4([AppEvent alloc], v16);
          v18 = v17;
          if (v17)
          {
            sub_10023E000(v17, &off_100547EF0, @"event_type");
            bundleVersion = [v14 bundleVersion];

            if (bundleVersion)
            {
              bundleVersion2 = [v14 bundleVersion];
              sub_10023E000(v18, bundleVersion2, @"bundle_version");
            }

            appVersion = [v14 appVersion];

            if (appVersion)
            {
              appVersion2 = [v14 appVersion];
              sub_10023E000(v18, appVersion2, @"short_version");
            }

            date = [v14 date];

            if (date)
            {
              date2 = [v14 date];
              sub_10023E000(v18, date2, @"launch_time");
            }

            v25 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              logKey3 = [(MetricsHandler *)self logKey];
              v44 = sub_1001FC658(AppEvent, 0);
              v27 = sub_1001FCF14(v18);
              v28 = sub_1001FD3EC(v18);
              sub_1001FCF4C(v18);
              v30 = v29 = v10;
              *buf = 138413314;
              v51 = logKey3;
              v52 = 2114;
              v53 = v44;
              v54 = 2114;
              v55 = v27;
              v56 = 2114;
              v57 = v28;
              v58 = 2114;
              v59 = v30;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] [%{public}@] Created app event with version: %{public}@ bundleVersion: %{public}@", buf, 0x34u);

              v10 = v29;
              v11 = v40;
              v12 = v43;

              v5 = v41;
              self = selfCopy;
            }

            [v5 addObject:v18];
          }

LABEL_24:

          v13 = v13 + 1;
        }

        while (v45 != v13);
        v36 = [v11 countByEnumeratingWithState:&v46 objects:v60 count:16];
        v45 = v36;
      }

      while (v36);
    }

    v37 = [v5 copy];
    dateCopy = v39;
  }

  else
  {
    v37 = &__NSArray0__struct;
  }

  return v37;
}

- (void)recordAppEventsForBundleIDs:(id)ds eventType:(unsigned __int8)type installType:(unsigned __int8)installType
{
  dsCopy = ds;
  appEventEntityClass = [(MetricsHandler *)self appEventEntityClass];
  if (appEventEntityClass)
  {
    v10 = appEventEntityClass;
    v11 = sub_10036C90C();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10030AE10;
    v12[3] = &unk_100522A80;
    v12[4] = self;
    typeCopy = type;
    installTypeCopy = installType;
    v13 = dsCopy;
    v14 = v10;
    [v11 modifyUsingTransaction:v12];
  }
}

- (void)recordLaunches:(id)launches
{
  v4 = [(MetricsHandler *)self createAppEventsWithLaunchEvents:launches];
  if ([v4 count])
  {
    v5 = sub_10036C90C();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10030B07C;
    v6[3] = &unk_10051C838;
    v7 = v4;
    selfCopy = self;
    [v5 modifyUsingTransaction:v6];
  }
}

- (BOOL)shouldEnableSystemAppsForAppUsageType:(int64_t)type
{
  if (type == 2)
  {
    v3 = 1;
    v4 = off_100524090;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v3 = 0;
    v4 = off_100524010;
LABEL_5:
    v5 = +[BagService appstoredService];
    lastBag = [v5 lastBag];
    v7 = [lastBag BOOLForKey:*v4 defaultValue:v3];

    return v7;
  }

  return 0;
}

@end
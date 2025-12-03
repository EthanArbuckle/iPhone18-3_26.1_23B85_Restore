@interface ArcadePayoutMetricsHandler
- (BOOL)isCandidateAppMetadata:(id)metadata;
- (BOOL)isCandidateAppProxy:(id)proxy isMetadataLookup:(BOOL)lookup;
- (BOOL)shouldCollectMetrics;
- (id)_activeAccountIDForAppEvent:(id)event withAccountEvents:(id)events;
- (id)_qualifiedEventsForWeekStartingWithDate:(id)date;
- (id)logKey;
- (void)recordLaunches:(id)launches;
@end

@implementation ArcadePayoutMetricsHandler

- (BOOL)isCandidateAppMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = metadataCopy;
  if (metadataCopy && sub_100382758(metadataCopy))
  {
    v5 = sub_100382710(v4) ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isCandidateAppProxy:(id)proxy isMetadataLookup:(BOOL)lookup
{
  proxyCopy = proxy;
  v5 = proxyCopy;
  v6 = proxyCopy && ([proxyCopy[15] isPlaceholder] & 1) == 0 && sub_1003D2BDC(v5) && !sub_1003D2404(v5);

  return v6;
}

- (id)logKey
{
  logKey = self->_logKey;
  if (!logKey)
  {
    v4 = self->super._baseLogKey;
    v5 = [(LogKey *)v4 prependingCategory:@"ArcadePayout"];
    v6 = self->_logKey;
    self->_logKey = v5;

    logKey = self->_logKey;
  }

  return logKey;
}

- (void)recordLaunches:(id)launches
{
  launchesCopy = launches;
  v5 = +[BagService appstoredService];
  lastBag = [v5 lastBag];
  v98 = [lastBag integerForKey:@"ocelot-payout-qualifying-duration-seconds" defaultValue:60];

  v7 = sub_1001E5E74();
  sub_1001E6814(v7);
  v89 = +[NSMutableArray array];
  v91 = +[NSMutableDictionary dictionary];
  v8 = +[NSMutableDictionary dictionary];
  v90 = +[NSMutableDictionary dictionary];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = launchesCopy;
  v9 = [obj countByEnumeratingWithState:&v117 objects:v131 count:16];
  if (v9)
  {
    v10 = v9;
    v102 = *v118;
    v92 = v8;
    v87 = v7;
    selfCopy = self;
    do
    {
      v11 = 0;
      v95 = v10;
      do
      {
        if (*v118 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v105 = *(*(&v117 + 1) + 8 * v11);
        if (self)
        {
          currentApps = self->super._currentApps;
        }

        else
        {
          currentApps = 0;
        }

        v13 = currentApps;
        v103 = v11;
        v14 = v105;
        if (v105)
        {
          v14 = *(v105 + 40);
        }

        v15 = v14;
        v16 = [(NSDictionary *)v13 objectForKeyedSubscript:v15];

        v104 = v16;
        if ([(ArcadePayoutMetricsHandler *)self isCandidateAppMetadata:v16])
        {
          v17 = v103;
          if (v105)
          {
            if (*(v105 + 144) < v98)
            {
              goto LABEL_13;
            }

            v28 = *(v105 + 16);
          }

          else
          {
            if (v98 > 0)
            {
LABEL_13:
              v18 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = v18;
                logKey = [(ArcadePayoutMetricsHandler *)self logKey];
                if (v105)
                {
                  v21 = *(v105 + 40);
                  v22 = *(v105 + 144);
                  v23 = v21;
                }

                else
                {
                  v21 = 0;
                  v23 = 0;
                  v22 = 0;
                }

                *buf = 138412802;
                v122 = logKey;
                v123 = 2114;
                v124 = v21;
                v125 = 2048;
                v126 = v22;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Skipping too short app duration: %lld", buf, 0x20u);

                v18 = v19;
              }

              goto LABEL_80;
            }

            v28 = 0;
          }

          v29 = v28;
          v18 = sub_1001E60F4(AccountEventCoordinator, v29);

          v101 = v18;
          if (v18)
          {
            log = sub_1001FBCE4([AppEvent alloc], v16);
            sub_10023E000(log, &off_1005479B0, @"event_type");
            v96 = sub_1001E61E0(v7, v18);
            v94 = [v8 objectForKeyedSubscript:v18];
            if (!v94)
            {
              v30 = objc_opt_new();
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              v31 = v96;
              v32 = [v31 countByEnumeratingWithState:&v113 objects:v130 count:16];
              if (v32)
              {
                v34 = v32;
                v35 = *v114;
                do
                {
                  for (i = 0; i != v34; i = i + 1)
                  {
                    if (*v114 != v35)
                    {
                      objc_enumerationMutation(v31);
                    }

                    Property = *(*(&v113 + 1) + 8 * i);
                    if (Property)
                    {
                      Property = objc_getProperty(Property, v33, 8, 1);
                    }

                    v38 = Property;
                    v39 = sub_1001F0558(v38);
                    [v30 addObject:v39];
                  }

                  v34 = [v31 countByEnumeratingWithState:&v113 objects:v130 count:16];
                }

                while (v34);
              }

              v40 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 count]);
              v8 = v92;
              [v92 setObject:v40 forKeyedSubscript:v101];

              v41 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                logKey2 = [(ArcadePayoutMetricsHandler *)self logKey];
                v43 = sub_1002526A4(v101);
                allObjects = [v30 allObjects];
                v45 = [allObjects componentsJoinedByString:{@", "}];
                *buf = 138412802;
                v122 = logKey2;
                v123 = 2114;
                v124 = v43;
                v125 = 2114;
                v126 = v45;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%@] Accounts for week: %{public}@ are: [%{public}@]", buf, 0x20u);

                v8 = v92;
              }

              v17 = v103;
              v18 = v101;
            }

            v46 = [v8 objectForKeyedSubscript:v18];
            sub_1001E61E0(v7, v18);
            v48 = v47 = v18;
            v49 = [(ArcadePayoutMetricsHandler *)self _activeAccountIDForAppEvent:v105 withAccountEvents:v48];

            v97 = v49;
            if (v49)
            {
              v50 = [v90 objectForKeyedSubscript:v47];
              if (!v50)
              {
                v50 = objc_opt_new();
                [v90 setObject:v50 forKeyedSubscript:v47];
              }

              v51 = v105;
              v93 = v46;
              if (v105)
              {
                v51 = *(v105 + 40);
              }

              v52 = v51;
              v53 = [NSString stringWithFormat:@"%@:%@", v52, v97];

              v18 = v101;
              v54 = [v91 objectForKeyedSubscript:v101];
              if (!v54)
              {
                v55 = [(ArcadePayoutMetricsHandler *)self _qualifiedEventsForWeekStartingWithDate:v101];
                [v91 setObject:v55 forKeyedSubscript:v101];
                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                v54 = v55;
                v56 = [v54 countByEnumeratingWithState:&v109 objects:v129 count:16];
                if (v56)
                {
                  v57 = v56;
                  v58 = *v110;
                  do
                  {
                    for (j = 0; j != v57; j = j + 1)
                    {
                      if (*v110 != v58)
                      {
                        objc_enumerationMutation(v54);
                      }

                      v60 = *(*(&v109 + 1) + 8 * j);
                      v61 = sub_1001FCF14(v60);
                      v62 = sub_1001FC69C(v60);
                      v63 = [NSString stringWithFormat:@"%@:%@", v61, v62];

                      if (([v50 containsObject:v63]& 1) == 0)
                      {
                        [v50 addObject:v63];
                      }
                    }

                    v57 = [v54 countByEnumeratingWithState:&v109 objects:v129 count:16];
                  }

                  while (v57);
                }

                if ([v54 count])
                {
                  v64 = ASDLogHandleForCategory();
                  v7 = v87;
                  self = selfCopy;
                  v17 = v103;
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                  {
                    logKey3 = [(ArcadePayoutMetricsHandler *)selfCopy logKey];
                    v66 = [v50 componentsJoinedByString:@", "];
                    *buf = 138412546;
                    v122 = logKey3;
                    v123 = 2114;
                    v124 = v66;
                    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[%@] Qualified for week are now: [%{public}@]", buf, 0x16u);
                  }
                }

                else
                {
                  v7 = v87;
                  self = selfCopy;
                  v17 = v103;
                }

                v18 = v101;
              }

              if ([v50 containsObject:v53])
              {
                v78 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  logKey4 = [(ArcadePayoutMetricsHandler *)self logKey];
                  v80 = v105;
                  if (v105)
                  {
                    v80 = *(v105 + 40);
                  }

                  v81 = v80;
                  *buf = 138412802;
                  v122 = logKey4;
                  v123 = 2114;
                  v124 = v81;
                  v125 = 2114;
                  v126 = v53;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "[%@] Skipping event with bundleID: %{public}@. We have already have a qualifying event this week with eventKey: %{public}@", buf, 0x20u);

                  v18 = v101;
                }
              }

              else
              {
                if (v93)
                {
                  sub_10023E000(log, v93, @"cumulative_user_count");
                }

                sub_10023E000(log, v18, @"week_start_time");
                stringValue = [v97 stringValue];
                sub_10023E000(log, stringValue, @"account_id");

                [v50 addObject:v53];
                [v89 addObject:log];
                v78 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  logKey5 = [(ArcadePayoutMetricsHandler *)self logKey];
                  [v18 timeIntervalSince1970];
                  *buf = 138413058;
                  v122 = logKey5;
                  v123 = 2114;
                  v124 = v53;
                  v125 = 2114;
                  v126 = v93;
                  v127 = 2048;
                  v128 = v84;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "[%@] Added payout event with eventKey: %{public}@ cumulativeAccountCount: %{public}@ weekStart: %{time_t}ld ", buf, 0x2Au);
                }
              }

              v8 = v92;
              v46 = v93;
            }

            else
            {
              v50 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v70 = v46;
                logKey6 = [(ArcadePayoutMetricsHandler *)self logKey];
                v18 = v101;
                if (v105)
                {
                  v72 = *(v105 + 40);
                  v73 = *(v105 + 16);
                  v74 = v73;
                  if (v73)
                  {
                    [v73 timeIntervalSince1970];
                    v76 = v75;
                  }

                  else
                  {
                    v76 = 0;
                  }

                  v77 = v72;
                }

                else
                {
                  v74 = 0;
                  v72 = 0;
                  v77 = 0;
                  v76 = 0;
                }

                *buf = 138412802;
                v122 = logKey6;
                v123 = 2114;
                v124 = v77;
                v125 = 2048;
                v126 = v76;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%@] Skipping app launch event with bundleID: %{public}@ due to no active account at launch time ending: %{time_t}ld", buf, 0x20u);

                v8 = v92;
                v46 = v70;
              }

              else
              {
                v18 = v101;
              }
            }

            v10 = v95;
          }

          else
          {
            log = ASDLogHandleForCategory();
            v10 = v95;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              logKey7 = [(ArcadePayoutMetricsHandler *)self logKey];
              v68 = v105;
              if (v105)
              {
                v68 = *(v105 + 40);
              }

              v69 = v68;
              *buf = 138412546;
              v122 = logKey7;
              v123 = 2112;
              v124 = v69;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[%@] [%@] Could not find the week start date", buf, 0x16u);

              v10 = v95;
              v18 = 0;
            }
          }
        }

        else
        {
          v18 = ASDLogHandleForCategory();
          v17 = v103;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v24 = v18;
            logKey8 = [(ArcadePayoutMetricsHandler *)self logKey];
            v26 = v105;
            if (v105)
            {
              v26 = *(v105 + 40);
            }

            v27 = v26;
            *buf = 138412546;
            v122 = logKey8;
            v123 = 2114;
            v124 = v27;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[%@] [%{public}@] Skipping non arcade launch event", buf, 0x16u);

            v18 = v24;
            v10 = v95;
          }
        }

LABEL_80:

        v11 = v17 + 1;
      }

      while (v11 != v10);
      v85 = [obj countByEnumeratingWithState:&v117 objects:v131 count:16];
      v10 = v85;
    }

    while (v85);
  }

  if ([v89 count])
  {
    v86 = sub_10036C90C();
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_1002A6C74;
    v106[3] = &unk_10051C838;
    v107 = v89;
    selfCopy2 = self;
    [v86 modifyUsingTransaction:v106];
  }
}

- (BOOL)shouldCollectMetrics
{
  v2 = sub_1003BBF50();
  if ([v2 isHRNMode])
  {
    v3 = 0;
  }

  else
  {
    v4 = +[BagService appstoredService];
    lastBag = [v4 lastBag];
    v3 = [lastBag BOOLForKey:@"arcade-payout-enabled" defaultValue:1];
  }

  return v3;
}

- (id)_activeAccountIDForAppEvent:(id)event withAccountEvents:(id)events
{
  eventCopy = event;
  eventsCopy = events;
  if (eventsCopy)
  {
    if (eventCopy)
    {
      v8 = eventCopy[3];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;

    if (eventCopy)
    {
      v12 = eventCopy[2];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    [v13 timeIntervalSinceReferenceDate];
    v15 = v14;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = eventsCopy;
    v18 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v18)
    {
      v19 = *v35;
      v20 = v15 < 0.0 && v11 > 0.0;
      while (2)
      {
        v21 = 0;
        do
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v34 + 1) + 8 * v21);
          if (v22)
          {
            if (v11 > v22[2] && v15 < v22[3])
            {
              Property = objc_getProperty(v22, v17, 8, 1);
LABEL_25:
              v24 = Property;
              v18 = sub_1001F0558(v24);

              if ([(ArcadePayoutMetricsHandler *)self appUsageType])
              {
                v25 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  logKey = [(ArcadePayoutMetricsHandler *)self logKey];
                  if (eventCopy)
                  {
                    v27 = eventCopy[5];
                  }

                  else
                  {
                    v27 = 0;
                  }

                  v28 = v27;
                  *buf = 138412802;
                  v39 = logKey;
                  v40 = 2114;
                  v41 = v28;
                  v42 = 2114;
                  v43 = v18;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%@] [%{public}@] Found app launch accountID: %{public}@", buf, 0x20u);
                }
              }

              goto LABEL_31;
            }
          }

          else if (v20)
          {
            Property = 0;
            goto LABEL_25;
          }

          v21 = v21 + 1;
        }

        while (v18 != v21);
        v23 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
        v18 = v23;
        if (v23)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      logKey2 = [(ArcadePayoutMetricsHandler *)self logKey];
      if (eventCopy)
      {
        v31 = eventCopy[5];
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;
      *buf = 138412546;
      v39 = logKey2;
      v40 = 2114;
      v41 = v32;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Unable to find launch account for event due to no active accounts", buf, 0x16u);
    }

    v18 = 0;
  }

LABEL_31:

  return v18;
}

- (id)_qualifiedEventsForWeekStartingWithDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_new();
  [dateCopy timeIntervalSinceReferenceDate];
  v6 = [NSNumber numberWithDouble:?];
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [(ArcadePayoutMetricsHandler *)self logKey];
    v9 = sub_1002526A4(dateCopy);
    *buf = 138412546;
    v21 = logKey;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Looking for qualified in with week: %{public}@", buf, 0x16u);
  }

  v10 = [SQLiteComparisonPredicate predicateWithProperty:@"week_start_time" equalToValue:v6];
  v11 = sub_10036C90C();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002A735C;
  v16[3] = &unk_100520820;
  v17 = v10;
  selfCopy = self;
  v19 = v5;
  v12 = v5;
  v13 = v10;
  [v11 readUsingSession:v16];

  v14 = [v12 copy];

  return v14;
}

@end
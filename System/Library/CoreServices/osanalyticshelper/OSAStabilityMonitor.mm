@interface OSAStabilityMonitor
+ (BOOL)hasSupplementalBuild;
+ (BOOL)isAvailable;
+ (id)baselineCrashCount;
+ (id)baselineUptime;
+ (id)baselineVersions;
+ (id)calculateStabilityRateWithAppUsage:(id)usage crashCounts:(id)counts;
+ (id)monitorQueue;
+ (void)dateRangeOnBuild:(id)build from:(id)from to:(id)to completionHandler:(id)handler;
+ (void)evaluateStabilityWithParameters:(id)parameters targetBundleID:(id)d coalitionName:(id)name completionHandler:(id)handler;
- (BOOL)excludeThirdParty;
- (BOOL)isRollbackEnabledForBundleID:(id)d;
- (BOOL)isRollbackSupportedForBundleID:(id)d reason:(unint64_t *)reason;
- (BOOL)isValidBundleID:(id)d;
- (BOOL)recommendRollbackForBundleID:(id)d reason:(unint64_t *)reason;
- (OSAStabilityMonitor)initWithParameters:(id)parameters targetBundleID:(id)d completionHandler:(id)handler;
- (id)coalitionBasedBundleIDs;
- (id)loadParameterForKey:(id)key;
- (void)addCrashEvent:(id)event to:(id)to;
- (void)checkForOSUpdate;
- (void)evaluateStability;
- (void)totalUptimeFrom:(id)from to:(id)to targetBundleID:(id)d targetAppVersions:(id)versions firstPartyBundleIDs:(id)ds completionHandler:(id)handler;
@end

@implementation OSAStabilityMonitor

+ (id)monitorQueue
{
  if (qword_10002A400 != -1)
  {
    sub_100015290();
  }

  v3 = qword_10002A3F8;

  return v3;
}

+ (BOOL)isAvailable
{
  if (objc_opt_class() && objc_opt_class() && objc_opt_class())
  {
    return 1;
  }

  v3 = OSAStabilityMonitorLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000152A4(v3);
  }

  return 0;
}

- (id)coalitionBasedBundleIDs
{
  v2 = [(OSAStabilityMonitor *)self loadParameterForKey:@"coalitionBasedBundleIDs"];
  if (v2)
  {
    v3 = [NSSet setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)hasSupplementalBuild
{
  v2 = _CFCopySystemVersionDictionary();
  v3 = [v2 objectForKeyedSubscript:_kCFSystemVersionBuildVersionKey];
  v4 = +[OSASystemConfiguration sharedInstance];
  buildVersion = [v4 buildVersion];
  v6 = [v3 isEqualToString:buildVersion];

  return v6 ^ 1;
}

- (OSAStabilityMonitor)initWithParameters:(id)parameters targetBundleID:(id)d completionHandler:(id)handler
{
  parametersCopy = parameters;
  dCopy = d;
  handlerCopy = handler;
  if (+[OSAStabilityMonitor isAvailable])
  {
    v17.receiver = self;
    v17.super_class = OSAStabilityMonitor;
    v12 = [(OSAStabilityMonitor *)&v17 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_parameters, parameters);
      objc_storeStrong(&v13->_targetBundleID, d);
      v14 = objc_retainBlock(handlerCopy);
      completionHandler = v13->_completionHandler;
      v13->_completionHandler = v14;
    }
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

+ (void)evaluateStabilityWithParameters:(id)parameters targetBundleID:(id)d coalitionName:(id)name completionHandler:(id)handler
{
  parametersCopy = parameters;
  dCopy = d;
  nameCopy = name;
  handlerCopy = handler;
  v13 = +[OSAStabilityMonitor monitorQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100005334;
  v18[3] = &unk_100024D88;
  v19 = parametersCopy;
  v20 = dCopy;
  v21 = nameCopy;
  v22 = handlerCopy;
  v14 = nameCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  v17 = parametersCopy;
  dispatch_sync(v13, v18);
}

- (void)checkForOSUpdate
{
  maximumDays = [(OSAStabilityMonitor *)self maximumDays];
  if (maximumDays)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 BOOLForKey:@"stability-monitor.lastBuild-hasSupplementalBuild"];

    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 objectForKey:@"stability-monitor.lastBuild"];

    v8 = +[OSASystemConfiguration sharedInstance];
    buildVersion = [v8 buildVersion];

    v10 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking for OS update.", buf, 2u);
    }

    if (([v7 isEqualToString:buildVersion] & 1) == 0)
    {
      v11 = OSAStabilityMonitorLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v30 = v7;
        v31 = 2114;
        v32 = buildVersion;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Detected build version change from (%{public}@) to (%{public}@)", buf, 0x16u);
      }

      v12 = +[NSUserDefaults standardUserDefaults];
      [v12 setObject:buildVersion forKey:@"stability-monitor.lastBuild"];

      v13 = +[NSUserDefaults standardUserDefaults];
      [v13 setBool:+[OSAStabilityMonitor hasSupplementalBuild](OSAStabilityMonitor forKey:{"hasSupplementalBuild"), @"stability-monitor.lastBuild-hasSupplementalBuild"}];

      if (!((v7 == 0) | v5 & 1))
      {
        v14 = OSAStabilityMonitorLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calculating baseline.", buf, 2u);
        }

        v15 = +[NSUserDefaults standardUserDefaults];
        [v15 removeObjectForKey:@"stability-monitor.baselineUptime"];

        v16 = +[NSUserDefaults standardUserDefaults];
        [v16 removeObjectForKey:@"stability-monitor.baselineCrashCount"];

        v17 = +[NSUserDefaults standardUserDefaults];
        [v17 removeObjectForKey:@"stability-monitor.baselineVersions"];

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000058F0;
        v25[3] = &unk_100024E00;
        v26 = maximumDays;
        selfCopy = self;
        v28 = v7;
        [OSAStabilityMonitor dateRangeOnBuild:v28 from:0 to:0 completionHandler:v25];
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100014D84(self, v18, v19, v20, v21, v22, v23, v24);
  }
}

- (BOOL)isRollbackSupportedForBundleID:(id)d reason:(unint64_t *)reason
{
  dCopy = d;
  if (![objc_opt_class() hasSupplementalBuild])
  {
    v9 = 0;
    v10 = 3;
    if (!reason)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (![(OSAStabilityMonitor *)self isRollbackEnabledForBundleID:dCopy])
  {
    v9 = 0;
    v10 = 4;
    if (!reason)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  targetBundleID = self->_targetBundleID;
  v8 = targetBundleID == 0;
  v9 = targetBundleID != 0;
  v10 = 6;
  if (!v8)
  {
    v10 = 0;
  }

  if (reason)
  {
LABEL_8:
    *reason = v10;
  }

LABEL_9:

  return v9;
}

- (BOOL)recommendRollbackForBundleID:(id)d reason:(unint64_t *)reason
{
  dCopy = d;
  targetBundleID = self->_targetBundleID;
  if (!targetBundleID)
  {
    goto LABEL_15;
  }

  if ([(NSString *)targetBundleID isEqualToString:dCopy])
  {
    if (objc_opt_class() && objc_opt_class() && objc_opt_class())
    {
      v8 = [[SURollbackSuggestionProcessInfo alloc] initWithProcessID:dCopy];
      v9 = [NSError errorWithDomain:@"OSAnalytics" code:1 userInfo:0];
      [v8 setRollbackSuggestionError:v9];

      v10 = objc_alloc_init(SURollbackSuggestionInfo);
      [v10 setClientIdentifier:@"com.apple.osanalytics"];
      v26 = v8;
      v11 = [NSArray arrayWithObjects:&v26 count:1];
      [v10 setResponsibleProcessesInfo:v11];

      v12 = [SUManagerClient alloc];
      v13 = +[OSAStabilityMonitor monitorQueue];
      v14 = [v12 initWithDelegate:0 queue:v13 clientType:0];

      v23 = 0;
      LODWORD(v13) = [v14 securityResponseRollbackSuggested:v10 error:&v23];
      v15 = v23;

      if (v13)
      {
        v16 = OSAStabilityMonitorLogDomain();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v25 = dCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Recommended rollback for %{public}@.", buf, 0xCu);
        }

        v17 = 1;
        if (!reason)
        {
          goto LABEL_24;
        }

        v18 = 1;
LABEL_23:
        *reason = v18;
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v20 = OSAStabilityMonitorLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Rollback recommendations are not supported because SoftwareUpdateServices is not available.", buf, 2u);
      }

      v15 = 0;
    }

    v21 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100014FAC();
    }

    v17 = 0;
    if (!reason)
    {
      goto LABEL_24;
    }

    v18 = 5;
    goto LABEL_23;
  }

  if (self->_targetBundleID)
  {
    v19 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100014F40(&self->_targetBundleID);
    }

    v17 = 0;
  }

  else
  {
LABEL_15:
    [(OSAStabilityMonitor *)self isRollbackSupportedForBundleID:dCopy reason:reason];
    v17 = 1;
  }

LABEL_25:

  return v17;
}

- (void)evaluateStability
{
  v3 = OSAStabilityMonitorLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    targetBundleID = self->_targetBundleID;
    if (!targetBundleID)
    {
      targetBundleID = @"telemetry mode";
    }

    parameters = self->_parameters;
    *buf = 138543618;
    v46 = targetBundleID;
    v47 = 2114;
    v48 = parameters;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Evaluating stability for %{public}@ with parameters: %{public}@", buf, 0x16u);
  }

  maximumDays = [(OSAStabilityMonitor *)self maximumDays];
  minimumUptime = [(OSAStabilityMonitor *)self minimumUptime];
  minimumCrashCount = [(OSAStabilityMonitor *)self minimumCrashCount];
  maximumMTBF = [(OSAStabilityMonitor *)self maximumMTBF];
  maximumMTBFIfNoBaselineCrashes = [(OSAStabilityMonitor *)self maximumMTBFIfNoBaselineCrashes];
  minimumMTBFDelta = [(OSAStabilityMonitor *)self minimumMTBFDelta];
  minimumMTBFFactor = [(OSAStabilityMonitor *)self minimumMTBFFactor];
  v13 = minimumMTBFFactor;
  if (maximumDays && minimumUptime && minimumCrashCount && maximumMTBF && minimumMTBFDelta && minimumMTBFFactor && maximumMTBFIfNoBaselineCrashes)
  {
    v33 = maximumMTBF;
    v34 = minimumCrashCount;
    v30 = minimumUptime;
    v32 = +[NSDate now];
    v31 = [v32 dateByAddingTimeInterval:{-(86400 * objc_msgSend(maximumDays, "unsignedIntegerValue"))}];
    v14 = +[OSAStabilityMonitor baselineCrashCount];
    v15 = +[OSAStabilityMonitor baselineUptime];
    v16 = +[OSAStabilityMonitor baselineVersions];
    v17 = OSAStabilityMonitorLogDomain();
    v18 = v17;
    v19 = v14;
    if (v14 && v15 && v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100015064();
      }

      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10000668C;
      v35[3] = &unk_100024E78;
      v35[4] = self;
      v36 = v16;
      v37 = v14;
      v38 = v15;
      minimumUptime = v30;
      v39 = v30;
      v40 = v34;
      v41 = v33;
      v42 = minimumMTBFDelta;
      v43 = v13;
      v44 = maximumMTBFIfNoBaselineCrashes;
      v21 = v31;
      v20 = v32;
      [OSAStabilityMonitor dateRangeOnBuild:0 from:v31 to:v32 completionHandler:v35];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100015020(v18);
      }

      [(OSAStabilityMonitor *)self reportResultsForBundleID:0 crashes:0 uptime:0 MTBF:0 result:0 status:@"Error retrieving baseline values"];
      v21 = v31;
      v20 = v32;
      minimumUptime = v30;
    }

    maximumMTBF = v33;
    minimumCrashCount = v34;
  }

  else
  {
    v22 = OSAStabilityMonitorLogDomain();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000150E8(self, v22, v23, v24, v25, v26, v27, v28);
    }

    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, 0);
    }
  }
}

- (void)totalUptimeFrom:(id)from to:(id)to targetBundleID:(id)d targetAppVersions:(id)versions firstPartyBundleIDs:(id)ds completionHandler:(id)handler
{
  fromCopy = from;
  toCopy = to;
  dCopy = d;
  handlerCopy = handler;
  dsCopy = ds;
  versionsCopy = versions;
  v19 = [[OSAAppUsageAccumulator alloc] initWithStartDate:fromCopy endDate:toCopy targetAppVersions:versionsCopy firstPartyBundleIDs:dsCopy];

  if (dCopy)
  {
    [(OSAAccumulator *)v19 setTargetKey:dCopy];
  }

  v20 = [_DKQuery predicateForEventsIntersectingDateRangeFrom:fromCopy to:toCopy, self];
  v21 = +[_DKSystemEventStreams appInFocusStream];
  v44 = v21;
  v36 = dCopy;
  v22 = [NSArray arrayWithObjects:&v44 count:1];
  v23 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
  v43 = v23;
  v24 = [NSArray arrayWithObjects:&v43 count:1];
  v25 = [_DKEventQuery eventQueryWithPredicate:v20 eventStreams:v22 offset:0 limit:0 sortDescriptors:v24];

  v26 = [BMCoreDuetStream alloc];
  v27 = +[_DKKnowledgeStore knowledgeStore];
  v28 = [v26 initWithKnowledgeStore:v27 clientContext:0 identifier:0];

  v29 = [v28 publisherForQuery:v25];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000077F0;
  v42[3] = &unk_100024EA0;
  v42[4] = v35;
  v30 = [v29 filterWithIsIncluded:v42];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100007894;
  v39[3] = &unk_100024EC8;
  v41 = handlerCopy;
  v40 = v19;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100007930;
  v37[3] = &unk_100024EF0;
  v38 = v40;
  v31 = v40;
  v32 = handlerCopy;
  v33 = [v30 sinkWithCompletion:v39 receiveInput:v37];
}

- (void)addCrashEvent:(id)event to:(id)to
{
  eventCopy = event;
  toCopy = to;
  coalitionBasedBundleIDs = [(OSAStabilityMonitor *)self coalitionBasedBundleIDs];
  eventBody = [eventCopy eventBody];
  bundleID = [eventBody bundleID];
  v10 = [coalitionBasedBundleIDs containsObject:bundleID];
  eventBody2 = [eventCopy eventBody];
  v12 = eventBody2;
  if (v10)
  {
    [eventBody2 coalitionName];
  }

  else
  {
    [eventBody2 bundleID];
  }
  v13 = ;

  if ([(OSAStabilityMonitor *)self isValidBundleID:v13])
  {
    if (!-[OSAStabilityMonitor excludeThirdParty](self, "excludeThirdParty") || ([eventCopy eventBody], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isFirstParty"), v14, v15))
    {
      [toCopy addEvent:eventCopy withBundleID:v13];
    }
  }
}

+ (void)dateRangeOnBuild:(id)build from:(id)from to:(id)to completionHandler:(id)handler
{
  buildCopy = build;
  fromCopy = from;
  toCopy = to;
  handlerCopy = handler;
  v13 = +[BMStreams deviceMetadataStream];
  if (toCopy)
  {
    [toCopy timeIntervalSinceReferenceDate];
    v14 = [NSNumber numberWithDouble:?];
    if (fromCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (fromCopy)
    {
LABEL_3:
      [fromCopy timeIntervalSinceReferenceDate];
      v15 = [NSNumber numberWithDouble:?];
      v16 = [v13 publisherWithStartTime:v14 endTime:v15 maxEvents:0 reversed:1];

      if (!toCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v16 = [v13 publisherWithStartTime:v14 endTime:0 maxEvents:0 reversed:1];
  if (toCopy)
  {
LABEL_4:
  }

LABEL_5:

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100001C00;
  v39[4] = sub_100001C20;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100001C00;
  v37 = sub_100001C20;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  if (buildCopy)
  {
    buildVersion = buildCopy;
  }

  else
  {
    v18 = +[OSASystemConfiguration sharedInstance];
    buildVersion = [v18 buildVersion];

    objc_storeStrong(v34 + 5, to);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000808C;
  v27[3] = &unk_100024F40;
  v19 = handlerCopy;
  v28 = v19;
  v29 = v39;
  v30 = &v33;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000813C;
  v22[3] = &unk_100024F68;
  v20 = buildVersion;
  v23 = v20;
  v24 = &v33;
  v25 = v31;
  v26 = v39;
  v21 = [v16 sinkWithCompletion:v27 shouldContinue:v22];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(v39, 8);
}

+ (id)calculateStabilityRateWithAppUsage:(id)usage crashCounts:(id)counts
{
  usageCopy = usage;
  countsCopy = counts;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [usageCopy countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v38;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(usageCopy);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = [usageCopy objectForKeyedSubscript:v13];
        [v14 doubleValue];
        v16 = v15;

        v17 = [countsCopy objectForKeyedSubscript:v13];
        unsignedIntegerValue = [v17 unsignedIntegerValue];

        if (unsignedIntegerValue)
        {
          v19 = v16 / unsignedIntegerValue;
          if (!v9 || v19 < v11)
          {
            v20 = v13;

            v9 = v20;
            v11 = v19;
          }
        }
      }

      v8 = [usageCopy countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = usageCopy;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v34;
    v26 = 0.0;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v33 + 1) + 8 * j);
        if (([v28 isEqualToDate:{v9, v33}] & 1) == 0)
        {
          v29 = [v21 objectForKeyedSubscript:v28];
          [v29 doubleValue];
          v26 = v26 + v30;

          v31 = [countsCopy objectForKeyedSubscript:v28];
          v24 = (v24 + [v31 unsignedIntegerValue]);
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v23);

    if (v24)
    {
      v24 = [[OSAStabilityRate alloc] initWithAppUptime:v24 crashCount:v26 / 3600.0];
    }
  }

  else
  {

    v24 = 0;
  }

  return v24;
}

- (BOOL)isValidBundleID:(id)d
{
  dCopy = d;
  v4 = [NSMutableSet setWithObjects:@"com.apple.AirPlayUIAgent", @"com.apple.AppStoreDaemon.StoreUIService", @"com.apple.BluetoothUIServer", @"com.apple.CoreLocationAgent", @"com.apple.Diagnostics", @"com.apple.DiskImageMounter", @"com.apple.FileProviderUI.ServerAuthUIExtension", @"com.apple.FindMyMacMessenger", @"com.apple.mobileslideshow.photospicker", @"com.apple.SecurityAgent", @"com.apple.ssinvitationagent", @"com.apple.systemevents", @"com.apple.tv.TVNotificationContentExtension", @"com.apple.universalcontrol", @"com.apple.UserNotificationCenter", @"com.apple.VoiceMemos.VoiceMemosShareExtension", @"com.apple.VoiceOver", @"com.apple.wifi.WiFiAgent", 0];
  [v4 addObjectsFromArray:&off_100027418];
  if (dCopy && ([v4 containsObject:dCopy] & 1) == 0)
  {
    v5 = [dCopy containsString:@"/"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)baselineCrashCount
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"stability-monitor.baselineCrashCount"];

  return v3;
}

+ (id)baselineUptime
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"stability-monitor.baselineUptime"];

  return v3;
}

+ (id)baselineVersions
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"stability-monitor.baselineVersions"];

  return v3;
}

- (id)loadParameterForKey:(id)key
{
  keyCopy = key;
  v5 = +[OSASystemConfiguration sharedInstance];
  buildVersion = [v5 buildVersion];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v20[0] = buildVersion;
  v20[1] = @"default";
  v7 = [NSArray arrayWithObjects:v20 count:2, 0];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 objectForKeyedSubscript:keyCopy];
            if (v13)
            {
              v14 = v13;

              goto LABEL_13;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (BOOL)isRollbackEnabledForBundleID:(id)d
{
  dCopy = d;
  v5 = [(OSAStabilityMonitor *)self loadParameterForKey:@"enabledBundleIDs"];
  v6 = [v5 containsObject:dCopy];

  return v6;
}

- (BOOL)excludeThirdParty
{
  v2 = [(OSAStabilityMonitor *)self loadParameterForKey:@"excludeThirdParty"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end
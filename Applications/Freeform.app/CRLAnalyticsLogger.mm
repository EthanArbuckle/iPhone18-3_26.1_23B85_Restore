@interface CRLAnalyticsLogger
+ (id)loggerWithDomain:(id)domain;
+ (void)sendEventInDomain:(id)domain lazily:(BOOL)lazily eventPayload:(id)payload;
- (CRLAnalyticsLogger)initWithDomain:(id)domain;
- (NSString)domain;
- (id)p_eventPayloadFromPayload:(id)payload;
- (void)p_loadCoreAnalyticsIfNeeded;
- (void)postNotificationForEventPayload:(id)payload;
- (void)sendEventLazily:(BOOL)lazily eventPayload:(id)payload;
@end

@implementation CRLAnalyticsLogger

- (void)p_loadCoreAnalyticsIfNeeded
{
  if (qword_101A35240 != -1)
  {
    sub_100044348();
  }
}

- (NSString)domain
{
  if ([(CRLAnalyticsLogger *)self recalculateDomain])
  {
    baseDomain = [(CRLAnalyticsLogger *)self baseDomain];
    v4 = [[NSString alloc] initWithFormat:@"com.apple.freeform.%@", baseDomain];
    [(CRLAnalyticsLogger *)self setCachedFullDomain:v4];

    [(CRLAnalyticsLogger *)self setRecalculateDomain:0];
  }

  return [(CRLAnalyticsLogger *)self cachedFullDomain];
}

+ (id)loggerWithDomain:(id)domain
{
  domainCopy = domain;
  v4 = [objc_alloc(objc_opt_class()) initWithDomain:domainCopy];

  return v4;
}

- (CRLAnalyticsLogger)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = CRLAnalyticsLogger;
  v6 = [(CRLAnalyticsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseDomain, domain);
    v7->_recalculateDomain = 1;
  }

  return v7;
}

- (id)p_eventPayloadFromPayload:(id)payload
{
  payloadCopy = payload;
  v3 = +[NSBundle mainBundle];
  infoDictionary = [v3 infoDictionary];
  v5 = [infoDictionary objectForKey:@"CFBundleName"];

  lowercaseString = [v5 lowercaseString];

  v46[0] = @"bundleID";
  v7 = +[NSBundle mainBundle];
  bundleIdentifier = [v7 bundleIdentifier];
  v47[0] = bundleIdentifier;
  v47[1] = lowercaseString;
  v30 = lowercaseString;
  v46[1] = @"appName";
  v46[2] = @"appVersion";
  v9 = +[NSBundle mainBundle];
  infoDictionary2 = [v9 infoDictionary];
  v11 = [infoDictionary2 objectForKey:@"CFBundleShortVersionString"];
  v47[2] = v11;
  v46[3] = @"appBuild";
  v12 = +[NSBundle mainBundle];
  v13 = [v12 objectForInfoDictionaryKey:kCFBundleVersionKey];
  v47[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:4];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v29 = v14;
  obj = [v14 allKeys];
  v15 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      v18 = 0;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [payloadCopy objectForKeyedSubscript:*(*(&v33 + 1) + 8 * v18)];

        if (v19)
        {
          v20 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101386310();
          }

          v21 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v38 = v20;
            v39 = 2082;
            v40 = "[CRLAnalyticsLogger p_eventPayloadFromPayload:]";
            v41 = 2082;
            v42 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnalyticsLogger.m";
            v43 = 1024;
            v44 = 105;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Duplicate key found in Core Analytics event payload, added value may be overridden.", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101386338();
          }

          v22 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v25 = v22;
            v26 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v38 = v20;
            v39 = 2114;
            v40 = v26;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v23 = [NSString stringWithUTF8String:"[CRLAnalyticsLogger p_eventPayloadFromPayload:]"];
          v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAnalyticsLogger.m"];
          [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:105 isFatal:0 description:"Duplicate key found in Core Analytics event payload, added value may be overridden."];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v16);
  }

  v27 = [NSMutableDictionary dictionaryWithDictionary:payloadCopy];
  [v27 addEntriesFromDictionary:v29];

  return v27;
}

- (void)sendEventLazily:(BOOL)lazily eventPayload:(id)payload
{
  lazilyCopy = lazily;
  payloadCopy = payload;
  if ([(CRLAnalyticsLogger *)self canLogAnalytics])
  {
    [(CRLAnalyticsLogger *)self postNotificationForEventPayload:payloadCopy];
    [(CRLAnalyticsLogger *)self p_loadCoreAnalyticsIfNeeded];
    [(CRLAnalyticsLogger *)self setRecalculateDomain:1];
    domain = [(CRLAnalyticsLogger *)self domain];
    v8 = [(CRLAnalyticsLogger *)self p_eventPayloadFromPayload:payloadCopy];
    v9 = v8;
    if (lazilyCopy && off_101A35258)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1004EC748;
      v10[3] = &unk_101869DB0;
      v10[4] = v8;
      off_101A35258(domain, v10);
    }

    else if (off_101A35250)
    {
      off_101A35250(domain, v8);
    }
  }
}

- (void)postNotificationForEventPayload:(id)payload
{
  v6 = [payload mutableCopy];
  baseDomain = [(CRLAnalyticsLogger *)self baseDomain];
  [v6 setObject:baseDomain forKeyedSubscript:@"CRLAnalyticsLoggerEventLoggedNotificationEventDomainKey"];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"CRLAnalyticsLoggerEventLoggedNotification" object:self userInfo:v6];
}

+ (void)sendEventInDomain:(id)domain lazily:(BOOL)lazily eventPayload:(id)payload
{
  lazilyCopy = lazily;
  payloadCopy = payload;
  v9 = [self loggerWithDomain:domain];
  [v9 sendEventLazily:lazilyCopy eventPayload:payloadCopy];
}

@end
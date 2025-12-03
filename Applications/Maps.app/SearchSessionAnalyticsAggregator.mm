@interface SearchSessionAnalyticsAggregator
+ (id)sharedAggregator;
- (BOOL)isAllowedSessionAnalytic:(id)analytic;
- (id)collectedAnalytics;
- (void)collectSearchSessionAnalytics:(id)analytics;
@end

@implementation SearchSessionAnalyticsAggregator

- (BOOL)isAllowedSessionAnalytic:(id)analytic
{
  analyticCopy = analytic;
  action = [analyticCopy action];
  v5 = 0;
  if (action <= 2006)
  {
    if (((action - 1001) > 0x2F || ((1 << (action + 23)) & 0x9F0000030209) == 0) && (action > 8 || ((1 << action) & 0x186) == 0))
    {
      goto LABEL_15;
    }

LABEL_14:
    v5 = 1;
    goto LABEL_15;
  }

  if (action > 2197)
  {
    if ((action - 9036) >= 2 && action != 2198)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((action - 2007) <= 0x18 && ((1 << (action + 41)) & 0x1000003) != 0 || action == 2099)
  {
    goto LABEL_14;
  }

LABEL_15:
  target = [analyticCopy target];

  v7 = 0;
  if (target <= 501)
  {
    if ((target - 101) > 4 || target == 103)
    {
      return v5 & v7;
    }

LABEL_23:
    v7 = 1;
    return v5 & v7;
  }

  if ((target - 502) <= 4 && ((1 << (target + 10)) & 0x13) != 0 || target == 1011 || target == 1009)
  {
    goto LABEL_23;
  }

  return v5 & v7;
}

- (void)collectSearchSessionAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_sessionUserActionMetadata)
  {
    v6 = objc_alloc_init(GEOSessionUserActionMetadata);
    sessionUserActionMetadata = selfCopy->_sessionUserActionMetadata;
    selfCopy->_sessionUserActionMetadata = v6;

    if (GEOConfigGetUInteger() > 0x63)
    {
      UInteger = 100;
    }

    else
    {
      UInteger = GEOConfigGetUInteger();
    }

    selfCopy->_maxCount = UInteger;
  }

  if ([(SearchSessionAnalyticsAggregator *)selfCopy isAllowedSessionAnalytic:analyticsCopy])
  {
    -[GEOSessionUserActionMetadata captureSearchAction:searchTarget:maxCountToMaintain:](selfCopy->_sessionUserActionMetadata, "captureSearchAction:searchTarget:maxCountToMaintain:", [analyticsCopy action], objc_msgSend(analyticsCopy, "target"), selfCopy->_maxCount);
  }

  else
  {
    v9 = sub_100067540();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [analyticsCopy debugDescription];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SearchSessionAnalyticsAggregator is not allowed to log : %@", &v11, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)collectedAnalytics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionUserActionMetadata = [(GEOSessionUserActionMetadata *)selfCopy->_sessionUserActionMetadata sessionUserActionMetadata];
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"YES";
    if (!sessionUserActionMetadata)
    {
      v5 = @"NO";
    }

    v6 = v5;
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SearchSessionAnalyticsAggregator has analytis : %@", &v9, 0xCu);
  }

  if (!sessionUserActionMetadata)
  {
    sessionUserActionMetadata = selfCopy->_sessionUserActionMetadata;
    selfCopy->_sessionUserActionMetadata = 0;
  }

  objc_sync_exit(selfCopy);

  return sessionUserActionMetadata;
}

+ (id)sharedAggregator
{
  if (qword_10195F348 != -1)
  {
    dispatch_once(&qword_10195F348, &stru_101655C78);
  }

  v3 = qword_10195F340;

  return v3;
}

@end
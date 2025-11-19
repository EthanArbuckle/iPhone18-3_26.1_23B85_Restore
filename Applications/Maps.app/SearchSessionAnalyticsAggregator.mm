@interface SearchSessionAnalyticsAggregator
+ (id)sharedAggregator;
- (BOOL)isAllowedSessionAnalytic:(id)a3;
- (id)collectedAnalytics;
- (void)collectSearchSessionAnalytics:(id)a3;
@end

@implementation SearchSessionAnalyticsAggregator

- (BOOL)isAllowedSessionAnalytic:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  v5 = 0;
  if (v4 <= 2006)
  {
    if (((v4 - 1001) > 0x2F || ((1 << (v4 + 23)) & 0x9F0000030209) == 0) && (v4 > 8 || ((1 << v4) & 0x186) == 0))
    {
      goto LABEL_15;
    }

LABEL_14:
    v5 = 1;
    goto LABEL_15;
  }

  if (v4 > 2197)
  {
    if ((v4 - 9036) >= 2 && v4 != 2198)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v4 - 2007) <= 0x18 && ((1 << (v4 + 41)) & 0x1000003) != 0 || v4 == 2099)
  {
    goto LABEL_14;
  }

LABEL_15:
  v6 = [v3 target];

  v7 = 0;
  if (v6 <= 501)
  {
    if ((v6 - 101) > 4 || v6 == 103)
    {
      return v5 & v7;
    }

LABEL_23:
    v7 = 1;
    return v5 & v7;
  }

  if ((v6 - 502) <= 4 && ((1 << (v6 + 10)) & 0x13) != 0 || v6 == 1011 || v6 == 1009)
  {
    goto LABEL_23;
  }

  return v5 & v7;
}

- (void)collectSearchSessionAnalytics:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_sessionUserActionMetadata)
  {
    v6 = objc_alloc_init(GEOSessionUserActionMetadata);
    sessionUserActionMetadata = v5->_sessionUserActionMetadata;
    v5->_sessionUserActionMetadata = v6;

    if (GEOConfigGetUInteger() > 0x63)
    {
      UInteger = 100;
    }

    else
    {
      UInteger = GEOConfigGetUInteger();
    }

    v5->_maxCount = UInteger;
  }

  if ([(SearchSessionAnalyticsAggregator *)v5 isAllowedSessionAnalytic:v4])
  {
    -[GEOSessionUserActionMetadata captureSearchAction:searchTarget:maxCountToMaintain:](v5->_sessionUserActionMetadata, "captureSearchAction:searchTarget:maxCountToMaintain:", [v4 action], objc_msgSend(v4, "target"), v5->_maxCount);
  }

  else
  {
    v9 = sub_100067540();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 debugDescription];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SearchSessionAnalyticsAggregator is not allowed to log : %@", &v11, 0xCu);
    }
  }

  objc_sync_exit(v5);
}

- (id)collectedAnalytics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(GEOSessionUserActionMetadata *)v2->_sessionUserActionMetadata sessionUserActionMetadata];
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"YES";
    if (!v3)
    {
      v5 = @"NO";
    }

    v6 = v5;
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SearchSessionAnalyticsAggregator has analytis : %@", &v9, 0xCu);
  }

  if (!v3)
  {
    sessionUserActionMetadata = v2->_sessionUserActionMetadata;
    v2->_sessionUserActionMetadata = 0;
  }

  objc_sync_exit(v2);

  return v3;
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
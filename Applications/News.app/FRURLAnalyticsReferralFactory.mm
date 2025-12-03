@interface FRURLAnalyticsReferralFactory
- (FRURLAnalyticsReferralFactory)init;
- (FRURLAnalyticsReferralFactory)initWithAppActivityMonitor:(id)monitor;
- (id)_extractWidgetEngagementFromReferralURL:(id)l;
- (id)_removeAMSTokensFromUrl:(id)url;
- (id)analyticsReferralForURL:(id)l sourceApplication:(id)application;
@end

@implementation FRURLAnalyticsReferralFactory

- (FRURLAnalyticsReferralFactory)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRURLAnalyticsReferralFactory init]";
    v8 = 2080;
    v9 = "FRURLAnalyticsReferralFactory.m";
    v10 = 1024;
    v11 = 25;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRURLAnalyticsReferralFactory init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRURLAnalyticsReferralFactory)initWithAppActivityMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (!monitorCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068884();
  }

  v9.receiver = self;
  v9.super_class = FRURLAnalyticsReferralFactory;
  v6 = [(FRURLAnalyticsReferralFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appActivityMonitor, monitor);
  }

  return v7;
}

- (id)analyticsReferralForURL:(id)l sourceApplication:(id)application
{
  lCopy = l;
  applicationCopy = application;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068948();
  }

  if ([lCopy nss_isNewsURL])
  {
    fr_campaignID = [lCopy fr_campaignID];
    fr_campaignType = [lCopy fr_campaignType];
    fr_creativeID = [lCopy fr_creativeID];
    v11 = [(FRURLAnalyticsReferralFactory *)self _removeAMSTokensFromUrl:lCopy];
    absoluteString = [v11 absoluteString];

    v12 = applicationCopy;
    fr_widgetModeGroupID = [lCopy fr_widgetModeGroupID];
    v14 = [v12 isEqualToString:FCNotificationMarketingExtensionBundleIdentifier];
    v15 = [(FRURLAnalyticsReferralFactory *)self _extractWidgetEngagementFromReferralURL:lCopy];
    fr_isFeldsparReferableURL = [lCopy fr_isFeldsparReferableURL];
    v33 = fr_creativeID;
    v34 = fr_campaignID;
    v32 = fr_campaignType;
    if ([lCopy fr_articleOpenedFrom] == 2)
    {
      v16 = 0;
      v17 = 12;
    }

    else if ([lCopy fr_isFromSafariSearchWithSourceApplication:v12])
    {
      v16 = 0;
      v17 = 9;
    }

    else if ([fr_campaignID isEqualToString:NSSSafariSearchCampaignID])
    {
      v16 = 0;
      v17 = 8;
    }

    else
    {
      if (v14)
      {
        v17 = 3;
      }

      else
      {
        v17 = 4;
      }

      v16 = v14;
    }

    appActivityMonitor = [(FRURLAnalyticsReferralFactory *)self appActivityMonitor];
    appSessionStartReferral = [appActivityMonitor appSessionStartReferral];

    referringURL = [appSessionStartReferral referringURL];
    v22 = [referringURL isEqual:absoluteString];

    if (v22)
    {
      v18 = appSessionStartReferral;
      v24 = v33;
      v23 = v34;
      v25 = v32;
    }

    else
    {
      v28 = v17;
      v29 = v16;
      v24 = v33;
      LOBYTE(v27) = fr_isFeldsparReferableURL;
      v23 = v34;
      v25 = v32;
      v18 = [[FRAnalyticsReferral alloc] initWithUserActivityType:0 creativeID:v33 campaignID:v34 campaignType:v32 referringApplication:v12 referringURL:absoluteString appOpenedByUserActivity:v27 widgetModeGroupID:fr_widgetModeGroupID widgetEngagement:v15 appSessionStartMethod:v28 appSessionStartNotificationType:v29];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_extractWidgetEngagementFromReferralURL:(id)l
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068A0C();
  }

  if (([lCopy nss_isNewsURL] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068AD0();
  }

  fr_widgetEngagementFileURL = [lCopy fr_widgetEngagementFileURL];
  if (fr_widgetEngagementFileURL)
  {
    v5 = [[NSData alloc] initWithContentsOfURL:fr_widgetEngagementFileURL];
    if (v5)
    {
      v6 = [[NTPBWidgetEngagement alloc] initWithData:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_removeAMSTokensFromUrl:(id)url
{
  urlCopy = url;
  v4 = [[NSURLComponents alloc] initWithURL:urlCopy resolvingAgainstBaseURL:0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D040;
  v10[3] = &unk_1000C19E8;
  v11 = &off_1000CB328;
  v5 = [NSPredicate predicateWithBlock:v10];
  queryItems = [v4 queryItems];
  v7 = [queryItems filteredArrayUsingPredicate:v5];
  [v4 setQueryItems:v7];

  v8 = [v4 URL];

  return v8;
}

@end
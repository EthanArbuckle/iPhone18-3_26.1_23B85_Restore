@interface FRURLAnalyticsReferralFactory
- (FRURLAnalyticsReferralFactory)init;
- (FRURLAnalyticsReferralFactory)initWithAppActivityMonitor:(id)a3;
- (id)_extractWidgetEngagementFromReferralURL:(id)a3;
- (id)_removeAMSTokensFromUrl:(id)a3;
- (id)analyticsReferralForURL:(id)a3 sourceApplication:(id)a4;
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

- (FRURLAnalyticsReferralFactory)initWithAppActivityMonitor:(id)a3
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068884();
  }

  v9.receiver = self;
  v9.super_class = FRURLAnalyticsReferralFactory;
  v6 = [(FRURLAnalyticsReferralFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appActivityMonitor, a3);
  }

  return v7;
}

- (id)analyticsReferralForURL:(id)a3 sourceApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068948();
  }

  if ([v6 nss_isNewsURL])
  {
    v8 = [v6 fr_campaignID];
    v9 = [v6 fr_campaignType];
    v10 = [v6 fr_creativeID];
    v11 = [(FRURLAnalyticsReferralFactory *)self _removeAMSTokensFromUrl:v6];
    v31 = [v11 absoluteString];

    v12 = v7;
    v13 = [v6 fr_widgetModeGroupID];
    v14 = [v12 isEqualToString:FCNotificationMarketingExtensionBundleIdentifier];
    v15 = [(FRURLAnalyticsReferralFactory *)self _extractWidgetEngagementFromReferralURL:v6];
    v30 = [v6 fr_isFeldsparReferableURL];
    v33 = v10;
    v34 = v8;
    v32 = v9;
    if ([v6 fr_articleOpenedFrom] == 2)
    {
      v16 = 0;
      v17 = 12;
    }

    else if ([v6 fr_isFromSafariSearchWithSourceApplication:v12])
    {
      v16 = 0;
      v17 = 9;
    }

    else if ([v8 isEqualToString:NSSSafariSearchCampaignID])
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

    v19 = [(FRURLAnalyticsReferralFactory *)self appActivityMonitor];
    v20 = [v19 appSessionStartReferral];

    v21 = [v20 referringURL];
    v22 = [v21 isEqual:v31];

    if (v22)
    {
      v18 = v20;
      v24 = v33;
      v23 = v34;
      v25 = v32;
    }

    else
    {
      v28 = v17;
      v29 = v16;
      v24 = v33;
      LOBYTE(v27) = v30;
      v23 = v34;
      v25 = v32;
      v18 = [[FRAnalyticsReferral alloc] initWithUserActivityType:0 creativeID:v33 campaignID:v34 campaignType:v32 referringApplication:v12 referringURL:v31 appOpenedByUserActivity:v27 widgetModeGroupID:v13 widgetEngagement:v15 appSessionStartMethod:v28 appSessionStartNotificationType:v29];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_extractWidgetEngagementFromReferralURL:(id)a3
{
  v3 = a3;
  if (!v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068A0C();
  }

  if (([v3 nss_isNewsURL] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100068AD0();
  }

  v4 = [v3 fr_widgetEngagementFileURL];
  if (v4)
  {
    v5 = [[NSData alloc] initWithContentsOfURL:v4];
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

- (id)_removeAMSTokensFromUrl:(id)a3
{
  v3 = a3;
  v4 = [[NSURLComponents alloc] initWithURL:v3 resolvingAgainstBaseURL:0];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D040;
  v10[3] = &unk_1000C19E8;
  v11 = &off_1000CB328;
  v5 = [NSPredicate predicateWithBlock:v10];
  v6 = [v4 queryItems];
  v7 = [v6 filteredArrayUsingPredicate:v5];
  [v4 setQueryItems:v7];

  v8 = [v4 URL];

  return v8;
}

@end
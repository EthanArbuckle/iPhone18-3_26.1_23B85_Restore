@interface FTEngagementURLProvider
- (FTEngagementURLProvider)init;
- (FTEngagementURLProvider)initWithAvailabilityMonitor:(id)a3;
- (id)URLForEngagement:(id)a3 event:(id)a4 trackableWidgetState:(id)a5 prefetchAssetsByRemoteURL:(id)a6 sharedDirectoryFileURL:(id)a7;
@end

@implementation FTEngagementURLProvider

- (FTEngagementURLProvider)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTEngagementURLProvider init]";
    v8 = 2080;
    v9 = "FTEngagementURLProvider.m";
    v10 = 1024;
    v11 = 30;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTEngagementURLProvider init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTEngagementURLProvider)initWithAvailabilityMonitor:(id)a3
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009FFB8();
  }

  v9.receiver = self;
  v9.super_class = FTEngagementURLProvider;
  v6 = [(FTEngagementURLProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_availabilityMonitor, a3);
  }

  return v7;
}

- (id)URLForEngagement:(id)a3 event:(id)a4 trackableWidgetState:(id)a5 prefetchAssetsByRemoteURL:(id)a6 sharedDirectoryFileURL:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0098();
  }

  v17 = [(FTEngagementURLProvider *)self availabilityMonitor];
  v18 = [v17 isNewsAvailable];

  v19 = [v12 baseNewsURL];
  v20 = v19;
  v21 = 0;
  if (v18 && v19)
  {
    v22 = [v12 openInNewsReferralItemWithTrackableWidgetState:v14 assetHandlesByRemoteURL:v15];
    v34 = v22;
    v35 = v15;
    if (v22)
    {
      v23 = v22;
      v24 = [v12 openInNewsReferralItemQueryItemName];
      v25 = v24;
      v26 = &__NSArray0__struct;
      if (!v16 || !v24)
      {
        v28 = v24;
LABEL_15:

LABEL_17:
        v29 = [v14 fetchInfoForVisibleResults];
        v30 = [v29 todaySourceIdentifier];
        v31 = [v29 appConfigTreatmentID];
        v21 = [v20 ft_referralURLWithSourceIdentifier:v30 appConfigTreatmentID:v31 widgetEngagement:v13 otherQueryItems:v26 sharedDirectoryFileURL:v16];

        v15 = v35;
        goto LABEL_18;
      }

      v33 = [[FRNewsReferralItemEncoder alloc] initWithReferralItem:v23 sharedDirectoryFileURL:v16];
      v27 = [(FRNewsReferralItemEncoder *)v33 encodeQueryValueWithError:0];
      if (v27)
      {
        v28 = [[NSURLQueryItem alloc] initWithName:v25 value:v27];
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        v36 = v28;
        v26 = [NSArray arrayWithObjects:&v36 count:1];
        goto LABEL_15;
      }
    }

    v26 = &__NSArray0__struct;
    goto LABEL_17;
  }

LABEL_18:

  return v21;
}

@end
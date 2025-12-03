@interface FTEngagementURLProvider
- (FTEngagementURLProvider)init;
- (FTEngagementURLProvider)initWithAvailabilityMonitor:(id)monitor;
- (id)URLForEngagement:(id)engagement event:(id)event trackableWidgetState:(id)state prefetchAssetsByRemoteURL:(id)l sharedDirectoryFileURL:(id)rL;
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

- (FTEngagementURLProvider)initWithAvailabilityMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (!monitorCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C79B8();
  }

  v9.receiver = self;
  v9.super_class = FTEngagementURLProvider;
  v6 = [(FTEngagementURLProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_availabilityMonitor, monitor);
  }

  return v7;
}

- (id)URLForEngagement:(id)engagement event:(id)event trackableWidgetState:(id)state prefetchAssetsByRemoteURL:(id)l sharedDirectoryFileURL:(id)rL
{
  engagementCopy = engagement;
  eventCopy = event;
  stateCopy = state;
  lCopy = l;
  rLCopy = rL;
  if (!engagementCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7A98();
  }

  availabilityMonitor = [(FTEngagementURLProvider *)self availabilityMonitor];
  isNewsAvailable = [availabilityMonitor isNewsAvailable];

  baseNewsURL = [engagementCopy baseNewsURL];
  v20 = baseNewsURL;
  v21 = 0;
  if (isNewsAvailable && baseNewsURL)
  {
    v22 = [engagementCopy openInNewsReferralItemWithTrackableWidgetState:stateCopy assetHandlesByRemoteURL:lCopy];
    v34 = v22;
    v35 = lCopy;
    if (v22)
    {
      v23 = v22;
      openInNewsReferralItemQueryItemName = [engagementCopy openInNewsReferralItemQueryItemName];
      v25 = openInNewsReferralItemQueryItemName;
      v26 = &__NSArray0__struct;
      if (!rLCopy || !openInNewsReferralItemQueryItemName)
      {
        v28 = openInNewsReferralItemQueryItemName;
LABEL_15:

LABEL_17:
        fetchInfoForVisibleResults = [stateCopy fetchInfoForVisibleResults];
        todaySourceIdentifier = [fetchInfoForVisibleResults todaySourceIdentifier];
        appConfigTreatmentID = [fetchInfoForVisibleResults appConfigTreatmentID];
        v21 = [v20 ft_referralURLWithSourceIdentifier:todaySourceIdentifier appConfigTreatmentID:appConfigTreatmentID widgetEngagement:eventCopy otherQueryItems:v26 sharedDirectoryFileURL:rLCopy];

        lCopy = v35;
        goto LABEL_18;
      }

      v33 = [[FRNewsReferralItemEncoder alloc] initWithReferralItem:v23 sharedDirectoryFileURL:rLCopy];
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
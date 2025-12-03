@interface FTOpenArbitraryURLEngagementDescriptor
- (FTOpenArbitraryURLEngagementDescriptor)init;
- (FTOpenArbitraryURLEngagementDescriptor)initWithURL:(id)l engagementReporter:(id)reporter;
- (id)openInNewsReferralItemWithTrackableWidgetState:(id)state assetHandlesByRemoteURL:(id)l;
- (id)userEngagementWithWidgetEventTracker:(id)tracker trackableWidgetState:(id)state;
@end

@implementation FTOpenArbitraryURLEngagementDescriptor

- (FTOpenArbitraryURLEngagementDescriptor)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTOpenArbitraryURLEngagementDescriptor init]";
    v8 = 2080;
    v9 = "FTOpenArbitraryURLEngagementDescriptor.m";
    v10 = 1024;
    v11 = 24;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTOpenArbitraryURLEngagementDescriptor init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTOpenArbitraryURLEngagementDescriptor)initWithURL:(id)l engagementReporter:(id)reporter
{
  lCopy = l;
  reporterCopy = reporter;
  if (!lCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009ED30();
    if (reporterCopy)
    {
      goto LABEL_6;
    }
  }

  else if (reporterCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009EDF4();
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = FTOpenArbitraryURLEngagementDescriptor;
  v8 = [(FTOpenArbitraryURLEngagementDescriptor *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    targetURL = v8->_targetURL;
    v8->_targetURL = v9;

    v11 = [reporterCopy copy];
    reporter = v8->_reporter;
    v8->_reporter = v11;
  }

  return v8;
}

- (id)userEngagementWithWidgetEventTracker:(id)tracker trackableWidgetState:(id)state
{
  trackerCopy = tracker;
  stateCopy = state;
  if (!trackerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009EEB8();
    if (stateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009EF7C();
  }

LABEL_6:
  reporter = [(FTOpenArbitraryURLEngagementDescriptor *)self reporter];
  v9 = (reporter)[2](reporter, trackerCopy, stateCopy);

  return v9;
}

- (id)openInNewsReferralItemWithTrackableWidgetState:(id)state assetHandlesByRemoteURL:(id)l
{
  stateCopy = state;
  lCopy = l;
  if (!stateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009F040();
  }

  return 0;
}

@end
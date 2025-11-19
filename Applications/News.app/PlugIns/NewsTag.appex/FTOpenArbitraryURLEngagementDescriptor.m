@interface FTOpenArbitraryURLEngagementDescriptor
- (FTOpenArbitraryURLEngagementDescriptor)init;
- (FTOpenArbitraryURLEngagementDescriptor)initWithURL:(id)a3 engagementReporter:(id)a4;
- (id)openInNewsReferralItemWithTrackableWidgetState:(id)a3 assetHandlesByRemoteURL:(id)a4;
- (id)userEngagementWithWidgetEventTracker:(id)a3 trackableWidgetState:(id)a4;
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

- (FTOpenArbitraryURLEngagementDescriptor)initWithURL:(id)a3 engagementReporter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009ED30();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
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
    v9 = [v6 copy];
    targetURL = v8->_targetURL;
    v8->_targetURL = v9;

    v11 = [v7 copy];
    reporter = v8->_reporter;
    v8->_reporter = v11;
  }

  return v8;
}

- (id)userEngagementWithWidgetEventTracker:(id)a3 trackableWidgetState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009EEB8();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009EF7C();
  }

LABEL_6:
  v8 = [(FTOpenArbitraryURLEngagementDescriptor *)self reporter];
  v9 = (v8)[2](v8, v6, v7);

  return v9;
}

- (id)openInNewsReferralItemWithTrackableWidgetState:(id)a3 assetHandlesByRemoteURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009F040();
  }

  return 0;
}

@end
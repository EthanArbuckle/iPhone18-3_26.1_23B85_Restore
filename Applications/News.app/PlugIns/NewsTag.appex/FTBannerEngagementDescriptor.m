@interface FTBannerEngagementDescriptor
+ (id)engagementDescriptorWithTargetURL:(id)a3;
- (FTBannerEngagementDescriptor)init;
@end

@implementation FTBannerEngagementDescriptor

- (FTBannerEngagementDescriptor)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTBannerEngagementDescriptor init]";
    v8 = 2080;
    v9 = "FTBannerEngagementDescriptor.m";
    v10 = 1024;
    v11 = 18;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTBannerEngagementDescriptor init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)engagementDescriptorWithTargetURL:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000FD0C;
  v7[3] = &unk_1000D7198;
  v8 = a3;
  v3 = v8;
  v4 = objc_retainBlock(v7);
  v5 = [[FTOpenArbitraryURLEngagementDescriptor alloc] initWithURL:v3 engagementReporter:v4];

  return v5;
}

@end
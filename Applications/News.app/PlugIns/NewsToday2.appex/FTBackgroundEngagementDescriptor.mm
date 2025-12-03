@interface FTBackgroundEngagementDescriptor
+ (id)engagementDescriptorWithTargetURL:(id)l;
- (FTBackgroundEngagementDescriptor)init;
@end

@implementation FTBackgroundEngagementDescriptor

- (FTBackgroundEngagementDescriptor)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTBackgroundEngagementDescriptor init]";
    v8 = 2080;
    v9 = "FTBackgroundEngagementDescriptor.m";
    v10 = 1024;
    v11 = 19;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTBackgroundEngagementDescriptor init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)engagementDescriptorWithTargetURL:(id)l
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001623C;
  v7[3] = &unk_10010BD78;
  lCopy = l;
  v3 = lCopy;
  v4 = objc_retainBlock(v7);
  v5 = [[FTOpenArbitraryURLEngagementDescriptor alloc] initWithURL:v3 engagementReporter:v4];

  return v5;
}

@end
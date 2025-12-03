@interface FTNonNewsModeProactiveWidgetEventTracker
+ (id)widgetEventTrackerWithMaxRowCount:(unint64_t)count;
- (FTNonNewsModeProactiveWidgetEventTracker)init;
@end

@implementation FTNonNewsModeProactiveWidgetEventTracker

- (FTNonNewsModeProactiveWidgetEventTracker)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTNonNewsModeProactiveWidgetEventTracker init]";
    v8 = 2080;
    v9 = "FTNonNewsModeProactiveWidgetEventTracker.m";
    v10 = 1024;
    v11 = 19;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTNonNewsModeProactiveWidgetEventTracker init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)widgetEventTrackerWithMaxRowCount:(unint64_t)count
{
  v3 = [[FTProactiveWidgetEventTracker alloc] initWithMaxRowCount:count trackedEvents:7];
  v4 = [[FTConditionalWidgetEventTracker alloc] initWithWidgetEventTracker:v3 predicate:&stru_1000D7058];

  return v4;
}

@end
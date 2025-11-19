@interface JSAMetricsAppLaunchEvent
+ (id)consumePendingLaunchEvent;
+ (void)createPendingLaunchEvent;
+ (void)markJSBootstrapEndTime;
+ (void)markJSBootstrapStartTime;
+ (void)markLaunchEndTime;
- (JSAMetricsAppLaunchEvent)init;
- (id)metricsDictionary;
@end

@implementation JSAMetricsAppLaunchEvent

- (JSAMetricsAppLaunchEvent)init
{
  v7.receiver = self;
  v7.super_class = JSAMetricsAppLaunchEvent;
  v2 = [(JSAMetricsAppLaunchEvent *)&v7 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    launchCorrelationKey = v2->_launchCorrelationKey;
    v2->_launchCorrelationKey = v4;
  }

  return v2;
}

+ (void)createPendingLaunchEvent
{
  if ((byte_CC088 & 1) == 0 && !qword_CC080)
  {
    qword_CC080 = objc_alloc_init(a1);

    _objc_release_x1();
  }
}

+ (id)consumePendingLaunchEvent
{
  v2 = qword_CC080;
  v3 = qword_CC080;
  byte_CC088 = 1;
  v4 = qword_CC080;
  qword_CC080 = 0;

  return v2;
}

+ (void)markJSBootstrapStartTime
{
  v2 = sub_803C();
  v3 = qword_CC080;

  [v3 setJsBootstrapStartTime:v2];
}

+ (void)markJSBootstrapEndTime
{
  v2 = sub_803C();
  v3 = qword_CC080;

  [v3 setJsBootstrapEndTime:v2];
}

+ (void)markLaunchEndTime
{
  v2 = sub_803C();
  v3 = qword_CC080;

  [v3 setLaunchEndTime:v2];
}

- (id)metricsDictionary
{
  if (qword_CC098 != -1)
  {
    sub_7F2F0();
  }

  v13[0] = @"launchCorrelationKey";
  v3 = [(JSAMetricsAppLaunchEvent *)self launchCorrelationKey];
  v14[0] = v3;
  v14[1] = &__kCFBooleanTrue;
  v13[1] = @"isAppLaunch";
  v13[2] = @"jsBootstrapStartTime";
  [(JSAMetricsAppLaunchEvent *)self jsBootstrapStartTime];
  v4 = [NSNumber numberWithDouble:?];
  v14[2] = v4;
  v13[3] = @"jsBootstrapEndTime";
  [(JSAMetricsAppLaunchEvent *)self jsBootstrapEndTime];
  v5 = [NSNumber numberWithDouble:?];
  v14[3] = v5;
  v13[4] = @"launchEndTime";
  [(JSAMetricsAppLaunchEvent *)self launchEndTime];
  v6 = [NSNumber numberWithDouble:?];
  v14[4] = v6;
  v13[5] = @"processStartTime";
  v7 = [NSNumber numberWithDouble:*&qword_CC090];
  v14[5] = v7;
  v13[6] = @"requiredBlockingBagLoad";
  v8 = [NSNumber numberWithBool:[(JSAMetricsAppLaunchEvent *)self requiredBlockingBagLoad]];
  v14[6] = v8;
  v13[7] = @"usedBootstrapFallback";
  v9 = [NSNumber numberWithBool:[(JSAMetricsAppLaunchEvent *)self usedBootstrapFallback]];
  v14[7] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];

  v11 = JSALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_7F304(v10, v11);
  }

  return v10;
}

@end
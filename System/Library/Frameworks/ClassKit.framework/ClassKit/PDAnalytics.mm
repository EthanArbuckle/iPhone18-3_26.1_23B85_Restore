@interface PDAnalytics
+ (id)dateFormatter;
- (AMSMetrics)metricsController;
- (BOOL)shouldRecordEvent;
- (BOOL)uuidNeedsRegeneration:(id)regeneration;
- (NSDictionary)baseValues;
- (PDAnalytics)init;
- (id)generateRotatingUUID:(id)d;
- (id)temporaryUserUUID:(id)d;
- (void)setupDnUStatusOniOS;
@end

@implementation PDAnalytics

+ (id)dateFormatter
{
  if (qword_10024D9D8 != -1)
  {
    dispatch_once(&qword_10024D9D8, &stru_1002044B8);
  }

  v3 = qword_10024D9D0;

  return v3;
}

- (PDAnalytics)init
{
  v5.receiver = self;
  v5.super_class = PDAnalytics;
  v2 = [(PDAnalytics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PDAnalytics *)v2 setupDnUStatusOniOS];
  }

  return v3;
}

- (NSDictionary)baseValues
{
  baseValues = self->_baseValues;
  if (!baseValues)
  {
    v13[0] = @"app";
    v4 = +[NSBundle mainBundle];
    bundleIdentifier = [v4 bundleIdentifier];
    v14[0] = bundleIdentifier;
    v13[1] = @"appVersion";
    v6 = +[NSBundle mainBundle];
    v7 = [v6 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    v14[1] = v7;
    v13[2] = @"isSharedIPad";
    v8 = [NSNumber numberWithBool:sub_10010AE4C()];
    v14[2] = v8;
    v13[3] = @"baseVersion";
    v9 = [NSNumber numberWithInt:1];
    v14[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
    v11 = self->_baseValues;
    self->_baseValues = v10;

    baseValues = self->_baseValues;
  }

  return baseValues;
}

- (AMSMetrics)metricsController
{
  metricsController = self->_metricsController;
  if (!metricsController)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [AMSMetrics alloc];
    v6 = sub_10004116C();
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    profile = [v9 profile];
    v11 = sub_10004116C();
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 8);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v5 initWithContainerID:profile bag:v14];
    v16 = self->_metricsController;
    self->_metricsController = v15;

    objc_autoreleasePoolPop(v4);
    metricsController = self->_metricsController;
  }

  return metricsController;
}

- (BOOL)shouldRecordEvent
{
  if (self->disableAnalyticsCollection)
  {
    return 0;
  }

  else
  {
    return [(PDAnalytics *)self optInToDnUiOS];
  }
}

- (void)setupDnUStatusOniOS
{
  [(PDAnalytics *)self setOptInToDnUiOS:DiagnosticLogSubmissionEnabled()];
  CLSInitLog();
  v3 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    optInToDnUiOS = [(PDAnalytics *)self optInToDnUiOS];
    v6 = @"DISABLED";
    if (optInToDnUiOS)
    {
      v6 = @"ENABLED";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "D&U results: %@", &v7, 0xCu);
  }
}

- (id)temporaryUserUUID:(id)d
{
  dCopy = d;
  v5 = sub_10016A49C(dCopy, @"PDRotatingAnalyticsUserID");
  if (!v5 || [(PDAnalytics *)self uuidNeedsRegeneration:v5])
  {
    v6 = [(PDAnalytics *)self generateRotatingUUID:dCopy];

    v5 = v6;
  }

  return v5;
}

- (id)generateRotatingUUID:(id)d
{
  dCopy = d;
  v4 = +[PDAnalytics dateFormatter];
  v5 = +[NSDate now];
  v6 = [v4 stringFromDate:v5];

  v7 = +[NSUUID UUID];
  uUIDString = [v7 UUIDString];
  v9 = [NSString stringWithFormat:@"%@*%@", v6, uUIDString];

  sub_10016A3F0(dCopy, v9, @"PDRotatingAnalyticsUserID");

  return v9;
}

- (BOOL)uuidNeedsRegeneration:(id)regeneration
{
  v3 = [regeneration componentsSeparatedByString:@"*"];
  v4 = [v3 objectAtIndex:0];

  v5 = +[PDAnalytics dateFormatter];
  v6 = [v5 dateFromString:v4];
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 isDateInToday:v6];

  return v8 ^ 1;
}

@end
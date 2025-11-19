@interface ATXUsageInsightsAppSessionEvent
+ (id)usageInsightsAppLaunchReasonFromBMAppInFocus:(id)a3;
- (ATXUsageInsightsAppSessionEvent)initWithBundleID:(id)a3 category:(unint64_t)a4 launchReason:(id)a5 startTime:(id)a6 endTime:(id)a7 duration:(double)a8;
- (ATXUsageInsightsAppSessionEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUsageInsightsAppSessionEvent

- (ATXUsageInsightsAppSessionEvent)initWithBundleID:(id)a3 category:(unint64_t)a4 launchReason:(id)a5 startTime:(id)a6 endTime:(id)a7 duration:(double)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = ATXUsageInsightsAppSessionEvent;
  v18 = [(ATXUsageInsightsAppSessionEvent *)&v24 init];
  if (v18)
  {
    v19 = [v14 copy];
    bundleID = v18->_bundleID;
    v18->_bundleID = v19;

    v18->_category = a4;
    v21 = [v15 copy];
    launchReason = v18->_launchReason;
    v18->_launchReason = v21;

    objc_storeStrong(&v18->_startTime, a6);
    objc_storeStrong(&v18->_endTime, a7);
    v18->_duration = a8;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(ATXUsageInsightsAppSessionEvent *)self bundleID];
  [v8 encodeObject:v4 forKey:@"bundleID"];

  [v8 encodeInteger:-[ATXUsageInsightsAppSessionEvent category](self forKey:{"category"), @"category"}];
  v5 = [(ATXUsageInsightsAppSessionEvent *)self launchReason];
  [v8 encodeObject:v5 forKey:@"launchReason"];

  v6 = [(ATXUsageInsightsAppSessionEvent *)self startTime];
  [v8 encodeObject:v6 forKey:@"startTime"];

  v7 = [(ATXUsageInsightsAppSessionEvent *)self endTime];
  [v8 encodeObject:v7 forKey:@"endTime"];

  [(ATXUsageInsightsAppSessionEvent *)self duration];
  [v8 encodeDouble:@"duration" forKey:?];
}

- (ATXUsageInsightsAppSessionEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v6 = [v4 decodeIntegerForKey:@"category"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
  [v4 decodeDoubleForKey:@"duration"];
  v11 = v10;

  v12 = [(ATXUsageInsightsAppSessionEvent *)self initWithBundleID:v5 category:v6 launchReason:v7 startTime:v8 endTime:v9 duration:v11];
  return v12;
}

+ (id)usageInsightsAppLaunchReasonFromBMAppInFocus:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 hasPrefix:@"com.apple.SpringBoard.transitionReason"])
    {
      v5 = [v4 componentsSeparatedByString:@"."];
      v6 = [v5 lastObject];
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = @"Unknown";
  }

  return v6;
}

@end
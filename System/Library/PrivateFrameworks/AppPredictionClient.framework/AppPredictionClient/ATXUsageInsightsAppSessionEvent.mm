@interface ATXUsageInsightsAppSessionEvent
+ (id)usageInsightsAppLaunchReasonFromBMAppInFocus:(id)focus;
- (ATXUsageInsightsAppSessionEvent)initWithBundleID:(id)d category:(unint64_t)category launchReason:(id)reason startTime:(id)time endTime:(id)endTime duration:(double)duration;
- (ATXUsageInsightsAppSessionEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUsageInsightsAppSessionEvent

- (ATXUsageInsightsAppSessionEvent)initWithBundleID:(id)d category:(unint64_t)category launchReason:(id)reason startTime:(id)time endTime:(id)endTime duration:(double)duration
{
  dCopy = d;
  reasonCopy = reason;
  timeCopy = time;
  endTimeCopy = endTime;
  v24.receiver = self;
  v24.super_class = ATXUsageInsightsAppSessionEvent;
  v18 = [(ATXUsageInsightsAppSessionEvent *)&v24 init];
  if (v18)
  {
    v19 = [dCopy copy];
    bundleID = v18->_bundleID;
    v18->_bundleID = v19;

    v18->_category = category;
    v21 = [reasonCopy copy];
    launchReason = v18->_launchReason;
    v18->_launchReason = v21;

    objc_storeStrong(&v18->_startTime, time);
    objc_storeStrong(&v18->_endTime, endTime);
    v18->_duration = duration;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleID = [(ATXUsageInsightsAppSessionEvent *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  [coderCopy encodeInteger:-[ATXUsageInsightsAppSessionEvent category](self forKey:{"category"), @"category"}];
  launchReason = [(ATXUsageInsightsAppSessionEvent *)self launchReason];
  [coderCopy encodeObject:launchReason forKey:@"launchReason"];

  startTime = [(ATXUsageInsightsAppSessionEvent *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"startTime"];

  endTime = [(ATXUsageInsightsAppSessionEvent *)self endTime];
  [coderCopy encodeObject:endTime forKey:@"endTime"];

  [(ATXUsageInsightsAppSessionEvent *)self duration];
  [coderCopy encodeDouble:@"duration" forKey:?];
}

- (ATXUsageInsightsAppSessionEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v6 = [coderCopy decodeIntegerForKey:@"category"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchReason"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
  [coderCopy decodeDoubleForKey:@"duration"];
  v11 = v10;

  v12 = [(ATXUsageInsightsAppSessionEvent *)self initWithBundleID:v5 category:v6 launchReason:v7 startTime:v8 endTime:v9 duration:v11];
  return v12;
}

+ (id)usageInsightsAppLaunchReasonFromBMAppInFocus:(id)focus
{
  focusCopy = focus;
  v4 = focusCopy;
  if (focusCopy)
  {
    if ([focusCopy hasPrefix:@"com.apple.SpringBoard.transitionReason"])
    {
      v5 = [v4 componentsSeparatedByString:@"."];
      lastObject = [v5 lastObject];
    }

    else
    {
      lastObject = v4;
    }
  }

  else
  {
    lastObject = @"Unknown";
  }

  return lastObject;
}

@end
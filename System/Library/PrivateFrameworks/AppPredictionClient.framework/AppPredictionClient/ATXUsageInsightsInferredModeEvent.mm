@interface ATXUsageInsightsInferredModeEvent
- (ATXUsageInsightsInferredModeEvent)initWithATXMode:(unint64_t)mode startTime:(id)time endTime:(id)endTime;
- (ATXUsageInsightsInferredModeEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUsageInsightsInferredModeEvent

- (ATXUsageInsightsInferredModeEvent)initWithATXMode:(unint64_t)mode startTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v14.receiver = self;
  v14.super_class = ATXUsageInsightsInferredModeEvent;
  v11 = [(ATXUsageInsightsInferredModeEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_atxMode = mode;
    objc_storeStrong(&v11->_startTime, time);
    objc_storeStrong(&v12->_endTime, endTime);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ATXUsageInsightsInferredModeEvent atxMode](self forKey:{"atxMode"), @"atxMode"}];
  startTime = [(ATXUsageInsightsInferredModeEvent *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"startTime"];

  endTime = [(ATXUsageInsightsInferredModeEvent *)self endTime];
  [coderCopy encodeObject:endTime forKey:@"endTime"];
}

- (ATXUsageInsightsInferredModeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"atxMode"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];

  v8 = [(ATXUsageInsightsInferredModeEvent *)self initWithATXMode:v5 startTime:v6 endTime:v7];
  return v8;
}

@end
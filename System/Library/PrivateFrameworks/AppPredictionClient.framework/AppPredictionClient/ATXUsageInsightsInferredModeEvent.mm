@interface ATXUsageInsightsInferredModeEvent
- (ATXUsageInsightsInferredModeEvent)initWithATXMode:(unint64_t)a3 startTime:(id)a4 endTime:(id)a5;
- (ATXUsageInsightsInferredModeEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUsageInsightsInferredModeEvent

- (ATXUsageInsightsInferredModeEvent)initWithATXMode:(unint64_t)a3 startTime:(id)a4 endTime:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ATXUsageInsightsInferredModeEvent;
  v11 = [(ATXUsageInsightsInferredModeEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_atxMode = a3;
    objc_storeStrong(&v11->_startTime, a4);
    objc_storeStrong(&v12->_endTime, a5);
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[ATXUsageInsightsInferredModeEvent atxMode](self forKey:{"atxMode"), @"atxMode"}];
  v5 = [(ATXUsageInsightsInferredModeEvent *)self startTime];
  [v4 encodeObject:v5 forKey:@"startTime"];

  v6 = [(ATXUsageInsightsInferredModeEvent *)self endTime];
  [v4 encodeObject:v6 forKey:@"endTime"];
}

- (ATXUsageInsightsInferredModeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"atxMode"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];

  v8 = [(ATXUsageInsightsInferredModeEvent *)self initWithATXMode:v5 startTime:v6 endTime:v7];
  return v8;
}

@end
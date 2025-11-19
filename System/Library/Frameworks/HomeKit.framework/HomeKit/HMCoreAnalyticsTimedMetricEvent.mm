@interface HMCoreAnalyticsTimedMetricEvent
- (NSNumber)duration;
- (id)durationData;
- (id)eventPayload;
- (void)finish;
- (void)start;
@end

@implementation HMCoreAnalyticsTimedMetricEvent

- (id)durationData
{
  v2 = [(HMCoreAnalyticsTimedMetricEvent *)self duration];
  if (v2)
  {
    v3 = -[HMCoreAnalyticsIntegerFieldData initWithName:integerValue:]([HMCoreAnalyticsIntegerFieldData alloc], "initWithName:integerValue:", @"eventDuration", [v2 integerValue]);
  }

  else
  {
    v3 = [[HMCoreAnalyticsFieldData alloc] initWithName:@"eventDuration"];
  }

  v4 = v3;

  return v4;
}

- (NSNumber)duration
{
  v3 = [(HMCoreAnalyticsTimedMetricEvent *)self startedDate];
  v4 = [(HMCoreAnalyticsTimedMetricEvent *)self finishedDate];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    [v4 timeIntervalSinceDate:v3];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:(v7 * 1000.0)];
  }

  return v6;
}

- (id)eventPayload
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(HMCoreAnalyticsTimedMetricEvent *)self durationData];
  v12.receiver = self;
  v12.super_class = HMCoreAnalyticsTimedMetricEvent;
  v4 = [(HMCoreAnalyticsMetricEvent *)&v12 eventPayload];
  v5 = [v4 mutableCopy];

  v6 = [v3 name];
  v13 = v6;
  v7 = [v3 value];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v5 addEntriesFromDictionary:v8];

  v9 = [v5 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)finish
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(HMCoreAnalyticsTimedMetricEvent *)self setFinishedDate:v3];
}

- (void)start
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(HMCoreAnalyticsTimedMetricEvent *)self setStartedDate:v3];
}

@end
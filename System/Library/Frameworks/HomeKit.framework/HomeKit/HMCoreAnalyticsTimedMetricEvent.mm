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
  duration = [(HMCoreAnalyticsTimedMetricEvent *)self duration];
  if (duration)
  {
    v3 = -[HMCoreAnalyticsIntegerFieldData initWithName:integerValue:]([HMCoreAnalyticsIntegerFieldData alloc], "initWithName:integerValue:", @"eventDuration", [duration integerValue]);
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
  startedDate = [(HMCoreAnalyticsTimedMetricEvent *)self startedDate];
  finishedDate = [(HMCoreAnalyticsTimedMetricEvent *)self finishedDate];
  v5 = finishedDate;
  v6 = 0;
  if (startedDate && finishedDate)
  {
    [finishedDate timeIntervalSinceDate:startedDate];
    v6 = [MEMORY[0x1E696AD98] numberWithInt:(v7 * 1000.0)];
  }

  return v6;
}

- (id)eventPayload
{
  v14[1] = *MEMORY[0x1E69E9840];
  durationData = [(HMCoreAnalyticsTimedMetricEvent *)self durationData];
  v12.receiver = self;
  v12.super_class = HMCoreAnalyticsTimedMetricEvent;
  eventPayload = [(HMCoreAnalyticsMetricEvent *)&v12 eventPayload];
  v5 = [eventPayload mutableCopy];

  name = [durationData name];
  v13 = name;
  value = [durationData value];
  v14[0] = value;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v5 addEntriesFromDictionary:v8];

  v9 = [v5 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)finish
{
  date = [MEMORY[0x1E695DF00] date];
  [(HMCoreAnalyticsTimedMetricEvent *)self setFinishedDate:date];
}

- (void)start
{
  date = [MEMORY[0x1E695DF00] date];
  [(HMCoreAnalyticsTimedMetricEvent *)self setStartedDate:date];
}

@end
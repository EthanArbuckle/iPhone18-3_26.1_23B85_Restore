@interface HMCoreAnalyticsMetricEvent
- (HMCoreAnalyticsMetricEvent)initWithName:(id)a3;
- (id)eventPayload;
@end

@implementation HMCoreAnalyticsMetricEvent

- (id)eventPayload
{
  v25[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    v5 = [MEMORY[0x1E69A2A50] processInfo];
    v4 = [v5 applicationIdentifier];
  }

  v6 = @"unknown";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(HMCoreAnalyticsMetricEvent *)self error];
  v9 = [[HMCoreAnalyticsStringFieldData alloc] initWithName:@"bundleIdentifier" stringValue:v7];

  if (v8)
  {
    v10 = -[HMCoreAnalyticsIntegerFieldData initWithName:integerValue:]([HMCoreAnalyticsIntegerFieldData alloc], "initWithName:integerValue:", @"eventErrorCode", [v8 code]);
    v11 = [HMCoreAnalyticsStringFieldData alloc];
    v12 = [v8 domain];
    v13 = [(HMCoreAnalyticsStringFieldData *)v11 initWithName:@"eventErrorDomain" stringValue:v12];
  }

  else
  {
    v10 = [[HMCoreAnalyticsFieldData alloc] initWithName:@"eventErrorCode", 0];
    v13 = [[HMCoreAnalyticsFieldData alloc] initWithName:@"eventErrorDomain"];
  }

  v14 = [(HMCoreAnalyticsFieldData *)v10 name];
  v24[0] = v14;
  v15 = [(HMCoreAnalyticsFieldData *)v10 value];
  v25[0] = v15;
  v16 = [(HMCoreAnalyticsFieldData *)v13 name];
  v24[1] = v16;
  v17 = [(HMCoreAnalyticsFieldData *)v13 value];
  v25[1] = v17;
  v18 = [(HMCoreAnalyticsFieldData *)v9 name];
  v24[2] = v18;
  v19 = [(HMCoreAnalyticsFieldData *)v9 value];
  v25[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (HMCoreAnalyticsMetricEvent)initWithName:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HMCoreAnalyticsMetricEvent;
    v7 = [(HMCoreAnalyticsMetricEvent *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_name, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(_HMCameraAudioControl *)v10 .cxx_destruct];
  }

  return result;
}

@end
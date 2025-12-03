@interface HMCoreAnalyticsMetricEvent
- (HMCoreAnalyticsMetricEvent)initWithName:(id)name;
- (id)eventPayload;
@end

@implementation HMCoreAnalyticsMetricEvent

- (id)eventPayload
{
  v25[3] = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    processInfo = [MEMORY[0x1E69A2A50] processInfo];
    bundleIdentifier = [processInfo applicationIdentifier];
  }

  v6 = @"unknown";
  if (bundleIdentifier)
  {
    v6 = bundleIdentifier;
  }

  v7 = v6;

  error = [(HMCoreAnalyticsMetricEvent *)self error];
  v9 = [[HMCoreAnalyticsStringFieldData alloc] initWithName:@"bundleIdentifier" stringValue:v7];

  if (error)
  {
    v10 = -[HMCoreAnalyticsIntegerFieldData initWithName:integerValue:]([HMCoreAnalyticsIntegerFieldData alloc], "initWithName:integerValue:", @"eventErrorCode", [error code]);
    v11 = [HMCoreAnalyticsStringFieldData alloc];
    domain = [error domain];
    v13 = [(HMCoreAnalyticsStringFieldData *)v11 initWithName:@"eventErrorDomain" stringValue:domain];
  }

  else
  {
    v10 = [[HMCoreAnalyticsFieldData alloc] initWithName:@"eventErrorCode", 0];
    v13 = [[HMCoreAnalyticsFieldData alloc] initWithName:@"eventErrorDomain"];
  }

  name = [(HMCoreAnalyticsFieldData *)v10 name];
  v24[0] = name;
  value = [(HMCoreAnalyticsFieldData *)v10 value];
  v25[0] = value;
  name2 = [(HMCoreAnalyticsFieldData *)v13 name];
  v24[1] = name2;
  value2 = [(HMCoreAnalyticsFieldData *)v13 value];
  v25[1] = value2;
  name3 = [(HMCoreAnalyticsFieldData *)v9 name];
  v24[2] = name3;
  value3 = [(HMCoreAnalyticsFieldData *)v9 value];
  v25[2] = value3;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (HMCoreAnalyticsMetricEvent)initWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v6 = nameCopy;
    v12.receiver = self;
    v12.super_class = HMCoreAnalyticsMetricEvent;
    v7 = [(HMCoreAnalyticsMetricEvent *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_name, name);
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
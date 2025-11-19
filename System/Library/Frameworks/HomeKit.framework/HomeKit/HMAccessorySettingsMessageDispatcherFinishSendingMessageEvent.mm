@interface HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent
- (HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent)initWithMessageName:(id)a3;
- (id)eventPayload;
@end

@implementation HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent

- (id)eventPayload
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [HMCoreAnalyticsStringFieldData alloc];
  v4 = [(HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent *)self messageName];
  v5 = [(HMCoreAnalyticsStringFieldData *)v3 initWithName:@"messageName" stringValue:v4];

  v14.receiver = self;
  v14.super_class = HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent;
  v6 = [(HMCoreAnalyticsTimedMetricEvent *)&v14 eventPayload];
  v7 = [v6 mutableCopy];

  v8 = [(HMCoreAnalyticsFieldData *)v5 name];
  v15 = v8;
  v9 = [(HMCoreAnalyticsFieldData *)v5 value];
  v16[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v7 setValuesForKeysWithDictionary:v10];

  v11 = [v7 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent)initWithMessageName:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent;
    v7 = [(HMCoreAnalyticsMetricEvent *)&v12 initWithName:@"com.apple.HomeKit.HMAccessorySettingsMetricsDispatcher.MessageDispatcher.FinishSendingMessageEvent"];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_messageName, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMCoreAnalyticsMetricEvent *)v10 .cxx_destruct];
  }

  return result;
}

@end
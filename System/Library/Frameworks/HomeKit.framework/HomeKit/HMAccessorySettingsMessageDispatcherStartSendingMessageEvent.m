@interface HMAccessorySettingsMessageDispatcherStartSendingMessageEvent
- (HMAccessorySettingsMessageDispatcherStartSendingMessageEvent)initWithMessageName:(id)a3 updateKeyPath:(id)a4;
- (id)eventPayload;
@end

@implementation HMAccessorySettingsMessageDispatcherStartSendingMessageEvent

- (id)eventPayload
{
  v3 = [HMCoreAnalyticsStringFieldData alloc];
  v4 = [(HMAccessorySettingsMessageDispatcherStartSendingMessageEvent *)self messageName];
  v5 = [(HMCoreAnalyticsStringFieldData *)v3 initWithName:@"messageName" stringValue:v4];

  v14.receiver = self;
  v14.super_class = HMAccessorySettingsMessageDispatcherStartSendingMessageEvent;
  v6 = [(HMCoreAnalyticsMetricEvent *)&v14 eventPayload];
  v7 = [v6 mutableCopy];

  v8 = [(HMCoreAnalyticsFieldData *)v5 value];
  v9 = [(HMCoreAnalyticsFieldData *)v5 name];
  [v7 setObject:v8 forKeyedSubscript:v9];

  v10 = [(HMAccessorySettingsMessageDispatcherStartSendingMessageEvent *)self updateKeyPath];

  if (v10)
  {
    v11 = [(HMAccessorySettingsMessageDispatcherStartSendingMessageEvent *)self updateKeyPath];
    [v7 setObject:v11 forKeyedSubscript:@"updateKeyPath"];
  }

  v12 = [v7 copy];

  return v12;
}

- (HMAccessorySettingsMessageDispatcherStartSendingMessageEvent)initWithMessageName:(id)a3 updateKeyPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v8;
    v17.receiver = self;
    v17.super_class = HMAccessorySettingsMessageDispatcherStartSendingMessageEvent;
    v10 = [(HMCoreAnalyticsMetricEvent *)&v17 initWithName:@"com.apple.HomeKit.HMAccessorySettingsMetricsDispatcher.MessageDispatcher.StartSendingMessageEvent"];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_messageName, a3);
      v12 = [v9 copy];
      updateKeyPath = v11->_updateKeyPath;
      v11->_updateKeyPath = v12;
    }

    return v11;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    [(HMCacheManager *)v15 .cxx_destruct];
  }

  return result;
}

@end
@interface HMAccessorySettingsMessageDispatcherStartSendingMessageEvent
- (HMAccessorySettingsMessageDispatcherStartSendingMessageEvent)initWithMessageName:(id)name updateKeyPath:(id)path;
- (id)eventPayload;
@end

@implementation HMAccessorySettingsMessageDispatcherStartSendingMessageEvent

- (id)eventPayload
{
  v3 = [HMCoreAnalyticsStringFieldData alloc];
  messageName = [(HMAccessorySettingsMessageDispatcherStartSendingMessageEvent *)self messageName];
  v5 = [(HMCoreAnalyticsStringFieldData *)v3 initWithName:@"messageName" stringValue:messageName];

  v14.receiver = self;
  v14.super_class = HMAccessorySettingsMessageDispatcherStartSendingMessageEvent;
  eventPayload = [(HMCoreAnalyticsMetricEvent *)&v14 eventPayload];
  v7 = [eventPayload mutableCopy];

  value = [(HMCoreAnalyticsFieldData *)v5 value];
  name = [(HMCoreAnalyticsFieldData *)v5 name];
  [v7 setObject:value forKeyedSubscript:name];

  updateKeyPath = [(HMAccessorySettingsMessageDispatcherStartSendingMessageEvent *)self updateKeyPath];

  if (updateKeyPath)
  {
    updateKeyPath2 = [(HMAccessorySettingsMessageDispatcherStartSendingMessageEvent *)self updateKeyPath];
    [v7 setObject:updateKeyPath2 forKeyedSubscript:@"updateKeyPath"];
  }

  v12 = [v7 copy];

  return v12;
}

- (HMAccessorySettingsMessageDispatcherStartSendingMessageEvent)initWithMessageName:(id)name updateKeyPath:(id)path
{
  nameCopy = name;
  pathCopy = path;
  if (nameCopy)
  {
    v9 = pathCopy;
    v17.receiver = self;
    v17.super_class = HMAccessorySettingsMessageDispatcherStartSendingMessageEvent;
    v10 = [(HMCoreAnalyticsMetricEvent *)&v17 initWithName:@"com.apple.HomeKit.HMAccessorySettingsMetricsDispatcher.MessageDispatcher.StartSendingMessageEvent"];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_messageName, name);
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
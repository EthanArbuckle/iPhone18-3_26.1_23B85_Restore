@interface HMAccessorySettingsMetricsDispatcher
- (HMAccessorySettingsMetricsDispatcher)initWithCoreAnalyticsMetricDispatcher:(id)dispatcher;
- (id)finishTrackingEventWithIdentifier:(id)identifier;
- (void)startEventWithMessage:(id)message updateKeyPath:(id)path;
- (void)startTrackingEvent:(id)event withEventIdentifier:(id)identifier;
- (void)submitEventWithMessage:(id)message error:(id)error;
@end

@implementation HMAccessorySettingsMetricsDispatcher

- (id)finishTrackingEventWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_trackingEvents objectForKeyedSubscript:identifierCopy];
  [(NSMutableDictionary *)self->_trackingEvents setObject:0 forKeyedSubscript:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [v5 finish];
  }

  return v5;
}

- (void)startTrackingEvent:(id)event withEventIdentifier:(id)identifier
{
  eventCopy = event;
  identifierCopy = identifier;
  [eventCopy start];
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_trackingEvents setObject:eventCopy forKeyedSubscript:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)submitEventWithMessage:(id)message error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = messageCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Submitting tracking for event message: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  identifier = [messageCopy identifier];
  v13 = [(HMAccessorySettingsMetricsDispatcher *)selfCopy finishTrackingEventWithIdentifier:identifier];

  if (v13)
  {
    [v13 setError:errorCopy];
    metricEventDispatcher = [(HMAccessorySettingsMetricsDispatcher *)selfCopy metricEventDispatcher];
    [metricEventDispatcher sendEvent:v13];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = messageCopy;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to get tracked fetch event with message: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)startEventWithMessage:(id)message updateKeyPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  pathCopy = path;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = messageCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting tracking for event message: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMAccessorySettingsMessageDispatcherStartSendingMessageEvent alloc];
  name = [messageCopy name];
  v14 = [(HMAccessorySettingsMessageDispatcherStartSendingMessageEvent *)v12 initWithMessageName:name updateKeyPath:pathCopy];

  metricEventDispatcher = [(HMAccessorySettingsMetricsDispatcher *)selfCopy metricEventDispatcher];
  [metricEventDispatcher sendEvent:v14];

  v16 = [HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent alloc];
  name2 = [messageCopy name];
  v18 = [(HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent *)v16 initWithMessageName:name2];

  identifier = [messageCopy identifier];
  [(HMAccessorySettingsMetricsDispatcher *)selfCopy startTrackingEvent:v18 withEventIdentifier:identifier];

  v20 = *MEMORY[0x1E69E9840];
}

- (HMAccessorySettingsMetricsDispatcher)initWithCoreAnalyticsMetricDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v11.receiver = self;
  v11.super_class = HMAccessorySettingsMetricsDispatcher;
  v6 = [(HMAccessorySettingsMetricsDispatcher *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_metricEventDispatcher, dispatcher);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackingEvents = v7->_trackingEvents;
    v7->_trackingEvents = v8;
  }

  return v7;
}

@end
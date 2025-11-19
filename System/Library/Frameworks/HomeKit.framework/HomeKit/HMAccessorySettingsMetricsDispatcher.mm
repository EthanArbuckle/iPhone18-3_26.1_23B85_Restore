@interface HMAccessorySettingsMetricsDispatcher
- (HMAccessorySettingsMetricsDispatcher)initWithCoreAnalyticsMetricDispatcher:(id)a3;
- (id)finishTrackingEventWithIdentifier:(id)a3;
- (void)startEventWithMessage:(id)a3 updateKeyPath:(id)a4;
- (void)startTrackingEvent:(id)a3 withEventIdentifier:(id)a4;
- (void)submitEventWithMessage:(id)a3 error:(id)a4;
@end

@implementation HMAccessorySettingsMetricsDispatcher

- (id)finishTrackingEventWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_trackingEvents objectForKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_trackingEvents setObject:0 forKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [v5 finish];
  }

  return v5;
}

- (void)startTrackingEvent:(id)a3 withEventIdentifier:(id)a4
{
  v7 = a3;
  v6 = a4;
  [v7 start];
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_trackingEvents setObject:v7 forKeyedSubscript:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)submitEventWithMessage:(id)a3 error:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Submitting tracking for event message: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v6 identifier];
  v13 = [(HMAccessorySettingsMetricsDispatcher *)v9 finishTrackingEventWithIdentifier:v12];

  if (v13)
  {
    [v13 setError:v7];
    v14 = [(HMAccessorySettingsMetricsDispatcher *)v9 metricEventDispatcher];
    [v14 sendEvent:v13];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to get tracked fetch event with message: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)startEventWithMessage:(id)a3 updateKeyPath:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting tracking for event message: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [HMAccessorySettingsMessageDispatcherStartSendingMessageEvent alloc];
  v13 = [v6 name];
  v14 = [(HMAccessorySettingsMessageDispatcherStartSendingMessageEvent *)v12 initWithMessageName:v13 updateKeyPath:v7];

  v15 = [(HMAccessorySettingsMetricsDispatcher *)v9 metricEventDispatcher];
  [v15 sendEvent:v14];

  v16 = [HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent alloc];
  v17 = [v6 name];
  v18 = [(HMAccessorySettingsMessageDispatcherFinishSendingMessageEvent *)v16 initWithMessageName:v17];

  v19 = [v6 identifier];
  [(HMAccessorySettingsMetricsDispatcher *)v9 startTrackingEvent:v18 withEventIdentifier:v19];

  v20 = *MEMORY[0x1E69E9840];
}

- (HMAccessorySettingsMetricsDispatcher)initWithCoreAnalyticsMetricDispatcher:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMAccessorySettingsMetricsDispatcher;
  v6 = [(HMAccessorySettingsMetricsDispatcher *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_metricEventDispatcher, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackingEvents = v7->_trackingEvents;
    v7->_trackingEvents = v8;
  }

  return v7;
}

@end
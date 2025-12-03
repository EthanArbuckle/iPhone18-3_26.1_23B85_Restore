@interface HMCoreAnalyticsMetricEventDispatcher
- (HMCoreAnalyticsMetricEventDispatcher)initWithSendEventHandler:(id)handler;
- (void)sendEvent:(id)event;
@end

@implementation HMCoreAnalyticsMetricEventDispatcher

- (void)sendEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = eventCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending event: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  sendEventHandler = selfCopy->_sendEventHandler;
  name = [eventCopy name];
  eventPayload = [eventCopy eventPayload];
  sendEventHandler[2](sendEventHandler, name, eventPayload);

  v12 = *MEMORY[0x1E69E9840];
}

- (HMCoreAnalyticsMetricEventDispatcher)initWithSendEventHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = handlerCopy;
    v11.receiver = self;
    v11.super_class = HMCoreAnalyticsMetricEventDispatcher;
    v6 = [(HMCoreAnalyticsMetricEventDispatcher *)&v11 init];
    if (v6)
    {
      v7 = _Block_copy(v5);
      sendEventHandler = v6->_sendEventHandler;
      v6->_sendEventHandler = v7;
    }

    return v6;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return __44__HMCoreAnalyticsMetricEventDispatcher_init__block_invoke(v10);
  }
}

void __44__HMCoreAnalyticsMetricEventDispatcher_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__HMCoreAnalyticsMetricEventDispatcher_init__block_invoke_2;
  v15[3] = &unk_1E754BA28;
  v6 = v5;
  v16 = v6;
  v7 = v4;
  v8 = v15;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v9 = getAnalyticsSendEventLazySymbolLoc_ptr;
  v20 = getAnalyticsSendEventLazySymbolLoc_ptr;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAnalyticsSendEventLazySymbolLoc_block_invoke;
    v22 = &unk_1E754CB30;
    v23 = &v17;
    __getAnalyticsSendEventLazySymbolLoc_block_invoke(buf);
    v9 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v9)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v10 = v9(v7, v8);

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[HMCoreAnalyticsMetricEventDispatcherSendHandler] no event registered for event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end
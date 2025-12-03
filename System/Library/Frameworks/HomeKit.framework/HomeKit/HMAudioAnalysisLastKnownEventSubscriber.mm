@interface HMAudioAnalysisLastKnownEventSubscriber
- (HMAudioAnalysisLastKnownEventSubscriber)initWithContext:(id)context subscriptionProvider:(id)provider dataSource:(id)source workQueue:(id)queue;
- (HMAudioAnalysisLastKnownEventSubscriberDelegate)delegate;
- (HMESubscriptionProviding)subscriptionProvider;
- (NSUUID)homeIdentifier;
- (void)_didReceiveEvent:(id)event;
- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)subscribeLastKnownEventsForAccessory:(id)accessory completion:(id)completion;
@end

@implementation HMAudioAnalysisLastKnownEventSubscriber

- (HMESubscriptionProviding)subscriptionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_subscriptionProvider);

  return WeakRetained;
}

- (HMAudioAnalysisLastKnownEventSubscriberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source
{
  eventCopy = event;
  topicCopy = topic;
  workQueue = [(HMAudioAnalysisLastKnownEventSubscriber *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__HMAudioAnalysisLastKnownEventSubscriber_didReceiveCachedEvent_topic_source___block_invoke;
  block[3] = &unk_1E754E5E8;
  block[4] = self;
  v13 = eventCopy;
  v14 = topicCopy;
  v10 = topicCopy;
  v11 = eventCopy;
  dispatch_async(workQueue, block);
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  eventCopy = event;
  workQueue = [(HMAudioAnalysisLastKnownEventSubscriber *)self workQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__HMAudioAnalysisLastKnownEventSubscriber_didReceiveEvent_topic___block_invoke;
  v8[3] = &unk_1E754E5C0;
  v8[4] = self;
  v9 = eventCopy;
  v7 = eventCopy;
  dispatch_async(workQueue, v8);
}

- (void)_didReceiveEvent:(id)event
{
  v35 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  workQueue = [(HMAudioAnalysisLastKnownEventSubscriber *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v28 = 0;
  v6 = [HMAudioAnalysisAggregateEventBulletin decodeBulletinsFromEvent:eventCopy error:&v28];
  v7 = v28;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v12;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@unable to decode bulletin event with :%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  delegate = [(HMAudioAnalysisLastKnownEventSubscriber *)self delegate];
  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    bulletins = [v6 bulletins];
    *buf = 138543874;
    v30 = v17;
    v31 = 2112;
    v32 = bulletins;
    v33 = 2112;
    v34 = delegate;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updates with events: %@ delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  context = [(HMAudioAnalysisLastKnownEventSubscriber *)selfCopy2 context];
  delegateCaller = [context delegateCaller];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__HMAudioAnalysisLastKnownEventSubscriber__didReceiveEvent___block_invoke;
  v24[3] = &unk_1E754E5E8;
  v25 = delegate;
  v26 = selfCopy2;
  v27 = v6;
  v21 = v6;
  v22 = delegate;
  [delegateCaller invokeBlock:v24];

  v23 = *MEMORY[0x1E69E9840];
}

void __60__HMAudioAnalysisLastKnownEventSubscriber__didReceiveEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) bulletins];
    [v3 subscriber:v4 didUpdateBulletins:v5];
  }
}

- (void)subscribeLastKnownEventsForAccessory:(id)accessory completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  completionCopy = completion;
  dataSource = [(HMAudioAnalysisLastKnownEventSubscriber *)self dataSource];
  v9 = [dataSource accessoryUUIDForIdentifier:accessoryCopy];
  if (v9)
  {
    uuid = [dataSource uuid];
    v11 = [HMAudioAnalysisAggregateEventBulletin topicWithAccessoryUUID:v9 homeUUID:uuid];

    subscriptionProvider = [(HMAudioAnalysisLastKnownEventSubscriber *)self subscriptionProvider];
    v21 = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__HMAudioAnalysisLastKnownEventSubscriber_subscribeLastKnownEventsForAccessory_completion___block_invoke;
    v19[3] = &unk_1E7546DA0;
    v19[4] = self;
    v20 = completionCopy;
    [subscriptionProvider registerConsumer:self topicFilters:v13 completion:v19];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@accessory identifier invalid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v11 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:3];
    (*(completionCopy + 2))(completionCopy, v11);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __91__HMAudioAnalysisLastKnownEventSubscriber_subscribeLastKnownEventsForAccessory_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v11;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Subscribe changed topics with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v12;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Subscribe changed topics, received cached events %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if ([v5 count])
    {
      v13 = [*(a1 + 32) workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __91__HMAudioAnalysisLastKnownEventSubscriber_subscribeLastKnownEventsForAccessory_completion___block_invoke_3;
      block[3] = &unk_1E754E5C0;
      v14 = v5;
      v15 = *(a1 + 32);
      v25 = v14;
      v26 = v15;
      dispatch_async(v13, block);
    }
  }

  v16 = [*(a1 + 32) context];
  v17 = [v16 delegateCaller];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __91__HMAudioAnalysisLastKnownEventSubscriber_subscribeLastKnownEventsForAccessory_completion___block_invoke_5;
  v21[3] = &unk_1E754E458;
  v18 = *(a1 + 40);
  v22 = v6;
  v23 = v18;
  v19 = v6;
  [v17 invokeBlock:v21];

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __91__HMAudioAnalysisLastKnownEventSubscriber_subscribeLastKnownEventsForAccessory_completion___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __91__HMAudioAnalysisLastKnownEventSubscriber_subscribeLastKnownEventsForAccessory_completion___block_invoke_2;
  v3[3] = &unk_1E754A3F0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v3];
}

- (NSUUID)homeIdentifier
{
  dataSource = [(HMAudioAnalysisLastKnownEventSubscriber *)self dataSource];
  uniqueIdentifier = [dataSource uniqueIdentifier];

  return uniqueIdentifier;
}

- (HMAudioAnalysisLastKnownEventSubscriber)initWithContext:(id)context subscriptionProvider:(id)provider dataSource:(id)source workQueue:(id)queue
{
  contextCopy = context;
  providerCopy = provider;
  sourceCopy = source;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = HMAudioAnalysisLastKnownEventSubscriber;
  v15 = [(HMAudioAnalysisLastKnownEventSubscriber *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, context);
    objc_storeWeak(&v16->_subscriptionProvider, providerCopy);
    objc_storeStrong(&v16->_dataSource, source);
    objc_storeStrong(&v16->_workQueue, queue);
  }

  return v16;
}

@end
@interface HMAudioAnalysisLastKnownEventSubscriber
- (HMAudioAnalysisLastKnownEventSubscriber)initWithContext:(id)a3 subscriptionProvider:(id)a4 dataSource:(id)a5 workQueue:(id)a6;
- (HMAudioAnalysisLastKnownEventSubscriberDelegate)delegate;
- (HMESubscriptionProviding)subscriptionProvider;
- (NSUUID)homeIdentifier;
- (void)_didReceiveEvent:(id)a3;
- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)subscribeLastKnownEventsForAccessory:(id)a3 completion:(id)a4;
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

- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(HMAudioAnalysisLastKnownEventSubscriber *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__HMAudioAnalysisLastKnownEventSubscriber_didReceiveCachedEvent_topic_source___block_invoke;
  block[3] = &unk_1E754E5E8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v5 = a3;
  v6 = [(HMAudioAnalysisLastKnownEventSubscriber *)self workQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__HMAudioAnalysisLastKnownEventSubscriber_didReceiveEvent_topic___block_invoke;
  v8[3] = &unk_1E754E5C0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)_didReceiveEvent:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAudioAnalysisLastKnownEventSubscriber *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v28 = 0;
  v6 = [HMAudioAnalysisAggregateEventBulletin decodeBulletinsFromEvent:v4 error:&v28];
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
    v10 = self;
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

  v13 = [(HMAudioAnalysisLastKnownEventSubscriber *)self delegate];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v6 bulletins];
    *buf = 138543874;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updates with events: %@ delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = [(HMAudioAnalysisLastKnownEventSubscriber *)v15 context];
  v20 = [v19 delegateCaller];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__HMAudioAnalysisLastKnownEventSubscriber__didReceiveEvent___block_invoke;
  v24[3] = &unk_1E754E5E8;
  v25 = v13;
  v26 = v15;
  v27 = v6;
  v21 = v6;
  v22 = v13;
  [v20 invokeBlock:v24];

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

- (void)subscribeLastKnownEventsForAccessory:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAudioAnalysisLastKnownEventSubscriber *)self dataSource];
  v9 = [v8 accessoryUUIDForIdentifier:v6];
  if (v9)
  {
    v10 = [v8 uuid];
    v11 = [HMAudioAnalysisAggregateEventBulletin topicWithAccessoryUUID:v9 homeUUID:v10];

    v12 = [(HMAudioAnalysisLastKnownEventSubscriber *)self subscriptionProvider];
    v21 = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__HMAudioAnalysisLastKnownEventSubscriber_subscribeLastKnownEventsForAccessory_completion___block_invoke;
    v19[3] = &unk_1E7546DA0;
    v19[4] = self;
    v20 = v7;
    [v12 registerConsumer:self topicFilters:v13 completion:v19];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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
    (*(v7 + 2))(v7, v11);
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
  v2 = [(HMAudioAnalysisLastKnownEventSubscriber *)self dataSource];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (HMAudioAnalysisLastKnownEventSubscriber)initWithContext:(id)a3 subscriptionProvider:(id)a4 dataSource:(id)a5 workQueue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMAudioAnalysisLastKnownEventSubscriber;
  v15 = [(HMAudioAnalysisLastKnownEventSubscriber *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, a3);
    objc_storeWeak(&v16->_subscriptionProvider, v12);
    objc_storeStrong(&v16->_dataSource, a5);
    objc_storeStrong(&v16->_workQueue, a6);
  }

  return v16;
}

@end
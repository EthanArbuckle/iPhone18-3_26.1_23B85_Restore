@interface HMXPCEventRouterClient
+ (id)logCategory;
- (BOOL)isActive;
- (HMXPCEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 messageDispatcher:(id)a5 changeRegistrationsMessageName:(id)a6 updateMessageName:(id)a7 notificationCenter:(id)a8 useBackgroundTaskAssertion:(BOOL)a9 eventRouterClientFactory:(id)a10;
- (HMXPCEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 messageDispatcher:(id)a5 changeRegistrationsMessageName:(id)a6 updateMessageName:(id)a7 storeReadHandle:(id)a8 storeWriteHandle:(id)a9 useBackgroundTaskAssertion:(BOOL)a10;
- (id)logIdentifier;
- (id)messageDestination;
- (unint64_t)willWriteToStore;
- (void)_handleUpdateEventsMessage:(id)a3;
- (void)configure;
- (void)finishedWritingToStore:(unint64_t)a3;
- (void)handleActiveAssertionSendState:(id)a3;
- (void)handleDidBecomeActive:(id)a3;
- (void)handleWillResignActive:(id)a3;
- (void)processReceivedOutOfBandCachedEvents:(id)a3;
- (void)reconnect;
- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)a3 removedFilters:(id)a4 completion:(id)a5;
- (void)setIsActive:(BOOL)a3;
@end

@implementation HMXPCEventRouterClient

- (void)configure
{
  v3 = [(HMXPCEventRouterClient *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__HMXPCEventRouterClient_configure__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __35__HMXPCEventRouterClient_configure__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) messageDispatcher];
  v3 = [v2 transport];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __35__HMXPCEventRouterClient_configure__block_invoke_2;
  v17 = &unk_1E754E540;
  objc_copyWeak(&v18, &location);
  [v5 registerReconnectionHandler:&v14];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [*(a1 + 32) messageDispatcher];
    v8 = [v6 updateMessageName];
    [v7 registerForMessage:v8 receiver:v6 selector:sel__handleUpdateEventsMessage_];

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = [v9 notificationCenter];
      [v10 removeObserver:v9];

      v11 = [v9 notificationCenter];
      [v11 addObserver:v9 selector:sel_handleWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

      v12 = [v9 notificationCenter];
      [v12 addObserver:v9 selector:sel_handleDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

      v13 = [v9 notificationCenter];
      [v13 addObserver:v9 selector:sel_handleActiveAssertionSendState_ name:@"HMActiveAssertionDidSendStateNotification" object:0];
    }
  }

  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __35__HMXPCEventRouterClient_configure__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(HMXPCEventRouterClient *)WeakRetained reconnect];
    WeakRetained = v2;
  }
}

- (void)reconnect
{
  if (a1)
  {
    v2 = [a1 workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__HMXPCEventRouterClient_reconnect__block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

void __35__HMXPCEventRouterClient_reconnect__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
LABEL_9:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v2);

  if (([v1 isActive] & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = v1;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Will not connect as not active", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_9;
  }

  v9 = [v1 eventRouterClient];
  [v9 didReconnect];
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isActive
{
  os_unfair_lock_lock_with_options();
  isActive = self->_isActive;
  os_unfair_lock_unlock(&self->_lock);
  return isActive;
}

- (void)handleDidBecomeActive:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(HMXPCEventRouterClient *)self isActive])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Reconnect on active", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMXPCEventRouterClient *)v6 setIsActive:1];
    [(HMXPCEventRouterClient *)v6 reconnect];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleWillResignActive:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Going dormant on becoming inactive", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMXPCEventRouterClient *)v6 setIsActive:0];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleActiveAssertionSendState:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"HMActiveAssertionActiveStateNotificationKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 BOOLValue];
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (v14)
        {
          v15 = HMFGetLogIdentifier();
          v18 = 138543362;
          v19 = v15;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Received notification for active state", &v18, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        [(HMXPCEventRouterClient *)v12 handleDidBecomeActive:v4];
      }

      else
      {
        if (v14)
        {
          v16 = HMFGetLogIdentifier();
          v18 = 138543362;
          v19 = v16;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Received notification for inactive state", &v18, 0xCu);
        }

        objc_autoreleasePoolPop(v11);
        [(HMXPCEventRouterClient *)v12 handleWillResignActive:v4];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)processReceivedOutOfBandCachedEvents:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCEventRouterClient *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__HMXPCEventRouterClient_processReceivedOutOfBandCachedEvents___block_invoke;
  v7[3] = &unk_1E754E5C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __63__HMXPCEventRouterClient_processReceivedOutOfBandCachedEvents___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventRouterClient];
  [v2 processReceivedCachedEventsFromMessage:*(a1 + 40)];
}

- (void)_handleUpdateEventsMessage:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMXPCEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMXPCEventRouterClient *)self isActive])
  {
    v6 = [v4 messagePayload];
    v7 = [v6 hmf_dataForKey:@"HM.subbroker.events"];

    if (v7)
    {
      v8 = [[HMXPCEventRouterProtoEventsMessage alloc] initWithData:v7];
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [(HMXPCEventRouterProtoEventsMessage *)v8 events];
        v14 = [v13 count];
        v15 = [(HMXPCEventRouterProtoEventsMessage *)v8 cachedEvents];
        v31 = 138543874;
        v32 = v12;
        v33 = 2048;
        v34 = v14;
        v35 = 2048;
        v36 = [v15 count];
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Received updated events: %lu cached: %lu", &v31, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v16 = [(HMXPCEventRouterProtoEventsMessage *)v8 events];
      v17 = [v16 count];

      if (v17)
      {
        v18 = [(HMXPCEventRouterProtoEventsMessage *)v8 events];
        v19 = [v18 na_map:&__block_literal_global_28];

        v20 = [(HMXPCEventRouterClient *)v10 eventRouterClient];
        [v20 processReceivedEventsFromMessage:v19];
      }

      v21 = [(HMXPCEventRouterProtoEventsMessage *)v8 cachedEvents];
      v22 = [v21 count];

      if (v22)
      {
        v23 = [(HMXPCEventRouterProtoEventsMessage *)v8 cachedEvents];
        v24 = [v23 na_map:&__block_literal_global_30];

        v25 = [(HMXPCEventRouterClient *)v10 eventRouterClient];
        [v25 processReceivedCachedEventsFromMessage:v24];
      }
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v29;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Fail message as not active", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
    [v4 respondWithError:v7];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)setIsActive:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_isActive = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)finishedWritingToStore:(unint64_t)a3
{
  if ([(HMXPCEventRouterClient *)self useBackgroundTaskAssertion])
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    [v4 endBackgroundTask:a3];
  }
}

- (unint64_t)willWriteToStore
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(HMXPCEventRouterClient *)self useBackgroundTaskAssertion])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__HMXPCEventRouterClient_willWriteToStore__block_invoke;
    v11[3] = &unk_1E7546BB8;
    v11[4] = self;
    v11[5] = 0;
    v4 = [v3 beginBackgroundTaskWithName:@"HomeKitEventStore" expirationHandler:v11];

    if (v4 == *MEMORY[0x1E69DDBE8])
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        *buf = 138543362;
        v13 = v8;
        _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Could not create BTA successfully", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

void __42__HMXPCEventRouterClient_willWriteToStore__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Background task token %lu expired", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)a3 removedFilters:(id)a4 completion:(id)a5
{
  location[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(HMXPCEventRouterProtoChangeRegistrationsMessage);
  if ([v8 count])
  {
    v12 = [v8 mutableCopy];
    [(HMXPCEventRouterProtoChangeRegistrationsMessage *)v11 setTopicFilterAdditions:v12];
  }

  if ([v9 count])
  {
    v13 = [v9 mutableCopy];
    [(HMXPCEventRouterProtoChangeRegistrationsMessage *)v11 setTopicFilterRemovals:v13];
  }

  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v14 = MEMORY[0x1E69A2A10];
    v15 = [(HMXPCEventRouterClient *)self changeRegistrationsMessageName];
    v16 = [(HMXPCEventRouterClient *)self messageDestination];
    v32 = @"HM.subbroker.payload";
    v17 = [(HMXPCEventRouterProtoChangeRegistrationsMessage *)v11 data];
    v33 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = [v14 messageWithName:v15 destination:v16 payload:v18];

    objc_initWeak(location, self);
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __99__HMXPCEventRouterClient_sendChangeRegistrationsMessageWithAddedFilters_removedFilters_completion___block_invoke;
    v29 = &unk_1E754CFF8;
    objc_copyWeak(&v31, location);
    v30 = v10;
    [v19 setResponseHandler:&v26];
    v20 = [(HMXPCEventRouterClient *)self messageDispatcher:v26];
    [v20 sendMessage:v19 completionHandler:0];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v25;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Expected additions or removals but have none.", location, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    (*(v10 + 2))(v10, MEMORY[0x1E695E0F8], v19);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __99__HMXPCEventRouterClient_sendChangeRegistrationsMessageWithAddedFilters_removedFilters_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __99__HMXPCEventRouterClient_sendChangeRegistrationsMessageWithAddedFilters_removedFilters_completion___block_invoke_2;
    v10[3] = &unk_1E754D208;
    v11 = v5;
    v12 = v8;
    v14 = *(a1 + 32);
    v13 = v6;
    dispatch_async(v9, v10);
  }
}

void __99__HMXPCEventRouterClient_sendChangeRegistrationsMessageWithAddedFilters_removedFilters_completion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      v22 = 138543618;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to change registrations with error: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
  }

  if (*(a1 + 56))
  {
    v7 = [*(a1 + 48) hmf_dataForKey:@"HM.subbroker.events"];
    v8 = [[HMXPCEventRouterProtoEventsMessage alloc] initWithData:v7];
    v9 = [MEMORY[0x1E695DF20] dictionary];
    v10 = [(HMXPCEventRouterProtoEventsMessage *)v8 cachedEvents];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(HMXPCEventRouterProtoEventsMessage *)v8 cachedEvents];
      v13 = [v12 na_map:&__block_literal_global_19];

      v14 = [MEMORY[0x1E69A45E8] eventsMapFromEventInfos:v13];

      v9 = v14;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 40);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v9 count];
      v22 = 138543618;
      v23 = v18;
      v24 = 2048;
      v25 = v19;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Changed registrations and received %lu events", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)logIdentifier
{
  v2 = [(HMXPCEventRouterClient *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(HMXPCEventRouterClient *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (HMXPCEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 messageDispatcher:(id)a5 changeRegistrationsMessageName:(id)a6 updateMessageName:(id)a7 notificationCenter:(id)a8 useBackgroundTaskAssertion:(BOOL)a9 eventRouterClientFactory:(id)a10
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a10;
  v29.receiver = self;
  v29.super_class = HMXPCEventRouterClient;
  v20 = [(HMXPCEventRouterClient *)&v29 init];
  v21 = v20;
  if (v20)
  {
    v20->_lock._os_unfair_lock_opaque = 0;
    v20->_useBackgroundTaskAssertion = a9;
    v20->_isActive = 1;
    objc_storeStrong(&v20->_identifier, a3);
    objc_storeStrong(&v21->_workQueue, a4);
    objc_storeStrong(&v21->_messageDispatcher, a5);
    objc_storeStrong(&v21->_changeRegistrationsMessageName, a6);
    objc_storeStrong(&v21->_updateMessageName, a7);
    objc_storeStrong(&v21->_notificationCenter, a8);
    v22 = v19[2](v19);
    eventRouterClient = v21->_eventRouterClient;
    v21->_eventRouterClient = v22;

    [(HMEPersistentConnectionClient *)v21->_eventRouterClient setDelegate:v21, v25, v26, v27, v28];
  }

  return v21;
}

- (HMXPCEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 messageDispatcher:(id)a5 changeRegistrationsMessageName:(id)a6 updateMessageName:(id)a7 storeReadHandle:(id)a8 storeWriteHandle:(id)a9 useBackgroundTaskAssertion:(BOOL)a10
{
  v15 = a4;
  v16 = a8;
  v17 = a9;
  v18 = MEMORY[0x1E696AD88];
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v23 = [v18 defaultCenter];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __185__HMXPCEventRouterClient_initWithMessageTargetUUID_queue_messageDispatcher_changeRegistrationsMessageName_updateMessageName_storeReadHandle_storeWriteHandle_useBackgroundTaskAssertion___block_invoke;
  v31[3] = &unk_1E7546B60;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  LOBYTE(v29) = a10;
  v27 = [(HMXPCEventRouterClient *)self initWithMessageTargetUUID:v22 queue:v26 messageDispatcher:v21 changeRegistrationsMessageName:v20 updateMessageName:v19 notificationCenter:v23 useBackgroundTaskAssertion:v29 eventRouterClientFactory:v31];

  return v27;
}

id __185__HMXPCEventRouterClient_initWithMessageTargetUUID_queue_messageDispatcher_changeRegistrationsMessageName_updateMessageName_storeReadHandle_storeWriteHandle_useBackgroundTaskAssertion___block_invoke(void *a1)
{
  v1 = [objc_alloc(MEMORY[0x1E69A4600]) initWithQueue:a1[4] storeReadHandle:a1[5] storeWriteHandle:a1[6]];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0, &__block_literal_global_2072);
  }

  v3 = logCategory__hmf_once_v1;

  return v3;
}

uint64_t __37__HMXPCEventRouterClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v1 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

@end
@interface HMAccessCodeManager
+ (BOOL)doesAccessCode:(id)a3 conflictWithExistingAccessCodes:(id)a4;
+ (HMAccessCodeConstraints)accessCodeConstraints;
+ (id)_createAccessCodeWithLength:(int64_t)a3;
+ (id)accessCodeManagerUUIDFromHomeUUID:(id)a3;
+ (id)convertPotentialUniqueIdentifier:(id)a3 toUUIDForUserInHome:(id)a4 flow:(id)a5;
+ (id)generateAccessCodeValueFromConstraints:(id)a3 accessoryAccessCodes:(id)a4 homeAccessCodes:(id)a5;
+ (id)logCategory;
+ (int64_t)_accessCodeLengthFromLowerBound:(int64_t)a3 upperBound:(int64_t)a4;
+ (int64_t)greatestLowerBoundForAccessCodeLengthFromConstraints:(id)a3;
+ (int64_t)leastUpperBoundForAccessCodeLengthFromConstraints:(id)a3;
- (HMAccessCodeManager)initWithHome:(id)a3;
- (HMAccessCodeManager)initWithHome:(id)a3 context:(id)a4 UUID:(id)a5 notificationCenter:(id)a6;
- (HMHome)home;
- (NSArray)accessoriesSupportingAccessCodes;
- (id)logIdentifier;
- (void)_sendMessageWithName:(id)a3 payload:(id)a4 responseHandler:(id)a5;
- (void)_subscribeWithFlow:(id)a3;
- (void)_unsubscribeWithFlow:(id)a3;
- (void)addObserver:(id)a3;
- (void)configure;
- (void)fetchAccessCodeConstraintsFromAccessories:(id)a3 completion:(id)a4;
- (void)fetchAccessCodesFromAccessories:(id)a3 completion:(id)a4;
- (void)fetchCachedAccessoryAccessCodesWithCompletion:(id)a3;
- (void)fetchHomeAccessCodesWithCompletion:(id)a3;
- (void)generateAccessCodeForUser:(id)a3 completion:(id)a4;
- (void)handleDaemonReconnectedNotification:(id)a3;
- (void)handleDidAddAccessoryAccessCodesMessage:(id)a3;
- (void)handleDidAddHomeAccessCodesMessage:(id)a3;
- (void)handleDidRemoveAccessoryAccessCodesMessage:(id)a3;
- (void)handleDidRemoveHomeAccessCodesMessage:(id)a3;
- (void)handleDidUpdateAccessoryAccessCodesMessage:(id)a3;
- (void)handleDidUpdateHomeAccessCodesMessage:(id)a3;
- (void)removeHomeAccessCodeWithValue:(id)a3 completion:(id)a4;
- (void)removeObserver:(id)a3;
- (void)removeSimpleLabelAccessCode:(id)a3 completion:(id)a4;
- (void)resetAccessoryAccessCodesWithValueMatchingHomeAccessCode:(id)a3 completion:(id)a4;
- (void)setAccessCode:(id)a3 forUser:(id)a4 completion:(id)a5;
- (void)setAccessCode:(id)a3 forUserWithUUID:(id)a4 completion:(id)a5;
- (void)setUserInformation:(id)a3 forHomeAccessCodeWithValue:(id)a4 completion:(id)a5;
- (void)submitAccessCodeModificationRequests:(id)a3 completion:(id)a4;
- (void)unconfigure;
@end

@implementation HMAccessCodeManager

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMAccessCodeManager *)self UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_unsubscribeWithFlow:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Unsubscribing", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x1E69A29A8];
  v10 = HMFEncodedRootObject();
  v14 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [(HMAccessCodeManager *)v6 _sendMessageWithName:@"HMAccessCodeManagerUnsubscribeMessage" payload:v11 responseHandler:0, v13];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_subscribeWithFlow:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Subscribing", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x1E69A29A8];
  v10 = HMFEncodedRootObject();
  v14 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [(HMAccessCodeManager *)v6 _sendMessageWithName:@"HMAccessCodeManagerSubscribeMessage" payload:v11 responseHandler:0, v13];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_sendMessageWithName:(id)a3 payload:(id)a4 responseHandler:(id)a5
{
  v8 = MEMORY[0x1E69A2A00];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v13 = [(HMAccessCodeManager *)self messageTargetUUID];
  v17 = [v12 initWithTarget:v13];

  v14 = [MEMORY[0x1E69A2A10] messageWithName:v11 destination:v17 payload:v10];

  [v14 setResponseHandler:v9];
  v15 = [(HMAccessCodeManager *)self context];
  v16 = [v15 messageDispatcher];
  [v16 sendMessage:v14];
}

- (void)handleDidRemoveHomeAccessCodesMessage:(id)a3
{
  v41[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 flow];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v7 = [v4 unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyHomeAccessCodeValues" ofClasses:v6];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v5 UUID];
    *buf = 138543874;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling didRemoveHomeAccessCodesMessage with homeAccessCodeValues: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMAccessCodeManager *)v9 home];
  v14 = v13;
  if (v13)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __61__HMAccessCodeManager_handleDidRemoveHomeAccessCodesMessage___block_invoke;
    v33[3] = &unk_1E7547EA0;
    v34 = v13;
    v15 = [v7 na_map:v33];
    os_unfair_lock_lock_with_options();
    v16 = [(HMAccessCodeManager *)v9 observers];
    v17 = [v16 allObjects];

    os_unfair_lock_unlock(&v9->_lock.lock);
    v18 = [(HMAccessCodeManager *)v9 context];
    v19 = [v18 delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__HMAccessCodeManager_handleDidRemoveHomeAccessCodesMessage___block_invoke_2;
    v28[3] = &unk_1E754DE30;
    v29 = v17;
    v30 = v9;
    v31 = v5;
    v32 = v15;
    v20 = v15;
    v21 = v17;
    [v19 invokeBlock:v28];

    [v4 respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v5 UUID];
      *buf = 138543874;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v7;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in handleDidRemoveHomeAccessCodesMessage for homeAccessCodeValues: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __61__HMAccessCodeManager_handleDidRemoveHomeAccessCodesMessage___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v18 = v2;
    v19 = *v21;
    do
    {
      v6 = 0;
      v7 = sel_accessCodeManager_didRemoveHomeAccessCodes_;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = objc_autoreleasePoolPush();
          v10 = *(a1 + 40);
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            [*(a1 + 48) UUID];
            v13 = v7;
            v15 = v14 = v4;
            v16 = *(a1 + 56);
            *buf = 138544130;
            v25 = v12;
            v26 = 2112;
            v27 = v15;
            v28 = 2112;
            v29 = v8;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Telling observer: %@: didRemoveHomeAccessCodes:%@", buf, 0x2Au);

            v4 = v14;
            v7 = v13;

            v2 = v18;
            v5 = v19;
          }

          objc_autoreleasePoolPop(v9);
          [v8 accessCodeManager:*(a1 + 40) didRemoveHomeAccessCodes:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleDidUpdateHomeAccessCodesMessage:(id)a3
{
  v41[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 flow];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v7 = [v4 unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyHomeAccessCodeValues" ofClasses:v6];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v5 UUID];
    *buf = 138543874;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling didUpdateHomeAccessCodesMessage with homeAccessCodeValues: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMAccessCodeManager *)v9 home];
  v14 = v13;
  if (v13)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __61__HMAccessCodeManager_handleDidUpdateHomeAccessCodesMessage___block_invoke;
    v33[3] = &unk_1E7547EA0;
    v34 = v13;
    v15 = [v7 na_map:v33];
    os_unfair_lock_lock_with_options();
    v16 = [(HMAccessCodeManager *)v9 observers];
    v17 = [v16 allObjects];

    os_unfair_lock_unlock(&v9->_lock.lock);
    v18 = [(HMAccessCodeManager *)v9 context];
    v19 = [v18 delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __61__HMAccessCodeManager_handleDidUpdateHomeAccessCodesMessage___block_invoke_2;
    v28[3] = &unk_1E754DE30;
    v29 = v17;
    v30 = v9;
    v31 = v5;
    v32 = v15;
    v20 = v15;
    v21 = v17;
    [v19 invokeBlock:v28];

    [v4 respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v5 UUID];
      *buf = 138543874;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v7;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in handleDidUpdateHomeAccessCodesMessage for homeAccessCodeValues: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __61__HMAccessCodeManager_handleDidUpdateHomeAccessCodesMessage___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v18 = v2;
    v19 = *v21;
    do
    {
      v6 = 0;
      v7 = sel_accessCodeManager_didUpdateHomeAccessCodes_;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = objc_autoreleasePoolPush();
          v10 = *(a1 + 40);
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            [*(a1 + 48) UUID];
            v13 = v7;
            v15 = v14 = v4;
            v16 = *(a1 + 56);
            *buf = 138544130;
            v25 = v12;
            v26 = 2112;
            v27 = v15;
            v28 = 2112;
            v29 = v8;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Telling observer: %@: didUpdateHomeAccessCodes:%@", buf, 0x2Au);

            v4 = v14;
            v7 = v13;

            v2 = v18;
            v5 = v19;
          }

          objc_autoreleasePoolPop(v9);
          [v8 accessCodeManager:*(a1 + 40) didUpdateHomeAccessCodes:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleDidAddHomeAccessCodesMessage:(id)a3
{
  v41[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 flow];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v7 = [v4 unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyHomeAccessCodeValues" ofClasses:v6];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v5 UUID];
    *buf = 138543874;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling didAddHomeAccessCodesMessage with homeAccessCodeValues: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMAccessCodeManager *)v9 home];
  v14 = v13;
  if (v13)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __58__HMAccessCodeManager_handleDidAddHomeAccessCodesMessage___block_invoke;
    v33[3] = &unk_1E7547EA0;
    v34 = v13;
    v15 = [v7 na_map:v33];
    os_unfair_lock_lock_with_options();
    v16 = [(HMAccessCodeManager *)v9 observers];
    v17 = [v16 allObjects];

    os_unfair_lock_unlock(&v9->_lock.lock);
    v18 = [(HMAccessCodeManager *)v9 context];
    v19 = [v18 delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __58__HMAccessCodeManager_handleDidAddHomeAccessCodesMessage___block_invoke_2;
    v28[3] = &unk_1E754DE30;
    v29 = v17;
    v30 = v9;
    v31 = v5;
    v32 = v15;
    v20 = v15;
    v21 = v17;
    [v19 invokeBlock:v28];

    [v4 respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v5 UUID];
      *buf = 138543874;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v7;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in handleDidAddHomeAccessCodesMessage for homeAccessCodeValues: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __58__HMAccessCodeManager_handleDidAddHomeAccessCodesMessage___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v18 = v2;
    v19 = *v21;
    do
    {
      v6 = 0;
      v7 = sel_accessCodeManager_didAddHomeAccessCodes_;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = objc_autoreleasePoolPush();
          v10 = *(a1 + 40);
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            [*(a1 + 48) UUID];
            v13 = v7;
            v15 = v14 = v4;
            v16 = *(a1 + 56);
            *buf = 138544130;
            v25 = v12;
            v26 = 2112;
            v27 = v15;
            v28 = 2112;
            v29 = v8;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Telling observer: %@: didAddHomeAccessCodes:%@", buf, 0x2Au);

            v4 = v14;
            v7 = v13;

            v2 = v18;
            v5 = v19;
          }

          objc_autoreleasePoolPop(v9);
          [v8 accessCodeManager:*(a1 + 40) didAddHomeAccessCodes:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleDidRemoveAccessoryAccessCodesMessage:(id)a3
{
  v44[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = [v4 flow];
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v6 = [v4 unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessoryAccessCodeValues" ofClasses:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v28 UUID];
    *buf = 138543874;
    v39 = v10;
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling didRemoveAccessoryAccessCodesMessage with accessoryAccessCodeValues: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMAccessCodeManager *)v8 home];
  v13 = v12;
  if (v12)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66__HMAccessCodeManager_handleDidRemoveAccessoryAccessCodesMessage___block_invoke;
    v34[3] = &unk_1E7547EF0;
    v35 = v12;
    v36 = v8;
    v14 = v28;
    v37 = v14;
    v15 = [v6 na_map:v34];
    os_unfair_lock_lock_with_options();
    v16 = [(HMAccessCodeManager *)v8 observers];
    v17 = [v16 allObjects];

    os_unfair_lock_unlock(&v8->_lock.lock);
    v18 = [(HMAccessCodeManager *)v8 context];
    v19 = [v18 delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __66__HMAccessCodeManager_handleDidRemoveAccessoryAccessCodesMessage___block_invoke_193;
    v29[3] = &unk_1E754DE30;
    v30 = v17;
    v31 = v8;
    v32 = v14;
    v33 = v15;
    v20 = v15;
    v21 = v17;
    [v19 invokeBlock:v29];

    [v4 respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v8;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v28 UUID];
      *buf = 138543874;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in handleDidRemoveAccessoryAccessCodesMessage for accessoryAccessCodeValues: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

id __66__HMAccessCodeManager_handleDidRemoveAccessoryAccessCodesMessage___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessoryAccessCode accessoryAccessCodeWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessoryAccessCode because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

void __66__HMAccessCodeManager_handleDidRemoveAccessoryAccessCodesMessage___block_invoke_193(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v18 = v2;
    v19 = *v21;
    do
    {
      v6 = 0;
      v7 = sel_accessCodeManager_didRemoveAccessoryAccessCodes_;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = objc_autoreleasePoolPush();
          v10 = *(a1 + 40);
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            [*(a1 + 48) UUID];
            v13 = v7;
            v15 = v14 = v4;
            v16 = *(a1 + 56);
            *buf = 138544130;
            v25 = v12;
            v26 = 2112;
            v27 = v15;
            v28 = 2112;
            v29 = v8;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Telling observer: %@: didRemoveAccessoryAccessCodes:%@", buf, 0x2Au);

            v4 = v14;
            v7 = v13;

            v2 = v18;
            v5 = v19;
          }

          objc_autoreleasePoolPop(v9);
          [v8 accessCodeManager:*(a1 + 40) didRemoveAccessoryAccessCodes:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleDidUpdateAccessoryAccessCodesMessage:(id)a3
{
  v44[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = [v4 flow];
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v6 = [v4 unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessoryAccessCodeValues" ofClasses:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v28 UUID];
    *buf = 138543874;
    v39 = v10;
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling didUpdateAccessoryAccessCodesMessage with accessoryAccessCodeValues: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMAccessCodeManager *)v8 home];
  v13 = v12;
  if (v12)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66__HMAccessCodeManager_handleDidUpdateAccessoryAccessCodesMessage___block_invoke;
    v34[3] = &unk_1E7547EF0;
    v35 = v12;
    v36 = v8;
    v14 = v28;
    v37 = v14;
    v15 = [v6 na_map:v34];
    os_unfair_lock_lock_with_options();
    v16 = [(HMAccessCodeManager *)v8 observers];
    v17 = [v16 allObjects];

    os_unfair_lock_unlock(&v8->_lock.lock);
    v18 = [(HMAccessCodeManager *)v8 context];
    v19 = [v18 delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __66__HMAccessCodeManager_handleDidUpdateAccessoryAccessCodesMessage___block_invoke_190;
    v29[3] = &unk_1E754DE30;
    v30 = v17;
    v31 = v8;
    v32 = v14;
    v33 = v15;
    v20 = v15;
    v21 = v17;
    [v19 invokeBlock:v29];

    [v4 respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v8;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v28 UUID];
      *buf = 138543874;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in handleDidUpdateAccessoryAccessCodesMessage for accessoryAccessCodeValues: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

id __66__HMAccessCodeManager_handleDidUpdateAccessoryAccessCodesMessage___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessoryAccessCode accessoryAccessCodeWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessoryAccessCode because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

void __66__HMAccessCodeManager_handleDidUpdateAccessoryAccessCodesMessage___block_invoke_190(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v18 = v2;
    v19 = *v21;
    do
    {
      v6 = 0;
      v7 = sel_accessCodeManager_didUpdateAccessoryAccessCodes_;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = objc_autoreleasePoolPush();
          v10 = *(a1 + 40);
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            [*(a1 + 48) UUID];
            v13 = v7;
            v15 = v14 = v4;
            v16 = *(a1 + 56);
            *buf = 138544130;
            v25 = v12;
            v26 = 2112;
            v27 = v15;
            v28 = 2112;
            v29 = v8;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Telling observer: %@: didUpdateAccessoryAccessCodes:%@", buf, 0x2Au);

            v4 = v14;
            v7 = v13;

            v2 = v18;
            v5 = v19;
          }

          objc_autoreleasePoolPop(v9);
          [v8 accessCodeManager:*(a1 + 40) didUpdateAccessoryAccessCodes:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleDidAddAccessoryAccessCodesMessage:(id)a3
{
  v44[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = [v4 flow];
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v6 = [v4 unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessoryAccessCodeValues" ofClasses:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v28 UUID];
    *buf = 138543874;
    v39 = v10;
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling didAddAccessoryAccessCodesMessage with accessoryAccessCodeValues: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMAccessCodeManager *)v8 home];
  v13 = v12;
  if (v12)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __63__HMAccessCodeManager_handleDidAddAccessoryAccessCodesMessage___block_invoke;
    v34[3] = &unk_1E7547EF0;
    v35 = v12;
    v36 = v8;
    v14 = v28;
    v37 = v14;
    v15 = [v6 na_map:v34];
    os_unfair_lock_lock_with_options();
    v16 = [(HMAccessCodeManager *)v8 observers];
    v17 = [v16 allObjects];

    os_unfair_lock_unlock(&v8->_lock.lock);
    v18 = [(HMAccessCodeManager *)v8 context];
    v19 = [v18 delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __63__HMAccessCodeManager_handleDidAddAccessoryAccessCodesMessage___block_invoke_187;
    v29[3] = &unk_1E754DE30;
    v30 = v17;
    v31 = v8;
    v32 = v14;
    v33 = v15;
    v20 = v15;
    v21 = v17;
    [v19 invokeBlock:v29];

    [v4 respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v8;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v28 UUID];
      *buf = 138543874;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in handleDidAddAccessoryAccessCodesMessage for accessoryAccessCodeValues: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

id __63__HMAccessCodeManager_handleDidAddAccessoryAccessCodesMessage___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessoryAccessCode accessoryAccessCodeWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessoryAccessCode because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

void __63__HMAccessCodeManager_handleDidAddAccessoryAccessCodesMessage___block_invoke_187(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v18 = v2;
    v19 = *v21;
    do
    {
      v6 = 0;
      v7 = sel_accessCodeManager_didAddAccessoryAccessCodes_;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v20 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v9 = objc_autoreleasePoolPush();
          v10 = *(a1 + 40);
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            [*(a1 + 48) UUID];
            v13 = v7;
            v15 = v14 = v4;
            v16 = *(a1 + 56);
            *buf = 138544130;
            v25 = v12;
            v26 = 2112;
            v27 = v15;
            v28 = 2112;
            v29 = v8;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Telling observer: %@: didAddAccessoryAccessCodes:%@", buf, 0x2Au);

            v4 = v14;
            v7 = v13;

            v2 = v18;
            v5 = v19;
          }

          objc_autoreleasePoolPop(v9);
          [v8 accessCodeManager:*(a1 + 40) didAddAccessoryAccessCodes:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleDaemonReconnectedNotification:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling daemon reconnected notification by reconnecting to daemon if necessary", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_lock_lock_with_options();
  v11 = [(HMAccessCodeManager *)v7 observers];
  v12 = [v11 count] == 0;

  os_unfair_lock_unlock(&v7->_lock.lock);
  if (!v12)
  {
    [(HMAccessCodeManager *)v7 _subscribeWithFlow:v5];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchCachedAccessoryAccessCodesWithCompletion:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    *buf = 138543618;
    v42 = v9;
    v43 = 2112;
    v44 = v10;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Fetching cached accessory access codes", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (!v4)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager fetchCachedAccessoryAccessCodesWithCompletion:]", @"completion"];
    v30 = objc_autoreleasePoolPush();
    v31 = v7;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v33;
      v43 = 2112;
      v44 = v29;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v29 userInfo:0];
    objc_exception_throw(v34);
  }

  v11 = [(HMAccessCodeManager *)v7 context];

  if (v11)
  {
    v12 = [(HMAccessCodeManager *)v7 home];
    if (v12)
    {
      v13 = v12;
      v39 = *MEMORY[0x1E69A29A8];
      v14 = HMFEncodedRootObject();
      v40 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __69__HMAccessCodeManager_fetchCachedAccessoryAccessCodesWithCompletion___block_invoke;
      v35[3] = &unk_1E754D030;
      v35[4] = v7;
      v36 = v5;
      v38 = v4;
      v16 = v13;
      v37 = v16;
      [(HMAccessCodeManager *)v7 _sendMessageWithName:@"HMAccessCodeManagerFetchCachedAccessCodesMessage" payload:v15 responseHandler:v35];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v7;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v5 UUID];
        *buf = 138543618;
        v42 = v25;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in fetchCachedAccessoryAccessCodesWithCompletion", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v4 + 2))(v4, 0, v27);

      v16 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v7;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v5 UUID];
      *buf = 138543874;
      v42 = v20;
      v43 = 2112;
      v44 = v21;
      v45 = 2080;
      v46 = "[HMAccessCodeManager fetchCachedAccessoryAccessCodesWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Nil context, invoking completion - %s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, 0, v16);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __69__HMAccessCodeManager_fetchCachedAccessoryAccessCodesWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    v8 = [v6 hmf_unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessoryAccessCodeFetchResponseValues" ofClasses:v7];

    if (v8)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __69__HMAccessCodeManager_fetchCachedAccessoryAccessCodesWithCompletion___block_invoke_2;
      v37[3] = &unk_1E7547E50;
      v9 = v38;
      v10 = a1[6];
      v11 = a1[4];
      v12 = a1[5];
      v38[0] = v10;
      v38[1] = v11;
      v39 = v12;
      v13 = [v8 na_map:v37];
      v14 = [a1[4] context];
      v15 = [v14 delegateCaller];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __69__HMAccessCodeManager_fetchCachedAccessoryAccessCodesWithCompletion___block_invoke_183;
      v33[3] = &unk_1E754D208;
      v16 = a1[5];
      v33[4] = a1[4];
      v34 = v16;
      v35 = v13;
      v36 = a1[7];
      v17 = v13;
      [v15 invokeBlock:v33];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = a1[4];
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [a1[5] UUID];
        *buf = 138543618;
        v47 = v28;
        v48 = 2112;
        v49 = v29;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch cached accessory access codes. Could not find fetch response object in message.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = [a1[4] context];
      v31 = [v30 delegateCaller];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __69__HMAccessCodeManager_fetchCachedAccessoryAccessCodesWithCompletion___block_invoke_182;
      v40[3] = &unk_1E754E430;
      v9 = &v41;
      v41 = a1[7];
      [v31 invokeBlock:v40];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] UUID];
      *buf = 138543874;
      v47 = v21;
      v48 = 2112;
      v49 = v22;
      v50 = 2112;
      v51 = v5;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch cached accessory access codes with error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = [a1[4] context];
    v24 = [v23 delegateCaller];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __69__HMAccessCodeManager_fetchCachedAccessoryAccessCodesWithCompletion___block_invoke_181;
    v42[3] = &unk_1E754E458;
    v44 = a1[7];
    v43 = v5;
    [v24 invokeBlock:v42];

    v8 = v44;
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __69__HMAccessCodeManager_fetchCachedAccessoryAccessCodesWithCompletion___block_invoke_182(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

id __69__HMAccessCodeManager_fetchCachedAccessoryAccessCodesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessoryAccessCodeFetchResponse responseWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessoryAccessCodeFetchResponse because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __69__HMAccessCodeManager_fetchCachedAccessoryAccessCodesWithCompletion___block_invoke_183(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with fetch responses for cached accessory access codes: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)resetAccessoryAccessCodesWithValueMatchingHomeAccessCode:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    *buf = 138543874;
    v45 = v12;
    v46 = 2112;
    v47 = v13;
    v48 = 2112;
    v49 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Resetting accessory access codes with value matching home access code: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (!v7)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager resetAccessoryAccessCodesWithValueMatchingHomeAccessCode:completion:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    v33 = v10;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v35;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  v14 = [(HMAccessCodeManager *)v10 context];

  if (v14)
  {
    v15 = [(HMAccessCodeManager *)v10 home];
    if (v15)
    {
      v16 = [v6 createHomeAccessCodeValue];
      v42[0] = @"HMAccessCodeManagerMessageKeyHomeAccessCodeValue";
      v17 = encodeRootObject(v16);
      v43[0] = v17;
      v42[1] = *MEMORY[0x1E69A29A8];
      v18 = HMFEncodedRootObject();
      v43[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __91__HMAccessCodeManager_resetAccessoryAccessCodesWithValueMatchingHomeAccessCode_completion___block_invoke;
      v37[3] = &unk_1E754B6C8;
      v37[4] = v10;
      v38 = v8;
      v39 = v6;
      v41 = v7;
      v40 = v15;
      [(HMAccessCodeManager *)v10 _sendMessageWithName:@"HMAccessCodeManagerResetAccessoryAccessCodesMessage" payload:v19 responseHandler:v37];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v10;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v8 UUID];
        *buf = 138543874;
        v45 = v28;
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v6;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in resetAccessoryAccessCodesWithValueMatchingHomeAccessCode for access code: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v7 + 2))(v7, 0, v16);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v10;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v8 UUID];
      *buf = 138543874;
      v45 = v23;
      v46 = 2112;
      v47 = v24;
      v48 = 2080;
      v49 = "[HMAccessCodeManager resetAccessoryAccessCodesWithValueMatchingHomeAccessCode:completion:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Nil context, invoking completion - %s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __91__HMAccessCodeManager_resetAccessoryAccessCodesWithValueMatchingHomeAccessCode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v8 = [v6 hmf_unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessCodeModificationResponseValues" ofClasses:v7];

    if (v8)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __91__HMAccessCodeManager_resetAccessoryAccessCodesWithValueMatchingHomeAccessCode_completion___block_invoke_2;
      v38[3] = &unk_1E7547EC8;
      v9 = v39;
      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v39[0] = v10;
      v39[1] = v11;
      v40 = v12;
      v13 = [v8 na_map:v38];
      v14 = [*(a1 + 32) context];
      v15 = [v14 delegateCaller];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __91__HMAccessCodeManager_resetAccessoryAccessCodesWithValueMatchingHomeAccessCode_completion___block_invoke_180;
      v34[3] = &unk_1E754D208;
      v16 = *(a1 + 40);
      v34[4] = *(a1 + 32);
      v35 = v16;
      v36 = v13;
      v37 = *(a1 + 64);
      v17 = v13;
      [v15 invokeBlock:v34];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 40) UUID];
        *buf = 138543618;
        v48 = v29;
        v49 = 2112;
        v50 = v30;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to reset accessory access code. Could not find modification response objects in message.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v31 = [*(a1 + 32) context];
      v32 = [v31 delegateCaller];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __91__HMAccessCodeManager_resetAccessoryAccessCodesWithValueMatchingHomeAccessCode_completion___block_invoke_179;
      v41[3] = &unk_1E754E430;
      v9 = &v42;
      v42 = *(a1 + 64);
      [v32 invokeBlock:v41];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 40) UUID];
      v23 = *(a1 + 48);
      *buf = 138544130;
      v48 = v21;
      v49 = 2112;
      v50 = v22;
      v51 = 2112;
      v52 = v23;
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to reset accessory access codes with value matching home access code: %@, with error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [*(a1 + 32) context];
    v25 = [v24 delegateCaller];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __91__HMAccessCodeManager_resetAccessoryAccessCodesWithValueMatchingHomeAccessCode_completion___block_invoke_178;
    v43[3] = &unk_1E754E458;
    v45 = *(a1 + 64);
    v44 = v5;
    [v25 invokeBlock:v43];

    v8 = v45;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __91__HMAccessCodeManager_resetAccessoryAccessCodesWithValueMatchingHomeAccessCode_completion___block_invoke_179(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

id __91__HMAccessCodeManager_resetAccessoryAccessCodesWithValueMatchingHomeAccessCode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessCodeModificationResponse responseWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessCodeModificationResponse because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __91__HMAccessCodeManager_resetAccessoryAccessCodesWithValueMatchingHomeAccessCode_completion___block_invoke_180(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with modification responses: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setAccessCode:(id)a3 forUserWithUUID:(id)a4 completion:(id)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    *buf = 138544130;
    v59 = v15;
    v60 = 2112;
    v61 = v16;
    v62 = 2112;
    v63 = v8;
    v64 = 2112;
    v65 = v9;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Setting access code: %@ for user identifier: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  if (!v10)
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager setAccessCode:forUserWithUUID:completion:]", @"completion"];
    v44 = objc_autoreleasePoolPush();
    v45 = v13;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v47;
      v60 = 2112;
      v61 = v43;
      _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    v48 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v43 userInfo:0];
    objc_exception_throw(v48);
  }

  v17 = [(HMAccessCodeManager *)v13 context];

  if (v17)
  {
    v18 = [(HMAccessCodeManager *)v13 home];
    if (v18)
    {
      v49 = v9;
      v50 = v8;
      v19 = [HMAccessCodeManager convertPotentialUniqueIdentifier:v9 toUUIDForUserInHome:v18 flow:v11];
      v20 = objc_autoreleasePoolPush();
      v21 = v13;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v11 UUID];
        *buf = 138543874;
        v59 = v23;
        v60 = 2112;
        v61 = v24;
        v62 = 2112;
        v63 = v19;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User UUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = MEMORY[0x1E695DF90];
      v56[0] = @"HMAccessCodeManagerMessageKeyUserUUIDString";
      v26 = [v19 UUIDString];
      v57[0] = v26;
      v56[1] = *MEMORY[0x1E69A29A8];
      v27 = HMFEncodedRootObject();
      v57[1] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
      v29 = [v25 dictionaryWithDictionary:v28];

      v8 = v50;
      [v29 setObject:v50 forKeyedSubscript:@"HMAccessCodeManagerMessageKeyAccessCodeString"];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __64__HMAccessCodeManager_setAccessCode_forUserWithUUID_completion___block_invoke;
      v51[3] = &unk_1E754B6C8;
      v51[4] = v21;
      v52 = v11;
      v53 = v19;
      v55 = v10;
      v54 = v18;
      v30 = v19;
      [(HMAccessCodeManager *)v21 _sendMessageWithName:@"HMAccessCodeManagerSetAccessCodeForUserMessage" payload:v29 responseHandler:v51];

      v9 = v49;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v13;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        [v11 UUID];
        v41 = v40 = v8;
        *buf = 138543874;
        v59 = v39;
        v60 = 2112;
        v61 = v41;
        v62 = 2112;
        v63 = v40;
        _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in setAccessCode for access code: %@", buf, 0x20u);

        v8 = v40;
      }

      objc_autoreleasePoolPop(v36);
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v10 + 2))(v10, 0, v29);
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v13;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v11 UUID];
      *buf = 138543874;
      v59 = v34;
      v60 = 2112;
      v61 = v35;
      v62 = 2080;
      v63 = "[HMAccessCodeManager setAccessCode:forUserWithUUID:completion:]";
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Nil context, invoking completion - %s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v10 + 2))(v10, 0, v18);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __64__HMAccessCodeManager_setAccessCode_forUserWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v47[0] = objc_opt_class();
    v47[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v8 = [v6 hmf_unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessCodeModificationResponseValues" ofClasses:v7];

    if (v8)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __64__HMAccessCodeManager_setAccessCode_forUserWithUUID_completion___block_invoke_2;
      v39[3] = &unk_1E7547EC8;
      v9 = v40;
      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v40[0] = v10;
      v40[1] = v11;
      v41 = v12;
      v13 = [v8 na_map:v39];
      v14 = [*(a1 + 32) context];
      v15 = [v14 delegateCaller];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __64__HMAccessCodeManager_setAccessCode_forUserWithUUID_completion___block_invoke_177;
      v35[3] = &unk_1E754D208;
      v16 = *(a1 + 40);
      v35[4] = *(a1 + 32);
      v36 = v16;
      v37 = v13;
      v38 = *(a1 + 64);
      v17 = v13;
      [v15 invokeBlock:v35];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 40) UUID];
        v31 = *(a1 + 48);
        *buf = 138543874;
        v49 = v29;
        v50 = 2112;
        v51 = v30;
        v52 = 2112;
        v53 = v31;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set access code for user: %@. Could not find modification response objects in message response.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v32 = [*(a1 + 32) context];
      v33 = [v32 delegateCaller];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __64__HMAccessCodeManager_setAccessCode_forUserWithUUID_completion___block_invoke_176;
      v42[3] = &unk_1E754E430;
      v9 = &v43;
      v43 = *(a1 + 64);
      [v33 invokeBlock:v42];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 40) UUID];
      v23 = *(a1 + 48);
      *buf = 138544130;
      v49 = v21;
      v50 = 2112;
      v51 = v22;
      v52 = 2112;
      v53 = v23;
      v54 = 2112;
      v55 = v5;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set access code for user with UUID: %@, with error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [*(a1 + 32) context];
    v25 = [v24 delegateCaller];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __64__HMAccessCodeManager_setAccessCode_forUserWithUUID_completion___block_invoke_175;
    v44[3] = &unk_1E754E458;
    v46 = *(a1 + 64);
    v45 = v5;
    [v25 invokeBlock:v44];

    v8 = v46;
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __64__HMAccessCodeManager_setAccessCode_forUserWithUUID_completion___block_invoke_176(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

id __64__HMAccessCodeManager_setAccessCode_forUserWithUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessCodeModificationResponse responseWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessCodeModificationResponse because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __64__HMAccessCodeManager_setAccessCode_forUserWithUUID_completion___block_invoke_177(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with modification responses: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setAccessCode:(id)a3 forUser:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 uuid];
  [(HMAccessCodeManager *)self setAccessCode:v9 forUserWithUUID:v10 completion:v8];
}

- (void)generateAccessCodeForUser:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    *buf = 138543874;
    v45 = v12;
    v46 = 2112;
    v47 = v13;
    v48 = 2112;
    v49 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Generating new access code for user: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (!v7)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager generateAccessCodeForUser:completion:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    v33 = v10;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v35;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  v14 = [(HMAccessCodeManager *)v10 context];

  if (v14)
  {
    v15 = [(HMAccessCodeManager *)v10 home];
    if (v15)
    {
      v42[0] = @"HMAccessCodeManagerMessageKeyUserUUIDString";
      v16 = [v6 uuid];
      v17 = [v16 UUIDString];
      v43[0] = v17;
      v42[1] = *MEMORY[0x1E69A29A8];
      v18 = HMFEncodedRootObject();
      v43[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __60__HMAccessCodeManager_generateAccessCodeForUser_completion___block_invoke;
      v37[3] = &unk_1E754B6C8;
      v37[4] = v10;
      v38 = v8;
      v39 = v6;
      v41 = v7;
      v40 = v15;
      [(HMAccessCodeManager *)v10 _sendMessageWithName:@"HMAccessCodeManagerGenerateNewUserAccessCodeMessage" payload:v19 responseHandler:v37];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v10;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v8 UUID];
        *buf = 138543874;
        v45 = v28;
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v6;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in generateAccessCodeForUser for user: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v7 + 2))(v7, 0, v19);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v10;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v8 UUID];
      *buf = 138543874;
      v45 = v23;
      v46 = 2112;
      v47 = v24;
      v48 = 2080;
      v49 = "[HMAccessCodeManager generateAccessCodeForUser:completion:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Nil context, invoking completion - %s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __60__HMAccessCodeManager_generateAccessCodeForUser_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v8 = [v6 hmf_unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessCodeModificationResponseValues" ofClasses:v7];

    if (v8)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __60__HMAccessCodeManager_generateAccessCodeForUser_completion___block_invoke_2;
      v38[3] = &unk_1E7547EC8;
      v9 = v39;
      v10 = a1[7];
      v11 = a1[4];
      v12 = a1[5];
      v39[0] = v10;
      v39[1] = v11;
      v40 = v12;
      v13 = [v8 na_map:v38];
      v14 = [a1[4] context];
      v15 = [v14 delegateCaller];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __60__HMAccessCodeManager_generateAccessCodeForUser_completion___block_invoke_173;
      v34[3] = &unk_1E754D208;
      v16 = a1[5];
      v34[4] = a1[4];
      v35 = v16;
      v36 = v13;
      v37 = a1[8];
      v17 = v13;
      [v15 invokeBlock:v34];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = a1[4];
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [a1[5] UUID];
        *buf = 138543618;
        v48 = v29;
        v49 = 2112;
        v50 = v30;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate new access code. Could not find modification response objects in message.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v31 = [a1[4] context];
      v32 = [v31 delegateCaller];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __60__HMAccessCodeManager_generateAccessCodeForUser_completion___block_invoke_172;
      v41[3] = &unk_1E754E430;
      v9 = &v42;
      v42 = a1[8];
      [v32 invokeBlock:v41];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] UUID];
      v23 = [a1[6] uuid];
      *buf = 138544130;
      v48 = v21;
      v49 = 2112;
      v50 = v22;
      v51 = 2112;
      v52 = v23;
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate new access code for user with UUID: %@, with error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [a1[4] context];
    v25 = [v24 delegateCaller];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __60__HMAccessCodeManager_generateAccessCodeForUser_completion___block_invoke_171;
    v43[3] = &unk_1E754E458;
    v45 = a1[8];
    v44 = v5;
    [v25 invokeBlock:v43];

    v8 = v45;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __60__HMAccessCodeManager_generateAccessCodeForUser_completion___block_invoke_172(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

id __60__HMAccessCodeManager_generateAccessCodeForUser_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessCodeModificationResponse responseWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessCodeModificationResponse because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __60__HMAccessCodeManager_generateAccessCodeForUser_completion___block_invoke_173(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with modification responses: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)submitAccessCodeModificationRequests:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    *buf = 138543874;
    v45 = v12;
    v46 = 2112;
    v47 = v13;
    v48 = 2112;
    v49 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Submitting access code modification requests: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (!v7)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager submitAccessCodeModificationRequests:completion:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    v33 = v10;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v35;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  v14 = [(HMAccessCodeManager *)v10 context];

  if (v14)
  {
    v15 = [(HMAccessCodeManager *)v10 home];
    if (v15)
    {
      v16 = [HMAccessCodeManager valueObjectsForAccessCodeModificationRequests:v6 home:v15];
      v42[0] = @"HMAccessCodeManagerMessageKeyAccessCodeModificationRequests";
      v17 = encodeRootObject(v16);
      v43[0] = v17;
      v42[1] = *MEMORY[0x1E69A29A8];
      v18 = HMFEncodedRootObject();
      v43[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __71__HMAccessCodeManager_submitAccessCodeModificationRequests_completion___block_invoke;
      v37[3] = &unk_1E754B6C8;
      v37[4] = v10;
      v38 = v8;
      v39 = v6;
      v41 = v7;
      v40 = v15;
      [(HMAccessCodeManager *)v10 _sendMessageWithName:@"HMAccessCodeManagerSubmitAccessCodeModificationRequestsMessage" payload:v19 responseHandler:v37];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v10;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v8 UUID];
        *buf = 138543874;
        v45 = v28;
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v6;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in submitAccessCodeModificationRequests for modification requests: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v7 + 2))(v7, 0, v16);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v10;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v8 UUID];
      *buf = 138543874;
      v45 = v23;
      v46 = 2112;
      v47 = v24;
      v48 = 2080;
      v49 = "[HMAccessCodeManager submitAccessCodeModificationRequests:completion:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Nil context, invoking completion - %s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __71__HMAccessCodeManager_submitAccessCodeModificationRequests_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v8 = [v6 hmf_unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessCodeModificationResponseValues" ofClasses:v7];

    if (v8)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __71__HMAccessCodeManager_submitAccessCodeModificationRequests_completion___block_invoke_2;
      v38[3] = &unk_1E7547EC8;
      v9 = v39;
      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v39[0] = v10;
      v39[1] = v11;
      v40 = v12;
      v13 = [v8 na_map:v38];
      v14 = [*(a1 + 32) context];
      v15 = [v14 delegateCaller];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __71__HMAccessCodeManager_submitAccessCodeModificationRequests_completion___block_invoke_170;
      v34[3] = &unk_1E754D208;
      v16 = *(a1 + 40);
      v34[4] = *(a1 + 32);
      v35 = v16;
      v36 = v13;
      v37 = *(a1 + 64);
      v17 = v13;
      [v15 invokeBlock:v34];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 40) UUID];
        *buf = 138543618;
        v48 = v29;
        v49 = 2112;
        v50 = v30;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to submit modification requests. Could not find modification response objects in message.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v31 = [*(a1 + 32) context];
      v32 = [v31 delegateCaller];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __71__HMAccessCodeManager_submitAccessCodeModificationRequests_completion___block_invoke_169;
      v41[3] = &unk_1E754E430;
      v9 = &v42;
      v42 = *(a1 + 64);
      [v32 invokeBlock:v41];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 40) UUID];
      v23 = *(a1 + 48);
      *buf = 138544130;
      v48 = v21;
      v49 = 2112;
      v50 = v22;
      v51 = 2112;
      v52 = v23;
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to submit access code modification requests: %@, with error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [*(a1 + 32) context];
    v25 = [v24 delegateCaller];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __71__HMAccessCodeManager_submitAccessCodeModificationRequests_completion___block_invoke_168;
    v43[3] = &unk_1E754E458;
    v45 = *(a1 + 64);
    v44 = v5;
    [v25 invokeBlock:v43];

    v8 = v45;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __71__HMAccessCodeManager_submitAccessCodeModificationRequests_completion___block_invoke_169(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

id __71__HMAccessCodeManager_submitAccessCodeModificationRequests_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessCodeModificationResponse responseWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessCodeModificationResponse because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __71__HMAccessCodeManager_submitAccessCodeModificationRequests_completion___block_invoke_170(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with modification responses: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeSimpleLabelAccessCode:(id)a3 completion:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    *buf = 138543618;
    v43 = v12;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Removing simple label access code", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (!v7)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager removeSimpleLabelAccessCode:completion:]", @"completion"];
    v31 = objc_autoreleasePoolPush();
    v32 = v10;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v34;
      v44 = 2112;
      v45 = v30;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
    objc_exception_throw(v35);
  }

  v14 = [(HMAccessCodeManager *)v10 context];

  if (v14)
  {
    v15 = [(HMAccessCodeManager *)v10 home];
    if (v15)
    {
      v41[0] = v6;
      v16 = *MEMORY[0x1E69A29A8];
      v40[0] = @"HMAccessCodeManagerMessageKeyAccessCodeString";
      v40[1] = v16;
      v17 = HMFEncodedRootObject();
      v41[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __62__HMAccessCodeManager_removeSimpleLabelAccessCode_completion___block_invoke;
      v36[3] = &unk_1E754D030;
      v36[4] = v10;
      v37 = v8;
      v39 = v7;
      v38 = v15;
      [(HMAccessCodeManager *)v10 _sendMessageWithName:@"HMAccessCodeManagerRemoveSimpleLabelAccessCodeMessage" payload:v18 responseHandler:v36];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v10;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v8 UUID];
        *buf = 138543618;
        v43 = v27;
        v44 = 2112;
        v45 = v28;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in removeSimpleLabelAccessCode", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v7 + 2))(v7, 0, v18);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v10;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v8 UUID];
      *buf = 138543874;
      v43 = v22;
      v44 = 2112;
      v45 = v23;
      v46 = 2080;
      v47 = "[HMAccessCodeManager removeSimpleLabelAccessCode:completion:]";
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Nil context, invoking completion - %s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __62__HMAccessCodeManager_removeSimpleLabelAccessCode_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    v8 = [v6 hmf_unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessCodeModificationResponseValues" ofClasses:v7];

    if (v8)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __62__HMAccessCodeManager_removeSimpleLabelAccessCode_completion___block_invoke_2;
      v37[3] = &unk_1E7547EC8;
      v9 = v38;
      v10 = a1[6];
      v11 = a1[4];
      v12 = a1[5];
      v38[0] = v10;
      v38[1] = v11;
      v39 = v12;
      v13 = [v8 na_map:v37];
      v14 = [a1[4] context];
      v15 = [v14 delegateCaller];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __62__HMAccessCodeManager_removeSimpleLabelAccessCode_completion___block_invoke_166;
      v33[3] = &unk_1E754D208;
      v16 = a1[5];
      v33[4] = a1[4];
      v34 = v16;
      v35 = v13;
      v36 = a1[7];
      v17 = v13;
      [v15 invokeBlock:v33];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = a1[4];
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [a1[5] UUID];
        *buf = 138543618;
        v47 = v28;
        v48 = 2112;
        v49 = v29;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove simple label access code. Could not find modification response objects in message response.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = [a1[4] context];
      v31 = [v30 delegateCaller];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __62__HMAccessCodeManager_removeSimpleLabelAccessCode_completion___block_invoke_163;
      v40[3] = &unk_1E754E430;
      v9 = &v41;
      v41 = a1[7];
      [v31 invokeBlock:v40];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] UUID];
      *buf = 138543874;
      v47 = v21;
      v48 = 2112;
      v49 = v22;
      v50 = 2112;
      v51 = v5;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove simple label access code with error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = [a1[4] context];
    v24 = [v23 delegateCaller];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __62__HMAccessCodeManager_removeSimpleLabelAccessCode_completion___block_invoke_161;
    v42[3] = &unk_1E754E458;
    v44 = a1[7];
    v43 = v5;
    [v24 invokeBlock:v42];

    v8 = v44;
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __62__HMAccessCodeManager_removeSimpleLabelAccessCode_completion___block_invoke_163(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

id __62__HMAccessCodeManager_removeSimpleLabelAccessCode_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessCodeModificationResponse responseWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessCodeModificationResponse because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __62__HMAccessCodeManager_removeSimpleLabelAccessCode_completion___block_invoke_166(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with modification responses for removed simple label access code: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeHomeAccessCodeWithValue:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager removeHomeAccessCodeWithValue:completion:]", @"completion"];
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0];
    objc_exception_throw(v24);
  }

  v8 = v7;
  v9 = [(HMAccessCodeManager *)self context];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing home access code - This method has been deprecated.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [v6 stringValue];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __64__HMAccessCodeManager_removeHomeAccessCodeWithValue_completion___block_invoke;
    v25[3] = &unk_1E754DDD8;
    v26 = v8;
    [(HMAccessCodeManager *)v11 removeSimpleLabelAccessCode:v15 completion:v25];

    v16 = v26;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v17;
      v29 = 2080;
      v30 = "[HMAccessCodeManager removeHomeAccessCodeWithValue:completion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v8)[2](v8, v16);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setUserInformation:(id)a3 forHomeAccessCodeWithValue:(id)a4 completion:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    *buf = 138543874;
    v49 = v15;
    v50 = 2112;
    v51 = v16;
    v52 = 2112;
    v53 = v8;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Setting user information: %@, for home access code", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if (!v10)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager setUserInformation:forHomeAccessCodeWithValue:completion:]", @"completion"];
    v37 = objc_autoreleasePoolPush();
    v38 = v13;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v40;
      v50 = 2112;
      v51 = v36;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v36 userInfo:0];
    objc_exception_throw(v41);
  }

  v17 = [(HMAccessCodeManager *)v13 context];

  if (v17)
  {
    v18 = [v8 removedUserInfo];

    if (!v18)
    {
      v30 = [v8 createAccessCodeUserInformationValue];
      v46[0] = @"HMAccessCodeManagerMessageKeyUserInformationValue";
      v31 = encodeRootObject(v30);
      v47[0] = v31;
      v46[1] = @"HMAccessCodeManagerMessageKeyAccessCodeValue";
      v32 = encodeRootObject(v9);
      v47[1] = v32;
      v46[2] = *MEMORY[0x1E69A29A8];
      v33 = HMFEncodedRootObject();
      v47[2] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __80__HMAccessCodeManager_setUserInformation_forHomeAccessCodeWithValue_completion___block_invoke;
      v42[3] = &unk_1E754D030;
      v42[4] = v13;
      v43 = v11;
      v44 = v8;
      v45 = v10;
      [(HMAccessCodeManager *)v13 _sendMessageWithName:@"HMAccessCodeManagerSetUserInformationMessage" payload:v34 responseHandler:v42];

      goto LABEL_14;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = v13;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v11 UUID];
      *buf = 138543618;
      v49 = v22;
      v50 = 2112;
      v51 = v23;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Caller passed userInformation with a removedUserInfo, which is not allowed. Returning an error.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = MEMORY[0x1E696ABC0];
    v25 = 3;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v13;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v29;
      v50 = 2080;
      v51 = "[HMAccessCodeManager setUserInformation:forHomeAccessCodeWithValue:completion:]";
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v24 = MEMORY[0x1E696ABC0];
    v25 = 12;
  }

  v30 = [v24 hmErrorWithCode:v25];
  (*(v10 + 2))(v10, v30);
LABEL_14:

  v35 = *MEMORY[0x1E69E9840];
}

void __80__HMAccessCodeManager_setUserInformation_forHomeAccessCodeWithValue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = *(a1 + 48);
      *buf = 138544130;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set user information: %@, for home access code with error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = [*(a1 + 32) context];
  v14 = [v13 delegateCaller];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__HMAccessCodeManager_setUserInformation_forHomeAccessCodeWithValue_completion___block_invoke_159;
  v18[3] = &unk_1E754E458;
  v15 = *(a1 + 56);
  v19 = v5;
  v20 = v15;
  v16 = v5;
  [v14 invokeBlock:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchHomeAccessCodesWithCompletion:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    *buf = 138543618;
    v42 = v9;
    v43 = 2112;
    v44 = v10;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Fetching home access codes", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (!v4)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager fetchHomeAccessCodesWithCompletion:]", @"completion"];
    v30 = objc_autoreleasePoolPush();
    v31 = v7;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v33;
      v43 = 2112;
      v44 = v29;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v29 userInfo:0];
    objc_exception_throw(v34);
  }

  v11 = [(HMAccessCodeManager *)v7 context];

  if (v11)
  {
    v12 = [(HMAccessCodeManager *)v7 home];
    if (v12)
    {
      v13 = v12;
      v39 = *MEMORY[0x1E69A29A8];
      v14 = HMFEncodedRootObject();
      v40 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __58__HMAccessCodeManager_fetchHomeAccessCodesWithCompletion___block_invoke;
      v35[3] = &unk_1E754D030;
      v35[4] = v7;
      v36 = v5;
      v38 = v4;
      v16 = v13;
      v37 = v16;
      [(HMAccessCodeManager *)v7 _sendMessageWithName:@"HMAccessCodeManagerFetchHomeAccessCodesMessage" payload:v15 responseHandler:v35];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v7;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v5 UUID];
        *buf = 138543618;
        v42 = v25;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in fetchHomeAccessCodesWithCompletion", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v4 + 2))(v4, 0, v27);

      v16 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v7;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v5 UUID];
      *buf = 138543874;
      v42 = v20;
      v43 = 2112;
      v44 = v21;
      v45 = 2080;
      v46 = "[HMAccessCodeManager fetchHomeAccessCodesWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Nil context, invoking completion - %s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, 0, v16);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __58__HMAccessCodeManager_fetchHomeAccessCodesWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v8 = [v6 hmf_unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyHomeAccessCodeValues" ofClasses:v7];

    if (v8)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __58__HMAccessCodeManager_fetchHomeAccessCodesWithCompletion___block_invoke_2;
      v33[3] = &unk_1E7547EA0;
      v9 = &v34;
      v34 = a1[6];
      v10 = [v8 na_map:v33];
      v11 = [a1[4] context];
      v12 = [v11 delegateCaller];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __58__HMAccessCodeManager_fetchHomeAccessCodesWithCompletion___block_invoke_3;
      v29[3] = &unk_1E754D208;
      v13 = a1[5];
      v29[4] = a1[4];
      v30 = v13;
      v31 = v10;
      v32 = a1[7];
      v14 = v10;
      [v12 invokeBlock:v29];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1[4];
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [a1[5] UUID];
        *buf = 138543618;
        v42 = v25;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch home access codes. Could not find access codes in message.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v14 = [a1[4] context];
      v27 = [v14 delegateCaller];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __58__HMAccessCodeManager_fetchHomeAccessCodesWithCompletion___block_invoke_156;
      v35[3] = &unk_1E754E430;
      v9 = &v36;
      v36 = a1[7];
      [v27 invokeBlock:v35];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1[4];
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [a1[5] UUID];
      *buf = 138543874;
      v42 = v18;
      v43 = 2112;
      v44 = v19;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch home access codes with error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [a1[4] context];
    v21 = [v20 delegateCaller];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __58__HMAccessCodeManager_fetchHomeAccessCodesWithCompletion___block_invoke_154;
    v37[3] = &unk_1E754E458;
    v39 = a1[7];
    v38 = v5;
    [v21 invokeBlock:v37];

    v8 = v39;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __58__HMAccessCodeManager_fetchHomeAccessCodesWithCompletion___block_invoke_156(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __58__HMAccessCodeManager_fetchHomeAccessCodesWithCompletion___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with home access codes: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchAccessCodeConstraintsFromAccessories:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    *buf = 138543874;
    v45 = v12;
    v46 = 2112;
    v47 = v13;
    v48 = 2112;
    v49 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Fetching access code constraints from accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (!v7)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager fetchAccessCodeConstraintsFromAccessories:completion:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    v33 = v10;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v35;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  v14 = [(HMAccessCodeManager *)v10 context];

  if (v14)
  {
    v15 = [(HMAccessCodeManager *)v10 home];
    if (v15)
    {
      v16 = [v6 na_map:&__block_literal_global_147];
      v42[0] = @"HMAccessCodeManagerMessageKeyAccessoryUUIDs";
      v17 = encodeRootObject(v16);
      v43[0] = v17;
      v42[1] = *MEMORY[0x1E69A29A8];
      v18 = HMFEncodedRootObject();
      v43[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __76__HMAccessCodeManager_fetchAccessCodeConstraintsFromAccessories_completion___block_invoke_2;
      v37[3] = &unk_1E754B6C8;
      v37[4] = v10;
      v38 = v8;
      v39 = v6;
      v41 = v7;
      v40 = v15;
      [(HMAccessCodeManager *)v10 _sendMessageWithName:@"HMAccessCodeManagerFetchAccessCodeConstraintsMessage" payload:v19 responseHandler:v37];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v10;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v8 UUID];
        *buf = 138543874;
        v45 = v28;
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v6;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in fetchAccessCodeConstraintsFromAccessories for accessories: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v7 + 2))(v7, 0, v16);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v10;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v8 UUID];
      *buf = 138543874;
      v45 = v23;
      v46 = 2112;
      v47 = v24;
      v48 = 2080;
      v49 = "[HMAccessCodeManager fetchAccessCodeConstraintsFromAccessories:completion:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Nil context, invoking completion - %s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __76__HMAccessCodeManager_fetchAccessCodeConstraintsFromAccessories_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v8 = [v6 hmf_unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessoryAccessCodeConstraintsFetchResponseValues" ofClasses:v7];

    if (v8)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __76__HMAccessCodeManager_fetchAccessCodeConstraintsFromAccessories_completion___block_invoke_2_151;
      v34[3] = &unk_1E7547E78;
      v9 = &v35;
      v35 = *(a1 + 56);
      v10 = [v8 na_map:v34];
      v11 = [*(a1 + 32) context];
      v12 = [v11 delegateCaller];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __76__HMAccessCodeManager_fetchAccessCodeConstraintsFromAccessories_completion___block_invoke_3;
      v30[3] = &unk_1E754D208;
      v13 = *(a1 + 40);
      v30[4] = *(a1 + 32);
      v31 = v13;
      v32 = v10;
      v33 = *(a1 + 64);
      v14 = v10;
      [v12 invokeBlock:v30];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [*(a1 + 40) UUID];
        *buf = 138543618;
        v43 = v26;
        v44 = 2112;
        v45 = v27;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch access code constraints. Could not find fetch response object in message.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v14 = [*(a1 + 32) context];
      v28 = [v14 delegateCaller];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __76__HMAccessCodeManager_fetchAccessCodeConstraintsFromAccessories_completion___block_invoke_150;
      v36[3] = &unk_1E754E430;
      v9 = &v37;
      v37 = *(a1 + 64);
      [v28 invokeBlock:v36];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 40) UUID];
      v20 = *(a1 + 48);
      *buf = 138544130;
      v43 = v18;
      v44 = 2112;
      v45 = v19;
      v46 = 2112;
      v47 = v20;
      v48 = 2112;
      v49 = v5;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch access code constraints from accessories: %@, with error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [*(a1 + 32) context];
    v22 = [v21 delegateCaller];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __76__HMAccessCodeManager_fetchAccessCodeConstraintsFromAccessories_completion___block_invoke_148;
    v38[3] = &unk_1E754E458;
    v40 = *(a1 + 64);
    v39 = v5;
    [v22 invokeBlock:v38];

    v8 = v40;
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __76__HMAccessCodeManager_fetchAccessCodeConstraintsFromAccessories_completion___block_invoke_150(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __76__HMAccessCodeManager_fetchAccessCodeConstraintsFromAccessories_completion___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with fetch responses: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)fetchAccessCodesFromAccessories:(id)a3 completion:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    *buf = 138543874;
    v45 = v12;
    v46 = 2112;
    v47 = v13;
    v48 = 2112;
    v49 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Fetching access codes from accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (!v7)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessCodeManager fetchAccessCodesFromAccessories:completion:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    v33 = v10;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v35;
      v46 = 2112;
      v47 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  v14 = [(HMAccessCodeManager *)v10 context];

  if (v14)
  {
    v15 = [(HMAccessCodeManager *)v10 home];
    if (v15)
    {
      v16 = [v6 na_map:&__block_literal_global_134];
      v42[0] = @"HMAccessCodeManagerMessageKeyAccessoryUUIDs";
      v17 = encodeRootObject(v16);
      v43[0] = v17;
      v42[1] = *MEMORY[0x1E69A29A8];
      v18 = HMFEncodedRootObject();
      v43[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __66__HMAccessCodeManager_fetchAccessCodesFromAccessories_completion___block_invoke_2;
      v37[3] = &unk_1E754B6C8;
      v37[4] = v10;
      v38 = v8;
      v39 = v6;
      v41 = v7;
      v40 = v15;
      [(HMAccessCodeManager *)v10 _sendMessageWithName:@"HMAccessCodeManagerFetchAccessCodesMessage" payload:v19 responseHandler:v37];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v10;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v8 UUID];
        *buf = 138543874;
        v45 = v28;
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v6;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home reference was nil in fetchAccessCodesFromAccessories for accessories: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v7 + 2))(v7, 0, v16);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v10;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v8 UUID];
      *buf = 138543874;
      v45 = v23;
      v46 = 2112;
      v47 = v24;
      v48 = 2080;
      v49 = "[HMAccessCodeManager fetchAccessCodesFromAccessories:completion:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Nil context, invoking completion - %s", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __66__HMAccessCodeManager_fetchAccessCodesFromAccessories_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v8 = [v6 hmf_unarchivedObjectForKey:@"HMAccessCodeManagerMessageKeyAccessoryAccessCodeFetchResponseValues" ofClasses:v7];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [*(a1 + 40) UUID];
        *buf = 138543874;
        v51 = v13;
        v52 = 2112;
        v53 = v14;
        v54 = 2112;
        v55 = v8;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Received accessory access code fetch response values: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __66__HMAccessCodeManager_fetchAccessCodesFromAccessories_completion___block_invoke_141;
      v41[3] = &unk_1E7547E50;
      v15 = v42;
      v16 = *(a1 + 56);
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v42[0] = v16;
      v42[1] = v17;
      v43 = v18;
      v19 = [v8 na_map:v41];
      v20 = [*(a1 + 32) context];
      v21 = [v20 delegateCaller];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __66__HMAccessCodeManager_fetchAccessCodesFromAccessories_completion___block_invoke_144;
      v37[3] = &unk_1E754D208;
      v22 = *(a1 + 40);
      v37[4] = *(a1 + 32);
      v38 = v22;
      v39 = v19;
      v40 = *(a1 + 64);
      v23 = v19;
      [v21 invokeBlock:v37];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [*(a1 + 40) UUID];
        *buf = 138543618;
        v51 = v32;
        v52 = 2112;
        v53 = v33;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch access codes. Could not find fetch response object in message.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v34 = [*(a1 + 32) context];
      v35 = [v34 delegateCaller];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __66__HMAccessCodeManager_fetchAccessCodesFromAccessories_completion___block_invoke_140;
      v44[3] = &unk_1E754E430;
      v15 = &v45;
      v45 = *(a1 + 64);
      [v35 invokeBlock:v44];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [*(a1 + 40) UUID];
      v29 = *(a1 + 48);
      *buf = 138544130;
      v51 = v27;
      v52 = 2112;
      v53 = v28;
      v54 = 2112;
      v55 = v29;
      v56 = 2112;
      v57 = v5;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch access codes from accessories: %@, with error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    v30 = [*(a1 + 32) context];
    v31 = [v30 delegateCaller];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __66__HMAccessCodeManager_fetchAccessCodesFromAccessories_completion___block_invoke_136;
    v46[3] = &unk_1E754E458;
    v48 = *(a1 + 64);
    v47 = v5;
    [v31 invokeBlock:v46];

    v8 = v48;
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __66__HMAccessCodeManager_fetchAccessCodesFromAccessories_completion___block_invoke_140(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

id __66__HMAccessCodeManager_fetchAccessCodesFromAccessories_completion___block_invoke_141(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessoryUUID];
  v6 = [v4 accessoryWithUUID:v5];

  if (v6)
  {
    v7 = [HMAccessoryAccessCodeFetchResponse responseWithValue:v3 accessory:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [0 uuid];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating HMAccessoryAccessCodeFetchResponse because we could not find the accessory with UUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __66__HMAccessCodeManager_fetchAccessCodesFromAccessories_completion___block_invoke_144(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with fetch responses for accessory access codes: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)accessoriesSupportingAccessCodes
{
  v2 = [(HMAccessCodeManager *)self home];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accessories];
    v5 = [v4 na_filter:&__block_literal_global_122];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (void)removeObserver:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    v18 = 138543874;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Removing observer: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_lock_lock_with_options();
  v11 = [(HMAccessCodeManager *)v7 observers];
  v12 = [v11 count];

  v13 = [(HMAccessCodeManager *)v7 observers];
  [v13 removeObject:v4];

  v14 = [(HMAccessCodeManager *)v7 observers];
  if ([v14 count])
  {
    v15 = 0;
  }

  else
  {
    v15 = v12 == 1;
  }

  v16 = v15;

  os_unfair_lock_unlock(&v7->_lock.lock);
  if (v16)
  {
    [(HMAccessCodeManager *)v7 _unsubscribeWithFlow:v5];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    v15 = 138543874;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Adding observer: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  os_unfair_lock_lock_with_options();
  v11 = [(HMAccessCodeManager *)v7 observers];
  v12 = [v11 count];

  v13 = [(HMAccessCodeManager *)v7 observers];
  [v13 addObject:v4];

  os_unfair_lock_unlock(&v7->_lock.lock);
  if (!v12)
  {
    [(HMAccessCodeManager *)v7 _subscribeWithFlow:v5];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)unconfigure
{
  v17 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring access code manager", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMAccessCodeManager *)v5 setHome:0];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:v5];

    v10 = [(HMAccessCodeManager *)v5 context];
    v11 = [v10 messageDispatcher];
    [v11 deregisterReceiver:v5];

    v12 = self->_context;
    self->_context = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)configure
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 UUID];
    v23 = 138543618;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Configuring access code manager", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [(HMAccessCodeManager *)v5 context];
  v10 = [v9 messageDispatcher];
  [v10 registerForMessage:@"HMAccessCodeManagerDidAddAccessoryAccessCodesMessage" receiver:v5 selector:sel_handleDidAddAccessoryAccessCodesMessage_];

  v11 = [(HMAccessCodeManager *)v5 context];
  v12 = [v11 messageDispatcher];
  [v12 registerForMessage:@"HMAccessCodeManagerDidUpdateAccessoryAccessCodesMessage" receiver:v5 selector:sel_handleDidUpdateAccessoryAccessCodesMessage_];

  v13 = [(HMAccessCodeManager *)v5 context];
  v14 = [v13 messageDispatcher];
  [v14 registerForMessage:@"HMAccessCodeManagerDidRemoveAccessoryAccessCodesMessage" receiver:v5 selector:sel_handleDidRemoveAccessoryAccessCodesMessage_];

  v15 = [(HMAccessCodeManager *)v5 context];
  v16 = [v15 messageDispatcher];
  [v16 registerForMessage:@"HMAccessCodeManagerDidAddHomeAccessCodesMessage" receiver:v5 selector:sel_handleDidAddHomeAccessCodesMessage_];

  v17 = [(HMAccessCodeManager *)v5 context];
  v18 = [v17 messageDispatcher];
  [v18 registerForMessage:@"HMAccessCodeManagerDidUpdateHomeAccessCodesMessage" receiver:v5 selector:sel_handleDidUpdateHomeAccessCodesMessage_];

  v19 = [(HMAccessCodeManager *)v5 context];
  v20 = [v19 messageDispatcher];
  [v20 registerForMessage:@"HMAccessCodeManagerDidRemoveHomeAccessCodesMessage" receiver:v5 selector:sel_handleDidRemoveHomeAccessCodesMessage_];

  v21 = [(HMAccessCodeManager *)v5 notificationCenter];
  [v21 addObserver:v5 selector:sel_handleDaemonReconnectedNotification_ name:@"HMDaemonReconnectedNotification" object:0];

  v22 = *MEMORY[0x1E69E9840];
}

- (HMAccessCodeManager)initWithHome:(id)a3 context:(id)a4 UUID:(id)a5 notificationCenter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = HMAccessCodeManager;
  v14 = [(HMAccessCodeManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, v10);
    objc_storeStrong(&v15->_context, a4);
    objc_storeStrong(&v15->_UUID, a5);
    objc_storeStrong(&v15->_notificationCenter, a6);
    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v15->_observers;
    v15->_observers = v16;
  }

  return v15;
}

- (HMAccessCodeManager)initWithHome:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 uuid];
  v7 = [v5 accessCodeManagerUUIDFromHomeUUID:v6];

  v8 = [v4 context];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = [(HMAccessCodeManager *)self initWithHome:v4 context:v8 UUID:v7 notificationCenter:v9];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t123 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t123, &__block_literal_global_217);
  }

  v3 = logCategory__hmf_once_v124;

  return v3;
}

uint64_t __34__HMAccessCodeManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v124;
  logCategory__hmf_once_v124 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)convertPotentialUniqueIdentifier:(id)a3 toUUIDForUserInHome:(id)a4 flow:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 users];
  v12 = [v9 currentUser];
  v13 = [v11 arrayByAddingObject:v12];

  v14 = objc_autoreleasePoolPush();
  v15 = a1;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v17 = v31 = v13;
    [v10 UUID];
    v18 = v32 = v10;
    v19 = [v9 currentUser];
    [v19 uuid];
    v20 = v30 = v14;
    v21 = [v9 currentUser];
    v22 = [v21 uniqueIdentifier];
    *buf = 138544386;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v8;
    v41 = 2112;
    v42 = v20;
    v43 = 2112;
    v44 = v22;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] convertPotentialUniqueIdentifier: %@ where current user has uuid %@ and uniqueIdentifier %@", buf, 0x34u);

    v14 = v30;
    v10 = v32;

    v13 = v31;
  }

  objc_autoreleasePoolPop(v14);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __81__HMAccessCodeManager_convertPotentialUniqueIdentifier_toUUIDForUserInHome_flow___block_invoke;
  v33[3] = &unk_1E754A178;
  v34 = v8;
  v23 = v8;
  v24 = [v13 na_firstObjectPassingTest:v33];
  v25 = [v24 uuid];

  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26;

  v28 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t __81__HMAccessCodeManager_convertPotentialUniqueIdentifier_toUUIDForUserInHome_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = *(a1 + 32);
  v5 = HMFEqualObjects();

  return v5;
}

id __74__HMAccessCodeManager_valueObjectsForAccessCodeModificationRequests_home___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v4)
  {
    v11 = [v4 createAccessCodeAddRequestValue];
LABEL_16:
    v12 = v11;
    goto LABEL_17;
  }

  if (v7)
  {
    v11 = [v7 createAccessCodeUpdateRequestValue];
    goto LABEL_16;
  }

  if (v10)
  {
    v11 = [v10 createAccessCodeRemoveRequestValue];
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

+ (id)accessCodeManagerUUIDFromHomeUUID:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"5B1683C8-EAFC-436F-9DBD-1A08AD6E62D3"];
  v6 = MEMORY[0x1E696AFB0];
  v7 = [v4 UUIDString];

  v8 = [v7 dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

+ (HMAccessCodeConstraints)accessCodeConstraints
{
  v2 = [[HMAccessCodeConstraints alloc] initWithAllowedCharacterSets:1 minimumLength:4 maximumLength:8 maximumAllowedAccessCodes:1000];

  return v2;
}

+ (id)_createAccessCodeWithLength:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v5 = HMGenerateDecimalDigitPasswordWithLength(a3, &v13);
  v6 = v13;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v10;
      v16 = 2048;
      v17 = a3;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate access code with length: %ld, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (int64_t)_accessCodeLengthFromLowerBound:(int64_t)a3 upperBound:(int64_t)a4
{
  if (a3 > a4)
  {
    return -1;
  }

  if (a3 <= 6 && a4 > 5)
  {
    return 6;
  }

  if (a3 <= 4 && a4 > 3)
  {
    return 4;
  }

  if (a3 <= 3)
  {
    return -1;
  }

  return a3;
}

+ (int64_t)greatestLowerBoundForAccessCodeLengthFromConstraints:(id)a3
{
  v3 = [a3 na_map:&__block_literal_global_101];
  v4 = [v3 valueForKeyPath:@"@max.self"];
  v5 = [v4 integerValue];

  return v5;
}

uint64_t __76__HMAccessCodeManager_greatestLowerBoundForAccessCodeLengthFromConstraints___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 minimumLength];

  return [v2 numberWithInteger:v3];
}

+ (int64_t)leastUpperBoundForAccessCodeLengthFromConstraints:(id)a3
{
  v3 = [a3 na_map:&__block_literal_global_16184];
  v4 = [v3 valueForKeyPath:@"@min.self"];
  v5 = [v4 integerValue];

  return v5;
}

uint64_t __73__HMAccessCodeManager_leastUpperBoundForAccessCodeLengthFromConstraints___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 maximumLength];

  return [v2 numberWithInteger:v3];
}

+ (id)generateAccessCodeValueFromConstraints:(id)a3 accessoryAccessCodes:(id)a4 homeAccessCodes:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E695DFA8] setWithArray:a4];
  v11 = v10;
  if (v9)
  {
    [v10 addObjectsFromArray:v9];
  }

  v12 = [a1 _accessCodeLengthFromLowerBound:objc_msgSend(a1 upperBound:{"greatestLowerBoundForAccessCodeLengthFromConstraints:", v8), objc_msgSend(a1, "leastUpperBoundForAccessCodeLengthFromConstraints:", v8)}];
  if (v12 == -1)
  {
    v17 = 0;
  }

  else
  {
    v13 = v12;
    v14 = 0;
    v15 = 10;
    while (1)
    {
      v16 = v14;
      v14 = [a1 _createAccessCodeWithLength:v13];

      if (v14)
      {
        if (![v11 containsObject:v14])
        {
          break;
        }
      }

      if (!--v15)
      {
        v17 = 0;
        goto LABEL_11;
      }
    }

    v17 = [[HMAccessCodeValue alloc] initWithStringValue:v14];
LABEL_11:
  }

  return v17;
}

+ (BOOL)doesAccessCode:(id)a3 conflictWithExistingAccessCodes:(id)a4
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__HMAccessCodeManager_doesAccessCode_conflictWithExistingAccessCodes___block_invoke;
  v8[3] = &unk_1E7548550;
  v9 = v5;
  v6 = v5;
  LOBYTE(a4) = [a4 na_any:v8];

  return a4;
}

uint64_t __70__HMAccessCodeManager_doesAccessCode_conflictWithExistingAccessCodes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = a2;
  LODWORD(v3) = HMFEqualObjects();
  v5 = [v4 hasPrefix:*(v2 + 32)];
  LODWORD(v2) = [*(v2 + 32) hasPrefix:v4];

  return (v3 | v5 | v2) & 1;
}

@end
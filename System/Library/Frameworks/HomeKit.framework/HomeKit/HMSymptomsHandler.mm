@interface HMSymptomsHandler
+ (id)logCategory;
+ (id)symptomsHandlerUUIDFromAccessoryUUID:(id)a3;
- (HMSymptomsHandler)initWithAccessory:(id)a3;
- (HMSymptomsHandler)initWithUUID:(id)a3 context:(id)a4 logIdentifier:(id)a5;
- (HMSymptomsHandlerDelegate)delegate;
- (NSSet)symptoms;
- (NSUUID)sfDeviceIdentifier;
- (id)_findAndRemoveFixSessionsForSymptom:(id)a3;
- (id)newFixSessionForSymptom:(id)a3;
- (void)_addFixSession:(id)a3;
- (void)_callFixSessionAvailabilityUpdatedDelegate;
- (void)_callSymptomsUpdatedDelegate:(id)a3;
- (void)_handleSymptomStateUpdatedMessage:(id)a3;
- (void)_subscribe;
- (void)_unsubscribe;
- (void)configure;
- (void)dealloc;
- (void)initiateFixWithCompletionHandler:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSFDeviceIdentifier:(id)a3;
- (void)setSymptoms:(id)a3;
@end

@implementation HMSymptomsHandler

- (void)_handleSymptomStateUpdatedMessage:(id)a3
{
  v58[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v58[0] = objc_opt_class();
  v58[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v6 = [v4 unarchivedObjectForKey:@"HMSM.symptoms" ofClasses:v5];

  v7 = [(HMSymptomsHandler *)self symptoms];
  v8 = [v7 isEqualToSet:v6];

  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v38 = self;
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v4 shortDescription];
      v14 = [(HMSymptomsHandler *)v10 symptoms];
      *buf = 138544130;
      v51 = v12;
      v52 = 2112;
      v53 = v13;
      v54 = 2112;
      v55 = v14;
      v56 = 2112;
      v57 = v6;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %@ message so updating symptoms from %@ to %@", buf, 0x2Au);
    }

    v39 = v4;

    objc_autoreleasePoolPop(v9);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = [(HMSymptomsHandler *)v10 symptoms];
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v44 + 1) + 8 * i);
          if (([v6 containsObject:{v20, v38}] & 1) == 0)
          {
            v21 = [(HMSymptomsHandler *)v10 _findAndRemoveFixSessionsForSymptom:v20];
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v41;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v41 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  [*(*(&v40 + 1) + 8 * j) noteSymptomDisappeared];
                }

                v23 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
              }

              while (v23);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v17);
    }

    v26 = [(HMSymptomsHandler *)v10 currentSymptoms];
    v27 = [v6 allObjects];
    [v26 setArray:v27];

    [(HMSymptomsHandler *)v10 _callSymptomsUpdatedDelegate:v6];
    self = v38;
    v4 = v39;
  }

  v28 = [v4 uuidForKey:{@"HMSM.sfDeviceIdentifier", v38}];
  v29 = [(HMSymptomsHandler *)self sfDeviceIdentifier];
  v30 = HMFEqualObjects();

  if ((v30 & 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v4 shortDescription];
      v36 = [(HMSymptomsHandler *)v32 sfDeviceIdentifier];
      *buf = 138544130;
      v51 = v34;
      v52 = 2112;
      v53 = v35;
      v54 = 2112;
      v55 = v36;
      v56 = 2112;
      v57 = v28;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_INFO, "%{public}@Received %@ message so updating SFDevice identifier from %@ to %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v31);
    [(HMSymptomsHandler *)v32 setSFDeviceIdentifier:v28];
    [(HMSymptomsHandler *)v32 _callFixSessionAvailabilityUpdatedDelegate];
  }

  [v4 respondWithSuccess];

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_callFixSessionAvailabilityUpdatedDelegate
{
  v3 = [(HMSymptomsHandler *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HMSymptomsHandler *)self context];
    v6 = [v5 delegateCaller];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__HMSymptomsHandler__callFixSessionAvailabilityUpdatedDelegate__block_invoke;
    v7[3] = &unk_1E754E2A8;
    v7[4] = self;
    [v6 invokeBlock:v7];
  }
}

void __63__HMSymptomsHandler__callFixSessionAvailabilityUpdatedDelegate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 fixSessionAvailabilityDidUpdateForSymptomsHandler:*(a1 + 32)];
}

- (void)_callSymptomsUpdatedDelegate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSymptomsHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated symptoms %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMSymptomsHandler *)v8 context];
    v12 = [v11 delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__HMSymptomsHandler__callSymptomsUpdatedDelegate___block_invoke;
    v14[3] = &unk_1E754E5C0;
    v14[4] = v8;
    v15 = v4;
    [v12 invokeBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __50__HMSymptomsHandler__callSymptomsUpdatedDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 symptomsHandler:*(a1 + 32) didUpdateSymptoms:*(a1 + 40)];
}

- (id)_findAndRemoveFixSessionsForSymptom:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(HMSymptomsHandler *)self fixSessions];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 symptom];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          [v5 addObject:v11];
          v14 = [(HMSymptomsHandler *)self fixSessions];
          [v14 removeObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  os_unfair_lock_unlock(&self->_lock);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_addFixSession:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMSymptomsHandler *)self fixSessions];
  [v4 addObject:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSymptoms:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69A2A00]);
  v6 = [(HMSymptomsHandler *)self uuid];
  v7 = [v5 initWithTarget:v6];

  v8 = MEMORY[0x1E69A2A10];
  v26 = @"HMSM.symptoms";
  v9 = encodeRootObject(v4);
  v27[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v11 = [v8 messageWithName:@"HMSM.setSymptoms" destination:v7 payload:v10];

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 shortDescription];
    v20 = 138543874;
    v21 = v15;
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Setting symptoms from symptomValues=%@ with message: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [(HMSymptomsHandler *)v13 context];
  v18 = [v17 messageDispatcher];
  [v18 sendMessage:v11];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_unsubscribe
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(HMSymptomsHandler *)self uuid];
  v5 = [v3 initWithTarget:v4];

  v6 = [MEMORY[0x1E69A2A10] messageWithName:@"HMSM.unsubscribe" destination:v5 payload:0];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 shortDescription];
    v15 = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Unsubscribing from symptoms changes with message: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMSymptomsHandler *)v8 context];
  v13 = [v12 messageDispatcher];
  [v13 sendMessage:v6];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_subscribe
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(HMSymptomsHandler *)self uuid];
  v5 = [v3 initWithTarget:v4];

  v6 = [MEMORY[0x1E69A2A10] messageWithName:@"HMSM.subscribe" destination:v5 payload:0];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 shortDescription];
    v15 = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Subscribing to symptoms changes with message: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMSymptomsHandler *)v8 context];
  v13 = [v12 messageDispatcher];
  [v13 sendMessage:v6];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)configure
{
  v4 = [(HMSymptomsHandler *)self context];
  v3 = [v4 messageDispatcher];
  [v3 registerForMessage:@"HMSM.symptomStateUpdated" receiver:self selector:sel__handleSymptomStateUpdatedMessage_];
}

- (void)initiateFixWithCompletionHandler:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSymptomsHandler *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSymptomsHandler initiateFixWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HMSymptomsHandler_initiateFixWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v22 = v4;
    v21 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v11;
      v25 = 2080;
      v26 = "[HMSymptomsHandler initiateFixWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __54__HMSymptomsHandler_initiateFixWithCompletionHandler___block_invoke(id *a1)
{
  v2 = objc_alloc(MEMORY[0x1E69A2A10]);
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [a1[4] uuid];
  v5 = [v3 initWithTarget:v4];
  v6 = [v2 initWithName:@"HMSM.initiateFix" destination:v5 payload:0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__HMSymptomsHandler_initiateFixWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E754C0F0;
  v9 = a1[6];
  [v6 setResponseHandler:v8];
  v7 = [a1[5] messageDispatcher];
  [v7 sendMessage:v6];
}

uint64_t __54__HMSymptomsHandler_initiateFixWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)newFixSessionForSymptom:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v8;
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Asked to create a new fix session for symptom %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMSymptomsHandler *)v6 symptoms];
  v10 = [v9 containsObject:v4];

  if (!v10)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [(HMSymptomsHandler *)v14 symptoms];
      v31 = 138543874;
      v32 = v24;
      v33 = 2112;
      v34 = v4;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Not creating fix session for symptom %@ because it isn't one of this symptoms handler's current symptoms: %@", &v31, 0x20u);

LABEL_30:
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v11 = [v4 type];
  if (v11 > 0x15)
  {
LABEL_21:
    if (v11 - 100 <= 0xF && ((1 << (v11 - 100)) & 0xFC0F) != 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v6;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      v24 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v4;
      v26 = "%{public}@%@ should be handled by the Home app UI";
LABEL_28:
      v27 = v16;
      v28 = OS_LOG_TYPE_INFO;
      goto LABEL_29;
    }

    if (v11 - 999 >= 2)
    {
LABEL_32:
      v22 = 0;
      goto LABEL_33;
    }

LABEL_26:
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_31;
    }

    v24 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v24;
    v33 = 2112;
    v34 = v4;
    v26 = "%{public}@Not creating fix session for unfixable symptom %@";
    goto LABEL_28;
  }

  if (((1 << v11) & 0x1F6FFE) == 0)
  {
    if (((1 << v11) & 0x209000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v12 = [(HMSymptomsHandler *)v6 sfDeviceIdentifier];

  v13 = objc_autoreleasePoolPush();
  v14 = v6;
  v15 = HMFGetOSLogHandle();
  v16 = v15;
  if (!v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      v31 = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v4;
      v26 = "%{public}@Not creating fix session for symptom %@ because our SF device identifier is nil";
      v27 = v16;
      v28 = OS_LOG_TYPE_DEBUG;
LABEL_29:
      _os_log_impl(&dword_19BB39000, v27, v28, v26, &v31, 0x16u);
      goto LABEL_30;
    }

LABEL_31:

    objc_autoreleasePoolPop(v13);
    goto LABEL_32;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [(HMSymptomsHandler *)v14 sfDeviceIdentifier];
    v31 = 138543874;
    v32 = v17;
    v33 = 2112;
    v34 = v4;
    v35 = 2112;
    v36 = v18;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Creating fix session for symptom %@ with SF device identifier %@", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [(HMSymptomsHandler *)v14 fixSessionFactory];
  v20 = [(HMSymptomsHandler *)v14 sfDeviceIdentifier];
  v21 = [(HMSymptomsHandler *)v14 context];
  v22 = (v19)[2](v19, v4, v20, v21);

  if ([v4 type] == 11)
  {
    v23 = 1;
  }

  else
  {
    if ([v4 type] != 19)
    {
      goto LABEL_18;
    }

    v23 = 32;
  }

  [v22 setDeviceRepairFlags:v23];
LABEL_18:
  if (v22)
  {
    [(HMSymptomsHandler *)v14 _addFixSession:v22];
  }

LABEL_33:

  v29 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)setSFDeviceIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  sfDeviceIdentifier = self->_sfDeviceIdentifier;
  self->_sfDeviceIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)sfDeviceIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sfDeviceIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  objc_storeWeak(&self->_delegate, v4);
  os_unfair_lock_unlock(&self->_lock);
  if (!v4 || WeakRetained)
  {
    if (!v4 && WeakRetained)
    {

      [(HMSymptomsHandler *)self _unsubscribe];
    }
  }

  else
  {

    [(HMSymptomsHandler *)self _subscribe];
  }
}

- (HMSymptomsHandlerDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (NSSet)symptoms
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(HMSymptomsHandler *)self currentSymptoms];
  v4 = [v3 array];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    [(HMSymptomsHandler *)self _unsubscribe];
  }

  v4.receiver = self;
  v4.super_class = HMSymptomsHandler;
  [(HMSymptomsHandler *)&v4 dealloc];
}

- (HMSymptomsHandler)initWithUUID:(id)a3 context:(id)a4 logIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = HMSymptomsHandler;
  v11 = [(HMSymptomsHandler *)&v22 init];
  if (v11)
  {
    v12 = [v8 copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    objc_storeStrong(&v11->_context, a4);
    v14 = [v10 copy];
    logIdentifier = v11->_logIdentifier;
    v11->_logIdentifier = v14;

    v16 = +[HMMutableArray array];
    currentSymptoms = v11->_currentSymptoms;
    v11->_currentSymptoms = v16;

    v18 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    fixSessions = v11->_fixSessions;
    v11->_fixSessions = v18;

    fixSessionFactory = v11->_fixSessionFactory;
    v11->_fixSessionFactory = &__block_literal_global_25634;
  }

  return v11;
}

HMSymptomFixSession *__56__HMSymptomsHandler_initWithUUID_context_logIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMSymptomFixSession alloc] initWithSymptom:v8 deviceIdentifier:v7 context:v6];

  return v9;
}

- (HMSymptomsHandler)initWithAccessory:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 uuid];
  v7 = [v5 symptomsHandlerUUIDFromAccessoryUUID:v6];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v4 uuid];
  v10 = [v8 stringWithFormat:@"%@/%@", v7, v9];

  v11 = [v4 context];

  v12 = [(HMSymptomsHandler *)self initWithUUID:v7 context:v11 logIdentifier:v10];
  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20, &__block_literal_global_56);
  }

  v3 = logCategory__hmf_once_v21;

  return v3;
}

uint64_t __32__HMSymptomsHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21;
  logCategory__hmf_once_v21 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)symptomsHandlerUUIDFromAccessoryUUID:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"DA8F18EC-6C7D-4631-9B5B-615977C21A44"];
  v6 = MEMORY[0x1E696AFB0];
  v7 = [v4 UUIDString];

  v8 = [v7 dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

@end
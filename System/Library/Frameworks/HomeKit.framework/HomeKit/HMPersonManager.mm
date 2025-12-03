@interface HMPersonManager
- (HMPersonManager)initWithContext:(id)context UUID:(id)d zoneName:(id)name notificationCenter:(id)center;
- (NSString)description;
- (void)addObserver:(id)observer;
- (void)addOrUpdateFaceCrops:(id)crops completion:(id)completion;
- (void)addOrUpdateFaceprints:(id)faceprints completion:(id)completion;
- (void)addOrUpdatePersons:(id)persons completion:(id)completion;
- (void)associateFaceCropsWithUUIDs:(id)ds toPersonWithUUID:(id)d completion:(id)completion;
- (void)associateFaceCropsWithUUIDs:(id)ds toPersonWithUUID:(id)d forSource:(int64_t)source completion:(id)completion;
- (void)configure;
- (void)dealloc;
- (void)disassociateFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchAllFaceprintsWithCompletion:(id)completion;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion;
- (void)fetchAllPersonsWithCompletion:(id)completion;
- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)handleDaemonReconnectedNotification:(id)notification;
- (void)handleDidChangePersonDataMessage:(id)message;
- (void)notifyObserversWithBlock:(id)block;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)subscribe;
- (void)unsubscribe;
@end

@implementation HMPersonManager

- (void)notifyObserversWithBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = allObjects;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        context = [(HMPersonManager *)self context];
        delegateCaller = [context delegateCaller];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __44__HMPersonManager_notifyObserversWithBlock___block_invoke;
        v15[3] = &unk_1E754E458;
        v12 = blockCopy;
        v15[4] = v9;
        v16 = v12;
        [delegateCaller invokeBlock:v15];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleDaemonReconnectedNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling daemon reconnected notification by reconnecting to daemon if necessary", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [(NSHashTable *)selfCopy->_observers count];
  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v9)
  {
    [(HMPersonManager *)selfCopy subscribe];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleDidChangePersonDataMessage:(id)message
{
  v46 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling did change person data message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v10 = [messageCopy unarchivedObjectForKey:@"HMPM.mk.up" ofClasses:v9];

  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v12 = [messageCopy unarchivedObjectForKey:@"HMPM.mk.uufc" ofClasses:v11];

  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v14 = [messageCopy unarchivedObjectForKey:@"HMPM.mk.upfc" ofClasses:v13];

  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v16 = [messageCopy unarchivedObjectForKey:@"HMPM.mk.uf" ofClasses:v15];

  v17 = [messageCopy setForKey:@"HMPM.mk.rpu"];
  v18 = [messageCopy setForKey:@"HMPM.mk.rfcu"];
  v19 = [messageCopy setForKey:@"HMPM.mk.rfu"];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __52__HMPersonManager_handleDidChangePersonDataMessage___block_invoke;
  v31 = &unk_1E7546968;
  v32 = v10;
  v33 = selfCopy;
  v34 = v12;
  v35 = v14;
  v36 = v16;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  v20 = v19;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v14;
  v25 = v12;
  v26 = v10;
  [(HMPersonManager *)selfCopy notifyObserversWithBlock:&v28];
  [messageCopy respondWithPayload:{0, v28, v29, v30, v31}];

  v27 = *MEMORY[0x1E69E9840];
}

void __52__HMPersonManager_handleDidChangePersonDataMessage___block_invoke(id *a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] count])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = a1[5];
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [a1[4] count];
      v40 = 138543618;
      v41 = v7;
      v42 = 2048;
      v43 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated persons", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    if (objc_opt_respondsToSelector())
    {
      [v3 personManager:a1[5] didUpdatePersons:a1[4]];
    }
  }

  if ([a1[6] count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1[5];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[6] count];
      v40 = 138543618;
      v41 = v12;
      v42 = 2048;
      v43 = v13;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated unassociated face crops", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if (objc_opt_respondsToSelector())
    {
      [v3 personManager:a1[5] didUpdateUnassociatedFaceCrops:a1[6]];
    }
  }

  if ([a1[7] count])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1[5];
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [a1[7] count];
      v40 = 138543618;
      v41 = v17;
      v42 = 2048;
      v43 = v18;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated person face crops", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    if (objc_opt_respondsToSelector())
    {
      [v3 personManager:a1[5] didUpdatePersonFaceCrops:a1[7]];
    }
  }

  if ([a1[8] count])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = a1[5];
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [a1[8] count];
      v40 = 138543618;
      v41 = v22;
      v42 = 2048;
      v43 = v23;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated faceprints", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (objc_opt_respondsToSelector())
    {
      [v3 personManager:a1[5] didUpdateFaceprints:a1[8]];
    }
  }

  if ([a1[9] count])
  {
    v24 = objc_autoreleasePoolPush();
    v25 = a1[5];
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [a1[9] count];
      v40 = 138543618;
      v41 = v27;
      v42 = 2048;
      v43 = v28;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Received %lu removed person UUIDs", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    if (objc_opt_respondsToSelector())
    {
      [v3 personManager:a1[5] didRemovePersonsWithUUIDs:a1[9]];
    }
  }

  if ([a1[10] count])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = a1[5];
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [a1[10] count];
      v40 = 138543618;
      v41 = v32;
      v42 = 2048;
      v43 = v33;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "%{public}@Received %lu removed face crop UUIDs", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    if (objc_opt_respondsToSelector())
    {
      [v3 personManager:a1[5] didRemoveFaceCropsWithUUIDs:a1[10]];
    }
  }

  if ([a1[11] count])
  {
    v34 = objc_autoreleasePoolPush();
    v35 = a1[5];
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [a1[11] count];
      v40 = 138543618;
      v41 = v37;
      v42 = 2048;
      v43 = v38;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_INFO, "%{public}@Received %lu removed faceprint UUIDs", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    if (objc_opt_respondsToSelector())
    {
      [v3 personManager:a1[5] didRemoveFaceprintsWithUUIDs:a1[11]];
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribe
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from person changes", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v9 = [v7 initWithTarget:uUID];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.u" destination:v9 payload:0];
  context = [(HMPersonManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v10];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)subscribe
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Subscribing to person changes", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v9 = [v7 initWithTarget:uUID];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.s" destination:v9 payload:0];
  context = [(HMPersonManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v10];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)configure
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Configuring person manager", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  context = [(HMPersonManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMPM.m.dcpd" receiver:selfCopy selector:sel_handleDidChangePersonDataMessage_];

  notificationCenter = [(HMPersonManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleDaemonReconnectedNotification_ name:@"HMDaemonReconnectedNotification" object:0];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  if (!dsCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = completionCopy;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Remove faceprints"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v38 = v13;
    v39 = 2114;
    v40 = shortDescription;
    v41 = 2112;
    v42 = dsCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing faceprints with UUIDs from persons data set: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v35 = @"HMPM.mk.fu";
  v36 = dsCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v19 = [v17 initWithTarget:uUID];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.rf" destination:v19 payload:v16];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __56__HMPersonManager_removeFaceprintsWithUUIDs_completion___block_invoke;
  v30 = &unk_1E754D030;
  v31 = selfCopy;
  v32 = v9;
  v33 = dsCopy;
  v34 = v8;
  v21 = v8;
  v22 = dsCopy;
  v23 = v9;
  [v20 setResponseHandler:&v27];
  v24 = [(HMPersonManager *)selfCopy context:v27];
  messageDispatcher = [v24 messageDispatcher];
  [messageDispatcher sendMessage:v20];

  v26 = *MEMORY[0x1E69E9840];
}

void __56__HMPersonManager_removeFaceprintsWithUUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to remove faceprints: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v17;
    v14 = "%{public}@[%{public}@] Successfully removed %lu faceprints";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  if (!dsCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = completionCopy;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Remove face crops"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v38 = v13;
    v39 = 2114;
    v40 = shortDescription;
    v41 = 2112;
    v42 = dsCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing faceCrops with UUIDs from persons data set: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v35 = @"HMPM.mk.fcu";
  v36 = dsCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v19 = [v17 initWithTarget:uUID];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.rfc" destination:v19 payload:v16];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __55__HMPersonManager_removeFaceCropsWithUUIDs_completion___block_invoke;
  v30 = &unk_1E754D030;
  v31 = selfCopy;
  v32 = v9;
  v33 = dsCopy;
  v34 = v8;
  v21 = v8;
  v22 = dsCopy;
  v23 = v9;
  [v20 setResponseHandler:&v27];
  v24 = [(HMPersonManager *)selfCopy context:v27];
  messageDispatcher = [v24 messageDispatcher];
  [messageDispatcher sendMessage:v20];

  v26 = *MEMORY[0x1E69E9840];
}

void __55__HMPersonManager_removeFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to remove face crops: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v17;
    v14 = "%{public}@[%{public}@] Successfully removed %lu face crops";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  if (!dsCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = completionCopy;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Remove persons"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v38 = v13;
    v39 = 2114;
    v40 = shortDescription;
    v41 = 2112;
    v42 = dsCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Removing persons with UUIDs from persons data set: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v35 = @"HMPM.mk.pu";
  v36 = dsCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v19 = [v17 initWithTarget:uUID];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.rp" destination:v19 payload:v16];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __53__HMPersonManager_removePersonsWithUUIDs_completion___block_invoke;
  v30 = &unk_1E754D030;
  v31 = selfCopy;
  v32 = v9;
  v33 = dsCopy;
  v34 = v8;
  v21 = v8;
  v22 = dsCopy;
  v23 = v9;
  [v20 setResponseHandler:&v27];
  v24 = [(HMPersonManager *)selfCopy context:v27];
  messageDispatcher = [v24 messageDispatcher];
  [messageDispatcher sendMessage:v20];

  v26 = *MEMORY[0x1E69E9840];
}

void __53__HMPersonManager_removePersonsWithUUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to remove persons: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v17;
    v14 = "%{public}@[%{public}@] Successfully removed %lu persons";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)disassociateFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  if (!dsCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = completionCopy;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Disassociate face crops"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v38 = v13;
    v39 = 2114;
    v40 = shortDescription;
    v41 = 2112;
    v42 = dsCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Disassociating unassociated face crops with UUIDs %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v35 = @"HMPM.mk.fcu";
  v36 = dsCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v19 = [v17 initWithTarget:uUID];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.dfc" destination:v19 payload:v16];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __61__HMPersonManager_disassociateFaceCropsWithUUIDs_completion___block_invoke;
  v30 = &unk_1E754D030;
  v31 = selfCopy;
  v32 = v9;
  v33 = dsCopy;
  v34 = v8;
  v21 = v8;
  v22 = dsCopy;
  v23 = v9;
  [v20 setResponseHandler:&v27];
  v24 = [(HMPersonManager *)selfCopy context:v27];
  messageDispatcher = [v24 messageDispatcher];
  [messageDispatcher sendMessage:v20];

  v26 = *MEMORY[0x1E69E9840];
}

void __61__HMPersonManager_disassociateFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to disassociate face crops: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v17;
    v14 = "%{public}@[%{public}@] Successfully disassociated %lu face crops";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)associateFaceCropsWithUUIDs:(id)ds toPersonWithUUID:(id)d completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  completionCopy = completion;
  if (!dsCopy)
  {
    _HMFPreconditionFailure();
LABEL_14:
    _HMFPreconditionFailure();
  }

  if (!dCopy)
  {
    goto LABEL_14;
  }

  v11 = completionCopy;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v29 = 138544130;
    v30 = v15;
    v31 = 2112;
    v32 = dsCopy;
    v33 = 2112;
    v34 = dCopy;
    v35 = 2112;
    v36 = processName;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Associating face crops with UUIDs %@ to person with UUID %@ (processName: %@)", &v29, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  processName2 = [processInfo2 processName];
  v20 = [processName2 isEqualToString:@"Home"];

  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (v24)
    {
      v25 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v25;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Associating face crops using User source because client is Home app", &v29, 0xCu);
    }

    v26 = 2;
  }

  else
  {
    if (v24)
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v27;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Associating face crops using Unknown source", &v29, 0xCu);
    }

    v26 = 0;
  }

  objc_autoreleasePoolPop(v21);
  [(HMPersonManager *)v22 associateFaceCropsWithUUIDs:dsCopy toPersonWithUUID:dCopy forSource:v26 completion:v11];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)associateFaceCropsWithUUIDs:(id)ds toPersonWithUUID:(id)d forSource:(int64_t)source completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dCopy = d;
  completionCopy = completion;
  if (!dsCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  if (!dCopy)
  {
    goto LABEL_7;
  }

  v13 = completionCopy;
  v14 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Associate face crops"];
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v18 = v37 = v13;
    identifier = [v14 identifier];
    shortDescription = [identifier shortDescription];
    HMStringFromPersonFaceCropSource(source);
    v36 = v14;
    v22 = v21 = source;
    *buf = 138544386;
    v45 = v18;
    v46 = 2114;
    v47 = shortDescription;
    v48 = 2112;
    v49 = dsCopy;
    v50 = 2112;
    v51 = dCopy;
    v52 = 2112;
    v53 = v22;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Associating face crops with UUIDs %@ to person with UUID %@ for source: %@", buf, 0x34u);

    source = v21;
    v14 = v36;

    v13 = v37;
  }

  objc_autoreleasePoolPop(v15);
  v43[0] = dsCopy;
  v42[0] = @"HMPM.mk.fcu";
  v42[1] = @"HMPM.mk.pu";
  v23 = [MEMORY[0x1E695DFD8] setWithObject:dCopy];
  v43[1] = v23;
  v42[2] = @"HMPM.mk.s";
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:source];
  v43[2] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];

  v26 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v28 = [v26 initWithTarget:uUID];

  v29 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.afc" destination:v28 payload:v25];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __85__HMPersonManager_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke;
  v38[3] = &unk_1E754D030;
  v38[4] = selfCopy;
  v39 = v14;
  v40 = dsCopy;
  v41 = v13;
  v30 = v13;
  v31 = dsCopy;
  v32 = v14;
  [v29 setResponseHandler:v38];
  context = [(HMPersonManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v29];

  v35 = *MEMORY[0x1E69E9840];
}

void __85__HMPersonManager_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to associate face crops: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v17;
    v14 = "%{public}@[%{public}@] Successfully associated %lu face crops";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addOrUpdateFaceprints:(id)faceprints completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  faceprintsCopy = faceprints;
  completionCopy = completion;
  if (!faceprintsCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = completionCopy;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Add faceprints"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v41 = v13;
    v42 = 2114;
    v43 = shortDescription;
    v44 = 2112;
    v45 = faceprintsCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Adding/updating faceprints to persons data set: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v37 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:faceprintsCopy requiringSecureCoding:1 error:&v37];
  v17 = v37;
  if (v16)
  {
    v38 = @"HMPM.mk.f";
    v39 = v16;
    context2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v19 = objc_alloc(MEMORY[0x1E69A2A00]);
    uUID = [(HMPersonManager *)selfCopy UUID];
    delegateCaller = [v19 initWithTarget:uUID];

    v22 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.aouf" destination:delegateCaller payload:context2];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __52__HMPersonManager_addOrUpdateFaceprints_completion___block_invoke;
    v33[3] = &unk_1E754D030;
    v33[4] = selfCopy;
    v34 = v9;
    v35 = faceprintsCopy;
    v36 = v8;
    [v22 setResponseHandler:v33];
    context = [(HMPersonManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v22];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      [v9 identifier];
      v29 = v32 = v8;
      shortDescription2 = [v29 shortDescription];
      *buf = 138543874;
      v41 = v28;
      v42 = 2114;
      v43 = shortDescription2;
      v44 = 2112;
      v45 = v17;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to serialize faceprints: %@", buf, 0x20u);

      v8 = v32;
    }

    objc_autoreleasePoolPop(v25);
    context2 = [(HMPersonManager *)v26 context];
    delegateCaller = [context2 delegateCaller];
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
    [delegateCaller callCompletion:v8 error:v22];
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __52__HMPersonManager_addOrUpdateFaceprints_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to add/update faceprints: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v17;
    v14 = "%{public}@[%{public}@] Successfully added/updated %lu faceprints";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addOrUpdateFaceCrops:(id)crops completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  cropsCopy = crops;
  completionCopy = completion;
  if (!cropsCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = completionCopy;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Add face crops"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v41 = v13;
    v42 = 2114;
    v43 = shortDescription;
    v44 = 2112;
    v45 = cropsCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Adding/updating face crops to persons data set: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v37 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:cropsCopy requiringSecureCoding:1 error:&v37];
  v17 = v37;
  if (v16)
  {
    v38 = @"HMPM.mk.fc";
    v39 = v16;
    context2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v19 = objc_alloc(MEMORY[0x1E69A2A00]);
    uUID = [(HMPersonManager *)selfCopy UUID];
    delegateCaller = [v19 initWithTarget:uUID];

    v22 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.aoufc" destination:delegateCaller payload:context2];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __51__HMPersonManager_addOrUpdateFaceCrops_completion___block_invoke;
    v33[3] = &unk_1E754D030;
    v33[4] = selfCopy;
    v34 = v9;
    v35 = cropsCopy;
    v36 = v8;
    [v22 setResponseHandler:v33];
    context = [(HMPersonManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v22];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      [v9 identifier];
      v29 = v32 = v8;
      shortDescription2 = [v29 shortDescription];
      *buf = 138543874;
      v41 = v28;
      v42 = 2114;
      v43 = shortDescription2;
      v44 = 2112;
      v45 = v17;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to serialize face crops: %@", buf, 0x20u);

      v8 = v32;
    }

    objc_autoreleasePoolPop(v25);
    context2 = [(HMPersonManager *)v26 context];
    delegateCaller = [context2 delegateCaller];
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
    [delegateCaller callCompletion:v8 error:v22];
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __51__HMPersonManager_addOrUpdateFaceCrops_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to add/update face crops: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v17;
    v14 = "%{public}@[%{public}@] Successfully added/updated %lu face crops";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addOrUpdatePersons:(id)persons completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  completionCopy = completion;
  if (!personsCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = completionCopy;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Add persons"];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v41 = v13;
    v42 = 2114;
    v43 = shortDescription;
    v44 = 2112;
    v45 = personsCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Adding/updating persons to persons data set: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v37 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:personsCopy requiringSecureCoding:1 error:&v37];
  v17 = v37;
  if (v16)
  {
    v38 = @"HMPM.mk.p";
    v39 = v16;
    context2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v19 = objc_alloc(MEMORY[0x1E69A2A00]);
    uUID = [(HMPersonManager *)selfCopy UUID];
    delegateCaller = [v19 initWithTarget:uUID];

    v22 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.aoup" destination:delegateCaller payload:context2];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __49__HMPersonManager_addOrUpdatePersons_completion___block_invoke;
    v33[3] = &unk_1E754D030;
    v33[4] = selfCopy;
    v34 = v9;
    v35 = personsCopy;
    v36 = v8;
    [v22 setResponseHandler:v33];
    context = [(HMPersonManager *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v22];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = selfCopy;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      [v9 identifier];
      v29 = v32 = v8;
      shortDescription2 = [v29 shortDescription];
      *buf = 138543874;
      v41 = v28;
      v42 = 2114;
      v43 = shortDescription2;
      v44 = 2112;
      v45 = v17;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to serialize persons: %@", buf, 0x20u);

      v8 = v32;
    }

    objc_autoreleasePoolPop(v25);
    context2 = [(HMPersonManager *)v26 context];
    delegateCaller = [context2 delegateCaller];
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
    [delegateCaller callCompletion:v8 error:v22];
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __49__HMPersonManager_addOrUpdatePersons_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to add/update persons: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v17;
    v14 = "%{public}@[%{public}@] Successfully added/updated %lu persons";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllFaceprintsWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch all faceprints"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = shortDescription;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching all faceprints", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v14 = [v12 initWithTarget:uUID];

  fetchClientFactory = [(HMPersonManager *)selfCopy fetchClientFactory];
  identifier2 = [v5 identifier];
  context = [(HMPersonManager *)selfCopy context];
  v18 = (fetchClientFactory)[2](fetchClientFactory, identifier2, context, @"HMPM.m.ff", v14);

  [v18 setClassForUnarchiving:objc_opt_class()];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__HMPersonManager_fetchAllFaceprintsWithCompletion___block_invoke;
  v22[3] = &unk_1E754C418;
  v22[4] = selfCopy;
  v23 = v5;
  v24 = completionCopy;
  v19 = completionCopy;
  v20 = v5;
  [v18 fetchWithCompletion:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __52__HMPersonManager_fetchAllFaceprintsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2048;
      v25 = [v5 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched all %lu faceprints", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    (*(v14 + 16))(v14, v15, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) identifier];
      v18 = [v17 shortDescription];
      v20 = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch all faceprints: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch faceprints"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v32 = v12;
    v33 = 2114;
    v34 = shortDescription;
    v35 = 2112;
    v36 = dsCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching faceprints for face crops with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v29 = @"HMPM.mk.fcu";
  v30 = dsCopy;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v18 = [v16 initWithTarget:uUID];

  fetchClientFactory = [(HMPersonManager *)selfCopy fetchClientFactory];
  identifier2 = [v8 identifier];
  context = [(HMPersonManager *)selfCopy context];
  v22 = (fetchClientFactory)[2](fetchClientFactory, identifier2, context, @"HMPM.m.ff", v18);

  [v22 setClassForUnarchiving:objc_opt_class()];
  [v22 setPayload:v15];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__HMPersonManager_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke;
  v26[3] = &unk_1E754C418;
  v26[4] = selfCopy;
  v27 = v8;
  v28 = completionCopy;
  v23 = completionCopy;
  v24 = v8;
  [v22 fetchWithCompletion:v26];

  v25 = *MEMORY[0x1E69E9840];
}

void __67__HMPersonManager_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2048;
      v25 = [v5 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu faceprints", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    (*(v14 + 16))(v14, v15, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) identifier];
      v18 = [v17 shortDescription];
      v20 = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch faceprints: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch all face crops"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = shortDescription;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching all unassociated face crops", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v14 = [v12 initWithTarget:uUID];

  fetchClientFactory = [(HMPersonManager *)selfCopy fetchClientFactory];
  identifier2 = [v5 identifier];
  context = [(HMPersonManager *)selfCopy context];
  v18 = (fetchClientFactory)[2](fetchClientFactory, identifier2, context, @"HMPM.m.fufc", v14);

  [v18 setClassForUnarchiving:objc_opt_class()];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__HMPersonManager_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke;
  v22[3] = &unk_1E754C418;
  v22[4] = selfCopy;
  v23 = v5;
  v24 = completionCopy;
  v19 = completionCopy;
  v20 = v5;
  [v18 fetchWithCompletion:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __63__HMPersonManager_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2048;
      v25 = [v5 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched all %lu unassociated face crops", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    (*(v14 + 16))(v14, v15, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) identifier];
      v18 = [v17 shortDescription];
      v20 = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch all unassociated face crops: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch all person face crops"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = shortDescription;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching all person face crops", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v14 = [v12 initWithTarget:uUID];

  fetchClientFactory = [(HMPersonManager *)selfCopy fetchClientFactory];
  identifier2 = [v5 identifier];
  context = [(HMPersonManager *)selfCopy context];
  v18 = (fetchClientFactory)[2](fetchClientFactory, identifier2, context, @"HMPM.m.fpfc", v14);

  [v18 setClassForUnarchiving:objc_opt_class()];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__HMPersonManager_fetchAllPersonFaceCropsWithCompletion___block_invoke;
  v22[3] = &unk_1E754C418;
  v22[4] = selfCopy;
  v23 = v5;
  v24 = completionCopy;
  v19 = completionCopy;
  v20 = v5;
  [v18 fetchWithCompletion:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __57__HMPersonManager_fetchAllPersonFaceCropsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2048;
      v25 = [v5 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched all %lu person face crops", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    (*(v14 + 16))(v14, v15, 0);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) identifier];
      v18 = [v17 shortDescription];
      v20 = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch all person face crops: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch face crops for persons"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v31 = v12;
    v32 = 2114;
    v33 = shortDescription;
    v34 = 2112;
    v35 = dsCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching face crops for persons with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v28 = @"HMPM.mk.pu";
  v29 = dsCopy;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v18 = [v16 initWithTarget:uUID];

  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.fpfc" destination:v18 payload:v15];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__HMPersonManager_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = selfCopy;
  v26 = v8;
  v27 = completionCopy;
  v20 = completionCopy;
  v21 = v8;
  [v19 setResponseHandler:v25];
  context = [(HMPersonManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v19];

  v24 = *MEMORY[0x1E69E9840];
}

void __64__HMPersonManager_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v42 = v10;
      v43 = 2114;
      v44 = v12;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch face crops: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [a1[4] context];
    v14 = [v13 delegateCaller];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __64__HMPersonManager_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_141;
    v37[3] = &unk_1E754E458;
    v39 = a1[6];
    v38 = v5;
    [v14 invokeBlock:v37];

    v15 = v39;
  }

  else
  {
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v15 = [v6 hmf_unarchivedObjectForKey:@"HMPM.mk.fc" ofClasses:v16];

    v17 = objc_autoreleasePoolPush();
    v18 = a1[4];
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v15)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [a1[5] identifier];
        v23 = [v22 shortDescription];
        v24 = [v15 count];
        *buf = 138543874;
        v42 = v21;
        v43 = 2114;
        v44 = v23;
        v45 = 2048;
        v46 = v24;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu face crops", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v25 = [a1[4] context];
      v26 = [v25 delegateCaller];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __64__HMPersonManager_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_144;
      v32[3] = &unk_1E754E458;
      v27 = &v34;
      v34 = a1[6];
      v33 = v15;
      [v26 invokeBlock:v32];

      v28 = v33;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v29;
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find serialized person face crops in response payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v28 = [a1[4] context];
      v30 = [v28 delegateCaller];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __64__HMPersonManager_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_143;
      v35[3] = &unk_1E754E430;
      v27 = &v36;
      v36 = a1[6];
      [v30 invokeBlock:v35];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __64__HMPersonManager_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_143(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)fetchFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch face crops"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v31 = v12;
    v32 = 2114;
    v33 = shortDescription;
    v34 = 2112;
    v35 = dsCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching face crops with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v28 = @"HMPM.mk.fcu";
  v29 = dsCopy;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v18 = [v16 initWithTarget:uUID];

  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.ffc" destination:v18 payload:v15];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __54__HMPersonManager_fetchFaceCropsWithUUIDs_completion___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = selfCopy;
  v26 = v8;
  v27 = completionCopy;
  v20 = completionCopy;
  v21 = v8;
  [v19 setResponseHandler:v25];
  context = [(HMPersonManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v19];

  v24 = *MEMORY[0x1E69E9840];
}

void __54__HMPersonManager_fetchFaceCropsWithUUIDs_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v42 = v10;
      v43 = 2114;
      v44 = v12;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch face crops: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [a1[4] context];
    v14 = [v13 delegateCaller];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __54__HMPersonManager_fetchFaceCropsWithUUIDs_completion___block_invoke_134;
    v37[3] = &unk_1E754E458;
    v39 = a1[6];
    v38 = v5;
    [v14 invokeBlock:v37];

    v15 = v39;
  }

  else
  {
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v15 = [v6 hmf_unarchivedObjectForKey:@"HMPM.mk.fc" ofClasses:v16];

    v17 = objc_autoreleasePoolPush();
    v18 = a1[4];
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v15)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [a1[5] identifier];
        v23 = [v22 shortDescription];
        v24 = [v15 count];
        *buf = 138543874;
        v42 = v21;
        v43 = 2114;
        v44 = v23;
        v45 = 2048;
        v46 = v24;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu face crops", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v25 = [a1[4] context];
      v26 = [v25 delegateCaller];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __54__HMPersonManager_fetchFaceCropsWithUUIDs_completion___block_invoke_137;
      v32[3] = &unk_1E754E458;
      v27 = &v34;
      v34 = a1[6];
      v33 = v15;
      [v26 invokeBlock:v32];

      v28 = v33;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v29;
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find serialized face crops in response payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v28 = [a1[4] context];
      v30 = [v28 delegateCaller];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __54__HMPersonManager_fetchFaceCropsWithUUIDs_completion___block_invoke_136;
      v35[3] = &unk_1E754E430;
      v27 = &v36;
      v36 = a1[6];
      [v30 invokeBlock:v35];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __54__HMPersonManager_fetchFaceCropsWithUUIDs_completion___block_invoke_136(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)fetchAllPersonsWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch all persons"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = shortDescription;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching all persons", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v14 = [v12 initWithTarget:uUID];

  fetchClientFactory = [(HMPersonManager *)selfCopy fetchClientFactory];
  identifier2 = [v5 identifier];
  context = [(HMPersonManager *)selfCopy context];
  v18 = (fetchClientFactory)[2](fetchClientFactory, identifier2, context, @"HMPM.m.fp", v14);

  [v18 setClassForUnarchiving:objc_opt_class()];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__HMPersonManager_fetchAllPersonsWithCompletion___block_invoke;
  v22[3] = &unk_1E754C418;
  v22[4] = selfCopy;
  v23 = v5;
  v24 = completionCopy;
  v19 = completionCopy;
  v20 = v5;
  [v18 fetchWithCompletion:v22];

  v21 = *MEMORY[0x1E69E9840];
}

void __49__HMPersonManager_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v62 = v6;
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v63 = v5;
    v9 = v5;
    v10 = v8;
    obj = v9;
    v64 = v8;
    v65 = a1;
    v68 = [v9 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (!v68)
    {
      goto LABEL_21;
    }

    v67 = *v70;
    while (1)
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v70 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v69 + 1) + 8 * i);
        v13 = [v12 externalPersonUUID];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [MEMORY[0x1E696AFB0] UUID];
        }

        v16 = v15;

        v17 = [v10 objectForKeyedSubscript:v16];
        v18 = v17;
        if (!v17)
        {
          goto LABEL_18;
        }

        v19 = [v17 UUID];
        v20 = [v12 UUID];
        v21 = [v19 compare:v20];

        v22 = objc_autoreleasePoolPush();
        v23 = *(a1 + 32);
        v24 = HMFGetOSLogHandle();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
        if (v21 != 1)
        {
          if (v25)
          {
            v29 = HMFGetLogIdentifier();
            v30 = [*(a1 + 40) identifier];
            v31 = [v30 shortDescription];
            *buf = 138543874;
            v74 = v29;
            v75 = 2114;
            v76 = v31;
            v77 = 2112;
            v78 = v18;
            _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Ignoring person with duplicate external person UUID: %@", buf, 0x20u);

            a1 = v65;
            v10 = v64;
          }

          objc_autoreleasePoolPop(v22);
LABEL_18:
          [v10 setObject:v12 forKeyedSubscript:v16];
          goto LABEL_19;
        }

        if (v25)
        {
          v26 = HMFGetLogIdentifier();
          v27 = [*(a1 + 40) identifier];
          v28 = [v27 shortDescription];
          *buf = 138543874;
          v74 = v26;
          v75 = 2114;
          v76 = v28;
          v77 = 2112;
          v78 = v12;
          _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Ignoring person with duplicate external person UUID: %@", buf, 0x20u);

          a1 = v65;
          v10 = v64;
        }

        objc_autoreleasePoolPop(v22);
LABEL_19:
      }

      v68 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
      if (!v68)
      {
LABEL_21:

        v32 = [v10 allValues];
        v33 = [v32 count];
        v34 = a1;
        v35 = [obj count];
        v36 = objc_autoreleasePoolPush();
        v37 = *(v34 + 32);
        v38 = HMFGetOSLogHandle();
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);
        if (v33 == v35)
        {
          if (v39)
          {
            v40 = HMFGetLogIdentifier();
            v41 = [*(v65 + 40) identifier];
            v42 = [v41 shortDescription];
            v43 = [v32 count];
            *buf = 138543874;
            v74 = v40;
            v75 = 2114;
            v76 = v42;
            v77 = 2048;
            v78 = v43;
            _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched all %lu persons", buf, 0x20u);
          }
        }

        else if (v39)
        {
          v52 = HMFGetLogIdentifier();
          v53 = [*(v65 + 40) identifier];
          v54 = [v53 shortDescription];
          v55 = [v32 count];
          v56 = [obj count];
          *buf = 138544130;
          v74 = v52;
          v75 = 2114;
          v76 = v54;
          v77 = 2048;
          v78 = v55;
          v79 = 2048;
          v80 = v56;
          _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched all %lu (filtered from %lu) persons", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v36);
        v57 = *(v65 + 48);
        v58 = MEMORY[0x1E695DFD8];
        v59 = [v64 allValues];
        v60 = [v58 setWithArray:v59];
        (*(v57 + 16))(v57, v60, 0);

        v7 = v62;
        v5 = v63;
        goto LABEL_30;
      }
    }
  }

  v44 = objc_autoreleasePoolPush();
  v45 = *(a1 + 32);
  HMFGetOSLogHandle();
  v47 = v46 = a1;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v48 = HMFGetLogIdentifier();
    [*(v46 + 40) identifier];
    v50 = v49 = v7;
    v51 = [v50 shortDescription];
    *buf = 138543874;
    v74 = v48;
    v75 = 2114;
    v76 = v51;
    v77 = 2112;
    v78 = v49;
    _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch all persons: %@", buf, 0x20u);

    v7 = v49;
  }

  objc_autoreleasePoolPop(v44);
  (*(*(v46 + 48) + 16))();
LABEL_30:

  v61 = *MEMORY[0x1E69E9840];
}

- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch persons"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v31 = v12;
    v32 = 2114;
    v33 = shortDescription;
    v34 = 2112;
    v35 = dsCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching persons with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v28 = @"HMPM.mk.pu";
  v29 = dsCopy;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v18 = [v16 initWithTarget:uUID];

  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.fp" destination:v18 payload:v15];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__HMPersonManager_fetchPersonsWithUUIDs_completion___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = selfCopy;
  v26 = v8;
  v27 = completionCopy;
  v20 = completionCopy;
  v21 = v8;
  [v19 setResponseHandler:v25];
  context = [(HMPersonManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v19];

  v24 = *MEMORY[0x1E69E9840];
}

void __52__HMPersonManager_fetchPersonsWithUUIDs_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v42 = v10;
      v43 = 2114;
      v44 = v12;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch persons: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [a1[4] context];
    v14 = [v13 delegateCaller];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __52__HMPersonManager_fetchPersonsWithUUIDs_completion___block_invoke_117;
    v37[3] = &unk_1E754E458;
    v39 = a1[6];
    v38 = v5;
    [v14 invokeBlock:v37];

    v15 = v39;
  }

  else
  {
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v15 = [v6 hmf_unarchivedObjectForKey:@"HMPM.mk.p" ofClasses:v16];

    v17 = objc_autoreleasePoolPush();
    v18 = a1[4];
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v15)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [a1[5] identifier];
        v23 = [v22 shortDescription];
        v24 = [v15 count];
        *buf = 138543874;
        v42 = v21;
        v43 = 2114;
        v44 = v23;
        v45 = 2048;
        v46 = v24;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu persons", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v25 = [a1[4] context];
      v26 = [v25 delegateCaller];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __52__HMPersonManager_fetchPersonsWithUUIDs_completion___block_invoke_124;
      v32[3] = &unk_1E754E458;
      v27 = &v34;
      v34 = a1[6];
      v33 = v15;
      [v26 invokeBlock:v32];

      v28 = v33;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v29;
        v43 = 2112;
        v44 = v6;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find serialized persons in response payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v28 = [a1[4] context];
      v30 = [v28 delegateCaller];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __52__HMPersonManager_fetchPersonsWithUUIDs_completion___block_invoke_122;
      v35[3] = &unk_1E754E430;
      v27 = &v36;
      v36 = a1[6];
      [v30 invokeBlock:v35];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __52__HMPersonManager_fetchPersonsWithUUIDs_completion___block_invoke_122(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)performCloudPullWithCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Perform cloud pull"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v25 = v9;
    v26 = 2114;
    v27 = shortDescription;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Performing cloud pull", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uUID = [(HMPersonManager *)selfCopy UUID];
  v14 = [v12 initWithTarget:uUID];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMPM.m.pcp" destination:v14 payload:0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__HMPersonManager_performCloudPullWithCompletion___block_invoke;
  v21[3] = &unk_1E754E480;
  v21[4] = selfCopy;
  v22 = v5;
  v23 = completionCopy;
  v16 = completionCopy;
  v17 = v5;
  [v15 setResponseHandler:v21];
  context = [(HMPersonManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];

  v20 = *MEMORY[0x1E69E9840];
}

void __50__HMPersonManager_performCloudPullWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to perform cloud pull: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v21 = 138543618;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v14 = "%{public}@[%{public}@] Successfully performed cloud pull";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 48) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  v4 = [(NSHashTable *)self->_observers count];
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  v5 = [(NSHashTable *)self->_observers count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5 && v4)
  {
    [(HMPersonManager *)self unsubscribe];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  v4 = [(NSHashTable *)self->_observers count];
  [(NSHashTable *)self->_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v4)
  {
    [(HMPersonManager *)self subscribe];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  uUID = [(HMPersonManager *)self UUID];
  [v3 appendFormat:@" UUID: %@", uUID];

  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (void)dealloc
{
  anyObject = [(NSHashTable *)self->_observers anyObject];

  if (anyObject)
  {
    [(HMPersonManager *)self unsubscribe];
  }

  context = [(HMPersonManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMPersonManager;
  [(HMPersonManager *)&v6 dealloc];
}

- (HMPersonManager)initWithContext:(id)context UUID:(id)d zoneName:(id)name notificationCenter:(id)center
{
  contextCopy = context;
  dCopy = d;
  nameCopy = name;
  centerCopy = center;
  v23.receiver = self;
  v23.super_class = HMPersonManager;
  v15 = [(HMPersonManager *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, context);
    v17 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:dCopy];
    UUID = v16->_UUID;
    v16->_UUID = v17;

    objc_storeStrong(&v16->_zoneName, name);
    objc_storeStrong(&v16->_notificationCenter, center);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v16->_observers;
    v16->_observers = weakObjectsHashTable;

    fetchClientFactory = v16->_fetchClientFactory;
    v16->_fetchClientFactory = &__block_literal_global;
  }

  return v16;
}

HMCameraObjectFetchClient *__68__HMPersonManager_initWithContext_UUID_zoneName_notificationCenter___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [[HMCameraObjectFetchClient alloc] initWithUUID:v11 context:v10 messageName:v9 destination:v8];

  return v12;
}

@end
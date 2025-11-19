@interface HMTrigger
+ (id)logCategory;
+ (uint64_t)_validateActionSet:(void *)a3 home:(int)a4 homeOwnedOnly:(void *)a5 error:;
+ (uint64_t)_validateName:(void *)a3 configuredName:(void *)a4 error:;
+ (uint64_t)_validatePolicy:(void *)a3 error:;
- (BOOL)_updateActionSetFromResponse:(id)a3 responsePayload:(id)a4;
- (BOOL)_updateTriggerNameFromResponse:(id)a3 responsePayload:(id)a4;
- (BOOL)isEnabled;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)a3;
- (HMDevice)ownerDevice;
- (HMHome)home;
- (HMTrigger)initWithCoder:(id)a3;
- (HMTrigger)initWithDictionary:(id)a3 home:(id)a4;
- (HMTrigger)initWithName:(id)a3 configuredName:(id)a4;
- (HMTriggerPolicy)policy;
- (HMUser)owner;
- (NSArray)actionSets;
- (NSDate)lastFireDate;
- (NSString)configuredName;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (NSUUID)uuid;
- (id)_serializeForAdd;
- (id)assistantIdentifier;
- (id)logIdentifier;
- (id)triggerName;
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_addActionSetOfType:(id)a3 completionHandler:(id)a4;
- (void)_handleTriggerFired:(id)a3;
- (void)_handleTriggerFiredNotification:(id)a3;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)_updateClientWithResults:(id)a3 withError:(id)a4;
- (void)addActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion;
- (void)addActionSetOfType:(id)a3 completionHandler:(id)a4;
- (void)enable:(BOOL)enable completionHandler:(void *)completion;
- (void)removeActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion;
- (void)removePolicy:(id)a3 completionHandler:(id)a4;
- (void)setConfiguredName:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHome:(id)a3;
- (void)setLastFireDate:(id)a3;
- (void)setName:(id)a3;
- (void)setOwner:(id)a3;
- (void)setOwnerDevice:(id)a3;
- (void)setPolicy:(id)a3;
- (void)setTriggerName:(uint64_t)a1;
- (void)setUuid:(id)a3;
- (void)updateName:(id)a3 configuredName:(id)a4 completionHandler:(id)a5;
- (void)updatePolicy:(id)a3 completionHandler:(id)a4;
@end

@implementation HMTrigger

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(HMTrigger *)self triggerName];
    v5 = [(HMTrigger *)self configuredName];
    v6 = [(HMTrigger *)self uuid];
    v7 = [v6 UUIDString];
    v8 = [v3 stringWithFormat:@"%@/%@/%@", v4, v5, v7];
  }

  else
  {
    v4 = [(HMTrigger *)self uuid];
    v8 = [v4 UUIDString];
  }

  return v8;
}

- (id)triggerName
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(a1 + 16);
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_updateClientWithResults:(id)a3 withError:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(HMTrigger *)self context];
    v8 = [v7 delegateCaller];
    [v8 callCompletion:v9 error:v6];
  }

  else
  {
    v7 = [(HMTrigger *)self home];
    [v7 _notifyDelegateOfTriggerUpdated:self];
  }
}

- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46 = self;
  v5 = [(HMTrigger *)self currentActionSets];
  v6 = [v5 array];

  v47 = v4;
  v7 = [v4 currentActionSets];
  v8 = [v7 array];

  v51 = v6;
  v48 = [[HMObjectMergeCollection alloc] initWithCurrentObjects:v6 newObjects:v8];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v49 = 0;
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        v14 = [v13 uniqueIdentifier];
        v15 = [v51 hmf_firstObjectWithValue:v14 forKeyPath:@"uniqueIdentifier"];

        v16 = [v13 actionSetType];
        if ([v16 isEqualToString:@"HMActionSetTypeTriggerOwned"])
        {
          v17 = [v15 actionSetType];
          v18 = [v17 isEqualToString:@"HMActionSetTypeTriggerOwned"];

          if (v18)
          {
            v49 |= [v15 mergeFromNewObjectForBuilderUpdates:v13];
          }
        }

        else
        {
        }
      }

      v10 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v49) = 0;
  }

  v19 = v48;
  v20 = [(HMObjectMergeCollection *)v48 removedObjects];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __49__HMTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke;
  v53[3] = &unk_1E7549A58;
  v53[4] = v46;
  [v20 hmf_enumerateWithAutoreleasePoolUsingBlock:v53];

  v21 = [(HMObjectMergeCollection *)v48 addedObjects];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __49__HMTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke_266;
  v52[3] = &unk_1E7549A58;
  v52[4] = v46;
  [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:v52];

  v22 = [(HMObjectMergeCollection *)v48 finalObjects];
  v23 = [(HMTrigger *)v46 currentActionSets];
  [v23 setArray:v22];

  v24 = [(HMObjectMergeCollection *)v48 isModified];
  LODWORD(v22) = [(HMTrigger *)v46 isEnabled];
  if (v22 == [v47 isEnabled])
  {
    v25 = v24 | v49;
  }

  else
  {
    -[HMTrigger setEnabled:](v46, "setEnabled:", [v47 isEnabled]);
    v25 = 1;
  }

  v26 = [(HMTrigger *)v46 configuredName];
  v27 = [v47 configuredName];
  v28 = HMFEqualObjects();

  if ((v28 & 1) == 0)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v46;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [(HMTrigger *)v30 configuredName];
      v34 = [v47 configuredName];
      *buf = 138543874;
      v59 = v32;
      v60 = 2112;
      v61 = v33;
      v62 = 2112;
      v63 = v34;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "%{public}@Updating configured name from %@ to %@ via merge", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v35 = [v47 configuredName];
    [(HMTrigger *)v30 setConfiguredName:v35];

    v25 = 1;
    v19 = v48;
  }

  v36 = [(HMTrigger *)v46 triggerName];
  v37 = [v47 name];
  v38 = [v36 isEqualToString:v37];

  if ((v38 & 1) == 0)
  {
    v39 = [v47 name];
    [(HMTrigger *)v46 setTriggerName:v39];

    v25 = 1;
  }

  v40 = [(HMTrigger *)v46 policy];
  v41 = [v47 policy];
  v42 = HMFEqualObjects();

  if ((v42 & 1) == 0)
  {
    v43 = [v47 policy];
    [(HMTrigger *)v46 setPolicy:v43];

    v25 = 1;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v25 & 1;
}

void __49__HMTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed action set via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __49__HMTrigger_mergeFromNewObjectForBuilderUpdates___block_invoke_266(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@added action set via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setTriggerName:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    objc_storeStrong((a1 + 16), a2);
    os_unfair_lock_unlock((a1 + 8));
  }
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v52 = 0;
    goto LABEL_35;
  }

  v7 = [HMObjectMergeCollection alloc];
  v8 = [(HMTrigger *)self currentActionSets];
  v9 = [v8 array];
  v10 = [v6 currentActionSets];
  v11 = [v10 array];
  v12 = [(HMObjectMergeCollection *)v7 initWithCurrentObjects:v9 newObjects:v11];

  v13 = [(HMObjectMergeCollection *)v12 removedObjects];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __32__HMTrigger_mergeFromNewObject___block_invoke;
  v78[3] = &unk_1E7549A58;
  v78[4] = self;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v78];

  v14 = [(HMTrigger *)self home];
  v15 = MEMORY[0x1E695DF70];
  v16 = [v14 actionSets];
  v17 = [v15 arrayWithArray:v16];

  v70 = v14;
  v18 = [v14 triggerOwnedActionSets];
  [v17 addObjectsFromArray:v18];

  v69 = v17;
  [(HMObjectMergeCollection *)v12 replaceAddedObjectsWithObjects:v17];
  v19 = [(HMObjectMergeCollection *)v12 addedObjects];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_262;
  v77[3] = &unk_1E7549A58;
  v77[4] = self;
  [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v77];

  v20 = [(HMObjectMergeCollection *)v12 finalObjects];
  v21 = [(HMTrigger *)self currentActionSets];
  [v21 setArray:v20];

  v22 = [(HMObjectMergeCollection *)v12 isModified];
  LODWORD(v21) = [(HMTrigger *)self isEnabled];
  if (v21 != [v6 isEnabled])
  {
    -[HMTrigger setEnabled:](self, "setEnabled:", [v6 isEnabled]);
    v22 = 1;
  }

  v23 = [(HMTrigger *)self lastFireDate];
  v24 = [v6 lastFireDate];
  v25 = HMFEqualObjects();

  if ((v25 & 1) == 0)
  {
    v26 = [v6 lastFireDate];
    [(HMTrigger *)self setLastFireDate:v26];

    v22 = 1;
  }

  v27 = [(HMTrigger *)self configuredName];
  v28 = [v6 configuredName];
  v29 = HMFEqualObjects();

  if ((v29 & 1) == 0)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [(HMTrigger *)v31 configuredName];
      v35 = [v6 configuredName];
      *buf = 138543874;
      v80 = v33;
      v81 = 2112;
      v82 = v34;
      v83 = 2112;
      v84 = v35;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating configured name from %@ to %@ via merge", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    v36 = [v6 configuredName];
    [(HMTrigger *)v31 setConfiguredName:v36];

    v22 = 1;
  }

  v37 = [(HMTrigger *)self triggerName];
  v38 = [v6 name];
  v39 = [v37 isEqualToString:v38];

  if ((v39 & 1) == 0)
  {
    v40 = [v6 name];
    [(HMTrigger *)self setTriggerName:v40];

    v41 = [(HMTrigger *)self home];
    v42 = [v41 delegate];
    if (objc_opt_respondsToSelector())
    {
      v43 = [(HMTrigger *)self context];
      v44 = [v43 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_263;
      block[3] = &unk_1E754E5E8;
      block[4] = self;
      v75 = v42;
      v76 = v41;
      dispatch_async(v44, block);
    }

    v22 = 1;
  }

  v45 = [(HMTrigger *)self ownerDevice];

  v46 = [v6 ownerDevice];
  v47 = v46;
  if (v45)
  {

    if (v47)
    {
      v48 = [(HMTrigger *)self ownerDevice];
      v49 = [v6 ownerDevice];
      v50 = [v48 mergeFromNewObject:v49];

      v51 = v50 | v22;
      goto LABEL_24;
    }

    v53 = [v6 ownerDevice];
    [(HMTrigger *)self setOwnerDevice:v53];
  }

  else
  {
    [(HMTrigger *)self setOwnerDevice:v46];
  }

  v51 = 1;
LABEL_24:
  v54 = [(HMTrigger *)self owner];
  v55 = [v6 owner];
  v56 = v55;
  if (!v54)
  {
    v57 = self;
    v58 = v56;
LABEL_29:
    [(HMTrigger *)v57 setOwner:v58];
    v52 = 1;
    goto LABEL_30;
  }

  if (!v55)
  {
    v57 = self;
    v58 = 0;
    goto LABEL_29;
  }

  v52 = [v54 mergeFromNewObject:v55] | v51;
LABEL_30:
  v59 = [(HMTrigger *)self policy];
  v60 = [v6 policy];
  v61 = HMFEqualObjects();

  if ((v61 & 1) == 0)
  {
    v62 = [v6 policy];
    [(HMTrigger *)self setPolicy:v62];

    v63 = [(HMTrigger *)self home];
    v64 = [v63 delegate];
    if (objc_opt_respondsToSelector())
    {
      v65 = [(HMTrigger *)self context];
      v66 = [v65 queue];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_3;
      v71[3] = &unk_1E754E5E8;
      v71[4] = self;
      v72 = v64;
      v73 = v63;
      dispatch_async(v66, v71);
    }

    v52 = 1;
  }

LABEL_35:
  v67 = *MEMORY[0x1E69E9840];
  return v52 & 1;
}

void __32__HMTrigger_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed action set via trigger merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __32__HMTrigger_mergeFromNewObject___block_invoke_262(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added action set via trigger merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __32__HMTrigger_mergeFromNewObject___block_invoke_263(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_2;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

void __32__HMTrigger_mergeFromNewObject___block_invoke_3(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__HMTrigger_mergeFromNewObject___block_invoke_4;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

- (HMTrigger)initWithCoder:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"triggerName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMT.triggerConfiguredNameCodingKey"];
  v7 = [(HMTrigger *)self initWithName:v5 configuredName:v6];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    [(HMTrigger *)v7 setHome:v8];

    v9 = [v4 hm_decodeAndCacheUUIDFromStringForKey:@"triggerUUID"];
    uuid = v7->_uuid;
    v7->_uuid = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    currentActionSets = v7->_currentActionSets;
    v15 = [v4 decodeObjectOfClasses:v13 forKey:@"triggerActionSets"];
    [(HMMutableArray *)currentActionSets setArray:v15];

    -[HMTrigger setEnabled:](v7, "setEnabled:", [v4 decodeBoolForKey:@"triggerActive"]);
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"triggerLastFireDate"];
    lastFireDate = v7->_lastFireDate;
    v7->_lastFireDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
    ownerDevice = v7->_ownerDevice;
    v7->_ownerDevice = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
    objc_storeWeak(&v7->_owner, v20);

    v21 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v23 = [v21 setWithArray:v22];

    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"HMT.policyKey"];
    policy = v7->_policy;
    v7->_policy = v24;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_registerNotificationHandlers
{
  v4 = [(HMTrigger *)self context];
  v3 = [v4 messageDispatcher];
  [v3 registerForMessage:@"kTriggerFiredNotificationKey" receiver:self selector:sel__handleTriggerFiredNotification_];
}

- (BOOL)_updateActionSetFromResponse:(id)a3 responsePayload:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self home];
  v9 = [v7 hmf_stringForKey:@"kTriggerActionSetTypeKey"];
  v10 = [v7 hmf_numberForKey:@"kTriggerAddActionSetKey"];
  v11 = [v7 hmf_UUIDForKey:@"kTriggerActionSetUUIDKey"];
  v12 = v11;
  if (v8)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = v13 || v11 == 0 || v9 == 0;
  v16 = v15;
  v80 = v16;
  if (!v15)
  {
    v22 = [v9 isEqualToString:@"HMActionSetTypeTriggerOwned"];
    v74 = v12;
    if (![v10 BOOLValue])
    {
      v26 = [(HMTrigger *)self currentActionSets];
      v24 = [v26 firstItemWithUUID:v12];

      v27 = _Block_copy(v6);
      v25 = v27;
      if (v24)
      {
        v28 = [(HMTrigger *)self currentActionSets];
        [v28 removeObject:v24];
        aBlock = 0;
        v75 = 1;
      }

      else
      {
        if (!v27)
        {
          aBlock = 0;
          v78 = 0;
          v75 = 1;
          goto LABEL_32;
        }

        v28 = [(HMTrigger *)self context];
        v33 = [v28 delegateCaller];
        v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
        [v33 callCompletion:v25 error:v34];

        v12 = v74;
        v24 = 0;
        v75 = 0;
        aBlock = 0;
      }

LABEL_31:
      v78 = v24;

LABEL_32:
      v35 = objc_autoreleasePoolPush();
      v36 = self;
      v37 = HMFGetOSLogHandle();
      v73 = v10;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        HMFBooleanToString();
        v39 = v7;
        v40 = v9;
        v41 = v25;
        v42 = v8;
        v44 = v43 = v6;
        *buf = 138543618;
        v82 = v38;
        v83 = 2112;
        v84 = v44;
        _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_INFO, "%{public}@Should we call completion handler: %@", buf, 0x16u);

        v6 = v43;
        v8 = v42;
        v25 = v41;
        v9 = v40;
        v7 = v39;
        v10 = v73;

        v12 = v74;
      }

      objc_autoreleasePoolPop(v35);
      v45 = v78;
      if (v75)
      {
        v46 = objc_autoreleasePoolPush();
        v47 = v36;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v49 = v76 = v6;
          v50 = _Block_copy(v25);
          v72 = v25;
          v51 = v12;
          v52 = _Block_copy(aBlock);
          *buf = 138543874;
          v82 = v49;
          v83 = 2112;
          v84 = v50;
          v85 = 2112;
          v86 = v52;
          _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_INFO, "%{public}@Looks like we did not yet call the completion handler: [completion: %@], [triggerOwnedActionSetAddCompletion: %@]", buf, 0x20u);

          v12 = v51;
          v25 = v72;

          v45 = v78;
          v6 = v76;
        }

        objc_autoreleasePoolPop(v46);
        if (v25)
        {
          v53 = v6;
          v54 = objc_autoreleasePoolPush();
          v55 = v47;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543362;
            v82 = v57;
            _os_log_impl(&dword_19BB39000, v56, OS_LOG_TYPE_INFO, "%{public}@Calling completion handler", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v54);
          v58 = [(HMTrigger *)v55 context];
          v59 = [v58 delegateCaller];
          [v59 callCompletion:v25 error:0];

          v6 = v53;
          v10 = v73;
          v12 = v74;
          v45 = v78;
        }

        else
        {
          v60 = objc_autoreleasePoolPush();
          v61 = v47;
          v62 = HMFGetOSLogHandle();
          v63 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);
          if (aBlock)
          {
            v64 = v6;
            if (v63)
            {
              HMFGetLogIdentifier();
              v66 = v65 = v60;
              *buf = 138543362;
              v82 = v66;
              _os_log_impl(&dword_19BB39000, v62, OS_LOG_TYPE_INFO, "%{public}@Calling trigger owned action set add completion handler", buf, 0xCu);

              v60 = v65;
            }

            objc_autoreleasePoolPop(v60);
            v67 = [(HMTrigger *)v61 context];
            v68 = [v67 delegateCaller];
            [v68 callCompletion:aBlock actionSet:v78 error:0];

            v6 = v64;
            v45 = v78;
          }

          else
          {
            if (v63)
            {
              HMFGetLogIdentifier();
              v69 = v79 = v60;
              *buf = 138543362;
              v82 = v69;
              _os_log_impl(&dword_19BB39000, v62, OS_LOG_TYPE_INFO, "%{public}@Calling the trigger delegate", buf, 0xCu);

              v60 = v79;
            }

            objc_autoreleasePoolPop(v60);
            [v8 _notifyDelegateOfTriggerUpdated:v61];
          }

          v10 = v73;
        }
      }

      goto LABEL_51;
    }

    v75 = v22;
    if (v22)
    {
      v23 = [v7 hmf_stringForKey:@"kActionSetName"];
      v24 = [v8 createAndAddActionSetWithName:v23 type:v9 uuid:v12];
      aBlock = _Block_copy(v6);
      v25 = 0;
    }

    else
    {
      v29 = [v8 actionSets];
      v24 = [v29 hmf_firstObjectWithUUID:v12];

      v30 = _Block_copy(v6);
      v25 = v30;
      aBlock = 0;
      if (v24 || !v30)
      {
        v75 = 1;
        goto LABEL_30;
      }

      v23 = [(HMTrigger *)self context];
      v31 = [v23 delegateCaller];
      v32 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      [v31 callCompletion:v25 error:v32];

      v12 = v74;
      v24 = 0;
      aBlock = 0;
    }

LABEL_30:
    v28 = [(HMTrigger *)self currentActionSets];
    [v28 addObjectIfNotPresent:v24];
    goto LABEL_31;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v21 = v20 = v12;
    *buf = 138544386;
    v82 = v21;
    v83 = 2112;
    v84 = v8;
    v85 = 2112;
    v86 = v10;
    v87 = 2112;
    v88 = v20;
    v89 = 2112;
    v90 = v9;
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Required parameters not available. Not updating the action set from response. [Home: %@], [addActionSet : %@], [actionSetUUID: %@], [actionSetType: %@]", buf, 0x34u);

    v12 = v20;
  }

  objc_autoreleasePoolPop(v17);
LABEL_51:

  v70 = *MEMORY[0x1E69E9840];
  return v80;
}

- (void)_handleTriggerFiredNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMTrigger *)self context];
  v9 = [v5 pendingRequests];

  v6 = [v4 identifier];
  v7 = [v9 removeCompletionBlockForIdentifier:v6];

  v8 = [v4 dictionaryForKey:@"kTriggerInfo"];

  [(HMTrigger *)self _handleTriggerFired:v8];
  [(HMTrigger *)self _updateClientWithResults:v7 withError:0];
}

- (void)_handleTriggerFired:(id)a3
{
  v4 = [a3 hmf_dateForKey:@"kTriggerLastFireDateKey"];
  if (v4)
  {
    [(HMTrigger *)self setLastFireDate:v4];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)_updateTriggerNameFromResponse:(id)a3 responsePayload:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 hmf_stringForKey:@"kTriggerName"];
  v9 = [v7 hmf_stringForKey:@"HMT.triggerConfiguredNameKey"];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138544130;
    v27 = v13;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updated Trigger Name from payload: %@ with name : [%@], configuredName: [%@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  [(HMTrigger *)v11 setTriggerName:v8];
  [(HMTrigger *)v11 setConfiguredName:v9];
  if (v6)
  {
    v14 = [(HMTrigger *)v11 context];
    v15 = [v14 delegateCaller];
    [v15 callCompletion:v6 error:0];
    v16 = 0;
  }

  else
  {
    v14 = [(HMTrigger *)v11 home];
    v15 = [v14 delegate];
    v17 = objc_opt_respondsToSelector();
    if (v17)
    {
      v18 = [(HMTrigger *)v11 context];
      v19 = [v18 delegateCaller];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __60__HMTrigger__updateTriggerNameFromResponse_responsePayload___block_invoke;
      v22[3] = &unk_1E754E5E8;
      v23 = v15;
      v24 = v14;
      v25 = v11;
      [v19 invokeBlock:v22];
    }

    v16 = v17 ^ 1;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (void)removePolicy:(id)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (v8)
  {
    v32 = 0;
    v9 = [HMTrigger _validatePolicy:v6 error:&v32];
    v10 = v32;
    if (v9)
    {
      v11 = [(HMTrigger *)self home];
      if (v11)
      {
        v12 = [(HMTrigger *)self policy];
        v13 = v12 == 0;

        if (v13)
        {
          v14 = [(HMTrigger *)self context];
          v15 = [v14 delegateCaller];
          [v15 callCompletion:v7 error:0];
        }

        v33 = @"HMT.policyKey";
        v34 = MEMORY[0x1E695E0F8];
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v17 = MEMORY[0x1E69A2A10];
        v18 = objc_alloc(MEMORY[0x1E69A2A00]);
        v19 = [(HMTrigger *)self uuid];
        v20 = [v18 initWithTarget:v19];
        v21 = [v17 messageWithName:@"HMTriggerRemovePolicyKey" destination:v20 payload:v16];

        objc_initWeak(location, self);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __44__HMTrigger_removePolicy_completionHandler___block_invoke;
        v29[3] = &unk_1E754CFF8;
        objc_copyWeak(&v31, location);
        v30 = v7;
        [v21 setResponseHandler:v29];
        v22 = [v8 messageDispatcher];
        [v22 sendMessage:v21];

        objc_destroyWeak(&v31);
        objc_destroyWeak(location);
      }

      else
      {
        v16 = [(HMTrigger *)self context];
        v21 = [v16 delegateCaller];
        v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
        [v21 callCompletion:v7 error:v27];
      }
    }

    else
    {
      v11 = [v8 delegateCaller];
      [v11 callCompletion:v7 error:v10];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v26;
      v36 = 2080;
      v37 = "[HMTrigger removePolicy:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v28 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)_validatePolicy:(void *)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = v4;
  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  v6 = v4 & (v5 != 0);
  if (a3 && (v6 & 1) == 0)
  {
    *a3 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  }

  return v6;
}

void __44__HMTrigger_removePolicy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v14 = 138544130;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Trigger remove policy response : %@, completionHandler: %@ error %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    [v9 setPolicy:0];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updatePolicy:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (v8)
  {
    v28 = 0;
    v9 = [HMTrigger _validatePolicy:v6 error:&v28];
    v10 = v28;
    if (v9)
    {
      v11 = [(HMTrigger *)self home];
      if (v11)
      {
        v31 = @"HMT.deleteAfterExecutionPolicyKey";
        v32 = MEMORY[0x1E695E118];
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v29 = @"HMT.policyKey";
        v30 = v24;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v13 = MEMORY[0x1E69A2A10];
        v14 = objc_alloc(MEMORY[0x1E69A2A00]);
        v15 = [(HMTrigger *)self uuid];
        v16 = [v14 initWithTarget:v15];
        v17 = [v13 messageWithName:@"HMTriggerUpdatePolicyKey" destination:v16 payload:v12];

        objc_initWeak(location, self);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __44__HMTrigger_updatePolicy_completionHandler___block_invoke;
        v25[3] = &unk_1E754CFF8;
        objc_copyWeak(&v27, location);
        v26 = v7;
        [v17 setResponseHandler:v25];
        v18 = [v8 messageDispatcher];
        [v18 sendMessage:v17];

        objc_destroyWeak(&v27);
        objc_destroyWeak(location);
      }

      else
      {
        v24 = [(HMTrigger *)self context];
        v12 = [v24 delegateCaller];
        v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
        [v12 callCompletion:v7 error:v17];
      }
    }

    else
    {
      v11 = [v8 delegateCaller];
      [v11 callCompletion:v7 error:v10];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v22;
      v34 = 2080;
      v35 = "[HMTrigger updatePolicy:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __44__HMTrigger_updatePolicy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v25 = 138544130;
    v26 = v11;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Trigger update policy response : %@, completionHandler: %@ error %@", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    v13 = [v6 hmf_stringForKey:@"HMT.triggerPolicyUUIDKey"];
    if (!v13)
    {
      v21 = [v9 context];
      v22 = [v21 delegateCaller];
      v23 = *(a1 + 32);
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:27];
      [v22 callCompletion:v23 error:v24];

      goto LABEL_8;
    }

    v14 = v13;
    v15 = [HMTriggerDeleteAfterExecutionPolicy alloc];
    v16 = MEMORY[0x1E696AFB0];
    v17 = v15;
    v18 = [[v16 alloc] initWithUUIDString:v14];
    v19 = [(HMTriggerDeleteAfterExecutionPolicy *)v17 initWithPayload:v18 payload:v6];

    [v9 setPolicy:v19];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];
LABEL_8:

  v20 = *MEMORY[0x1E69E9840];
}

- (id)_serializeForAdd
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = [(HMTrigger *)self triggerName];
  [v3 setObject:v4 forKeyedSubscript:@"kTriggerName"];

  v5 = [(HMTrigger *)self configuredName];
  [v3 setObject:v5 forKeyedSubscript:@"HMT.triggerConfiguredNameKey"];

  v6 = [(HMTrigger *)self uuid];
  [v3 setObject:v6 forKeyedSubscript:@"kNewObjectUUIDKey"];

  v7 = [v3 copy];

  return v7;
}

- (void)_addActionSetOfType:(id)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMTrigger *)self context];
  if (v8)
  {
    v9 = [(HMTrigger *)self home];
    if (v9)
    {
      if ([v6 isEqualToString:@"HMActionSetTypeTriggerOwned"])
      {
        v33[0] = @"kTriggerAddActionSetKey";
        v33[1] = @"kTriggerActionSetTypeKey";
        v34[0] = MEMORY[0x1E695E118];
        v34[1] = @"HMActionSetTypeTriggerOwned";
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
        v11 = MEMORY[0x1E69A2A10];
        v12 = objc_alloc(MEMORY[0x1E69A2A00]);
        v13 = [(HMTrigger *)self uuid];
        v14 = [v12 initWithTarget:v13];
        v15 = [v11 messageWithName:@"kUpdateActionSetTriggerRequestKey" destination:v14 payload:v10];

        objc_initWeak(location, self);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __51__HMTrigger__addActionSetOfType_completionHandler___block_invoke;
        v29[3] = &unk_1E754D058;
        objc_copyWeak(&v32, location);
        v31 = v7;
        v16 = v8;
        v30 = v16;
        [v15 setResponseHandler:v29];
        v17 = [v16 messageDispatcher];
        [v17 sendMessage:v15 completionHandler:0];

        objc_destroyWeak(&v32);
        objc_destroyWeak(location);
      }

      else
      {
        v25 = [(HMTrigger *)self context];
        v26 = [v25 delegateCaller];
        v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [v26 callCompletion:v7 actionSet:0 error:v27];
      }
    }

    else
    {
      v22 = [(HMTrigger *)self context];
      v23 = [v22 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [v23 callCompletion:v7 actionSet:0 error:v24];

      v9 = 0;
    }

    goto LABEL_11;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *location = 138543618;
    *&location[4] = v21;
    v36 = 2080;
    v37 = "[HMTrigger _addActionSetOfType:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  if (v7)
  {
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v9);
LABEL_11:
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __51__HMTrigger__addActionSetOfType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 40));
    v22 = 138544130;
    v23 = v11;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@addActionSetOfType: response : %@, completionHandler: %@ error %@", &v22, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v13 = 1;
  if (!v5 && v6)
  {
    v14 = _Block_copy(*(a1 + 40));
    v13 = [v9 _updateActionSetFromResponse:v14 responsePayload:v6];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v9;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = HMFBooleanToString();
    v22 = 138543618;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@addActionSetOfType: shouldCallClientHandler: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  if (v13)
  {
    v20 = [*(a1 + 32) delegateCaller];
    [v20 callCompletion:*(a1 + 40) actionSet:0 error:v5];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)addActionSetOfType:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = @"You must provide a completion handler";
    goto LABEL_11;
  }

  v8 = v7;
  if (([v6 isEqualToString:@"HMActionSetTypeTriggerOwned"] & 1) == 0)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = @"type must be HMActionSetTypeTriggerOwned";
LABEL_11:
    v20 = [v17 exceptionWithName:v18 reason:v19 userInfo:0];
    objc_exception_throw(v20);
  }

  v9 = [(HMTrigger *)self context];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HMTrigger_addActionSetOfType_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v22 = v6;
    v23 = v8;
    dispatch_async(v11, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2080;
      v27 = "[HMTrigger addActionSetOfType:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __39__HMTrigger__enable_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v14 = 138544130;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Activate trigger response : %@, completionHandler: %@ error %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (!v5 && v6)
  {
    [v9 setEnabled:{objc_msgSend(v6, "hmf_BOOLForKey:", @"kTriggerActivate"}];
  }

  [v9 _updateClientWithResults:*(a1 + 32) withError:v5];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)enable:(BOOL)enable completionHandler:(void *)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = completion;
  v7 = [(HMTrigger *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTrigger enable:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = v7;
  if (v7)
  {
    v9 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__HMTrigger_enable_completionHandler___block_invoke;
    block[3] = &unk_1E7548108;
    block[4] = self;
    v24 = enable;
    v23 = v6;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2080;
      v28 = "[HMTrigger enable:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateName:(id)a3 configuredName:(id)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMTrigger *)self context];
  if (v11)
  {
    v34 = 0;
    v12 = [HMTrigger _validateName:v8 configuredName:v9 error:&v34];
    v30 = v34;
    if ((v12 & 1) == 0)
    {
      v13 = [v11 delegateCaller];
      [v13 callCompletion:v10 error:v30];
LABEL_17:

      goto LABEL_18;
    }

    v13 = [(HMTrigger *)self home];
    if (v13)
    {
      v14 = [(HMTrigger *)self triggerName];
      if ([v14 isEqualToString:v8])
      {
        v15 = [(HMTrigger *)self configuredName];
        v16 = [v15 isEqualToString:v9];

        if (v16)
        {
          v17 = [(HMTrigger *)self context];
          v18 = [v17 delegateCaller];
          [v18 callCompletion:v10 error:0];
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{2, v30}];
      [v17 setObject:v8 forKeyedSubscript:@"kTriggerName"];
      if (v9)
      {
        [v17 setObject:v9 forKeyedSubscript:@"HMT.triggerConfiguredNameKey"];
      }

      v24 = MEMORY[0x1E69A2A10];
      v25 = objc_alloc(MEMORY[0x1E69A2A00]);
      v26 = [(HMTrigger *)self uuid];
      v27 = [v25 initWithTarget:v26];
      v18 = [v24 messageWithName:@"kRenameTriggerRequestKey" destination:v27 payload:v17];

      objc_initWeak(buf, self);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __57__HMTrigger_updateName_configuredName_completionHandler___block_invoke;
      v31[3] = &unk_1E754CFF8;
      objc_copyWeak(&v33, buf);
      v32 = v10;
      [v18 setResponseHandler:v31];
      v28 = [v11 messageDispatcher];
      [v28 sendMessage:v18 completionHandler:0];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
      goto LABEL_16;
    }

    v17 = [(HMTrigger *)self context];
    v18 = [v17 delegateCaller];
    v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [v18 callCompletion:v10 error:v23];

    goto LABEL_16;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v22;
    v37 = 2080;
    v38 = "[HMTrigger updateName:configuredName:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_18:

  v29 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)_validateName:(void *)a3 configuredName:(void *)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  if (!v6)
  {
    if (a4)
    {
      v10 = 20;
      goto LABEL_12;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_15;
  }

  v8 = [v6 length];
  if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
  {
    dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
  }

  if (v8 <= HMMaxLengthForNaming__hmf_once_v9)
  {
    v9 = [v7 length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v9 <= HMMaxLengthForNaming__hmf_once_v9)
    {
      v11 = 1;
      goto LABEL_15;
    }
  }

  if (!a4)
  {
    goto LABEL_13;
  }

  v10 = 46;
LABEL_12:
  [MEMORY[0x1E696ABC0] hmErrorWithCode:v10];
  *a4 = v11 = 0;
LABEL_15:

  return v11;
}

void __57__HMTrigger_updateName_configuredName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v14 = 138544130;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Rename trigger response : %@, completionHandler: %@ error %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v5 || !v6 || [v9 _updateTriggerNameFromResponse:*(a1 + 32) responsePayload:v6])
  {
    [v9 _updateClientWithResults:*(a1 + 32) withError:v5];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = actionSet;
  v7 = completion;
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTrigger removeActionSet:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [(HMTrigger *)self home];
    v29 = 0;
    v11 = [HMTrigger _validateActionSet:v6 home:v10 homeOwnedOnly:0 error:&v29];
    v12 = v29;

    if (v11)
    {
      v13 = [v9 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__HMTrigger_removeActionSet_completionHandler___block_invoke;
      block[3] = &unk_1E754E0F8;
      block[4] = self;
      v27 = v6;
      v28 = v7;
      dispatch_async(v13, block);
    }

    else
    {
      v18 = [v9 delegateCaller];
      [v18 callCompletion:v7 error:v12];

      v12 = v18;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v17;
      v32 = 2080;
      v33 = "[HMTrigger removeActionSet:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v12);
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)_validateActionSet:(void *)a3 home:(int)a4 homeOwnedOnly:(void *)a5 error:
{
  v8 = a2;
  v9 = a3;
  objc_opt_self();
  if (!v8)
  {
    if (!a5)
    {
      goto LABEL_14;
    }

    v17 = 20;
LABEL_13:
    [MEMORY[0x1E696ABC0] hmErrorWithCode:v17];
    *a5 = v16 = 0;
    goto LABEL_15;
  }

  if (v9)
  {
    v10 = [v8 home];
    v11 = [v10 uuid];
    v12 = [v9 uuid];
    v13 = [v11 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      if (!a5)
      {
        goto LABEL_14;
      }

      v17 = 11;
      goto LABEL_13;
    }
  }

  if (a4)
  {
    v14 = [v8 actionSetType];
    IsHomeOwned = HMActionSetTypeIsHomeOwned(v14);

    if (!IsHomeOwned)
    {
      if (a5)
      {
        v17 = 3;
        goto LABEL_13;
      }

LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_15:

  return v16;
}

- (void)addActionSet:(HMActionSet *)actionSet completionHandler:(void *)completion
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = actionSet;
  v7 = completion;
  v8 = [(HMTrigger *)self context];
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMTrigger addActionSet:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [(HMTrigger *)self home];
    v29 = 0;
    v11 = [HMTrigger _validateActionSet:v6 home:v10 homeOwnedOnly:1 error:&v29];
    v12 = v29;

    if (v11)
    {
      v13 = [v9 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__HMTrigger_addActionSet_completionHandler___block_invoke;
      block[3] = &unk_1E754E0F8;
      block[4] = self;
      v27 = v6;
      v28 = v7;
      dispatch_async(v13, block);
    }

    else
    {
      v18 = [v9 delegateCaller];
      [v18 callCompletion:v7 error:v12];

      v12 = v18;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v17;
      v32 = 2080;
      v33 = "[HMTrigger addActionSet:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v12);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __52__HMTrigger__updateActionSet_add_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = _Block_copy(*(a1 + 32));
    v21 = 138544130;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@_updateActionSet: response : %@, completionHandler: %@ error %@", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v13 = 1;
  if (!v5 && v6)
  {
    v14 = _Block_copy(*(a1 + 32));
    v13 = [v9 _updateActionSetFromResponse:v14 responsePayload:v6];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v9;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = HMFBooleanToString();
    v21 = 138543618;
    v22 = v18;
    v23 = 2112;
    v24 = v19;
    _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@_updateActionSet : shouldCallClientHandler: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  if (v13)
  {
    [v16 _updateClientWithResults:*(a1 + 32) withError:v5];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setPolicy:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  policy = self->_policy;
  self->_policy = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMTriggerPolicy)policy
{
  os_unfair_lock_lock_with_options();
  v3 = self->_policy;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)assistantIdentifier
{
  v2 = [(HMTrigger *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"TR", v2, 0);

  return v3;
}

- (void)setOwner:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_owner, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMUser)owner
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setOwnerDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  ownerDevice = self->_ownerDevice;
  self->_ownerDevice = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDevice)ownerDevice
{
  os_unfair_lock_lock_with_options();
  v3 = self->_ownerDevice;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHome:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setUuid:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v6];
  uuid = self->_uuid;
  self->_uuid = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)uuid
{
  os_unfair_lock_lock_with_options();
  v3 = self->_uuid;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)setLastFireDate:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  lastFireDate = self->_lastFireDate;
  self->_lastFireDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastFireDate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastFireDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)actionSets
{
  v2 = [(HMTrigger *)self currentActionSets];
  v3 = [v2 array];

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_enabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->_lock);
  return enabled;
}

- (NSString)configuredName
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSString *)self->_configuredName copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConfiguredName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  configuredName = self->_configuredName;
  self->_configuredName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  configuredName = self->_configuredName;
  if (configuredName)
  {
    v4 = [(NSString *)configuredName copy];
  }

  else
  {
    v4 = [(NSString *)self->_name copy];
  }

  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)__configureWithContext:(id)a3 home:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  obj = a3;
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138544130;
    v30 = v11;
    v31 = 2112;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring trigger with context : %@, Home: %@, HMTrigger: %@", buf, 0x2Au);
  }

  v23 = v6;

  objc_autoreleasePoolPop(v8);
  [(HMTrigger *)v9 setHome:v7];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [(HMTrigger *)v9 currentActionSets];
  v13 = [v12 array];

  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v18 actionSetType];
        v20 = [v19 isEqualToString:@"HMActionSetTypeTriggerOwned"];

        if (v20)
        {
          [v7 adoptTriggerOwnedActionSet:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  if (v23)
  {
    objc_storeStrong(&v9->_context, obj);
    [(HMTrigger *)v9 _registerNotificationHandlers];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigure
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(HMTrigger *)self actionSets];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 actionSetType];

        if (v9 == @"HMActionSetTypeTriggerOwned")
        {
          [v8 _unconfigure];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(HMTrigger *)self setHome:0];
  [(HMTrigger *)self setLastFireDate:0];
  v10 = [(HMTrigger *)self currentActionSets];
  [v10 setArray:0];

  v11 = [(HMTrigger *)self context];
  v12 = [v11 messageDispatcher];
  [v12 deregisterReceiver:self];

  [(HMTrigger *)self setContext:0];
  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 removeObserver:self];

  v14 = *MEMORY[0x1E69E9840];
}

- (HMTrigger)initWithDictionary:(id)a3 home:(id)a4
{
  v86 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v78.receiver = self;
  v78.super_class = HMTrigger;
  v8 = [(HMTrigger *)&v78 init];
  if (!v8)
  {
    goto LABEL_32;
  }

  v9 = [v6 hmf_UUIDForKey:@"kTriggerUUID"];
  if (!v9)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v8;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = objc_opt_class();
      *buf = 138543618;
      v80 = v33;
      v81 = 2112;
      v82 = v34;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing uuid", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    goto LABEL_40;
  }

  v10 = v9;
  v11 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v9];
  uuid = v8->_uuid;
  v8->_uuid = v11;

  v13 = [v6 hmf_stringForKey:@"kTriggerName"];
  if (!v13)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v8;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      v39 = objc_opt_class();
      *buf = 138543618;
      v80 = v38;
      v81 = 2112;
      v82 = v39;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, missing name", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_39;
  }

  v14 = v13;
  v15 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v13];
  name = v8->_name;
  v8->_name = v15;

  v17 = MEMORY[0x1E69A2A20];
  v18 = [v6 hmf_stringForKey:@"HMT.triggerConfiguredNameKey"];
  v19 = [v17 hmf_cachedInstanceForString:v18];
  configuredName = v8->_configuredName;
  v8->_configuredName = v19;

  v8->_enabled = [v6 hmf_BOOLForKey:@"kTriggerActivate"];
  if ([v6 hmf_BOOLForKey:@"HMT.deleteAfterExecutionPolicyKey"])
  {
    v21 = +[HMTriggerDeleteAfterExecutionPolicy deleteAfterExecutionPolicy];
    policy = v8->_policy;
    v8->_policy = v21;
  }

  v23 = objc_alloc(MEMORY[0x1E696AFB0]);
  v24 = [v6 hmf_stringForKey:@"HMTriggerOwnerKey"];
  v25 = [v23 initWithUUIDString:v24];
  v26 = [v7 userWithUUID:v25];
  objc_storeWeak(&v8->_owner, v26);

  v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = [v6 hmf_dictionaryForKey:@"kTriggerOwnedActionSetKey"];
  if (!v27)
  {
    v70 = v14;
    v71 = v7;
    v29 = 0;
    goto LABEL_16;
  }

  v28 = [[HMActionSet alloc] initWithDictionary:v27 home:v7];
  if (!v28)
  {
LABEL_38:

LABEL_39:
LABEL_40:
    v55 = 0;
    goto LABEL_41;
  }

  v29 = v28;
  v70 = v14;
  v71 = v7;
  [v73 addObject:v28];
LABEL_16:
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = [v6 hmf_arrayForKey:@"kTriggerActionSetUUIDKey"];
  v40 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (!v40)
  {
    goto LABEL_31;
  }

  v41 = v40;
  v42 = *v75;
  v68 = v27;
  v69 = v10;
  while (2)
  {
    for (i = 0; i != v41; ++i)
    {
      if (*v75 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(*(&v74 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;

      if (!v46)
      {
        goto LABEL_34;
      }

      v47 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v46];
      if (!v47)
      {
        v46 = v44;
LABEL_34:
        v56 = objc_autoreleasePoolPush();
        v57 = v8;
        v58 = HMFGetOSLogHandle();
        v7 = v71;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = HMFGetLogIdentifier();
          v60 = objc_opt_class();
          *buf = 138543874;
          v80 = v59;
          v81 = 2112;
          v82 = v60;
          v83 = 2112;
          v84 = v44;
          _os_log_impl(&dword_19BB39000, v58, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, invalid actionSet reference '%@'", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v56);
LABEL_37:

        v10 = v69;
        v14 = v70;
        v27 = v68;
        goto LABEL_38;
      }

      v48 = v47;
      v49 = [(HMActionSet *)v29 uuid];
      v50 = [v48 isEqual:v49];

      if (v50)
      {
        goto LABEL_29;
      }

      v51 = [v71 actionSetWithUUID:v48];
      if (!v51)
      {
        v63 = objc_autoreleasePoolPush();
        v64 = v8;
        v65 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = HMFGetLogIdentifier();
          v67 = objc_opt_class();
          *buf = 138543874;
          v80 = v66;
          v81 = 2112;
          v82 = v67;
          v83 = 2112;
          v84 = v48;
          _os_log_impl(&dword_19BB39000, v65, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode %@, failed to resolve actionSet %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v63);
        v7 = v71;
        goto LABEL_37;
      }

      v52 = v51;
      [v73 addObject:v51];

LABEL_29:
    }

    v41 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
    v27 = v68;
    v10 = v69;
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v53 = [HMMutableArray arrayWithArray:v73];
  currentActionSets = v8->_currentActionSets;
  v8->_currentActionSets = v53;

  v7 = v71;
LABEL_32:
  v55 = v8;
LABEL_41:

  v61 = *MEMORY[0x1E69E9840];
  return v55;
}

- (HMTrigger)initWithName:(id)a3 configuredName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:3];
    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v8 = v7;
  v24.receiver = self;
  v24.super_class = HMTrigger;
  v9 = [(HMTrigger *)&v24 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
    name = v9->_name;
    v9->_name = v10;

    v12 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v8];
    configuredName = v9->_configuredName;
    v9->_configuredName = v12;

    v14 = +[HMMutableArray array];
    currentActionSets = v9->_currentActionSets;
    v9->_currentActionSets = v14;

    v16 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v9->_uuid;
    v9->_uuid = v16;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t70 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t70, &__block_literal_global_10828);
  }

  v3 = logCategory__hmf_once_v71;

  return v3;
}

uint64_t __24__HMTrigger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v71 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

@end
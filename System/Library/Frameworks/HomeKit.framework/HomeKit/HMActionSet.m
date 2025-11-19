@interface HMActionSet
+ (BOOL)isBuiltinActionSetType:(id)a3;
+ (HMActionSet)_shortcutsComponentActionSetWithHome:(void *)a3 actions:;
+ (id)actionSetFromProtoBuf:(id)a3 home:(id)a4;
+ (id)allowedActionClasses;
+ (id)shortcutsComponentActionSetWithHome:(id)a3 actions:(id)a4;
- (BOOL)_doRemoveActionWithUUID:(id)a3 completionHandler:(id)a4;
- (BOOL)_handleActionRemovedFromPayload:(id)a3 completion:(id)a4;
- (BOOL)_handleActionSetRenameFromPayload:(id)a3 completion:(id)a4;
- (BOOL)_handleActionUpdatedFromResponse:(id)a3 completion:(id)a4;
- (BOOL)isExecuting;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)a3;
- (BOOL)requiresDeviceUnlock;
- (HMActionSet)initWithCoder:(id)a3;
- (HMActionSet)initWithDictionary:(id)a3 home:(id)a4;
- (HMActionSet)initWithName:(id)a3 type:(id)a4 uuid:(id)a5;
- (HMActionSet)initWithShortcutsDictionaryRepresentation:(id)a3 home:(id)a4;
- (HMApplicationData)applicationData;
- (HMHome)home;
- (NSDate)lastExecutionDate;
- (NSDictionary)shortcutsDictionaryRepresentation;
- (NSSet)actions;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (id)assistantIdentifier;
- (id)copyAsBuilder;
- (id)encodeAsProtoBuf;
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_addAction:(id)a3 completionHandler:(id)a4;
- (void)_doAddAction:(id)a3 uuid:(id)a4;
- (void)_handleActionSetExecutedNotification:(id)a3;
- (void)_handleActionSetStartExecutionNotification:(id)a3;
- (void)_registerNotificationHandlers;
- (void)_removeAction:(id)a3 completionHandler:(id)a4;
- (void)_removeActionsForAccessory:(id)a3;
- (void)_unconfigure;
- (void)_unconfigureContext;
- (void)_updateAction:(id)a3 changes:(id)a4 completionHandler:(id)a5;
- (void)_updateName:(id)a3 completionHandler:(id)a4;
- (void)addAction:(HMAction *)action completionHandler:(HMErrorBlock)completion;
- (void)didUpdateIsExecuting:(BOOL)a3;
- (void)removeAction:(HMAction *)action completionHandler:(HMErrorBlock)completion;
- (void)resetNameWithCompletionHandler:(id)a3;
- (void)setApplicationData:(id)a3;
- (void)setExecutionInProgress:(BOOL)a3;
- (void)setHome:(id)a3;
- (void)setLastExecutionDate:(id)a3;
- (void)setName:(id)a3;
- (void)updateApplicationData:(id)a3 completionHandler:(id)a4;
- (void)updateName:(NSString *)name completionHandler:(HMErrorBlock)completion;
- (void)updateWithBuilder:(id)a3 completionHandler:(id)a4;
@end

@implementation HMActionSet

- (HMActionSet)initWithShortcutsDictionaryRepresentation:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 hmf_stringForKey:@"HMActionSetSerializedDictionaryProtocol"];
  if (![v9 isEqualToString:@"ProtoBuf"])
  {
    goto LABEL_6;
  }

  v10 = [v8 hmf_stringForKey:@"HMActionSetSerializedDictionaryVersion"];
  v11 = [v10 isEqualToString:@"1.0"];

  if (v11)
  {
    v9 = [v8 hmf_dataForKey:@"HMActionSetSerializedData"];
    if (v9)
    {
      v12 = [[HMPBActionSet alloc] initWithData:v9];
      if (v12)
      {
        v13 = [HMActionSet actionSetFromProtoBuf:v12 home:v7];
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_10;
    }

LABEL_6:
    v13 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (NSDictionary)shortcutsDictionaryRepresentation
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [(HMActionSet *)self encodeAsProtoBuf];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 data];
    v8[0] = @"HMActionSetSerializedDictionaryVersion";
    v8[1] = @"HMActionSetSerializedDictionaryProtocol";
    v9[0] = @"1.0";
    v9[1] = @"ProtoBuf";
    v8[2] = @"HMActionSetSerializedData";
    v9[2] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)shortcutsComponentActionSetWithHome:(id)a3 actions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v9 = [(HMActionSet *)a1 _shortcutsComponentActionSetWithHome:v6 actions:v7];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMActionSet *)v11 _shortcutsComponentActionSetWithHome:v12 actions:v13];
  }
}

+ (HMActionSet)_shortcutsComponentActionSetWithHome:(void *)a3 actions:
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v36 = objc_opt_self();
  v6 = [HMActionSet alloc];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [(HMActionSet *)v6 initWithName:v8 type:@"HMActionSetTypeShortcutsComponent" uuid:v9];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
LABEL_3:
    v15 = v4;
    v16 = 0;
    while (1)
    {
      if (*v39 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v38 + 1) + 8 * v16);
      v37 = 0;
      v18 = [v17 isValidWithError:{&v37, v36}];
      v19 = v37;
      if ((v18 & 1) == 0)
      {
        break;
      }

      v20 = [v17 actionSet];

      if (v20)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v36;
        v33 = v36;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v29;
          v44 = 2112;
          v45 = v17;
          v30 = "%{public}@Action is in another action set: %@";
          v31 = v28;
          v32 = 22;
LABEL_15:
          _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
        }

        goto LABEL_16;
      }

      v21 = [MEMORY[0x1E696AFB0] UUID];
      [v17 setUuid:v21];

      v22 = [(HMActionSet *)v10 currentActions];
      [v22 addObject:v17];

      if (v13 == ++v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
        v4 = v15;
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v25 = objc_autoreleasePoolPush();
    v26 = v36;
    v27 = v36;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v29;
      v44 = 2112;
      v45 = v17;
      v46 = 2112;
      v47 = v19;
      v30 = "%{public}@Invalid action %@: %@";
      v31 = v28;
      v32 = 32;
      goto LABEL_15;
    }

LABEL_16:
    v4 = v15;

    objc_autoreleasePoolPop(v25);
    v24 = 0;
    goto LABEL_17;
  }

LABEL_10:

  v23 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.ShortcutsComponent"];
  [(HMActionSet *)v10 __configureWithContext:v23 home:v4];

  v24 = v10;
LABEL_17:

  v34 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)updateWithBuilder:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMActionSet *)self context];
  v9 = [(HMActionSet *)self home];
  v10 = v9;
  if (v8)
  {
    v31 = 0;
    v11 = [v9 validateBuilder:v6 error:&v31];
    v12 = v31;
    v13 = v12;
    if (v11)
    {
      v14 = MEMORY[0x1E695DF90];
      v30 = v12;
      v15 = [v10 encodeActionSetBuilder:v6 error:&v30];
      v16 = v30;

      v17 = [v14 dictionaryWithDictionary:v15];

      if (v17)
      {
        v18 = [(HMActionSet *)self uuid];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __69__HMActionSet_ActionSetBuilder__updateWithBuilder_completionHandler___block_invoke;
        v25[3] = &unk_1E754D030;
        v26 = v8;
        v29 = v7;
        v27 = v10;
        v28 = self;
        [(_HMContext *)v26 sendMessage:v18 target:v17 payload:v25 responseHandler:?];

        v19 = v26;
      }

      else
      {
        v19 = [v8 delegateCaller];
        [v19 callCompletion:v7 error:v16];
      }
    }

    else
    {
      v17 = [v8 delegateCaller];
      [v17 callCompletion:v7 error:v13];
      v16 = v13;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v23;
      v34 = 2080;
      v35 = "[HMActionSet(ActionSetBuilder) updateWithBuilder:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __69__HMActionSet_ActionSetBuilder__updateWithBuilder_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [*(a1 + 32) delegateCaller];
    [(HMActionSet *)v6 callCompletion:*(a1 + 56) error:v10];
  }

  else
  {
    v6 = [[HMActionSet alloc] initWithDictionary:v5 home:*(a1 + 40)];
    if (v6)
    {
      [*(a1 + 48) mergeFromNewObjectForBuilderUpdates:v6];
      v7 = [*(a1 + 32) delegateCaller];
      [v7 callCompletion:*(a1 + 56) error:0];
    }

    else
    {
      v7 = [*(a1 + 32) delegateCaller];
      v8 = *(a1 + 56);
      v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      [v7 callCompletion:v8 error:v9];
    }
  }
}

- (id)copyAsBuilder
{
  v3 = [HMActionSetBuilder alloc];

  return [(HMActionSetBuilder *)v3 initWithActionSet:self];
}

- (id)encodeAsProtoBuf
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(HMActionSet *)self home];
  if (v3)
  {
    v4 = objc_alloc_init(HMPBActionSet);
    v5 = [v3 uuid];
    v6 = [v5 hm_convertToData];
    [(HMPBActionSet *)v4 setHomeUUID:v6];

    v7 = [(HMActionSet *)self uuid];
    v8 = [v7 hm_convertToData];
    [(HMPBActionSet *)v4 setUuid:v8];

    v9 = [(HMActionSet *)self uuid];
    v10 = [v3 actionSetWithUUID:v9];

    if (!v10)
    {
      v11 = [(HMActionSet *)self name];
      [(HMPBActionSet *)v4 setName:v11];

      v12 = [(HMActionSet *)self actionSetType];
      [(HMPBActionSet *)v4 setActionSetType:v12];

      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(HMPBActionSet *)v4 setActions:v13];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = [(HMActionSet *)self actions];
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v27 + 1) + 8 * i) encodeAsProtoBuf];
            if (v19)
            {
              v20 = [(HMPBActionSet *)v4 actions];
              [v20 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v16);
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v24;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@home is nil while encoding ActionSet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v4 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [HMObjectMergeCollection alloc];
  v6 = [(HMActionSet *)self currentActions];
  v7 = [v6 array];
  v8 = [v4 currentActions];
  v9 = [v8 array];
  v10 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:v7 newObjects:v9];

  v11 = [(HMObjectMergeCollection *)v10 removedObjects];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke;
  v34[3] = &unk_1E754D0A8;
  v34[4] = self;
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v34];

  v12 = [(HMObjectMergeCollection *)v10 addedObjects];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke_282;
  v33[3] = &unk_1E754D0A8;
  v33[4] = self;
  [(HMActionSet *)v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v33];

  [(HMObjectMergeCollection *)v10 mergeCommonObjects];
  LODWORD(v12) = [(HMObjectMergeCollection *)v10 isModified];
  if (v12)
  {
    v13 = [(HMObjectMergeCollection *)v10 finalObjects];
    v14 = [(HMActionSet *)self currentActions];
    [v14 setArray:v13];
  }

  v15 = [(HMActionSet *)self name];
  v16 = [v4 name];
  v17 = [v15 isEqualToString:v16];

  if ((v17 & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v12 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v4 applicationData];
      *buf = 138543618;
      v36 = v20;
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated name via merge: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [v4 name];
    [(HMActionSet *)v12 setName:v22];

    LOBYTE(v12) = 1;
  }

  v23 = [(HMActionSet *)self applicationData];
  v24 = [v4 applicationData];
  v25 = HMFEqualObjects();

  if ((v25 & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [v4 applicationData];
      *buf = 138543618;
      v36 = v29;
      v37 = 2112;
      v38 = v30;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Updated application data via merge: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v12 = [v4 applicationData];
    [(HMActionSet *)v27 setApplicationData:v12];

    LOBYTE(v12) = 1;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v12;
}

void __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed action via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];

  v8 = *MEMORY[0x1E69E9840];
}

void __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke_282(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added action via merge: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 actionSet:*(a1 + 32)];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v5 = [HMObjectMergeCollection alloc];
  v6 = [(HMActionSet *)self currentActions];
  v13 = [v6 array];
  v7 = [v4 currentActions];
  v8 = [v7 array];
  v9 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:v13 newObjects:v8];

  v10 = [(HMObjectMergeCollection *)v9 removedObjects];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __34__HMActionSet_mergeFromNewObject___block_invoke;
  v47[3] = &unk_1E754D0A8;
  v47[4] = self;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v47];

  v11 = [(HMObjectMergeCollection *)v9 addedObjects];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_280;
  v46[3] = &unk_1E754D0A8;
  v46[4] = self;
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v46];

  [(HMObjectMergeCollection *)v9 mergeCommonObjects];
  v12 = [(HMActionSet *)self home];
  LODWORD(v13) = [(HMObjectMergeCollection *)v9 isModified];
  if (v13)
  {
    v14 = [(HMObjectMergeCollection *)v9 finalObjects];
    v15 = [(HMActionSet *)self currentActions];
    [v15 setArray:v14];

    v16 = [v12 delegate];
    if (objc_opt_respondsToSelector())
    {
      v17 = [(HMActionSet *)self context];
      v18 = [v17 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_281;
      block[3] = &unk_1E754E5E8;
      block[4] = self;
      v44 = v16;
      v45 = v12;
      dispatch_async(v18, block);
    }
  }

  v19 = [(HMActionSet *)self name];
  v20 = [v4 name];
  v21 = [v19 isEqualToString:v20];

  if ((v21 & 1) == 0)
  {
    v22 = [v4 name];
    [(HMActionSet *)self setName:v22];

    v13 = [v12 delegate];
    if (objc_opt_respondsToSelector())
    {
      v23 = [(HMActionSet *)self context];
      v24 = [v23 queue];
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __34__HMActionSet_mergeFromNewObject___block_invoke_3;
      v39 = &unk_1E754E5E8;
      v40 = self;
      v41 = v13;
      v42 = v12;
      dispatch_async(v24, &v36);
    }

    LOBYTE(v13) = 1;
  }

  v25 = [(HMActionSet *)self applicationData:v36];
  v26 = [v4 applicationData];
  v27 = HMFEqualObjects();

  if ((v27 & 1) == 0)
  {
    v13 = [v4 applicationData];
    [(HMActionSet *)self setApplicationData:v13];

    [v12 notifyDelegateOfAppDataUpdateForActionSet:self];
    LOBYTE(v13) = 1;
  }

  v28 = [(HMActionSet *)self executionInProgress];
  if (v28 != [v4 executionInProgress])
  {
    -[HMActionSet setExecutionInProgress:](self, "setExecutionInProgress:", [v4 executionInProgress]);
    LOBYTE(v13) = 1;
  }

  v29 = [(HMActionSet *)self lastExecutionDate];
  v30 = [v4 lastExecutionDate];
  v31 = HMFEqualObjects();

  if ((v31 & 1) == 0)
  {
    v32 = [v4 lastExecutionDate];
    [(HMActionSet *)self setLastExecutionDate:v32];

    v33 = [v4 lastExecutionDate];

    if (v33)
    {
      v34 = [v4 lastExecutionDate];
      [v12 notifyDelegatesOfExecutionForActionSet:self atDate:v34];
    }

    LOBYTE(v13) = 1;
  }

  return v13;
}

void __34__HMActionSet_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed action via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];

  v8 = *MEMORY[0x1E69E9840];
}

void __34__HMActionSet_mergeFromNewObject___block_invoke_280(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added action via merge: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 actionSet:*(a1 + 32)];

  v9 = *MEMORY[0x1E69E9840];
}

void __34__HMActionSet_mergeFromNewObject___block_invoke_281(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_2;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMActionSet_mergeFromNewObject___block_invoke_3(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_4;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

- (HMActionSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionSetUUID"];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionSetName"];
  v8 = [v4 hm_decodeAndCacheStringForKey:@"actionSetType"];
  v9 = [(HMActionSet *)self initWithName:v7 type:v8 uuid:v6];
  if (v9)
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v9->_home, v10);

    v9->_executionInProgress = [v4 decodeBoolForKey:@"HM.actionSetExecutionInProgress"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.actionSetLastExecutionDate"];
    lastExecutionDate = v9->_lastExecutionDate;
    v9->_lastExecutionDate = v11;

    currentActions = v9->_currentActions;
    v14 = +[HMActionSet allowedActionClasses];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"actionSetActions"];
    [(HMMutableArray *)currentActions setArray:v15];

    v16 = [[HMApplicationData alloc] initWithDictionaryFromCoder:v4 key:@"HM.appData"];
    applicationData = v9->_applicationData;
    v9->_applicationData = v16;
  }

  return v9;
}

- (void)_registerNotificationHandlers
{
  v3 = [(HMActionSet *)self context];
  v4 = [v3 messageDispatcher];
  [v4 registerForMessage:@"kActionSetWillStartExecutionNotificationKey" receiver:self selector:sel__handleActionSetStartExecutionNotification_];

  v6 = [(HMActionSet *)self context];
  v5 = [v6 messageDispatcher];
  [v5 registerForMessage:@"kActionSetExecutedNotificationKey" receiver:self selector:sel__handleActionSetExecutedNotification_];
}

- (void)didUpdateIsExecuting:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(HMActionSet *)self home];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 delegate];
    if ([v7 conformsToProtocol:&unk_1F0F63B38])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (objc_opt_respondsToSelector())
    {
      v10 = [(HMActionSet *)self context];
      v11 = [v10 queue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __36__HMActionSet_didUpdateIsExecuting___block_invoke;
      v17[3] = &unk_1E754D080;
      v17[4] = self;
      v18 = v9;
      v19 = v6;
      v20 = a3;
      dispatch_async(v11, v17);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Can't fire delegate because home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __36__HMActionSet_didUpdateIsExecuting___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__HMActionSet_didUpdateIsExecuting___block_invoke_2;
  v6[3] = &unk_1E754D080;
  v7 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = *(a1 + 56);
  [v3 invokeBlock:v6];
}

- (void)_handleActionSetExecutedNotification:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 dateForKey:@"kActionSetLastexecutionDate"];
  if (v5)
  {
    [(HMActionSet *)self setLastExecutionDate:v5];
    [(HMActionSet *)self setExecutionInProgress:0];
    [(HMActionSet *)self didUpdateIsExecuting:0];
    v6 = [(HMActionSet *)self home];
    [v6 notifyDelegatesOfExecutionForActionSet:self atDate:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received action set executed message without a last execution date: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleActionSetStartExecutionNotification:(id)a3
{
  [(HMActionSet *)self setExecutionInProgress:1];

  [(HMActionSet *)self didUpdateIsExecuting:1];
}

- (void)updateApplicationData:(id)a3 completionHandler:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v13);
  }

  v7 = v6;
  v8 = [(HMActionSet *)self home];
  v9 = v8;
  if (v8)
  {
    [v8 updateApplicationData:v14 forActionSet:self completionHandler:v7];
  }

  else
  {
    v10 = [(HMActionSet *)self context];
    v11 = [v10 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [v11 callCompletion:v7 error:v12];
  }
}

- (BOOL)_handleActionSetRenameFromPayload:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_stringForKey:@"kActionSetName"];
  if (v8)
  {
    [(HMActionSet *)self setName:v8];
    if (v7)
    {
      v9 = [(HMActionSet *)self context];
      v10 = [v9 delegateCaller];
      [v10 callCompletion:v7 error:0];

      v11 = 0;
    }

    else
    {
      v16 = [(HMActionSet *)self home];
      v17 = [v16 delegate];
      v18 = objc_opt_respondsToSelector();
      if (v18)
      {
        v19 = [(HMActionSet *)self context];
        v20 = [v19 delegateCaller];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __60__HMActionSet__handleActionSetRenameFromPayload_completion___block_invoke;
        v23[3] = &unk_1E754E5E8;
        v24 = v17;
        v25 = v16;
        v26 = self;
        [v20 invokeBlock:v23];
      }

      v11 = v18 ^ 1;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = 0;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Received a new action set without a new name %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

- (BOOL)_handleActionUpdatedFromResponse:(id)a3 completion:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_UUIDForKey:@"kActionUUID"];
  v9 = [v6 hmf_dictionaryForKey:@"kActionInfo"];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [(HMActionSet *)self currentActions];
    v12 = [v11 firstItemWithUUID:v8];

    if (v12)
    {
      if ([v12 _handleUpdates:v10])
      {
        if (v7)
        {
          v13 = [(HMActionSet *)self context];
          v14 = [v13 delegateCaller];
          [v14 callCompletion:v7 error:0];

          v15 = 0;
        }

        else
        {
          v29 = [(HMActionSet *)self home];
          v30 = [v29 delegate];
          v31 = objc_opt_respondsToSelector();
          if (v31)
          {
            v33 = [(HMActionSet *)self context];
            v32 = [v33 delegateCaller];
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __59__HMActionSet__handleActionUpdatedFromResponse_completion___block_invoke;
            v34[3] = &unk_1E754E5E8;
            v35 = v30;
            v36 = v29;
            v37 = self;
            [v32 invokeBlock:v34];
          }

          v15 = v31 ^ 1;
        }

        goto LABEL_16;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v39 = v23;
        v40 = 2112;
        v41 = v12;
        v42 = 2112;
        v43 = v10;
        v24 = "%{public}@Could not update action (%@) with info (%@)";
        v25 = v22;
        v26 = 32;
        goto LABEL_14;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v23;
        v24 = "%{public}@Unable to update action.";
        v25 = v22;
        v26 = 12;
LABEL_14:
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
      }
    }

    objc_autoreleasePoolPop(v20);
    v15 = 1;
LABEL_16:

    goto LABEL_17;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543874;
    v39 = v19;
    v40 = 2112;
    v41 = v8;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to update action. Either UUID (%@) or info (%@) is invalid", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v15 = 1;
LABEL_17:

  v27 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (BOOL)_handleActionRemovedFromPayload:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_UUIDForKey:@"kActionUUID"];
  if (v8)
  {
    v9 = [(HMActionSet *)self _doRemoveActionWithUUID:v8 completionHandler:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid action UUID : %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_doRemoveActionWithUUID:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMActionSet *)self currentActions];
  v9 = [v8 firstItemWithUUID:v6];

  if (v9)
  {
    v10 = [(HMActionSet *)self currentActions];
    [v10 removeObject:v9];

    [v9 _unconfigure];
    if (v7)
    {
      v11 = [(HMActionSet *)self context];
      v12 = [v11 delegateCaller];
      [v12 callCompletion:v7 error:0];

      v13 = 0;
    }

    else
    {
      v18 = [(HMActionSet *)self home];
      v19 = [v18 delegate];
      v20 = objc_opt_respondsToSelector();
      if (v20)
      {
        v21 = [(HMActionSet *)self context];
        v22 = [v21 delegateCaller];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __57__HMActionSet__doRemoveActionWithUUID_completionHandler___block_invoke;
        v25[3] = &unk_1E754E5E8;
        v26 = v19;
        v27 = v18;
        v28 = self;
        [v22 invokeBlock:v25];
      }

      v13 = v20 ^ 1;
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
      *buf = 138543362;
      v30 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@The action does not belong to actionset", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (void)_removeActionsForAccessory:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v22 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(HMActionSet *)self actions];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
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

        if (v10)
        {
          v11 = [v10 characteristic];
          v12 = [v11 service];

          if (v12)
          {
            v13 = [v12 targetAccessoryUUID];
            v14 = [v23 uuid];
            v15 = [v13 hmf_isEqualToUUID:v14];

            if (v15)
            {
              [v22 addObject:v8];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  v16 = [(HMActionSet *)self currentActions];
  [v16 removeObjectsInArray:v22];

  v17 = [(HMActionSet *)self home];
  v18 = [v17 delegate];

  if ([v22 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [(HMActionSet *)self context];
    v20 = [v19 delegateCaller];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __42__HMActionSet__removeActionsForAccessory___block_invoke;
    v25[3] = &unk_1E754E5C0;
    v26 = v18;
    v27 = self;
    [v20 invokeBlock:v25];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __42__HMActionSet__removeActionsForAccessory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) home];
  [v2 home:v3 didUpdateActionsForActionSet:*(a1 + 40)];
}

- (void)_doAddAction:(id)a3 uuid:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMActionSet *)self currentActions];
  v9 = [v8 firstItemWithUUID:v7];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v6 uniqueIdentifier];
      v18 = 138544130;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Action %@ being added has already appeared, making %@ a proxy for existing configured instance %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    HMProxify(v6);
  }

  else
  {
    [v6 setUuid:v7];
    v15 = [(HMActionSet *)self context];
    [v6 __configureWithContext:v15 actionSet:self];

    v16 = [(HMActionSet *)self currentActions];
    [v16 addObject:v6];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_updateAction:(id)a3 changes:(id)a4 completionHandler:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMActionSet *)self context];
  if (!v10)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet _updateAction:changes:completionHandler:]", @"completion"];
    v36 = objc_autoreleasePoolPush();
    v37 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v39;
      v48 = 2112;
      v49 = v35;
      _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v35 userInfo:0];
    objc_exception_throw(v40);
  }

  v12 = v11;
  if (v11)
  {
    if (v8 && v9)
    {
      v13 = [(HMActionSet *)self home];
      if (v13)
      {
        v14 = [(HMActionSet *)self currentActions];
        v15 = [v14 containsObject:v8];

        if (v15)
        {
          v16 = objc_alloc(MEMORY[0x1E69A2A00]);
          v17 = [(HMActionSet *)self uuid];
          v41 = [v16 initWithTarget:v17];

          v18 = MEMORY[0x1E69A2A10];
          v45[0] = @"kActionUUID";
          v19 = [v8 uuid];
          v20 = [v19 UUIDString];
          v45[1] = @"kActionInfo";
          v46[0] = v20;
          v46[1] = v9;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
          v22 = [v18 messageWithName:@"kReplaceActionValueKey" destination:v41 payload:v21];

          objc_initWeak(location, self);
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __55__HMActionSet__updateAction_changes_completionHandler___block_invoke;
          v42[3] = &unk_1E754CFF8;
          objc_copyWeak(&v44, location);
          v43 = v10;
          [v22 setResponseHandler:v42];
          v23 = [v12 messageDispatcher];
          [v23 sendMessage:v22 completionHandler:0];

          objc_destroyWeak(&v44);
          objc_destroyWeak(location);

LABEL_15:
          goto LABEL_16;
        }

        v31 = [v12 delegateCaller];
        v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      }

      else
      {
        v31 = [v12 delegateCaller];
        v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      }

      v33 = v32;
      [v31 callCompletion:v10 error:v32];

      goto LABEL_15;
    }

    v29 = [v11 delegateCaller];
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    [v29 callCompletion:v10 error:v30];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v27;
      v48 = 2080;
      v49 = "[HMActionSet _updateAction:changes:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v10 + 2))(v10, v28);
  }

LABEL_16:

  v34 = *MEMORY[0x1E69E9840];
}

void __55__HMActionSet__updateAction_changes_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
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
    v16 = 138544130;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Replace action value response : %@, completionHandler: %@ error %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v5 || !v6 || [v9 _handleActionUpdatedFromResponse:v6 completion:*(a1 + 32)])
  {
    v13 = [v9 context];
    v14 = [v13 delegateCaller];
    [v14 callCompletion:*(a1 + 32) error:v5];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_removeAction:(id)a3 completionHandler:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMActionSet *)self context];
  if (!v7)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet _removeAction:completionHandler:]", @"completion"];
    v36 = objc_autoreleasePoolPush();
    v37 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v39;
      v50 = 2112;
      v51 = v35;
      _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v35 userInfo:0];
    objc_exception_throw(v40);
  }

  v9 = v8;
  if (!v8)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v18;
      v50 = 2080;
      v51 = "[HMActionSet _removeAction:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v19);

    goto LABEL_14;
  }

  if (!v6)
  {
    v14 = [v8 delegateCaller];
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
LABEL_12:
    v21 = v20;
    [v14 callCompletion:v7 error:v20];

    goto LABEL_13;
  }

  v10 = [(HMActionSet *)self currentActions];
  v11 = [v10 containsObject:v6];

  if ((v11 & 1) == 0)
  {
    v14 = [v9 delegateCaller];
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    goto LABEL_12;
  }

  v12 = [(HMActionSet *)self actionSetType];
  v13 = [v12 isEqualToString:@"HMActionSetTypeShortcutsComponent"];

  if (v13)
  {
    v14 = [v6 uuid];
    [(HMActionSet *)self _doRemoveActionWithUUID:v14 completionHandler:v7];
LABEL_13:

    goto LABEL_14;
  }

  v41 = [(HMActionSet *)self home];
  if (v41)
  {
    v23 = MEMORY[0x1E69A2A10];
    v24 = objc_alloc(MEMORY[0x1E69A2A00]);
    v25 = [(HMActionSet *)self uuid];
    v26 = [v24 initWithTarget:v25];
    v46 = @"kActionUUID";
    v27 = [v6 uuid];
    v28 = [v27 UUIDString];
    v47 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v30 = [v23 messageWithName:@"kRemoveActionRequestKey" destination:v26 payload:v29];

    objc_initWeak(buf, self);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __47__HMActionSet__removeAction_completionHandler___block_invoke;
    v42[3] = &unk_1E754D058;
    objc_copyWeak(&v45, buf);
    v44 = v7;
    v31 = v9;
    v43 = v31;
    [v30 setResponseHandler:v42];
    v32 = [v31 messageDispatcher];
    [v32 sendMessage:v30 completionHandler:0];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
  }

  else
  {
    v33 = [v9 delegateCaller];
    v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [v33 callCompletion:v7 error:v34];
  }

LABEL_14:
  v22 = *MEMORY[0x1E69E9840];
}

void __47__HMActionSet__removeAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
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
    v15 = 138544130;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Remove action response : %@, completionHandler: %@ error %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v5 || !v6 || [v9 _handleActionRemovedFromPayload:v6 completion:*(a1 + 40)])
  {
    v13 = [*(a1 + 32) delegateCaller];
    [v13 callCompletion:*(a1 + 40) error:v5];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeAction:(HMAction *)action completionHandler:(HMErrorBlock)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = action;
  v7 = completion;
  v8 = [(HMActionSet *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet removeAction:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__HMActionSet_removeAction_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMActionSet removeAction:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_addAction:(id)a3 completionHandler:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMActionSet *)self context];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v41 = 0;
      v10 = [v6 isValidWithError:&v41];
      v11 = v41;
      if (v10)
      {
        v12 = [(HMActionSet *)self actions];
        v13 = [v12 containsObject:v6];

        if (v13)
        {
          v14 = [v9 delegateCaller];
          v15 = MEMORY[0x1E696ABC0];
          v16 = 1;
LABEL_17:
          v25 = [v15 hmErrorWithCode:v16];
          [v14 callCompletion:v7 error:v25];

          goto LABEL_18;
        }

        v24 = [v6 actionSet];

        if (v24)
        {
          v14 = [v9 delegateCaller];
          v15 = MEMORY[0x1E696ABC0];
          v16 = 30;
          goto LABEL_17;
        }

        v27 = [(HMActionSet *)self actionSetType];
        v28 = [v27 isEqualToString:@"HMActionSetTypeShortcutsComponent"];

        if (!v28)
        {
          v14 = [(HMActionSet *)self home];
          if (v14)
          {
            v30 = [v6 _serializeForAdd];
            if (v30)
            {
              v31 = v30;
              v32 = [(HMActionSet *)self uuid];
              v42 = @"kActionInfo";
              v43 = v31;
              v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
              v37[0] = MEMORY[0x1E69E9820];
              v37[1] = 3221225472;
              v37[2] = __44__HMActionSet__addAction_completionHandler___block_invoke;
              v37[3] = &unk_1E754D030;
              v37[4] = self;
              v38 = v9;
              v40 = v7;
              v39 = v6;
              [(_HMContext *)v38 sendMessage:v32 target:v33 payload:v37 responseHandler:?];
            }

            else
            {
              v35 = [v9 delegateCaller];
              v36 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
              [v35 callCompletion:v7 error:v36];

              v31 = 0;
            }
          }

          else
          {
            v31 = [v9 delegateCaller];
            v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
            [v31 callCompletion:v7 error:v34];
          }

          goto LABEL_18;
        }

        v29 = [MEMORY[0x1E696AFB0] UUID];
        [(HMActionSet *)self _doAddAction:v6 uuid:v29];

        v21 = [v9 delegateCaller];
        v14 = v21;
        v22 = v7;
        v23 = 0;
      }

      else
      {
        v21 = [v9 delegateCaller];
        v14 = v21;
        if (!v11)
        {
          v15 = MEMORY[0x1E696ABC0];
          v16 = 3;
          goto LABEL_17;
        }

        v22 = v7;
        v23 = v11;
      }
    }

    else
    {
      v11 = [v8 delegateCaller];
      v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      v21 = v11;
      v22 = v7;
      v23 = v14;
    }

    [v21 callCompletion:v22 error:v23];
LABEL_18:

    goto LABEL_19;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v20;
    v46 = 2080;
    v47 = "[HMActionSet _addAction:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (v7)
  {
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v11);
LABEL_19:
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __44__HMActionSet__addAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Add action error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    [v12 callCompletion:*(a1 + 56) error:v5];
  }

  else
  {
    if (v10)
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Add action response: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [v6 hmf_UUIDForKey:@"kActionUUID"];
    [*(a1 + 32) _doAddAction:*(a1 + 48) uuid:v12];
    v14 = [*(a1 + 40) delegateCaller];
    [v14 callCompletion:*(a1 + 56) error:0];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addAction:(HMAction *)action completionHandler:(HMErrorBlock)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = action;
  v7 = completion;
  v8 = [(HMActionSet *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet addAction:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__HMActionSet_addAction_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMActionSet addAction:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_updateName:(id)a3 completionHandler:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMActionSet *)self context];
  if (!v7)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet _updateName:completionHandler:]", @"completion"];
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v40;
      v49 = 2112;
      v50 = v36;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v36 userInfo:0];
    objc_exception_throw(v41);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v6 length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v10 <= HMMaxLengthForNaming__hmf_once_v9)
    {
      v15 = [(HMActionSet *)self home];
      if (v15)
      {
        v21 = [(HMActionSet *)self name];
        v22 = [v21 isEqualToString:v6];

        if (v22)
        {
          v23 = [(HMActionSet *)self context];
          v24 = [v23 delegateCaller];
          [v24 callCompletion:v7 error:0];
        }

        else
        {
          if (v6)
          {
            v45 = @"kActionSetName";
            v46 = v6;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          }

          else
          {
            v28 = MEMORY[0x1E695E0F8];
          }

          v29 = MEMORY[0x1E69A2A10];
          v30 = objc_alloc(MEMORY[0x1E69A2A00]);
          v31 = [(HMActionSet *)self uuid];
          v32 = [v30 initWithTarget:v31];
          v33 = [v29 messageWithName:@"kRenameActionSetRequestKey" destination:v32 payload:v28];

          objc_initWeak(buf, self);
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __45__HMActionSet__updateName_completionHandler___block_invoke;
          v42[3] = &unk_1E754CFF8;
          objc_copyWeak(&v44, buf);
          v43 = v7;
          [v33 setResponseHandler:v42];
          v34 = [v9 messageDispatcher];
          [v34 sendMessage:v33 completionHandler:0];

          objc_destroyWeak(&v44);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        v25 = [(HMActionSet *)self context];
        v26 = [v25 delegateCaller];
        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
        [v26 callCompletion:v7 error:v27];

        v15 = 0;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
      [v15 callCompletion:v7 error:v16];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v20;
      v49 = 2080;
      v50 = "[HMActionSet _updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __45__HMActionSet__updateName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
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
    v16 = 138544130;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Rename actionSet response : %@, completionHandler: %@ error %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  if (v5 || !v6 || [v9 _handleActionSetRenameFromPayload:v6 completion:*(a1 + 32)])
  {
    v13 = [v9 context];
    v14 = [v13 delegateCaller];
    [v14 callCompletion:*(a1 + 32) error:v5];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateName:(NSString *)name completionHandler:(HMErrorBlock)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = name;
  v7 = completion;
  v8 = [(HMActionSet *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet updateName:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__HMActionSet_updateName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v25 = v7;
    v24 = v6;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMActionSet updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __44__HMActionSet_updateName_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionSetType];
  if ([v2 isEqualToString:@"HMActionSetTypeTriggerOwned"])
  {

LABEL_4:
    v11 = [*(a1 + 32) context];
    v5 = [v11 delegateCaller];
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
LABEL_5:
    v8 = v7;
    [v5 callCompletion:v6 error:v7];

    return;
  }

  v3 = [*(a1 + 32) actionSetType];
  v4 = [v3 isEqualToString:@"HMActionSetTypeShortcutsComponent"];

  if (v4)
  {
    goto LABEL_4;
  }

  v9 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    v11 = [v9 context];
    v5 = [v11 delegateCaller];
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    goto LABEL_5;
  }

  v10 = *(a1 + 48);

  [v9 _updateName:? completionHandler:?];
}

- (void)resetNameWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMActionSet *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet resetNameWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
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
    block[2] = __46__HMActionSet_resetNameWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = v4;
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
      v23 = v11;
      v24 = 2080;
      v25 = "[HMActionSet resetNameWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __46__HMActionSet_resetNameWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionSetType];
  v3 = [HMActionSet isBuiltinActionSetType:v2];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 40);

    [v4 _updateName:0 completionHandler:v5];
  }

  else
  {
    v9 = [v4 context];
    v6 = [v9 delegateCaller];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    [v6 callCompletion:v7 error:v8];
  }
}

- (id)assistantIdentifier
{
  v2 = [(HMActionSet *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"AS", v2, 0);

  return v3;
}

- (void)setApplicationData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMApplicationData)applicationData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_applicationData;
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

- (void)setExecutionInProgress:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_executionInProgress = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requiresDeviceUnlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(HMActionSet *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__HMActionSet_requiresDeviceUnlock__block_invoke;
  v4[3] = &unk_1E754CFC8;
  v4[4] = &v5;
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __35__HMActionSet_requiresDeviceUnlock__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 requiresDeviceUnlock];
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock_with_options();
  executionInProgress = self->_executionInProgress;
  os_unfair_lock_unlock(&self->_lock);
  return executionInProgress;
}

- (NSSet)actions
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(HMActionSet *)self currentActions];
  v5 = [v4 array];
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (void)setLastExecutionDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  lastExecutionDate = self->_lastExecutionDate;
  self->_lastExecutionDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastExecutionDate
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDate *)self->_lastExecutionDate copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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
  v3 = [(NSString *)self->_name copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)__configureWithContext:(id)a3 home:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(HMActionSet *)self setContext:v6];
  [(HMActionSet *)self setHome:v7];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(HMActionSet *)self actions];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * v12++) __configureWithContext:v6 actionSet:self];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = [(HMActionSet *)self actionSetType];
  v14 = [v13 isEqualToString:@"HMActionSetTypeShortcutsComponent"];

  if ((v14 & 1) == 0)
  {
    [(HMActionSet *)self _registerNotificationHandlers];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigure
{
  v27 = *MEMORY[0x1E69E9840];
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
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring actionSet and actions", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [(HMActionSet *)v5 actions];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v20 + 1) + 8 * v13++) _unconfigure];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v14 = [(HMActionSet *)v5 currentActions];
    [v14 setArray:0];

    [(HMActionSet *)v5 setHome:0];
    v15 = [(HMActionSet *)v5 context];
    v16 = [v15 messageDispatcher];
    [v16 deregisterReceiver:v5];

    [(HMActionSet *)v5 setContext:0];
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 removeObserver:v5];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigureContext
{
  v3 = [(_HMContext *)self->_context messageDispatcher];
  [v3 deregisterReceiver:self];

  context = self->_context;
  self->_context = 0;
}

- (HMActionSet)initWithDictionary:(id)a3 home:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v52.receiver = self;
  v52.super_class = HMActionSet;
  v8 = [(HMActionSet *)&v52 init];
  if (!v8)
  {
LABEL_15:
    v35 = v8;
    goto LABEL_24;
  }

  v9 = [v6 hmf_UUIDForKey:@"kActionSetUUID"];
  if (!v9)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = v8;
    v38 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v39 = HMFGetLogIdentifier();
    v40 = objc_opt_class();
    *buf = 138543618;
    v55 = v39;
    v56 = 2112;
    v57 = v40;
    v41 = "%{public}@Unable to decode %@, missing uuid";
    goto LABEL_21;
  }

  v10 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v9];
  uuid = v8->_uuid;
  v8->_uuid = v10;

  v12 = [v6 hmf_stringForKey:@"kActionSetName"];
  name = v8->_name;
  v8->_name = v12;

  if (v8->_name)
  {
    v47 = v9;
    v14 = [v6 hmf_stringForKey:@"kActionSetType"];
    v15 = v14;
    v16 = @"HMActionSetTypeUserDefined";
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v46 = v17;
    v18 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v17];
    actionSetType = v8->_actionSetType;
    v8->_actionSetType = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v22 = [v6 hmf_arrayForKey:@"kActionSetActions" ofClasses:v21];

    v23 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v49;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v49 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [[HMAction alloc] initWithDictionary:*(*(&v48 + 1) + 8 * i) home:v7];
          if (!v27)
          {

            goto LABEL_23;
          }

          v28 = v27;
          [v20 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v29 = [HMMutableArray arrayWithArray:v20];
    currentActions = v8->_currentActions;
    v8->_currentActions = v29;

    v31 = [HMApplicationData alloc];
    v32 = [v6 hmf_dictionaryForKey:@"kAppDataInformationKey"];
    v33 = [(HMApplicationData *)v31 initWithDictionary:v32];
    applicationData = v8->_applicationData;
    v8->_applicationData = v33;

    goto LABEL_15;
  }

  v36 = objc_autoreleasePoolPush();
  v42 = v8;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    v43 = objc_opt_class();
    *buf = 138543618;
    v55 = v39;
    v56 = 2112;
    v57 = v43;
    v41 = "%{public}@Unable to decode %@, missing name";
LABEL_21:
    _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);
  }

LABEL_22:

  objc_autoreleasePoolPop(v36);
LABEL_23:
  v35 = 0;
LABEL_24:

  v44 = *MEMORY[0x1E69E9840];
  return v35;
}

- (HMActionSet)initWithName:(id)a3 type:(id)a4 uuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = HMActionSet;
  v11 = [(HMActionSet *)&v24 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v8];
    name = v11->_name;
    v11->_name = v12;

    v14 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v10];
    uuid = v11->_uuid;
    v11->_uuid = v14;

    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = @"HMActionSetTypeUserDefined";
    }

    v17 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v16];
    actionSetType = v11->_actionSetType;
    v11->_actionSetType = v17;

    v19 = +[HMMutableArray array];
    currentActions = v11->_currentActions;
    v11->_currentActions = v19;

    v21 = objc_alloc_init(HMApplicationData);
    applicationData = v11->_applicationData;
    v11->_applicationData = v21;
  }

  return v11;
}

+ (BOOL)isBuiltinActionSetType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HMActionSetTypeWakeUp"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMActionSetTypeHomeDeparture") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMActionSetTypeHomeArrival"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"HMActionSetTypeSleep"];
  }

  return v4;
}

+ (id)actionSetFromProtoBuf:(id)a3 home:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AFB0];
  v9 = [v6 uuid];
  v10 = [v8 hmf_UUIDWithBytesAsData:v9];

  if (!v10)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = a1;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v29;
      v30 = "%{public}@Couldn't decode ActionSet UUID";
LABEL_15:
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    }

LABEL_16:

    objc_autoreleasePoolPop(v26);
    v25 = 0;
    goto LABEL_48;
  }

  if (([v6 hasHomeUUID] & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = a1;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v29;
      v30 = "%{public}@homeUUID not set while decoding ActionSet";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v11 = MEMORY[0x1E696AFB0];
  v12 = [v6 homeUUID];
  v13 = [v11 hmf_UUIDWithBytesAsData:v12];

  if (v13)
  {
    v14 = [v7 uuid];
    v15 = [v14 isEqual:v13];

    if (v15)
    {
      v16 = [v7 actionSetWithUUID:v10];
      if (v16)
      {
        v17 = v16;
        v18 = [v6 actions];
        v19 = [v18 count];

        if (v19)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = a1;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v24 = [v6 formattedText];
            *buf = 138543874;
            v71 = v23;
            v72 = 2112;
            v73 = v10;
            v74 = 2112;
            v75 = v24;
            _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@actionSetFromProtoBuf found actionSet (%@) in home and actions in proto - ignoring proto: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
        }

        v25 = v17;
LABEL_46:

        goto LABEL_47;
      }

      v62 = v13;
      v39 = [HMActionSet alloc];
      v40 = [v6 name];
      v41 = [v6 actionSetType];
      v63 = v10;
      v42 = [(HMActionSet *)v39 initWithName:v40 type:v41 uuid:v10];

      v61 = v42;
      [(HMActionSet *)v42 setHome:v7];
      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v64 = v6;
      v44 = [v6 actions];
      v45 = [v44 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (!v45)
      {
        goto LABEL_45;
      }

      v46 = v45;
      v47 = *v66;
LABEL_26:
      v48 = 0;
      while (1)
      {
        if (*v66 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v65 + 1) + 8 * v48);
        v50 = [v49 type];
        if (v50 > 2)
        {
          if (v50 == 3)
          {
            v51 = HMLightProfileNaturalLightingAction;
            v52 = [v49 naturalLightingAction];
          }

          else
          {
            if (v50 != 4)
            {
              goto LABEL_40;
            }

            v51 = HMMatterCommandAction;
            v52 = [v49 matterCommandAction];
          }
        }

        else if (v50 == 1)
        {
          v51 = HMCharacteristicWriteAction;
          v52 = [v49 characteristicWriteAction];
        }

        else
        {
          if (v50 != 2)
          {
            goto LABEL_40;
          }

          v51 = HMMediaPlaybackAction;
          v52 = [v49 mediaPlaybackAction];
        }

        v53 = v52;
        v54 = [(__objc2_class *)v51 actionWithProtoBuf:v52 home:v7];

        if (!v54)
        {
LABEL_40:
          v55 = objc_autoreleasePoolPush();
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543618;
            v71 = v57;
            v72 = 2112;
            v73 = v49;
            _os_log_impl(&dword_19BB39000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to create action with proto buf: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v55);
          goto LABEL_43;
        }

        [v43 addObject:v54];

LABEL_43:
        if (v46 == ++v48)
        {
          v46 = [v44 countByEnumeratingWithState:&v65 objects:v69 count:16];
          if (!v46)
          {
LABEL_45:

            v58 = [(HMActionSet *)v61 currentActions];
            [v58 addObjectsFromArray:v43];

            v25 = v61;
            v10 = v63;
            v6 = v64;
            v13 = v62;
            goto LABEL_46;
          }

          goto LABEL_26;
        }
      }
    }

    v31 = objc_autoreleasePoolPush();
    v35 = a1;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [v7 uuid];
      *buf = 138543874;
      v71 = v37;
      v72 = 2112;
      v73 = v13;
      v74 = 2112;
      v75 = v38;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Trying to deserialize HMActionSet with a different home %@ %@", buf, 0x20u);
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = a1;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v34;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode Home UUID", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v31);
  v25 = 0;
LABEL_47:

LABEL_48:
  v59 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)allowedActionClasses
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:7];
  v4 = [v2 setWithArray:{v3, v7, v8, v9, v10, v11, v12}];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end
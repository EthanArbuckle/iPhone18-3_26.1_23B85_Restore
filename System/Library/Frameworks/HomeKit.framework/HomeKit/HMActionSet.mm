@interface HMActionSet
+ (BOOL)isBuiltinActionSetType:(id)type;
+ (HMActionSet)_shortcutsComponentActionSetWithHome:(void *)home actions:;
+ (id)actionSetFromProtoBuf:(id)buf home:(id)home;
+ (id)allowedActionClasses;
+ (id)shortcutsComponentActionSetWithHome:(id)home actions:(id)actions;
- (BOOL)_doRemoveActionWithUUID:(id)d completionHandler:(id)handler;
- (BOOL)_handleActionRemovedFromPayload:(id)payload completion:(id)completion;
- (BOOL)_handleActionSetRenameFromPayload:(id)payload completion:(id)completion;
- (BOOL)_handleActionUpdatedFromResponse:(id)response completion:(id)completion;
- (BOOL)isExecuting;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)updates;
- (BOOL)requiresDeviceUnlock;
- (HMActionSet)initWithCoder:(id)coder;
- (HMActionSet)initWithDictionary:(id)dictionary home:(id)home;
- (HMActionSet)initWithName:(id)name type:(id)type uuid:(id)uuid;
- (HMActionSet)initWithShortcutsDictionaryRepresentation:(id)representation home:(id)home;
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
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_addAction:(id)action completionHandler:(id)handler;
- (void)_doAddAction:(id)action uuid:(id)uuid;
- (void)_handleActionSetExecutedNotification:(id)notification;
- (void)_handleActionSetStartExecutionNotification:(id)notification;
- (void)_registerNotificationHandlers;
- (void)_removeAction:(id)action completionHandler:(id)handler;
- (void)_removeActionsForAccessory:(id)accessory;
- (void)_unconfigure;
- (void)_unconfigureContext;
- (void)_updateAction:(id)action changes:(id)changes completionHandler:(id)handler;
- (void)_updateName:(id)name completionHandler:(id)handler;
- (void)addAction:(HMAction *)action completionHandler:(HMErrorBlock)completion;
- (void)didUpdateIsExecuting:(BOOL)executing;
- (void)removeAction:(HMAction *)action completionHandler:(HMErrorBlock)completion;
- (void)resetNameWithCompletionHandler:(id)handler;
- (void)setApplicationData:(id)data;
- (void)setExecutionInProgress:(BOOL)progress;
- (void)setHome:(id)home;
- (void)setLastExecutionDate:(id)date;
- (void)setName:(id)name;
- (void)updateApplicationData:(id)data completionHandler:(id)handler;
- (void)updateName:(NSString *)name completionHandler:(HMErrorBlock)completion;
- (void)updateWithBuilder:(id)builder completionHandler:(id)handler;
@end

@implementation HMActionSet

- (HMActionSet)initWithShortcutsDictionaryRepresentation:(id)representation home:(id)home
{
  representationCopy = representation;
  homeCopy = home;
  v8 = representationCopy;
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
        v13 = [HMActionSet actionSetFromProtoBuf:v12 home:homeCopy];
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
  encodeAsProtoBuf = [(HMActionSet *)self encodeAsProtoBuf];
  v3 = encodeAsProtoBuf;
  if (encodeAsProtoBuf)
  {
    data = [encodeAsProtoBuf data];
    v8[0] = @"HMActionSetSerializedDictionaryVersion";
    v8[1] = @"HMActionSetSerializedDictionaryProtocol";
    v9[0] = @"1.0";
    v9[1] = @"ProtoBuf";
    v8[2] = @"HMActionSetSerializedData";
    v9[2] = data;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)shortcutsComponentActionSetWithHome:(id)home actions:(id)actions
{
  homeCopy = home;
  actionsCopy = actions;
  if (homeCopy)
  {
    v8 = actionsCopy;
    v9 = [(HMActionSet *)self _shortcutsComponentActionSetWithHome:homeCopy actions:actionsCopy];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMActionSet *)v11 _shortcutsComponentActionSetWithHome:v12 actions:v13];
  }
}

+ (HMActionSet)_shortcutsComponentActionSetWithHome:(void *)home actions:
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a2;
  homeCopy = home;
  v36 = objc_opt_self();
  v6 = [HMActionSet alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [(HMActionSet *)v6 initWithName:uUIDString type:@"HMActionSetTypeShortcutsComponent" uuid:uUID2];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = homeCopy;
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

      actionSet = [v17 actionSet];

      if (actionSet)
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

      uUID3 = [MEMORY[0x1E696AFB0] UUID];
      [v17 setUuid:uUID3];

      currentActions = [(HMActionSet *)v10 currentActions];
      [currentActions addObject:v17];

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

- (void)updateWithBuilder:(id)builder completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  home = [(HMActionSet *)self home];
  v10 = home;
  if (context)
  {
    v31 = 0;
    v11 = [home validateBuilder:builderCopy error:&v31];
    v12 = v31;
    v13 = v12;
    if (v11)
    {
      v14 = MEMORY[0x1E695DF90];
      v30 = v12;
      v15 = [v10 encodeActionSetBuilder:builderCopy error:&v30];
      v16 = v30;

      delegateCaller2 = [v14 dictionaryWithDictionary:v15];

      if (delegateCaller2)
      {
        uuid = [(HMActionSet *)self uuid];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __69__HMActionSet_ActionSetBuilder__updateWithBuilder_completionHandler___block_invoke;
        v25[3] = &unk_1E754D030;
        v26 = context;
        v29 = handlerCopy;
        v27 = v10;
        selfCopy = self;
        [(_HMContext *)v26 sendMessage:uuid target:delegateCaller2 payload:v25 responseHandler:?];

        delegateCaller = v26;
      }

      else
      {
        delegateCaller = [context delegateCaller];
        [delegateCaller callCompletion:handlerCopy error:v16];
      }
    }

    else
    {
      delegateCaller2 = [context delegateCaller];
      [delegateCaller2 callCompletion:handlerCopy error:v13];
      v16 = v13;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  home = [(HMActionSet *)self home];
  if (home)
  {
    v4 = objc_alloc_init(HMPBActionSet);
    uuid = [home uuid];
    hm_convertToData = [uuid hm_convertToData];
    [(HMPBActionSet *)v4 setHomeUUID:hm_convertToData];

    uuid2 = [(HMActionSet *)self uuid];
    hm_convertToData2 = [uuid2 hm_convertToData];
    [(HMPBActionSet *)v4 setUuid:hm_convertToData2];

    uuid3 = [(HMActionSet *)self uuid];
    v10 = [home actionSetWithUUID:uuid3];

    if (!v10)
    {
      name = [(HMActionSet *)self name];
      [(HMPBActionSet *)v4 setName:name];

      actionSetType = [(HMActionSet *)self actionSetType];
      [(HMPBActionSet *)v4 setActionSetType:actionSetType];

      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(HMPBActionSet *)v4 setActions:v13];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      actions = [(HMActionSet *)self actions];
      v15 = [actions countByEnumeratingWithState:&v27 objects:v31 count:16];
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
              objc_enumerationMutation(actions);
            }

            encodeAsProtoBuf = [*(*(&v27 + 1) + 8 * i) encodeAsProtoBuf];
            if (encodeAsProtoBuf)
            {
              actions2 = [(HMPBActionSet *)v4 actions];
              [actions2 addObject:encodeAsProtoBuf];
            }
          }

          v16 = [actions countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v16);
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (BOOL)mergeFromNewObjectForBuilderUpdates:(id)updates
{
  v39 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = [HMObjectMergeCollection alloc];
  currentActions = [(HMActionSet *)self currentActions];
  array = [currentActions array];
  currentActions2 = [updatesCopy currentActions];
  array2 = [currentActions2 array];
  v10 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v10 removedObjects];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke;
  v34[3] = &unk_1E754D0A8;
  v34[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v34];

  selfCopy = [(HMObjectMergeCollection *)v10 addedObjects];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __51__HMActionSet_mergeFromNewObjectForBuilderUpdates___block_invoke_282;
  v33[3] = &unk_1E754D0A8;
  v33[4] = self;
  [(HMActionSet *)selfCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v33];

  [(HMObjectMergeCollection *)v10 mergeCommonObjects];
  LODWORD(selfCopy) = [(HMObjectMergeCollection *)v10 isModified];
  if (selfCopy)
  {
    finalObjects = [(HMObjectMergeCollection *)v10 finalObjects];
    currentActions3 = [(HMActionSet *)self currentActions];
    [currentActions3 setArray:finalObjects];
  }

  name = [(HMActionSet *)self name];
  name2 = [updatesCopy name];
  v17 = [name isEqualToString:name2];

  if ((v17 & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      applicationData = [updatesCopy applicationData];
      *buf = 138543618;
      v36 = v20;
      v37 = 2112;
      v38 = applicationData;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated name via merge: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    name3 = [updatesCopy name];
    [(HMActionSet *)selfCopy setName:name3];

    LOBYTE(selfCopy) = 1;
  }

  applicationData2 = [(HMActionSet *)self applicationData];
  applicationData3 = [updatesCopy applicationData];
  v25 = HMFEqualObjects();

  if ((v25 & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      applicationData4 = [updatesCopy applicationData];
      *buf = 138543618;
      v36 = v29;
      v37 = 2112;
      v38 = applicationData4;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Updated application data via merge: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    selfCopy = [updatesCopy applicationData];
    [(HMActionSet *)selfCopy2 setApplicationData:selfCopy];

    LOBYTE(selfCopy) = 1;
  }

  v31 = *MEMORY[0x1E69E9840];
  return selfCopy;
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

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v5 = [HMObjectMergeCollection alloc];
  currentActions = [(HMActionSet *)self currentActions];
  array = [currentActions array];
  currentActions2 = [objectCopy currentActions];
  array2 = [currentActions2 array];
  v9 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v9 removedObjects];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __34__HMActionSet_mergeFromNewObject___block_invoke;
  v47[3] = &unk_1E754D0A8;
  v47[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v47];

  addedObjects = [(HMObjectMergeCollection *)v9 addedObjects];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_280;
  v46[3] = &unk_1E754D0A8;
  v46[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v46];

  [(HMObjectMergeCollection *)v9 mergeCommonObjects];
  home = [(HMActionSet *)self home];
  LODWORD(array) = [(HMObjectMergeCollection *)v9 isModified];
  if (array)
  {
    finalObjects = [(HMObjectMergeCollection *)v9 finalObjects];
    currentActions3 = [(HMActionSet *)self currentActions];
    [currentActions3 setArray:finalObjects];

    delegate = [home delegate];
    if (objc_opt_respondsToSelector())
    {
      context = [(HMActionSet *)self context];
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34__HMActionSet_mergeFromNewObject___block_invoke_281;
      block[3] = &unk_1E754E5E8;
      block[4] = self;
      v44 = delegate;
      v45 = home;
      dispatch_async(queue, block);
    }
  }

  name = [(HMActionSet *)self name];
  name2 = [objectCopy name];
  v21 = [name isEqualToString:name2];

  if ((v21 & 1) == 0)
  {
    name3 = [objectCopy name];
    [(HMActionSet *)self setName:name3];

    array = [home delegate];
    if (objc_opt_respondsToSelector())
    {
      context2 = [(HMActionSet *)self context];
      queue2 = [context2 queue];
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __34__HMActionSet_mergeFromNewObject___block_invoke_3;
      v39 = &unk_1E754E5E8;
      selfCopy = self;
      v41 = array;
      v42 = home;
      dispatch_async(queue2, &v36);
    }

    LOBYTE(array) = 1;
  }

  v25 = [(HMActionSet *)self applicationData:v36];
  applicationData = [objectCopy applicationData];
  v27 = HMFEqualObjects();

  if ((v27 & 1) == 0)
  {
    array = [objectCopy applicationData];
    [(HMActionSet *)self setApplicationData:array];

    [home notifyDelegateOfAppDataUpdateForActionSet:self];
    LOBYTE(array) = 1;
  }

  executionInProgress = [(HMActionSet *)self executionInProgress];
  if (executionInProgress != [objectCopy executionInProgress])
  {
    -[HMActionSet setExecutionInProgress:](self, "setExecutionInProgress:", [objectCopy executionInProgress]);
    LOBYTE(array) = 1;
  }

  lastExecutionDate = [(HMActionSet *)self lastExecutionDate];
  lastExecutionDate2 = [objectCopy lastExecutionDate];
  v31 = HMFEqualObjects();

  if ((v31 & 1) == 0)
  {
    lastExecutionDate3 = [objectCopy lastExecutionDate];
    [(HMActionSet *)self setLastExecutionDate:lastExecutionDate3];

    lastExecutionDate4 = [objectCopy lastExecutionDate];

    if (lastExecutionDate4)
    {
      lastExecutionDate5 = [objectCopy lastExecutionDate];
      [home notifyDelegatesOfExecutionForActionSet:self atDate:lastExecutionDate5];
    }

    LOBYTE(array) = 1;
  }

  return array;
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

- (HMActionSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionSetUUID"];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionSetName"];
  v8 = [coderCopy hm_decodeAndCacheStringForKey:@"actionSetType"];
  v9 = [(HMActionSet *)self initWithName:v7 type:v8 uuid:v6];
  if (v9)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v9->_home, v10);

    v9->_executionInProgress = [coderCopy decodeBoolForKey:@"HM.actionSetExecutionInProgress"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.actionSetLastExecutionDate"];
    lastExecutionDate = v9->_lastExecutionDate;
    v9->_lastExecutionDate = v11;

    currentActions = v9->_currentActions;
    v14 = +[HMActionSet allowedActionClasses];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"actionSetActions"];
    [(HMMutableArray *)currentActions setArray:v15];

    v16 = [[HMApplicationData alloc] initWithDictionaryFromCoder:coderCopy key:@"HM.appData"];
    applicationData = v9->_applicationData;
    v9->_applicationData = v16;
  }

  return v9;
}

- (void)_registerNotificationHandlers
{
  context = [(HMActionSet *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kActionSetWillStartExecutionNotificationKey" receiver:self selector:sel__handleActionSetStartExecutionNotification_];

  context2 = [(HMActionSet *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"kActionSetExecutedNotificationKey" receiver:self selector:sel__handleActionSetExecutedNotification_];
}

- (void)didUpdateIsExecuting:(BOOL)executing
{
  v23 = *MEMORY[0x1E69E9840];
  home = [(HMActionSet *)self home];
  v6 = home;
  if (home)
  {
    delegate = [home delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63B38])
    {
      v8 = delegate;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (objc_opt_respondsToSelector())
    {
      context = [(HMActionSet *)self context];
      queue = [context queue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __36__HMActionSet_didUpdateIsExecuting___block_invoke;
      v17[3] = &unk_1E754D080;
      v17[4] = self;
      v18 = v9;
      v19 = v6;
      executingCopy = executing;
      dispatch_async(queue, v17);
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)_handleActionSetExecutedNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = [notificationCopy dateForKey:@"kActionSetLastexecutionDate"];
  if (v5)
  {
    [(HMActionSet *)self setLastExecutionDate:v5];
    [(HMActionSet *)self setExecutionInProgress:0];
    [(HMActionSet *)self didUpdateIsExecuting:0];
    home = [(HMActionSet *)self home];
    [home notifyDelegatesOfExecutionForActionSet:self atDate:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [notificationCopy shortDescription];
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = shortDescription;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received action set executed message without a last execution date: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleActionSetStartExecutionNotification:(id)notification
{
  [(HMActionSet *)self setExecutionInProgress:1];

  [(HMActionSet *)self didUpdateIsExecuting:1];
}

- (void)updateApplicationData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v13);
  }

  v7 = handlerCopy;
  home = [(HMActionSet *)self home];
  v9 = home;
  if (home)
  {
    [home updateApplicationData:dataCopy forActionSet:self completionHandler:v7];
  }

  else
  {
    context = [(HMActionSet *)self context];
    delegateCaller = [context delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [delegateCaller callCompletion:v7 error:v12];
  }
}

- (BOOL)_handleActionSetRenameFromPayload:(id)payload completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  completionCopy = completion;
  v8 = [payloadCopy hmf_stringForKey:@"kActionSetName"];
  if (v8)
  {
    [(HMActionSet *)self setName:v8];
    if (completionCopy)
    {
      context = [(HMActionSet *)self context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:completionCopy error:0];

      v11 = 0;
    }

    else
    {
      home = [(HMActionSet *)self home];
      delegate = [home delegate];
      v18 = objc_opt_respondsToSelector();
      if (v18)
      {
        context2 = [(HMActionSet *)self context];
        delegateCaller2 = [context2 delegateCaller];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __60__HMActionSet__handleActionSetRenameFromPayload_completion___block_invoke;
        v23[3] = &unk_1E754E5E8;
        v24 = delegate;
        v25 = home;
        selfCopy = self;
        [delegateCaller2 invokeBlock:v23];
      }

      v11 = v18 ^ 1;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (BOOL)_handleActionUpdatedFromResponse:(id)response completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  completionCopy = completion;
  v8 = [responseCopy hmf_UUIDForKey:@"kActionUUID"];
  v9 = [responseCopy hmf_dictionaryForKey:@"kActionInfo"];
  v10 = v9;
  if (v8 && v9)
  {
    currentActions = [(HMActionSet *)self currentActions];
    v12 = [currentActions firstItemWithUUID:v8];

    if (v12)
    {
      if ([v12 _handleUpdates:v10])
      {
        if (completionCopy)
        {
          context = [(HMActionSet *)self context];
          delegateCaller = [context delegateCaller];
          [delegateCaller callCompletion:completionCopy error:0];

          v15 = 0;
        }

        else
        {
          home = [(HMActionSet *)self home];
          delegate = [home delegate];
          v31 = objc_opt_respondsToSelector();
          if (v31)
          {
            context2 = [(HMActionSet *)self context];
            delegateCaller2 = [context2 delegateCaller];
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __59__HMActionSet__handleActionUpdatedFromResponse_completion___block_invoke;
            v34[3] = &unk_1E754E5E8;
            v35 = delegate;
            v36 = home;
            selfCopy = self;
            [delegateCaller2 invokeBlock:v34];
          }

          v15 = v31 ^ 1;
        }

        goto LABEL_16;
      }

      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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
      selfCopy3 = self;
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
  selfCopy4 = self;
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

- (BOOL)_handleActionRemovedFromPayload:(id)payload completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  completionCopy = completion;
  v8 = [payloadCopy hmf_UUIDForKey:@"kActionUUID"];
  if (v8)
  {
    v9 = [(HMActionSet *)self _doRemoveActionWithUUID:v8 completionHandler:completionCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid action UUID : %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_doRemoveActionWithUUID:(id)d completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  currentActions = [(HMActionSet *)self currentActions];
  v9 = [currentActions firstItemWithUUID:dCopy];

  if (v9)
  {
    currentActions2 = [(HMActionSet *)self currentActions];
    [currentActions2 removeObject:v9];

    [v9 _unconfigure];
    if (handlerCopy)
    {
      context = [(HMActionSet *)self context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:0];

      v13 = 0;
    }

    else
    {
      home = [(HMActionSet *)self home];
      delegate = [home delegate];
      v20 = objc_opt_respondsToSelector();
      if (v20)
      {
        context2 = [(HMActionSet *)self context];
        delegateCaller2 = [context2 delegateCaller];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __57__HMActionSet__doRemoveActionWithUUID_completionHandler___block_invoke;
        v25[3] = &unk_1E754E5E8;
        v26 = delegate;
        v27 = home;
        selfCopy = self;
        [delegateCaller2 invokeBlock:v25];
      }

      v13 = v20 ^ 1;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)_removeActionsForAccessory:(id)accessory
{
  v33 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  array = [MEMORY[0x1E695DF70] array];
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
          characteristic = [v10 characteristic];
          service = [characteristic service];

          if (service)
          {
            targetAccessoryUUID = [service targetAccessoryUUID];
            uuid = [accessoryCopy uuid];
            v15 = [targetAccessoryUUID hmf_isEqualToUUID:uuid];

            if (v15)
            {
              [array addObject:v8];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  currentActions = [(HMActionSet *)self currentActions];
  [currentActions removeObjectsInArray:array];

  home = [(HMActionSet *)self home];
  delegate = [home delegate];

  if ([array count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    context = [(HMActionSet *)self context];
    delegateCaller = [context delegateCaller];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __42__HMActionSet__removeActionsForAccessory___block_invoke;
    v25[3] = &unk_1E754E5C0;
    v26 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v25];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __42__HMActionSet__removeActionsForAccessory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) home];
  [v2 home:v3 didUpdateActionsForActionSet:*(a1 + 40)];
}

- (void)_doAddAction:(id)action uuid:(id)uuid
{
  v26 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  uuidCopy = uuid;
  currentActions = [(HMActionSet *)self currentActions];
  v9 = [currentActions firstItemWithUUID:uuidCopy];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      uniqueIdentifier = [actionCopy uniqueIdentifier];
      v18 = 138544130;
      v19 = v13;
      v20 = 2112;
      v21 = uniqueIdentifier;
      v22 = 2112;
      v23 = actionCopy;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Action %@ being added has already appeared, making %@ a proxy for existing configured instance %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    HMProxify(actionCopy);
  }

  else
  {
    [actionCopy setUuid:uuidCopy];
    context = [(HMActionSet *)self context];
    [actionCopy __configureWithContext:context actionSet:self];

    currentActions2 = [(HMActionSet *)self currentActions];
    [currentActions2 addObject:actionCopy];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_updateAction:(id)action changes:(id)changes completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  changesCopy = changes;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  if (!handlerCopy)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet _updateAction:changes:completionHandler:]", @"completion"];
    v36 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v12 = context;
  if (context)
  {
    if (actionCopy && changesCopy)
    {
      home = [(HMActionSet *)self home];
      if (home)
      {
        currentActions = [(HMActionSet *)self currentActions];
        v15 = [currentActions containsObject:actionCopy];

        if (v15)
        {
          v16 = objc_alloc(MEMORY[0x1E69A2A00]);
          uuid = [(HMActionSet *)self uuid];
          v41 = [v16 initWithTarget:uuid];

          v18 = MEMORY[0x1E69A2A10];
          v45[0] = @"kActionUUID";
          uuid2 = [actionCopy uuid];
          uUIDString = [uuid2 UUIDString];
          v45[1] = @"kActionInfo";
          v46[0] = uUIDString;
          v46[1] = changesCopy;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
          v22 = [v18 messageWithName:@"kReplaceActionValueKey" destination:v41 payload:v21];

          objc_initWeak(location, self);
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __55__HMActionSet__updateAction_changes_completionHandler___block_invoke;
          v42[3] = &unk_1E754CFF8;
          objc_copyWeak(&v44, location);
          v43 = handlerCopy;
          [v22 setResponseHandler:v42];
          messageDispatcher = [v12 messageDispatcher];
          [messageDispatcher sendMessage:v22 completionHandler:0];

          objc_destroyWeak(&v44);
          objc_destroyWeak(location);

LABEL_15:
          goto LABEL_16;
        }

        delegateCaller = [v12 delegateCaller];
        v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      }

      else
      {
        delegateCaller = [v12 delegateCaller];
        v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      }

      v33 = v32;
      [delegateCaller callCompletion:handlerCopy error:v32];

      goto LABEL_15;
    }

    delegateCaller2 = [context delegateCaller];
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    [delegateCaller2 callCompletion:handlerCopy error:v30];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v28);
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

- (void)_removeAction:(id)action completionHandler:(id)handler
{
  v52 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  if (!handlerCopy)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet _removeAction:completionHandler:]", @"completion"];
    v36 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (!context)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    handlerCopy[2](handlerCopy, v19);

    goto LABEL_14;
  }

  if (!actionCopy)
  {
    delegateCaller = [context delegateCaller];
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
LABEL_12:
    v21 = v20;
    [delegateCaller callCompletion:handlerCopy error:v20];

    goto LABEL_13;
  }

  currentActions = [(HMActionSet *)self currentActions];
  v11 = [currentActions containsObject:actionCopy];

  if ((v11 & 1) == 0)
  {
    delegateCaller = [v9 delegateCaller];
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    goto LABEL_12;
  }

  actionSetType = [(HMActionSet *)self actionSetType];
  v13 = [actionSetType isEqualToString:@"HMActionSetTypeShortcutsComponent"];

  if (v13)
  {
    delegateCaller = [actionCopy uuid];
    [(HMActionSet *)self _doRemoveActionWithUUID:delegateCaller completionHandler:handlerCopy];
LABEL_13:

    goto LABEL_14;
  }

  home = [(HMActionSet *)self home];
  if (home)
  {
    v23 = MEMORY[0x1E69A2A10];
    v24 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMActionSet *)self uuid];
    v26 = [v24 initWithTarget:uuid];
    v46 = @"kActionUUID";
    uuid2 = [actionCopy uuid];
    uUIDString = [uuid2 UUIDString];
    v47 = uUIDString;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v30 = [v23 messageWithName:@"kRemoveActionRequestKey" destination:v26 payload:v29];

    objc_initWeak(buf, self);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __47__HMActionSet__removeAction_completionHandler___block_invoke;
    v42[3] = &unk_1E754D058;
    objc_copyWeak(&v45, buf);
    v44 = handlerCopy;
    v31 = v9;
    v43 = v31;
    [v30 setResponseHandler:v42];
    messageDispatcher = [v31 messageDispatcher];
    [messageDispatcher sendMessage:v30 completionHandler:0];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
  }

  else
  {
    delegateCaller2 = [v9 delegateCaller];
    v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [delegateCaller2 callCompletion:handlerCopy error:v34];
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
  context = [(HMActionSet *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet removeAction:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__HMActionSet_removeAction_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)_addAction:(id)action completionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  v9 = context;
  if (context)
  {
    if (actionCopy)
    {
      v41 = 0;
      v10 = [actionCopy isValidWithError:&v41];
      delegateCaller5 = v41;
      if (v10)
      {
        actions = [(HMActionSet *)self actions];
        v13 = [actions containsObject:actionCopy];

        if (v13)
        {
          delegateCaller = [v9 delegateCaller];
          v15 = MEMORY[0x1E696ABC0];
          v16 = 1;
LABEL_17:
          v25 = [v15 hmErrorWithCode:v16];
          [delegateCaller callCompletion:handlerCopy error:v25];

          goto LABEL_18;
        }

        actionSet = [actionCopy actionSet];

        if (actionSet)
        {
          delegateCaller = [v9 delegateCaller];
          v15 = MEMORY[0x1E696ABC0];
          v16 = 30;
          goto LABEL_17;
        }

        actionSetType = [(HMActionSet *)self actionSetType];
        v28 = [actionSetType isEqualToString:@"HMActionSetTypeShortcutsComponent"];

        if (!v28)
        {
          delegateCaller = [(HMActionSet *)self home];
          if (delegateCaller)
          {
            _serializeForAdd = [actionCopy _serializeForAdd];
            if (_serializeForAdd)
            {
              delegateCaller3 = _serializeForAdd;
              uuid = [(HMActionSet *)self uuid];
              v42 = @"kActionInfo";
              v43 = delegateCaller3;
              v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
              v37[0] = MEMORY[0x1E69E9820];
              v37[1] = 3221225472;
              v37[2] = __44__HMActionSet__addAction_completionHandler___block_invoke;
              v37[3] = &unk_1E754D030;
              v37[4] = self;
              v38 = v9;
              v40 = handlerCopy;
              v39 = actionCopy;
              [(_HMContext *)v38 sendMessage:uuid target:v33 payload:v37 responseHandler:?];
            }

            else
            {
              delegateCaller2 = [v9 delegateCaller];
              v36 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
              [delegateCaller2 callCompletion:handlerCopy error:v36];

              delegateCaller3 = 0;
            }
          }

          else
          {
            delegateCaller3 = [v9 delegateCaller];
            v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
            [delegateCaller3 callCompletion:handlerCopy error:v34];
          }

          goto LABEL_18;
        }

        uUID = [MEMORY[0x1E696AFB0] UUID];
        [(HMActionSet *)self _doAddAction:actionCopy uuid:uUID];

        delegateCaller4 = [v9 delegateCaller];
        delegateCaller = delegateCaller4;
        v22 = handlerCopy;
        v23 = 0;
      }

      else
      {
        delegateCaller4 = [v9 delegateCaller];
        delegateCaller = delegateCaller4;
        if (!delegateCaller5)
        {
          v15 = MEMORY[0x1E696ABC0];
          v16 = 3;
          goto LABEL_17;
        }

        v22 = handlerCopy;
        v23 = delegateCaller5;
      }
    }

    else
    {
      delegateCaller5 = [context delegateCaller];
      delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      delegateCaller4 = delegateCaller5;
      v22 = handlerCopy;
      v23 = delegateCaller;
    }

    [delegateCaller4 callCompletion:v22 error:v23];
LABEL_18:

    goto LABEL_19;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  if (handlerCopy)
  {
    delegateCaller5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller5);
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
  context = [(HMActionSet *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet addAction:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__HMActionSet_addAction_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)_updateName:(id)name completionHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  if (!handlerCopy)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet _updateName:completionHandler:]", @"completion"];
    v37 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    v10 = [nameCopy length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v10 <= HMMaxLengthForNaming__hmf_once_v9)
    {
      home = [(HMActionSet *)self home];
      if (home)
      {
        name = [(HMActionSet *)self name];
        v22 = [name isEqualToString:nameCopy];

        if (v22)
        {
          context2 = [(HMActionSet *)self context];
          delegateCaller = [context2 delegateCaller];
          [delegateCaller callCompletion:handlerCopy error:0];
        }

        else
        {
          if (nameCopy)
          {
            v45 = @"kActionSetName";
            v46 = nameCopy;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          }

          else
          {
            v28 = MEMORY[0x1E695E0F8];
          }

          v29 = MEMORY[0x1E69A2A10];
          v30 = objc_alloc(MEMORY[0x1E69A2A00]);
          uuid = [(HMActionSet *)self uuid];
          v32 = [v30 initWithTarget:uuid];
          v33 = [v29 messageWithName:@"kRenameActionSetRequestKey" destination:v32 payload:v28];

          objc_initWeak(buf, self);
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __45__HMActionSet__updateName_completionHandler___block_invoke;
          v42[3] = &unk_1E754CFF8;
          objc_copyWeak(&v44, buf);
          v43 = handlerCopy;
          [v33 setResponseHandler:v42];
          messageDispatcher = [v9 messageDispatcher];
          [messageDispatcher sendMessage:v33 completionHandler:0];

          objc_destroyWeak(&v44);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        context3 = [(HMActionSet *)self context];
        delegateCaller2 = [context3 delegateCaller];
        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
        [delegateCaller2 callCompletion:handlerCopy error:v27];

        home = 0;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      home = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
      [home callCompletion:handlerCopy error:v16];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
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
  context = [(HMActionSet *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet updateName:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__HMActionSet_updateName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v25 = v7;
    v24 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)resetNameWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMActionSet *)self context];
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMActionSet resetNameWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__HMActionSet_resetNameWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v12);
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
  uuid = [(HMActionSet *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"AS", uuid, 0);

  return v3;
}

- (void)setApplicationData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = dataCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMApplicationData)applicationData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_applicationData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, homeCopy);

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

- (void)setExecutionInProgress:(BOOL)progress
{
  os_unfair_lock_lock_with_options();
  self->_executionInProgress = progress;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requiresDeviceUnlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  actions = [(HMActionSet *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__HMActionSet_requiresDeviceUnlock__block_invoke;
  v4[3] = &unk_1E754CFC8;
  v4[4] = &v5;
  [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v4];

  LOBYTE(actions) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return actions;
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
  currentActions = [(HMActionSet *)self currentActions];
  array = [currentActions array];
  v6 = [v3 initWithArray:array];

  return v6;
}

- (void)setLastExecutionDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  lastExecutionDate = self->_lastExecutionDate;
  self->_lastExecutionDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastExecutionDate
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDate *)self->_lastExecutionDate copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
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

- (void)__configureWithContext:(id)context home:(id)home
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  homeCopy = home;
  [(HMActionSet *)self setContext:contextCopy];
  [(HMActionSet *)self setHome:homeCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  actions = [(HMActionSet *)self actions];
  v9 = [actions countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(actions);
        }

        [*(*(&v16 + 1) + 8 * v12++) __configureWithContext:contextCopy actionSet:self];
      }

      while (v10 != v12);
      v10 = [actions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  actionSetType = [(HMActionSet *)self actionSetType];
  v14 = [actionSetType isEqualToString:@"HMActionSetTypeShortcutsComponent"];

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
  selfCopy = self;
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
    actions = [(HMActionSet *)selfCopy actions];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [actions countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(actions);
          }

          [*(*(&v20 + 1) + 8 * v13++) _unconfigure];
        }

        while (v11 != v13);
        v11 = [actions countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    currentActions = [(HMActionSet *)selfCopy currentActions];
    [currentActions setArray:0];

    [(HMActionSet *)selfCopy setHome:0];
    context = [(HMActionSet *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher deregisterReceiver:selfCopy];

    [(HMActionSet *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
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
  messageDispatcher = [(_HMContext *)self->_context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  context = self->_context;
  self->_context = 0;
}

- (HMActionSet)initWithDictionary:(id)dictionary home:(id)home
{
  v58 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v52.receiver = self;
  v52.super_class = HMActionSet;
  v8 = [(HMActionSet *)&v52 init];
  if (!v8)
  {
LABEL_15:
    v35 = v8;
    goto LABEL_24;
  }

  v9 = [dictionaryCopy hmf_UUIDForKey:@"kActionSetUUID"];
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

  v12 = [dictionaryCopy hmf_stringForKey:@"kActionSetName"];
  name = v8->_name;
  v8->_name = v12;

  if (v8->_name)
  {
    v47 = v9;
    v14 = [dictionaryCopy hmf_stringForKey:@"kActionSetType"];
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
    v22 = [dictionaryCopy hmf_arrayForKey:@"kActionSetActions" ofClasses:v21];

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

          v27 = [[HMAction alloc] initWithDictionary:*(*(&v48 + 1) + 8 * i) home:homeCopy];
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
    v32 = [dictionaryCopy hmf_dictionaryForKey:@"kAppDataInformationKey"];
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

- (HMActionSet)initWithName:(id)name type:(id)type uuid:(id)uuid
{
  nameCopy = name;
  typeCopy = type;
  uuidCopy = uuid;
  v24.receiver = self;
  v24.super_class = HMActionSet;
  v11 = [(HMActionSet *)&v24 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uuidCopy];
    uuid = v11->_uuid;
    v11->_uuid = v14;

    if (typeCopy)
    {
      v16 = typeCopy;
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

+ (BOOL)isBuiltinActionSetType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"HMActionSetTypeWakeUp"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"HMActionSetTypeHomeDeparture") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"HMActionSetTypeHomeArrival"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"HMActionSetTypeSleep"];
  }

  return v4;
}

+ (id)actionSetFromProtoBuf:(id)buf home:(id)home
{
  v76 = *MEMORY[0x1E69E9840];
  bufCopy = buf;
  homeCopy = home;
  v8 = MEMORY[0x1E696AFB0];
  uuid = [bufCopy uuid];
  v10 = [v8 hmf_UUIDWithBytesAsData:uuid];

  if (!v10)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  if (([bufCopy hasHomeUUID] & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  homeUUID = [bufCopy homeUUID];
  v13 = [v11 hmf_UUIDWithBytesAsData:homeUUID];

  if (v13)
  {
    uuid2 = [homeCopy uuid];
    v15 = [uuid2 isEqual:v13];

    if (v15)
    {
      v16 = [homeCopy actionSetWithUUID:v10];
      if (v16)
      {
        v17 = v16;
        actions = [bufCopy actions];
        v19 = [actions count];

        if (v19)
        {
          v20 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            formattedText = [bufCopy formattedText];
            *buf = 138543874;
            v71 = v23;
            v72 = 2112;
            v73 = v10;
            v74 = 2112;
            v75 = formattedText;
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
      name = [bufCopy name];
      actionSetType = [bufCopy actionSetType];
      v63 = v10;
      v42 = [(HMActionSet *)v39 initWithName:name type:actionSetType uuid:v10];

      v61 = v42;
      [(HMActionSet *)v42 setHome:homeCopy];
      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v64 = bufCopy;
      actions2 = [bufCopy actions];
      v45 = [actions2 countByEnumeratingWithState:&v65 objects:v69 count:16];
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
          objc_enumerationMutation(actions2);
        }

        v49 = *(*(&v65 + 1) + 8 * v48);
        type = [v49 type];
        if (type > 2)
        {
          if (type == 3)
          {
            v51 = HMLightProfileNaturalLightingAction;
            naturalLightingAction = [v49 naturalLightingAction];
          }

          else
          {
            if (type != 4)
            {
              goto LABEL_40;
            }

            v51 = HMMatterCommandAction;
            naturalLightingAction = [v49 matterCommandAction];
          }
        }

        else if (type == 1)
        {
          v51 = HMCharacteristicWriteAction;
          naturalLightingAction = [v49 characteristicWriteAction];
        }

        else
        {
          if (type != 2)
          {
            goto LABEL_40;
          }

          v51 = HMMediaPlaybackAction;
          naturalLightingAction = [v49 mediaPlaybackAction];
        }

        v53 = naturalLightingAction;
        v54 = [(__objc2_class *)v51 actionWithProtoBuf:naturalLightingAction home:homeCopy];

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
          v46 = [actions2 countByEnumeratingWithState:&v65 objects:v69 count:16];
          if (!v46)
          {
LABEL_45:

            currentActions = [(HMActionSet *)v61 currentActions];
            [currentActions addObjectsFromArray:v43];

            v25 = v61;
            v10 = v63;
            bufCopy = v64;
            v13 = v62;
            goto LABEL_46;
          }

          goto LABEL_26;
        }
      }
    }

    v31 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      uuid3 = [homeCopy uuid];
      *buf = 138543874;
      v71 = v37;
      v72 = 2112;
      v73 = v13;
      v74 = 2112;
      v75 = uuid3;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Trying to deserialize HMActionSet with a different home %@ %@", buf, 0x20u);
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy5 = self;
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
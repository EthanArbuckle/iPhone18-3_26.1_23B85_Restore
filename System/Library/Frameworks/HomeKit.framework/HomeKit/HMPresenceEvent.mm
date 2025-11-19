@interface HMPresenceEvent
+ (id)createWithDictionary:(id)a3 home:(id)a4;
+ (id)users:(id)a3 home:(id)a4 presenceType:(id)a5;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMPresenceEvent)initWithCoder:(id)a3;
- (HMPresenceEvent)initWithDict:(id)a3 presenceType:(id)a4 users:(id)a5 activation:(id)a6;
- (HMPresenceEvent)initWithDict:(id)a3 presenceType:(id)a4 users:(id)a5 activationGranularity:(unint64_t)a6;
- (HMPresenceEvent)initWithPresenceEventType:(unint64_t)a3 presenceUserType:(unint64_t)a4 users:(id)a5;
- (HMPresenceEvent)initWithPresenceType:(id)a3 users:(id)a4;
- (HMPresenceEventActivation)activation;
- (HMPresenceEventType)presenceEventType;
- (HMPresenceEventUserType)presenceUserType;
- (NSString)presenceType;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)users;
- (unint64_t)activationGranularity;
- (void)_updateFromDictionary:(id)a3;
- (void)setActivation:(id)a3;
- (void)setPresenceEventType:(unint64_t)a3;
- (void)setPresenceType:(id)a3;
- (void)setPresenceUserType:(unint64_t)a3;
- (void)updatePresenceType:(id)a3 completionHandler:(id)a4;
- (void)updateUsers:(id)a3 completionHandler:(id)a4;
@end

@implementation HMPresenceEvent

- (HMPresenceEvent)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMPresenceEvent;
  v5 = [(HMEvent *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPresenceEventPresence"];
    presenceType = v5->_presenceType;
    v5->_presenceType = v6;

    v8 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kPresenceEventUsers"];

    v12 = +[HMMutableArray array];
    observedUsers = v5->_observedUsers;
    v5->_observedUsers = v12;

    [(HMMutableArray *)v5->_observedUsers setArray:v11];
    v14 = [HMPresenceEventActivation activationGranularityWithCoder:v4];
    activation = v5->_activation;
    v5->_activation = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutablePresenceEvent alloc];
  v5 = [(HMPresenceEvent *)self presenceEventType];
  v6 = [(HMPresenceEvent *)self presenceUserType];
  v7 = [(HMPresenceEvent *)self users];
  v8 = [(HMPresenceEvent *)v4 initWithPresenceEventType:v5 presenceUserType:v6 users:v7];

  return v8;
}

+ (id)users:(id)a3 home:(id)a4 presenceType:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (usersListApplicable(v9))
  {
    v10 = [MEMORY[0x1E695DF70] array];
    if (v7)
    {
      v29 = v9;
      v30 = v8;
      v11 = [v8 users];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v31 + 1) + 8 * i);
            v17 = [v16 uuid];
            v18 = [v17 UUIDString];
            v19 = [v7 containsObject:v18];

            if (v19)
            {
              [v10 addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v13);
      }

      v8 = v30;
      v20 = [v30 currentUser];
      v21 = [v20 uuid];
      v22 = [v21 UUIDString];
      v23 = [v7 containsObject:v22];

      if (v23)
      {
        [v10 addObject:v20];
      }

      v9 = v29;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v26;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Presence type %@ does not apply for users", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v10 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)createWithDictionary:(id)a3 home:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 hmf_stringForKey:@"kPresenceEventPresence"];
  v8 = [v6 hmf_arrayForKey:@"kPresenceEventUsers"];
  v9 = [HMPresenceEvent users:v8 home:v5 presenceType:v7];

  v10 = [HMPresenceEventActivation activationGranularityWithDict:v6];
  v11 = [[HMPresenceEvent alloc] initWithDict:v6 presenceType:v7 users:v9 activation:v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMPresenceEvent alloc];
  v5 = [(HMPresenceEvent *)self presenceEventType];
  v6 = [(HMPresenceEvent *)self presenceUserType];
  v7 = [(HMPresenceEvent *)self users];
  v8 = [(HMPresenceEvent *)v4 initWithPresenceEventType:v5 presenceUserType:v6 users:v7];

  return v8;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = HMPresenceEvent;
  v5 = [(HMEvent *)&v32 mergeFromNewObject:v4];
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(HMPresenceEvent *)self presenceType];
    v10 = [v8 presenceType];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      v12 = [v8 presenceType];
      [(HMPresenceEvent *)self setPresenceType:v12];

      v5 = 1;
    }

    v13 = [(HMPresenceEvent *)self activation];
    v14 = [v8 activation];
    v15 = HMFEqualObjects();

    if ((v15 & 1) == 0)
    {
      v16 = [v8 activation];
      [(HMPresenceEvent *)self setActivation:v16];

      v5 = 1;
    }

    v17 = [HMObjectMergeCollection alloc];
    v18 = [(HMPresenceEvent *)self observedUsers];
    v19 = [v18 array];
    v20 = [v8 users];
    v21 = [(HMObjectMergeCollection *)v17 initWithCurrentObjects:v19 newObjects:v20];

    v22 = [(HMObjectMergeCollection *)v21 removedObjects];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __38__HMPresenceEvent_mergeFromNewObject___block_invoke;
    v31[3] = &unk_1E754C768;
    v31[4] = self;
    [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:v31];

    v23 = [(HMEvent *)self eventTrigger];
    v24 = [v23 home];
    v25 = [v24 users];
    [(HMObjectMergeCollection *)v21 replaceAddedObjectsWithObjects:v25];

    v26 = [(HMObjectMergeCollection *)v21 addedObjects];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __38__HMPresenceEvent_mergeFromNewObject___block_invoke_32;
    v30[3] = &unk_1E754C768;
    v30[4] = self;
    [v26 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];

    if ([(HMObjectMergeCollection *)v21 isModified])
    {
      v27 = [(HMObjectMergeCollection *)v21 finalObjects];
      v28 = [(HMPresenceEvent *)self observedUsers];
      [v28 setArray:v27];

      v5 = 1;
    }
  }

  return v5;
}

void __38__HMPresenceEvent_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed user via presence event merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __38__HMPresenceEvent_mergeFromNewObject___block_invoke_32(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added user via presence event merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateUsers:(id)a3 completionHandler:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMEvent *)self context];
  if (!v7)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMPresenceEvent updateUsers:completionHandler:]", @"completion"];
    v39 = objc_autoreleasePoolPush();
    v40 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v42;
      v61 = 2112;
      v62 = v38;
      _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v43 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v38 userInfo:0];
    objc_exception_throw(v43);
  }

  v9 = v8;
  if (!v8)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v34;
      v61 = 2080;
      v62 = "[HMPresenceEvent updateUsers:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v35 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v35);
    goto LABEL_25;
  }

  v10 = [(HMPresenceEvent *)self presenceType];
  v11 = usersListApplicable(v10);

  if ((v11 & 1) == 0)
  {
    v35 = [v9 delegateCaller];
    [v35 callCompletion:v7 error:0];
LABEL_25:

    goto LABEL_29;
  }

  v45 = v9;
  v12 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v46 = v6;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v52;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v52 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v51 + 1) + 8 * i) uuid];
        v19 = [v18 UUIDString];
        [v12 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v15);
  }

  v20 = [(HMPresenceEvent *)self users];
  v21 = [v12 count];
  if (v21 == [v20 count])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v44 = v20;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v48;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v47 + 1) + 8 * j) uuid];
          v28 = [v27 UUIDString];
          v29 = [v12 containsObject:v28];

          if (!v29)
          {

            v20 = v44;
            goto LABEL_27;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v9 = v45;
    v30 = [v45 delegateCaller];
    [v30 callCompletion:v7 error:0];
    v6 = v46;
    v20 = v44;
  }

  else
  {
LABEL_27:
    v55 = @"kPresenceEventUsers";
    v30 = [v12 allObjects];
    v56 = v30;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    [(HMEvent *)self _updateEventWithPayload:v36 completionHandler:v7];

    v9 = v45;
    v6 = v46;
  }

LABEL_29:
  v37 = *MEMORY[0x1E69E9840];
}

- (void)updatePresenceType:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMEvent *)self context];
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMPresenceEvent updatePresenceType:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v28;
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v9 = v8;
  if (v8)
  {
    if (isValidPresenceType(v6))
    {
      v10 = [(HMPresenceEvent *)self presenceType];
      v11 = [v10 isEqualToString:v6];

      if (!v11)
      {
        v30 = @"kPresenceEventPresence";
        v31 = v6;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        [(HMEvent *)self _updateEventWithPayload:v23 completionHandler:v7];

        goto LABEL_13;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v15;
        v34 = 2112;
        v35 = v6;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Presence type is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [v9 delegateCaller];
      [v16 callCompletion:v7 error:0];
    }

    else
    {
      v16 = [v9 delegateCaller];
      v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v16 callCompletion:v7 error:v21];
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
      v33 = v20;
      v34 = 2080;
      v35 = "[HMPresenceEvent updatePresenceType:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v16);
  }

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

- (id)_serializeForAdd
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = HMPresenceEvent;
  v3 = [(HMEvent *)&v25 _serializeForAdd];
  v4 = [v3 mutableCopy];

  v5 = [(HMPresenceEvent *)self presenceType];
  [v4 setObject:v5 forKeyedSubscript:@"kPresenceEventPresence"];

  v6 = [(HMPresenceEvent *)self activation];
  [v6 addToPayload:v4];

  v7 = [(HMPresenceEvent *)self users];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(HMPresenceEvent *)self users];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v21 + 1) + 8 * i) uuid];
          v16 = [v15 UUIDString];
          [v9 addObject:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }

    v17 = [v9 copy];
    [v4 setObject:v17 forKeyedSubscript:@"kPresenceEventUsers"];
  }

  v18 = [v4 copy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)_updateFromDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = HMPresenceEvent;
  [(HMEvent *)&v26 _updateFromDictionary:v4];
  v5 = [v4 hmf_stringForKey:@"kPresenceEventPresence"];
  if (v5)
  {
    [(HMPresenceEvent *)self setPresenceType:v5];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v9;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating presence type to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = [HMPresenceEventActivation activationGranularityWithDict:v4];
  if (v10)
  {
    [(HMPresenceEvent *)self setActivation:v10];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v14;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating activation to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = [v4 hmf_arrayForKey:@"kPresenceEventUsers"];
  if (v15)
  {
    v16 = [(HMEvent *)self eventTrigger];
    v17 = [v16 home];

    v18 = [(HMPresenceEvent *)self presenceType];
    v19 = [HMPresenceEvent users:v15 home:v17 presenceType:v18];

    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v23;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating users list to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [(HMPresenceEvent *)v21 observedUsers];
    [v24 setArray:v19];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)users
{
  v2 = [(HMPresenceEvent *)self observedUsers];
  v3 = [v2 array];

  return v3;
}

- (void)setPresenceUserType:(unint64_t)a3
{
  v8 = presenceTypeForEventTypeAndGranularity([(HMPresenceEvent *)self presenceEventType], a3);
  v4 = [(HMPresenceEvent *)self presenceEventType];
  if (v4 - 1 >= 4)
  {
    v5 = &kInvalidHMPresenceEventActivationGranularity;
  }

  else
  {
    v5 = (&unk_19BE376C0 + 8 * v4 - 8);
  }

  v6 = *v5;
  [(HMPresenceEvent *)self setPresenceType:v8];
  v7 = [HMPresenceEventActivation activationGranularityWithValue:v6];
  [(HMPresenceEvent *)self setActivation:v7];
}

- (HMPresenceEventUserType)presenceUserType
{
  v3 = [(HMPresenceEvent *)self presenceType];
  [(HMPresenceEvent *)self activationGranularity];
  v4 = userTypeForPresenceTypeAndGranularity(v3);

  return v4;
}

- (void)setPresenceEventType:(unint64_t)a3
{
  v8 = presenceTypeForEventTypeAndGranularity(a3, [(HMPresenceEvent *)self presenceUserType]);
  [(HMPresenceEvent *)self presenceUserType];
  if (a3 - 1 >= 4)
  {
    v5 = &kInvalidHMPresenceEventActivationGranularity;
  }

  else
  {
    v5 = (&unk_19BE376C0 + 8 * a3 - 8);
  }

  v6 = *v5;
  [(HMPresenceEvent *)self setPresenceType:v8];
  v7 = [HMPresenceEventActivation activationGranularityWithValue:v6];
  [(HMPresenceEvent *)self setActivation:v7];
}

- (HMPresenceEventType)presenceEventType
{
  v3 = [(HMPresenceEvent *)self presenceType];
  v4 = eventTypeForPresenceTypeAndGranularity(v3, [(HMPresenceEvent *)self activationGranularity]);

  return v4;
}

- (void)setActivation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  activation = self->_activation;
  self->_activation = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMPresenceEventActivation)activation
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activation;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (unint64_t)activationGranularity
{
  v2 = [(HMPresenceEvent *)self activation];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 value];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setPresenceType:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  presenceType = self->_presenceType;
  self->_presenceType = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)presenceType
{
  os_unfair_lock_lock_with_options();
  v3 = self->_presenceType;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [(HMPresenceEvent *)self presenceType];
  v5 = [v3 stringWithFormat:@"type: %@", v4];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(HMPresenceEvent *)self users];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        [v5 appendString:{@", "}];
        v12 = [v11 userID];
        [v5 appendString:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = [(HMPresenceEvent *)self activation];
  v15 = [v13 stringWithFormat:@"[Presence-Event: %@, mode: %@]", v5, v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (HMPresenceEvent)initWithDict:(id)a3 presenceType:(id)a4 users:(id)a5 activation:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = HMPresenceEvent;
  v14 = [(HMEvent *)&v19 initWithDict:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_presenceType, a4);
    objc_storeStrong(&v15->_activation, a6);
    v16 = [HMMutableArray arrayWithArray:v12];
    observedUsers = v15->_observedUsers;
    v15->_observedUsers = v16;
  }

  return v15;
}

- (HMPresenceEvent)initWithDict:(id)a3 presenceType:(id)a4 users:(id)a5 activationGranularity:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [HMPresenceEventActivation activationGranularityWithValue:a6];
  v14 = [(HMPresenceEvent *)self initWithDict:v12 presenceType:v11 users:v10 activation:v13];

  return v14;
}

- (HMPresenceEvent)initWithPresenceEventType:(unint64_t)a3 presenceUserType:(unint64_t)a4 users:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = presenceTypeForEventTypeAndGranularity(a3, a4);
  v10 = (&unk_19BE376C0 + 8 * a3 - 8);
  if (a3 - 1 >= 4)
  {
    v10 = &kInvalidHMPresenceEventActivationGranularity;
  }

  v11 = *v10;
  v17 = @"kEventUUIDKey";
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v14 = [(HMPresenceEvent *)self initWithDict:v13 presenceType:v9 users:v8 activationGranularity:v11];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (HMPresenceEvent)initWithPresenceType:(id)a3 users:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"kEventUUIDKey";
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [(HMPresenceEvent *)self initWithDict:v10 presenceType:v8 users:v7 activationGranularity:2];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end
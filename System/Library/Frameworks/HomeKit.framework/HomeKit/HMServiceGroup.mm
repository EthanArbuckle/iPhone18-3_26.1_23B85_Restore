@interface HMServiceGroup
+ (id)logCategory;
- (BOOL)mergeFromNewObject:(id)object;
- (HMApplicationData)applicationData;
- (HMHome)home;
- (HMServiceGroup)initWithCoder:(id)coder;
- (HMServiceGroup)initWithName:(id)name uuid:(id)uuid;
- (NSArray)services;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (id)assistantIdentifier;
- (id)logIdentifier;
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_addOrRemove:(BOOL)remove service:(id)service completionHandler:(id)handler;
- (void)_removeServices:(id)services;
- (void)_unconfigure;
- (void)_updateName:(id)name completionHandler:(id)handler;
- (void)addService:(HMService *)service completionHandler:(void *)completion;
- (void)removeService:(HMService *)service completionHandler:(void *)completion;
- (void)setApplicationData:(id)data;
- (void)setHome:(id)home;
- (void)setName:(id)name;
- (void)updateApplicationData:(id)data completionHandler:(id)handler;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
@end

@implementation HMServiceGroup

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v5 = [HMObjectMergeCollection alloc];
  currentServices = [(HMServiceGroup *)self currentServices];
  array = [currentServices array];
  currentServices2 = [objectCopy currentServices];
  array2 = [currentServices2 array];
  v10 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v10 removedObjects];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke;
  v45[3] = &unk_1E754B550;
  v45[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v45];

  array3 = [MEMORY[0x1E695DF70] array];
  addedObjects = [(HMObjectMergeCollection *)v10 addedObjects];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_54;
  v43[3] = &unk_1E7549048;
  v43[4] = self;
  v14 = array3;
  v44 = v14;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v43];

  [(HMObjectMergeCollection *)v10 replaceAddedObjectsWithObjects:v14];
  finalObjects = [(HMObjectMergeCollection *)v10 finalObjects];
  currentServices3 = [(HMServiceGroup *)self currentServices];
  [currentServices3 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v10 removedObjects];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_55;
  v42[3] = &unk_1E754B550;
  v42[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v42];

  addedObjects2 = [(HMObjectMergeCollection *)v10 addedObjects];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_56;
  v41[3] = &unk_1E754B550;
  v41[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v41];

  name = [(HMServiceGroup *)self name];
  name2 = [objectCopy name];
  v21 = [name isEqualToString:name2];

  if ((v21 & 1) == 0)
  {
    name3 = [objectCopy name];
    [(HMServiceGroup *)self setName:name3];

    home = [(HMServiceGroup *)self home];
    delegate = [home delegate];
    if (objc_opt_respondsToSelector())
    {
      context = [(HMServiceGroup *)self context];
      queue = [context queue];
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __37__HMServiceGroup_mergeFromNewObject___block_invoke_63;
      v37 = &unk_1E754E5E8;
      selfCopy = self;
      v39 = delegate;
      v40 = home;
      dispatch_async(queue, &v34);
    }
  }

  v27 = [(HMServiceGroup *)self applicationData:v34];
  applicationData = [objectCopy applicationData];
  v29 = HMFEqualObjects();

  if (v29)
  {
    v30 = v21 ^ 1;
  }

  else
  {
    applicationData2 = [objectCopy applicationData];
    [(HMServiceGroup *)self setApplicationData:applicationData2];

    home2 = [(HMServiceGroup *)self home];
    [home2 notifyDelegateOfAppDataUpdateForServiceGroup:self];

    v30 = 1;
  }

  return v30;
}

void __37__HMServiceGroup_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed service via service group merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __37__HMServiceGroup_mergeFromNewObject___block_invoke_54(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v3 accessory];
  v6 = [v5 uuid];
  v7 = [v4 accessoryWithUUID:v6];

  if (v7)
  {
    v8 = [v3 instanceID];
    v9 = [v7 _findService:v8];

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = v3;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Added service via service group merge: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [*(a1 + 40) addObject:v9];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v3 instanceID];
        v24 = 138543874;
        v25 = v21;
        v26 = 2112;
        v27 = v22;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to find service with instance ID : %@ on accessory : %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
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
      v19 = [v3 accessory];
      v20 = [v19 uuid];
      v24 = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the accessory with UUID : %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __37__HMServiceGroup_mergeFromNewObject___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [*(a1 + 32) context];
    v7 = [v6 queue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_2;
    v8[3] = &unk_1E754DE30;
    v8[4] = *(a1 + 32);
    v9 = v3;
    v10 = v5;
    v11 = v4;
    dispatch_async(v7, v8);
  }
}

void __37__HMServiceGroup_mergeFromNewObject___block_invoke_56(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [*(a1 + 32) context];
    v7 = [v6 queue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_2_59;
    v8[3] = &unk_1E754DE30;
    v8[4] = *(a1 + 32);
    v9 = v3;
    v10 = v5;
    v11 = v4;
    dispatch_async(v7, v8);
  }
}

void __37__HMServiceGroup_mergeFromNewObject___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_2_64;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __37__HMServiceGroup_mergeFromNewObject___block_invoke_2_64(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) name];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateNameForServiceGroup : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) home:*(a1 + 48) didUpdateNameForServiceGroup:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __37__HMServiceGroup_mergeFromNewObject___block_invoke_2_59(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_3_60;
  v9[3] = &unk_1E754DE30;
  v8 = *(a1 + 2);
  v4 = *(&v8 + 1);
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 invokeBlock:v9];
}

uint64_t __37__HMServiceGroup_mergeFromNewObject___block_invoke_3_60(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddService with service: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) home:*(a1 + 56) didAddService:*(a1 + 40) toServiceGroup:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __37__HMServiceGroup_mergeFromNewObject___block_invoke_2(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_3;
  v9[3] = &unk_1E754DE30;
  v8 = *(a1 + 2);
  v4 = *(&v8 + 1);
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 invokeBlock:v9];
}

uint64_t __37__HMServiceGroup_mergeFromNewObject___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveService with service: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) home:*(a1 + 56) didRemoveService:*(a1 + 40) fromServiceGroup:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)logIdentifier
{
  uniqueIdentifier = [(HMServiceGroup *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (HMServiceGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceGroupName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceGroupUUID"];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  v8 = [(HMServiceGroup *)self initWithName:v5 uuid:v7];
  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v8->_home, v9);

    currentServices = v8->_currentServices;
    v11 = [coderCopy hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"serviceGroupServices"];
    [(HMMutableArray *)currentServices setArray:v11];

    v12 = [[HMApplicationData alloc] initWithDictionaryFromCoder:coderCopy key:@"HM.appData"];
    applicationData = v8->_applicationData;
    v8->_applicationData = v12;
  }

  return v8;
}

- (void)updateApplicationData:(id)data completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMServiceGroup updateApplicationData:completionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v7 = handlerCopy;
  home = [(HMServiceGroup *)self home];
  v9 = home;
  if (home)
  {
    [home updateApplicationData:dataCopy forServiceGroup:self completionHandler:v7];
  }

  else
  {
    context = [(HMServiceGroup *)self context];
    delegateCaller = [context delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [delegateCaller callCompletion:v7 error:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_addOrRemove:(BOOL)remove service:(id)service completionHandler:(id)handler
{
  removeCopy = remove;
  v55 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  handlerCopy = handler;
  context = [(HMServiceGroup *)self context];
  v11 = context;
  if (context)
  {
    if (!serviceCopy)
    {
      delegateCaller = [context delegateCaller];
      accessory = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [delegateCaller callCompletion:handlerCopy error:accessory];
LABEL_21:

      goto LABEL_22;
    }

    delegateCaller = [(HMServiceGroup *)self home];
    if (delegateCaller)
    {
      accessory = [serviceCopy accessory];
      home = [accessory home];
      v15 = home;
      if (accessory && home)
      {
        uuid = [delegateCaller uuid];
        v41 = v15;
        uuid2 = [v15 uuid];
        v18 = [uuid isEqual:uuid2];

        if (v18)
        {
          currentServices = [(HMServiceGroup *)self currentServices];
          v20 = [currentServices containsObject:serviceCopy];

          if (v20 && removeCopy)
          {
            delegateCaller2 = [v11 delegateCaller];
            v22 = MEMORY[0x1E696ABC0];
            v23 = 1;
          }

          else
          {
            if ((v20 | removeCopy))
            {
              uuid3 = [accessory uuid];
              instanceID = [serviceCopy instanceID];
              v34 = @"kRemoveServiceRequestKey";
              if (removeCopy)
              {
                v34 = @"kAddServiceRequestKey";
              }

              v40 = v34;
              uuid4 = [(HMServiceGroup *)self uuid];
              v49[0] = @"kAccessoryUUID";
              uUIDString = [uuid3 UUIDString];
              v49[1] = @"kServiceInstanceID";
              v50[0] = uUIDString;
              v50[1] = instanceID;
              v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __57__HMServiceGroup__addOrRemove_service_completionHandler___block_invoke;
              v42[3] = &unk_1E7549020;
              v43 = v11;
              selfCopy = self;
              v45 = uuid3;
              v46 = instanceID;
              v47 = handlerCopy;
              v48 = removeCopy;
              v35 = instanceID;
              v36 = uuid3;
              [(_HMContext *)v43 sendMessage:v40 target:uuid4 payload:v37 responseHandler:v42];

              goto LABEL_19;
            }

            delegateCaller2 = [v11 delegateCaller];
            v22 = MEMORY[0x1E696ABC0];
            v23 = 2;
          }
        }

        else
        {
          delegateCaller2 = [v11 delegateCaller];
          v22 = MEMORY[0x1E696ABC0];
          v23 = 11;
        }

        v30 = [v22 hmErrorWithCode:v23];
        [delegateCaller2 callCompletion:handlerCopy error:v30];

LABEL_19:
        v15 = v41;
        goto LABEL_20;
      }

      delegateCaller3 = [v11 delegateCaller];
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
      [delegateCaller3 callCompletion:handlerCopy error:v29];
    }

    else
    {
      accessory = [v11 delegateCaller];
      v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [accessory callCompletion:handlerCopy error:v15];
    }

LABEL_20:

    goto LABEL_21;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v27;
    v53 = 2080;
    v54 = "[HMServiceGroup _addOrRemove:service:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  if (handlerCopy)
  {
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
LABEL_22:
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __57__HMServiceGroup__addOrRemove_service_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v3 = [*(a1 + 32) delegateCaller];
    [v3 callCompletion:*(a1 + 64) error:v10];
  }

  else
  {
    v4 = [*(a1 + 40) home];
    v5 = [v4 accessoryWithUUID:*(a1 + 48)];
    v3 = [v5 _findService:*(a1 + 56)];

    if (v3)
    {
      v6 = *(a1 + 72);
      v7 = [*(a1 + 40) currentServices];
      v8 = v7;
      if (v6 == 1)
      {
        [v7 addObjectIfNotPresent:v3];
      }

      else
      {
        [v7 removeObject:v3];
      }
    }

    v9 = [*(a1 + 32) delegateCaller];
    [v9 callCompletion:*(a1 + 64) error:0];
  }
}

- (void)removeService:(HMService *)service completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = service;
  v7 = completion;
  context = [(HMServiceGroup *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMServiceGroup removeService:completionHandler:]", @"completion"];
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
    block[2] = __50__HMServiceGroup_removeService_completionHandler___block_invoke;
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
      v29 = "[HMServiceGroup removeService:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addService:(HMService *)service completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = service;
  v7 = completion;
  context = [(HMServiceGroup *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMServiceGroup addService:completionHandler:]", @"completion"];
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
    block[2] = __47__HMServiceGroup_addService_completionHandler___block_invoke;
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
      v29 = "[HMServiceGroup addService:completionHandler:]";
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
  v42 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMServiceGroup *)self context];
  v9 = context;
  if (context)
  {
    if (nameCopy)
    {
      v10 = [nameCopy length];
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      if (v10 <= HMMaxLengthForNaming__hmf_once_v9)
      {
        home = [(HMServiceGroup *)self home];
        if (!home)
        {
          delegateCaller = [v9 delegateCaller];
          v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
          [delegateCaller callCompletion:handlerCopy error:v29];

          goto LABEL_16;
        }

        name = [(HMServiceGroup *)self name];
        v28 = [name isEqualToString:nameCopy];

        if (!v28)
        {
          uuid = [(HMServiceGroup *)self uuid];
          v36 = @"kServiceGroupName";
          v37 = nameCopy;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __48__HMServiceGroup__updateName_completionHandler___block_invoke;
          v32[3] = &unk_1E754E480;
          v33 = v9;
          selfCopy = self;
          v35 = handlerCopy;
          [(_HMContext *)v33 sendMessage:uuid target:v31 payload:v32 responseHandler:?];

          goto LABEL_17;
        }

        delegateCaller2 = [v9 delegateCaller];
        delegateCaller = delegateCaller2;
        v24 = handlerCopy;
        v25 = 0;
LABEL_15:
        [delegateCaller2 callCompletion:v24 error:v25];
LABEL_16:

        goto LABEL_17;
      }

      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      home = [v9 delegateCaller];
      v16 = MEMORY[0x1E696ABC0];
      v17 = 46;
    }

    else
    {
      home = [context delegateCaller];
      v16 = MEMORY[0x1E696ABC0];
      v17 = 20;
    }

    delegateCaller = [v16 hmErrorWithCode:v17];
    delegateCaller2 = home;
    v24 = handlerCopy;
    v25 = delegateCaller;
    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v21;
    v40 = 2080;
    v41 = "[HMServiceGroup _updateName:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  if (handlerCopy)
  {
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
LABEL_17:
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __48__HMServiceGroup__updateName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  if (v10)
  {
    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = v10;
  }

  else
  {
    v9 = [a3 hmf_stringForKey:@"kServiceGroupName"];
    [*(a1 + 40) setName:v9];

    v5 = [*(a1 + 32) delegateCaller];
    v6 = v5;
    v7 = *(a1 + 48);
    v8 = 0;
  }

  [v5 callCompletion:v7 error:v8];
}

- (void)updateName:(NSString *)name completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = name;
  v7 = completion;
  context = [(HMServiceGroup *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMServiceGroup updateName:completionHandler:]", @"completion"];
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
    block[2] = __47__HMServiceGroup_updateName_completionHandler___block_invoke;
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
      v29 = "[HMServiceGroup updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_removeServices:(id)services
{
  v59 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  array = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = servicesCopy;
  v30 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v30)
  {
    v29 = *v53;
    do
    {
      v4 = 0;
      do
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v4;
        v5 = *(*(&v52 + 1) + 8 * v4);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        services = [(HMServiceGroup *)self services];
        v6 = [services countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v49;
          do
          {
            v9 = 0;
            v34 = v7;
            do
            {
              if (*v49 != v8)
              {
                objc_enumerationMutation(services);
              }

              v10 = *(*(&v48 + 1) + 8 * v9);
              accessory = [v10 accessory];
              uuid = [accessory uuid];
              accessory2 = [v5 accessory];
              uuid2 = [accessory2 uuid];
              if ([uuid isEqual:uuid2])
              {
                instanceID = [v10 instanceID];
                [v5 instanceID];
                v17 = v16 = v8;
                v37 = [instanceID isEqualToNumber:v17];

                v8 = v16;
                v7 = v34;

                if (v37)
                {
                  [array addObject:v10];
                }
              }

              else
              {
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [services countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v7);
        }

        v4 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v30);
  }

  currentServices = [(HMServiceGroup *)self currentServices];
  [currentServices removeObjectsInArray:array];

  home = [(HMServiceGroup *)self home];
  delegate = [home delegate];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = array;
  v20 = [v38 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v38);
        }

        v24 = *(*(&v44 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          context = [(HMServiceGroup *)self context];
          delegateCaller = [context delegateCaller];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __34__HMServiceGroup__removeServices___block_invoke;
          v39[3] = &unk_1E754DE30;
          v40 = delegate;
          v41 = home;
          v42 = v24;
          selfCopy = self;
          [delegateCaller invokeBlock:v39];
        }
      }

      v21 = [v38 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v21);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)assistantIdentifier
{
  uuid = [(HMServiceGroup *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"SG", uuid, 0);

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

- (NSArray)services
{
  currentServices = [(HMServiceGroup *)self currentServices];
  array = [currentServices array];

  return array;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)__configureWithContext:(id)context home:(id)home
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  homeCopy = home;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMServiceGroup *)selfCopy setHome:homeCopy];
  if (contextCopy)
  {
    [(HMServiceGroup *)selfCopy setContext:contextCopy];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigure
{
  v14 = *MEMORY[0x1E69E9840];
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
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring serviceGroup", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMServiceGroup *)selfCopy setHome:0];
    [(HMServiceGroup *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (HMServiceGroup)initWithName:(id)name uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v18.receiver = self;
  v18.super_class = HMServiceGroup;
  v8 = [(HMServiceGroup *)&v18 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uuidCopy];
    uuid = v8->_uuid;
    v8->_uuid = v11;

    v13 = +[HMMutableArray array];
    currentServices = v8->_currentServices;
    v8->_currentServices = v13;

    v15 = objc_alloc_init(HMApplicationData);
    applicationData = v8->_applicationData;
    v8->_applicationData = v15;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_26629 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_26629, &__block_literal_global_26630);
  }

  v3 = logCategory__hmf_once_v21_26631;

  return v3;
}

uint64_t __29__HMServiceGroup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_26631;
  logCategory__hmf_once_v21_26631 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end
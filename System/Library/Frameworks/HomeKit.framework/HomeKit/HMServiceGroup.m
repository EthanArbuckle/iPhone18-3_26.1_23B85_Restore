@interface HMServiceGroup
+ (id)logCategory;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMApplicationData)applicationData;
- (HMHome)home;
- (HMServiceGroup)initWithCoder:(id)a3;
- (HMServiceGroup)initWithName:(id)a3 uuid:(id)a4;
- (NSArray)services;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (id)assistantIdentifier;
- (id)logIdentifier;
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_addOrRemove:(BOOL)a3 service:(id)a4 completionHandler:(id)a5;
- (void)_removeServices:(id)a3;
- (void)_unconfigure;
- (void)_updateName:(id)a3 completionHandler:(id)a4;
- (void)addService:(HMService *)service completionHandler:(void *)completion;
- (void)removeService:(HMService *)service completionHandler:(void *)completion;
- (void)setApplicationData:(id)a3;
- (void)setHome:(id)a3;
- (void)setName:(id)a3;
- (void)updateApplicationData:(id)a3 completionHandler:(id)a4;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
@end

@implementation HMServiceGroup

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v5 = [HMObjectMergeCollection alloc];
  v6 = [(HMServiceGroup *)self currentServices];
  v7 = [v6 array];
  v8 = [v4 currentServices];
  v9 = [v8 array];
  v10 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:v7 newObjects:v9];

  v11 = [(HMObjectMergeCollection *)v10 removedObjects];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke;
  v45[3] = &unk_1E754B550;
  v45[4] = self;
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v45];

  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [(HMObjectMergeCollection *)v10 addedObjects];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_54;
  v43[3] = &unk_1E7549048;
  v43[4] = self;
  v14 = v12;
  v44 = v14;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v43];

  [(HMObjectMergeCollection *)v10 replaceAddedObjectsWithObjects:v14];
  v15 = [(HMObjectMergeCollection *)v10 finalObjects];
  v16 = [(HMServiceGroup *)self currentServices];
  [v16 setArray:v15];

  v17 = [(HMObjectMergeCollection *)v10 removedObjects];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_55;
  v42[3] = &unk_1E754B550;
  v42[4] = self;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v42];

  v18 = [(HMObjectMergeCollection *)v10 addedObjects];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __37__HMServiceGroup_mergeFromNewObject___block_invoke_56;
  v41[3] = &unk_1E754B550;
  v41[4] = self;
  [v18 hmf_enumerateWithAutoreleasePoolUsingBlock:v41];

  v19 = [(HMServiceGroup *)self name];
  v20 = [v4 name];
  v21 = [v19 isEqualToString:v20];

  if ((v21 & 1) == 0)
  {
    v22 = [v4 name];
    [(HMServiceGroup *)self setName:v22];

    v23 = [(HMServiceGroup *)self home];
    v24 = [v23 delegate];
    if (objc_opt_respondsToSelector())
    {
      v25 = [(HMServiceGroup *)self context];
      v26 = [v25 queue];
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __37__HMServiceGroup_mergeFromNewObject___block_invoke_63;
      v37 = &unk_1E754E5E8;
      v38 = self;
      v39 = v24;
      v40 = v23;
      dispatch_async(v26, &v34);
    }
  }

  v27 = [(HMServiceGroup *)self applicationData:v34];
  v28 = [v4 applicationData];
  v29 = HMFEqualObjects();

  if (v29)
  {
    v30 = v21 ^ 1;
  }

  else
  {
    v31 = [v4 applicationData];
    [(HMServiceGroup *)self setApplicationData:v31];

    v32 = [(HMServiceGroup *)self home];
    [v32 notifyDelegateOfAppDataUpdateForServiceGroup:self];

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
  v2 = [(HMServiceGroup *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMServiceGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceGroupName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceGroupUUID"];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  v8 = [(HMServiceGroup *)self initWithName:v5 uuid:v7];
  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v8->_home, v9);

    currentServices = v8->_currentServices;
    v11 = [v4 hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"serviceGroupServices"];
    [(HMMutableArray *)currentServices setArray:v11];

    v12 = [[HMApplicationData alloc] initWithDictionaryFromCoder:v4 key:@"HM.appData"];
    applicationData = v8->_applicationData;
    v8->_applicationData = v12;
  }

  return v8;
}

- (void)updateApplicationData:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v6 = a4;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMServiceGroup updateApplicationData:completionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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

  v7 = v6;
  v8 = [(HMServiceGroup *)self home];
  v9 = v8;
  if (v8)
  {
    [v8 updateApplicationData:v20 forServiceGroup:self completionHandler:v7];
  }

  else
  {
    v10 = [(HMServiceGroup *)self context];
    v11 = [v10 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [v11 callCompletion:v7 error:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_addOrRemove:(BOOL)a3 service:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v55 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(HMServiceGroup *)self context];
  v11 = v10;
  if (v10)
  {
    if (!v8)
    {
      v12 = [v10 delegateCaller];
      v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [v12 callCompletion:v9 error:v13];
LABEL_21:

      goto LABEL_22;
    }

    v12 = [(HMServiceGroup *)self home];
    if (v12)
    {
      v13 = [v8 accessory];
      v14 = [v13 home];
      v15 = v14;
      if (v13 && v14)
      {
        v16 = [v12 uuid];
        v41 = v15;
        v17 = [v15 uuid];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          v19 = [(HMServiceGroup *)self currentServices];
          v20 = [v19 containsObject:v8];

          if (v20 && v6)
          {
            v21 = [v11 delegateCaller];
            v22 = MEMORY[0x1E696ABC0];
            v23 = 1;
          }

          else
          {
            if ((v20 | v6))
            {
              v32 = [v13 uuid];
              v33 = [v8 instanceID];
              v34 = @"kRemoveServiceRequestKey";
              if (v6)
              {
                v34 = @"kAddServiceRequestKey";
              }

              v40 = v34;
              v39 = [(HMServiceGroup *)self uuid];
              v49[0] = @"kAccessoryUUID";
              v38 = [v32 UUIDString];
              v49[1] = @"kServiceInstanceID";
              v50[0] = v38;
              v50[1] = v33;
              v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __57__HMServiceGroup__addOrRemove_service_completionHandler___block_invoke;
              v42[3] = &unk_1E7549020;
              v43 = v11;
              v44 = self;
              v45 = v32;
              v46 = v33;
              v47 = v9;
              v48 = v6;
              v35 = v33;
              v36 = v32;
              [(_HMContext *)v43 sendMessage:v40 target:v39 payload:v37 responseHandler:v42];

              goto LABEL_19;
            }

            v21 = [v11 delegateCaller];
            v22 = MEMORY[0x1E696ABC0];
            v23 = 2;
          }
        }

        else
        {
          v21 = [v11 delegateCaller];
          v22 = MEMORY[0x1E696ABC0];
          v23 = 11;
        }

        v30 = [v22 hmErrorWithCode:v23];
        [v21 callCompletion:v9 error:v30];

LABEL_19:
        v15 = v41;
        goto LABEL_20;
      }

      v28 = [v11 delegateCaller];
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
      [v28 callCompletion:v9 error:v29];
    }

    else
    {
      v13 = [v11 delegateCaller];
      v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [v13 callCompletion:v9 error:v15];
    }

LABEL_20:

    goto LABEL_21;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = self;
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
  if (v9)
  {
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v9 + 2))(v9, v12);
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
  v8 = [(HMServiceGroup *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMServiceGroup removeService:completionHandler:]", @"completion"];
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
    block[2] = __50__HMServiceGroup_removeService_completionHandler___block_invoke;
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
  v8 = [(HMServiceGroup *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMServiceGroup addService:completionHandler:]", @"completion"];
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
    block[2] = __47__HMServiceGroup_addService_completionHandler___block_invoke;
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
      v29 = "[HMServiceGroup addService:completionHandler:]";
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
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMServiceGroup *)self context];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = [v6 length];
      if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
      {
        dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
      }

      if (v10 <= HMMaxLengthForNaming__hmf_once_v9)
      {
        v15 = [(HMServiceGroup *)self home];
        if (!v15)
        {
          v22 = [v9 delegateCaller];
          v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
          [v22 callCompletion:v7 error:v29];

          goto LABEL_16;
        }

        v27 = [(HMServiceGroup *)self name];
        v28 = [v27 isEqualToString:v6];

        if (!v28)
        {
          v30 = [(HMServiceGroup *)self uuid];
          v36 = @"kServiceGroupName";
          v37 = v6;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __48__HMServiceGroup__updateName_completionHandler___block_invoke;
          v32[3] = &unk_1E754E480;
          v33 = v9;
          v34 = self;
          v35 = v7;
          [(_HMContext *)v33 sendMessage:v30 target:v31 payload:v32 responseHandler:?];

          goto LABEL_17;
        }

        v23 = [v9 delegateCaller];
        v22 = v23;
        v24 = v7;
        v25 = 0;
LABEL_15:
        [v23 callCompletion:v24 error:v25];
LABEL_16:

        goto LABEL_17;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v9 delegateCaller];
      v16 = MEMORY[0x1E696ABC0];
      v17 = 46;
    }

    else
    {
      v15 = [v8 delegateCaller];
      v16 = MEMORY[0x1E696ABC0];
      v17 = 20;
    }

    v22 = [v16 hmErrorWithCode:v17];
    v23 = v15;
    v24 = v7;
    v25 = v22;
    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
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
  if (v7)
  {
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
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
  v8 = [(HMServiceGroup *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMServiceGroup updateName:completionHandler:]", @"completion"];
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
    block[2] = __47__HMServiceGroup_updateName_completionHandler___block_invoke;
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
      v29 = "[HMServiceGroup updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_removeServices:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v33 = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v3;
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
        v35 = [(HMServiceGroup *)self services];
        v6 = [v35 countByEnumeratingWithState:&v48 objects:v57 count:16];
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
                objc_enumerationMutation(v35);
              }

              v10 = *(*(&v48 + 1) + 8 * v9);
              v11 = [v10 accessory];
              v12 = [v11 uuid];
              v13 = [v5 accessory];
              v14 = [v13 uuid];
              if ([v12 isEqual:v14])
              {
                v15 = [v10 instanceID];
                [v5 instanceID];
                v17 = v16 = v8;
                v37 = [v15 isEqualToNumber:v17];

                v8 = v16;
                v7 = v34;

                if (v37)
                {
                  [v33 addObject:v10];
                }
              }

              else
              {
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [v35 countByEnumeratingWithState:&v48 objects:v57 count:16];
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

  v18 = [(HMServiceGroup *)self currentServices];
  [v18 removeObjectsInArray:v33];

  v36 = [(HMServiceGroup *)self home];
  v19 = [v36 delegate];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v38 = v33;
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
          v25 = [(HMServiceGroup *)self context];
          v26 = [v25 delegateCaller];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __34__HMServiceGroup__removeServices___block_invoke;
          v39[3] = &unk_1E754DE30;
          v40 = v19;
          v41 = v36;
          v42 = v24;
          v43 = self;
          [v26 invokeBlock:v39];
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
  v2 = [(HMServiceGroup *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"SG", v2, 0);

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

- (NSArray)services
{
  v2 = [(HMServiceGroup *)self currentServices];
  v3 = [v2 array];

  return v3;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)__configureWithContext:(id)a3 home:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMServiceGroup *)v9 setHome:v7];
  if (v6)
  {
    [(HMServiceGroup *)v9 setContext:v6];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigure
{
  v14 = *MEMORY[0x1E69E9840];
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
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring serviceGroup", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMServiceGroup *)v5 setHome:0];
    [(HMServiceGroup *)v5 setContext:0];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:v5];
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

- (HMServiceGroup)initWithName:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HMServiceGroup;
  v8 = [(HMServiceGroup *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v7];
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
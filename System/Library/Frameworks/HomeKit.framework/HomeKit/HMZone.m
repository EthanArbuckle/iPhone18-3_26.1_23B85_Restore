@interface HMZone
- (BOOL)mergeFromNewObject:(id)a3;
- (HMHome)home;
- (HMZone)initWithCoder:(id)a3;
- (HMZone)initWithName:(id)a3 uuid:(id)a4;
- (NSArray)rooms;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (NSUUID)uuid;
- (id)assistantIdentifier;
- (id)roomWithUUID:(id)a3;
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_addRoom:(id)a3 completionHandler:(id)a4;
- (void)_removeRoom:(id)a3;
- (void)_removeRoom:(id)a3 completionHandler:(id)a4;
- (void)_unconfigure;
- (void)_updateName:(id)a3 completionHandler:(id)a4;
- (void)addRoom:(HMRoom *)room completionHandler:(void *)completion;
- (void)removeRoom:(HMRoom *)room completionHandler:(void *)completion;
- (void)setHome:(id)a3;
- (void)setName:(id)a3;
- (void)setUuid:(id)a3;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
@end

@implementation HMZone

- (BOOL)mergeFromNewObject:(id)a3
{
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
  if (v6)
  {
    v7 = [HMObjectMergeCollection alloc];
    v8 = [(HMZone *)self currentRooms];
    v9 = [v8 array];
    v10 = [v6 currentRooms];
    v11 = [v10 array];
    v12 = [(HMObjectMergeCollection *)v7 initWithCurrentObjects:v9 newObjects:v11];

    v13 = [(HMObjectMergeCollection *)v12 removedObjects];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __29__HMZone_mergeFromNewObject___block_invoke;
    v37[3] = &unk_1E754BEE8;
    v37[4] = self;
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v37];

    v14 = [(HMZone *)self home];
    v15 = [v14 rooms];
    [(HMObjectMergeCollection *)v12 replaceAddedObjectsWithObjects:v15];

    v16 = [(HMObjectMergeCollection *)v12 addedObjects];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __29__HMZone_mergeFromNewObject___block_invoke_39;
    v36[3] = &unk_1E754BEE8;
    v36[4] = self;
    [v16 hmf_enumerateWithAutoreleasePoolUsingBlock:v36];

    v17 = [(HMObjectMergeCollection *)v12 finalObjects];
    v18 = [(HMZone *)self currentRooms];
    [v18 setArray:v17];

    v19 = [(HMObjectMergeCollection *)v12 removedObjects];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __29__HMZone_mergeFromNewObject___block_invoke_40;
    v35[3] = &unk_1E754BEE8;
    v35[4] = self;
    [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v35];

    v20 = [(HMObjectMergeCollection *)v12 addedObjects];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __29__HMZone_mergeFromNewObject___block_invoke_43;
    v34[3] = &unk_1E754BEE8;
    v34[4] = self;
    [v20 hmf_enumerateWithAutoreleasePoolUsingBlock:v34];

    v21 = [(HMObjectMergeCollection *)v12 isModified];
    v22 = [(HMZone *)self name];
    v23 = [v6 name];
    LOBYTE(v11) = [v22 isEqualToString:v23];

    if ((v11 & 1) == 0)
    {
      v24 = [v6 name];
      name = self->_name;
      self->_name = v24;

      v26 = [(HMZone *)self home];
      v27 = [v26 delegate];
      if (objc_opt_respondsToSelector())
      {
        v28 = [(HMZone *)self context];
        v29 = [v28 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __29__HMZone_mergeFromNewObject___block_invoke_50;
        block[3] = &unk_1E754E5E8;
        block[4] = self;
        v32 = v27;
        v33 = v26;
        dispatch_async(v29, block);
      }

      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __29__HMZone_mergeFromNewObject___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed room via zone merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __29__HMZone_mergeFromNewObject___block_invoke_39(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added room via zone merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __29__HMZone_mergeFromNewObject___block_invoke_40(uint64_t a1, void *a2)
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
    v8[2] = __29__HMZone_mergeFromNewObject___block_invoke_2;
    v8[3] = &unk_1E754DE30;
    v8[4] = *(a1 + 32);
    v9 = v3;
    v10 = v5;
    v11 = v4;
    dispatch_async(v7, v8);
  }
}

void __29__HMZone_mergeFromNewObject___block_invoke_43(uint64_t a1, void *a2)
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
    v8[2] = __29__HMZone_mergeFromNewObject___block_invoke_2_46;
    v8[3] = &unk_1E754DE30;
    v8[4] = *(a1 + 32);
    v9 = v3;
    v10 = v5;
    v11 = v4;
    dispatch_async(v7, v8);
  }
}

void __29__HMZone_mergeFromNewObject___block_invoke_50(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HMZone_mergeFromNewObject___block_invoke_2_51;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __29__HMZone_mergeFromNewObject___block_invoke_2_51(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 32);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateNameForZone:%@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) home:*(a1 + 48) didUpdateNameForZone:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __29__HMZone_mergeFromNewObject___block_invoke_2_46(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__HMZone_mergeFromNewObject___block_invoke_3_47;
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

uint64_t __29__HMZone_mergeFromNewObject___block_invoke_3_47(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didAddRoom:toZone: with room: %@, zone: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) home:*(a1 + 56) didAddRoom:*(a1 + 40) toZone:*(a1 + 32)];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __29__HMZone_mergeFromNewObject___block_invoke_2(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__HMZone_mergeFromNewObject___block_invoke_3;
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

uint64_t __29__HMZone_mergeFromNewObject___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didRemoveRoom:fromZone: with room: %@, zone: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) home:*(a1 + 56) didRemoveRoom:*(a1 + 40) fromZone:*(a1 + 32)];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (HMZone)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneUUID"];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  v8 = [(HMZone *)self initWithName:v5 uuid:v7];
  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v8->_home, v9);

    currentRooms = v8->_currentRooms;
    v11 = [v4 hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"rooms"];
    [(HMMutableArray *)currentRooms setArray:v11];
  }

  return v8;
}

- (void)_removeRoom:(id)a3
{
  v4 = a3;
  v5 = [(HMZone *)self currentRooms];
  [v5 removeObject:v4];
}

- (id)roomWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMZone *)self currentRooms];
  v6 = [v5 firstItemWithUUID:v4];

  return v6;
}

- (void)_removeRoom:(id)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMZone *)self context];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = [(HMZone *)self home];
      if (v10)
      {
        v11 = [v9 messageDispatcher];

        if (v11)
        {
          v12 = [(HMZone *)self currentRooms];
          v13 = [v12 containsObject:v6];

          if (v13)
          {
            v14 = [v6 uuid];
            v15 = [(HMZone *)self uuid];
            v32 = @"kRoomUUID";
            v16 = [v14 UUIDString];
            v33 = v16;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __40__HMZone__removeRoom_completionHandler___block_invoke;
            v27[3] = &unk_1E754D030;
            v28 = v9;
            v30 = v14;
            v31 = v7;
            v29 = self;
            v18 = v14;
            [(_HMContext *)v28 sendMessage:v15 target:v17 payload:v27 responseHandler:?];

LABEL_16:
            goto LABEL_17;
          }

          v18 = [v9 delegateCaller];
          v23 = MEMORY[0x1E696ABC0];
          v24 = 2;
        }

        else
        {
          v18 = [v9 delegateCaller];
          v23 = MEMORY[0x1E696ABC0];
          v24 = 21;
        }
      }

      else
      {
        v18 = [v9 delegateCaller];
        v23 = MEMORY[0x1E696ABC0];
        v24 = 12;
      }

      v25 = [v23 hmErrorWithCode:v24];
      [v18 callCompletion:v7 error:v25];

      goto LABEL_16;
    }

    v10 = [v8 delegateCaller];
    v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v10 callCompletion:v7 error:v18];
    goto LABEL_16;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v22;
    v36 = 2080;
    v37 = "[HMZone _removeRoom:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  if (v7)
  {
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v10);
LABEL_17:
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __40__HMZone__removeRoom_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [*(a1 + 32) delegateCaller];
    [v3 callCompletion:*(a1 + 56) error:v7];
  }

  else
  {
    v4 = [*(a1 + 40) home];
    v3 = [v4 roomWithUUID:*(a1 + 48)];

    if (v3)
    {
      v5 = [*(a1 + 40) currentRooms];
      [v5 removeObject:v3];
    }

    v6 = [*(a1 + 32) delegateCaller];
    [v6 callCompletion:*(a1 + 56) error:0];
  }
}

- (void)removeRoom:(HMRoom *)room completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = room;
  v7 = completion;
  v8 = [(HMZone *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMZone removeRoom:completionHandler:]", @"completion"];
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
    block[2] = __39__HMZone_removeRoom_completionHandler___block_invoke;
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
      v29 = "[HMZone removeRoom:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_addRoom:(id)a3 completionHandler:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMZone *)self context];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = [v6 uuid];

      if (v10)
      {
        v11 = [(HMZone *)self home];
        if (v11)
        {
          v12 = [v6 home];
          v13 = [v12 uuid];
          v14 = [v11 uuid];
          v15 = [v13 isEqual:v14];

          if (v15)
          {
            v16 = [v6 uuid];
            v17 = [v11 roomForEntireHome];
            v18 = [v17 uuid];
            v19 = [v16 isEqual:v18];

            if (v19)
            {
              v20 = [v9 delegateCaller];
              v21 = MEMORY[0x1E696ABC0];
              v22 = 24;
            }

            else
            {
              v31 = [(HMZone *)self currentRooms];
              v32 = [v31 containsObject:v6];

              if (!v32)
              {
                v33 = [v6 uuid];
                v34 = [(HMZone *)self uuid];
                v42 = @"kRoomUUID";
                v35 = [v33 UUIDString];
                v43 = v35;
                v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
                v37[0] = MEMORY[0x1E69E9820];
                v37[1] = 3221225472;
                v37[2] = __37__HMZone__addRoom_completionHandler___block_invoke;
                v37[3] = &unk_1E754D030;
                v38 = v9;
                v40 = v33;
                v41 = v7;
                v39 = self;
                v20 = v33;
                [(_HMContext *)v38 sendMessage:v34 target:v36 payload:v37 responseHandler:?];

                goto LABEL_18;
              }

              v20 = [v9 delegateCaller];
              v21 = MEMORY[0x1E696ABC0];
              v22 = 1;
            }
          }

          else
          {
            v20 = [v9 delegateCaller];
            v21 = MEMORY[0x1E696ABC0];
            v22 = 11;
          }
        }

        else
        {
          v20 = [v9 delegateCaller];
          v21 = MEMORY[0x1E696ABC0];
          v22 = 12;
        }

        v29 = [v21 hmErrorWithCode:v22];
        [v20 callCompletion:v7 error:v29];

LABEL_18:
        goto LABEL_19;
      }

      v11 = [v9 delegateCaller];
      v27 = MEMORY[0x1E696ABC0];
      v28 = 21;
    }

    else
    {
      v11 = [v8 delegateCaller];
      v27 = MEMORY[0x1E696ABC0];
      v28 = 20;
    }

    v20 = [v27 hmErrorWithCode:v28];
    [v11 callCompletion:v7 error:v20];
    goto LABEL_18;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v26;
    v46 = 2080;
    v47 = "[HMZone _addRoom:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  if (v7)
  {
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v11);
LABEL_19:
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __37__HMZone__addRoom_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [*(a1 + 32) delegateCaller];
    [v3 callCompletion:*(a1 + 56) error:v7];
  }

  else
  {
    v4 = [*(a1 + 40) home];
    v3 = [v4 roomWithUUID:*(a1 + 48)];

    if (v3)
    {
      v5 = [*(a1 + 40) currentRooms];
      [v5 addObjectIfNotPresent:v3];
    }

    v6 = [*(a1 + 32) delegateCaller];
    [v6 callCompletion:*(a1 + 56) error:0];
  }
}

- (void)addRoom:(HMRoom *)room completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = room;
  v7 = completion;
  v8 = [(HMZone *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMZone addRoom:completionHandler:]", @"completion"];
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
    block[2] = __36__HMZone_addRoom_completionHandler___block_invoke;
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
      v29 = "[HMZone addRoom:completionHandler:]";
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
  v8 = [(HMZone *)self context];
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
        v15 = [(HMZone *)self home];
        if (!v15)
        {
          v22 = [v9 delegateCaller];
          v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
          [v22 callCompletion:v7 error:v29];

          goto LABEL_16;
        }

        v27 = [(HMZone *)self name];
        v28 = [v27 isEqualToString:v6];

        if (!v28)
        {
          v30 = [(HMZone *)self uuid];
          v36 = @"kZoneName";
          v37 = v6;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __40__HMZone__updateName_completionHandler___block_invoke;
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
    v41 = "[HMZone _updateName:completionHandler:]";
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

void __40__HMZone__updateName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v9 = [a3 hmf_stringForKey:@"kZoneName"];
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
  v8 = [(HMZone *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMZone updateName:completionHandler:]", @"completion"];
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
    block[2] = __39__HMZone_updateName_completionHandler___block_invoke;
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
      v29 = "[HMZone updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)assistantIdentifier
{
  v2 = [(HMZone *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"ZN", v2, 0);

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

- (NSArray)rooms
{
  v2 = [(HMZone *)self currentRooms];
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
  v7 = a3;
  [(HMZone *)self setHome:a4];
  v6 = v7;
  if (v7)
  {
    [(HMZone *)self setContext:v7];
    v6 = v7;
  }
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
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring zone", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMZone *)v5 setHome:0];
    [(HMZone *)v5 setContext:0];
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

- (HMZone)initWithName:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HMZone;
  v8 = [(HMZone *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v7];
    uuid = v8->_uuid;
    v8->_uuid = v11;

    v13 = +[HMMutableArray array];
    currentRooms = v8->_currentRooms;
    v8->_currentRooms = v13;
  }

  return v8;
}

@end
@interface HMZone
- (BOOL)mergeFromNewObject:(id)object;
- (HMHome)home;
- (HMZone)initWithCoder:(id)coder;
- (HMZone)initWithName:(id)name uuid:(id)uuid;
- (NSArray)rooms;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (NSUUID)uuid;
- (id)assistantIdentifier;
- (id)roomWithUUID:(id)d;
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_addRoom:(id)room completionHandler:(id)handler;
- (void)_removeRoom:(id)room;
- (void)_removeRoom:(id)room completionHandler:(id)handler;
- (void)_unconfigure;
- (void)_updateName:(id)name completionHandler:(id)handler;
- (void)addRoom:(HMRoom *)room completionHandler:(void *)completion;
- (void)removeRoom:(HMRoom *)room completionHandler:(void *)completion;
- (void)setHome:(id)home;
- (void)setName:(id)name;
- (void)setUuid:(id)uuid;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
@end

@implementation HMZone

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [HMObjectMergeCollection alloc];
    currentRooms = [(HMZone *)self currentRooms];
    array = [currentRooms array];
    currentRooms2 = [v6 currentRooms];
    array2 = [currentRooms2 array];
    v12 = [(HMObjectMergeCollection *)v7 initWithCurrentObjects:array newObjects:array2];

    removedObjects = [(HMObjectMergeCollection *)v12 removedObjects];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __29__HMZone_mergeFromNewObject___block_invoke;
    v37[3] = &unk_1E754BEE8;
    v37[4] = self;
    [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v37];

    home = [(HMZone *)self home];
    rooms = [home rooms];
    [(HMObjectMergeCollection *)v12 replaceAddedObjectsWithObjects:rooms];

    addedObjects = [(HMObjectMergeCollection *)v12 addedObjects];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __29__HMZone_mergeFromNewObject___block_invoke_39;
    v36[3] = &unk_1E754BEE8;
    v36[4] = self;
    [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v36];

    finalObjects = [(HMObjectMergeCollection *)v12 finalObjects];
    currentRooms3 = [(HMZone *)self currentRooms];
    [currentRooms3 setArray:finalObjects];

    removedObjects2 = [(HMObjectMergeCollection *)v12 removedObjects];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __29__HMZone_mergeFromNewObject___block_invoke_40;
    v35[3] = &unk_1E754BEE8;
    v35[4] = self;
    [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v35];

    addedObjects2 = [(HMObjectMergeCollection *)v12 addedObjects];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __29__HMZone_mergeFromNewObject___block_invoke_43;
    v34[3] = &unk_1E754BEE8;
    v34[4] = self;
    [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v34];

    isModified = [(HMObjectMergeCollection *)v12 isModified];
    name = [(HMZone *)self name];
    name2 = [v6 name];
    LOBYTE(array2) = [name isEqualToString:name2];

    if ((array2 & 1) == 0)
    {
      name3 = [v6 name];
      name = self->_name;
      self->_name = name3;

      home2 = [(HMZone *)self home];
      delegate = [home2 delegate];
      if (objc_opt_respondsToSelector())
      {
        context = [(HMZone *)self context];
        queue = [context queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __29__HMZone_mergeFromNewObject___block_invoke_50;
        block[3] = &unk_1E754E5E8;
        block[4] = self;
        v32 = delegate;
        v33 = home2;
        dispatch_async(queue, block);
      }

      isModified = 1;
    }
  }

  else
  {
    isModified = 0;
  }

  return isModified;
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

- (HMZone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneUUID"];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  v8 = [(HMZone *)self initWithName:v5 uuid:v7];
  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v8->_home, v9);

    currentRooms = v8->_currentRooms;
    v11 = [coderCopy hm_decodeArrayOfConditionalObjects:objc_opt_class() forKey:@"rooms"];
    [(HMMutableArray *)currentRooms setArray:v11];
  }

  return v8;
}

- (void)_removeRoom:(id)room
{
  roomCopy = room;
  currentRooms = [(HMZone *)self currentRooms];
  [currentRooms removeObject:roomCopy];
}

- (id)roomWithUUID:(id)d
{
  dCopy = d;
  currentRooms = [(HMZone *)self currentRooms];
  v6 = [currentRooms firstItemWithUUID:dCopy];

  return v6;
}

- (void)_removeRoom:(id)room completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  roomCopy = room;
  handlerCopy = handler;
  context = [(HMZone *)self context];
  v9 = context;
  if (context)
  {
    if (roomCopy)
    {
      home = [(HMZone *)self home];
      if (home)
      {
        messageDispatcher = [v9 messageDispatcher];

        if (messageDispatcher)
        {
          currentRooms = [(HMZone *)self currentRooms];
          v13 = [currentRooms containsObject:roomCopy];

          if (v13)
          {
            uuid = [roomCopy uuid];
            uuid2 = [(HMZone *)self uuid];
            v32 = @"kRoomUUID";
            uUIDString = [uuid UUIDString];
            v33 = uUIDString;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __40__HMZone__removeRoom_completionHandler___block_invoke;
            v27[3] = &unk_1E754D030;
            v28 = v9;
            v30 = uuid;
            v31 = handlerCopy;
            selfCopy = self;
            delegateCaller = uuid;
            [(_HMContext *)v28 sendMessage:uuid2 target:v17 payload:v27 responseHandler:?];

LABEL_16:
            goto LABEL_17;
          }

          delegateCaller = [v9 delegateCaller];
          v23 = MEMORY[0x1E696ABC0];
          v24 = 2;
        }

        else
        {
          delegateCaller = [v9 delegateCaller];
          v23 = MEMORY[0x1E696ABC0];
          v24 = 21;
        }
      }

      else
      {
        delegateCaller = [v9 delegateCaller];
        v23 = MEMORY[0x1E696ABC0];
        v24 = 12;
      }

      v25 = [v23 hmErrorWithCode:v24];
      [delegateCaller callCompletion:handlerCopy error:v25];

      goto LABEL_16;
    }

    home = [context delegateCaller];
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [home callCompletion:handlerCopy error:delegateCaller];
    goto LABEL_16;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
  if (handlerCopy)
  {
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
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
  context = [(HMZone *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMZone removeRoom:completionHandler:]", @"completion"];
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
    block[2] = __39__HMZone_removeRoom_completionHandler___block_invoke;
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
      v29 = "[HMZone removeRoom:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_addRoom:(id)room completionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  roomCopy = room;
  handlerCopy = handler;
  context = [(HMZone *)self context];
  v9 = context;
  if (context)
  {
    if (roomCopy)
    {
      uuid = [roomCopy uuid];

      if (uuid)
      {
        home = [(HMZone *)self home];
        if (home)
        {
          home2 = [roomCopy home];
          uuid2 = [home2 uuid];
          uuid3 = [home uuid];
          v15 = [uuid2 isEqual:uuid3];

          if (v15)
          {
            uuid4 = [roomCopy uuid];
            roomForEntireHome = [home roomForEntireHome];
            uuid5 = [roomForEntireHome uuid];
            v19 = [uuid4 isEqual:uuid5];

            if (v19)
            {
              delegateCaller = [v9 delegateCaller];
              v21 = MEMORY[0x1E696ABC0];
              v22 = 24;
            }

            else
            {
              currentRooms = [(HMZone *)self currentRooms];
              v32 = [currentRooms containsObject:roomCopy];

              if (!v32)
              {
                uuid6 = [roomCopy uuid];
                uuid7 = [(HMZone *)self uuid];
                v42 = @"kRoomUUID";
                uUIDString = [uuid6 UUIDString];
                v43 = uUIDString;
                v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
                v37[0] = MEMORY[0x1E69E9820];
                v37[1] = 3221225472;
                v37[2] = __37__HMZone__addRoom_completionHandler___block_invoke;
                v37[3] = &unk_1E754D030;
                v38 = v9;
                v40 = uuid6;
                v41 = handlerCopy;
                selfCopy = self;
                delegateCaller = uuid6;
                [(_HMContext *)v38 sendMessage:uuid7 target:v36 payload:v37 responseHandler:?];

                goto LABEL_18;
              }

              delegateCaller = [v9 delegateCaller];
              v21 = MEMORY[0x1E696ABC0];
              v22 = 1;
            }
          }

          else
          {
            delegateCaller = [v9 delegateCaller];
            v21 = MEMORY[0x1E696ABC0];
            v22 = 11;
          }
        }

        else
        {
          delegateCaller = [v9 delegateCaller];
          v21 = MEMORY[0x1E696ABC0];
          v22 = 12;
        }

        v29 = [v21 hmErrorWithCode:v22];
        [delegateCaller callCompletion:handlerCopy error:v29];

LABEL_18:
        goto LABEL_19;
      }

      home = [v9 delegateCaller];
      v27 = MEMORY[0x1E696ABC0];
      v28 = 21;
    }

    else
    {
      home = [context delegateCaller];
      v27 = MEMORY[0x1E696ABC0];
      v28 = 20;
    }

    delegateCaller = [v27 hmErrorWithCode:v28];
    [home callCompletion:handlerCopy error:delegateCaller];
    goto LABEL_18;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
  if (handlerCopy)
  {
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
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
  context = [(HMZone *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMZone addRoom:completionHandler:]", @"completion"];
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
    block[2] = __36__HMZone_addRoom_completionHandler___block_invoke;
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
      v29 = "[HMZone addRoom:completionHandler:]";
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
  context = [(HMZone *)self context];
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
        home = [(HMZone *)self home];
        if (!home)
        {
          delegateCaller = [v9 delegateCaller];
          v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
          [delegateCaller callCompletion:handlerCopy error:v29];

          goto LABEL_16;
        }

        name = [(HMZone *)self name];
        v28 = [name isEqualToString:nameCopy];

        if (!v28)
        {
          uuid = [(HMZone *)self uuid];
          v36 = @"kZoneName";
          v37 = nameCopy;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __40__HMZone__updateName_completionHandler___block_invoke;
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
    v41 = "[HMZone _updateName:completionHandler:]";
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
  context = [(HMZone *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMZone updateName:completionHandler:]", @"completion"];
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
    block[2] = __39__HMZone_updateName_completionHandler___block_invoke;
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
  uuid = [(HMZone *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"ZN", uuid, 0);

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

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uuidCopy];
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
  currentRooms = [(HMZone *)self currentRooms];
  array = [currentRooms array];

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
  contextCopy = context;
  [(HMZone *)self setHome:home];
  v6 = contextCopy;
  if (contextCopy)
  {
    [(HMZone *)self setContext:contextCopy];
    v6 = contextCopy;
  }
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
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring zone", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMZone *)selfCopy setHome:0];
    [(HMZone *)selfCopy setContext:0];
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

- (HMZone)initWithName:(id)name uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v16.receiver = self;
  v16.super_class = HMZone;
  v8 = [(HMZone *)&v16 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:uuidCopy];
    uuid = v8->_uuid;
    v8->_uuid = v11;

    v13 = +[HMMutableArray array];
    currentRooms = v8->_currentRooms;
    v8->_currentRooms = v13;
  }

  return v8;
}

@end
@interface HMSoftwareUpdateController
+ (id)logCategory;
+ (id)namespace;
- (BOOL)isControllable;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessory)accessory;
- (HMSoftwareUpdate)availableUpdate;
- (HMSoftwareUpdateController)init;
- (HMSoftwareUpdateController)initWithAccessory:(id)accessory;
- (HMSoftwareUpdateControllerDelegate)delegate;
- (NSUUID)messageTargetUUID;
- (id)logIdentifier;
- (id)messageDestination;
- (unint64_t)hash;
- (void)changeUpdateSource:(int64_t)source path:(id)path documentationPath:(id)documentationPath userInitiatedStaging:(BOOL)staging completion:(id)completion;
- (void)configureWithContext:(id)context accessory:(id)accessory;
- (void)fetchAvailableUpdateWithCompletionHandler:(id)handler;
- (void)removeStagedSoftwareUpdate:(id)update;
- (void)setAccessory:(id)accessory;
- (void)setAvailableUpdate:(id)update;
- (void)startUpdate:(id)update completionHandler:(id)handler;
@end

@implementation HMSoftwareUpdateController

- (HMSoftwareUpdateControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMSoftwareUpdateController *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  accessory = [(HMSoftwareUpdateController *)self accessory];
  messageTargetUUID = [accessory messageTargetUUID];

  return messageTargetUUID;
}

- (id)logIdentifier
{
  accessory = [(HMSoftwareUpdateController *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (BOOL)mergeFromNewObject:(id)object
{
  v28 = *MEMORY[0x1E69E9840];
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
    availableUpdate = [v6 availableUpdate];
    availableUpdate2 = [(HMSoftwareUpdateController *)self availableUpdate];
    v9 = HMFEqualObjects();

    if (v9)
    {
      availableUpdate3 = [(HMSoftwareUpdateController *)self availableUpdate];
      [availableUpdate3 mergeFromNewObject:availableUpdate];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v15;
        v26 = 2112;
        v27 = availableUpdate;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updating available software update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [(HMSoftwareUpdateController *)selfCopy setAvailableUpdate:availableUpdate];
      delegate = [(HMSoftwareUpdateController *)selfCopy delegate];
      if (objc_opt_respondsToSelector())
      {
        context = [(HMSoftwareUpdateController *)selfCopy context];
        queue = [context queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__HMSoftwareUpdateController_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E754E5E8;
        block[4] = selfCopy;
        v22 = availableUpdate;
        v23 = delegate;
        dispatch_async(queue, block);
      }
    }

    v11 = v9 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

void __49__HMSoftwareUpdateController_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__HMSoftwareUpdateController_mergeFromNewObject___block_invoke_2;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __49__HMSoftwareUpdateController_mergeFromNewObject___block_invoke_2(uint64_t a1)
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of available software update: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) softwareUpdateController:*(a1 + 32) didUpdateAvailableUpdate:*(a1 + 40)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeStagedSoftwareUpdate:(id)update
{
  v30 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (!updateCopy)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdateController removeStagedSoftwareUpdate:]", @"completion"];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0];
    objc_exception_throw(v20);
  }

  v5 = updateCopy;
  context = [(HMSoftwareUpdateController *)self context];

  if (context)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v27 = __Block_byref_object_copy__16737;
    v28 = __Block_byref_object_dispose__16738;
    accessory = [(HMSoftwareUpdateController *)self accessory];
    objc_initWeak(&location, self);
    context2 = [(HMSoftwareUpdateController *)self context];
    queue = [context2 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HMSoftwareUpdateController_removeStagedSoftwareUpdate___block_invoke;
    block[3] = &unk_1E75480A0;
    objc_copyWeak(&v24, &location);
    v23 = buf;
    v22 = v5;
    dispatch_async(queue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "[HMSoftwareUpdateController removeStagedSoftwareUpdate:]";
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v5)[2](v5, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __57__HMSoftwareUpdateController_removeStagedSoftwareUpdate___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(*(*(a1 + 40) + 8) + 40);
    *buf = 138543618;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@removing staged software update from accessory %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = MEMORY[0x1E69A2A10];
  v9 = [v4 messageDestination];
  v10 = [v8 messageWithName:@"HMSU.rsu" destination:v9 payload:0];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __57__HMSoftwareUpdateController_removeStagedSoftwareUpdate___block_invoke_114;
  v17 = &unk_1E754DE00;
  v18 = v4;
  v19 = *(a1 + 32);
  [v10 setResponseHandler:&v14];
  v11 = [v4 context];
  v12 = [v11 messageDispatcher];
  [v12 sendMessage:v10];

  v13 = *MEMORY[0x1E69E9840];
}

void __57__HMSoftwareUpdateController_removeStagedSoftwareUpdate___block_invoke_114(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v5;
    v12 = "%{public}@Failed to remove staged software update with error: %@";
    v13 = v9;
    v14 = 22;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    v12 = "%{public}@Successfully removed staged software update";
    v13 = v9;
    v14 = 12;
  }

  _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, v12, &v18, v14);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  if (*(a1 + 40))
  {
    v15 = [*(a1 + 32) context];
    v16 = [v15 delegateCaller];
    [v16 callCompletion:*(a1 + 40) error:v5];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)changeUpdateSource:(int64_t)source path:(id)path documentationPath:(id)documentationPath userInitiatedStaging:(BOOL)staging completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  documentationPathCopy = documentationPath;
  completionCopy = completion;
  if (source == 2 && ![pathCopy length])
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = HMSoftwareUpdateAssetSourceAsString(2);
      *buf = 138543618;
      v48 = v33;
      v49 = 2112;
      v50 = v34;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Path is a required parameter for source %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v35 = MEMORY[0x1E695DF30];
    v36 = *MEMORY[0x1E695D940];
    v37 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:20];
    v38 = [v35 exceptionWithName:v36 reason:v37 userInfo:0];
    v39 = v38;

    objc_exception_throw(v38);
  }

  context = [(HMSoftwareUpdateController *)self context];
  if (!completionCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdateController changeUpdateSource:path:documentationPath:userInitiatedStaging:completion:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v28;
      v49 = 2112;
      v50 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v16 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__HMSoftwareUpdateController_changeUpdateSource_path_documentationPath_userInitiatedStaging_completion___block_invoke;
    block[3] = &unk_1E7548078;
    block[4] = self;
    sourceCopy = source;
    v41 = pathCopy;
    v42 = documentationPathCopy;
    stagingCopy = staging;
    v44 = completionCopy;
    v43 = v16;
    dispatch_async(queue, block);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v21;
      v49 = 2080;
      v50 = "[HMSoftwareUpdateController changeUpdateSource:path:documentationPath:userInitiatedStaging:completion:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __104__HMSoftwareUpdateController_changeUpdateSource_path_documentationPath_userInitiatedStaging_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMSoftwareUpdateAssetSourceAsString(*(a1 + 72));
    *buf = 138543618;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Change update source to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  [v7 setObject:v8 forKeyedSubscript:@"source"];

  v9 = *(a1 + 40);
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"path"];
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    [v7 setObject:v10 forKeyedSubscript:@"docpath"];
  }

  if (*(a1 + 80) == 1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v7 setObject:v11 forKeyedSubscript:@"userInitiated"];
  }

  v12 = MEMORY[0x1E69A2A10];
  v13 = [*(a1 + 32) messageDestination];
  v14 = [v7 copy];
  v15 = [v12 messageWithName:@"HMSU.cus" destination:v13 payload:v14];

  objc_initWeak(buf, *(a1 + 32));
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __104__HMSoftwareUpdateController_changeUpdateSource_path_documentationPath_userInitiatedStaging_completion___block_invoke_113;
  v21 = &unk_1E754CFF8;
  objc_copyWeak(&v23, buf);
  v22 = *(a1 + 64);
  [v15 setResponseHandler:&v18];
  v16 = [*(a1 + 56) messageDispatcher];
  [v16 sendMessage:v15 completionHandler:0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x1E69E9840];
}

void __104__HMSoftwareUpdateController_changeUpdateSource_path_documentationPath_userInitiatedStaging_completion___block_invoke_113(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    v13 = "%{public}@Failed to change update source with error: %@";
    v14 = v10;
    v15 = 22;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v12;
    v13 = "%{public}@Successfully changed update source";
    v14 = v10;
    v15 = 12;
  }

  _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, v13, &v19, v15);

LABEL_7:
  objc_autoreleasePoolPop(v8);
  if (*(a1 + 32))
  {
    v16 = [v9 context];
    v17 = [v16 delegateCaller];
    [v17 callCompletion:*(a1 + 32) error:v5];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)startUpdate:(id)update completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  handlerCopy = handler;
  if (!updateCopy)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v21;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Update is a required parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];
    v24 = [MEMORY[0x1E696ABC0] hmStringFromErrorCode:20];
    v25 = [v22 exceptionWithName:v23 reason:v24 userInfo:0];
    v26 = v25;

    objc_exception_throw(v25);
  }

  v8 = handlerCopy;
  context = [(HMSoftwareUpdateController *)self context];
  if (!v8)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdateController startUpdate:completionHandler:]", @"completionHandler"];
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v31;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v32);
  }

  v10 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__HMSoftwareUpdateController_startUpdate_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    block[4] = self;
    v34 = updateCopy;
    v36 = v8;
    v35 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v15;
      v39 = 2080;
      v40 = "[HMSoftwareUpdateController startUpdate:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v8)[2](v8, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __60__HMSoftwareUpdateController_startUpdate_completionHandler___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting update: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v20 = @"update";
  v7 = encodeRootObject(a1[5]);
  v21 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  v9 = MEMORY[0x1E69A2A10];
  v10 = [a1[4] messageDestination];
  v11 = [v9 messageWithName:@"HMSU.su" destination:v10 payload:v8];

  objc_initWeak(buf, a1[4]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __60__HMSoftwareUpdateController_startUpdate_completionHandler___block_invoke_107;
  v17 = &unk_1E754CFF8;
  objc_copyWeak(&v19, buf);
  v18 = a1[7];
  [v11 setResponseHandler:&v14];
  v12 = [a1[6] messageDispatcher];
  [v12 sendMessage:v11 completionHandler:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x1E69E9840];
}

void __60__HMSoftwareUpdateController_startUpdate_completionHandler___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v12;
    v21 = 2114;
    v22 = v5;
    v13 = "%{public}@Failed to start updates with error: %{public}@";
    v14 = v10;
    v15 = 22;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v12;
    v13 = "%{public}@Successfully started update";
    v14 = v10;
    v15 = 12;
  }

  _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, v13, &v19, v15);

LABEL_7:
  objc_autoreleasePoolPop(v8);
  if (*(a1 + 32))
  {
    v16 = [v9 context];
    v17 = [v16 delegateCaller];
    [v17 callCompletion:*(a1 + 32) error:v5];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)fetchAvailableUpdateWithCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMSoftwareUpdateController *)self context];
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdateController fetchAvailableUpdateWithCompletionHandler:]", @"completionHandler"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__HMSoftwareUpdateController_fetchAvailableUpdateWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v22 = handlerCopy;
    v21 = v6;
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
      v24 = v11;
      v25 = 2080;
      v26 = "[HMSoftwareUpdateController fetchAvailableUpdateWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __72__HMSoftwareUpdateController_fetchAvailableUpdateWithCompletionHandler___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Fetching available updates", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = MEMORY[0x1E69A2A10];
  v7 = [a1[4] messageDestination];
  v8 = [v6 messageWithName:@"HMSU.fu" destination:v7 payload:0];

  objc_initWeak(buf, a1[4]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __72__HMSoftwareUpdateController_fetchAvailableUpdateWithCompletionHandler___block_invoke_99;
  v14 = &unk_1E754CFF8;
  objc_copyWeak(&v16, buf);
  v15 = a1[6];
  [v8 setResponseHandler:&v11];
  v9 = [a1[5] messageDispatcher];
  [v9 sendMessage:v8 completionHandler:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x1E69E9840];
}

void __72__HMSoftwareUpdateController_fetchAvailableUpdateWithCompletionHandler___block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v11;
      v51 = 2112;
      v52 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to fetched available updates with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = [v6 hmf_dataForKey:@"update"];
    if (v12)
    {
      v48 = 0;
      v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v48];
      v14 = v48;
      v15 = v14;
      if (!v13)
      {
        v16 = v14;
        v17 = objc_autoreleasePoolPush();
        v18 = WeakRetained;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v20 = v42 = v17;
          *buf = 138543618;
          v50 = v20;
          v51 = 2112;
          v52 = v16;
          _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update from software update data: %@", buf, 0x16u);

          v17 = v42;
        }

        objc_autoreleasePoolPop(v17);
        v15 = v16;
      }

      v21 = [WeakRetained availableUpdate];
      v22 = HMFEqualObjects();

      if ((v22 & 1) == 0)
      {
        v43 = v15;
        v23 = objc_autoreleasePoolPush();
        v24 = WeakRetained;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v26;
          v51 = 2112;
          v52 = v13;
          _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Updating available software update: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        [v24 setAvailableUpdate:v13];
        v27 = [v24 delegate];
        if (objc_opt_respondsToSelector())
        {
          v28 = objc_loadWeakRetained((a1 + 40));
          context = objc_autoreleasePoolPush();
          v29 = v28;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138543618;
            v50 = v31;
            v51 = 2112;
            v52 = v13;
            _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_INFO, "%{public}@Notifying client of available software update: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          v32 = [v29 context];
          v33 = [v32 delegateCaller];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __72__HMSoftwareUpdateController_fetchAvailableUpdateWithCompletionHandler___block_invoke_104;
          v44[3] = &unk_1E754E5E8;
          v45 = v27;
          v46 = v29;
          v47 = v13;
          [v33 invokeBlock:v44];
        }

        v15 = v43;
      }
    }

    else
    {
      v13 = 0;
    }

    v34 = objc_autoreleasePoolPush();
    v35 = WeakRetained;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v37;
      v51 = 2112;
      v52 = v13;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully fetched available update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
  }

  if (*(a1 + 32))
  {
    v38 = [WeakRetained context];
    v39 = [v38 delegateCaller];
    [v39 callCompletion:*(a1 + 32) error:v5];
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)setAvailableUpdate:(id)update
{
  updateCopy = update;
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_availableUpdate, update);
  context = [(HMSoftwareUpdateController *)self context];
  [updateCopy configureWithContext:context];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSoftwareUpdate)availableUpdate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_availableUpdate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isControllable
{
  accessory = [(HMSoftwareUpdateController *)self accessory];
  isControllable = [accessory isControllable];

  return isControllable;
}

- (void)setAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_accessory, accessoryCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessory)accessory
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)configureWithContext:(id)context accessory:(id)accessory
{
  objc_storeStrong(&self->_context, context);
  contextCopy = context;
  accessoryCopy = accessory;
  objc_storeWeak(&self->_accessory, accessoryCopy);

  availableUpdate = [(HMSoftwareUpdateController *)self availableUpdate];
  [availableUpdate configureWithContext:contextCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      accessory = [(HMSoftwareUpdateController *)self accessory];
      accessory2 = [(HMSoftwareUpdateController *)v6 accessory];
      v9 = [accessory isEqual:accessory2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  accessory = [(HMSoftwareUpdateController *)self accessory];
  v3 = [accessory hash];

  return v3;
}

- (HMSoftwareUpdateController)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v14.receiver = self;
  v14.super_class = HMSoftwareUpdateController;
  v5 = [(HMSoftwareUpdateController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessory, accessoryCopy);
    v7 = [MEMORY[0x1E695DF88] dataWithLength:16];
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    [uniqueIdentifier getUUIDBytes:{objc_msgSend(v7, "mutableBytes")}];

    v9 = objc_alloc(MEMORY[0x1E696AFB0]);
    v10 = +[HMSoftwareUpdateController namespace];
    v11 = [v9 initWithNamespace:v10 data:v7];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v11;
  }

  return v6;
}

- (HMSoftwareUpdateController)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t34 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t34, &__block_literal_global_116);
  }

  v3 = logCategory__hmf_once_v35;

  return v3;
}

uint64_t __41__HMSoftwareUpdateController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v35;
  logCategory__hmf_once_v35 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)namespace
{
  if (namespace_onceToken != -1)
  {
    dispatch_once(&namespace_onceToken, &__block_literal_global_16825);
  }

  v3 = namespace_namespace;

  return v3;
}

uint64_t __39__HMSoftwareUpdateController_namespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"514B3134-D00C-4B59-9FF6-7CA047DE7824"];
  v1 = namespace_namespace;
  namespace_namespace = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
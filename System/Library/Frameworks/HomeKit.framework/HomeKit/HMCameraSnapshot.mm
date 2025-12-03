@interface HMCameraSnapshot
+ (id)logCategory;
+ (id)shortDescription;
- (HMCameraSnapshot)init;
- (HMCameraSnapshot)initWithProfileUniqueIdentifier:(id)identifier slotIdentifier:(id)slotIdentifier aspectRatio:(double)ratio captureDate:(id)date;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (void)_releaseSlotIdentifier;
- (void)dealloc;
- (void)fillSlotWithCompletionHandler:(id)handler;
@end

@implementation HMCameraSnapshot

- (NSArray)attributeDescriptions
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  slotIdentifier = [(HMCameraSource *)self slotIdentifier];
  v5 = [v3 initWithName:@"Slot Identifier" value:slotIdentifier];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = MEMORY[0x1E696AD98];
  [(HMCameraSource *)self aspectRatio];
  v8 = [v7 numberWithDouble:?];
  v9 = [v6 initWithName:@"Aspect Ratio" value:v8];
  v16[1] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  captureDate = [(HMCameraSnapshot *)self captureDate];
  v12 = [v10 initWithName:@"Capture Date" value:captureDate];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)_releaseSlotIdentifier
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    slotIdentifier = [(HMCameraSource *)selfCopy slotIdentifier];
    *buf = 138543618;
    v21 = v6;
    v22 = 2112;
    v23 = slotIdentifier;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Releasing snapshot slot identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  context = [(HMCameraSource *)selfCopy context];
  if (!context)
  {
    _HMFPreconditionFailure();
  }

  v9 = context;
  v10 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraSource *)selfCopy profileUniqueIdentifier];
  v12 = [v10 initWithTarget:profileUniqueIdentifier];

  slotIdentifier2 = [(HMCameraSource *)selfCopy slotIdentifier];
  v19 = slotIdentifier2;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v15 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCameraSnapshotReleaseSnapshotMessage" destination:v12 payload:v14];
  messageDispatcher = [v9 messageDispatcher];
  [messageDispatcher sendMessage:v15];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fillSlotWithCompletionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    slotIdentifier = [(HMCameraSource *)selfCopy slotIdentifier];
    *buf = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = slotIdentifier;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Filling snapshot slot identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMCameraSnapshot *)selfCopy setDidFillSlot:1];
  context = [(HMCameraSource *)selfCopy context];
  if (!context)
  {
    _HMFPreconditionFailure();
  }

  v11 = context;
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  profileUniqueIdentifier = [(HMCameraSource *)selfCopy profileUniqueIdentifier];
  v14 = [v12 initWithTarget:profileUniqueIdentifier];

  v25 = @"kSlotIdentifierKey";
  slotIdentifier2 = [(HMCameraSource *)selfCopy slotIdentifier];
  v26 = slotIdentifier2;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

  v17 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCameraSnapshotFillSnapshotSlotMessage" destination:v14 payload:v16];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __50__HMCameraSnapshot_fillSlotWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E754E480;
  v22[4] = selfCopy;
  v23 = v11;
  v24 = handlerCopy;
  v18 = handlerCopy;
  v19 = v11;
  [v17 setResponseHandler:v22];
  messageDispatcher = [v19 messageDispatcher];
  [messageDispatcher sendMessage:v17];

  v21 = *MEMORY[0x1E69E9840];
}

void __50__HMCameraSnapshot_fillSlotWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
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
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      v12 = "%{public}@Failed to fill slot: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v18, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    v12 = "%{public}@Successfully filled slot";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (self->_didFillSlot)
  {
    [(HMCameraSnapshot *)self _releaseSlotIdentifier];
  }

  v3.receiver = self;
  v3.super_class = HMCameraSnapshot;
  [(HMCameraSnapshot *)&v3 dealloc];
}

- (HMCameraSnapshot)initWithProfileUniqueIdentifier:(id)identifier slotIdentifier:(id)slotIdentifier aspectRatio:(double)ratio captureDate:(id)date
{
  identifierCopy = identifier;
  slotIdentifierCopy = slotIdentifier;
  dateCopy = date;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!slotIdentifierCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (ratio == 0.0)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v13 = dateCopy;
  if (!dateCopy)
  {
LABEL_11:
    v18 = _HMFPreconditionFailure();
    return [(HMCameraSnapshot *)v18 init];
  }

  v20.receiver = self;
  v20.super_class = HMCameraSnapshot;
  v14 = [(HMCameraSource *)&v20 initWithProfileUniqueIdentifier:identifierCopy slotIdentifier:slotIdentifierCopy aspectRatio:ratio];
  if (v14)
  {
    v15 = [v13 copy];
    captureDate = v14->_captureDate;
    v14->_captureDate = v15;
  }

  return v14;
}

- (HMCameraSnapshot)init
{
  v3.receiver = self;
  v3.super_class = HMCameraSnapshot;
  return [(HMCameraSource *)&v3 init];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_6428 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_6428, &__block_literal_global_6429);
  }

  v3 = logCategory__hmf_once_v5_6430;

  return v3;
}

uint64_t __31__HMCameraSnapshot_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v5_6430 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

@end
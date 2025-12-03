@interface HMCameraBulletinBoardSmartNotification
+ (id)logCategory;
+ (id)predicateForSignificantEventTypes:(unint64_t)types personFamiliarityOptions:(unint64_t)options;
+ (id)shortDescription;
- (HMCameraUserSettings)cameraUserSettings;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)logIdentifier;
- (unint64_t)personFamiliarityOptions;
- (unint64_t)significantEventTypes;
- (void)commitWithCompletionHandler:(id)handler;
@end

@implementation HMCameraBulletinBoardSmartNotification

- (HMCameraUserSettings)cameraUserSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraUserSettings);

  return WeakRetained;
}

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMBulletinBoardNotification *)self isEnabled];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"Enabled" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  condition = [(HMBulletinBoardNotification *)self condition];
  v8 = [v6 initWithName:@"Condition" value:condition];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  cameraUserSettings = [(HMCameraBulletinBoardSmartNotification *)self cameraUserSettings];
  uniqueIdentifier = [cameraUserSettings uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)commitWithCompletionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMBulletinBoardNotification *)self context];
  if (!handlerCopy)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraBulletinBoardSmartNotification commitWithCompletionHandler:]", @"completion"];
    v33 = objc_autoreleasePoolPush();
    selfCopy = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v36;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v37 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v32 userInfo:0];
    objc_exception_throw(v37);
  }

  v6 = context;
  if (context)
  {
    cameraUserSettings = [(HMCameraBulletinBoardSmartNotification *)self cameraUserSettings];
    if (cameraUserSettings)
    {
      condition = [(HMBulletinBoardNotification *)self condition];
      v9 = [HMPredicateUtilities validatePredicate:condition];

      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      v13 = v12;
      if (v9)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v14;
          v40 = 2112;
          v41 = selfCopy2;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Committing camera bulletin board smart notification: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        condition2 = [(HMBulletinBoardNotification *)selfCopy2 condition];
        context2 = [HMPredicateUtilities rewritePredicateForDaemon:condition2 characteristicIsInvalid:0];

        [cameraUserSettings updateBulletinNotificationEnabled:-[HMBulletinBoardNotification isEnabled](selfCopy2 condition:"isEnabled") completionHandler:{context2, handlerCopy}];
        goto LABEL_18;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        condition3 = [(HMBulletinBoardNotification *)selfCopy2 condition];
        *buf = 138543618;
        v39 = v28;
        v40 = 2112;
        v41 = condition3;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid predicate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      context2 = [(HMBulletinBoardNotification *)selfCopy2 context];
      delegateCaller = [context2 delegateCaller];
      v26 = MEMORY[0x1E696ABC0];
      v27 = 3;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v24;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@No reference to cameraUserSettings, unable to commit change", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      context2 = [(HMBulletinBoardNotification *)selfCopy3 context];
      delegateCaller = [context2 delegateCaller];
      v26 = MEMORY[0x1E696ABC0];
      v27 = -1;
    }

    v30 = [v26 hmErrorWithCode:v27];
    [delegateCaller callCompletion:handlerCopy error:v30];

LABEL_18:
    goto LABEL_19;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v20;
    v40 = 2080;
    v41 = "[HMCameraBulletinBoardSmartNotification commitWithCompletionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  cameraUserSettings = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  handlerCopy[2](handlerCopy, cameraUserSettings);
LABEL_19:

  v31 = *MEMORY[0x1E69E9840];
}

- (unint64_t)personFamiliarityOptions
{
  condition = [(HMBulletinBoardNotification *)self condition];
  if (condition)
  {
    v3 = [objc_opt_class() personFamiliarityOptionsInPredicate:condition];
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (unint64_t)significantEventTypes
{
  condition = [(HMBulletinBoardNotification *)self condition];
  if (condition)
  {
    v3 = [objc_opt_class() significantEventTypesInPredicate:condition];
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5, &__block_literal_global_14678);
  }

  v3 = logCategory__hmf_once_v6;

  return v3;
}

uint64_t __53__HMCameraBulletinBoardSmartNotification_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6;
  logCategory__hmf_once_v6 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)predicateForSignificantEventTypes:(unint64_t)types personFamiliarityOptions:(unint64_t)options
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = [self predicateForSignificantEventTypes:types];
  v7 = v6;
  if (options)
  {
    v8 = [self predicateForPersonFamiliarityOptions:options];
    v9 = MEMORY[0x1E696AB28];
    v14[0] = v7;
    v14[1] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = v6;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end
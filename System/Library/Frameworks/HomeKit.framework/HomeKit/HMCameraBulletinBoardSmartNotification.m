@interface HMCameraBulletinBoardSmartNotification
+ (id)logCategory;
+ (id)predicateForSignificantEventTypes:(unint64_t)a3 personFamiliarityOptions:(unint64_t)a4;
+ (id)shortDescription;
- (HMCameraUserSettings)cameraUserSettings;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)logIdentifier;
- (unint64_t)personFamiliarityOptions;
- (unint64_t)significantEventTypes;
- (void)commitWithCompletionHandler:(id)a3;
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
  v7 = [(HMBulletinBoardNotification *)self condition];
  v8 = [v6 initWithName:@"Condition" value:v7];
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
  v2 = [(HMCameraBulletinBoardSmartNotification *)self cameraUserSettings];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)commitWithCompletionHandler:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMBulletinBoardNotification *)self context];
  if (!v4)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraBulletinBoardSmartNotification commitWithCompletionHandler:]", @"completion"];
    v33 = objc_autoreleasePoolPush();
    v34 = self;
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

  v6 = v5;
  if (v5)
  {
    v7 = [(HMCameraBulletinBoardSmartNotification *)self cameraUserSettings];
    if (v7)
    {
      v8 = [(HMBulletinBoardNotification *)self condition];
      v9 = [HMPredicateUtilities validatePredicate:v8];

      v10 = objc_autoreleasePoolPush();
      v11 = self;
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
          v41 = v11;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Committing camera bulletin board smart notification: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        v15 = [(HMBulletinBoardNotification *)v11 condition];
        v16 = [HMPredicateUtilities rewritePredicateForDaemon:v15 characteristicIsInvalid:0];

        [v7 updateBulletinNotificationEnabled:-[HMBulletinBoardNotification isEnabled](v11 condition:"isEnabled") completionHandler:{v16, v4}];
        goto LABEL_18;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [(HMBulletinBoardNotification *)v11 condition];
        *buf = 138543618;
        v39 = v28;
        v40 = 2112;
        v41 = v29;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid predicate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v16 = [(HMBulletinBoardNotification *)v11 context];
      v25 = [v16 delegateCaller];
      v26 = MEMORY[0x1E696ABC0];
      v27 = 3;
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
        v39 = v24;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@No reference to cameraUserSettings, unable to commit change", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v16 = [(HMBulletinBoardNotification *)v22 context];
      v25 = [v16 delegateCaller];
      v26 = MEMORY[0x1E696ABC0];
      v27 = -1;
    }

    v30 = [v26 hmErrorWithCode:v27];
    [v25 callCompletion:v4 error:v30];

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
    v39 = v20;
    v40 = 2080;
    v41 = "[HMCameraBulletinBoardSmartNotification commitWithCompletionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  v4[2](v4, v7);
LABEL_19:

  v31 = *MEMORY[0x1E69E9840];
}

- (unint64_t)personFamiliarityOptions
{
  v2 = [(HMBulletinBoardNotification *)self condition];
  if (v2)
  {
    v3 = [objc_opt_class() personFamiliarityOptionsInPredicate:v2];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)significantEventTypes
{
  v2 = [(HMBulletinBoardNotification *)self condition];
  if (v2)
  {
    v3 = [objc_opt_class() significantEventTypesInPredicate:v2];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

+ (id)predicateForSignificantEventTypes:(unint64_t)a3 personFamiliarityOptions:(unint64_t)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = [a1 predicateForSignificantEventTypes:a3];
  v7 = v6;
  if (a4)
  {
    v8 = [a1 predicateForPersonFamiliarityOptions:a4];
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
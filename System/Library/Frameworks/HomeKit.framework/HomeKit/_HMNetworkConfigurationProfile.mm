@interface _HMNetworkConfigurationProfile
+ (id)logCategory;
- (BOOL)isNetworkAccessRestricted;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)supportsWiFiReconfiguration;
- (HMAccessoryNetworkAccessViolation)accessViolation;
- (NSArray)allowedHosts;
- (_HMNetworkConfigurationProfile)initWithAccessoryIdentifier:(id)a3 targetProtection:(int64_t)a4 currentProtection:(int64_t)a5 networkAccessRestricted:(BOOL)a6 allowedHosts:(id)a7 accessViolation:(id)a8 supportsWiFiReconfiguration:(BOOL)a9 credentialType:(int64_t)a10;
- (_HMNetworkConfigurationProfileDelegate)delegate;
- (id)logIdentifier;
- (id)messageDestination;
- (id)messageTargetUUID;
- (int64_t)credentialType;
- (int64_t)currentProtectionMode;
- (int64_t)targetProtectionMode;
- (void)_handleAccessViolationUpdated:(id)a3;
- (void)_handleHostsUpdated:(id)a3;
- (void)_handleWiFiReconfigurationUpdated:(id)a3;
- (void)_notifyDelegateOfNetworkAccessModeChanged;
- (void)_notifyDelegateOfUpdatedAccessViolation;
- (void)_notifyDelegateOfUpdatedAllowedHosts;
- (void)_notifyDelegateOfUpdatedProtectionMode;
- (void)_notifyDelegateOfUpdatedWiFiCredentialType;
- (void)_notifyDelegateOfUpdatedWiFiReconfigurationSupport;
- (void)_registerNotificationHandlers;
- (void)previewAllowedHostsForAutoProtectionModeWithCompletionHandler:(id)a3;
- (void)reconfigureWiFiWithOptions:(id)a3 completionHandler:(id)a4;
- (void)setAccessViolation:(id)a3;
- (void)setAllowedHosts:(id)a3;
- (void)setCredentialType:(int64_t)a3;
- (void)setCurrentProtectionMode:(int64_t)a3;
- (void)setNetworkAccessRestricted:(BOOL)a3;
- (void)setSupportsWiFiReconfiguration:(BOOL)a3;
- (void)setTargetProtectionMode:(int64_t)a3;
@end

@implementation _HMNetworkConfigurationProfile

- (_HMNetworkConfigurationProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(_HMAccessoryProfile *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_handleWiFiReconfigurationUpdated:(id)a3
{
  v14 = a3;
  v4 = [(_HMAccessoryProfile *)self context];
  v5 = [v4 pendingRequests];

  v6 = [v14 identifier];
  v7 = [v5 removeCompletionBlockForIdentifier:v6];

  v8 = [v14 BOOLForKey:@"reconfig-support"];
  if (v8 == [(_HMNetworkConfigurationProfile *)self supportsWiFiReconfiguration])
  {
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [(_HMNetworkConfigurationProfile *)self setSupportsWiFiReconfiguration:v8];
    if (!v7)
    {
      [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedWiFiReconfigurationSupport];
      goto LABEL_6;
    }
  }

  v9 = [(_HMAccessoryProfile *)self context];
  v10 = [v9 delegateCaller];
  [v10 callCompletion:v7 error:0];

LABEL_6:
  v11 = [v14 numberForKey:@"credential-type"];
  v12 = [v11 unsignedIntegerValue];
  if ((v12 - 1) >= 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if ([(_HMNetworkConfigurationProfile *)self credentialType]!= v13)
  {
    [(_HMNetworkConfigurationProfile *)self setCredentialType:v13];
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedWiFiCredentialType];
  }
}

- (void)_handleAccessViolationUpdated:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 dataForKey:@"access-violation"];
  if (v5)
  {
    v15 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v15];
    v7 = v15;
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory network access violation from access violation data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v12 = [(_HMNetworkConfigurationProfile *)self accessViolation];
      v13 = HMFEqualObjects();

      if ((v13 & 1) == 0)
      {
        [(_HMNetworkConfigurationProfile *)self setAccessViolation:v6];
        [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedAccessViolation];
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleHostsUpdated:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 dataForKey:@"allowed"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v8 = [v6 setWithArray:v7];

    v20 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v8 fromData:v5 error:&v20];
    v10 = v20;
    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v14;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory allowed hosts from allowed hosts data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }

    else
    {
      v15 = [MEMORY[0x1E695DFD8] setWithArray:v9];
      v16 = MEMORY[0x1E695DFD8];
      v17 = [(_HMNetworkConfigurationProfile *)self allowedHosts];
      v18 = [v16 setWithArray:v17];

      if ((HMFEqualObjects() & 1) == 0)
      {
        [(_HMNetworkConfigurationProfile *)self setAllowedHosts:v9];
        [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedAllowedHosts];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateOfUpdatedWiFiCredentialType
{
  v3 = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_HMAccessoryProfile *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedWiFiCredentialType__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfUpdatedWiFiReconfigurationSupport
{
  v3 = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_HMAccessoryProfile *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedWiFiReconfigurationSupport__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfUpdatedAccessViolation
{
  v3 = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_HMAccessoryProfile *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedAccessViolation__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfUpdatedAllowedHosts
{
  v3 = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_HMAccessoryProfile *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedAllowedHosts__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfNetworkAccessModeChanged
{
  v3 = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_HMAccessoryProfile *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75___HMNetworkConfigurationProfile__notifyDelegateOfNetworkAccessModeChanged__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfUpdatedProtectionMode
{
  v3 = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(_HMAccessoryProfile *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedProtectionMode__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)previewAllowedHostsForAutoProtectionModeWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMAccessoryProfile *)self context];
  if (!v4)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMNetworkConfigurationProfile previewAllowedHostsForAutoProtectionModeWithCompletionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v20;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E69A2A10];
    v8 = [(_HMNetworkConfigurationProfile *)self messageDestination];
    v9 = [v7 messageWithName:@"HMNCP.pvAllowed" destination:v8 payload:0];

    objc_initWeak(location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __96___HMNetworkConfigurationProfile_previewAllowedHostsForAutoProtectionModeWithCompletionHandler___block_invoke;
    v22[3] = &unk_1E754CFF8;
    objc_copyWeak(&v24, location);
    v23 = v4;
    [v9 setResponseHandler:v22];
    v10 = [v6 messageDispatcher];
    [v10 sendMessage:v9];

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v14;
      v26 = 2080;
      v27 = "[_HMNetworkConfigurationProfile previewAllowedHostsForAutoProtectionModeWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, 0, v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)reconfigureWiFiWithOptions:(id)a3 completionHandler:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_HMAccessoryProfile *)self context];
  if (!v7)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMNetworkConfigurationProfile reconfigureWiFiWithOptions:completionHandler:]", @"completionHandler"];
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v31;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v32);
  }

  v9 = v8;
  if (v8)
  {
    if ([(_HMNetworkConfigurationProfile *)self supportsWiFiReconfiguration])
    {
      v36[0] = @"credential-type";
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "credentialType")}];
      v36[1] = @"rotate";
      v37[0] = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "rotate")}];
      v37[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

      v13 = MEMORY[0x1E69A2A10];
      v14 = [(_HMNetworkConfigurationProfile *)self messageDestination];
      v15 = [v13 messageWithName:@"HMNCP.wr" destination:v14 payload:v12];

      objc_initWeak(location, self);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __79___HMNetworkConfigurationProfile_reconfigureWiFiWithOptions_completionHandler___block_invoke;
      v33[3] = &unk_1E754CFF8;
      objc_copyWeak(&v35, location);
      v34 = v7;
      [v15 setResponseHandler:v33];
      v16 = [v9 messageDispatcher];
      [v16 sendMessage:v15];

      objc_destroyWeak(&v35);
      objc_destroyWeak(location);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *location = 138543362;
        *&location[4] = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Does not support Wi-Fi reconfiguration", location, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v12 = [(_HMAccessoryProfile *)self context];
      v24 = [v12 delegateCaller];
      v25 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
      [v24 callCompletion:v7 error:v25];
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
      *location = 138543618;
      *&location[4] = v20;
      v39 = 2080;
      v40 = "[_HMNetworkConfigurationProfile reconfigureWiFiWithOptions:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v12);
  }

  v26 = *MEMORY[0x1E69E9840];
}

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
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_23;
  }

  v8 = [v6 currentProtectionMode];
  v9 = [v7 isNetworkAccessRestricted];
  v10 = [v7 targetProtectionMode];
  if (v8 != [(_HMNetworkConfigurationProfile *)self currentProtectionMode])
  {
    [(_HMNetworkConfigurationProfile *)self setCurrentProtectionMode:v8];
    if (v10 == [(_HMNetworkConfigurationProfile *)self targetProtectionMode])
    {
LABEL_11:
      [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedProtectionMode];
      v11 = 1;
      goto LABEL_12;
    }

LABEL_10:
    [(_HMNetworkConfigurationProfile *)self setTargetProtectionMode:v10];
    goto LABEL_11;
  }

  if (v10 != [(_HMNetworkConfigurationProfile *)self targetProtectionMode])
  {
    goto LABEL_10;
  }

  v11 = 0;
LABEL_12:
  if (v9 != [(_HMNetworkConfigurationProfile *)self isNetworkAccessRestricted])
  {
    [(_HMNetworkConfigurationProfile *)self setNetworkAccessRestricted:v9];
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfNetworkAccessModeChanged];
    v11 = 1;
  }

  v12 = [v7 allowedHosts];
  v13 = [MEMORY[0x1E695DFD8] setWithArray:v12];
  v14 = MEMORY[0x1E695DFD8];
  v15 = [(_HMNetworkConfigurationProfile *)self allowedHosts];
  v16 = [v14 setWithArray:v15];

  if ((HMFEqualObjects() & 1) == 0)
  {
    [(_HMNetworkConfigurationProfile *)self setAllowedHosts:v12];
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedAllowedHosts];
    v11 = 1;
  }

  v17 = [v7 accessViolation];
  v18 = [(_HMNetworkConfigurationProfile *)self accessViolation];
  v19 = HMFEqualObjects();

  if ((v19 & 1) == 0)
  {
    [(_HMNetworkConfigurationProfile *)self setAccessViolation:v17];
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedAccessViolation];
    v11 = 1;
  }

  v20 = [(_HMNetworkConfigurationProfile *)self supportsWiFiReconfiguration];
  if (v20 != [v7 supportsWiFiReconfiguration])
  {
    -[_HMNetworkConfigurationProfile setSupportsWiFiReconfiguration:](self, "setSupportsWiFiReconfiguration:", [v7 supportsWiFiReconfiguration]);
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedWiFiReconfigurationSupport];
    v11 = 1;
  }

  v21 = [(_HMNetworkConfigurationProfile *)self credentialType];
  if (v21 != [v7 credentialType])
  {
    -[_HMNetworkConfigurationProfile setCredentialType:](self, "setCredentialType:", [v7 credentialType]);
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedWiFiCredentialType];
    v11 = 1;
  }

LABEL_23:
  return v11;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(_HMNetworkConfigurationProfile *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (id)messageTargetUUID
{
  v2 = [(_HMAccessoryProfile *)self accessory];
  v3 = [v2 uuid];

  return v3;
}

- (void)setCredentialType:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_credentialType = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (int64_t)credentialType
{
  os_unfair_lock_lock_with_options();
  credentialType = self->_credentialType;
  os_unfair_lock_unlock(&self->super._lock);
  return credentialType;
}

- (void)setSupportsWiFiReconfiguration:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  *(&self->_supportsWiFiReconfiguration + 4) = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)supportsWiFiReconfiguration
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_supportsWiFiReconfiguration + 4);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setTargetProtectionMode:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    targetProtectionMode = v6->_targetProtectionMode;
    v11 = 138543874;
    v12 = v8;
    v13 = 2048;
    v14 = targetProtectionMode;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Changing target protection mode from: %ld, to: %ld", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v6->_targetProtectionMode = a3;
  os_unfair_lock_unlock(&v6->super._lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)targetProtectionMode
{
  os_unfair_lock_lock_with_options();
  targetProtectionMode = self->_targetProtectionMode;
  os_unfair_lock_unlock(&self->super._lock);
  return targetProtectionMode;
}

- (void)setNetworkAccessRestricted:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  *(&self->_supportsWiFiReconfiguration + 3) = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isNetworkAccessRestricted
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_supportsWiFiReconfiguration + 3);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setCurrentProtectionMode:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    currentProtectionMode = v6->_currentProtectionMode;
    v11 = 138543874;
    v12 = v8;
    v13 = 2048;
    v14 = currentProtectionMode;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Changing current protection mode from: %ld, to: %ld", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v6->_currentProtectionMode = a3;
  os_unfair_lock_unlock(&v6->super._lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)currentProtectionMode
{
  os_unfair_lock_lock_with_options();
  currentProtectionMode = self->_currentProtectionMode;
  os_unfair_lock_unlock(&self->super._lock);
  return currentProtectionMode;
}

- (void)setAccessViolation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  accessViolation = self->_accessViolation;
  self->_accessViolation = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMAccessoryNetworkAccessViolation)accessViolation
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accessViolation;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setAllowedHosts:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  allowedHosts = self->_allowedHosts;
  self->_allowedHosts = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSArray)allowedHosts
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_allowedHosts copy];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)_registerNotificationHandlers
{
  v3 = [(_HMAccessoryProfile *)self context];
  v4 = [v3 messageDispatcher];

  [v4 registerForMessage:@"HMNCP.hostsUpdated" receiver:self selector:sel__handleHostsUpdated_];
  [v4 registerForMessage:@"HMNCP.avUpdate" receiver:self selector:sel__handleAccessViolationUpdated_];
  [v4 registerForMessage:@"HMNCP.wrUpdated" receiver:self selector:sel__handleWiFiReconfigurationUpdated_];
}

- (_HMNetworkConfigurationProfile)initWithAccessoryIdentifier:(id)a3 targetProtection:(int64_t)a4 currentProtection:(int64_t)a5 networkAccessRestricted:(BOOL)a6 allowedHosts:(id)a7 accessViolation:(id)a8 supportsWiFiReconfiguration:(BOOL)a9 credentialType:(int64_t)a10
{
  v17 = a7;
  v18 = a8;
  v19 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:a3];
  v23.receiver = self;
  v23.super_class = _HMNetworkConfigurationProfile;
  v20 = [(_HMAccessoryProfile *)&v23 initWithUUID:v19 services:MEMORY[0x1E695E0F0]];
  v21 = v20;
  if (v20)
  {
    v20->_targetProtectionMode = a4;
    v20->_currentProtectionMode = a5;
    *(&v20->_supportsWiFiReconfiguration + 3) = a6;
    objc_storeStrong(&v20->_allowedHosts, a7);
    objc_storeStrong(&v21->_accessViolation, a8);
    *(&v21->_supportsWiFiReconfiguration + 4) = a9;
    v21->_credentialType = a10;
  }

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25_26874 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25_26874, &__block_literal_global_26875);
  }

  v3 = logCategory__hmf_once_v26_26876;

  return v3;
}

@end
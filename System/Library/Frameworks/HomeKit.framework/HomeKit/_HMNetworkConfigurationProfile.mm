@interface _HMNetworkConfigurationProfile
+ (id)logCategory;
- (BOOL)isNetworkAccessRestricted;
- (BOOL)mergeFromNewObject:(id)object;
- (BOOL)supportsWiFiReconfiguration;
- (HMAccessoryNetworkAccessViolation)accessViolation;
- (NSArray)allowedHosts;
- (_HMNetworkConfigurationProfile)initWithAccessoryIdentifier:(id)identifier targetProtection:(int64_t)protection currentProtection:(int64_t)currentProtection networkAccessRestricted:(BOOL)restricted allowedHosts:(id)hosts accessViolation:(id)violation supportsWiFiReconfiguration:(BOOL)reconfiguration credentialType:(int64_t)self0;
- (_HMNetworkConfigurationProfileDelegate)delegate;
- (id)logIdentifier;
- (id)messageDestination;
- (id)messageTargetUUID;
- (int64_t)credentialType;
- (int64_t)currentProtectionMode;
- (int64_t)targetProtectionMode;
- (void)_handleAccessViolationUpdated:(id)updated;
- (void)_handleHostsUpdated:(id)updated;
- (void)_handleWiFiReconfigurationUpdated:(id)updated;
- (void)_notifyDelegateOfNetworkAccessModeChanged;
- (void)_notifyDelegateOfUpdatedAccessViolation;
- (void)_notifyDelegateOfUpdatedAllowedHosts;
- (void)_notifyDelegateOfUpdatedProtectionMode;
- (void)_notifyDelegateOfUpdatedWiFiCredentialType;
- (void)_notifyDelegateOfUpdatedWiFiReconfigurationSupport;
- (void)_registerNotificationHandlers;
- (void)previewAllowedHostsForAutoProtectionModeWithCompletionHandler:(id)handler;
- (void)reconfigureWiFiWithOptions:(id)options completionHandler:(id)handler;
- (void)setAccessViolation:(id)violation;
- (void)setAllowedHosts:(id)hosts;
- (void)setCredentialType:(int64_t)type;
- (void)setCurrentProtectionMode:(int64_t)mode;
- (void)setNetworkAccessRestricted:(BOOL)restricted;
- (void)setSupportsWiFiReconfiguration:(BOOL)reconfiguration;
- (void)setTargetProtectionMode:(int64_t)mode;
@end

@implementation _HMNetworkConfigurationProfile

- (_HMNetworkConfigurationProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  uniqueIdentifier = [(_HMAccessoryProfile *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)_handleWiFiReconfigurationUpdated:(id)updated
{
  updatedCopy = updated;
  context = [(_HMAccessoryProfile *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [updatedCopy identifier];
  v7 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v8 = [updatedCopy BOOLForKey:@"reconfig-support"];
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

  context2 = [(_HMAccessoryProfile *)self context];
  delegateCaller = [context2 delegateCaller];
  [delegateCaller callCompletion:v7 error:0];

LABEL_6:
  v11 = [updatedCopy numberForKey:@"credential-type"];
  unsignedIntegerValue = [v11 unsignedIntegerValue];
  if ((unsignedIntegerValue - 1) >= 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = unsignedIntegerValue;
  }

  if ([(_HMNetworkConfigurationProfile *)self credentialType]!= v13)
  {
    [(_HMNetworkConfigurationProfile *)self setCredentialType:v13];
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedWiFiCredentialType];
  }
}

- (void)_handleAccessViolationUpdated:(id)updated
{
  v20 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v5 = [updatedCopy dataForKey:@"access-violation"];
  if (v5)
  {
    v15 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v15];
    v7 = v15;
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      accessViolation = [(_HMNetworkConfigurationProfile *)self accessViolation];
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

- (void)_handleHostsUpdated:(id)updated
{
  v25[2] = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v5 = [updatedCopy dataForKey:@"allowed"];
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
      selfCopy = self;
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
      allowedHosts = [(_HMNetworkConfigurationProfile *)self allowedHosts];
      v18 = [v16 setWithArray:allowedHosts];

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
  delegate = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(_HMAccessoryProfile *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedWiFiCredentialType__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfUpdatedWiFiReconfigurationSupport
{
  delegate = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(_HMAccessoryProfile *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedWiFiReconfigurationSupport__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfUpdatedAccessViolation
{
  delegate = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(_HMAccessoryProfile *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedAccessViolation__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfUpdatedAllowedHosts
{
  delegate = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(_HMAccessoryProfile *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedAllowedHosts__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfNetworkAccessModeChanged
{
  delegate = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(_HMAccessoryProfile *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75___HMNetworkConfigurationProfile__notifyDelegateOfNetworkAccessModeChanged__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_notifyDelegateOfUpdatedProtectionMode
{
  delegate = [(_HMNetworkConfigurationProfile *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(_HMAccessoryProfile *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72___HMNetworkConfigurationProfile__notifyDelegateOfUpdatedProtectionMode__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = delegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)previewAllowedHostsForAutoProtectionModeWithCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(_HMAccessoryProfile *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMNetworkConfigurationProfile previewAllowedHostsForAutoProtectionModeWithCompletionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    v7 = MEMORY[0x1E69A2A10];
    messageDestination = [(_HMNetworkConfigurationProfile *)self messageDestination];
    v9 = [v7 messageWithName:@"HMNCP.pvAllowed" destination:messageDestination payload:0];

    objc_initWeak(location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __96___HMNetworkConfigurationProfile_previewAllowedHostsForAutoProtectionModeWithCompletionHandler___block_invoke;
    v22[3] = &unk_1E754CFF8;
    objc_copyWeak(&v24, location);
    v23 = handlerCopy;
    [v9 setResponseHandler:v22];
    messageDispatcher = [v6 messageDispatcher];
    [messageDispatcher sendMessage:v9];

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)reconfigureWiFiWithOptions:(id)options completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  context = [(_HMAccessoryProfile *)self context];
  if (!handlerCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMNetworkConfigurationProfile reconfigureWiFiWithOptions:completionHandler:]", @"completionHandler"];
    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    if ([(_HMNetworkConfigurationProfile *)self supportsWiFiReconfiguration])
    {
      v36[0] = @"credential-type";
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(optionsCopy, "credentialType")}];
      v36[1] = @"rotate";
      v37[0] = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "rotate")}];
      v37[1] = v11;
      context2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

      v13 = MEMORY[0x1E69A2A10];
      messageDestination = [(_HMNetworkConfigurationProfile *)self messageDestination];
      v15 = [v13 messageWithName:@"HMNCP.wr" destination:messageDestination payload:context2];

      objc_initWeak(location, self);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __79___HMNetworkConfigurationProfile_reconfigureWiFiWithOptions_completionHandler___block_invoke;
      v33[3] = &unk_1E754CFF8;
      objc_copyWeak(&v35, location);
      v34 = handlerCopy;
      [v15 setResponseHandler:v33];
      messageDispatcher = [v9 messageDispatcher];
      [messageDispatcher sendMessage:v15];

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
      context2 = [(_HMAccessoryProfile *)self context];
      delegateCaller = [context2 delegateCaller];
      v25 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
      [delegateCaller callCompletion:handlerCopy error:v25];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, context2);
  }

  v26 = *MEMORY[0x1E69E9840];
}

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
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    goto LABEL_23;
  }

  currentProtectionMode = [v6 currentProtectionMode];
  isNetworkAccessRestricted = [v7 isNetworkAccessRestricted];
  targetProtectionMode = [v7 targetProtectionMode];
  if (currentProtectionMode != [(_HMNetworkConfigurationProfile *)self currentProtectionMode])
  {
    [(_HMNetworkConfigurationProfile *)self setCurrentProtectionMode:currentProtectionMode];
    if (targetProtectionMode == [(_HMNetworkConfigurationProfile *)self targetProtectionMode])
    {
LABEL_11:
      [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedProtectionMode];
      v11 = 1;
      goto LABEL_12;
    }

LABEL_10:
    [(_HMNetworkConfigurationProfile *)self setTargetProtectionMode:targetProtectionMode];
    goto LABEL_11;
  }

  if (targetProtectionMode != [(_HMNetworkConfigurationProfile *)self targetProtectionMode])
  {
    goto LABEL_10;
  }

  v11 = 0;
LABEL_12:
  if (isNetworkAccessRestricted != [(_HMNetworkConfigurationProfile *)self isNetworkAccessRestricted])
  {
    [(_HMNetworkConfigurationProfile *)self setNetworkAccessRestricted:isNetworkAccessRestricted];
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfNetworkAccessModeChanged];
    v11 = 1;
  }

  allowedHosts = [v7 allowedHosts];
  v13 = [MEMORY[0x1E695DFD8] setWithArray:allowedHosts];
  v14 = MEMORY[0x1E695DFD8];
  allowedHosts2 = [(_HMNetworkConfigurationProfile *)self allowedHosts];
  v16 = [v14 setWithArray:allowedHosts2];

  if ((HMFEqualObjects() & 1) == 0)
  {
    [(_HMNetworkConfigurationProfile *)self setAllowedHosts:allowedHosts];
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedAllowedHosts];
    v11 = 1;
  }

  accessViolation = [v7 accessViolation];
  accessViolation2 = [(_HMNetworkConfigurationProfile *)self accessViolation];
  v19 = HMFEqualObjects();

  if ((v19 & 1) == 0)
  {
    [(_HMNetworkConfigurationProfile *)self setAccessViolation:accessViolation];
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedAccessViolation];
    v11 = 1;
  }

  supportsWiFiReconfiguration = [(_HMNetworkConfigurationProfile *)self supportsWiFiReconfiguration];
  if (supportsWiFiReconfiguration != [v7 supportsWiFiReconfiguration])
  {
    -[_HMNetworkConfigurationProfile setSupportsWiFiReconfiguration:](self, "setSupportsWiFiReconfiguration:", [v7 supportsWiFiReconfiguration]);
    [(_HMNetworkConfigurationProfile *)self _notifyDelegateOfUpdatedWiFiReconfigurationSupport];
    v11 = 1;
  }

  credentialType = [(_HMNetworkConfigurationProfile *)self credentialType];
  if (credentialType != [v7 credentialType])
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
  messageTargetUUID = [(_HMNetworkConfigurationProfile *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (id)messageTargetUUID
{
  accessory = [(_HMAccessoryProfile *)self accessory];
  uuid = [accessory uuid];

  return uuid;
}

- (void)setCredentialType:(int64_t)type
{
  os_unfair_lock_lock_with_options();
  self->_credentialType = type;

  os_unfair_lock_unlock(&self->super._lock);
}

- (int64_t)credentialType
{
  os_unfair_lock_lock_with_options();
  credentialType = self->_credentialType;
  os_unfair_lock_unlock(&self->super._lock);
  return credentialType;
}

- (void)setSupportsWiFiReconfiguration:(BOOL)reconfiguration
{
  os_unfair_lock_lock_with_options();
  *(&self->_supportsWiFiReconfiguration + 4) = reconfiguration;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)supportsWiFiReconfiguration
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_supportsWiFiReconfiguration + 4);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setTargetProtectionMode:(int64_t)mode
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    targetProtectionMode = selfCopy->_targetProtectionMode;
    v11 = 138543874;
    v12 = v8;
    v13 = 2048;
    v14 = targetProtectionMode;
    v15 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Changing target protection mode from: %ld, to: %ld", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  selfCopy->_targetProtectionMode = mode;
  os_unfair_lock_unlock(&selfCopy->super._lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)targetProtectionMode
{
  os_unfair_lock_lock_with_options();
  targetProtectionMode = self->_targetProtectionMode;
  os_unfair_lock_unlock(&self->super._lock);
  return targetProtectionMode;
}

- (void)setNetworkAccessRestricted:(BOOL)restricted
{
  os_unfair_lock_lock_with_options();
  *(&self->_supportsWiFiReconfiguration + 3) = restricted;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isNetworkAccessRestricted
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_supportsWiFiReconfiguration + 3);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setCurrentProtectionMode:(int64_t)mode
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    currentProtectionMode = selfCopy->_currentProtectionMode;
    v11 = 138543874;
    v12 = v8;
    v13 = 2048;
    v14 = currentProtectionMode;
    v15 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Changing current protection mode from: %ld, to: %ld", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  selfCopy->_currentProtectionMode = mode;
  os_unfair_lock_unlock(&selfCopy->super._lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)currentProtectionMode
{
  os_unfair_lock_lock_with_options();
  currentProtectionMode = self->_currentProtectionMode;
  os_unfair_lock_unlock(&self->super._lock);
  return currentProtectionMode;
}

- (void)setAccessViolation:(id)violation
{
  violationCopy = violation;
  os_unfair_lock_lock_with_options();
  accessViolation = self->_accessViolation;
  self->_accessViolation = violationCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMAccessoryNetworkAccessViolation)accessViolation
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accessViolation;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setAllowedHosts:(id)hosts
{
  hostsCopy = hosts;
  os_unfair_lock_lock_with_options();
  allowedHosts = self->_allowedHosts;
  self->_allowedHosts = hostsCopy;

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
  context = [(_HMAccessoryProfile *)self context];
  messageDispatcher = [context messageDispatcher];

  [messageDispatcher registerForMessage:@"HMNCP.hostsUpdated" receiver:self selector:sel__handleHostsUpdated_];
  [messageDispatcher registerForMessage:@"HMNCP.avUpdate" receiver:self selector:sel__handleAccessViolationUpdated_];
  [messageDispatcher registerForMessage:@"HMNCP.wrUpdated" receiver:self selector:sel__handleWiFiReconfigurationUpdated_];
}

- (_HMNetworkConfigurationProfile)initWithAccessoryIdentifier:(id)identifier targetProtection:(int64_t)protection currentProtection:(int64_t)currentProtection networkAccessRestricted:(BOOL)restricted allowedHosts:(id)hosts accessViolation:(id)violation supportsWiFiReconfiguration:(BOOL)reconfiguration credentialType:(int64_t)self0
{
  hostsCopy = hosts;
  violationCopy = violation;
  v19 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:identifier];
  v23.receiver = self;
  v23.super_class = _HMNetworkConfigurationProfile;
  v20 = [(_HMAccessoryProfile *)&v23 initWithUUID:v19 services:MEMORY[0x1E695E0F0]];
  v21 = v20;
  if (v20)
  {
    v20->_targetProtectionMode = protection;
    v20->_currentProtectionMode = currentProtection;
    *(&v20->_supportsWiFiReconfiguration + 3) = restricted;
    objc_storeStrong(&v20->_allowedHosts, hosts);
    objc_storeStrong(&v21->_accessViolation, violation);
    *(&v21->_supportsWiFiReconfiguration + 4) = reconfiguration;
    v21->_credentialType = type;
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
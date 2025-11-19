@interface HMHomeAccessControl
- (BOOL)isAccessAllowed;
- (BOOL)isAdministrator;
- (BOOL)isAnnounceAccessAllowed;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOwner;
- (BOOL)isRemoteAccessAllowed;
- (BOOL)isRestrictedGuest;
- (BOOL)isRestrictedGuestInAllowedPeriod;
- (HMHomeAccessControl)initWithUser:(id)a3 allowAccess:(BOOL)a4 owner:(BOOL)a5 administratorPrivilege:(BOOL)a6 remoteAccess:(BOOL)a7 presenceAuthStatus:(id)a8 presenceComputeStatus:(id)a9 announceAccess:(BOOL)a10 camerasAccess:(id)a11 audioAnalysisUserDropInAccessLevel:(unint64_t)a12 restrictedGuest:(BOOL)a13 restrictedGuestAccessSettings:(id)a14;
- (HMRestrictedGuestHomeAccessSettings)restrictedGuestAccessSettings;
- (HMUserCameraAccess)camerasAccess;
- (HMUserPresenceAuthorization)presenceAuthStatus;
- (HMUserPresenceCompute)presenceComputeStatus;
- (unint64_t)audioAnalysisUserDropInAccessLevel;
- (unint64_t)camerasAccessLevel;
- (unint64_t)presenceAuthorizationStatus;
- (unint64_t)presenceComputationStatus;
- (void)_updateAccessForUser:(id)a3 restrictedGuestAccessSettings:(id)a4 completionHandler:(id)a5;
- (void)setAccessAllowed:(BOOL)a3;
- (void)setAdministrator:(BOOL)a3;
- (void)setAnnounceAccessAllowed:(BOOL)a3;
- (void)setAudioAnalysisUserDropinAccessLevel:(unint64_t)a3;
- (void)setCamerasAccess:(id)a3;
- (void)setOwner:(BOOL)a3;
- (void)setPresenceAuthStatus:(id)a3;
- (void)setPresenceComputeStatus:(id)a3;
- (void)setRemoteAccessAllowed:(BOOL)a3;
- (void)setRestrictedGuest:(BOOL)a3;
- (void)setUserAccessSettings:(id)a3;
- (void)updateAudioAnalysisUserDropinAccessLevel:(unint64_t)a3 completionHandler:(id)a4;
- (void)updateCamerasAccessLevel:(unint64_t)a3 completionHandler:(id)a4;
- (void)updatePresenceAuthorizationStatus:(unint64_t)a3 completionHandler:(id)a4;
- (void)updateRestrictedGuestSchedule:(id)a3 completionHandler:(id)a4;
- (void)updateRestrictedGuestSettings:(id)a3 completionHandler:(id)a4;
@end

@implementation HMHomeAccessControl

- (BOOL)isRestrictedGuest
{
  os_unfair_lock_lock_with_options();
  v3 = BYTE1(self->_presenceAuthStatus);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)_updateAccessForUser:(id)a3 restrictedGuestAccessSettings:(id)a4 completionHandler:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 home];
  v12 = [v11 context];
  if (!v10)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeAccessControl _updateAccessForUser:restrictedGuestAccessSettings:completionHandler:]", @"completion"];
    v34 = objc_autoreleasePoolPush();
    v35 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v37;
      v51 = 2112;
      v52 = v33;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v38 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v33 userInfo:0];
    objc_exception_throw(v38);
  }

  v13 = v12;
  if (v12)
  {
    v40 = v12;
    v14 = [MEMORY[0x1E69A29D8] internalOnlyInitializer];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v39 = v11;
      v19 = v18 = v9;
      v20 = [v14 UUID];
      v21 = [v8 userID];
      *buf = 138544130;
      v50 = v19;
      v51 = 2112;
      v52 = v20;
      v53 = 2112;
      v54 = v18;
      v55 = 2112;
      v56 = v21;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Restricted Guest}] Updating restricted guest settings: %@ for userID: %@", buf, 0x2Au);

      v9 = v18;
      v11 = v39;
    }

    objc_autoreleasePoolPop(v15);
    v47[0] = @"kUserIDKey";
    v22 = [v8 userID];
    v48[0] = v22;
    v47[1] = @"HMRestrictedGuestHomeAccessControlSettingsKey";
    v23 = encodeRootObject(v9);
    v48[1] = v23;
    v47[2] = *MEMORY[0x1E69A29A8];
    v24 = HMFEncodedRootObject();
    v48[2] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];

    v26 = [v11 uuid];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __92__HMHomeAccessControl__updateAccessForUser_restrictedGuestAccessSettings_completionHandler___block_invoke;
    v41[3] = &unk_1E75470B0;
    v41[4] = v16;
    v42 = v14;
    v43 = v8;
    v44 = v40;
    v46 = v10;
    v45 = v9;
    v27 = v14;
    v13 = v40;
    [(_HMContext *)v44 sendMessage:v26 target:v25 payload:v41 responseHandler:?];
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v31;
      v51 = 2080;
      v52 = "[HMHomeAccessControl _updateAccessForUser:restrictedGuestAccessSettings:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v25 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v10 + 2))(v10, v25);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __92__HMHomeAccessControl__updateAccessForUser_restrictedGuestAccessSettings_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = [*(a1 + 48) userID];
      v25 = 138544130;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update restricted guest settings for userID:%@, error: %@", &v25, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 56) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 72);
    v16 = v5;
  }

  else
  {
    [*(a1 + 32) setRestrictedGuestAccessSettings:*(a1 + 64)];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 40) UUID];
      v22 = [*(a1 + 48) userID];
      v23 = *(a1 + 64);
      v25 = 138544130;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated restricted guest settings for userID:%@, settings: %@", &v25, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v13 = [*(a1 + 56) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 72);
    v16 = 0;
  }

  [v13 callCompletion:v15 error:v16];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)updateRestrictedGuestSettings:(id)a3 completionHandler:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessControl *)self user];
  v9 = [v8 home];
  if (!v7)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeAccessControl updateRestrictedGuestSettings:completionHandler:]", @"completion"];
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v40;
      v44 = 2112;
      v45 = v36;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v36 userInfo:0];
    objc_exception_throw(v41);
  }

  v10 = v9;
  if (!v8 || ([v8 userID], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      objc_autoreleasePoolPop(v16);
      v21 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2];
LABEL_15:
      v22 = v21;
      v7[2](v7, v21);

      goto LABEL_16;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v19;
    v20 = "%{public}@Cannot update user access settings, user not present";
LABEL_13:
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);

    goto LABEL_14;
  }

  if (!v10)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v19;
    v20 = "%{public}@Missing home, can't update user access settings";
    goto LABEL_13;
  }

  if (![(HMHomeAccessControl *)self isRestrictedGuest])
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v27;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot update user access settings, user is not a restricted guest", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v21 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2901];
    goto LABEL_15;
  }

  if (!v6)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v31;
      v32 = "%{public}@Cannot update user access settings, user access settings is nil";
      v33 = v30;
      v34 = 12;
LABEL_26:
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
LABEL_27:
    }

LABEL_28:

    objc_autoreleasePoolPop(v28);
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    goto LABEL_15;
  }

  if (([v6 doAllAccessoriesBelongToHome:v10] & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v31;
      v44 = 2112;
      v45 = v10;
      v32 = "%{public}@Cannot update user access settings, not all accessories belong to the home : %@";
      v33 = v30;
      v34 = 22;
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  v12 = [v6 guestAccessSchedule];
  if (v12)
  {
    v13 = v12;
    v14 = [v6 guestAccessSchedule];
    v15 = [v14 isValidSchedule];

    if ((v15 & 1) == 0)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v31 = HMFGetLogIdentifier();
      v35 = [v6 guestAccessSchedule];
      *buf = 138543618;
      v43 = v31;
      v44 = 2112;
      v45 = v35;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Cannot update user access settings, the schedule is invalid: %@", buf, 0x16u);

      goto LABEL_27;
    }
  }

  [(HMHomeAccessControl *)self _updateAccessForUser:v8 restrictedGuestAccessSettings:v6 completionHandler:v7];
LABEL_16:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)updateRestrictedGuestSchedule:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMHomeAccessControl *)self restrictedGuestAccessSettings];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
    [v10 setGuestAccessSchedule:v6];
    v11 = [v10 copy];
    [(HMHomeAccessControl *)self updateRestrictedGuestSettings:v11 completionHandler:v7];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot update restricted guest schedule, existing accessSettings are nil.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v10 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2901];
    v7[2](v7, v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRestrictedGuestInAllowedPeriod
{
  v3 = [(HMHomeAccessControl *)self restrictedGuestAccessSettings];
  v4 = [v3 guestAccessSchedule];

  if (!v4)
  {
    return 1;
  }

  v5 = [(HMAccessControl *)self user];
  v6 = [v5 home];

  v7 = [v6 timeZone];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFE8] systemTimeZone];
  }

  v11 = v9;

  v12 = [MEMORY[0x1E695DF00] now];
  v13 = [(HMHomeAccessControl *)self restrictedGuestAccessSettings];
  v14 = [v13 guestAccessSchedule];
  v15 = [HMRestrictedGuestHomeAccessSchedule isDate:v12 withinAllowedTimeForSchedule:v14 forHomeInTimeZone:v11];

  return v15;
}

- (void)setUserAccessSettings:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  accessNotAllowedReasonCode = self->_accessNotAllowedReasonCode;
  self->_accessNotAllowedReasonCode = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMRestrictedGuestHomeAccessSettings)restrictedGuestAccessSettings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accessNotAllowedReasonCode;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setRestrictedGuest:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  BYTE1(self->_presenceAuthStatus) = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)updateCamerasAccessLevel:(unint64_t)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!v6)
  {
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v29);
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMUserCameraAccessLevelAsString(a3);
    v30 = 138543618;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating cameras access level to %@", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMAccessControl *)v9 user];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 home];
    if (v15)
    {
      if (![(HMHomeAccessControl *)v9 isRestrictedGuest])
      {
        v27 = [v14 userID];
        [v15 updateAccessForUser:v27 camerasAccessLevel:a3 completionHandler:v7];
        goto LABEL_18;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = v9;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v19;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot update cameras access level for the user as they are the restricted guest", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2902];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v26;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Home not present", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v20 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2];
    }

    v27 = v20;
    v7[2](v7, v20);
LABEL_18:

    goto LABEL_19;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v23;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@User not present", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
  v15 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2];
  (v7)[2](v7, v15);
LABEL_19:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)updatePresenceAuthorizationStatus:(unint64_t)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(HMHomeAccessControl *)self isRestrictedGuest])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot update presence authorization status for the user as they are the restricted guest", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:2902];
    v6[2](v6, v11);
  }

  else
  {
    v12 = [(HMAccessControl *)self user];
    [v12 updatePresenceAuthorizationStatus:a3 completionHandler:v6];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateAudioAnalysisUserDropinAccessLevel:(unint64_t)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMAccessControl *)self user];
  v8 = [v7 home];
  if (!v6)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMHomeAccessControl updateAudioAnalysisUserDropinAccessLevel:completionHandler:]", @"completion"];
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v30;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0];
    objc_exception_throw(v31);
  }

  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      if (![(HMHomeAccessControl *)self isRestrictedGuest])
      {
        v24 = [v7 userID];
        [v9 updateAccessForUser:v24 audioAnalysisUserDropinAccessLevel:a3 completionHandler:v6];
        goto LABEL_15;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v13;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot update audio analysis dropin, user is a restricted guest", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = MEMORY[0x1E696ABC0];
      v15 = 2902;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot update audio analysis dropin, home not present", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v14 = MEMORY[0x1E696ABC0];
      v15 = 2018;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot update audio analysis dropin, user not present", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = MEMORY[0x1E696ABC0];
    v15 = 2019;
  }

  v24 = [v14 hmPrivateErrorWithCode:v15];
  v6[2](v6, v24);
LABEL_15:

  v25 = *MEMORY[0x1E69E9840];
}

- (unint64_t)audioAnalysisUserDropInAccessLevel
{
  os_unfair_lock_lock_with_options();
  isa = self[1].super.super.isa;
  os_unfair_lock_unlock(&self->super._lock);
  return isa;
}

- (void)setAudioAnalysisUserDropinAccessLevel:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self[1].super.super.isa = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setAnnounceAccessAllowed:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  LOBYTE(self->_presenceAuthStatus) = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isAnnounceAccessAllowed
{
  os_unfair_lock_lock_with_options();
  presenceAuthStatus = self->_presenceAuthStatus;
  os_unfair_lock_unlock(&self->super._lock);
  return presenceAuthStatus;
}

- (unint64_t)camerasAccessLevel
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMRestrictedGuestHomeAccessSettings *)self->_restrictedGuestAccessSettings value];
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setCamerasAccess:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  restrictedGuestAccessSettings = self->_restrictedGuestAccessSettings;
  self->_restrictedGuestAccessSettings = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMUserCameraAccess)camerasAccess
{
  os_unfair_lock_lock_with_options();
  v3 = self->_restrictedGuestAccessSettings;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (unint64_t)presenceComputationStatus
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMUserCameraAccess *)self->_camerasAccess value];
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (unint64_t)presenceAuthorizationStatus
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMUserPresenceCompute *)self->_presenceComputeStatus value];
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setPresenceComputeStatus:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  camerasAccess = self->_camerasAccess;
  self->_camerasAccess = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMUserPresenceCompute)presenceComputeStatus
{
  os_unfair_lock_lock_with_options();
  v3 = self->_camerasAccess;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setPresenceAuthStatus:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  presenceComputeStatus = self->_presenceComputeStatus;
  self->_presenceComputeStatus = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMUserPresenceAuthorization)presenceAuthStatus
{
  os_unfair_lock_lock_with_options();
  v3 = self->_presenceComputeStatus;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setRemoteAccessAllowed:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  *(&self->_restrictedGuestInAllowedPeriod + 1) = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isRemoteAccessAllowed
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_restrictedGuestInAllowedPeriod + 1);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setAccessAllowed:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_restrictedGuestInAllowedPeriod = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isAccessAllowed
{
  os_unfair_lock_lock_with_options();
  restrictedGuestInAllowedPeriod = self->_restrictedGuestInAllowedPeriod;
  os_unfair_lock_unlock(&self->super._lock);
  return restrictedGuestInAllowedPeriod;
}

- (void)setAdministrator:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_restrictedGuest = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isAdministrator
{
  os_unfair_lock_lock_with_options();
  restrictedGuest = self->_restrictedGuest;
  os_unfair_lock_unlock(&self->super._lock);
  return restrictedGuest;
}

- (void)setOwner:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_announceAccessAllowed = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isOwner
{
  os_unfair_lock_lock_with_options();
  announceAccessAllowed = self->_announceAccessAllowed;
  os_unfair_lock_unlock(&self->super._lock);
  return announceAccessAllowed;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HMHomeAccessControl;
    if ([(HMAccessControl *)&v24 isEqual:v4])
    {
      v5 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = [(HMHomeAccessControl *)self isAccessAllowed];
      if (v8 != [(HMHomeAccessControl *)v7 isAccessAllowed])
      {
        goto LABEL_17;
      }

      v9 = [(HMHomeAccessControl *)self isAdministrator];
      if (v9 != [(HMHomeAccessControl *)v7 isAdministrator])
      {
        goto LABEL_17;
      }

      v10 = [(HMHomeAccessControl *)self isOwner];
      if (v10 != [(HMHomeAccessControl *)v7 isOwner])
      {
        goto LABEL_17;
      }

      v11 = [(HMHomeAccessControl *)self isRemoteAccessAllowed];
      if (v11 != [(HMHomeAccessControl *)v7 isRemoteAccessAllowed])
      {
        goto LABEL_17;
      }

      v12 = [(HMHomeAccessControl *)self presenceAuthorizationStatus];
      if (v12 != [(HMHomeAccessControl *)v7 presenceAuthorizationStatus])
      {
        goto LABEL_17;
      }

      v13 = [(HMHomeAccessControl *)self presenceComputationStatus];
      if (v13 != [(HMHomeAccessControl *)v7 presenceComputationStatus])
      {
        goto LABEL_17;
      }

      v14 = [(HMHomeAccessControl *)self camerasAccess];
      v15 = [(HMHomeAccessControl *)v7 camerasAccess];
      v16 = [v14 isEqual:v15];

      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = [(HMHomeAccessControl *)self isAnnounceAccessAllowed];
      if (v17 == [(HMHomeAccessControl *)v7 isAnnounceAccessAllowed]&& (v18 = [(HMHomeAccessControl *)self audioAnalysisUserDropInAccessLevel], v18 == [(HMHomeAccessControl *)v7 audioAnalysisUserDropInAccessLevel]) && (v19 = [(HMHomeAccessControl *)self isRestrictedGuest], v19 == [(HMHomeAccessControl *)v7 isRestrictedGuest]))
      {
        v22 = [(HMHomeAccessControl *)self restrictedGuestAccessSettings];
        v23 = [(HMHomeAccessControl *)v7 restrictedGuestAccessSettings];
        v20 = HMFEqualObjects();
      }

      else
      {
LABEL_17:
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (HMHomeAccessControl)initWithUser:(id)a3 allowAccess:(BOOL)a4 owner:(BOOL)a5 administratorPrivilege:(BOOL)a6 remoteAccess:(BOOL)a7 presenceAuthStatus:(id)a8 presenceComputeStatus:(id)a9 announceAccess:(BOOL)a10 camerasAccess:(id)a11 audioAnalysisUserDropInAccessLevel:(unint64_t)a12 restrictedGuest:(BOOL)a13 restrictedGuestAccessSettings:(id)a14
{
  v37 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a8;
  v33 = a9;
  v32 = a11;
  v31 = a14;
  v34.receiver = self;
  v34.super_class = HMHomeAccessControl;
  v21 = [(HMAccessControl *)&v34 initWithUser:v19];
  v22 = v21;
  if (v21)
  {
    v29 = v20;
    v21->_restrictedGuestInAllowedPeriod = a4;
    v21->_announceAccessAllowed = a5;
    v21->_restrictedGuest = a6;
    *(&v21->_restrictedGuestInAllowedPeriod + 1) = a7;
    objc_storeStrong(&v21->_presenceComputeStatus, a8);
    objc_storeStrong(&v22->_camerasAccess, a9);
    objc_storeStrong(&v22->_restrictedGuestAccessSettings, a11);
    LOBYTE(v22->_presenceAuthStatus) = a10;
    v22[1].super.super.isa = a12;
    BYTE1(v22->_presenceAuthStatus) = a13;
    objc_storeStrong(&v22->_accessNotAllowedReasonCode, a14);
    if (BYTE1(v22->_presenceAuthStatus) == 1 && !v22->_accessNotAllowedReasonCode)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v22;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v26;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_FAULT, "%{public}@restricted guest cannot exist without its access settings object", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v20 = v29;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v22;
}

@end
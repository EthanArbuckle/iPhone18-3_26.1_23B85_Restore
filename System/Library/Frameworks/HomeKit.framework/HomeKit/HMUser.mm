@interface HMUser
+ (id)logCategory;
- (BOOL)_mergeWithNewAccessoryInvitations:(id)a3;
- (BOOL)isCurrentUser;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)mergePendingAccessoryInvitationsWithOutgoingInvitation:(id)a3;
- (BOOL)requiresAdaptiveTemperatureAutomationsDisclosure;
- (HMAnnounceUserSettings)announceUserSettings;
- (HMAssistantAccessControl)assistantAccessControl;
- (HMFPairingIdentity)pairingIdentity;
- (HMHome)home;
- (HMHomeAccessControl)homeAccessControl;
- (HMMediaContentProfileAccessControl)mediaContentProfileAccessControl;
- (HMPhotosPersonManager)photosPersonManager;
- (HMPhotosPersonManagerSettings)photosPersonManagerSettings;
- (HMSettings)privateSettings;
- (HMSettings)settings;
- (HMUser)init;
- (HMUser)initWithCoder:(id)a3;
- (HMUser)initWithUserID:(id)a3 name:(id)a4 uuid:(id)a5 home:(id)a6 homeAccessControl:(id)a7;
- (HMUserDelegatePrivate)delegate;
- (HMUserListeningHistoryUpdateControl)userListeningHistoryUpdateControl;
- (IDSURI)userIDSURI;
- (NSString)familyName;
- (NSString)givenName;
- (NSString)iCloudAltDSID;
- (NSString)name;
- (NSString)userID;
- (NSUUID)photosPersonManagerZoneUUID;
- (NSUUID)uniqueIdentifier;
- (id)_filterAccessoryInvitationsFromOutgoingInvitation:(id)a3;
- (id)assistantAccessControlForHome:(id)a3;
- (id)logIdentifier;
- (id)mediaContentProfileAccessControlForHome:(id)a3;
- (id)messageDestination;
- (id)pendingAccessoryInvitations;
- (id)senderCorrelationIdentifier;
- (id)userListeningHistoryUpdateControlForHome:(id)a3;
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_handleMultiUserStatusChangedNotification:(id)a3;
- (void)_handleRGAllowedPeriodEnded:(id)a3;
- (void)_handleRGAllowedPeriodStarted:(id)a3;
- (void)_handleSharedUserProfileMetadataUpdated;
- (void)_handleUpdatedAssistantAccessControl:(id)a3;
- (void)_mergeUserPairingIdentityIfNecessary:(id)a3 withNewPairingIdentity:(id)a4;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)_updatePresenceAuthorizationStatus:(unint64_t)a3 completionHandler:(id)a4;
- (void)completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion:(id)a3;
- (void)configurePhotosPersonManager;
- (void)createConfigureAndMergePrivateSettingsIfNecessary:(id)a3 withContext:(id)a4;
- (void)createConfigureAndMergeSharedSettingsIfNecessary:(id)a3 withContext:(id)a4;
- (void)createHH1PrivateSettingsControllerIfNecessary;
- (void)createHH1SettingsControllerIfNecessary;
- (void)fetchAllPairingIdentitiesWithCompletionHandler:(id)a3;
- (void)fetchProfilePhoto:(id)a3;
- (void)fetchProfilePhotoAndCropRect:(id)a3;
- (void)fetchShareLookupInfo:(id)a3;
- (void)pairingIdentityWithCompletionHandler:(id)a3;
- (void)sendClientShareRepairRequest:(id)a3 containerID:(id)a4 completion:(id)a5;
- (void)sendClientShareURL:(id)a3 shareToken:(id)a4 containerID:(id)a5 fromUser:(id)a6 completion:(id)a7;
- (void)setAnnounceUserSettings:(id)a3;
- (void)setAssistantAccessControl:(id)a3;
- (void)setCurrentUser:(BOOL)a3;
- (void)setFamilyName:(id)a3;
- (void)setGivenName:(id)a3;
- (void)setHome:(id)a3;
- (void)setHomeAccessControl:(id)a3;
- (void)setMediaContentProfileAccessControl:(id)a3;
- (void)setName:(id)a3;
- (void)setPairingIdentity:(id)a3;
- (void)setPendingAccessoryInvitationsWithOutgoingInvitation:(id)a3;
- (void)setPhotosPersonManager:(id)a3;
- (void)setPhotosPersonManagerSettings:(id)a3;
- (void)setPhotosPersonManagerZoneUUID:(id)a3;
- (void)setRequiresAdaptiveTemperatureAutomationsDisclosure:(BOOL)a3;
- (void)setUserID:(id)a3;
- (void)setUserListeningHistoryUpdateControl:(id)a3;
- (void)setiCloudAltDSID:(id)a3;
- (void)updateAnnounceUserSettings:(id)a3 forHome:(id)a4 completionHandler:(id)a5;
- (void)updateAssistantAccessControl:(id)a3 forHome:(id)a4 completionHandler:(id)a5;
- (void)updateMediaContentProfileAccessControl:(id)a3 forHome:(id)a4 completionHandler:(id)a5;
- (void)updatePhotosPersonManagerSettings:(id)a3 completion:(id)a4;
- (void)updatePresenceAuthorizationStatus:(unint64_t)a3 completionHandler:(id)a4;
- (void)updateUserListeningHistoryUpdateControl:(id)a3 forHome:(id)a4 completionHandler:(id)a5;
@end

@implementation HMUser

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

- (HMHomeAccessControl)homeAccessControl
{
  os_unfair_lock_lock_with_options();
  v3 = self->_homeAccessControl;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)configurePhotosPersonManager
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(HMUser *)self photosPersonManagerSettings];
  if ([v3 isImportingFromPhotoLibraryEnabled] && (-[HMUser photosPersonManager](self, "photosPersonManager"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Creating photos person manager because importing from photo library is enabled", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [[HMPhotosPersonManager alloc] initWithUser:v11];
    [(HMUser *)v11 setPhotosPersonManager:v14];

    v15 = [(HMUser *)v11 photosPersonManager];
    [v15 configure];
  }

  else if (([v3 isImportingFromPhotoLibraryEnabled] & 1) == 0)
  {
    v5 = [(HMUser *)self photosPersonManager];

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v9;
        _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Destroying photos person manager because importing from photo library is disabled", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [(HMUser *)v7 setPhotosPersonManager:0];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updatePhotosPersonManagerSettings:(id)a3 completion:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMUser *)self context];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Update photos person manager settings"];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 identifier];
      v15 = [v14 shortDescription];
      *buf = 138543874;
      v35 = v13;
      v36 = 2114;
      v37 = v15;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Updating photos person manager settings: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v32 = @"HMU.mk.ppms";
    v16 = encodeRootObject(v6);
    v33 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    v18 = objc_alloc(MEMORY[0x1E69A2A00]);
    v19 = [(HMUser *)v11 uuid];
    v20 = [v18 initWithTarget:v19];

    v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMU.m.uppms" destination:v20 payload:v17];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __63__HMUser_Person__updatePhotosPersonManagerSettings_completion___block_invoke;
    v29[3] = &unk_1E754E480;
    v29[4] = v11;
    v30 = v9;
    v31 = v7;
    v22 = v9;
    [v21 setResponseHandler:v29];
    v23 = [v8 messageDispatcher];
    [v23 sendMessage:v21 completionHandler:0];

    goto LABEL_9;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v27;
    v36 = 2080;
    v37 = "[HMUser(Person) updatePhotosPersonManagerSettings:completion:]";
    _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  if (v7)
  {
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v17);
LABEL_9:
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __63__HMUser_Person__updatePhotosPersonManagerSettings_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v33[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMU.mk.ppms" ofClasses:v7];

  v9 = [v6 hmf_UUIDForKey:@"HMU.mk.ppmzu"];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v23 = v5;
      v15 = [*(a1 + 40) identifier];
      v16 = [v15 shortDescription];
      *buf = 138544130;
      v26 = v14;
      v27 = 2114;
      v28 = v16;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully updated photos person manager settings: %@, zone UUID: %@", buf, 0x2Au);

      v5 = v23;
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) setPhotosPersonManagerSettings:v8];
    [*(a1 + 32) setPhotosPersonManagerZoneUUID:v9];
    [*(a1 + 32) configurePhotosPersonManager];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      [*(a1 + 40) identifier];
      v18 = v24 = v5;
      v19 = [v18 shortDescription];
      *buf = 138543874;
      v26 = v17;
      v27 = 2114;
      v28 = v19;
      v29 = 2112;
      v30 = v24;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to update photos person manager settings: %@", buf, 0x20u);

      v5 = v24;
    }

    objc_autoreleasePoolPop(v10);
  }

  v20 = [*(a1 + 32) context];
  v21 = [v20 delegateCaller];
  [v21 callCompletion:*(a1 + 48) error:v5];

  v22 = *MEMORY[0x1E69E9840];
}

- (HMUserDelegatePrivate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setRequiresAdaptiveTemperatureAutomationsDisclosure:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_requiresAdaptiveTemperatureAutomationsDisclosure = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requiresAdaptiveTemperatureAutomationsDisclosure
{
  os_unfair_lock_lock_with_options();
  requiresAdaptiveTemperatureAutomationsDisclosure = self->_requiresAdaptiveTemperatureAutomationsDisclosure;
  os_unfair_lock_unlock(&self->_lock);
  return requiresAdaptiveTemperatureAutomationsDisclosure;
}

- (void)completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMUser *)self home];
  if (!v5)
  {
    _HMFPreconditionFailure();
LABEL_10:
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v6 = v5;
  v7 = [(HMUser *)self context];
  if (!v4)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if (v7)
  {
    v9 = [(HMUser *)self messageTargetUUID];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__HMUser_completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion___block_invoke;
    v22[3] = &unk_1E754E480;
    v22[4] = self;
    v23 = v8;
    v24 = v4;
    [(_HMContext *)v23 sendMessage:v9 target:0 payload:v22 responseHandler:?];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2080;
      v28 = "[HMUser completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __75__HMUser_completeDisclosureOfAdaptiveTemperatureAutomationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to complete adaptive temperature automations disclosure with error %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = v5;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Completed adaptive temperature automations disclosure", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setRequiresAdaptiveTemperatureAutomationsDisclosure:0];
    v12 = [*(a1 + 40) delegateCaller];
    v13 = v12;
    v14 = *(a1 + 48);
    v15 = 0;
  }

  [v12 callCompletion:v14 error:v15];

  v17 = *MEMORY[0x1E69E9840];
}

- (HMSettings)privateSettings
{
  v3 = [(HMUser *)self privateSettingsAdapter];

  if (v3)
  {
    [(HMUser *)self privateSettingsAdapter];
  }

  else
  {
    [(HMUser *)self privateSettingsController];
  }
  v4 = ;
  v5 = [v4 settings];

  return v5;
}

- (HMSettings)settings
{
  v3 = [(HMUser *)self sharedSettingsAdapter];

  if (v3)
  {
    [(HMUser *)self sharedSettingsAdapter];
  }

  else
  {
    [(HMUser *)self settingsController];
  }
  v4 = ;
  v5 = [v4 settings];

  return v5;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(HMUser *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)createHH1PrivateSettingsControllerIfNecessary
{
  if (!self->_privateSettingsController)
  {
    v4 = [HMSettingsController alloc];
    uuid = self->_uuid;
    WeakRetained = objc_loadWeakRetained(&self->_home);
    v6 = [WeakRetained uuid];
    v7 = [(HMSettingsController *)v4 initWithParentIdentifier:uuid homeUUID:v6 codingKey:@"HMS.settings.private"];
    privateSettingsController = self->_privateSettingsController;
    self->_privateSettingsController = v7;
  }
}

- (void)createHH1SettingsControllerIfNecessary
{
  if (!self->_settingsController)
  {
    v4 = [HMSettingsController alloc];
    uuid = self->_uuid;
    WeakRetained = objc_loadWeakRetained(&self->_home);
    v6 = [WeakRetained uuid];
    v7 = [(HMSettingsController *)v4 initWithParentIdentifier:uuid homeUUID:v6 codingKey:@"HMS.settings.shared"];
    settingsController = self->_settingsController;
    self->_settingsController = v7;
  }
}

- (void)createConfigureAndMergeSharedSettingsIfNecessary:(id)a3 withContext:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(HMUser *)self sharedSettingsAdapter];
  if (!v7)
  {
    v7 = [[HMUserSettingsAdapter alloc] initWithUser:self settingsType:2];
    [(HMUserSettingsAdapter *)v7 configureWithContext:v6];
    [(HMUser *)self setSharedSettingsAdapter:v7];
  }

  if (v8)
  {
    [(HMUserSettingsAdapter *)v7 mergeWithDictionary:v8];
  }
}

- (void)createConfigureAndMergePrivateSettingsIfNecessary:(id)a3 withContext:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(HMUser *)self privateSettingsAdapter];
  if (!v7)
  {
    v7 = [[HMUserSettingsAdapter alloc] initWithUser:self settingsType:1];
    [(HMUserSettingsAdapter *)v7 configureWithContext:v6];
    [(HMUser *)self setPrivateSettingsAdapter:v7];
  }

  if (v8)
  {
    [(HMUserSettingsAdapter *)v7 mergeWithDictionary:v8];
  }
}

- (void)_mergeUserPairingIdentityIfNecessary:(id)a3 withNewPairingIdentity:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 identifier];
    v13 = [v7 identifier];
    *buf = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Pairing Identity for the user has changed from : %@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMUser *)v9 setPairingIdentity:v7];
  v14 = [(HMUser *)v9 delegate];
  if ([v14 conformsToProtocol:&unk_1F0F63768])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (objc_opt_respondsToSelector())
  {
    v17 = [(HMUser *)v9 context];
    v18 = [v17 delegateCaller];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70__HMUser__mergeUserPairingIdentityIfNecessary_withNewPairingIdentity___block_invoke;
    v20[3] = &unk_1E754E5E8;
    v20[4] = v9;
    v21 = v7;
    v22 = v16;
    [v18 invokeBlock:v20];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __70__HMUser__mergeUserPairingIdentityIfNecessary_withNewPairingIdentity___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client that pairing identity has changed to : %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = [v8 pairingIdentity];
  [v7 user:v8 didUpdatePairingIdentity:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v437 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v374 = v4;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v213 = 0;
    goto LABEL_201;
  }

  v382 = self;
  v383 = v4;
  v390 = [(HMUser *)self home];
  v5 = [v383 name];
  [(HMUser *)self setName:v5];

  v6 = [v383 userID];
  [(HMUser *)self setUserID:v6];

  v7 = [v383 pendingAccessoryInvitations];
  [(HMUser *)self _mergeWithNewAccessoryInvitations:v7];

  v8 = [(HMUser *)self homeAccessControl];
  v9 = [v8 isAccessAllowed];
  v10 = [v383 homeAccessControl];
  v11 = v9 ^ [v10 isAccessAllowed];

  v381 = v11;
  if (v11 == 1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v382;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HMUser *)v13 homeAccessControl];
      [v16 isAccessAllowed];
      v17 = HMFBooleanToString();
      v18 = [v383 homeAccessControl];
      [v18 isAccessAllowed];
      v19 = HMFBooleanToString();
      *buf = 138543874;
      v425 = v15;
      v426 = 2112;
      v427 = v17;
      v428 = 2112;
      v429 = v19;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Updated isAccessAllowed from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v20 = [(HMUser *)v13 homeAccessControl];
    v21 = [v383 homeAccessControl];
    [v20 setAccessAllowed:{objc_msgSend(v21, "isAccessAllowed")}];
  }

  v22 = [(HMUser *)v382 homeAccessControl];
  v23 = [v22 accessNotAllowedReasonCode];
  v24 = [v383 homeAccessControl];
  LOBYTE(v23) = v23 == [v24 accessNotAllowedReasonCode];

  if ((v23 & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v382;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = MEMORY[0x1E696AD98];
      v30 = [(HMUser *)v26 homeAccessControl];
      v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(v30, "accessNotAllowedReasonCode")}];
      v32 = MEMORY[0x1E696AD98];
      v33 = [v383 homeAccessControl];
      v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "accessNotAllowedReasonCode")}];
      *buf = 138543874;
      v425 = v28;
      v426 = 2112;
      v427 = v31;
      v428 = 2112;
      v429 = v34;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Updated access not allowed reason code from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v35 = [v383 homeAccessControl];
    v36 = [v35 accessNotAllowedReasonCode];
    v37 = [(HMUser *)v26 homeAccessControl];
    [v37 setAccessNotAllowedReasonCode:v36];

    v381 = 1;
  }

  v38 = [(HMUser *)v382 homeAccessControl];
  v39 = [v38 isOwner];
  v40 = [v383 homeAccessControl];
  v41 = [v40 isOwner];

  if (v39 != v41)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = v382;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      v46 = [(HMUser *)v43 homeAccessControl];
      [v46 isOwner];
      v47 = HMFBooleanToString();
      v48 = [v383 homeAccessControl];
      [v48 isOwner];
      v49 = HMFBooleanToString();
      *buf = 138543874;
      v425 = v45;
      v426 = 2112;
      v427 = v47;
      v428 = 2112;
      v429 = v49;
      _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_INFO, "%{public}@Updated isOwner from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v42);
    v50 = [(HMUser *)v43 homeAccessControl];
    v51 = [v383 homeAccessControl];
    [v50 setOwner:{objc_msgSend(v51, "isOwner")}];

    v381 = 1;
  }

  v52 = [(HMUser *)v382 homeAccessControl];
  v53 = [v52 isAdministrator];
  v54 = [v383 homeAccessControl];
  v55 = [v54 isAdministrator];

  if (v53 != v55)
  {
    v56 = objc_autoreleasePoolPush();
    v57 = v382;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = HMFGetLogIdentifier();
      v60 = [(HMUser *)v57 homeAccessControl];
      [v60 isAdministrator];
      v61 = HMFBooleanToString();
      v62 = [v383 homeAccessControl];
      [v62 isAdministrator];
      v63 = HMFBooleanToString();
      *buf = 138543874;
      v425 = v59;
      v426 = 2112;
      v427 = v61;
      v428 = 2112;
      v429 = v63;
      _os_log_impl(&dword_19BB39000, v58, OS_LOG_TYPE_INFO, "%{public}@Updated isAdministrator from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v56);
    v64 = [(HMUser *)v57 homeAccessControl];
    v65 = [v383 homeAccessControl];
    [v64 setAdministrator:{objc_msgSend(v65, "isAdministrator")}];

    v381 = 1;
  }

  v66 = [(HMUser *)v382 homeAccessControl];
  v67 = [v66 isRemoteAccessAllowed];
  v68 = [v383 homeAccessControl];
  v69 = [v68 isRemoteAccessAllowed];

  if (v67 != v69)
  {
    v70 = objc_autoreleasePoolPush();
    v71 = v382;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v73 = HMFGetLogIdentifier();
      v74 = [(HMUser *)v71 homeAccessControl];
      [v74 isRemoteAccessAllowed];
      v75 = HMFBooleanToString();
      v76 = [v383 homeAccessControl];
      [v76 isRemoteAccessAllowed];
      v77 = HMFBooleanToString();
      *buf = 138543874;
      v425 = v73;
      v426 = 2112;
      v427 = v75;
      v428 = 2112;
      v429 = v77;
      _os_log_impl(&dword_19BB39000, v72, OS_LOG_TYPE_INFO, "%{public}@Updated isRemoteAccessAllowed from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v70);
    v78 = [(HMUser *)v71 homeAccessControl];
    v79 = [v383 homeAccessControl];
    [v78 setRemoteAccessAllowed:{objc_msgSend(v79, "isRemoteAccessAllowed")}];

    v381 = 1;
  }

  v80 = [(HMUser *)v382 homeAccessControl];
  v81 = [v80 presenceAuthStatus];
  v82 = [v383 homeAccessControl];
  v83 = [v82 presenceAuthStatus];
  v84 = HMFEqualObjects();

  if ((v84 & 1) == 0)
  {
    v85 = objc_autoreleasePoolPush();
    v86 = v382;
    v87 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = HMFGetLogIdentifier();
      v89 = [(HMUser *)v86 homeAccessControl];
      v90 = [v89 presenceAuthStatus];
      v91 = [v383 homeAccessControl];
      v92 = [v91 presenceAuthStatus];
      *buf = 138543874;
      v425 = v88;
      v426 = 2112;
      v427 = v90;
      v428 = 2112;
      v429 = v92;
      _os_log_impl(&dword_19BB39000, v87, OS_LOG_TYPE_INFO, "%{public}@Updated presence auth status from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v85);
    v93 = [v383 homeAccessControl];
    v94 = [v93 presenceAuthStatus];
    v95 = [(HMUser *)v86 homeAccessControl];
    [v95 setPresenceAuthStatus:v94];

    v381 = 1;
  }

  v96 = [(HMUser *)v382 homeAccessControl];
  v97 = [v96 presenceComputeStatus];
  v98 = [v383 homeAccessControl];
  v99 = [v98 presenceComputeStatus];
  v100 = HMFEqualObjects();

  if ((v100 & 1) == 0)
  {
    v101 = objc_autoreleasePoolPush();
    v102 = v382;
    v103 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      v104 = HMFGetLogIdentifier();
      v105 = [(HMUser *)v102 homeAccessControl];
      v106 = [v105 presenceComputeStatus];
      v107 = [v383 homeAccessControl];
      v108 = [v107 presenceComputeStatus];
      *buf = 138543874;
      v425 = v104;
      v426 = 2112;
      v427 = v106;
      v428 = 2112;
      v429 = v108;
      _os_log_impl(&dword_19BB39000, v103, OS_LOG_TYPE_INFO, "%{public}@Updated presence compute status from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v101);
    v109 = [v383 homeAccessControl];
    v110 = [v109 presenceComputeStatus];
    v111 = [(HMUser *)v102 homeAccessControl];
    [v111 setPresenceComputeStatus:v110];

    v381 = 1;
  }

  v112 = [(HMUser *)v382 homeAccessControl];
  v113 = [v112 camerasAccess];
  v114 = [v383 homeAccessControl];
  v115 = [v114 camerasAccess];
  v116 = HMFEqualObjects();

  if ((v116 & 1) == 0)
  {
    v117 = objc_autoreleasePoolPush();
    v118 = v382;
    v119 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
    {
      v120 = HMFGetLogIdentifier();
      v121 = [(HMUser *)v118 homeAccessControl];
      v122 = [v121 camerasAccess];
      v123 = [v383 homeAccessControl];
      v124 = [v123 camerasAccess];
      *buf = 138543874;
      v425 = v120;
      v426 = 2112;
      v427 = v122;
      v428 = 2112;
      v429 = v124;
      _os_log_impl(&dword_19BB39000, v119, OS_LOG_TYPE_INFO, "%{public}@Updated cameras access from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v117);
    v125 = [v383 homeAccessControl];
    v126 = [v125 camerasAccess];
    v127 = [(HMUser *)v118 homeAccessControl];
    [v127 setCamerasAccess:v126];

    v381 = 1;
  }

  v128 = [(HMUser *)v382 announceUserSettings];
  v129 = [v383 announceUserSettings];
  v130 = HMFEqualObjects();

  if ((v130 & 1) == 0)
  {
    v131 = [v383 announceUserSettings];
    [(HMUser *)v382 setAnnounceUserSettings:v131];
  }

  v132 = [(HMUser *)v382 homeAccessControl];
  v133 = [v132 isAnnounceAccessAllowed];
  v134 = [v383 homeAccessControl];
  v135 = [v134 isAnnounceAccessAllowed];

  if (v133 != v135)
  {
    v136 = objc_autoreleasePoolPush();
    v137 = v382;
    v138 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
    {
      v139 = HMFGetLogIdentifier();
      v140 = [(HMUser *)v137 homeAccessControl];
      [v140 isAnnounceAccessAllowed];
      v141 = HMFBooleanToString();
      v142 = [v383 homeAccessControl];
      [v142 isAnnounceAccessAllowed];
      v143 = HMFBooleanToString();
      *buf = 138543874;
      v425 = v139;
      v426 = 2112;
      v427 = v141;
      v428 = 2112;
      v429 = v143;
      _os_log_impl(&dword_19BB39000, v138, OS_LOG_TYPE_INFO, "%{public}@Updated isAnnounceAccessAllowed from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v136);
    v144 = [(HMUser *)v137 homeAccessControl];
    v145 = [v383 homeAccessControl];
    [v144 setAnnounceAccessAllowed:{objc_msgSend(v145, "isAnnounceAccessAllowed")}];

    v381 = 1;
  }

  v146 = [(HMUser *)v382 homeAccessControl];
  v147 = [v146 isRestrictedGuest];
  v148 = [v383 homeAccessControl];
  v149 = [v148 isRestrictedGuest];

  if (v147 != v149)
  {
    v150 = objc_autoreleasePoolPush();
    v151 = v382;
    v152 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
    {
      v153 = HMFGetLogIdentifier();
      v154 = [(HMUser *)v151 homeAccessControl];
      [v154 isRestrictedGuest];
      v155 = HMFBooleanToString();
      v156 = [v383 homeAccessControl];
      [v156 isRestrictedGuest];
      v157 = HMFBooleanToString();
      *buf = 138543874;
      v425 = v153;
      v426 = 2112;
      v427 = v155;
      v428 = 2112;
      v429 = v157;
      _os_log_impl(&dword_19BB39000, v152, OS_LOG_TYPE_INFO, "%{public}@Updated isRestrictedGuest from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v150);
    v158 = [(HMUser *)v151 homeAccessControl];
    v159 = [v383 homeAccessControl];
    [v158 setRestrictedGuest:{objc_msgSend(v159, "isRestrictedGuest")}];

    v381 = 1;
  }

  v160 = [v383 homeAccessControl];
  v161 = [v160 restrictedGuestAccessSettings];
  [v161 fixupAccessoriesForHome:v390];

  v162 = [(HMUser *)v382 homeAccessControl];
  v163 = [v162 restrictedGuestAccessSettings];
  v164 = [v383 homeAccessControl];
  v165 = [v164 restrictedGuestAccessSettings];
  v166 = HMFEqualObjects();

  if ((v166 & 1) == 0)
  {
    v167 = objc_autoreleasePoolPush();
    v168 = v382;
    v169 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
    {
      v170 = HMFGetLogIdentifier();
      v171 = [(HMUser *)v168 homeAccessControl];
      v172 = [v171 restrictedGuestAccessSettings];
      v173 = [v383 homeAccessControl];
      v174 = [v173 restrictedGuestAccessSettings];
      *buf = 138543874;
      v425 = v170;
      v426 = 2112;
      v427 = v172;
      v428 = 2112;
      v429 = v174;
      _os_log_impl(&dword_19BB39000, v169, OS_LOG_TYPE_INFO, "%{public}@Updated restricted guest access settings from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v167);
    v175 = [v383 homeAccessControl];
    v176 = [v175 restrictedGuestAccessSettings];
    v177 = [(HMUser *)v168 homeAccessControl];
    [v177 setRestrictedGuestAccessSettings:v176];

    v381 = 1;
  }

  v178 = [(HMUser *)v382 homeAccessControl];
  v179 = [v178 audioAnalysisUserDropInAccessLevel];
  v180 = [v383 homeAccessControl];
  LOBYTE(v179) = v179 == [v180 audioAnalysisUserDropInAccessLevel];

  if ((v179 & 1) == 0)
  {
    v181 = objc_autoreleasePoolPush();
    v182 = v382;
    v183 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
    {
      v184 = HMFGetLogIdentifier();
      v185 = MEMORY[0x1E696AD98];
      v186 = [(HMUser *)v182 homeAccessControl];
      v187 = [v185 numberWithUnsignedInteger:{objc_msgSend(v186, "audioAnalysisUserDropInAccessLevel")}];
      v188 = MEMORY[0x1E696AD98];
      v189 = [v383 homeAccessControl];
      v190 = [v188 numberWithUnsignedInteger:{objc_msgSend(v189, "audioAnalysisUserDropInAccessLevel")}];
      *buf = 138543874;
      v425 = v184;
      v426 = 2112;
      v427 = v187;
      v428 = 2112;
      v429 = v190;
      _os_log_impl(&dword_19BB39000, v183, OS_LOG_TYPE_INFO, "%{public}@Updating audio analysis drop in user access from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v181);
    v191 = [v383 homeAccessControl];
    v192 = [v191 audioAnalysisUserDropInAccessLevel];
    v193 = [(HMUser *)v182 homeAccessControl];
    [v193 setAudioAnalysisUserDropInAccessLevel:v192];

    v381 = 1;
  }

  v380 = [v383 assistantAccessControl];
  v194 = [(HMUser *)v382 assistantAccessControl];
  v375 = HMFEqualObjects();

  if ((v375 & 1) == 0)
  {
    v195 = objc_autoreleasePoolPush();
    v384 = v382;
    v196 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      v197 = HMFGetLogIdentifier();
      *buf = 138543618;
      v425 = v197;
      v426 = 2112;
      v427 = v380;
      _os_log_impl(&dword_19BB39000, v196, OS_LOG_TYPE_DEFAULT, "%{public}@Updated assistant access control via merge: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v195);
    v378 = [v380 accessories];
    if ([v378 count])
    {
      v387 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v378, "count")}];
      v422 = 0u;
      v423 = 0u;
      v420 = 0u;
      v421 = 0u;
      v198 = v378;
      v199 = [v198 countByEnumeratingWithState:&v420 objects:v436 count:16];
      if (v199)
      {
        v200 = *v421;
        do
        {
          for (i = 0; i != v199; ++i)
          {
            if (*v421 != v200)
            {
              objc_enumerationMutation(v198);
            }

            v202 = *(*(&v420 + 1) + 8 * i);
            v203 = [v202 uuid];
            v204 = [v390 accessoryWithUUID:v203];

            if (v204)
            {
              [v387 addObject:v204];
            }

            else
            {
              v205 = objc_autoreleasePoolPush();
              v206 = v384;
              v207 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
              {
                v208 = HMFGetLogIdentifier();
                v209 = [v202 uuid];
                *buf = 138543618;
                v425 = v208;
                v426 = 2112;
                v427 = v209;
                _os_log_impl(&dword_19BB39000, v207, OS_LOG_TYPE_INFO, "%{public}@Unable to find accessory with identifier: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v205);
            }
          }

          v199 = [v198 countByEnumeratingWithState:&v420 objects:v436 count:16];
        }

        while (v199);
      }

      v210 = [v380 mutableCopy];
      [v210 setAccessories:v387];
      v211 = [v210 copy];

      v212 = v211;
    }

    else
    {
      v212 = v380;
    }

    v380 = v212;
    [(HMUser *)v384 setAssistantAccessControl:?];
    if (v390)
    {
      v214 = [(HMUser *)v384 delegate];
      if ([v214 conformsToProtocol:&unk_1F0F63768])
      {
        v215 = v214;
      }

      else
      {
        v215 = 0;
      }

      v216 = v215;

      if (objc_opt_respondsToSelector())
      {
        v217 = [(HMUser *)v384 context];
        v218 = [v217 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __29__HMUser_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E754DE30;
        block[4] = v384;
        v417 = v380;
        v418 = v216;
        v419 = v390;
        dispatch_async(v218, block);
      }

      else
      {
        v219 = objc_autoreleasePoolPush();
        v220 = v384;
        v221 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
        {
          v222 = HMFGetLogIdentifier();
          *buf = 138543874;
          v425 = v222;
          v426 = 2112;
          v427 = v216;
          v428 = 2112;
          v429 = v380;
          _os_log_impl(&dword_19BB39000, v221, OS_LOG_TYPE_INFO, "%{public}@No delegate set to notify: %@, assistant access control via merge: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v219);
      }
    }
  }

  v379 = [v383 mediaContentProfileAccessControl];
  v223 = [(HMUser *)v382 mediaContentProfileAccessControl];
  v224 = HMFEqualObjects();

  if (v224)
  {
    v225 = v375 ^ 1;
  }

  else
  {
    v226 = objc_autoreleasePoolPush();
    v385 = v382;
    v227 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
    {
      v228 = HMFGetLogIdentifier();
      *buf = 138543618;
      v425 = v228;
      v426 = 2112;
      v427 = v379;
      _os_log_impl(&dword_19BB39000, v227, OS_LOG_TYPE_DEFAULT, "%{public}@Updated media content profile access control: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v226);
    v376 = [v379 accessories];
    if ([v376 count])
    {
      v388 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v376, "count")}];
      v414 = 0u;
      v415 = 0u;
      v412 = 0u;
      v413 = 0u;
      v229 = v376;
      v230 = [v229 countByEnumeratingWithState:&v412 objects:v435 count:16];
      if (v230)
      {
        v231 = *v413;
        do
        {
          for (j = 0; j != v230; ++j)
          {
            if (*v413 != v231)
            {
              objc_enumerationMutation(v229);
            }

            v233 = *(*(&v412 + 1) + 8 * j);
            v234 = [v233 uuid];
            v235 = [v390 accessoryWithUUID:v234];

            if (v235)
            {
              [v388 addObject:v235];
            }

            else
            {
              v236 = objc_autoreleasePoolPush();
              v237 = v385;
              v238 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v238, OS_LOG_TYPE_INFO))
              {
                v239 = HMFGetLogIdentifier();
                v240 = [v233 uuid];
                *buf = 138543618;
                v425 = v239;
                v426 = 2112;
                v427 = v240;
                _os_log_impl(&dword_19BB39000, v238, OS_LOG_TYPE_INFO, "%{public}@Unable to find accessory with identifier: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v236);
            }
          }

          v230 = [v229 countByEnumeratingWithState:&v412 objects:v435 count:16];
        }

        while (v230);
      }

      v241 = [v379 mutableCopy];
      [v241 setAccessories:v388];
      v242 = [v241 copy];

      v243 = v242;
    }

    else
    {
      v243 = v379;
    }

    v379 = v243;
    [(HMUser *)v385 setMediaContentProfileAccessControl:?];
    if (v390)
    {
      v244 = [(HMUser *)v385 delegate];
      if ([v244 conformsToProtocol:&unk_1F0F63768])
      {
        v245 = v244;
      }

      else
      {
        v245 = 0;
      }

      v246 = v245;

      if (objc_opt_respondsToSelector())
      {
        v247 = [(HMUser *)v385 context];
        v248 = [v247 queue];
        v408[0] = MEMORY[0x1E69E9820];
        v408[1] = 3221225472;
        v408[2] = __29__HMUser_mergeFromNewObject___block_invoke_364;
        v408[3] = &unk_1E754DE30;
        v408[4] = v385;
        v409 = v379;
        v410 = v246;
        v411 = v390;
        dispatch_async(v248, v408);
      }

      else
      {
        v249 = objc_autoreleasePoolPush();
        v250 = v385;
        v251 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v251, OS_LOG_TYPE_DEBUG))
        {
          v252 = HMFGetLogIdentifier();
          *buf = 138543874;
          v425 = v252;
          v426 = 2112;
          v427 = v246;
          v428 = 2112;
          v429 = v379;
          _os_log_impl(&dword_19BB39000, v251, OS_LOG_TYPE_DEBUG, "%{public}@No delegate set to notify: %@, media content profile access control via merge: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v249);
      }
    }

    v225 = 1;
  }

  v377 = [v383 userListeningHistoryUpdateControl];
  v253 = [(HMUser *)v382 userListeningHistoryUpdateControl];
  v254 = HMFEqualObjects();

  if ((v254 & 1) == 0)
  {
    v255 = objc_autoreleasePoolPush();
    v386 = v382;
    v256 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
    {
      v257 = HMFGetLogIdentifier();
      *buf = 138543618;
      v425 = v257;
      v426 = 2112;
      v427 = v377;
      _os_log_impl(&dword_19BB39000, v256, OS_LOG_TYPE_DEFAULT, "%{public}@Updated user listening history update control: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v255);
    v373 = [v377 accessories];
    if ([v373 count])
    {
      v389 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v373, "count")}];
      v406 = 0u;
      v407 = 0u;
      v404 = 0u;
      v405 = 0u;
      v258 = v373;
      v259 = [v258 countByEnumeratingWithState:&v404 objects:v434 count:16];
      if (v259)
      {
        v260 = *v405;
        do
        {
          for (k = 0; k != v259; ++k)
          {
            if (*v405 != v260)
            {
              objc_enumerationMutation(v258);
            }

            v262 = *(*(&v404 + 1) + 8 * k);
            v263 = [v262 uuid];
            v264 = [v390 accessoryWithUUID:v263];

            if (v264)
            {
              [v389 addObject:v264];
            }

            else
            {
              v265 = objc_autoreleasePoolPush();
              v266 = v386;
              v267 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v267, OS_LOG_TYPE_INFO))
              {
                v268 = HMFGetLogIdentifier();
                v269 = [v262 uuid];
                *buf = 138543874;
                v425 = v268;
                v426 = 2112;
                v427 = v269;
                v428 = 2080;
                v429 = "[HMUser mergeFromNewObject:]";
                _os_log_impl(&dword_19BB39000, v267, OS_LOG_TYPE_INFO, "%{public}@Unable to find accessory with identifier: %@, %s", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v265);
            }
          }

          v259 = [v258 countByEnumeratingWithState:&v404 objects:v434 count:16];
        }

        while (v259);
      }

      v270 = [v377 mutableCopy];
      [v270 setAccessories:v389];
      v271 = [v270 copy];

      v272 = v271;
    }

    else
    {
      v272 = v377;
    }

    v377 = v272;
    [(HMUser *)v386 setUserListeningHistoryUpdateControl:?];
    if (v390)
    {
      v273 = [(HMUser *)v386 delegate];
      if ([v273 conformsToProtocol:&unk_1F0F63768])
      {
        v274 = v273;
      }

      else
      {
        v274 = 0;
      }

      v275 = v274;

      if (objc_opt_respondsToSelector())
      {
        v276 = [(HMUser *)v386 context];
        v277 = [v276 queue];
        v400[0] = MEMORY[0x1E69E9820];
        v400[1] = 3221225472;
        v400[2] = __29__HMUser_mergeFromNewObject___block_invoke_367;
        v400[3] = &unk_1E754DE30;
        v400[4] = v386;
        v401 = v377;
        v402 = v275;
        v403 = v390;
        dispatch_async(v277, v400);
      }

      else
      {
        v278 = objc_autoreleasePoolPush();
        v279 = v386;
        v280 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v280, OS_LOG_TYPE_DEBUG))
        {
          v281 = HMFGetLogIdentifier();
          *buf = 138543874;
          v425 = v281;
          v426 = 2112;
          v427 = v275;
          v428 = 2112;
          v429 = v377;
          _os_log_impl(&dword_19BB39000, v280, OS_LOG_TYPE_DEBUG, "%{public}@No delegate set to notify: %@, updated user update listening history via merge: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v278);
      }
    }

    v225 = 1;
  }

  v282 = v382;
  if (v381 && v382 && v390)
  {
    v283 = [(HMUser *)v382 context];
    v284 = [v283 queue];
    v398[0] = MEMORY[0x1E69E9820];
    v398[1] = 3221225472;
    v398[2] = __29__HMUser_mergeFromNewObject___block_invoke_369;
    v398[3] = &unk_1E754E5C0;
    v398[4] = v382;
    v399 = v390;
    dispatch_async(v284, v398);

    v282 = v382;
  }

  v285 = [(HMUser *)v282 senderCorrelationIdentifier];
  v286 = [v383 senderCorrelationIdentifier];
  v287 = HMFEqualObjects();

  v288 = v382;
  if ((v287 & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    v289 = [v383 senderCorrelationIdentifier];
    senderCorrelationIdentifier = v382->_senderCorrelationIdentifier;
    v382->_senderCorrelationIdentifier = v289;

    v288 = v382;
    os_unfair_lock_unlock(&v382->_lock);
  }

  v291 = [(HMUser *)v288 photosPersonManagerSettings];
  v292 = [v383 photosPersonManagerSettings];
  if ([v291 isEqual:v292])
  {
    v293 = [(HMUser *)v382 photosPersonManagerZoneUUID];
    v294 = [v383 photosPersonManagerZoneUUID];
    v295 = HMFEqualObjects();

    if (v295)
    {
      goto LABEL_159;
    }
  }

  else
  {
  }

  v296 = objc_autoreleasePoolPush();
  v297 = v382;
  v298 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v298, OS_LOG_TYPE_INFO))
  {
    v299 = HMFGetLogIdentifier();
    v300 = [(HMUser *)v297 photosPersonManagerSettings];
    v301 = [v383 photosPersonManagerSettings];
    v302 = [(HMUser *)v297 photosPersonManagerZoneUUID];
    v303 = [v383 photosPersonManagerZoneUUID];
    *buf = 138544386;
    v425 = v299;
    v426 = 2112;
    v427 = v300;
    v428 = 2112;
    v429 = v301;
    v430 = 2112;
    v431 = v302;
    v432 = 2112;
    v433 = v303;
    _os_log_impl(&dword_19BB39000, v298, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings updated from %@ to %@, zoneUUID updated from %@ to %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v296);
  v304 = [v383 photosPersonManagerSettings];
  [(HMUser *)v297 setPhotosPersonManagerSettings:v304];

  v305 = [v383 photosPersonManagerZoneUUID];
  [(HMUser *)v297 setPhotosPersonManagerZoneUUID:v305];

  [(HMUser *)v297 configurePhotosPersonManager];
  v306 = [(HMUser *)v297 delegate];
  if ([v306 conformsToProtocol:&unk_1F0F63768])
  {
    v307 = v306;
  }

  else
  {
    v307 = 0;
  }

  v308 = v307;

  if (objc_opt_respondsToSelector())
  {
    v309 = [(HMUser *)v297 context];
    v310 = [v309 queue];
    v396[0] = MEMORY[0x1E69E9820];
    v396[1] = 3221225472;
    v396[2] = __29__HMUser_mergeFromNewObject___block_invoke_372;
    v396[3] = &unk_1E754E5C0;
    v396[4] = v297;
    v397 = v308;
    dispatch_async(v310, v396);
  }

  v225 = 1;
LABEL_159:
  v311 = [(HMUser *)v382 needsiTunesMultiUserRepair];
  if (v311 != [v383 needsiTunesMultiUserRepair])
  {
    v312 = objc_autoreleasePoolPush();
    v313 = v382;
    v314 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
    {
      v315 = HMFGetLogIdentifier();
      v316 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v383, "needsiTunesMultiUserRepair")}];
      *buf = 138543618;
      v425 = v315;
      v426 = 2112;
      v427 = v316;
      _os_log_impl(&dword_19BB39000, v314, OS_LOG_TYPE_DEFAULT, "%{public}@Updated needs iTunes repair to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v312);
    -[HMUser setNeedsiTunesMultiUserRepair:](v313, "setNeedsiTunesMultiUserRepair:", [v383 needsiTunesMultiUserRepair]);
    v317 = [(HMUser *)v313 delegate];
    if ([v317 conformsToProtocol:&unk_1F0F63768])
    {
      v318 = v317;
    }

    else
    {
      v318 = 0;
    }

    v319 = v318;

    if (objc_opt_respondsToSelector())
    {
      v320 = [(HMUser *)v313 context];
      v321 = [v320 queue];
      v394[0] = MEMORY[0x1E69E9820];
      v394[1] = 3221225472;
      v394[2] = __29__HMUser_mergeFromNewObject___block_invoke_375;
      v394[3] = &unk_1E754E5C0;
      v394[4] = v313;
      v395 = v319;
      dispatch_async(v321, v394);
    }

    v225 = 1;
  }

  v322 = [(HMUser *)v382 supportsSharedHomeHH2AutoMigration];
  if (v322 != [v383 supportsSharedHomeHH2AutoMigration])
  {
    v323 = objc_autoreleasePoolPush();
    v324 = v382;
    v325 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v325, OS_LOG_TYPE_DEFAULT))
    {
      v326 = HMFGetLogIdentifier();
      [v383 supportsSharedHomeHH2AutoMigration];
      v327 = HMFBooleanToString();
      *buf = 138543618;
      v425 = v326;
      v426 = 2112;
      v427 = v327;
      _os_log_impl(&dword_19BB39000, v325, OS_LOG_TYPE_DEFAULT, "%{public}@Updated supports automatic HH2 migration by owner to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v323);
    -[HMUser setSupportsSharedHomeHH2AutoMigration:](v324, "setSupportsSharedHomeHH2AutoMigration:", [v383 supportsSharedHomeHH2AutoMigration]);
    v328 = [(HMUser *)v324 delegate];
    if ([v328 conformsToProtocol:&unk_1F0F63768])
    {
      v329 = v328;
    }

    else
    {
      v329 = 0;
    }

    v330 = v329;

    if (objc_opt_respondsToSelector())
    {
      v331 = [(HMUser *)v324 context];
      v332 = [v331 delegateCaller];
      v391[0] = MEMORY[0x1E69E9820];
      v391[1] = 3221225472;
      v391[2] = __29__HMUser_mergeFromNewObject___block_invoke_378;
      v391[3] = &unk_1E754E5C0;
      v392 = v330;
      v393 = v324;
      [v332 invokeBlock:v391];
    }

    v225 = 1;
  }

  v333 = [(HMUser *)v382 requiresAdaptiveTemperatureAutomationsDisclosure];
  if (v333 != [v383 requiresAdaptiveTemperatureAutomationsDisclosure])
  {
    -[HMUser setRequiresAdaptiveTemperatureAutomationsDisclosure:](v382, "setRequiresAdaptiveTemperatureAutomationsDisclosure:", [v383 requiresAdaptiveTemperatureAutomationsDisclosure]);
    v225 = 1;
  }

  v334 = [(HMUser *)v382 iCloudAltDSID];
  v335 = [v383 iCloudAltDSID];
  v336 = HMFEqualObjects();

  if ((v336 & 1) == 0)
  {
    v337 = [v383 iCloudAltDSID];
    [(HMUser *)v382 setiCloudAltDSID:v337];
  }

  v338 = [(HMUser *)v382 givenName];
  v339 = [v383 givenName];
  v340 = HMFEqualObjects();

  if (v340)
  {
    v341 = v336 ^ 1;
  }

  else
  {
    v342 = [v383 givenName];
    [(HMUser *)v382 setGivenName:v342];

    v341 = 1;
  }

  v343 = [(HMUser *)v382 familyName];
  v344 = [v383 familyName];
  v345 = HMFEqualObjects();

  if (v345)
  {
    if (!v341)
    {
      goto LABEL_189;
    }
  }

  else
  {
    v346 = [v383 familyName];
    [(HMUser *)v382 setFamilyName:v346];
  }

  [(HMUser *)v382 _handleSharedUserProfileMetadataUpdated];
  v225 = 1;
LABEL_189:
  v347 = [(HMUser *)v382 settingsInitialized];
  v348 = [v383 settingsInitialized];
  v349 = [v390 homeManager];
  v350 = [v349 isDaemonRunningWithROARFramework];

  v351 = v347 ^ v348;
  if (v350)
  {
    v352 = [(HMUser *)v382 context];
    if (v352)
    {
      v353 = [v383 pendingPrivateSettings];
      v354 = v353 == 0;

      if (!v354)
      {
        v355 = [v383 pendingPrivateSettings];
        v356 = [(HMUser *)v382 context];
        [(HMUser *)v382 createConfigureAndMergePrivateSettingsIfNecessary:v355 withContext:v356];

        [v383 setPendingPrivateSettings:0];
      }
    }

    v357 = [(HMUser *)v382 context];
    if (v357)
    {
      v358 = [v383 pendingSharedSettings];
      v359 = v358 == 0;

      if (!v359)
      {
        v360 = [v383 pendingSharedSettings];
        v361 = [(HMUser *)v382 context];
        [(HMUser *)v382 createConfigureAndMergeSharedSettingsIfNecessary:v360 withContext:v361];

        [v383 setPendingSharedSettings:0];
      }
    }
  }

  else
  {
    v362 = [(HMUser *)v382 settingsController];
    v363 = [v383 settingsController];
    [v362 mergeWith:v363 settingsInitializedWasModified:v351];

    v364 = [(HMUser *)v382 privateSettingsController];
    v365 = [v383 privateSettingsController];
    [v364 mergeWith:v365 settingsInitializedWasModified:v351];
  }

  v366 = [(HMUser *)v382 pairingIdentity];
  v367 = [v383 pairingIdentity];
  v368 = HMFEqualObjects();

  if (v368)
  {
    v213 = v351 | v225;
  }

  else
  {
    v369 = [(HMUser *)v382 pairingIdentity];
    v370 = [v383 pairingIdentity];
    [(HMUser *)v382 _mergeUserPairingIdentityIfNecessary:v369 withNewPairingIdentity:v370];

    v213 = 1;
  }

LABEL_201:
  v371 = *MEMORY[0x1E69E9840];
  return v213 & 1;
}

void __29__HMUser_mergeFromNewObject___block_invoke(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__HMUser_mergeFromNewObject___block_invoke_2;
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

void __29__HMUser_mergeFromNewObject___block_invoke_364(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_365;
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

void __29__HMUser_mergeFromNewObject___block_invoke_367(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_368;
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

void __29__HMUser_mergeFromNewObject___block_invoke_369(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_370;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __29__HMUser_mergeFromNewObject___block_invoke_372(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_373;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __29__HMUser_mergeFromNewObject___block_invoke_375(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__HMUser_mergeFromNewObject___block_invoke_2_376;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_378(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 supportsSharedHomeHH2AutoMigration];

  return [v1 user:v2 didUpdateSupportsSharedHomeHH2AutoMigration:v3];
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2_376(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) needsiTunesMultiUserRepair];
    v6 = HMFBooleanToString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateNeedsiTunesMultiUserRepair : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) user:*(a1 + 32) didUpdateNeedsiTunesMultiUserRepair:{objc_msgSend(*(a1 + 32), "needsiTunesMultiUserRepair")}];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __29__HMUser_mergeFromNewObject___block_invoke_2_373(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) photosPersonManagerSettings];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdatePhotosPersonManagerSettings : %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 photosPersonManagerSettings];
  [v8 user:v7 didUpdatePhotosPersonManagerSettings:v10];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2_370(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) homeAccessControl];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated access control via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) notifyDelegateOfAccessControlUpdateForUser:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2_368(uint64_t a1)
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated user listening history update control via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) user:*(a1 + 32) didUpdateUserListeningHistoryUpdateControl:*(a1 + 40) forHome:*(a1 + 56)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2_365(uint64_t a1)
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated media content profile access control via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) user:*(a1 + 32) didUpdateMediaContentProfileAccessControl:*(a1 + 40) forHome:*(a1 + 56)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __29__HMUser_mergeFromNewObject___block_invoke_2(uint64_t a1)
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
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated assistant access control via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) user:*(a1 + 32) didUpdateAssistantAccessControl:*(a1 + 40) forHome:*(a1 + 56)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_mergeWithNewAccessoryInvitations:(id)a3
{
  v4 = a3;
  v5 = [HMObjectMergeCollection alloc];
  v6 = [(HMUser *)self pendingAccessoryInvitations];
  v7 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:v6 newObjects:v4];

  v8 = [(HMObjectMergeCollection *)v7 removedObjects];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__HMUser__mergeWithNewAccessoryInvitations___block_invoke;
  v15[3] = &unk_1E754C138;
  v15[4] = self;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

  v9 = [(HMObjectMergeCollection *)v7 addedObjects];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__HMUser__mergeWithNewAccessoryInvitations___block_invoke_361;
  v14[3] = &unk_1E754C138;
  v14[4] = self;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

  [(HMObjectMergeCollection *)v7 mergeCommonObjects];
  v10 = [(HMObjectMergeCollection *)v7 finalObjects];
  [(HMMutableArray *)self->_pendingAccessoryInvitations setArray:v10];

  if ([(HMObjectMergeCollection *)v7 isModified])
  {
    v11 = [(HMUser *)self home];
    [v11 notifyDelegateOfAccesoryInvitationsUpdateForUser:self];
  }

  v12 = [(HMObjectMergeCollection *)v7 isModified];

  return v12;
}

void __44__HMUser__mergeWithNewAccessoryInvitations___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed accessory invitation via user merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

void __44__HMUser__mergeWithNewAccessoryInvitations___block_invoke_361(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added accessory invitation via user merge: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [v3 accessory];
  v9 = [*(a1 + 32) home];
  v10 = [v9 accessories];
  v11 = [v8 uniqueIdentifier];
  v12 = [v10 hmf_firstObjectWithUniqueIdentifier:v11];

  [v3 setAccessory:v12];
  v13 = *MEMORY[0x1E69E9840];
}

- (HMUser)initWithCoder:(id)a3
{
  v132 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userUUID"];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  if (!v6)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v119 = v18;
      v120 = 2112;
      v121 = 0;
      v122 = 2112;
      v123 = v5;
      v19 = "%{public}@Failed to initialize from decoded uuid: %@/%@";
      v20 = v17;
      v21 = 32;
LABEL_26:
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }

LABEL_27:

    objc_autoreleasePoolPop(v16);
    v51 = 0;
    goto LABEL_40;
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userDisplayName"];
  v8 = [v4 decodeBoolForKey:@"HM.isCurrentUser"];
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      v10 = +[HMLocalization sharedManager];
      v7 = [v10 getLocalizedString:@"CURRENT_USER"];

      goto LABEL_5;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v119 = v18;
      v120 = 2112;
      v121 = 0;
      v122 = 1024;
      LODWORD(v123) = 0;
      v19 = "%{public}@Failed to initialize from decoded name: %@, isCurrentUser: %{BOOL}d";
      v20 = v17;
      v21 = 28;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

LABEL_5:
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v13 = [(HMUser *)self initWithUserID:v11 name:v7 uuid:v6 home:v12];
  v14 = v13;
  if (v13)
  {
    v13->_currentUser = v9;
    v111 = v11;
    v112 = v7;
    if ([v4 containsValueForKey:@"HM.userAccessAllowed"])
    {
      v15 = [v4 decodeBoolForKey:@"HM.userAccessAllowed"];
    }

    else
    {
      v15 = 1;
    }

    v107 = v12;
    v109 = v5;
    v22 = [v4 decodeBoolForKey:@"HM.isOwnerUser"];
    v113 = [v4 decodeBoolForKey:@"isAdminUser"];
    v23 = [v4 decodeBoolForKey:@"HM.isUserAllowedRemoteAccess"];
    LOBYTE(v24) = [v4 decodeBoolForKey:@"HM.u.announce.access"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDUserAudioAnalysisUserDropInAccessLevelCodingKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    v105 = [v27 unsignedIntegerValue];
    v108 = v6;
    if ([v4 containsValueForKey:@"HMHomeAccessControlOverrideCodingKey"])
    {
      v28 = [v4 decodeIntegerForKey:@"HMHomeAccessControlOverrideCodingKey"];
      v29 = objc_autoreleasePoolPush();
      v30 = v14;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v119 = v32;
        v120 = 2048;
        v121 = v28;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "%{public}@Overriding Home Access Control for current user to 0x%08lx", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v24 = (v28 >> 4) & 1;
      v15 = v28 & 1;
      v23 = (v28 >> 3) & 1;
      v113 = (v28 >> 1) & 1;
      v33 = (v28 >> 2) & 1;
    }

    else
    {
      v33 = v22;
    }

    v103 = v24;
    v104 = v23;
    v110 = [v4 decodeBoolForKey:@"HM.u.isRG"];
    v115 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.RG.homeAccessSettings"];
    v34 = objc_autoreleasePoolPush();
    v106 = v14;
    v35 = v14;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = HMFGetLogIdentifier();
      v38 = HMFBooleanToString();
      v39 = HMFBooleanToString();
      v40 = HMFBooleanToString();
      HMFBooleanToString();
      v102 = v34;
      v41 = v33;
      v43 = v42 = v15;
      *buf = 138544898;
      v119 = v37;
      v120 = 2112;
      v121 = v111;
      v122 = 2112;
      v123 = v112;
      v124 = 2112;
      v125 = v38;
      v126 = 2112;
      v127 = v39;
      v128 = 2112;
      v129 = v40;
      v130 = 2112;
      v131 = v43;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_DEBUG, "%{public}@userID: %@, name: %@, isCurrentUser: %@, isOwner: %@, isAdmin: %@, isRG: %@", buf, 0x48u);

      v15 = v42;
      v33 = v41;
      v34 = v102;
    }

    objc_autoreleasePoolPop(v34);
    v44 = [HMHomeAccessControl alloc];
    v45 = [HMUserPresenceAuthorization authWithCoder:v4];
    v46 = [HMUserPresenceCompute computeWithCoder:v4];
    v47 = [HMUserCameraAccess accessWithCoder:v4];
    LOBYTE(v101) = v110;
    LOBYTE(v100) = v103;
    v48 = [(HMHomeAccessControl *)v44 initWithUser:v35 allowAccess:v15 owner:v33 administratorPrivilege:v113 remoteAccess:v104 presenceAuthStatus:v45 presenceComputeStatus:v46 announceAccess:v100 camerasAccess:v47 audioAnalysisUserDropInAccessLevel:v105 restrictedGuest:v101 restrictedGuestAccessSettings:v115];
    v49 = v35[7];
    v35[7] = v48;

    if ((v15 & 1) == 0)
    {
      if ([v4 containsValueForKey:@"HMHomeAccessNotAllowedReasonCodeCodingKey"])
      {
        v50 = [v4 decodeIntegerForKey:@"HMHomeAccessNotAllowedReasonCodeCodingKey"];
      }

      else
      {
        v50 = 1;
      }

      v52 = objc_autoreleasePoolPush();
      v53 = v35;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = HMFGetLogIdentifier();
        v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v50];
        *buf = 138543618;
        v119 = v55;
        v120 = 2112;
        v121 = v56;
        _os_log_impl(&dword_19BB39000, v54, OS_LOG_TYPE_INFO, "%{public}@Access is not allowed due to : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v52);
      [v35[7] setAccessNotAllowedReasonCode:v50];
    }

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.assistantAccessControl"];
    v58 = v35[8];
    v35[8] = v57;

    v59 = MEMORY[0x1E695DFD8];
    v60 = objc_opt_class();
    v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
    v62 = [v4 decodeObjectOfClasses:v61 forKey:@"HM.u.mu.accessories"];

    if (v62)
    {
      v63 = [[HMMediaContentProfileAccessControl alloc] initWithUser:v35 accessories:v62];
      v64 = v35[9];
      v35[9] = v63;
    }

    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
    v68 = [v4 decodeObjectOfClasses:v67 forKey:@"HM.u.mc.accessories"];

    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __24__HMUser_initWithCoder___block_invoke;
    v116[3] = &unk_1E754DFD0;
    v69 = v35;
    v117 = v69;
    v114 = v68;
    v70 = [v68 na_map:v116];
    if (v70)
    {
      v71 = [[HMUserListeningHistoryUpdateControl alloc] initWithAccessories:v70];
      v72 = v69[10];
      v69[10] = v71;
    }

    v5 = v109;
    if ([v69 isCurrentUser])
    {
      v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.u.announce.Settings"];
      v74 = v69[16];
      v69[16] = v73;
    }

    v75 = MEMORY[0x1E695DFD8];
    v76 = objc_opt_class();
    v77 = objc_opt_class();
    v78 = [v75 setWithObjects:{v76, v77, objc_opt_class(), 0}];
    v79 = [v4 decodeObjectOfClasses:v78 forKey:@"HM2.u.s.private"];
    v80 = v69[28];
    v69[28] = v79;

    v81 = [v4 decodeObjectOfClasses:v78 forKey:@"HM2.u.s.shared"];
    v82 = v69[29];
    v69[29] = v81;

    [v69[24] decodeWithCoder:v4];
    [v69[25] decodeWithCoder:v4];
    v83 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.senderCorrelationIdentifier"];
    v84 = v69[3];
    v69[3] = v83;

    v85 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.photosPersonManagerSettings"];
    v86 = v69[18];
    v69[18] = v85;

    v87 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.photosPersonManagerZoneUUID"];
    v88 = v69[19];
    v69[19] = v87;

    v89 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.u.itunesRepair"];
    *(v69 + 33) = [v89 BOOLValue];

    *(v69 + 34) = [v4 decodeBoolForKey:@"HMSettingsContainerSettingsInitializedKey"];
    *(v69 + 35) = [v4 decodeBoolForKey:@"HM.u.automaticHH2migration"];
    v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.pairingIdentity"];
    v91 = v69[13];
    v69[13] = v90;

    v92 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.useriCloudAltDSID"];
    v93 = v69[20];
    v69[20] = v92;

    v94 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.userGivenName"];
    v95 = v69[21];
    v69[21] = v94;

    v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.userFamilyName"];
    v97 = v69[22];
    v69[22] = v96;

    *(v69 + 36) = [v4 decodeBoolForKey:@"HM.u.requiresATADisclosureCodingKey"];
    v12 = v107;
    v6 = v108;
    v11 = v111;
    v7 = v112;
    v14 = v106;
  }

  self = v14;

  v51 = self;
LABEL_40:

  v98 = *MEMORY[0x1E69E9840];
  return v51;
}

id __24__HMUser_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 accessoryWithUUID:v3];

  return v5;
}

- (id)logIdentifier
{
  v2 = [(HMUser *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_handleSharedUserProfileMetadataUpdated
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(HMUser *)self delegate];
  if ([v3 conformsToProtocol:&unk_1F0F63768])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v9;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling sharedUserProfileMetadataUpdatedForUser on client delegate", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(HMUser *)v7 context];
    v11 = [v10 delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__HMUser__handleSharedUserProfileMetadataUpdated__block_invoke;
    v13[3] = &unk_1E754E5C0;
    v14 = v5;
    v15 = v7;
    [v11 invokeBlock:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchProfilePhotoAndCropRect:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v24;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v25);
  }

  v5 = v4;
  v6 = [(HMUser *)self context];
  if (v6)
  {
    v32 = @"kUserUUIDKey";
    v7 = [(HMUser *)self uuid];
    v8 = [v7 UUIDString];
    v33 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    v10 = objc_alloc(MEMORY[0x1E69A2A10]);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    v12 = [(HMUser *)self uuid];
    v13 = [v11 initWithTarget:v12];
    v14 = [v10 initWithName:@"HMU.fetchProfilePhoto" destination:v13 payload:v9];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke;
    v29 = &unk_1E754DE00;
    v30 = self;
    v31 = v5;
    [v14 setResponseHandler:&v26];
    v15 = [v6 messageDispatcher];
    [v15 sendMessage:v14];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v19;
      v36 = 2080;
      v37 = "[HMUser fetchProfilePhotoAndCropRect:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = 0;
LABEL_3:
    v8 = 0;
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v12;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEBUG, "%{public}@profile photo response %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v8 = [v6 valueForKey:@"HM.u.profilePhotoData"];
  v30 = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v7 = [v6 hmf_unarchivedObjectForKey:@"HM.u.profilePhotoCropRect" ofClasses:v13];

  if (!v8)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = 0;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to get profile photo from response data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [MEMORY[0x1E696ABC0] hmErrorWithCode:-1 description:@"No profile photo" reason:@"Unable to find or decode profile photo" suggestion:0];

    goto LABEL_3;
  }

LABEL_7:
  v14 = [*(a1 + 32) context];
  v15 = [v14 queue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke_340;
  v25[3] = &unk_1E754D7A8;
  v16 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v26 = v8;
  v27 = v7;
  v28 = v5;
  v29 = v16;
  v17 = v5;
  v18 = v7;
  v19 = v8;
  dispatch_async(v15, v25);

  v20 = *MEMORY[0x1E69E9840];
}

void __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke_340(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__HMUser_fetchProfilePhotoAndCropRect___block_invoke_2;
  v9[3] = &unk_1E754D208;
  v4 = a1[8];
  v5 = a1[5];
  v6 = a1[6];
  *&v7 = a1[7];
  *(&v7 + 1) = v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 invokeBlock:v9];
}

- (void)fetchProfilePhoto:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v24;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v25);
  }

  v5 = v4;
  v6 = [(HMUser *)self context];
  if (v6)
  {
    v32 = @"kUserUUIDKey";
    v7 = [(HMUser *)self uuid];
    v8 = [v7 UUIDString];
    v33 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    v10 = objc_alloc(MEMORY[0x1E69A2A10]);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    v12 = [(HMUser *)self uuid];
    v13 = [v11 initWithTarget:v12];
    v14 = [v10 initWithName:@"HMU.fetchProfilePhoto" destination:v13 payload:v9];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __28__HMUser_fetchProfilePhoto___block_invoke;
    v29 = &unk_1E754DE00;
    v30 = self;
    v31 = v5;
    [v14 setResponseHandler:&v26];
    v15 = [v6 messageDispatcher];
    [v15 sendMessage:v14];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v19;
      v36 = 2080;
      v37 = "[HMUser fetchProfilePhoto:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __28__HMUser_fetchProfilePhoto___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
LABEL_2:
    v7 = 0;
    goto LABEL_6;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@profile photo response %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v7 = [v6 valueForKey:@"HM.u.profilePhotoData"];
  if (!v7)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = 0;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get profile photo from response data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [MEMORY[0x1E696ABC0] hmErrorWithCode:-1 description:@"No profile photo" reason:@"Unable to find or decode profile photo" suggestion:0];

    goto LABEL_2;
  }

LABEL_6:
  v12 = [*(a1 + 32) context];
  v13 = [v12 queue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __28__HMUser_fetchProfilePhoto___block_invoke_338;
  v22[3] = &unk_1E754D208;
  v14 = *(a1 + 40);
  v22[4] = *(a1 + 32);
  v24 = v5;
  v25 = v14;
  v23 = v7;
  v15 = v5;
  v16 = v7;
  dispatch_async(v13, v22);

  v17 = *MEMORY[0x1E69E9840];
}

void __28__HMUser_fetchProfilePhoto___block_invoke_338(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__HMUser_fetchProfilePhoto___block_invoke_2;
  v4[3] = &unk_1E754E0F8;
  v7 = a1[7];
  v5 = a1[5];
  v6 = a1[6];
  [v3 invokeBlock:v4];
}

- (void)setPhotosPersonManagerZoneUUID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  photosPersonManagerZoneUUID = self->_photosPersonManagerZoneUUID;
  self->_photosPersonManagerZoneUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)photosPersonManagerZoneUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_photosPersonManagerZoneUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPhotosPersonManagerSettings:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  photosPersonManagerSettings = self->_photosPersonManagerSettings;
  self->_photosPersonManagerSettings = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMPhotosPersonManagerSettings)photosPersonManagerSettings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_photosPersonManagerSettings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPhotosPersonManager:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  photosPersonManager = self->_photosPersonManager;
  self->_photosPersonManager = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMPhotosPersonManager)photosPersonManager
{
  os_unfair_lock_lock_with_options();
  v3 = self->_photosPersonManager;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __51__HMUser_setNeedsiTunesMultiUserRepair_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v6 = [WeakRetained context];
    v7 = [v6 queue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__HMUser_setNeedsiTunesMultiUserRepair_completion___block_invoke_2;
    v8[3] = &unk_1E754E458;
    v10 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)sendClientShareRepairRequest:(id)a3 containerID:(id)a4 completion:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMUser *)self context];
  if (!v10)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser sendClientShareRepairRequest:containerID:completion:]", @"completion"];
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v43;
      v53 = 2112;
      v54 = v39;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v39 userInfo:0];
    objc_exception_throw(v44);
  }

  v12 = v11;
  if (v11)
  {
    v13 = [(HMUser *)self home];
    v14 = v13;
    if (v13 && ([v13 uuid], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = [v14 currentUser];
      v17 = [v14 owner];
      v18 = [v16 isEqual:v17];

      if (v18)
      {
        if (v8)
        {
          v49[0] = @"HM.u.to";
          v46 = [(HMUser *)self uuid];
          v19 = [v46 UUIDString];
          v50[0] = v19;
          v50[1] = v9;
          v49[1] = @"HM.u.container";
          v49[2] = @"HM.u.home";
          v20 = [v14 uuid];
          v21 = [v20 UUIDString];
          v50[2] = v21;
          v49[3] = @"HM.u.repairInfo";
          v22 = encodeRootObject(v8);
          v50[3] = v22;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:4];

          v23 = objc_alloc(MEMORY[0x1E69A2A10]);
          v24 = objc_alloc(MEMORY[0x1E69A2A00]);
          v25 = [(HMUser *)self uuid];
          v26 = [v24 initWithTarget:v25];
          v27 = [v23 initWithName:@"HM.shareRepair" destination:v26 payload:v45];

          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __62__HMUser_sendClientShareRepairRequest_containerID_completion___block_invoke;
          v47[3] = &unk_1E754C0F0;
          v48 = v10;
          [v27 setResponseHandler:v47];
          v28 = [v12 messageDispatcher];
          [v28 sendMessage:v27];

          goto LABEL_16;
        }

        v29 = MEMORY[0x1E696ABC0];
        v30 = @"Repair request is missing";
        v31 = @"Need valid repair request.";
      }

      else
      {
        v29 = MEMORY[0x1E696ABC0];
        v30 = @"Current User is not owner";
        v31 = @"Can only send from owner user.";
      }

      v32 = 3;
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v30 = @"Home is invalid";
      v31 = @"Valid home not found.";
      v32 = 2;
    }

    v37 = [v29 hmErrorWithCode:v32 description:v30 reason:v31 suggestion:0];
    (*(v10 + 2))(v10, v37);

    goto LABEL_16;
  }

  v33 = objc_autoreleasePoolPush();
  v34 = self;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v36;
    v53 = 2080;
    v54 = "[HMUser sendClientShareRepairRequest:containerID:completion:]";
    _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v33);
  v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(v10 + 2))(v10, v14);
LABEL_16:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)sendClientShareURL:(id)a3 shareToken:(id)a4 containerID:(id)a5 fromUser:(id)a6 completion:(id)a7
{
  v69 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMUser *)self context];
  if (!v16)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser sendClientShareURL:shareToken:containerID:fromUser:completion:]", @"completion"];
    v47 = objc_autoreleasePoolPush();
    v48 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v66 = v50;
      v67 = 2112;
      v68 = v46;
      _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
    v51 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v46 userInfo:0];
    objc_exception_throw(v51);
  }

  v18 = v17;
  if (!v17)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v36 = v14;
      v37 = v13;
      v39 = v38 = v12;
      *buf = 138543618;
      v66 = v39;
      v67 = 2080;
      v68 = "[HMUser sendClientShareURL:shareToken:containerID:fromUser:completion:]";
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);

      v12 = v38;
      v13 = v37;
      v14 = v36;
    }

    objc_autoreleasePoolPop(v33);
    v32 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    goto LABEL_14;
  }

  if (!v15 || ([v15 uuid], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
  {
    v32 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"From user is invalid" reason:@"Valid from user is required." suggestion:0];
LABEL_14:
    v21 = v32;
    v16[2](v16, 0, v32);
    goto LABEL_15;
  }

  v20 = [(HMUser *)self home];
  v21 = v20;
  if (!v20 || ([v20 uuid], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = @"Home is invalid";
    v43 = @"Valid home not found.";
    v44 = 2;
LABEL_17:
    v45 = [v41 hmErrorWithCode:v44 description:v42 reason:v43 suggestion:0];
    v16[2](v16, 0, v45);

    goto LABEL_15;
  }

  if (!v12)
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = @"Share URL is missing";
    v43 = @"Need share URL.";
    v44 = 3;
    goto LABEL_17;
  }

  v62 = 0;
  v23 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v62];
  v24 = v62;
  if (v23)
  {
    v63[0] = @"HM.u.to";
    v56 = [(HMUser *)self uuid];
    v55 = [v56 UUIDString];
    v64[0] = v55;
    v63[1] = @"HM.u.from";
    v53 = [v15 uuid];
    v52 = [v53 UUIDString];
    v64[1] = v52;
    v64[2] = v23;
    v63[2] = @"HM.u.url";
    v63[3] = @"HM.u.token";
    v64[3] = v13;
    v64[4] = v14;
    v63[4] = @"HM.u.container";
    v63[5] = @"HM.u.home";
    [v21 uuid];
    v25 = v58 = v12;
    [v25 UUIDString];
    v26 = v59 = v24;
    v64[5] = v26;
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:6];

    v57 = objc_alloc(MEMORY[0x1E69A2A10]);
    v27 = objc_alloc(MEMORY[0x1E69A2A00]);
    v28 = [(HMUser *)self uuid];
    v29 = [v27 initWithTarget:v28];
    v30 = [v57 initWithName:@"HM.shareClientPayload" destination:v29 payload:v54];

    v12 = v58;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __72__HMUser_sendClientShareURL_shareToken_containerID_fromUser_completion___block_invoke;
    v60[3] = &unk_1E754C0F0;
    v61 = v16;
    [v30 setResponseHandler:v60];
    v31 = [v18 messageDispatcher];
    [v31 sendMessage:v30];

    v24 = v59;
  }

  else
  {
    v16[2](v16, 0, v24);
  }

LABEL_15:
  v40 = *MEMORY[0x1E69E9840];
}

void __72__HMUser_sendClientShareURL_shareToken_containerID_fromUser_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 hmf_dataForKey:@"HM.u.clientInfo"];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)fetchShareLookupInfo:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v24;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v25);
  }

  v5 = v4;
  v6 = [(HMUser *)self context];
  if (v6)
  {
    v32 = @"kUserUUIDKey";
    v7 = [(HMUser *)self uuid];
    v8 = [v7 UUIDString];
    v33 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    v10 = objc_alloc(MEMORY[0x1E69A2A10]);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    v12 = [(HMUser *)self uuid];
    v13 = [v11 initWithTarget:v12];
    v14 = [v10 initWithName:@"HM.shareLookup" destination:v13 payload:v9];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __31__HMUser_fetchShareLookupInfo___block_invoke;
    v29 = &unk_1E754DE00;
    v30 = self;
    v31 = v5;
    [v14 setResponseHandler:&v26];
    v15 = [v6 messageDispatcher];
    [v15 sendMessage:v14];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v19;
      v36 = 2080;
      v37 = "[HMUser fetchShareLookupInfo:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __31__HMUser_fetchShareLookupInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v11;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@share lookup response %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x1E696ACD0];
    v13 = objc_opt_class();
    v14 = [v6 objectForKeyedSubscript:@"HM.shareLookupInfoKey"];
    v22 = 0;
    v7 = [v12 unarchivedObjectOfClass:v13 fromData:v14 error:&v22];
    v15 = v22;

    if (!v7)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v19;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive user share lookup info from response data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"No share lookup info" reason:@"Unable to find or decode share lookup" suggestion:0];

      v15 = v20;
    }
  }

  (*(*(a1 + 40) + 16))();

  v21 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllPairingIdentitiesWithCompletionHandler:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMUser *)self context];
  if (v5)
  {
    if (!v4)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v24);
    }

    v31 = @"kUserUUIDKey";
    v6 = [(HMUser *)self uuid];
    v7 = [v6 UUIDString];
    v32 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    v11 = [(HMUser *)self uuid];
    v12 = [v10 initWithTarget:v11];
    v13 = [v9 initWithName:@"HM.u.legacy.pairingIdentities" destination:v12 payload:v8];

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __57__HMUser_fetchAllPairingIdentitiesWithCompletionHandler___block_invoke;
    v28 = &unk_1E754DE00;
    v29 = self;
    v30 = v4;
    [v13 setResponseHandler:&v25];
    v14 = [v5 messageDispatcher];
    [v14 sendMessage:v13];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v18;
      v35 = 2080;
      v36 = "[HMUser fetchAllPairingIdentitiesWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __57__HMUser_fetchAllPairingIdentitiesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) uuid];
      *buf = 138543874;
      v39 = v11;
      v40 = 2112;
      v41 = v12;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve pairing identity for user : %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = [v6 hmf_dataForKey:@"HM.pairingIdentity"];
    if (v13)
    {
      v14 = MEMORY[0x1E696ACD0];
      v15 = MEMORY[0x1E695DFD8];
      v37[0] = objc_opt_class();
      v37[1] = objc_opt_class();
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      v17 = [v15 setWithArray:v16];
      v36 = 0;
      v18 = [v14 unarchivedObjectOfClasses:v17 fromData:v13 error:&v36];
      v19 = v36;

      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      v23 = v22;
      if (v18)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          [*(a1 + 32) uuid];
          v25 = v35 = v20;
          *buf = 138543874;
          v39 = v24;
          v40 = 2112;
          v41 = v25;
          v42 = 2112;
          v43 = v18;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved pairing identities for User : %@ / %@", buf, 0x20u);

          v20 = v35;
        }

        objc_autoreleasePoolPop(v20);
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v31;
          v40 = 2112;
          v41 = v19;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive pairing identities for user from encoded pairing identity data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        v32 = *(a1 + 40);
        v33 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
        (*(v32 + 16))(v32, 0, v33);
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v29;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@The payload did not contain any pairing identities", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v30 = *(a1 + 40);
      v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      (*(v30 + 16))(v30, 0, v19);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)pairingIdentityWithCompletionHandler:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMUser *)self context];
  if (v5)
  {
    if (!v4)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@nil completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v24);
    }

    v31 = @"kUserUUIDKey";
    v6 = [(HMUser *)self uuid];
    v7 = [v6 UUIDString];
    v32 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    v11 = [(HMUser *)self uuid];
    v12 = [v10 initWithTarget:v11];
    v13 = [v9 initWithName:@"HM.u.pairingIdentity" destination:v12 payload:v8];

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __47__HMUser_pairingIdentityWithCompletionHandler___block_invoke;
    v28 = &unk_1E754DE00;
    v29 = self;
    v30 = v4;
    [v13 setResponseHandler:&v25];
    v14 = [v5 messageDispatcher];
    [v14 sendMessage:v13];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v18;
      v35 = 2080;
      v36 = "[HMUser pairingIdentityWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __47__HMUser_pairingIdentityWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v13 = [v6 hmf_dataForKey:@"HM.pairingIdentity"];
    if (v13)
    {
      v29 = 0;
      v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v29];
      v15 = v29;
      v16 = v15;
      if (!v14)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = *(a1 + 32);
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v25;
          v32 = 2112;
          v33 = v16;
          _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive pairing identity for user from encoded pairing identity data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v26 = *(a1 + 40);
        v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
        (*(v26 + 16))(v26, 0, v27);

        goto LABEL_15;
      }

      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    [*(a1 + 32) setPairingIdentity:v16];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 32) uuid];
      *buf = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved pairing identity for User : %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    (*(*(a1 + 40) + 16))();
LABEL_15:

    goto LABEL_16;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) uuid];
    *buf = 138543874;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve pairing identity for user : %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  (*(*(a1 + 40) + 16))();
LABEL_16:

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_updatePresenceAuthorizationStatus:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8 = [(HMUser *)self home];
  v7 = [(HMUser *)self userID];
  [v8 updateForUser:v7 presenceAuthorizationStatus:a3 completionHandler:v6];
}

- (void)updatePresenceAuthorizationStatus:(unint64_t)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMUser *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updatePresenceAuthorizationStatus:completionHandler:]", @"completion"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = v7;
  if (v7)
  {
    v9 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__HMUser_updatePresenceAuthorizationStatus_completionHandler___block_invoke;
    block[3] = &unk_1E754DB20;
    block[4] = self;
    v24 = a3;
    v23 = v6;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v13;
      v27 = 2080;
      v28 = "[HMUser updatePresenceAuthorizationStatus:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergePendingAccessoryInvitationsWithOutgoingInvitation:(id)a3
{
  v3 = self;
  v4 = [(HMUser *)self _filterAccessoryInvitationsFromOutgoingInvitation:a3];
  LOBYTE(v3) = [(HMUser *)v3 _mergeWithNewAccessoryInvitations:v4];

  return v3;
}

- (void)setPendingAccessoryInvitationsWithOutgoingInvitation:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  pendingAccessoryInvitations = self->_pendingAccessoryInvitations;
  v5 = [(HMUser *)self _filterAccessoryInvitationsFromOutgoingInvitation:v6];
  [(HMMutableArray *)pendingAccessoryInvitations setArray:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_filterAccessoryInvitationsFromOutgoingInvitation:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 accessoryInvitations];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 state] != 1)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)pendingAccessoryInvitations
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMMutableArray *)self->_pendingAccessoryInvitations array];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)senderCorrelationIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_senderCorrelationIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCurrentUser:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_currentUser = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isCurrentUser
{
  os_unfair_lock_lock_with_options();
  currentUser = self->_currentUser;
  os_unfair_lock_unlock(&self->_lock);
  return currentUser;
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

- (IDSURI)userIDSURI
{
  v2 = [(HMUser *)self userID];
  if (v2 && IDSFoundationLibraryCore_45308())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getIDSURIClass_softClass;
    v11 = getIDSURIClass_softClass;
    if (!getIDSURIClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getIDSURIClass_block_invoke;
      v7[3] = &unk_1E754CB30;
      v7[4] = &v8;
      __getIDSURIClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    v5 = [[v3 alloc] initWithUnprefixedURI:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setUserID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  userID = self->_userID;
  self->_userID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)userID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_userID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateUserListeningHistoryUpdateControl:(id)a3 forHome:(id)a4 completionHandler:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v19;
      v20 = "%{public}@nil home value on ULH update";
LABEL_10:
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v16);
    v11 = [(HMUser *)v17 context];
    v15 = [v11 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v15 callCompletion:v10 error:v21];

    goto LABEL_12;
  }

  if (!v8)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v19;
      v20 = "%{public}@nil ULH value on ULH update";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v11 = [v8 copy];
  v12 = [(HMUser *)self context];
  if (!v10)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updateUserListeningHistoryUpdateControl:forHome:completionHandler:]", @"completionHandler"];
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v32;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    objc_exception_throw(v33);
  }

  v13 = v12;
  if (v12)
  {
    v14 = [v12 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke;
    block[3] = &unk_1E754D7A8;
    block[4] = self;
    v38 = v10;
    v35 = v9;
    v11 = v11;
    v36 = v11;
    v15 = v13;
    v37 = v15;
    dispatch_async(v14, block);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v26;
      v41 = 2080;
      v42 = "[HMUser updateUserListeningHistoryUpdateControl:forHome:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v10 + 2))(v10, v27);

    v15 = 0;
  }

LABEL_12:

  v22 = *MEMORY[0x1E69E9840];
}

void __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke(id *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] home];
  if (!v2)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[8];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
LABEL_8:
    v30 = v29;
    [v27 callCompletion:v28 error:v29];

    goto LABEL_9;
  }

  if (([a1[5] isEqual:v2] & 1) == 0)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[8];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    goto LABEL_8;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = a1[6];
    *buf = 138543618;
    v44 = v6;
    v45 = 2112;
    v46 = v7;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Will update user listening history update %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [a1[6] accessories];
  v32 = HMAccessoryUUIDsAsStringForAccessories(v8);

  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  v10 = [v2 messageTargetUUID];
  v11 = [v9 initWithTarget:v10];

  v12 = MEMORY[0x1E69A2A10];
  v41[1] = @"kUserUUIDKey";
  v42[0] = v32;
  v41[0] = @"accessories";
  v13 = [a1[4] uuid];
  v14 = [v13 UUIDString];
  v42[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v16 = [v12 messageWithName:@"HMU.mc" destination:v11 payload:v15];

  objc_initWeak(buf, a1[4]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke_280;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v40, buf);
  v38 = a1[6];
  v39 = a1[8];
  v17 = _Block_copy(aBlock);
  v18 = [a1[4] context];
  v19 = [v18 pendingRequests];

  v20 = [v16 identifier];
  v21 = _Block_copy(v17);
  [v19 addCompletionBlock:v21 forIdentifier:v20];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke_281;
  v33[3] = &unk_1E754E480;
  v22 = v19;
  v34 = v22;
  v23 = v20;
  v35 = v23;
  v24 = v17;
  v36 = v24;
  [v16 setResponseHandler:v33];
  v25 = [a1[7] messageDispatcher];
  [v25 sendMessage:v16 completionHandler:0];

  objc_destroyWeak(&v40);
  objc_destroyWeak(buf);

LABEL_9:
  v31 = *MEMORY[0x1E69E9840];
}

void __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke_280(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated user listening history update control %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [*(a1 + 32) copy];
    [v6 setUserListeningHistoryUpdateControl:v10];
  }

  v11 = [WeakRetained context];
  v12 = [v11 delegateCaller];
  [v12 callCompletion:*(a1 + 40) error:v3];

  v13 = *MEMORY[0x1E69E9840];
}

void __76__HMUser_updateUserListeningHistoryUpdateControl_forHome_completionHandler___block_invoke_281(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)userListeningHistoryUpdateControlForHome:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(HMUser *)self home];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = [(HMUser *)self userListeningHistoryUpdateControl];
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMUser *)v10 setUserListeningHistoryUpdateControl:v11, v12];
  }

  return result;
}

- (void)setUserListeningHistoryUpdateControl:(id)a3
{
  v4 = [a3 copy];
  os_unfair_lock_lock_with_options();
  userListeningHistoryUpdateControl = self->_userListeningHistoryUpdateControl;
  self->_userListeningHistoryUpdateControl = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMUserListeningHistoryUpdateControl)userListeningHistoryUpdateControl
{
  os_unfair_lock_lock_with_options();
  v3 = self->_userListeningHistoryUpdateControl;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateMediaContentProfileAccessControl:(id)a3 forHome:(id)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v9)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updateMediaContentProfileAccessControl:forHome:completionHandler:]", @"completionHandler"];
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v26;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v11 = v10;
  v12 = [v8 copy];
  v13 = [(HMUser *)self context];
  if (!v11)
  {
    goto LABEL_12;
  }

  v14 = v13;
  if (v13)
  {
    v15 = [v13 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke;
    block[3] = &unk_1E754D7A8;
    block[4] = self;
    v32 = v11;
    v29 = v9;
    v30 = v12;
    v31 = v14;
    dispatch_async(v15, block);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v19;
      v35 = 2080;
      v36 = "[HMUser updateMediaContentProfileAccessControl:forHome:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v11)[2](v11, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke(id *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] home];
  if (!v2)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[8];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
LABEL_8:
    v30 = v29;
    [v27 callCompletion:v28 error:v29];

    goto LABEL_9;
  }

  if (([a1[5] isEqual:v2] & 1) == 0)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[8];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    goto LABEL_8;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = a1[6];
    *buf = 138543618;
    v45 = v6;
    v46 = 2112;
    v47 = v7;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Will update media content profile access control %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [a1[6] accessories];
  v33 = HMAccessoryUUIDsAsStringForAccessories(v8);

  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  v10 = [v2 messageTargetUUID];
  v32 = [v9 initWithTarget:v10];

  v11 = MEMORY[0x1E69A2A10];
  v42[0] = @"mediaContentAC";
  v12 = encodeRootObject(a1[6]);
  v43[0] = v12;
  v43[1] = v33;
  v42[1] = @"accessories";
  v42[2] = @"kUserUUIDKey";
  v13 = [a1[4] uuid];
  v14 = [v13 UUIDString];
  v43[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
  v16 = [v11 messageWithName:@"HMU.mu" destination:v32 payload:v15];

  objc_initWeak(buf, a1[4]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke_278;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v41, buf);
  v39 = a1[6];
  v40 = a1[8];
  v17 = _Block_copy(aBlock);
  v18 = [a1[4] context];
  v19 = [v18 pendingRequests];

  v20 = [v16 identifier];
  v21 = _Block_copy(v17);
  [v19 addCompletionBlock:v21 forIdentifier:v20];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke_279;
  v34[3] = &unk_1E754E480;
  v22 = v19;
  v35 = v22;
  v23 = v20;
  v36 = v23;
  v24 = v17;
  v37 = v24;
  [v16 setResponseHandler:v34];
  v25 = [a1[7] messageDispatcher];
  [v25 sendMessage:v16 completionHandler:0];

  objc_destroyWeak(&v41);
  objc_destroyWeak(buf);

LABEL_9:
  v31 = *MEMORY[0x1E69E9840];
}

void __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke_278(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updated media content profile access control %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setMediaContentProfileAccessControl:*(a1 + 32)];
  }

  v10 = [WeakRetained context];
  v11 = [v10 delegateCaller];
  [v11 callCompletion:*(a1 + 40) error:v3];

  v12 = *MEMORY[0x1E69E9840];
}

void __75__HMUser_updateMediaContentProfileAccessControl_forHome_completionHandler___block_invoke_279(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)mediaContentProfileAccessControlForHome:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(HMUser *)self home];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = [(HMUser *)self mediaContentProfileAccessControl];
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMUser *)v10 setMediaContentProfileAccessControl:v11, v12];
  }

  return result;
}

- (void)setMediaContentProfileAccessControl:(id)a3
{
  v5 = a3;
  v4 = [v5 copy];
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_mediaContentProfileAccessControl, v4);
  [v4 setUser:self];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaContentProfileAccessControl)mediaContentProfileAccessControl
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaContentProfileAccessControl;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)assistantAccessControlForHome:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(HMUser *)self home];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = [(HMUser *)self assistantAccessControl];
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    [(HMUser *)v10 setAnnounceUserSettings:v11, v12];
  }

  return result;
}

- (void)setAnnounceUserSettings:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  announceUserSettings = self->_announceUserSettings;
  self->_announceUserSettings = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAnnounceUserSettings)announceUserSettings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_announceUserSettings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateAnnounceUserSettings:(id)a3 forHome:(id)a4 completionHandler:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v9)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updateAnnounceUserSettings:forHome:completionHandler:]", @"completionHandler"];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v11 = v10;
  v12 = [(HMUser *)self context];
  if (!v11)
  {
    goto LABEL_12;
  }

  v13 = v12;
  if (v12)
  {
    v14 = [v12 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke;
    block[3] = &unk_1E754D7A8;
    block[4] = self;
    v31 = v11;
    v28 = v9;
    v29 = v8;
    v30 = v13;
    dispatch_async(v14, block);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v18;
      v34 = 2080;
      v35 = "[HMUser updateAnnounceUserSettings:forHome:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v11)[2](v11, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke(id *a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] isCurrentUser];
  v3 = a1[4];
  if (v2)
  {
    v4 = [v3 home];
    if (v4)
    {
      if ([a1[5] isEqual:v4])
      {
        v5 = objc_autoreleasePoolPush();
        v6 = a1[4];
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = HMFGetLogIdentifier();
          v9 = [a1[4] announceUserSettings];
          v10 = a1[6];
          *buf = 138543874;
          v47 = v8;
          v48 = 2112;
          v49 = v9;
          v50 = 2112;
          v51 = v10;
          _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating Announce User Settings from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v5);
        v11 = MEMORY[0x1E69A2A10];
        v12 = [a1[4] messageDestination];
        v44 = @"HM.u.announce.Settings";
        v13 = encodeRootObject(a1[6]);
        v45 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v15 = [v11 messageWithName:@"HM.u.announce.settings.update" destination:v12 payload:v14];

        objc_initWeak(buf, a1[4]);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke_276;
        aBlock[3] = &unk_1E754D988;
        objc_copyWeak(&v43, buf);
        v41 = a1[6];
        v42 = a1[8];
        v16 = _Block_copy(aBlock);
        v17 = [a1[4] context];
        v18 = [v17 pendingRequests];

        v19 = [v15 identifier];
        v20 = _Block_copy(v16);
        [v18 addCompletionBlock:v20 forIdentifier:v19];

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke_277;
        v36[3] = &unk_1E754E480;
        v21 = v18;
        v37 = v21;
        v22 = v19;
        v38 = v22;
        v23 = v16;
        v39 = v23;
        [v15 setResponseHandler:v36];
        v24 = [a1[7] messageDispatcher];
        [v24 sendMessage:v15 completionHandler:0];

        objc_destroyWeak(&v43);
        objc_destroyWeak(buf);

        goto LABEL_13;
      }

      v29 = [a1[4] context];
      v30 = [v29 delegateCaller];
      v31 = a1[8];
      v32 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    }

    else
    {
      v29 = [a1[4] context];
      v30 = [v29 delegateCaller];
      v31 = a1[8];
      v32 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    }

    v33 = v32;
    [v30 callCompletion:v31 error:v32];

LABEL_13:
    v34 = *MEMORY[0x1E69E9840];
    return;
  }

  v35 = [v3 context];
  v25 = [v35 delegateCaller];
  v26 = a1[8];
  v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
  [v25 callCompletion:v26 error:v27];

  v28 = *MEMORY[0x1E69E9840];
}

void __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke_276(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setAnnounceUserSettings:*(a1 + 32)];
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v7 announceUserSettings];
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated Announce Settings to %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = [v5 context];
  v12 = [v11 delegateCaller];
  [v12 callCompletion:*(a1 + 40) error:v3];

  v13 = *MEMORY[0x1E69E9840];
}

void __63__HMUser_updateAnnounceUserSettings_forHome_completionHandler___block_invoke_277(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_handleUpdatedAssistantAccessControl:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMUser *)self context];
  v6 = [v5 pendingRequests];
  v7 = [v4 identifier];
  v8 = [v6 retrieveCompletionBlockForIdentifier:v7];

  if (v8)
  {
LABEL_2:
    [v4 respondWithPayload:0];
    goto LABEL_3;
  }

  v10 = [v4 dataForKey:@"assistantAC"];
  if (v10)
  {
    v11 = v10;
    v84 = 0;
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v84];
    v13 = v84;
    v74 = self;
    if (v12)
    {
      v14 = [v4 arrayForKey:@"accessories"];
      if (v14)
      {
        v15 = v14;
        v70 = v12;
        v71 = v13;
        v72 = v11;
        v73 = v4;
        v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v80 objects:v85 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v81;
          v75 = *v81;
          v76 = v17;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v81 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v80 + 1) + 8 * i);
              v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v22];
              if (v23)
              {
                v24 = [(HMUser *)self home];
                v25 = [v24 accessoryWithUUID:v23];

                if (v25)
                {
                  [v16 addObject:v25];
                }

                else
                {
                  v26 = v16;
                  v27 = objc_autoreleasePoolPush();
                  v28 = self;
                  v29 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    v30 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v87 = v30;
                    v88 = 2112;
                    v89 = v22;
                    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@Unable to find accessory with identifier: %@", buf, 0x16u);

                    self = v74;
                  }

                  objc_autoreleasePoolPop(v27);
                  v16 = v26;
                  v20 = v75;
                  v17 = v76;
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v80 objects:v85 count:16];
          }

          while (v19);
        }

        if ([v16 count])
        {
          v31 = [v70 mutableCopy];
          [v31 setAccessories:v16];
          v32 = [v31 copy];

          v33 = v72;
          v8 = 0;
        }

        else
        {
          v33 = v72;
          v8 = 0;
          v32 = v70;
        }

        v48 = [(HMUser *)self assistantAccessControl];
        v49 = v32;
        v50 = HMFEqualObjects();

        v51 = objc_autoreleasePoolPush();
        v52 = self;
        v53 = HMFGetOSLogHandle();
        v54 = v53;
        if (v50)
        {
          v4 = v73;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v55 = HMFGetLogIdentifier();
            *buf = 138543362;
            v87 = v55;
            _os_log_impl(&dword_19BB39000, v54, OS_LOG_TYPE_INFO, "%{public}@Assistant access control did not change. Don't need to notify.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v51);
          v56 = v49;
        }

        else
        {
          v56 = v49;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543618;
            v87 = v57;
            v88 = 2112;
            v89 = v49;
            _os_log_impl(&dword_19BB39000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@Updated assistant access control: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v51);
          [(HMUser *)v52 setAssistantAccessControl:v49];
          v58 = [(HMUser *)v52 home];
          if (v58)
          {
            v59 = [(HMUser *)v52 context];
            v60 = v59;
            if (v59)
            {
              v61 = [v59 delegateCaller];
              v77[0] = MEMORY[0x1E69E9820];
              v77[1] = 3221225472;
              v77[2] = __47__HMUser__handleUpdatedAssistantAccessControl___block_invoke;
              v77[3] = &unk_1E754E5E8;
              v77[4] = v52;
              v78 = v49;
              v79 = v58;
              [v61 invokeBlock:v77];
            }

            else
            {
              v66 = objc_autoreleasePoolPush();
              v67 = v52;
              v68 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                v69 = HMFGetLogIdentifier();
                *buf = 138543618;
                v87 = v69;
                v88 = 2112;
                v89 = v49;
                _os_log_impl(&dword_19BB39000, v68, OS_LOG_TYPE_ERROR, "%{public}@Nil context. Cannot notify delegate of updated assistant access control: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v66);
              v56 = v49;
            }
          }

          else
          {
            v62 = objc_autoreleasePoolPush();
            v63 = v52;
            v64 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              v65 = HMFGetLogIdentifier();
              *buf = 138543362;
              v87 = v65;
              _os_log_impl(&dword_19BB39000, v64, OS_LOG_TYPE_ERROR, "%{public}@No home found to perform callback on.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v62);
            v56 = v49;
          }

          v4 = v73;
        }

        goto LABEL_2;
      }

      v40 = objc_autoreleasePoolPush();
      v44 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        [v4 messagePayload];
        v46 = v45 = v12;
        *buf = 138543618;
        v87 = v43;
        v88 = 2112;
        v89 = v46;
        _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@Missing updated access control accessories from message payload: %@", buf, 0x16u);

        v12 = v45;
        goto LABEL_30;
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v87 = v43;
        v88 = 2112;
        v89 = v13;
        _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive assistant access control from access control data: %@", buf, 0x16u);
LABEL_30:
      }
    }

    objc_autoreleasePoolPop(v40);
    v47 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v4 respondWithError:v47];

    goto LABEL_3;
  }

  v34 = objc_autoreleasePoolPush();
  v35 = self;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = HMFGetLogIdentifier();
    v38 = [v4 messagePayload];
    *buf = 138543618;
    v87 = v37;
    v88 = 2112;
    v89 = v38;
    _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Missing updated serialized access control from message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v34);
  v39 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  [v4 respondWithError:v39];

LABEL_3:
  v9 = *MEMORY[0x1E69E9840];
}

void __47__HMUser__handleUpdatedAssistantAccessControl___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if ([v2 conformsToProtocol:&unk_1F0F63768])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_opt_respondsToSelector();
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated assistant access control: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [v4 user:*(a1 + 32) didUpdateAssistantAccessControl:*(a1 + 40) forHome:*(a1 + 48)];
  }

  else
  {
    if (v9)
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@No delegate set to notify: %@, assistant access control: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleRGAllowedPeriodEnded:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(HMUser *)self home];
    if (v5)
    {
      v6 = v5;
      v7 = [(HMUser *)self context];
      v8 = [v7 queue];

      if (v8)
      {
        v9 = [(HMUser *)self delegate];
        if ([v9 conformsToProtocol:&unk_1F0F63768])
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (objc_opt_respondsToSelector())
        {
          v12 = [(HMUser *)self context];
          v13 = [v12 queue];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __38__HMUser__handleRGAllowedPeriodEnded___block_invoke;
          v14[3] = &unk_1E754E5C0;
          v14[4] = self;
          v15 = v11;
          dispatch_async(v13, v14);
        }
      }
    }
  }
}

void __38__HMUser__handleRGAllowedPeriodEnded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__HMUser__handleRGAllowedPeriodEnded___block_invoke_2;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __38__HMUser__handleRGAllowedPeriodEnded___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) homeAccessControl];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of RG allowed period ended: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) restrictedGuestAllowedPeriodEnded:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_handleRGAllowedPeriodStarted:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(HMUser *)self home];
    if (v5)
    {
      v6 = v5;
      v7 = [(HMUser *)self context];
      v8 = [v7 queue];

      if (v8)
      {
        v9 = [(HMUser *)self delegate];
        if ([v9 conformsToProtocol:&unk_1F0F63768])
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (objc_opt_respondsToSelector())
        {
          v12 = [(HMUser *)self context];
          v13 = [v12 queue];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __40__HMUser__handleRGAllowedPeriodStarted___block_invoke;
          v14[3] = &unk_1E754E5C0;
          v14[4] = self;
          v15 = v11;
          dispatch_async(v13, v14);
        }
      }
    }
  }
}

void __40__HMUser__handleRGAllowedPeriodStarted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__HMUser__handleRGAllowedPeriodStarted___block_invoke_2;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __40__HMUser__handleRGAllowedPeriodStarted___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) homeAccessControl];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of RG allowed period started: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) restrictedGuestAllowedPeriodStarted:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateAssistantAccessControl:(id)a3 forHome:(id)a4 completionHandler:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v9)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUser updateAssistantAccessControl:forHome:completionHandler:]", @"completionHandler"];
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v28;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v11 = v10;
  v12 = [(HMUser *)self assistantAccessControl];
  v13 = [v12 copy];

  v14 = [v8 copy];
  v15 = [(HMUser *)self context];
  if (!v11)
  {
    goto LABEL_12;
  }

  v16 = v15;
  if (v15)
  {
    v17 = [v15 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke;
    block[3] = &unk_1E754D8C0;
    block[4] = self;
    v35 = v11;
    v31 = v9;
    v32 = v14;
    v33 = v13;
    v34 = v16;
    dispatch_async(v17, block);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v21;
      v38 = 2080;
      v39 = "[HMUser updateAssistantAccessControl:forHome:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v11)[2](v11, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke(id *a1)
{
  v48[5] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] home];
  if (!v2)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[9];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
LABEL_6:
    v30 = v29;
    [v27 callCompletion:v28 error:v29];

    goto LABEL_7;
  }

  if (([a1[5] isEqual:v2] & 1) == 0)
  {
    v26 = [a1[4] context];
    v27 = [v26 delegateCaller];
    v28 = a1[9];
    v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    goto LABEL_6;
  }

  v3 = [a1[6] accessories];
  v35 = HMAccessoryUUIDsAsStringForAccessories(v3);

  v4 = MEMORY[0x1E695DFD8];
  v5 = [a1[7] accessories];
  v6 = HMAccessoryUUIDsAsStringForAccessories(v5);
  v37 = [v4 setWithArray:v6];

  v36 = [MEMORY[0x1E695DFD8] setWithArray:v35];
  v7 = [v37 na_setByRemovingObjectsFromSet:v36];
  v34 = [v7 allObjects];

  v8 = [v36 na_setByRemovingObjectsFromSet:v37];
  v33 = [v8 allObjects];

  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  v10 = [v2 messageTargetUUID];
  v32 = [v9 initWithTarget:v10];

  v11 = MEMORY[0x1E69A2A10];
  v47[0] = @"assistantAC";
  v12 = encodeRootObject(a1[6]);
  v48[0] = v12;
  v48[1] = v35;
  v47[1] = @"accessories";
  v47[2] = @"accessories.add";
  v48[2] = v33;
  v48[3] = v34;
  v47[3] = @"accessories.remove";
  v47[4] = @"kUserUUIDKey";
  v13 = [a1[4] uuid];
  v14 = [v13 UUIDString];
  v48[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:5];
  v16 = [v11 messageWithName:@"HMU.au" destination:v32 payload:v15];

  objc_initWeak(&location, a1[4]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v45, &location);
  v43 = a1[6];
  v44 = a1[9];
  v17 = _Block_copy(aBlock);
  v18 = [a1[4] context];
  v19 = [v18 pendingRequests];

  v20 = [v16 identifier];
  v21 = _Block_copy(v17);
  [v19 addCompletionBlock:v21 forIdentifier:v20];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke_202;
  v38[3] = &unk_1E754D030;
  v38[4] = a1[4];
  v22 = v19;
  v39 = v22;
  v23 = v20;
  v40 = v23;
  v24 = v17;
  v41 = v24;
  [v16 setResponseHandler:v38];
  v25 = [a1[8] messageDispatcher];
  [v25 sendMessage:v16 completionHandler:0];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);

LABEL_7:
  v31 = *MEMORY[0x1E69E9840];
}

void __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setAssistantAccessControl:*(a1 + 32)];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of updated assistant access control. error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v7 context];
  v11 = [v10 delegateCaller];
  [v11 callCompletion:*(a1 + 40) error:v3];

  v12 = *MEMORY[0x1E69E9840];
}

void __65__HMUser_updateAssistantAccessControl_forHome_completionHandler___block_invoke_202(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished to update assistant access control. error: %@, response payload: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [*(a1 + 40) removeCompletionBlockForIdentifier:*(a1 + 48)];
  if (v11)
  {
    (*(*(a1 + 56) + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAssistantAccessControl:(id)a3
{
  v5 = a3;
  v4 = [v5 copy];
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_assistantAccessControl, v4);
  [v4 setUser:self];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMAssistantAccessControl)assistantAccessControl
{
  os_unfair_lock_lock_with_options();
  v3 = self->_assistantAccessControl;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPairingIdentity:(id)a3
{
  v4 = [a3 publicPairingIdentity];
  if (v4)
  {
    obj = v4;
    os_unfair_lock_lock_with_options();
    objc_storeStrong(&self->_pairingIdentity, obj);
    os_unfair_lock_unlock(&self->_lock);
    v4 = obj;
  }
}

- (HMFPairingIdentity)pairingIdentity
{
  os_unfair_lock_lock_with_options();
  v3 = self->_pairingIdentity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleMultiUserStatusChangedNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying settings delegate of update on multi-user status change.", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMUser *)v6 settingsController];
  [v9 notifyDelegateOfUpdate];

  v10 = [(HMUser *)v6 privateSettingsController];
  [v10 notifyDelegateOfUpdate];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setHomeAccessControl:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  homeAccessControl = self->_homeAccessControl;
  self->_homeAccessControl = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFamilyName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  familyName = self->_familyName;
  self->_familyName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)familyName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_familyName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setGivenName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  givenName = self->_givenName;
  self->_givenName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)givenName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_givenName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setiCloudAltDSID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  iCloudAltDSID = self->_iCloudAltDSID;
  self->_iCloudAltDSID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)iCloudAltDSID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_iCloudAltDSID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
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

- (void)_registerNotificationHandlers
{
  v3 = [(HMUser *)self context];
  v4 = [v3 messageDispatcher];
  [v4 registerForMessage:@"HMU.au" receiver:self selector:sel__handleUpdatedAssistantAccessControl_];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [(HMUser *)self home];
  v7 = [v6 uuid];
  [v5 addObserver:self selector:sel__handleMultiUserStatusChangedNotification_ name:@"HMHomeMultiUserEnabledChangeNotificationKey" object:v7];

  v8 = [(HMUser *)self context];
  v9 = [v8 messageDispatcher];
  [v9 registerForMessage:@"HM.u.rg.start" receiver:self selector:sel__handleRGAllowedPeriodStarted_];

  v10 = [(HMUser *)self context];
  v11 = [v10 messageDispatcher];
  [v11 registerForMessage:@"HM.u.rg.end" receiver:self selector:sel__handleRGAllowedPeriodEnded_];

  v13 = [(HMUser *)self context];
  v12 = [v13 messageDispatcher];
  [v12 registerForMessage:@"HMU.m.supmUpdated" receiver:self selector:sel__handleSharedUserProfileMetadataUpdatedMessage_];
}

- (void)_unconfigure
{
  v17 = *MEMORY[0x1E69E9840];
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
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring user", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMUser *)v5 setHome:0];
    homeAccessControl = v5->_homeAccessControl;
    v5->_homeAccessControl = 0;

    v10 = [(HMUser *)v5 context];
    v11 = [v10 messageDispatcher];
    [v11 deregisterReceiver:v5];

    [(HMUser *)v5 setContext:0];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 removeObserver:v5];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)a3 home:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMUser *)v9 setHome:v7];
  [(HMUser *)v9 setContext:v6];
  v12 = [v7 homeManager];
  v13 = [v12 isDaemonRunningWithROARFramework];

  if (v13)
  {
    v14 = [(HMUser *)v9 pendingPrivateSettings];
    [(HMUser *)v9 createConfigureAndMergePrivateSettingsIfNecessary:v14 withContext:v6];

    [(HMUser *)v9 setPendingPrivateSettings:0];
    v15 = [(HMUser *)v9 pendingSharedSettings];
    [(HMUser *)v9 createConfigureAndMergeSharedSettingsIfNecessary:v15 withContext:v6];

    [(HMUser *)v9 setPendingSharedSettings:0];
    settingsController = v9->_settingsController;
    v9->_settingsController = 0;

    privateSettingsController = v9->_privateSettingsController;
    v9->_privateSettingsController = 0;
  }

  else
  {
    [(HMUser *)v9 createHH1SettingsControllerIfNecessary];
    [(HMUser *)v9 createHH1PrivateSettingsControllerIfNecessary];
    v18 = [(HMUser *)v9 settingsController];
    [v18 configureWithContext:v6];

    privateSettingsController = [(HMUser *)v9 privateSettingsController];
    [privateSettingsController configureWithContext:v6];
  }

  [(HMUser *)v9 configurePhotosPersonManager];
  [(HMUser *)v9 _registerNotificationHandlers];
  v19 = [(HMUser *)v9 homeAccessControl];
  v20 = [v19 restrictedGuestAccessSettings];
  [v20 fixupAccessoriesForHome:v7];

  v21 = *MEMORY[0x1E69E9840];
}

- (HMUser)initWithUserID:(id)a3 name:(id)a4 uuid:(id)a5 home:(id)a6 homeAccessControl:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = HMUser;
  v17 = [(HMUser *)&v30 init];
  if (v17)
  {
    v18 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v13];
    name = v17->_name;
    v17->_name = v18;

    v20 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v12];
    userID = v17->_userID;
    v17->_userID = v20;

    v22 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v14];
    uuid = v17->_uuid;
    v17->_uuid = v22;

    objc_storeWeak(&v17->_home, v15);
    v17->_currentUser = 0;
    [(HMUser *)v17 createHH1SettingsControllerIfNecessary];
    [(HMUser *)v17 createHH1PrivateSettingsControllerIfNecessary];
    if (!v16)
    {
      v24 = [HMUserCameraAccess accessWithValue:1];
      LOBYTE(v29) = 0;
      LOBYTE(v28) = 0;
      v16 = [[HMHomeAccessControl alloc] initWithUser:v17 allowAccess:1 owner:0 administratorPrivilege:0 remoteAccess:1 presenceAuthStatus:0 presenceComputeStatus:0 announceAccess:v28 camerasAccess:v24 audioAnalysisUserDropInAccessLevel:0 restrictedGuest:v29 restrictedGuestAccessSettings:0];
    }

    objc_storeStrong(&v17->_homeAccessControl, v16);
    v25 = +[HMMutableArray array];
    pendingAccessoryInvitations = v17->_pendingAccessoryInvitations;
    v17->_pendingAccessoryInvitations = v25;
  }

  return v17;
}

- (HMUser)init
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
  if (logCategory__hmf_once_t104 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t104, &__block_literal_global_45371);
  }

  v3 = logCategory__hmf_once_v105;

  return v3;
}

uint64_t __21__HMUser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v105;
  logCategory__hmf_once_v105 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end
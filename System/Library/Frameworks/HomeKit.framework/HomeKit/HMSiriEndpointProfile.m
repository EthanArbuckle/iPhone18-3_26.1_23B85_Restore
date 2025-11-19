@interface HMSiriEndpointProfile
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)manuallyDisabled;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMSiriEndpointProfile)init;
- (HMSiriEndpointProfile)initWithSiriEndpointProfile:(id)a3;
- (HMSiriEndpointProfileAssistant)currentAssistant;
- (HMSiriEndpointProfileDelegate)delegate;
- (NSArray)assistants;
- (NSArray)attributeDescriptions;
- (NSNumber)activeIdentifier;
- (NSString)capabilityToString;
- (NSString)shortDescription;
- (NSString)siriEndpointVersion;
- (NSString)siriEngineVersion;
- (NSUUID)sessionHubIdentifier;
- (id)logIdentifier;
- (id)siriEndpointProfile;
- (int64_t)multifunctionButton;
- (int64_t)sessionState;
- (unint64_t)capability;
- (void)applyOnboardingSelections:(id)a3 completionHandler:(id)a4;
- (void)deleteSiriHistoryWithCompletionHandler:(id)a3;
- (void)refreshStateWithCompletionHandler:(id)a3;
- (void)siriEndpointProfile:(id)a3 didUpdateActiveIdentifier:(id)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateAssistants:(id)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateManuallyDisabled:(BOOL)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateMultifunctionButton:(int64_t)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateNeedsOnboarding:(BOOL)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateSessionHubIdentifier:(id)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateSessionState:(int64_t)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateSiriEngineVersion:(id)a4;
- (void)siriEndpointProfile:(id)a3 didUpdateSupportsOnboarding:(BOOL)a4;
@end

@implementation HMSiriEndpointProfile

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_3;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_41(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_42;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_43(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_44;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_45(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_46;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_47(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_48;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_49(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_50;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_51(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_52;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_53(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_54;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_54(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "multifunctionButton")}];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateMultifunctionButton : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) siriEndpointProfile:*(a1 + 32) didUpdateMultifunctionButton:{objc_msgSend(*(a1 + 32), "multifunctionButton")}];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_52(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "manuallyDisabled")}];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateManuallyDisabled : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) siriEndpointProfile:*(a1 + 32) didUpdateManuallyDisabled:{objc_msgSend(*(a1 + 32), "manuallyDisabled")}];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_50(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) activeIdentifier];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateActiveIdentifier : %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 activeIdentifier];
  [v8 siriEndpointProfile:v7 didUpdateActiveIdentifier:v10];

  v11 = *MEMORY[0x1E69E9840];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_48(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) assistants];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateAssistants : %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 assistants];
  [v8 siriEndpointProfile:v7 didUpdateAssistants:v10];

  v11 = *MEMORY[0x1E69E9840];
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_46(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) siriEngineVersion];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateSiriEngineVersion : %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 siriEngineVersion];
  [v8 siriEndpointProfile:v7 didUpdateSiriEngineVersion:v10];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_44(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) capability];
    v6 = HMFBooleanToString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateSupportsOnboarding : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) siriEndpointProfile:*(a1 + 32) didUpdateSupportsOnboarding:{(objc_msgSend(*(a1 + 32), "capability") >> 1) & 1}];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2_42(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) capability];
    v6 = HMFBooleanToString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateNeedsOnboarding : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) siriEndpointProfile:*(a1 + 32) didUpdateNeedsOnboarding:{objc_msgSend(*(a1 + 32), "capability") & 1}];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) sessionHubIdentifier];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateSessionHubIdentifier : %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  v10 = [v7 sessionHubIdentifier];
  [v8 siriEndpointProfile:v7 didUpdateSessionHubIdentifier:v10];

  v11 = *MEMORY[0x1E69E9840];
}

void __69___HMSiriEndpointProfile_setNotifications_options_completionHandler___block_invoke(uint64_t a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23[0] = @"enable";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v23[1] = @"options";
  v24[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v24[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v5 = MEMORY[0x1E69A2A10];
  v6 = [*(a1 + 32) messageDestination];
  v7 = [v5 messageWithName:@"HMSE.en" destination:v6 payload:v4];

  v8 = [*(a1 + 32) context];
  v9 = [v8 pendingRequests];

  v10 = [v7 identifier];
  v11 = _Block_copy(*(a1 + 48));
  [v9 addCompletionBlock:v11 forIdentifier:v10];

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __69___HMSiriEndpointProfile_setNotifications_options_completionHandler___block_invoke_2;
  v19 = &unk_1E754E0A8;
  v20 = v9;
  v21 = v10;
  v22 = *(a1 + 40);
  v12 = v10;
  v13 = v9;
  [v7 setResponseHandler:&v16];
  v14 = [*(a1 + 40) messageDispatcher];
  [v14 sendMessage:v7 completionHandler:0];

  v15 = *MEMORY[0x1E69E9840];
}

void __69___HMSiriEndpointProfile_setNotifications_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 removeCompletionBlockForIdentifier:v4];
  v6 = [*(a1 + 48) delegateCaller];
  [v6 callCompletion:v7 error:v5];
}

void __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 sessionHubIdentifier];
  [v1 siriEndpointProfile:v2 didUpdateSessionHubIdentifier:v3];
}

void __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 siriEngineVersion];
  [v1 siriEndpointProfile:v2 didUpdateSiriEngineVersion:v3];
}

uint64_t __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 capability] & 1;

  return [v1 siriEndpointProfile:v2 didUpdateNeedsOnboarding:v3];
}

uint64_t __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = ([v2 capability] >> 1) & 1;

  return [v1 siriEndpointProfile:v2 didUpdateSupportsOnboarding:v3];
}

void __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 activeIdentifier];
  [v1 siriEndpointProfile:v2 didUpdateActiveIdentifier:v3];
}

uint64_t __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 manuallyDisabled];

  return [v1 siriEndpointProfile:v2 didUpdateManuallyDisabled:v3];
}

uint64_t __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 multifunctionButton];

  return [v1 siriEndpointProfile:v2 didUpdateMultifunctionButton:v3];
}

void __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 assistants];
  [v1 siriEndpointProfile:v2 didUpdateAssistants:v3];
}

void __60___HMSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v24[0] = @"session";
  v24[1] = @"settings";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v3 = MEMORY[0x1E69A2A10];
  v4 = [*(a1 + 32) messageDestination];
  v22 = @"property-list";
  v23 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v6 = [v3 messageWithName:@"HMSE.rs" destination:v4 payload:v5];

  v7 = [*(a1 + 32) context];
  v8 = [v7 pendingRequests];

  v9 = [v6 identifier];
  v10 = _Block_copy(*(a1 + 48));
  [v8 addCompletionBlock:v10 forIdentifier:v9];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __60___HMSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke_2;
  v18 = &unk_1E754E0A8;
  v19 = v8;
  v20 = v9;
  v21 = *(a1 + 40);
  v11 = v9;
  v12 = v8;
  [v6 setResponseHandler:&v15];
  v13 = [*(a1 + 40) messageDispatcher];
  [v13 sendMessage:v6 completionHandler:0];

  v14 = *MEMORY[0x1E69E9840];
}

void __60___HMSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v3 removeCompletionBlockForIdentifier:v4];
  v6 = [*(a1 + 48) delegateCaller];
  [v6 callCompletion:v7 error:v5];
}

uint64_t __59___HMSiriEndpointProfile_notifyClientDidUpdateSessionState__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 sessionState];

  return [v1 siriEndpointProfile:v2 didUpdateSessionState:v3];
}

uint64_t __37___HMSiriEndpointProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v38;
  logCategory__hmf_once_v38 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (HMSiriEndpointProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMAccessoryProfile *)self accessory];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (NSArray)attributeDescriptions
{
  v37[10] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v36 = [(HMAccessoryProfile *)self accessory];
  v35 = [v36 uniqueIdentifier];
  v34 = [v3 initWithName:@"accessoryUniqueIdentifier" value:v35];
  v37[0] = v34;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v33 = HMSiriEndpointProfileSessionStateTypeToString([(HMSiriEndpointProfile *)self sessionState]);
  v32 = [v4 initWithName:@"sessionState" value:v33];
  v37[1] = v32;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v31 = [(HMSiriEndpointProfile *)self sessionHubIdentifier];
  v30 = [v5 initWithName:@"sessionHubIdentifier" value:v31];
  v37[2] = v30;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v29 = [(HMSiriEndpointProfile *)self siriEndpointVersion];
  v28 = [v6 initWithName:@"siriEndpointVersion" value:v29];
  v37[3] = v28;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v27 = HMSiriEndpointProfileCapabilityToString([(HMSiriEndpointProfile *)self capability]);
  v26 = [v7 initWithName:@"capability" value:v27];
  v37[4] = v26;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  v25 = [(HMSiriEndpointProfile *)self siriEngineVersion];
  v9 = [v8 initWithName:@"siriEngineVersion" value:v25];
  v37[5] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointProfile *)self isNeedsOnboarding];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"needsOnboarding" value:v11];
  v37[6] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = [(HMSiriEndpointProfile *)self activeIdentifier];
  v15 = [v13 initWithName:@"activeIdentifier" value:v14];
  v37[7] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointProfile *)self manuallyDisabled];
  v17 = HMFBooleanToString();
  v18 = [v16 initWithName:@"manuallyDisabled" value:v17];
  v37[8] = v18;
  v19 = objc_alloc(MEMORY[0x1E69A29C8]);
  v20 = HMSiriEndpointProfileMultifunctionButtonTypeToString([(HMSiriEndpointProfile *)self multifunctionButton]);
  v21 = [v19 initWithName:@"multifunctionButton" value:v20];
  v37[9] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:10];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)refreshStateWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(HMAccessoryProfile *)self accessoryProfile];
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

  [v6 refreshStateWithCompletionHandler:v7];
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
  if (v6)
  {
    v8 = [v6 accessoryProfile];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = [(HMAccessoryProfile *)self accessoryProfile];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v14 = [v13 mergeFromNewObject:v10];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)siriEndpointProfile:(id)a3 didUpdateMultifunctionButton:(int64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMSiriEndpointProfileMultifunctionButtonTypeToString(a4);
    *buf = 138543874;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated multifunction Button: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    v13 = [(HMAccessoryProfile *)v9 accessoryProfile];
    v14 = [v13 context];
    v15 = [v14 delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__HMSiriEndpointProfile_siriEndpointProfile_didUpdateMultifunctionButton___block_invoke;
    v17[3] = &unk_1E754E120;
    v18 = v7;
    v19 = v9;
    v20 = a4;
    [v15 invokeBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)siriEndpointProfile:(id)a3 didUpdateManuallyDisabled:(BOOL)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated manually disabled: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    v13 = [(HMAccessoryProfile *)v9 accessoryProfile];
    v14 = [v13 context];
    v15 = [v14 delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__HMSiriEndpointProfile_siriEndpointProfile_didUpdateManuallyDisabled___block_invoke;
    v17[3] = &unk_1E754DC70;
    v18 = v7;
    v19 = v9;
    v20 = a4;
    [v15 invokeBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)siriEndpointProfile:(id)a3 didUpdateAssistants:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMSiriEndpointProfile *)self delegate];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v12;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated assistants: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    v13 = [(HMAccessoryProfile *)v10 accessoryProfile];
    v14 = [v13 context];
    v15 = [v14 delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__HMSiriEndpointProfile_siriEndpointProfile_didUpdateAssistants___block_invoke;
    v17[3] = &unk_1E754E5E8;
    v18 = v8;
    v19 = v10;
    v20 = v7;
    [v15 invokeBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)siriEndpointProfile:(id)a3 didUpdateActiveIdentifier:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMSiriEndpointProfile *)self delegate];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v12;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated active identifier: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMSiriEndpointProfile *)v10 currentAssistant];
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = [(HMAccessoryProfile *)v10 accessoryProfile];
    v15 = [v14 context];
    v16 = [v15 delegateCaller];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__HMSiriEndpointProfile_siriEndpointProfile_didUpdateActiveIdentifier___block_invoke;
    v18[3] = &unk_1E754E5E8;
    v19 = v8;
    v20 = v10;
    v21 = v13;
    [v16 invokeBlock:v18];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)siriEndpointProfile:(id)a3 didUpdateSupportsOnboarding:(BOOL)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint capability supports on boarding: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    v13 = [(HMAccessoryProfile *)v9 accessoryProfile];
    v14 = [v13 context];
    v15 = [v14 delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__HMSiriEndpointProfile_siriEndpointProfile_didUpdateSupportsOnboarding___block_invoke;
    v17[3] = &unk_1E754DC70;
    v18 = v7;
    v19 = v9;
    v20 = a4;
    [v15 invokeBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)siriEndpointProfile:(id)a3 didUpdateNeedsOnboarding:(BOOL)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = HMFBooleanToString();
    *buf = 138543874;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint capability needs on boarding: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    v13 = [(HMAccessoryProfile *)v9 accessoryProfile];
    v14 = [v13 context];
    v15 = [v14 delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__HMSiriEndpointProfile_siriEndpointProfile_didUpdateNeedsOnboarding___block_invoke;
    v17[3] = &unk_1E754DC70;
    v18 = v7;
    v19 = v9;
    v20 = a4;
    [v15 invokeBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)siriEndpointProfile:(id)a3 didUpdateSiriEngineVersion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMSiriEndpointProfile *)self delegate];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v12;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint version: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    v13 = [(HMAccessoryProfile *)v10 accessoryProfile];
    v14 = [v13 context];
    v15 = [v14 delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__HMSiriEndpointProfile_siriEndpointProfile_didUpdateSiriEngineVersion___block_invoke;
    v17[3] = &unk_1E754E5E8;
    v18 = v8;
    v19 = v10;
    v20 = v7;
    [v15 invokeBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)siriEndpointProfile:(id)a3 didUpdateSessionHubIdentifier:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMSiriEndpointProfile *)self delegate];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v22 = v12;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint session hud identifier: %@, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (objc_opt_respondsToSelector())
  {
    v13 = [(HMAccessoryProfile *)v10 accessoryProfile];
    v14 = [v13 context];
    v15 = [v14 delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __75__HMSiriEndpointProfile_siriEndpointProfile_didUpdateSessionHubIdentifier___block_invoke;
    v17[3] = &unk_1E754E5E8;
    v18 = v8;
    v19 = v10;
    v20 = v7;
    [v15 invokeBlock:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)siriEndpointProfile:(id)a3 didUpdateSessionState:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HMSiriEndpointProfile *)self delegate];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v21 = v11;
    v22 = 2048;
    v23 = a4;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated siri endpoint session state: %lu, delegate: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (objc_opt_respondsToSelector())
  {
    v12 = [(HMAccessoryProfile *)v9 accessoryProfile];
    v13 = [v12 context];
    v14 = [v13 delegateCaller];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__HMSiriEndpointProfile_siriEndpointProfile_didUpdateSessionState___block_invoke;
    v16[3] = &unk_1E754E120;
    v17 = v7;
    v18 = v9;
    v19 = a4;
    [v14 invokeBlock:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (HMSiriEndpointProfileAssistant)currentAssistant
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 activeIdentifier];
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 assistants];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 identifier];
          if ([v5 isEqual:v11])
          {
            v7 = v10;

            goto LABEL_15;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSArray)assistants
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 assistants];

  return v5;
}

- (int64_t)multifunctionButton
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 multifunctionButton];
  return v5;
}

- (BOOL)manuallyDisabled
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 manuallyDisabled];
  return v5;
}

- (NSNumber)activeIdentifier
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 activeIdentifier];

  return v5;
}

- (NSString)capabilityToString
{
  v2 = [(HMSiriEndpointProfile *)self capability];

  return HMSiriEndpointProfileCapabilityToString(v2);
}

- (unint64_t)capability
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 capability];
  return v5;
}

- (NSString)siriEngineVersion
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 siriEngineVersion];

  return v5;
}

- (NSString)siriEndpointVersion
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 siriEndpointVersion];

  return v5;
}

- (NSUUID)sessionHubIdentifier
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 sessionHubIdentifier];

  return v5;
}

- (int64_t)sessionState
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 sessionState];
  return v5;
}

- (id)siriEndpointProfile
{
  v2 = [(HMAccessoryProfile *)self accessoryProfile];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    [(HMSiriEndpointProfile *)v6 deleteSiriHistoryWithCompletionHandler:v7, v8];
  }

  return result;
}

- (void)deleteSiriHistoryWithCompletionHandler:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Deleting siri history", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMSiriEndpointProfile *)v6 siriEndpointProfile];
  [v9 deleteSiriHistoryWithCompletionHandler:v4];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)applyOnboardingSelections:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Applying onboarding with selections: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMSiriEndpointProfile *)v9 siriEndpointProfile];
  [v12 applyOnboardingSelections:v6 completionHandler:v7];

  v13 = *MEMORY[0x1E69E9840];
}

- (HMSiriEndpointProfile)initWithSiriEndpointProfile:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMSiriEndpointProfile;
  v5 = [(HMAccessoryProfile *)&v7 initWithAccessoryProfile:v4];
  if (v5)
  {
    [v4 setDelegate:v5];
  }

  return v5;
}

- (HMSiriEndpointProfile)init
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
  if (logCategory__hmf_once_t27_62129 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t27_62129, &__block_literal_global_62130);
  }

  v3 = logCategory__hmf_once_v28_62131;

  return v3;
}

uint64_t __36__HMSiriEndpointProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v28_62131;
  logCategory__hmf_once_v28_62131 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
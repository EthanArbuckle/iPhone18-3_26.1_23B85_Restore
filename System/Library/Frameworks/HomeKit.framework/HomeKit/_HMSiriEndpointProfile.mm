@interface _HMSiriEndpointProfile
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_mergeAssistants:(id)a3;
- (BOOL)manuallyDisabled;
- (BOOL)mergeFromNewObject:(id)a3;
- (NSArray)assistants;
- (NSArray)attributeDescriptions;
- (NSNumber)activeIdentifier;
- (NSString)shortDescription;
- (NSString)siriEndpointVersion;
- (NSString)siriEngineVersion;
- (NSUUID)sessionHubIdentifier;
- (_HMSiriEndpointProfile)initWithCoder:(id)a3;
- (_HMSiriEndpointProfileDelegate)delegate;
- (id)logIdentifier;
- (id)messageDestination;
- (int64_t)multifunctionButton;
- (int64_t)sessionState;
- (unint64_t)capability;
- (void)__configureWithContext:(id)a3 accessory:(id)a4;
- (void)_handleUpdateProfileState:(id)a3;
- (void)_registerNotificationHandlers;
- (void)applyOnboardingSelections:(id)a3 completionHandler:(id)a4;
- (void)deleteSiriHistoryWithCompletionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)notifyClientDidUpdateSessionState;
- (void)refreshStateWithCompletionHandler:(id)a3;
- (void)setActiveIdentifier:(id)a3;
- (void)setAssistants:(id)a3;
- (void)setCapability:(unint64_t)a3;
- (void)setManuallyDisabled:(BOOL)a3;
- (void)setMultifunctionButton:(int64_t)a3;
- (void)setNotifications:(BOOL)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)setSessionHubIdentifier:(id)a3;
- (void)setSessionState:(int64_t)a3;
- (void)setSiriEndpointVersion:(id)a3;
- (void)setSiriEngineVersion:(id)a3;
@end

@implementation _HMSiriEndpointProfile

- (_HMSiriEndpointProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(_HMAccessoryProfile *)self accessory];
  v3 = [v2 uniqueIdentifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (NSArray)attributeDescriptions
{
  v34[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v33 = [(_HMAccessoryProfile *)self accessory];
  v32 = [v33 uniqueIdentifier];
  v31 = [v3 initWithName:@"accessoryUniqueIdentifier" value:v32];
  v34[0] = v31;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v30 = HMSiriEndpointProfileSessionStateTypeToString([(_HMSiriEndpointProfile *)self sessionState]);
  v29 = [v4 initWithName:@"sessionState" value:v30];
  v34[1] = v29;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v28 = [(_HMSiriEndpointProfile *)self sessionHubIdentifier];
  v27 = [v5 initWithName:@"sessionHubIdentifier" value:v28];
  v34[2] = v27;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v26 = [(_HMSiriEndpointProfile *)self siriEndpointVersion];
  v25 = [v6 initWithName:@"siriEndpointVersion" value:v26];
  v34[3] = v25;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v24 = HMSiriEndpointProfileCapabilityToString([(_HMSiriEndpointProfile *)self capability]);
  v8 = [v7 initWithName:@"capability" value:v24];
  v34[4] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(_HMSiriEndpointProfile *)self siriEngineVersion];
  v11 = [v9 initWithName:@"siriEngineVersion" value:v10];
  v34[5] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [(_HMSiriEndpointProfile *)self activeIdentifier];
  v14 = [v12 initWithName:@"activeIdentifier" value:v13];
  v34[6] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(_HMSiriEndpointProfile *)self manuallyDisabled];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"manuallyDisabled" value:v16];
  v34[7] = v17;
  v18 = objc_alloc(MEMORY[0x1E69A29C8]);
  v19 = HMSiriEndpointProfileMultifunctionButtonTypeToString([(_HMSiriEndpointProfile *)self multifunctionButton]);
  v20 = [v18 initWithName:@"multifunctionButton" value:v19];
  v34[8] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:9];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
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

  if (v6)
  {
    v7 = [(_HMSiriEndpointProfile *)self delegate];
    v8 = [v6 sessionState];
    v9 = [(_HMSiriEndpointProfile *)self sessionState];
    v10 = v8 == v9;
    v11 = v8 != v9;
    if (!v10)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v15 = v60 = v7;
        v16 = HMSiriEndpointProfileSessionStateTypeToString([v6 sessionState]);
        v17 = HMSiriEndpointProfileSessionStateTypeToString([(_HMSiriEndpointProfile *)v13 sessionState]);
        *buf = 138543874;
        v79 = v15;
        v80 = 2112;
        v81 = v16;
        v82 = 2112;
        v83 = v17;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating session state during merge to session state: %@ from session state: %@", buf, 0x20u);

        v7 = v60;
      }

      objc_autoreleasePoolPop(v12);
      -[_HMSiriEndpointProfile setSessionState:](v13, "setSessionState:", [v6 sessionState]);
      v18 = [(_HMAccessoryProfile *)v13 context];
      v19 = [v18 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke;
      block[3] = &unk_1E754E2A8;
      block[4] = v13;
      dispatch_async(v19, block);
    }

    v20 = [v6 sessionHubIdentifier];
    v21 = [(_HMSiriEndpointProfile *)self sessionHubIdentifier];
    v22 = HMFEqualObjects();

    if ((v22 & 1) == 0)
    {
      v23 = [v6 sessionHubIdentifier];
      [(_HMSiriEndpointProfile *)self setSessionHubIdentifier:v23];

      if (objc_opt_respondsToSelector())
      {
        v24 = [(_HMAccessoryProfile *)self context];
        v25 = [v24 queue];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2;
        v75[3] = &unk_1E754E5C0;
        v75[4] = self;
        v76 = v7;
        dispatch_async(v25, v75);
      }

      v11 = 1;
    }

    v26 = [v6 siriEndpointVersion];
    v27 = [(_HMSiriEndpointProfile *)self siriEndpointVersion];
    v28 = HMFEqualObjects();

    if ((v28 & 1) == 0)
    {
      v29 = [v6 siriEndpointVersion];
      [(_HMSiriEndpointProfile *)self setSiriEndpointVersion:v29];

      v11 = 1;
    }

    v30 = [v6 capability];
    if (v30 != [(_HMSiriEndpointProfile *)self capability])
    {
      v31 = [(_HMSiriEndpointProfile *)self capability];
      -[_HMSiriEndpointProfile setCapability:](self, "setCapability:", [v6 capability]);
      if (([(_HMSiriEndpointProfile *)self capability]^ v31) & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v32 = [(_HMAccessoryProfile *)self context];
        v33 = [v32 queue];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_41;
        v73[3] = &unk_1E754E5C0;
        v73[4] = self;
        v74 = v7;
        dispatch_async(v33, v73);
      }

      if (([(_HMSiriEndpointProfile *)self capability]^ v31) & 2) != 0 && (objc_opt_respondsToSelector())
      {
        v34 = [(_HMAccessoryProfile *)self context];
        v35 = [v34 queue];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_43;
        v71[3] = &unk_1E754E5C0;
        v71[4] = self;
        v72 = v7;
        dispatch_async(v35, v71);
      }

      v11 = 1;
    }

    v36 = [v6 siriEngineVersion];
    v37 = [(_HMSiriEndpointProfile *)self siriEngineVersion];
    v38 = HMFEqualObjects();

    if ((v38 & 1) == 0)
    {
      v39 = [v6 siriEngineVersion];
      [(_HMSiriEndpointProfile *)self setSiriEngineVersion:v39];

      if (objc_opt_respondsToSelector())
      {
        v40 = [(_HMAccessoryProfile *)self context];
        v41 = [v40 queue];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_45;
        v69[3] = &unk_1E754E5C0;
        v69[4] = self;
        v70 = v7;
        dispatch_async(v41, v69);
      }

      v11 = 1;
    }

    v42 = [v6 assistants];
    v43 = [(_HMSiriEndpointProfile *)self _mergeAssistants:v42];

    if (v43 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v44 = [(_HMAccessoryProfile *)self context];
      v45 = [v44 queue];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_47;
      v67[3] = &unk_1E754E5C0;
      v67[4] = self;
      v68 = v7;
      dispatch_async(v45, v67);
    }

    v46 = [v6 activeIdentifier];
    v47 = [(_HMSiriEndpointProfile *)self activeIdentifier];
    v48 = HMFEqualObjects();

    if ((v48 & 1) == 0)
    {
      v49 = [v6 activeIdentifier];
      [(_HMSiriEndpointProfile *)self setActiveIdentifier:v49];

      if (objc_opt_respondsToSelector())
      {
        v50 = [(_HMAccessoryProfile *)self context];
        v51 = [v50 queue];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_49;
        v65[3] = &unk_1E754E5C0;
        v65[4] = self;
        v66 = v7;
        dispatch_async(v51, v65);
      }

      v11 = 1;
    }

    v52 = [v6 manuallyDisabled];
    if (v52 != [(_HMSiriEndpointProfile *)self manuallyDisabled])
    {
      -[_HMSiriEndpointProfile setManuallyDisabled:](self, "setManuallyDisabled:", [v6 manuallyDisabled]);
      if (objc_opt_respondsToSelector())
      {
        v53 = [(_HMAccessoryProfile *)self context];
        v54 = [v53 queue];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_51;
        v63[3] = &unk_1E754E5C0;
        v63[4] = self;
        v64 = v7;
        dispatch_async(v54, v63);
      }

      v11 = 1;
    }

    v55 = [v6 multifunctionButton];
    if (v55 != [(_HMSiriEndpointProfile *)self multifunctionButton])
    {
      -[_HMSiriEndpointProfile setMultifunctionButton:](self, "setMultifunctionButton:", [v6 multifunctionButton]);
      if (objc_opt_respondsToSelector())
      {
        v56 = [(_HMAccessoryProfile *)self context];
        v57 = [v56 queue];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_53;
        v61[3] = &unk_1E754E5C0;
        v61[4] = self;
        v62 = v7;
        dispatch_async(v57, v61);
      }

      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v58 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_mergeAssistants:(id)a3
{
  v4 = a3;
  v5 = [HMObjectMergeCollection alloc];
  v6 = [(_HMSiriEndpointProfile *)self assistants];
  v7 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:v6 newObjects:v4];

  [(HMObjectMergeCollection *)v7 mergeCommonObjects];
  if ([(HMObjectMergeCollection *)v7 isModified])
  {
    v8 = [(HMObjectMergeCollection *)v7 finalObjects];
    [(_HMSiriEndpointProfile *)self setAssistants:v8];
  }

  v9 = [(HMObjectMergeCollection *)v7 isModified];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (_HMSiriEndpointProfile)initWithCoder:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = _HMSiriEndpointProfile;
  v5 = [(_HMAccessoryProfile *)&v30 initWithCoder:v4];
  if (v5)
  {
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session-state"];
    v5->_sessionState = [v29 integerValue];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session-hub-id"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
    }

    else
    {
      v7 = [MEMORY[0x1E696AFB0] hmf_zeroUUID];
    }

    v8 = v7;
    objc_storeStrong(&v5->_sessionHubIdentifier, v7);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F0E92498;
    }

    objc_storeStrong(&v5->_siriEndpointVersion, v11);
    v5->_capability = [v4 decodeIntegerForKey:@"capability"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siri-engine-version"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1F0E92498;
    }

    objc_storeStrong(&v5->_siriEngineVersion, v14);
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"active-identifier"];
    activeIdentifier = v5->_activeIdentifier;
    v5->_activeIdentifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manually-disabled"];
    v18 = v17;
    if (v17)
    {
      *(&v5->_manuallyDisabled + 4) = [v17 BOOLValue];
    }

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multifunction-button"];
    v20 = v19;
    if (v19)
    {
      v5->_multifunctionButton = [v19 integerValue];
    }

    v21 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"assistants"];

    v25 = [MEMORY[0x1E695DEC8] arrayWithArray:v24];
    assistants = v5->_assistants;
    v5->_assistants = v25;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(_HMAccessoryProfile *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)setNotifications:(BOOL)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(_HMAccessoryProfile *)self context];
  v10 = v9;
  if (v9)
  {
    if (!v8)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v17);
    }

    v11 = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___HMSiriEndpointProfile_setNotifications_options_completionHandler___block_invoke;
    block[3] = &unk_1E754AC90;
    v22 = a3;
    v21 = a4;
    block[4] = self;
    v20 = v8;
    v19 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleUpdateProfileState:(id)a3
{
  v111 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMAccessoryProfile *)self context];
  v6 = [v5 pendingRequests];

  v7 = [v4 identifier];
  v76 = v6;
  v75 = [v6 removeCompletionBlockForIdentifier:v7];

  v8 = [(_HMSiriEndpointProfile *)self delegate];
  v9 = [v4 numberForKey:@"session-state"];
  v10 = [(_HMSiriEndpointProfile *)self sessionState];
  v77 = v9;
  if (v9)
  {
    v11 = v10;
    if ([v9 integerValue] != v10)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMSiriEndpointProfileSessionStateTypeToString(v11);
        HMSiriEndpointProfileSessionStateTypeToString([v9 integerValue]);
        v18 = v17 = v8;
        *buf = 138543874;
        v106 = v15;
        v107 = 2112;
        v108 = v16;
        v109 = 2112;
        v110 = v18;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating session state due to message from session state: %@ to sessionState: %@", buf, 0x20u);

        v8 = v17;
        v9 = v77;
      }

      objc_autoreleasePoolPop(v12);
      -[_HMSiriEndpointProfile setSessionState:](v13, "setSessionState:", [v9 integerValue]);
      [(_HMSiriEndpointProfile *)v13 notifyClientDidUpdateSessionState];
    }
  }

  v19 = [v4 uuidForKey:@"session-hub-id"];
  v20 = [(_HMSiriEndpointProfile *)self sessionHubIdentifier];
  v21 = HMFEqualObjects();

  if ((v21 & 1) == 0)
  {
    [(_HMSiriEndpointProfile *)self setSessionHubIdentifier:v19];
    if (objc_opt_respondsToSelector())
    {
      v22 = [(_HMAccessoryProfile *)self context];
      v23 = [v22 delegateCaller];
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke;
      v101[3] = &unk_1E754E5C0;
      v102 = v8;
      v103 = self;
      [v23 invokeBlock:v101];
    }
  }

  v24 = [v4 stringForKey:@"version"];
  if (v24)
  {
    v25 = [(_HMSiriEndpointProfile *)self siriEndpointVersion];
    v26 = HMFEqualObjects();

    if ((v26 & 1) == 0)
    {
      [(_HMSiriEndpointProfile *)self setSiriEndpointVersion:v24];
    }
  }

  v27 = [v4 stringForKey:@"siri-engine-version"];
  if (v27)
  {
    v28 = [(_HMSiriEndpointProfile *)self siriEngineVersion];
    v29 = HMFEqualObjects();

    if ((v29 & 1) == 0)
    {
      [(_HMSiriEndpointProfile *)self setSiriEngineVersion:v27];
      if (objc_opt_respondsToSelector())
      {
        v30 = [(_HMAccessoryProfile *)self context];
        v31 = [v30 delegateCaller];
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_2;
        v98[3] = &unk_1E754E5C0;
        v99 = v8;
        v100 = self;
        [v31 invokeBlock:v98];
      }
    }
  }

  v32 = [v4 numberForKey:@"capability"];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 integerValue];
    if (v34 != [(_HMSiriEndpointProfile *)self capability])
    {
      v35 = [(_HMSiriEndpointProfile *)self capability];
      -[_HMSiriEndpointProfile setCapability:](self, "setCapability:", [v33 integerValue]);
      if (([(_HMSiriEndpointProfile *)self capability]^ v35) & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v36 = [(_HMAccessoryProfile *)self context];
        v37 = [v36 delegateCaller];
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_3;
        v95[3] = &unk_1E754E5C0;
        v96 = v8;
        v97 = self;
        [v37 invokeBlock:v95];
      }

      if (([(_HMSiriEndpointProfile *)self capability]^ v35) & 2) != 0 && (objc_opt_respondsToSelector())
      {
        v38 = [(_HMAccessoryProfile *)self context];
        v39 = [v38 delegateCaller];
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_4;
        v92[3] = &unk_1E754E5C0;
        v93 = v8;
        v94 = self;
        [v39 invokeBlock:v92];
      }
    }
  }

  v74 = v19;
  v40 = [v4 numberForKey:@"active-identifier"];
  if (v40)
  {
    v41 = [(_HMSiriEndpointProfile *)self activeIdentifier];
    v42 = HMFEqualObjects();

    if ((v42 & 1) == 0)
    {
      [(_HMSiriEndpointProfile *)self setActiveIdentifier:v40];
      if (objc_opt_respondsToSelector())
      {
        v43 = [(_HMAccessoryProfile *)self context];
        v44 = [v43 delegateCaller];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_5;
        v89[3] = &unk_1E754E5C0;
        v90 = v8;
        v91 = self;
        [v44 invokeBlock:v89];
      }
    }
  }

  v73 = v24;
  v45 = [v4 numberForKey:@"manually-disabled"];
  v46 = v45;
  if (v45)
  {
    v47 = [v45 BOOLValue];
    if (v47 != [(_HMSiriEndpointProfile *)self manuallyDisabled])
    {
      -[_HMSiriEndpointProfile setManuallyDisabled:](self, "setManuallyDisabled:", [v46 BOOLValue]);
      if (objc_opt_respondsToSelector())
      {
        v48 = [(_HMAccessoryProfile *)self context];
        v49 = [v48 delegateCaller];
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 3221225472;
        v86[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_6;
        v86[3] = &unk_1E754E5C0;
        v87 = v8;
        v88 = self;
        [v49 invokeBlock:v86];
      }
    }
  }

  v71 = v33;
  v72 = v27;
  v50 = [v4 numberForKey:{@"multifunction-button", v40}];
  v51 = v50;
  if (v50)
  {
    v52 = [v50 integerValue];
    if (v52 != [(_HMSiriEndpointProfile *)self multifunctionButton])
    {
      -[_HMSiriEndpointProfile setMultifunctionButton:](self, "setMultifunctionButton:", [v51 integerValue]);
      if (objc_opt_respondsToSelector())
      {
        v53 = [(_HMAccessoryProfile *)self context];
        v54 = [v53 delegateCaller];
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_7;
        v83[3] = &unk_1E754E5C0;
        v84 = v8;
        v85 = self;
        [v54 invokeBlock:v83];
      }
    }
  }

  v78 = v8;
  v55 = [v4 dataForKey:@"assistants"];
  v56 = MEMORY[0x1E696ACD0];
  v57 = MEMORY[0x1E695DFD8];
  v104[0] = objc_opt_class();
  v104[1] = objc_opt_class();
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
  v59 = [v57 setWithArray:v58];
  v82 = 0;
  v60 = [v56 unarchivedObjectOfClasses:v59 fromData:v55 error:&v82];
  v61 = v82;

  v62 = v60;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  v64 = v63;

  if (v64 && [(_HMSiriEndpointProfile *)self _mergeAssistants:v64]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v65 = [(_HMAccessoryProfile *)self context];
    v66 = [v65 delegateCaller];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_8;
    v79[3] = &unk_1E754E5C0;
    v80 = v78;
    v81 = self;
    [v66 invokeBlock:v79];
  }

  if (v75)
  {
    v67 = [(_HMAccessoryProfile *)self context];
    v68 = [v67 delegateCaller];
    [v68 callCompletion:v75 error:0];
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (void)refreshStateWithCompletionHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMAccessoryProfile *)self context];
  v6 = v5;
  if (v5)
  {
    if (!v4)
    {
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v13);
    }

    v7 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___HMSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v16 = v4;
    v15 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAssistants:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  assistants = self->_assistants;
  self->_assistants = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSArray)assistants
{
  os_unfair_lock_lock_with_options();
  v3 = self->_assistants;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setMultifunctionButton:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_multifunctionButton = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (int64_t)multifunctionButton
{
  os_unfair_lock_lock_with_options();
  multifunctionButton = self->_multifunctionButton;
  os_unfair_lock_unlock(&self->super._lock);
  return multifunctionButton;
}

- (void)setManuallyDisabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  *(&self->_manuallyDisabled + 4) = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)manuallyDisabled
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_manuallyDisabled + 4);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setActiveIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  activeIdentifier = self->_activeIdentifier;
  self->_activeIdentifier = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSNumber)activeIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activeIdentifier;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSiriEngineVersion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  siriEngineVersion = self->_siriEngineVersion;
  self->_siriEngineVersion = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)siriEngineVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEngineVersion;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setCapability:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_capability = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (unint64_t)capability
{
  os_unfair_lock_lock_with_options();
  capability = self->_capability;
  os_unfair_lock_unlock(&self->super._lock);
  return capability;
}

- (void)setSiriEndpointVersion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  siriEndpointVersion = self->_siriEndpointVersion;
  self->_siriEndpointVersion = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)siriEndpointVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEndpointVersion;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSessionHubIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  sessionHubIdentifier = self->_sessionHubIdentifier;
  self->_sessionHubIdentifier = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSUUID)sessionHubIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sessionHubIdentifier;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSessionState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_sessionState = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (int64_t)sessionState
{
  os_unfair_lock_lock_with_options();
  sessionState = self->_sessionState;
  os_unfair_lock_unlock(&self->super._lock);
  return sessionState;
}

- (void)notifyClientDidUpdateSessionState
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(_HMAccessoryProfile *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(_HMSiriEndpointProfile *)self delegate];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v9;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did update session state using delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59___HMSiriEndpointProfile_notifyClientDidUpdateSessionState__block_invoke;
      v15[3] = &unk_1E754E5C0;
      v16 = v5;
      v17 = v7;
      [v4 invokeBlock:v15];
    }
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
      v19 = v13;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated session state due to no delgate caller from context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deleteSiriHistoryWithCompletionHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMSiriEndpointProfile *)self messenger];
  if (v5)
  {
    v6 = [(_HMAccessoryProfile *)self accessory];
    v7 = [v6 uuid];

    [v5 sendDeleteSiriHistoryRequestWithAccessoryUUID:v7 completionHandler:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to delete siri history due to no messenger", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:4];
    v4[2](v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)applyOnboardingSelections:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_HMSiriEndpointProfile *)self messenger];
  if (v8)
  {
    v9 = [(_HMAccessoryProfile *)self accessory];
    v10 = [v9 uuid];

    [v8 sendApplyOnboardingSelectionsRequestWithAccessoryUUID:v10 onboardingSelections:v6 completionHandler:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to apply onboarding selections due to no messenger", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:4];
    v7[2](v7, v15, 1);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationHandlers
{
  v4 = [(_HMAccessoryProfile *)self context];
  v3 = [v4 messageDispatcher];
  [v3 registerForMessage:@"HMSE.up" receiver:self selector:sel__handleUpdateProfileState_];
}

- (void)__configureWithContext:(id)a3 accessory:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring siri endpoint profile: %@ with context: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v15.receiver = v9;
  v15.super_class = _HMSiriEndpointProfile;
  [(_HMAccessoryProfile *)&v15 __configureWithContext:v6 accessory:v7];
  v12 = [(_HMAccessoryProfile *)v9 home];
  v13 = [v12 createSiriEndpointProfilesMessenger];
  [(_HMSiriEndpointProfile *)v9 setMessenger:v13];

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t37 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t37, &__block_literal_global_34295);
  }

  v3 = logCategory__hmf_once_v38;

  return v3;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
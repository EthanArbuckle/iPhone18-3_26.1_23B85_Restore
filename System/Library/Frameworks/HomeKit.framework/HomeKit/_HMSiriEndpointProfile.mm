@interface _HMSiriEndpointProfile
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)_mergeAssistants:(id)assistants;
- (BOOL)manuallyDisabled;
- (BOOL)mergeFromNewObject:(id)object;
- (NSArray)assistants;
- (NSArray)attributeDescriptions;
- (NSNumber)activeIdentifier;
- (NSString)shortDescription;
- (NSString)siriEndpointVersion;
- (NSString)siriEngineVersion;
- (NSUUID)sessionHubIdentifier;
- (_HMSiriEndpointProfile)initWithCoder:(id)coder;
- (_HMSiriEndpointProfileDelegate)delegate;
- (id)logIdentifier;
- (id)messageDestination;
- (int64_t)multifunctionButton;
- (int64_t)sessionState;
- (unint64_t)capability;
- (void)__configureWithContext:(id)context accessory:(id)accessory;
- (void)_handleUpdateProfileState:(id)state;
- (void)_registerNotificationHandlers;
- (void)applyOnboardingSelections:(id)selections completionHandler:(id)handler;
- (void)deleteSiriHistoryWithCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)notifyClientDidUpdateSessionState;
- (void)refreshStateWithCompletionHandler:(id)handler;
- (void)setActiveIdentifier:(id)identifier;
- (void)setAssistants:(id)assistants;
- (void)setCapability:(unint64_t)capability;
- (void)setManuallyDisabled:(BOOL)disabled;
- (void)setMultifunctionButton:(int64_t)button;
- (void)setNotifications:(BOOL)notifications options:(unint64_t)options completionHandler:(id)handler;
- (void)setSessionHubIdentifier:(id)identifier;
- (void)setSessionState:(int64_t)state;
- (void)setSiriEndpointVersion:(id)version;
- (void)setSiriEngineVersion:(id)version;
@end

@implementation _HMSiriEndpointProfile

- (_HMSiriEndpointProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(_HMAccessoryProfile *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (NSArray)attributeDescriptions
{
  v34[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessory = [(_HMAccessoryProfile *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];
  v31 = [v3 initWithName:@"accessoryUniqueIdentifier" value:uniqueIdentifier];
  v34[0] = v31;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v30 = HMSiriEndpointProfileSessionStateTypeToString([(_HMSiriEndpointProfile *)self sessionState]);
  v29 = [v4 initWithName:@"sessionState" value:v30];
  v34[1] = v29;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  sessionHubIdentifier = [(_HMSiriEndpointProfile *)self sessionHubIdentifier];
  v27 = [v5 initWithName:@"sessionHubIdentifier" value:sessionHubIdentifier];
  v34[2] = v27;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  siriEndpointVersion = [(_HMSiriEndpointProfile *)self siriEndpointVersion];
  v25 = [v6 initWithName:@"siriEndpointVersion" value:siriEndpointVersion];
  v34[3] = v25;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v24 = HMSiriEndpointProfileCapabilityToString([(_HMSiriEndpointProfile *)self capability]);
  v8 = [v7 initWithName:@"capability" value:v24];
  v34[4] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  siriEngineVersion = [(_HMSiriEndpointProfile *)self siriEngineVersion];
  v11 = [v9 initWithName:@"siriEngineVersion" value:siriEngineVersion];
  v34[5] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  activeIdentifier = [(_HMSiriEndpointProfile *)self activeIdentifier];
  v14 = [v12 initWithName:@"activeIdentifier" value:activeIdentifier];
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

- (BOOL)mergeFromNewObject:(id)object
{
  v84 = *MEMORY[0x1E69E9840];
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
    delegate = [(_HMSiriEndpointProfile *)self delegate];
    sessionState = [v6 sessionState];
    sessionState2 = [(_HMSiriEndpointProfile *)self sessionState];
    v10 = sessionState == sessionState2;
    v11 = sessionState != sessionState2;
    if (!v10)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v15 = v60 = delegate;
        v16 = HMSiriEndpointProfileSessionStateTypeToString([v6 sessionState]);
        v17 = HMSiriEndpointProfileSessionStateTypeToString([(_HMSiriEndpointProfile *)selfCopy sessionState]);
        *buf = 138543874;
        v79 = v15;
        v80 = 2112;
        v81 = v16;
        v82 = 2112;
        v83 = v17;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating session state during merge to session state: %@ from session state: %@", buf, 0x20u);

        delegate = v60;
      }

      objc_autoreleasePoolPop(v12);
      -[_HMSiriEndpointProfile setSessionState:](selfCopy, "setSessionState:", [v6 sessionState]);
      context = [(_HMAccessoryProfile *)selfCopy context];
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke;
      block[3] = &unk_1E754E2A8;
      block[4] = selfCopy;
      dispatch_async(queue, block);
    }

    sessionHubIdentifier = [v6 sessionHubIdentifier];
    sessionHubIdentifier2 = [(_HMSiriEndpointProfile *)self sessionHubIdentifier];
    v22 = HMFEqualObjects();

    if ((v22 & 1) == 0)
    {
      sessionHubIdentifier3 = [v6 sessionHubIdentifier];
      [(_HMSiriEndpointProfile *)self setSessionHubIdentifier:sessionHubIdentifier3];

      if (objc_opt_respondsToSelector())
      {
        context2 = [(_HMAccessoryProfile *)self context];
        queue2 = [context2 queue];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_2;
        v75[3] = &unk_1E754E5C0;
        v75[4] = self;
        v76 = delegate;
        dispatch_async(queue2, v75);
      }

      v11 = 1;
    }

    siriEndpointVersion = [v6 siriEndpointVersion];
    siriEndpointVersion2 = [(_HMSiriEndpointProfile *)self siriEndpointVersion];
    v28 = HMFEqualObjects();

    if ((v28 & 1) == 0)
    {
      siriEndpointVersion3 = [v6 siriEndpointVersion];
      [(_HMSiriEndpointProfile *)self setSiriEndpointVersion:siriEndpointVersion3];

      v11 = 1;
    }

    capability = [v6 capability];
    if (capability != [(_HMSiriEndpointProfile *)self capability])
    {
      capability2 = [(_HMSiriEndpointProfile *)self capability];
      -[_HMSiriEndpointProfile setCapability:](self, "setCapability:", [v6 capability]);
      if (([(_HMSiriEndpointProfile *)self capability]^ capability2) & 1) != 0 && (objc_opt_respondsToSelector())
      {
        context3 = [(_HMAccessoryProfile *)self context];
        queue3 = [context3 queue];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_41;
        v73[3] = &unk_1E754E5C0;
        v73[4] = self;
        v74 = delegate;
        dispatch_async(queue3, v73);
      }

      if (([(_HMSiriEndpointProfile *)self capability]^ capability2) & 2) != 0 && (objc_opt_respondsToSelector())
      {
        context4 = [(_HMAccessoryProfile *)self context];
        queue4 = [context4 queue];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_43;
        v71[3] = &unk_1E754E5C0;
        v71[4] = self;
        v72 = delegate;
        dispatch_async(queue4, v71);
      }

      v11 = 1;
    }

    siriEngineVersion = [v6 siriEngineVersion];
    siriEngineVersion2 = [(_HMSiriEndpointProfile *)self siriEngineVersion];
    v38 = HMFEqualObjects();

    if ((v38 & 1) == 0)
    {
      siriEngineVersion3 = [v6 siriEngineVersion];
      [(_HMSiriEndpointProfile *)self setSiriEngineVersion:siriEngineVersion3];

      if (objc_opt_respondsToSelector())
      {
        context5 = [(_HMAccessoryProfile *)self context];
        queue5 = [context5 queue];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_45;
        v69[3] = &unk_1E754E5C0;
        v69[4] = self;
        v70 = delegate;
        dispatch_async(queue5, v69);
      }

      v11 = 1;
    }

    assistants = [v6 assistants];
    v43 = [(_HMSiriEndpointProfile *)self _mergeAssistants:assistants];

    if (v43 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      context6 = [(_HMAccessoryProfile *)self context];
      queue6 = [context6 queue];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_47;
      v67[3] = &unk_1E754E5C0;
      v67[4] = self;
      v68 = delegate;
      dispatch_async(queue6, v67);
    }

    activeIdentifier = [v6 activeIdentifier];
    activeIdentifier2 = [(_HMSiriEndpointProfile *)self activeIdentifier];
    v48 = HMFEqualObjects();

    if ((v48 & 1) == 0)
    {
      activeIdentifier3 = [v6 activeIdentifier];
      [(_HMSiriEndpointProfile *)self setActiveIdentifier:activeIdentifier3];

      if (objc_opt_respondsToSelector())
      {
        context7 = [(_HMAccessoryProfile *)self context];
        queue7 = [context7 queue];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_49;
        v65[3] = &unk_1E754E5C0;
        v65[4] = self;
        v66 = delegate;
        dispatch_async(queue7, v65);
      }

      v11 = 1;
    }

    manuallyDisabled = [v6 manuallyDisabled];
    if (manuallyDisabled != [(_HMSiriEndpointProfile *)self manuallyDisabled])
    {
      -[_HMSiriEndpointProfile setManuallyDisabled:](self, "setManuallyDisabled:", [v6 manuallyDisabled]);
      if (objc_opt_respondsToSelector())
      {
        context8 = [(_HMAccessoryProfile *)self context];
        queue8 = [context8 queue];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_51;
        v63[3] = &unk_1E754E5C0;
        v63[4] = self;
        v64 = delegate;
        dispatch_async(queue8, v63);
      }

      v11 = 1;
    }

    multifunctionButton = [v6 multifunctionButton];
    if (multifunctionButton != [(_HMSiriEndpointProfile *)self multifunctionButton])
    {
      -[_HMSiriEndpointProfile setMultifunctionButton:](self, "setMultifunctionButton:", [v6 multifunctionButton]);
      if (objc_opt_respondsToSelector())
      {
        context9 = [(_HMAccessoryProfile *)self context];
        queue9 = [context9 queue];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __45___HMSiriEndpointProfile_mergeFromNewObject___block_invoke_53;
        v61[3] = &unk_1E754E5C0;
        v61[4] = self;
        v62 = delegate;
        dispatch_async(queue9, v61);
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

- (BOOL)_mergeAssistants:(id)assistants
{
  assistantsCopy = assistants;
  v5 = [HMObjectMergeCollection alloc];
  assistants = [(_HMSiriEndpointProfile *)self assistants];
  v7 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:assistants newObjects:assistantsCopy];

  [(HMObjectMergeCollection *)v7 mergeCommonObjects];
  if ([(HMObjectMergeCollection *)v7 isModified])
  {
    finalObjects = [(HMObjectMergeCollection *)v7 finalObjects];
    [(_HMSiriEndpointProfile *)self setAssistants:finalObjects];
  }

  isModified = [(HMObjectMergeCollection *)v7 isModified];

  return isModified;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (_HMSiriEndpointProfile)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = _HMSiriEndpointProfile;
  v5 = [(_HMAccessoryProfile *)&v30 initWithCoder:coderCopy];
  if (v5)
  {
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session-state"];
    v5->_sessionState = [v29 integerValue];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session-hub-id"];
    if (v6)
    {
      hmf_zeroUUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
    }

    else
    {
      hmf_zeroUUID = [MEMORY[0x1E696AFB0] hmf_zeroUUID];
    }

    v8 = hmf_zeroUUID;
    objc_storeStrong(&v5->_sessionHubIdentifier, hmf_zeroUUID);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
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
    v5->_capability = [coderCopy decodeIntegerForKey:@"capability"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siri-engine-version"];
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
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"active-identifier"];
    activeIdentifier = v5->_activeIdentifier;
    v5->_activeIdentifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manually-disabled"];
    v18 = v17;
    if (v17)
    {
      *(&v5->_manuallyDisabled + 4) = [v17 BOOLValue];
    }

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multifunction-button"];
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
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"assistants"];

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
  messageTargetUUID = [(_HMAccessoryProfile *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)setNotifications:(BOOL)notifications options:(unint64_t)options completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(_HMAccessoryProfile *)self context];
  v10 = context;
  if (context)
  {
    if (!handlerCopy)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v17);
    }

    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___HMSiriEndpointProfile_setNotifications_options_completionHandler___block_invoke;
    block[3] = &unk_1E754AC90;
    notificationsCopy = notifications;
    optionsCopy = options;
    block[4] = self;
    v20 = handlerCopy;
    v19 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)_handleUpdateProfileState:(id)state
{
  v111 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  context = [(_HMAccessoryProfile *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [stateCopy identifier];
  v76 = pendingRequests;
  v75 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  delegate = [(_HMSiriEndpointProfile *)self delegate];
  v9 = [stateCopy numberForKey:@"session-state"];
  sessionState = [(_HMSiriEndpointProfile *)self sessionState];
  v77 = v9;
  if (v9)
  {
    v11 = sessionState;
    if ([v9 integerValue] != sessionState)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMSiriEndpointProfileSessionStateTypeToString(v11);
        HMSiriEndpointProfileSessionStateTypeToString([v9 integerValue]);
        v18 = v17 = delegate;
        *buf = 138543874;
        v106 = v15;
        v107 = 2112;
        v108 = v16;
        v109 = 2112;
        v110 = v18;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating session state due to message from session state: %@ to sessionState: %@", buf, 0x20u);

        delegate = v17;
        v9 = v77;
      }

      objc_autoreleasePoolPop(v12);
      -[_HMSiriEndpointProfile setSessionState:](selfCopy, "setSessionState:", [v9 integerValue]);
      [(_HMSiriEndpointProfile *)selfCopy notifyClientDidUpdateSessionState];
    }
  }

  v19 = [stateCopy uuidForKey:@"session-hub-id"];
  sessionHubIdentifier = [(_HMSiriEndpointProfile *)self sessionHubIdentifier];
  v21 = HMFEqualObjects();

  if ((v21 & 1) == 0)
  {
    [(_HMSiriEndpointProfile *)self setSessionHubIdentifier:v19];
    if (objc_opt_respondsToSelector())
    {
      context2 = [(_HMAccessoryProfile *)self context];
      delegateCaller = [context2 delegateCaller];
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke;
      v101[3] = &unk_1E754E5C0;
      v102 = delegate;
      selfCopy2 = self;
      [delegateCaller invokeBlock:v101];
    }
  }

  v24 = [stateCopy stringForKey:@"version"];
  if (v24)
  {
    siriEndpointVersion = [(_HMSiriEndpointProfile *)self siriEndpointVersion];
    v26 = HMFEqualObjects();

    if ((v26 & 1) == 0)
    {
      [(_HMSiriEndpointProfile *)self setSiriEndpointVersion:v24];
    }
  }

  v27 = [stateCopy stringForKey:@"siri-engine-version"];
  if (v27)
  {
    siriEngineVersion = [(_HMSiriEndpointProfile *)self siriEngineVersion];
    v29 = HMFEqualObjects();

    if ((v29 & 1) == 0)
    {
      [(_HMSiriEndpointProfile *)self setSiriEngineVersion:v27];
      if (objc_opt_respondsToSelector())
      {
        context3 = [(_HMAccessoryProfile *)self context];
        delegateCaller2 = [context3 delegateCaller];
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_2;
        v98[3] = &unk_1E754E5C0;
        v99 = delegate;
        selfCopy3 = self;
        [delegateCaller2 invokeBlock:v98];
      }
    }
  }

  v32 = [stateCopy numberForKey:@"capability"];
  v33 = v32;
  if (v32)
  {
    integerValue = [v32 integerValue];
    if (integerValue != [(_HMSiriEndpointProfile *)self capability])
    {
      capability = [(_HMSiriEndpointProfile *)self capability];
      -[_HMSiriEndpointProfile setCapability:](self, "setCapability:", [v33 integerValue]);
      if (([(_HMSiriEndpointProfile *)self capability]^ capability) & 1) != 0 && (objc_opt_respondsToSelector())
      {
        context4 = [(_HMAccessoryProfile *)self context];
        delegateCaller3 = [context4 delegateCaller];
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_3;
        v95[3] = &unk_1E754E5C0;
        v96 = delegate;
        selfCopy4 = self;
        [delegateCaller3 invokeBlock:v95];
      }

      if (([(_HMSiriEndpointProfile *)self capability]^ capability) & 2) != 0 && (objc_opt_respondsToSelector())
      {
        context5 = [(_HMAccessoryProfile *)self context];
        delegateCaller4 = [context5 delegateCaller];
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_4;
        v92[3] = &unk_1E754E5C0;
        v93 = delegate;
        selfCopy5 = self;
        [delegateCaller4 invokeBlock:v92];
      }
    }
  }

  v74 = v19;
  v40 = [stateCopy numberForKey:@"active-identifier"];
  if (v40)
  {
    activeIdentifier = [(_HMSiriEndpointProfile *)self activeIdentifier];
    v42 = HMFEqualObjects();

    if ((v42 & 1) == 0)
    {
      [(_HMSiriEndpointProfile *)self setActiveIdentifier:v40];
      if (objc_opt_respondsToSelector())
      {
        context6 = [(_HMAccessoryProfile *)self context];
        delegateCaller5 = [context6 delegateCaller];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_5;
        v89[3] = &unk_1E754E5C0;
        v90 = delegate;
        selfCopy6 = self;
        [delegateCaller5 invokeBlock:v89];
      }
    }
  }

  v73 = v24;
  v45 = [stateCopy numberForKey:@"manually-disabled"];
  v46 = v45;
  if (v45)
  {
    bOOLValue = [v45 BOOLValue];
    if (bOOLValue != [(_HMSiriEndpointProfile *)self manuallyDisabled])
    {
      -[_HMSiriEndpointProfile setManuallyDisabled:](self, "setManuallyDisabled:", [v46 BOOLValue]);
      if (objc_opt_respondsToSelector())
      {
        context7 = [(_HMAccessoryProfile *)self context];
        delegateCaller6 = [context7 delegateCaller];
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 3221225472;
        v86[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_6;
        v86[3] = &unk_1E754E5C0;
        v87 = delegate;
        selfCopy7 = self;
        [delegateCaller6 invokeBlock:v86];
      }
    }
  }

  v71 = v33;
  v72 = v27;
  v50 = [stateCopy numberForKey:{@"multifunction-button", v40}];
  v51 = v50;
  if (v50)
  {
    integerValue2 = [v50 integerValue];
    if (integerValue2 != [(_HMSiriEndpointProfile *)self multifunctionButton])
    {
      -[_HMSiriEndpointProfile setMultifunctionButton:](self, "setMultifunctionButton:", [v51 integerValue]);
      if (objc_opt_respondsToSelector())
      {
        context8 = [(_HMAccessoryProfile *)self context];
        delegateCaller7 = [context8 delegateCaller];
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_7;
        v83[3] = &unk_1E754E5C0;
        v84 = delegate;
        selfCopy8 = self;
        [delegateCaller7 invokeBlock:v83];
      }
    }
  }

  v78 = delegate;
  v55 = [stateCopy dataForKey:@"assistants"];
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
    context9 = [(_HMAccessoryProfile *)self context];
    delegateCaller8 = [context9 delegateCaller];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __52___HMSiriEndpointProfile__handleUpdateProfileState___block_invoke_8;
    v79[3] = &unk_1E754E5C0;
    v80 = v78;
    selfCopy9 = self;
    [delegateCaller8 invokeBlock:v79];
  }

  if (v75)
  {
    context10 = [(_HMAccessoryProfile *)self context];
    delegateCaller9 = [context10 delegateCaller];
    [delegateCaller9 callCompletion:v75 error:0];
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (void)refreshStateWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(_HMAccessoryProfile *)self context];
  v6 = context;
  if (context)
  {
    if (!handlerCopy)
    {
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
      objc_exception_throw(v13);
    }

    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___HMSiriEndpointProfile_refreshStateWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v16 = handlerCopy;
    v15 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)setAssistants:(id)assistants
{
  assistantsCopy = assistants;
  os_unfair_lock_lock_with_options();
  v4 = [assistantsCopy copy];
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

- (void)setMultifunctionButton:(int64_t)button
{
  os_unfair_lock_lock_with_options();
  self->_multifunctionButton = button;

  os_unfair_lock_unlock(&self->super._lock);
}

- (int64_t)multifunctionButton
{
  os_unfair_lock_lock_with_options();
  multifunctionButton = self->_multifunctionButton;
  os_unfair_lock_unlock(&self->super._lock);
  return multifunctionButton;
}

- (void)setManuallyDisabled:(BOOL)disabled
{
  os_unfair_lock_lock_with_options();
  *(&self->_manuallyDisabled + 4) = disabled;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)manuallyDisabled
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_manuallyDisabled + 4);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setActiveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  activeIdentifier = self->_activeIdentifier;
  self->_activeIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSNumber)activeIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activeIdentifier;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSiriEngineVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  siriEngineVersion = self->_siriEngineVersion;
  self->_siriEngineVersion = versionCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)siriEngineVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEngineVersion;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setCapability:(unint64_t)capability
{
  os_unfair_lock_lock_with_options();
  self->_capability = capability;

  os_unfair_lock_unlock(&self->super._lock);
}

- (unint64_t)capability
{
  os_unfair_lock_lock_with_options();
  capability = self->_capability;
  os_unfair_lock_unlock(&self->super._lock);
  return capability;
}

- (void)setSiriEndpointVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  siriEndpointVersion = self->_siriEndpointVersion;
  self->_siriEndpointVersion = versionCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)siriEndpointVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_siriEndpointVersion;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSessionHubIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  sessionHubIdentifier = self->_sessionHubIdentifier;
  self->_sessionHubIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSUUID)sessionHubIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sessionHubIdentifier;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setSessionState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_sessionState = state;

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
  context = [(_HMAccessoryProfile *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(_HMSiriEndpointProfile *)self delegate];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v9;
      v20 = 2112;
      v21 = delegate;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did update session state using delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59___HMSiriEndpointProfile_notifyClientDidUpdateSessionState__block_invoke;
      v15[3] = &unk_1E754E5C0;
      v16 = delegate;
      v17 = selfCopy;
      [delegateCaller invokeBlock:v15];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = context;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated session state due to no delgate caller from context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)deleteSiriHistoryWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  messenger = [(_HMSiriEndpointProfile *)self messenger];
  if (messenger)
  {
    accessory = [(_HMAccessoryProfile *)self accessory];
    uuid = [accessory uuid];

    [messenger sendDeleteSiriHistoryRequestWithAccessoryUUID:uuid completionHandler:handlerCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    handlerCopy[2](handlerCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)applyOnboardingSelections:(id)selections completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  selectionsCopy = selections;
  handlerCopy = handler;
  messenger = [(_HMSiriEndpointProfile *)self messenger];
  if (messenger)
  {
    accessory = [(_HMAccessoryProfile *)self accessory];
    uuid = [accessory uuid];

    [messenger sendApplyOnboardingSelectionsRequestWithAccessoryUUID:uuid onboardingSelections:selectionsCopy completionHandler:handlerCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    handlerCopy[2](handlerCopy, v15, 1);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationHandlers
{
  context = [(_HMAccessoryProfile *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMSE.up" receiver:self selector:sel__handleUpdateProfileState_];
}

- (void)__configureWithContext:(id)context accessory:(id)accessory
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  accessoryCopy = accessory;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = selfCopy;
    v20 = 2112;
    v21 = contextCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring siri endpoint profile: %@ with context: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v15.receiver = selfCopy;
  v15.super_class = _HMSiriEndpointProfile;
  [(_HMAccessoryProfile *)&v15 __configureWithContext:contextCopy accessory:accessoryCopy];
  home = [(_HMAccessoryProfile *)selfCopy home];
  createSiriEndpointProfilesMessenger = [home createSiriEndpointProfilesMessenger];
  [(_HMSiriEndpointProfile *)selfCopy setMessenger:createSiriEndpointProfilesMessenger];

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
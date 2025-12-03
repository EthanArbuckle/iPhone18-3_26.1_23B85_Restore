@interface BKSTouchEventService
+ (BKSTouchEventService)sharedInstance;
- (BKSTouchEventService)init;
- (id)addAuthenticationSpecifications:(id)specifications forReason:(id)reason;
- (id)excludeEventsFromSenders:(id)senders fromHitTestingToContextIDs:(id)ds;
- (id)registerSceneHostSettings:(id)settings forCAContextID:(unsigned int)d;
- (id)setContextIDs:(id)ds forHitTestContextCategory:(int64_t)category;
- (void)_connectToService;
- (void)_repostAllRegistrations;
- (void)_updateRegistration:(uint64_t)registration;
- (void)_updateServerHitTestCategoryContextIDs;
- (void)_updateServerHitTestFilterParameters;
- (void)addTouchAuthenticationSpecifications:(id)specifications forReason:(id)reason;
@end

@implementation BKSTouchEventService

+ (BKSTouchEventService)sharedInstance
{
  if (sharedInstance_onceToken_13602 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_13602, &__block_literal_global_117);
  }

  v3 = sharedInstance_service_13603;

  return v3;
}

- (void)_connectToService
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_connectionLock);
  if (self->_connection)
  {
    v4 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(&self->_connectionLock);
  }

  else
  {
    v5 = +[BKSHIDServiceConnectionFactory sharedInstance];
    v6 = [v5 clientConnectionForServiceWithName:@"BKTouchEvents"];

    if (v6)
    {
      objc_storeStrong(&self->_connection, v6);
      os_unfair_lock_unlock(&self->_connectionLock);
      connection = self->_connection;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __41__BKSTouchEventService__connectToService__block_invoke;
      v15[3] = &unk_1E6F47978;
      v15[4] = self;
      [(BSServiceInitiatingConnection *)connection configure:v15];
      v8 = BKLogTouchEvents();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_186345000, v8, OS_LOG_TYPE_DEBUG, "activating connection to server", buf, 2u);
      }

      [v6 activate];
      v9 = BKLogTouchEvents();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        remoteTarget = [v6 remoteTarget];
        *buf = 138543362;
        v17 = remoteTarget;
        _os_log_debug_impl(&dword_186345000, v9, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", buf, 0xCu);
      }

      remoteTarget2 = [v6 remoteTarget];

      if (!remoteTarget2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"BKSTouchEventService.m" lineNumber:435 description:@"we must have a remote target"];
      }
    }

    else
    {
      v12 = BKLogTouchEvents();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v12, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
      }

      os_unfair_lock_unlock(&self->_connectionLock);
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)_updateRegistration:(uint64_t)registration
{
  v3 = a2;
  if (registration)
  {
    v15 = v3;
    [registration _connectToService];
    os_unfair_lock_lock((registration + 32));
    if (v15)
    {
      v4 = *(v15 + 2);
    }

    else
    {
      v4 = 0;
    }

    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    if (*(registration + 24))
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = *(registration + 24);
      *(registration + 24) = v6;

      v8 = *(registration + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 objectForKey:v5];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v10 = *(registration + 24);
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      [v10 setObject:v9 forKey:v11];
    }

    [v9 removeObject:v15];
    [v9 addObject:v15];
    if (v15)
    {
      v12 = v15[3];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    os_unfair_lock_unlock((registration + 32));
    remoteTarget = [*(registration + 8) remoteTarget];
    [remoteTarget setSceneHostSettings:v13 forContextID:v5];

    v3 = v15;
  }
}

void __41__BKSTouchEventService__connectToService__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogTouchEvents();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "configured client service", location, 2u);
  }

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF576500];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF579770];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"BKTouchEvents"];
  [v7 setServer:v6];
  [v7 setClient:v5];
  [v3 setInterface:v7];
  [v3 setInterfaceTarget:*(a1 + 32)];
  v8 = MEMORY[0x1E698F4D0];
  v9 = *(a1 + 32);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v8 queueWithName:v11];

  [v3 setQueue:v12];
  objc_initWeak(location, *(a1 + 32));
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__BKSTouchEventService__connectToService__block_invoke_189;
  v13[3] = &unk_1E6F47930;
  objc_copyWeak(&v14, location);
  [v3 setInterruptionHandler:v13];
  [v3 setInvalidationHandler:&__block_literal_global_193];
  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
}

void __41__BKSTouchEventService__connectToService__block_invoke_189(uint64_t a1)
{
  v2 = BKLogTouchEvents();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 0;
    _os_log_error_impl(&dword_186345000, v2, OS_LOG_TYPE_ERROR, "service interruption -- attempting to reconnect", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] activate];
    [v4 _repostAllRegistrations];
    [v4 _updateServerHitTestCategoryContextIDs];
  }
}

void __41__BKSTouchEventService__connectToService__block_invoke_191()
{
  v0 = BKLogTouchEvents();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "backboardd must be going down, ignoring", v1, 2u);
  }
}

- (void)_repostAllRegistrations
{
  os_unfair_lock_lock(&self->_registrationLock);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  registrationLock_registrationsByContextID = self->_registrationLock_registrationsByContextID;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__BKSTouchEventService__repostAllRegistrations__block_invoke;
  v10[3] = &unk_1E6F478E0;
  v11 = v3;
  v5 = v3;
  [(NSMutableDictionary *)registrationLock_registrationsByContextID enumerateKeysAndObjectsUsingBlock:v10];
  os_unfair_lock_unlock(&self->_registrationLock);
  remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__BKSTouchEventService__repostAllRegistrations__block_invoke_2;
  v8[3] = &unk_1E6F47908;
  v9 = remoteTarget;
  v7 = remoteTarget;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void __47__BKSTouchEventService__repostAllRegistrations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 lastObject];
  v8 = v6;
  if (v6)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  [v4 setObject:v7 forKey:v5];
}

- (void)_updateServerHitTestCategoryContextIDs
{
  [(BKSTouchEventService *)self _connectToService];
  remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
  orderedContext = [(BSCompoundAssertion *)self->_contextIDsForAXZoom orderedContext];
  array = [orderedContext array];
  bs_flatten = [array bs_flatten];
  [remoteTarget setContextIDs:bs_flatten forHitTestContextCategory:&unk_1EF56BF28];
}

- (void)_updateServerHitTestFilterParameters
{
  [(BKSTouchEventService *)self _connectToService];
  remoteTarget = [(BSServiceInitiatingConnection *)self->_connection remoteTarget];
  orderedContext = [(BSCompoundAssertion *)self->_hitTestFilterParameters orderedContext];
  array = [orderedContext array];
  [remoteTarget setHitTestFilterParameters:array];
}

- (id)excludeEventsFromSenders:(id)senders fromHitTestingToContextIDs:(id)ds
{
  v38 = *MEMORY[0x1E69E9840];
  sendersCopy = senders;
  dsCopy = ds;
  if (![sendersCopy count])
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[senders count] > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v27 = v16;
      v28 = 2114;
      v29 = v18;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BKSTouchEventService.m";
      v34 = 1024;
      v35 = 273;
      v36 = 2114;
      v37 = v15;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B5CF8);
  }

  if (![dsCopy count])
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[contextIDs count] > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v27 = v20;
      v28 = 2114;
      v29 = v22;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2114;
      v33 = @"BKSTouchEventService.m";
      v34 = 1024;
      v35 = 274;
      v36 = 2114;
      v37 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B5DF0);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__BKSTouchEventService_excludeEventsFromSenders_fromHitTestingToContextIDs___block_invoke;
  v23[3] = &unk_1E6F478B8;
  v24 = sendersCopy;
  v25 = dsCopy;
  v9 = dsCopy;
  v10 = sendersCopy;
  v11 = [BKSTouchHitTestFilterParameters build:v23];
  v12 = [(BSCompoundAssertion *)self->_hitTestFilterParameters acquireForReason:@"AX maybe" withContext:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __76__BKSTouchEventService_excludeEventsFromSenders_fromHitTestingToContextIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSenderDescriptors:v3];
  [v4 setContextIDs:*(a1 + 40)];
}

- (id)setContextIDs:(id)ds forHitTestContextCategory:(int64_t)category
{
  v70 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (!dsCopy)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v27 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"contextIDs", v29];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      v59 = v31;
      v60 = 2114;
      v61 = v33;
      v62 = 2048;
      selfCopy5 = self;
      v64 = 2114;
      v65 = @"BKSTouchEventService.m";
      v66 = 1024;
      v67 = 261;
      v68 = 2114;
      v69 = v30;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B6228);
  }

  v8 = dsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = MEMORY[0x1E696AEC0];
    classForCoder = [v8 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v36 = NSStringFromClass(classForCoder);
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v34 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"contextIDs", v36, v38];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(a2);
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138544642;
      v59 = v40;
      v60 = 2114;
      v61 = v42;
      v62 = 2048;
      selfCopy5 = self;
      v64 = 2114;
      v65 = @"BKSTouchEventService.m";
      v66 = 1024;
      v67 = 261;
      v68 = 2114;
      v69 = v39;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B6364);
  }

  if (![v8 count])
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no shirt, no contextIDs, no service"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v44 = NSStringFromSelector(a2);
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      *buf = 138544642;
      v59 = v44;
      v60 = 2114;
      v61 = v46;
      v62 = 2048;
      selfCopy5 = self;
      v64 = 2114;
      v65 = @"BKSTouchEventService.m";
      v66 = 1024;
      v67 = 262;
      v68 = 2114;
      v69 = v43;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v43 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B6450);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v54;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        v15 = objc_opt_class();
        v16 = v14;
        if (v15)
        {
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        unsignedIntValue = [v18 unsignedIntValue];
        if (!unsignedIntValue)
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"contextID must be a number greater than zero"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v24 = NSStringFromSelector(a2);
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            *buf = 138544642;
            v59 = v24;
            v60 = 2114;
            v61 = v26;
            v62 = 2048;
            selfCopy5 = self;
            v64 = 2114;
            v65 = @"BKSTouchEventService.m";
            v66 = 1024;
            v67 = 265;
            v68 = 2114;
            v69 = v23;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v23 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863B6110);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v11);
  }

  if (category != 1)
  {
    v47 = MEMORY[0x1E696AEC0];
    v48 = NSStringFromBKSTouchHitTestContextCategory(category);
    v49 = [v47 stringWithFormat:@"invalid category %@", v48];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(a2);
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      *buf = 138544642;
      v59 = v50;
      v60 = 2114;
      v61 = v52;
      v62 = 2048;
      selfCopy5 = self;
      v64 = 2114;
      v65 = @"BKSTouchEventService.m";
      v66 = 1024;
      v67 = 268;
      v68 = 2114;
      v69 = v49;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B655CLL);
  }

  v20 = [(BSCompoundAssertion *)self->_contextIDsForAXZoom acquireForReason:@"AX!" withContext:v9];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)registerSceneHostSettings:(id)settings forCAContextID:(unsigned int)d
{
  settingsCopy = settings;
  [(BKSTouchEventService *)self _connectToService];
  v8 = [BKSSceneHostRegistration alloc];
  v9 = settingsCopy;
  selfCopy = self;
  if (v8)
  {
    v13.receiver = v8;
    v13.super_class = BKSSceneHostRegistration;
    v11 = [(BKSTouchEventService *)&v13 init];
    v8 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, self);
      objc_storeStrong(&v8->_sceneHostSettings, settings);
      v8->_contextID = d;
    }
  }

  [(BKSTouchEventService *)selfCopy _updateRegistration:v8];

  return v8;
}

- (id)addAuthenticationSpecifications:(id)specifications forReason:(id)reason
{
  bs_secureEncoded = [specifications bs_secureEncoded];
  v5 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDTouchAddAuthenticationSpecifications(v5, [bs_secureEncoded bs_bytesForMIG], objc_msgSend(bs_secureEncoded, "bs_lengthForMIG"));
  v6 = objc_alloc_init(_BKSLocallyOwnedTouchAuthenticationAssertion);

  return v6;
}

- (void)addTouchAuthenticationSpecifications:(id)specifications forReason:(id)reason
{
  bs_secureEncoded = [specifications bs_secureEncoded];
  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDTouchAddAuthenticationSpecifications(v4, [bs_secureEncoded bs_bytesForMIG], objc_msgSend(bs_secureEncoded, "bs_lengthForMIG"));
}

- (BKSTouchEventService)init
{
  v16.receiver = self;
  v16.super_class = BKSTouchEventService;
  v2 = [(BKSTouchEventService *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_connectionLock._os_unfair_lock_opaque = 0;
    v2->_registrationLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v4 = MEMORY[0x1E698E658];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __28__BKSTouchEventService_init__block_invoke;
    v13[3] = &unk_1E6F47890;
    objc_copyWeak(&v14, &location);
    v5 = [v4 assertionWithIdentifier:@"BKContextIDsForAXZoom" stateDidChangeHandler:v13];
    contextIDsForAXZoom = v3->_contextIDsForAXZoom;
    v3->_contextIDsForAXZoom = v5;

    v7 = MEMORY[0x1E698E658];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __28__BKSTouchEventService_init__block_invoke_2;
    v11[3] = &unk_1E6F47890;
    objc_copyWeak(&v12, &location);
    v8 = [v7 assertionWithIdentifier:@"BKSenderDescriptorsToFilter" stateDidChangeHandler:v11];
    hitTestFilterParameters = v3->_hitTestFilterParameters;
    v3->_hitTestFilterParameters = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __28__BKSTouchEventService_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateServerHitTestCategoryContextIDs];
}

void __28__BKSTouchEventService_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateServerHitTestFilterParameters];
}

uint64_t __38__BKSTouchEventService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(BKSTouchEventService);
  v1 = sharedInstance_service_13603;
  sharedInstance_service_13603 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
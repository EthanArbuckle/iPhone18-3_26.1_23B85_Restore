@interface BKSApplicationStateMonitor
- (BKSApplicationStateMonitor)initWithEndpoint:(id)endpoint bundleIDs:(id)ds states:(unsigned int)states elevatedPriority:(BOOL)priority;
- (BOOL)_clientSubscribedToThisReasonChange:(id)change;
- (BOOL)_clientSubscribedToThisStateChange:(id)change state:(id)state prevState:(id)prevState;
- (BOOL)elevatedPriority;
- (NSArray)interestedBundleIDs;
- (id)_legacyInfoForProcess:(id)process;
- (id)_legacyInfoForProcess:(id)process state:(id)state;
- (id)applicationInfoForApplication:(id)application;
- (id)applicationInfoForPID:(int)d;
- (id)handler;
- (unsigned)_legacyStateForProcess:(id)process state:(id)state;
- (unsigned)applicationStateForApplication:(id)application;
- (unsigned)interestedStates;
- (void)applicationInfoForApplication:(id)application completion:(id)completion;
- (void)applicationInfoForPID:(int)d completion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)lock_updateConfiguration;
- (void)setHandler:(id)handler;
- (void)updateInterestedAssertionReasons:(id)reasons;
- (void)updateInterestedBundleIDs:(id)ds;
- (void)updateInterestedBundleIDs:(id)ds states:(unsigned int)states;
@end

@implementation BKSApplicationStateMonitor

void __54__BKSApplicationStateMonitor_lock_updateConfiguration__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [v7 state];
  v10 = [v7 previousState];

  v11 = [WeakRetained _legacyInfoForProcess:v6 state:v9];
  if (v11)
  {
    if (![v10 isRunning] || (objc_msgSend(v9, "isRunning") & 1) != 0)
    {
      goto LABEL_18;
    }

    v12 = [v6 lastExitContext];
    v13 = [v12 status];
    v14 = [v13 code];

    if (v14 > 3221229822)
    {
      if (v14 != 4227595259)
      {
        if (v14 == 3735943697)
        {
          v17 = 1;
          goto LABEL_16;
        }

        v15 = 3221229823;
        goto LABEL_14;
      }
    }

    else if (v14 != 732775916 && v14 != 1307235759)
    {
      v15 = 2343432205;
LABEL_14:
      if (v14 != v15)
      {
LABEL_17:

LABEL_18:
        v19 = [v11 objectForKey:@"SBApplicationStateRunningReasonsKey"];
        if (([WeakRetained _clientSubscribedToThisStateChange:v6 state:v9 prevState:v10] & 1) != 0 || objc_msgSend(WeakRetained, "_clientSubscribedToThisReasonChange:", v19))
        {
          (*(*(a1 + 32) + 16))();
        }

        goto LABEL_22;
      }
    }

    v17 = 5;
LABEL_16:
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
    [v11 setObject:v18 forKey:@"BKSApplicationStateExitReasonKey"];

    goto LABEL_17;
  }

  v16 = rbs_shim_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v21 = 138543362;
    v22 = v6;
    _os_log_impl(&dword_22EEB6000, v16, OS_LOG_TYPE_INFO, "Ignoring update for process: %{public}@", &v21, 0xCu);
  }

LABEL_22:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  handler = self->_handler;
  self->_handler = 0;

  [(RBSProcessMonitor *)self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_monitor invalidate];
  v3.receiver = self;
  v3.super_class = BKSApplicationStateMonitor;
  [(BKSApplicationStateMonitor *)&v3 dealloc];
}

- (unsigned)interestedStates
{
  os_unfair_lock_lock(&self->_lock);
  interestedStates = self->_interestedStates;
  os_unfair_lock_unlock(&self->_lock);
  return interestedStates;
}

- (void)lock_updateConfiguration
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  array = [MEMORY[0x277CBEB18] array];
  interestedBundleIDs = self->_interestedBundleIDs;
  if (interestedBundleIDs)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    legacyPredicate = interestedBundleIDs;
    v6 = [(NSArray *)legacyPredicate countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(legacyPredicate);
          }

          v10 = [MEMORY[0x277D46F18] legacyPredicateMatchingBundleIdentifier:*(*(&v22 + 1) + 8 * i)];
          [array addObject:v10];
        }

        v7 = [(NSArray *)legacyPredicate countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }
  }

  else
  {
    legacyPredicate = [MEMORY[0x277D46F18] legacyPredicate];
    [array addObject:legacyPredicate];
  }

  if (self->_elevatedPriority)
  {
    v11 = 25;
  }

  else
  {
    v11 = 17;
  }

  v12 = MEMORY[0x2318FA0F0](self->_handler);
  monitor = self->_monitor;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__BKSApplicationStateMonitor_lock_updateConfiguration__block_invoke;
  v17[3] = &unk_278871DB0;
  v21 = v11;
  selfCopy = self;
  v20 = v12;
  v18 = array;
  v14 = v12;
  v15 = array;
  [(RBSProcessMonitor *)monitor updateConfiguration:v17];

  v16 = *MEMORY[0x277D85DE8];
}

- (NSArray)interestedBundleIDs
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_interestedBundleIDs;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __54__BKSApplicationStateMonitor_lock_updateConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPredicates:*(a1 + 32)];
  v4 = RBSProcessLegacyStateDescriptor();
  [v3 setStateDescriptor:v4];

  [v3 setServiceClass:*(a1 + 56)];
  if (*(a1 + 48))
  {
    objc_initWeak(&location, *(a1 + 40));
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__BKSApplicationStateMonitor_lock_updateConfiguration__block_invoke_2;
    v5[3] = &unk_278871D88;
    objc_copyWeak(&v7, &location);
    v6 = *(a1 + 48);
    [v3 setUpdateHandler:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    [v3 setUpdateHandler:0];
  }
}

- (BKSApplicationStateMonitor)initWithEndpoint:(id)endpoint bundleIDs:(id)ds states:(unsigned int)states elevatedPriority:(BOOL)priority
{
  dsCopy = ds;
  v16.receiver = self;
  v16.super_class = BKSApplicationStateMonitor;
  v10 = [(BKSApplicationStateMonitor *)&v16 init];
  if (v10)
  {
    if (dsCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [BKSApplicationStateMonitor initWithEndpoint:bundleIDs:states:elevatedPriority:];
      }
    }

    v10->_lock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(MEMORY[0x277D46F80]);
    monitor = v10->_monitor;
    v10->_monitor = v11;

    v10->_elevatedPriority = priority;
    v13 = [dsCopy copy];
    interestedBundleIDs = v10->_interestedBundleIDs;
    v10->_interestedBundleIDs = v13;

    v10->_interestedStates = states;
  }

  return v10;
}

- (void)setHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = [handlerCopy copy];

  handler = self->_handler;
  self->_handler = v5;

  [(BKSApplicationStateMonitor *)self lock_updateConfiguration];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)handler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x2318FA0F0](self->_handler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x2318FA0F0](v3);

  return v4;
}

- (BOOL)elevatedPriority
{
  os_unfair_lock_lock(&self->_lock);
  elevatedPriority = self->_elevatedPriority;
  os_unfair_lock_unlock(&self->_lock);
  return elevatedPriority;
}

- (void)updateInterestedBundleIDs:(id)ds
{
  dsCopy = ds;
  [(BKSApplicationStateMonitor *)self updateInterestedBundleIDs:dsCopy states:[(BKSApplicationStateMonitor *)self interestedStates]];
}

- (void)updateInterestedBundleIDs:(id)ds states:(unsigned int)states
{
  dsCopy = ds;
  if (dsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BKSApplicationStateMonitor updateInterestedBundleIDs:states:];
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [dsCopy copy];
  interestedBundleIDs = self->_interestedBundleIDs;
  self->_interestedBundleIDs = v6;

  self->_interestedStates = states;
  [(BKSApplicationStateMonitor *)self lock_updateConfiguration];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateInterestedAssertionReasons:(id)reasons
{
  reasonsCopy = reasons;
  os_unfair_lock_lock(&self->_lock);
  v5 = [reasonsCopy copy];

  interestedAssertionReasons = self->_interestedAssertionReasons;
  self->_interestedAssertionReasons = v5;

  [(BKSApplicationStateMonitor *)self lock_updateConfiguration];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)applicationInfoForApplication:(id)application completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  if (!completionCopy)
  {
    [BKSApplicationStateMonitor applicationInfoForApplication:completion:];
  }

  v8 = MEMORY[0x277D47028];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__BKSApplicationStateMonitor_applicationInfoForApplication_completion___block_invoke;
  v11[3] = &unk_278871D38;
  v11[4] = self;
  v12 = applicationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = applicationCopy;
  [v8 performBackgroundWork:v11];
}

void __71__BKSApplicationStateMonitor_applicationInfoForApplication_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationInfoForApplication:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)applicationInfoForPID:(int)d completion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [BKSApplicationStateMonitor applicationInfoForPID:completion:];
  }

  v7 = MEMORY[0x277D47028];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__BKSApplicationStateMonitor_applicationInfoForPID_completion___block_invoke;
  v9[3] = &unk_278871D60;
  dCopy = d;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 performBackgroundWork:v9];
}

void __63__BKSApplicationStateMonitor_applicationInfoForPID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationInfoForPID:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

- (id)applicationInfoForApplication:(id)application
{
  if (application)
  {
    v4 = [MEMORY[0x277D46F18] legacyPredicateMatchingBundleIdentifier:?];
    v5 = [MEMORY[0x277D46F48] handleForPredicate:v4 error:0];
    v6 = [(BKSApplicationStateMonitor *)self _legacyInfoForProcess:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)applicationInfoForPID:(int)d
{
  if (d < 1)
  {
    v8 = 0;
  }

  else
  {
    v4 = MEMORY[0x277D46F18];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v6 = [v4 legacyPredicateMatchingProcessIdentifier:v5];

    v7 = [MEMORY[0x277D46F48] handleForPredicate:v6 error:0];
    v8 = [(BKSApplicationStateMonitor *)self _legacyInfoForProcess:v7];
  }

  return v8;
}

- (unsigned)applicationStateForApplication:(id)application
{
  v3 = [(BKSApplicationStateMonitor *)self applicationInfoForApplication:application];
  v4 = [v3 objectForKey:@"SBApplicationStateKey"];
  unsignedIntValue = [v4 unsignedIntValue];

  return unsignedIntValue;
}

- (unsigned)_legacyStateForProcess:(id)process state:(id)state
{
  stateCopy = state;
  taskState = [stateCopy taskState];
  v6 = 0;
  if (taskState <= 2)
  {
    if (taskState == 1)
    {
      v6 = 1;
      goto LABEL_12;
    }

    if (taskState != 2)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (taskState == 3)
  {
    v6 = 2;
    goto LABEL_12;
  }

  if (taskState == 4)
  {
LABEL_7:
    endowmentNamespaces = [stateCopy endowmentNamespaces];
    v8 = [endowmentNamespaces containsObject:*MEMORY[0x277D470D0]];

    if (v8)
    {
      v6 = 8;
    }

    else
    {
      v6 = 4;
    }
  }

LABEL_12:

  return v6;
}

- (BOOL)_clientSubscribedToThisStateChange:(id)change state:(id)state prevState:(id)prevState
{
  changeCopy = change;
  stateCopy = state;
  prevStateCopy = prevState;
  v11 = [(BKSApplicationStateMonitor *)self _legacyStateForProcess:changeCopy state:stateCopy];
  interestedStates = self->_interestedStates;
  if (prevStateCopy)
  {
    v13 = [(BKSApplicationStateMonitor *)self _legacyStateForProcess:changeCopy state:prevStateCopy];
    LOBYTE(v14) = (self->_interestedStates & v13) != 0;
    if (v11 == v13)
    {
      process = [stateCopy process];
      v16 = [process pid];
      process2 = [prevStateCopy process];
      v18 = v16 != [process2 pid];
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
    v14 = self->_interestedStates;
  }

  return v18 & (((interestedStates & v11) != 0) | v14);
}

- (BOOL)_clientSubscribedToThisReasonChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  os_unfair_lock_lock(&self->_lock);
  if (self->_interestedAssertionReasons)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = changeCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) objectForKey:{@"SBApplicationStateRunningReasonAssertionReasonKey", v15}];
          v11 = [(NSArray *)self->_interestedAssertionReasons containsObject:v10];

          if (v11)
          {
            v12 = 1;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_legacyInfoForProcess:(id)process
{
  processCopy = process;
  v5 = RBSProcessLegacyStateDescriptor();
  v6 = [processCopy currentStateMatchingDescriptor:v5];

  v7 = [(BKSApplicationStateMonitor *)self _legacyInfoForProcess:processCopy state:v6];

  return v7;
}

- (id)_legacyInfoForProcess:(id)process state:(id)state
{
  v56 = *MEMORY[0x277D85DE8];
  processCopy = process;
  stateCopy = state;
  identity = [processCopy identity];
  embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
  v10 = embeddedApplicationIdentifier;
  if (embeddedApplicationIdentifier)
  {
    identifier = embeddedApplicationIdentifier;
  }

  else
  {
    xpcServiceIdentifier = [identity xpcServiceIdentifier];
    v13 = xpcServiceIdentifier;
    if (xpcServiceIdentifier)
    {
      identifier = xpcServiceIdentifier;
    }

    else
    {
      bundle = [processCopy bundle];
      identifier = [bundle identifier];
    }
  }

  if (processCopy && identifier)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    isXPCService = [identity isXPCService];
    if (isXPCService)
    {
      hostIdentifier = [identity hostIdentifier];
      rbs_pid = [hostIdentifier rbs_pid];
    }

    else
    {
      rbs_pid = 0;
    }

    v19 = [(BKSApplicationStateMonitor *)self _legacyStateForProcess:processCopy state:stateCopy];
    assertions = [stateCopy assertions];
    if ([assertions count])
    {
      v41 = v19;
      v42 = rbs_pid;
      v43 = dictionary;
      v44 = identity;
      v45 = stateCopy;
      v46 = processCopy;
      array = [MEMORY[0x277CBEB18] array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v21 = assertions;
      v22 = [v21 countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v49;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v49 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v48 + 1) + 8 * i);
            v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v26, "reason")}];
            explanation = [v26 explanation];
            v29 = explanation;
            if (v27)
            {
              v30 = explanation == 0;
            }

            else
            {
              v30 = 1;
            }

            if (!v30)
            {
              v53[0] = @"SBApplicationStateRunningReasonAssertionReasonKey";
              v53[1] = @"SBApplicationStateRunningReasonAssertionIdentifierKey";
              v54[0] = v27;
              v54[1] = explanation;
              v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
              [array addObject:v31];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v48 objects:v55 count:16];
        }

        while (v23);
      }

      dictionary = v43;
      if ([array count])
      {
        [v43 setObject:array forKey:@"SBApplicationStateRunningReasonsKey"];
      }

      stateCopy = v45;
      processCopy = v46;
      identity = v44;
      v19 = v41;
      rbs_pid = v42;
    }

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
    [dictionary setObject:v32 forKey:@"SBApplicationStateKey"];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
    [dictionary setObject:v33 forKey:@"SBMostElevatedStateForProcessID"];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:v19 == 8];
    [dictionary setObject:v34 forKey:@"BKSApplicationStateAppIsFrontmost"];

    [dictionary setObject:identifier forKey:@"SBApplicationStateDisplayIDKey"];
    v35 = [processCopy pid];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:v35 & ~(v35 >> 31)];
    [dictionary setObject:v36 forKey:@"SBApplicationStateProcessIDKey"];

    v37 = [MEMORY[0x277CCABB0] numberWithBool:isXPCService];
    [dictionary setObject:v37 forKey:@"BKSApplicationStateExtensionKey"];

    if (rbs_pid >= 1)
    {
      v38 = [MEMORY[0x277CCABB0] numberWithInt:rbs_pid];
      [dictionary setObject:v38 forKey:@"BKSApplicationStateHostPIDKey"];
    }
  }

  else
  {
    assertions = rbs_shim_log();
    if (os_log_type_enabled(assertions, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEB6000, assertions, OS_LOG_TYPE_INFO, "BKSApplicationStateMonitor resolved state as not running with no bundleID", buf, 2u);
    }

    dictionary = 0;
  }

  v39 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)initWithEndpoint:bundleIDs:states:elevatedPriority:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateInterestedBundleIDs:states:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)applicationInfoForApplication:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)applicationInfoForPID:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end
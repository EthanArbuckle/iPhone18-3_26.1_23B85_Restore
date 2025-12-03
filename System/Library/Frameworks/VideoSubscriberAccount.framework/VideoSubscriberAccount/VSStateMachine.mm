@interface VSStateMachine
- (BOOL)enqueueEvent:(id)event;
- (VSStateMachine)init;
- (VSStateMachineDelegate)delegate;
- (id)description;
- (void)_enteringState:(id)state;
- (void)_exitingState:(id)state;
- (void)_handleEnqueuedTransitions;
- (void)_setDestinationState:(id)state forEvent:(id)event inState:(id)inState ignoringEvent:(BOOL)ignoringEvent;
- (void)activateWithState:(id)state;
- (void)setName:(id)name;
@end

@implementation VSStateMachine

- (VSStateMachine)init
{
  v16.receiver = self;
  v16.super_class = VSStateMachine;
  v2 = [(VSStateMachine *)&v16 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284DD5B48;

    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    transitionQueue = v3->_transitionQueue;
    v3->_transitionQueue = v5;

    [(NSOperationQueue *)v3->_transitionQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_transitionQueue setName:@"com.apple.VideoSubscriberAccount.StateMachine"];
    v7 = objc_alloc_init(VSOptional);
    currentState = v3->_currentState;
    v3->_currentState = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    enqueuedTransitions = v3->_enqueuedTransitions;
    v3->_enqueuedTransitions = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transitionTable = v3->_transitionTable;
    v3->_transitionTable = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    ignoredEventsByState = v3->_ignoredEventsByState;
    v3->_ignoredEventsByState = v13;
  }

  return v3;
}

- (void)_enteringState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  capitalizedString = [(NSString *)stateCopy capitalizedString];
  v6 = [capitalizedString stringByReplacingOccurrencesOfString:@" " withString:&stru_284DD5B48];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"transitionTo%@State", v6];
  v8 = NSSelectorFromString(v7);
  delegate = [(VSStateMachine *)self delegate];
  v10 = VSDefaultLogObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!delegate)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    *buf = 138412546;
    selfCopy6 = self;
    v21 = 2112;
    v22 = stateCopy;
    goto LABEL_18;
  }

  if (v11)
  {
    v12 = NSStringFromSelector(v8);
    *buf = 138412290;
    selfCopy6 = v12;
    _os_log_impl(&dword_23AB8E000, v10, OS_LOG_TYPE_DEFAULT, "Checking transition selector %@", buf, 0xCu);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v17 = objc_opt_respondsToSelector();
    v10 = VSDefaultLogObject();
    v18 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v18)
      {
        *buf = 138412546;
        selfCopy6 = self;
        v21 = 2112;
        v22 = stateCopy;
      }

      [delegate stateMachine:self transitionToState:stateCopy];
      v10 = VSDefaultLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      selfCopy6 = self;
      v21 = 2112;
      v22 = stateCopy;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      selfCopy6 = self;
      v21 = 2112;
      v22 = stateCopy;
    }

LABEL_18:
    v15 = v10;
    v16 = 22;
    goto LABEL_19;
  }

  v13 = VSDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy6 = self;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = stateCopy;
  }

  [delegate v8];
  v10 = VSDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy6 = self;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = stateCopy;
    v15 = v10;
    v16 = 32;
LABEL_19:
    _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
  }

LABEL_20:
}

- (void)_exitingState:(id)state
{
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  capitalizedString = [(NSString *)stateCopy capitalizedString];
  v7 = [capitalizedString stringByReplacingOccurrencesOfString:@" " withString:&stru_284DD5B48];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"transitionFrom%@State", v7];
  v9 = NSSelectorFromString(v8);
  delegate = [(VSStateMachine *)self delegate];
  v11 = VSDefaultLogObject();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!delegate)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    *buf = 138412546;
    selfCopy6 = self;
    v22 = 2112;
    v23 = stateCopy;
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = NSStringFromSelector(v9);
    *buf = 138412290;
    selfCopy6 = v13;
    _os_log_impl(&dword_23AB8E000, v11, OS_LOG_TYPE_DEFAULT, "Checking transition selector %@", buf, 0xCu);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = objc_opt_respondsToSelector();
    v11 = VSDefaultLogObject();
    v19 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v19)
      {
        *buf = 138412546;
        selfCopy6 = self;
        v22 = 2112;
        v23 = stateCopy;
      }

      [delegate stateMachine:self transitionFromState:stateCopy];
      v11 = VSDefaultLogObject();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      selfCopy6 = self;
      v22 = 2112;
      v23 = stateCopy;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      selfCopy6 = self;
      v22 = 2112;
      v23 = stateCopy;
    }

LABEL_18:
    v16 = v11;
    v17 = 22;
    goto LABEL_19;
  }

  v14 = VSDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy6 = self;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = stateCopy;
  }

  [delegate v9];
  v11 = VSDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy6 = self;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = stateCopy;
    v16 = v11;
    v17 = 32;
LABEL_19:
    _os_log_impl(&dword_23AB8E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
  }

LABEL_20:

  objc_autoreleasePoolPop(v5);
}

- (void)_handleEnqueuedTransitions
{
  v3 = 0;
  v29 = *MEMORY[0x277D85DE8];
  do
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    enqueuedTransitions = [(VSStateMachine *)selfCopy enqueuedTransitions];
    v6 = [enqueuedTransitions objectAtIndex:0];
    v7 = [VSOptional optionalWithObject:v6];

    [enqueuedTransitions removeObjectAtIndex:0];
    v8 = [enqueuedTransitions count] != 0;
    forceUnwrapObject = [v7 forceUnwrapObject];
    previousState = [forceUnwrapObject previousState];
    forceUnwrapObject2 = [previousState forceUnwrapObject];

    nextState = [forceUnwrapObject nextState];
    forceUnwrapObject3 = [nextState forceUnwrapObject];

    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = forceUnwrapObject2;
      v25 = 2112;
      v26 = forceUnwrapObject3;
      v27 = 2112;
      selfCopy2 = self;
    }

    v15 = [VSOptional optionalWithObject:forceUnwrapObject3];
    [(VSStateMachine *)selfCopy setCurrentState:v15];

    transitionQueue = [(VSStateMachine *)selfCopy transitionQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__VSStateMachine__handleEnqueuedTransitions__block_invoke;
    v20[3] = &unk_278B73A28;
    v20[4] = selfCopy;
    v17 = forceUnwrapObject2;
    v21 = v17;
    v18 = forceUnwrapObject3;
    v22 = v18;
    [transitionQueue addOperationWithBlock:v20];

    objc_sync_exit(selfCopy);
    v19 = v3 | v8;
    v3 = 1;
  }

  while ((v19 & 1) != 0);
}

void __44__VSStateMachine__handleEnqueuedTransitions__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _exitingState:*(a1 + 40)];
  [*(a1 + 32) _enteringState:*(a1 + 48)];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = 138412802;
    v7 = v4;
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
  }
}

- (void)_setDestinationState:(id)state forEvent:(id)event inState:(id)inState ignoringEvent:(BOOL)ignoringEvent
{
  ignoringEventCopy = ignoringEvent;
  stateCopy = state;
  eventCopy = event;
  inStateCopy = inState;
  v13 = MEMORY[0x277CBE660];
  if (inStateCopy)
  {
    if (stateCopy)
    {
      goto LABEL_3;
    }

LABEL_25:
    [MEMORY[0x277CBEAD8] raise:*v13 format:@"The destinationState parameter must not be nil."];
    if (eventCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The sourceState parameter must not be nil."];
  if (!stateCopy)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (eventCopy)
  {
    goto LABEL_4;
  }

LABEL_26:
  [MEMORY[0x277CBEAD8] raise:*v13 format:@"The triggeringEvent parameter must not be nil."];
LABEL_4:
  v14 = [inStateCopy copy];

  v27 = [stateCopy copy];
  v15 = [eventCopy copy];

  if (atomic_load(&self->_mode))
  {
    [MEMORY[0x277CBEAD8] raise:*v13 format:{@"Attempt to allow state transition after activation of state machine %@.", self}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  ignoredEventsByState = [(VSStateMachine *)selfCopy ignoredEventsByState];
  v19 = [ignoredEventsByState objectForKey:v14];
  if (!v19)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [ignoredEventsByState setObject:v19 forKey:v14];

    if (!v19)
    {
      [MEMORY[0x277CBEAD8] raise:*v13 format:@"The ignoredEventsOrNil parameter must not be nil."];
      v19 = 0;
    }
  }

  v20 = v19;
  transitionTable = [(VSStateMachine *)selfCopy transitionTable];
  v22 = [transitionTable objectForKey:v14];
  if (!v22)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [transitionTable setObject:v22 forKey:v14];

    if (!v22)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The transitionsOrNil parameter must not be nil."];
      v22 = 0;
    }
  }

  v23 = v22;
  v24 = v23;
  if (ignoringEventCopy)
  {
    v25 = [v23 objectForKey:v15];
    if (v25)
    {
    }

    [v20 addObject:v15];
  }

  else
  {
    if ([v20 containsObject:v15])
    {
    }

    [v24 setObject:v27 forKey:v15];
  }

  objc_sync_exit(selfCopy);
  if (atomic_load(&self->_mode))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to allow state transition after activation of state machine %@.", selfCopy}];
  }
}

- (void)setName:(id)name
{
  if (self->_name != name)
  {
    nameCopy = name;
    v6 = [nameCopy copy];
    name = self->_name;
    self->_name = v6;

    transitionQueue = [(VSStateMachine *)self transitionQueue];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ State Machine Transition Queue", nameCopy];

    [transitionQueue setName:nameCopy];
  }
}

- (void)activateWithState:(id)state
{
  v54 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (!stateCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The initialState parameter must not be nil."];
  }

  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v52 = 2112;
    v53 = stateCopy;
  }

  v4 = 0;
  atomic_compare_exchange_strong(&self->_mode, &v4, 1u);
  if (v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to activate already-activated state machine %@.", self}];
  }

  else
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    obj = selfCopy2;
    ignoredEventsByState = [(VSStateMachine *)selfCopy2 ignoredEventsByState];
    transitionTable = [(VSStateMachine *)selfCopy2 transitionTable];
    v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allKeys = [transitionTable allKeys];
    [v39 addObjectsFromArray:allKeys];

    allKeys2 = [ignoredEventsByState allKeys];
    [v39 addObjectsFromArray:allKeys2];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    allValues = [transitionTable allValues];
    v11 = [allValues countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v11)
    {
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          allValues2 = [*(*(&v44 + 1) + 8 * i) allValues];
          [v39 addObjectsFromArray:allValues2];
        }

        v11 = [allValues countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v11);
    }

    allObjects = [v39 allObjects];
    [v37 addObjectsFromArray:allObjects];

    [v7 addObject:stateCopy];
    [v37 removeObject:stateCopy];
    v32 = [transitionTable objectForKey:stateCopy];
    if (v32)
    {
      v16 = v32;
      allValues3 = [v16 allValues];
      [v38 addObjectsFromArray:allValues3];

      [v38 minusSet:v7];
    }

    do
    {
      [v37 minusSet:v38];
      v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v19 = v38;
      v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v20)
      {
        v21 = *v41;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v41 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v40 + 1) + 8 * j);
            [v7 addObject:v23];
            v24 = [transitionTable objectForKey:v23];
            v25 = v24;
            if (v24)
            {
              v26 = v24;
              allValues4 = [v26 allValues];
              [v18 addObjectsFromArray:allValues4];
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v20);
      }

      allObjects2 = [v18 allObjects];
      [v19 addObjectsFromArray:allObjects2];

      [v19 minusSet:v7];
    }

    while ([v19 count]);
    v29 = [v39 mutableCopy];
    [v29 minusSet:v7];
    if ([v29 count])
    {
    }

    else
    {
      v30 = [VSOptional optionalWithObject:stateCopy];
      [(VSStateMachine *)obj setCurrentState:v30];
    }

    objc_sync_exit(obj);
    v31 = 1;
    atomic_compare_exchange_strong(&self->_mode, &v31, 2u);
  }
}

- (BOOL)enqueueEvent:(id)event
{
  v36 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (!eventCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The event parameter must not be nil."];
  }

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = eventCopy;
    v32 = 2112;
    selfCopy = self;
  }

  v6 = [eventCopy copy];
  v7 = atomic_load(&self->_mode);
  if (v7 != 2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to enqueue an event prior to activation of state machine %@.", self}];
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  currentState = [(VSStateMachine *)selfCopy2 currentState];
  enqueuedTransitions = [(VSStateMachine *)selfCopy2 enqueuedTransitions];
  v11 = [enqueuedTransitions count];
  v28 = v11 == 0;
  if (v11)
  {
    v12 = [enqueuedTransitions objectAtIndex:{objc_msgSend(enqueuedTransitions, "count") - 1}];
    nextState = [v12 nextState];

    currentState = nextState;
  }

  forceUnwrapObject = [currentState forceUnwrapObject];
  transitionTable = [(VSStateMachine *)selfCopy2 transitionTable];
  v16 = [transitionTable objectForKey:forceUnwrapObject];

  v17 = [v16 objectForKey:v6];
  v29 = v17 != 0;
  if (v17)
  {
    v18 = objc_alloc_init(VSStateTransition);
    v19 = [VSOptional optionalWithObject:forceUnwrapObject];
    [(VSStateTransition *)v18 setPreviousState:v19];

    v20 = [VSOptional optionalWithObject:v6];
    [(VSStateTransition *)v18 setTriggeringEvent:v20];

    v21 = [VSOptional optionalWithObject:v17];
    [(VSStateTransition *)v18 setNextState:v21];

    [enqueuedTransitions addObject:v18];
LABEL_15:
    v25 = 1;
LABEL_16:

    goto LABEL_17;
  }

  ignoredEventsByState = [(VSStateMachine *)selfCopy2 ignoredEventsByState];
  v23 = [ignoredEventsByState objectForKey:forceUnwrapObject];
  v24 = [v23 containsObject:v6];

  if (v24)
  {
    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v31 = v6;
      v32 = 2112;
      selfCopy = forceUnwrapObject;
      v34 = 2112;
      v35 = selfCopy2;
    }

    v28 = 0;
    goto LABEL_15;
  }

  if ([(VSStateMachine *)selfCopy2 ignoresUnassignedEvents])
  {
    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v31 = v6;
      v32 = 2112;
      selfCopy = forceUnwrapObject;
      v34 = 2112;
      v35 = selfCopy2;
    }

    v25 = 0;
    goto LABEL_16;
  }

  v27 = VSErrorLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v31 = v6;
    v32 = 2112;
    selfCopy = forceUnwrapObject;
    v34 = 2112;
    v35 = selfCopy2;
  }

  v25 = 1;
LABEL_17:

  objc_sync_exit(selfCopy2);
  if ((v28 & v25) == 1)
  {
    [(VSStateMachine *)selfCopy2 _handleEnqueuedTransitions];
  }

  else
  {
    v29 = (v17 != 0) & v25;
  }

  return v29;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VSStateMachine;
  v4 = [(VSStateMachine *)&v8 description];
  name = [(VSStateMachine *)self name];
  v6 = [v3 stringWithFormat:@"<%@ name=%@>", v4, name];

  return v6;
}

- (VSStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
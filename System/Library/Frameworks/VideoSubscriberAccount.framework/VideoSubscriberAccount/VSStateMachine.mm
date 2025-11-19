@interface VSStateMachine
- (BOOL)enqueueEvent:(id)a3;
- (VSStateMachine)init;
- (VSStateMachineDelegate)delegate;
- (id)description;
- (void)_enteringState:(id)a3;
- (void)_exitingState:(id)a3;
- (void)_handleEnqueuedTransitions;
- (void)_setDestinationState:(id)a3 forEvent:(id)a4 inState:(id)a5 ignoringEvent:(BOOL)a6;
- (void)activateWithState:(id)a3;
- (void)setName:(id)a3;
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

- (void)_enteringState:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSString *)v4 capitalizedString];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_284DD5B48];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"transitionTo%@State", v6];
  v8 = NSSelectorFromString(v7);
  v9 = [(VSStateMachine *)self delegate];
  v10 = VSDefaultLogObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    *buf = 138412546;
    v20 = self;
    v21 = 2112;
    v22 = v4;
    goto LABEL_18;
  }

  if (v11)
  {
    v12 = NSStringFromSelector(v8);
    *buf = 138412290;
    v20 = v12;
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
        v20 = self;
        v21 = 2112;
        v22 = v4;
      }

      [v9 stateMachine:self transitionToState:v4];
      v10 = VSDefaultLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      v20 = self;
      v21 = 2112;
      v22 = v4;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      v20 = self;
      v21 = 2112;
      v22 = v4;
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
    v20 = self;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v4;
  }

  [v9 v8];
  v10 = VSDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v4;
    v15 = v10;
    v16 = 32;
LABEL_19:
    _os_log_impl(&dword_23AB8E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
  }

LABEL_20:
}

- (void)_exitingState:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSString *)v4 capitalizedString];
  v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_284DD5B48];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"transitionFrom%@State", v7];
  v9 = NSSelectorFromString(v8);
  v10 = [(VSStateMachine *)self delegate];
  v11 = VSDefaultLogObject();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v4;
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = NSStringFromSelector(v9);
    *buf = 138412290;
    v21 = v13;
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
        v21 = self;
        v22 = 2112;
        v23 = v4;
      }

      [v10 stateMachine:self transitionFromState:v4];
      v11 = VSDefaultLogObject();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v4;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_20;
      }

      *buf = 138412546;
      v21 = self;
      v22 = 2112;
      v23 = v4;
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
    v21 = self;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v4;
  }

  [v10 v9];
  v11 = VSDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = self;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v4;
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
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(VSStateMachine *)v4 enqueuedTransitions];
    v6 = [v5 objectAtIndex:0];
    v7 = [VSOptional optionalWithObject:v6];

    [v5 removeObjectAtIndex:0];
    v8 = [v5 count] != 0;
    v9 = [v7 forceUnwrapObject];
    v10 = [v9 previousState];
    v11 = [v10 forceUnwrapObject];

    v12 = [v9 nextState];
    v13 = [v12 forceUnwrapObject];

    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = v11;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = self;
    }

    v15 = [VSOptional optionalWithObject:v13];
    [(VSStateMachine *)v4 setCurrentState:v15];

    v16 = [(VSStateMachine *)v4 transitionQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__VSStateMachine__handleEnqueuedTransitions__block_invoke;
    v20[3] = &unk_278B73A28;
    v20[4] = v4;
    v17 = v11;
    v21 = v17;
    v18 = v13;
    v22 = v18;
    [v16 addOperationWithBlock:v20];

    objc_sync_exit(v4);
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

- (void)_setDestinationState:(id)a3 forEvent:(id)a4 inState:(id)a5 ignoringEvent:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x277CBE660];
  if (v12)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_25:
    [MEMORY[0x277CBEAD8] raise:*v13 format:@"The destinationState parameter must not be nil."];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The sourceState parameter must not be nil."];
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_26:
  [MEMORY[0x277CBEAD8] raise:*v13 format:@"The triggeringEvent parameter must not be nil."];
LABEL_4:
  v14 = [v12 copy];

  v27 = [v10 copy];
  v15 = [v11 copy];

  if (atomic_load(&self->_mode))
  {
    [MEMORY[0x277CBEAD8] raise:*v13 format:{@"Attempt to allow state transition after activation of state machine %@.", self}];
  }

  v17 = self;
  objc_sync_enter(v17);
  v18 = [(VSStateMachine *)v17 ignoredEventsByState];
  v19 = [v18 objectForKey:v14];
  if (!v19)
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v18 setObject:v19 forKey:v14];

    if (!v19)
    {
      [MEMORY[0x277CBEAD8] raise:*v13 format:@"The ignoredEventsOrNil parameter must not be nil."];
      v19 = 0;
    }
  }

  v20 = v19;
  v21 = [(VSStateMachine *)v17 transitionTable];
  v22 = [v21 objectForKey:v14];
  if (!v22)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v21 setObject:v22 forKey:v14];

    if (!v22)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The transitionsOrNil parameter must not be nil."];
      v22 = 0;
    }
  }

  v23 = v22;
  v24 = v23;
  if (v6)
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

  objc_sync_exit(v17);
  if (atomic_load(&self->_mode))
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to allow state transition after activation of state machine %@.", v17}];
  }
}

- (void)setName:(id)a3
{
  if (self->_name != a3)
  {
    v5 = a3;
    v6 = [v5 copy];
    name = self->_name;
    self->_name = v6;

    v9 = [(VSStateMachine *)self transitionQueue];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ State Machine Transition Queue", v5];

    [v9 setName:v8];
  }
}

- (void)activateWithState:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v36 = a3;
  if (!v36)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The initialState parameter must not be nil."];
  }

  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v51 = self;
    v52 = 2112;
    v53 = v36;
  }

  v4 = 0;
  atomic_compare_exchange_strong(&self->_mode, &v4, 1u);
  if (v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to activate already-activated state machine %@.", self}];
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    obj = v5;
    v34 = [(VSStateMachine *)v5 ignoredEventsByState];
    v6 = [(VSStateMachine *)v5 transitionTable];
    v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v8 = [v6 allKeys];
    [v39 addObjectsFromArray:v8];

    v9 = [v34 allKeys];
    [v39 addObjectsFromArray:v9];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = [v6 allValues];
    v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v11)
    {
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v44 + 1) + 8 * i) allValues];
          [v39 addObjectsFromArray:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v11);
    }

    v15 = [v39 allObjects];
    [v37 addObjectsFromArray:v15];

    [v7 addObject:v36];
    [v37 removeObject:v36];
    v32 = [v6 objectForKey:v36];
    if (v32)
    {
      v16 = v32;
      v17 = [v16 allValues];
      [v38 addObjectsFromArray:v17];

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
            v24 = [v6 objectForKey:v23];
            v25 = v24;
            if (v24)
            {
              v26 = v24;
              v27 = [v26 allValues];
              [v18 addObjectsFromArray:v27];
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v20);
      }

      v28 = [v18 allObjects];
      [v19 addObjectsFromArray:v28];

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
      v30 = [VSOptional optionalWithObject:v36];
      [(VSStateMachine *)obj setCurrentState:v30];
    }

    objc_sync_exit(obj);
    v31 = 1;
    atomic_compare_exchange_strong(&self->_mode, &v31, 2u);
  }
}

- (BOOL)enqueueEvent:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The event parameter must not be nil."];
  }

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v4;
    v32 = 2112;
    v33 = self;
  }

  v6 = [v4 copy];
  v7 = atomic_load(&self->_mode);
  if (v7 != 2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to enqueue an event prior to activation of state machine %@.", self}];
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(VSStateMachine *)v8 currentState];
  v10 = [(VSStateMachine *)v8 enqueuedTransitions];
  v11 = [v10 count];
  v28 = v11 == 0;
  if (v11)
  {
    v12 = [v10 objectAtIndex:{objc_msgSend(v10, "count") - 1}];
    v13 = [v12 nextState];

    v9 = v13;
  }

  v14 = [v9 forceUnwrapObject];
  v15 = [(VSStateMachine *)v8 transitionTable];
  v16 = [v15 objectForKey:v14];

  v17 = [v16 objectForKey:v6];
  v29 = v17 != 0;
  if (v17)
  {
    v18 = objc_alloc_init(VSStateTransition);
    v19 = [VSOptional optionalWithObject:v14];
    [(VSStateTransition *)v18 setPreviousState:v19];

    v20 = [VSOptional optionalWithObject:v6];
    [(VSStateTransition *)v18 setTriggeringEvent:v20];

    v21 = [VSOptional optionalWithObject:v17];
    [(VSStateTransition *)v18 setNextState:v21];

    [v10 addObject:v18];
LABEL_15:
    v25 = 1;
LABEL_16:

    goto LABEL_17;
  }

  v22 = [(VSStateMachine *)v8 ignoredEventsByState];
  v23 = [v22 objectForKey:v14];
  v24 = [v23 containsObject:v6];

  if (v24)
  {
    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v31 = v6;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v8;
    }

    v28 = 0;
    goto LABEL_15;
  }

  if ([(VSStateMachine *)v8 ignoresUnassignedEvents])
  {
    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v31 = v6;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v8;
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
    v33 = v14;
    v34 = 2112;
    v35 = v8;
  }

  v25 = 1;
LABEL_17:

  objc_sync_exit(v8);
  if ((v28 & v25) == 1)
  {
    [(VSStateMachine *)v8 _handleEnqueuedTransitions];
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
  v5 = [(VSStateMachine *)self name];
  v6 = [v3 stringWithFormat:@"<%@ name=%@>", v4, v5];

  return v6;
}

- (VSStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface HKStateMachine
+ (id)nameForOwner:(id)a3 UUID:(id)a4 tag:(id)a5;
- (HKStateMachine)init;
- (HKStateMachine)initWithName:(id)a3;
- (HKStateMachineDelegate)delegate;
- (id)addStateTransitionFrom:(id)a3 to:(id)a4 event:(int64_t)a5 label:(id)a6;
- (id)addStateWithIndex:(int64_t)a3 label:(id)a4;
- (id)graphDescription;
- (id)stateWithIndex:(int64_t)a3;
- (void)_dequeueEvent;
- (void)_handleEvent:(int64_t)a3 date:(id)a4 error:(id)a5 completion:(id)a6;
- (void)enqueueEvent:(int64_t)a3 date:(id)a4 error:(id)a5 completion:(id)a6;
- (void)enterAtState:(int64_t)a3;
@end

@implementation HKStateMachine

+ (id)nameForOwner:(id)a3 UUID:(id)a4 tag:(id)a5
{
  v6 = a5;
  v7 = MEMORY[0x1E696AEC0];
  v8 = a4;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 hk_shortRepresentation];

  if (v6)
  {
    [v7 stringWithFormat:@"%@_%@_%@", v10, v6, v11];
  }

  else
  {
    [v7 stringWithFormat:@"%@_%@", v10, v11, v14];
  }
  v12 = ;

  return v12;
}

- (HKStateMachine)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKStateMachine)initWithName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKStateMachine;
  v5 = [(HKStateMachine *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    statesByIndex = v5->_statesByIndex;
    v5->_statesByIndex = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transitions = v5->_transitions;
    v5->_transitions = v10;
  }

  return v5;
}

- (id)addStateWithIndex:(int64_t)a3 label:(id)a4
{
  v7 = a4;
  if (self->_currentState)
  {
    [HKStateMachine addStateWithIndex:label:];
  }

  statesByIndex = self->_statesByIndex;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [(NSMutableDictionary *)statesByIndex objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = self->_statesByIndex;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
    [v11 handleFailureInMethod:a2 object:self file:@"HKStateMachine.m" lineNumber:154 description:{@"%@: Attempt to add a state (%@) with the same index as an existing state (%@).", self, v7, v14}];

    v15 = 0;
  }

  else
  {
    v15 = [[HKStateMachineState alloc] initWithIndex:a3 label:v7];
    v16 = self->_statesByIndex;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v11];
  }

  return v15;
}

- (id)addStateTransitionFrom:(id)a3 to:(id)a4 event:(int64_t)a5 label:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (self->_currentState)
  {
    [HKStateMachine addStateTransitionFrom:to:event:label:];
  }

  statesByIndex = self->_statesByIndex;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "index")}];
  v15 = [(NSMutableDictionary *)statesByIndex objectForKeyedSubscript:v14];

  if (v15 != v10)
  {
    [HKStateMachine addStateTransitionFrom:a2 to:self event:v10 label:?];
  }

  v37 = v12;
  v16 = self->_statesByIndex;
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "index")}];
  v18 = [(NSMutableDictionary *)v16 objectForKeyedSubscript:v17];

  if (v18 != v11)
  {
    [HKStateMachine addStateTransitionFrom:a2 to:self event:v11 label:?];
  }

  v35 = a2;
  v36 = self;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = self->_transitions;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = v20;
  v22 = *v40;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v40 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v39 + 1) + 8 * i);
      v25 = [v24 fromState];
      v26 = [v25 index];
      if (v26 != [v10 index])
      {
        goto LABEL_17;
      }

      v27 = [v24 toState];
      v28 = [v27 index];
      if (v28 != [v11 index])
      {

LABEL_17:
        continue;
      }

      v29 = [v24 event];

      if (v29 == a5)
      {
        v30 = [MEMORY[0x1E696AAA8] currentHandler];
        v31 = v37;
        [v30 handleFailureInMethod:v35 object:v36 file:v37 lineNumber:v10 description:{v11, v24}];

        v32 = 0;
        goto LABEL_21;
      }
    }

    v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v21);
LABEL_20:

  v31 = v37;
  v32 = [[HKStateMachineTransition alloc] initWithEvent:a5 label:v37 from:v10 to:v11];
  [(NSMutableArray *)v36->_transitions addObject:v32];
LABEL_21:

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)stateWithIndex:(int64_t)a3
{
  statesByIndex = self->_statesByIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)statesByIndex objectForKeyedSubscript:v4];

  return v5;
}

- (void)enterAtState:(int64_t)a3
{
  v4 = self;
  v55 = *MEMORY[0x1E69E9840];
  p_currentState = &self->_currentState;
  if (self->_currentState)
  {
    [HKStateMachine enterAtState:];
    v4 = self;
  }

  p_isa = &v4->super.isa;
  statesByIndex = v4->_statesByIndex;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{a3, p_currentState}];
  v38 = [(NSMutableDictionary *)statesByIndex objectForKeyedSubscript:v6];

  if (!v38)
  {
    [HKStateMachine enterAtState:];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = p_isa[1];
  v41 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v41)
  {
    v40 = *v50;
    do
    {
      v7 = 0;
      do
      {
        if (*v50 != v40)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v42 = v7;
        v9 = [p_isa[1] objectForKeyedSubscript:*(*(&v49 + 1) + 8 * v7)];
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v12 = p_isa[2];
        v13 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v13)
        {
          v14 = *v46;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v46 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v45 + 1) + 8 * i);
              v17 = [v16 fromState];
              v18 = v17 == v9;

              if (v18)
              {
                v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "event")}];
                [v11 setObject:v16 forKeyedSubscript:v19];
              }

              v20 = [v16 toState];
              v21 = v20 == v9;

              if (v21)
              {
                v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "event")}];
                [v10 setObject:v16 forKeyedSubscript:v22];
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v13);
        }

        v23 = [v10 copy];
        [v9 setIncomingTransitions:v23];

        v24 = [v11 copy];
        [v9 setOutgoingTransitions:v24];

        v7 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v41);
  }

  objc_copyWeak(&to, p_isa + 7);
  v25 = objc_loadWeakRetained(&to);
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = objc_loadWeakRetained(&to);
    [v27 stateMachine:p_isa willEnterState:v38 date:0 error:0];
  }

  objc_storeStrong(v37, v38);
  v28 = objc_loadWeakRetained(&to);
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = objc_loadWeakRetained(&to);
    [v30 stateMachine:p_isa didEnterState:v38 date:0 error:0];
  }

  v31 = objc_loadWeakRetained(&to);
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    v33 = objc_loadWeakRetained(&to);
    [v33 stateMachine:p_isa didTransition:0 fromState:0 toState:v38 date:0 error:0];
  }

  objc_destroyWeak(&to);

  v34 = *MEMORY[0x1E69E9840];
}

- (void)enqueueEvent:(int64_t)a3 date:(id)a4 error:(id)a5 completion:(id)a6
{
  if (self->_isProcessingEvent)
  {
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v18 = objc_alloc_init(HKStateMachinePendingEvent);
    [(HKStateMachinePendingEvent *)v18 setEvent:a3];
    [(HKStateMachinePendingEvent *)v18 setDate:v12];

    [(HKStateMachinePendingEvent *)v18 setError:v11];
    [(HKStateMachinePendingEvent *)v18 setCompletion:v10];

    pendingEvents = self->_pendingEvents;
    if (!pendingEvents)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = self->_pendingEvents;
      self->_pendingEvents = v14;

      pendingEvents = self->_pendingEvents;
    }

    [(NSMutableArray *)pendingEvents addObject:v18];
  }

  else
  {
    v16 = a6;
    v17 = a5;
    v18 = a4;
    [HKStateMachine _handleEvent:"_handleEvent:date:error:completion:" date:a3 error:? completion:?];
  }
}

- (void)_handleEvent:(int64_t)a3 date:(id)a4 error:(id)a5 completion:(id)a6
{
  v45 = a4;
  v11 = a5;
  v12 = a6;
  p_currentState = &self->_currentState;
  if (!self->_currentState)
  {
    [HKStateMachine _handleEvent:date:error:completion:];
  }

  objc_copyWeak(&to, &self->_delegate);
  v14 = [(HKStateMachineState *)self->_currentState outgoingTransitions];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v16 = [v14 objectForKeyedSubscript:v15];

  if (v16)
  {
    self->_isProcessingEvent = 1;
    v17 = [v16 toState];
    v18 = *p_currentState;
    v19 = objc_loadWeakRetained(&to);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = objc_loadWeakRetained(&to);
      [v21 stateMachine:self willLeaveState:v18 date:v45 error:v11];
    }

    v22 = objc_loadWeakRetained(&to);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = objc_loadWeakRetained(&to);
      [v24 stateMachine:self willEnterState:v17 date:v45 error:v11];
    }

    v25 = objc_loadWeakRetained(&to);
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = objc_loadWeakRetained(&to);
      [v27 stateMachine:self persistTransition:v16];
    }

    objc_storeStrong(&self->_currentState, v17);
    v28 = objc_loadWeakRetained(&to);
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30 = objc_loadWeakRetained(&to);
      [v30 stateMachine:self didEnterState:v17 date:v45 error:v11];
    }

    v31 = objc_loadWeakRetained(&to);
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = objc_loadWeakRetained(&to);
      [v33 stateMachine:self didLeaveState:v18 date:v45 error:v11];
    }

    v34 = objc_loadWeakRetained(&to);
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      v36 = objc_loadWeakRetained(&to);
      [v36 stateMachine:self didTransition:v16 fromState:v18 toState:v17 date:v45 error:v11];
    }

    v12[2](v12, 1, 0);
    self->_isProcessingEvent = 0;
    [(HKStateMachine *)self _dequeueEvent];
  }

  else
  {
    v37 = objc_loadWeakRetained(&to);
    v38 = objc_opt_respondsToSelector();

    if (v38)
    {
      v39 = objc_loadWeakRetained(&to);
      [v39 stateMachine:self didIgnoreEvent:a3 state:self->_currentState];
    }

    v40 = MEMORY[0x1E696ABC0];
    v41 = objc_opt_class();
    v42 = *p_currentState;
    v43 = [(HKStateMachineState *)*p_currentState outgoingTransitions];
    v44 = [v40 hk_errorForInvalidArgument:@"@" class:v41 selector:a2 format:{@"Unable to transition to the desired state from the %@ state (event %ld). Allowed transitions from the current state are: %@", v42, a3, v43}];
    (v12)[2](v12, 0, v44);

    [(HKStateMachine *)self _dequeueEvent];
  }

  objc_destroyWeak(&to);
}

- (void)_dequeueEvent
{
  v3 = [(NSMutableArray *)self->_pendingEvents firstObject];
  if (v3)
  {
    v8 = v3;
    [(NSMutableArray *)self->_pendingEvents removeObjectAtIndex:0];
    v4 = [v8 event];
    v5 = [v8 date];
    v6 = [v8 error];
    v7 = [v8 completion];
    [(HKStateMachine *)self _handleEvent:v4 date:v5 error:v6 completion:v7];

    v3 = v8;
  }
}

- (id)graphDescription
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(NSMutableDictionary *)self->_statesByIndex allValues];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_51];

  v6 = [(NSString *)self->_name stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"state_machine";
  }

  v9 = [(HKStateMachineState *)self->_currentState label];
  v31 = v3;
  [v3 appendFormat:@"digraph %@ {\n   rankdir=LR;\n   node [shape=doublecircle width=1]; %@\n   node [shape=circle width=1];\n", v8, v9];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v29)
  {
    v28 = *v37;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v10;
        v11 = *(*(&v36 + 1) + 8 * v10);
        v12 = [v11 outgoingTransitions];
        v13 = [v12 allValues];
        v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_170];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v33;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v33 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v32 + 1) + 8 * i);
              v21 = [v11 label];
              v22 = [v20 toState];
              v23 = [v22 label];
              v24 = [v20 label];
              [v31 appendFormat:@"   %@ -> %@ [ label = %@ (%ld) ];\n", v21, v23, v24, objc_msgSend(v20, "event")];
            }

            v17 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v17);
        }

        v10 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v29);
  }

  [v31 appendString:@"}"];
  v25 = *MEMORY[0x1E69E9840];

  return v31;
}

uint64_t __34__HKStateMachine_graphDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = [v4 label];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __34__HKStateMachine_graphDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 label];
  v6 = [v4 label];

  v7 = [v5 compare:v6];
  return v7;
}

- (HKStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addStateWithIndex:label:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_currentState == nil" object:? file:? lineNumber:? description:?];
}

- (void)addStateTransitionFrom:to:event:label:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_currentState == nil" object:? file:? lineNumber:? description:?];
}

- (void)addStateTransitionFrom:(uint64_t)a3 to:event:label:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKStateMachine.m" lineNumber:167 description:{@"Invalid state %@ does not appear to be part of this state machine.", a3}];
}

- (void)addStateTransitionFrom:(uint64_t)a3 to:event:label:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKStateMachine.m" lineNumber:168 description:{@"Invalid state %@ does not appear to be part of this state machine.", a3}];
}

- (void)enterAtState:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_currentState == nil" object:? file:? lineNumber:? description:?];
}

- (void)enterAtState:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"initialState != nil" object:? file:? lineNumber:? description:?];
}

- (void)_handleEvent:date:error:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"_currentState != nil" object:? file:? lineNumber:? description:?];
}

@end
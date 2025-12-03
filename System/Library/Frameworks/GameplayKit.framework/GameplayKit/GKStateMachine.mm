@interface GKStateMachine
+ (GKStateMachine)stateMachineWithStates:(NSArray *)states;
- (BOOL)canEnterState:(Class)stateClass;
- (BOOL)enterState:(Class)stateClass;
- (GKStateMachine)init;
- (GKStateMachine)initWithStates:(NSArray *)states;
- (id)_dotStringInstanceData;
- (id)_instanceData;
- (void)forceEnterState:(Class)state;
- (void)updateWithDeltaTime:(NSTimeInterval)sec;
@end

@implementation GKStateMachine

- (GKStateMachine)init
{
  [MEMORY[0x277CBEAD8] raise:@"GKInitNotAllowedException" format:@"initWithStates is the destignated initialize for GKStateMachine.  Use that instead"];
  v3 = MEMORY[0x277CBEBF8];

  return [(GKStateMachine *)self initWithStates:v3];
}

+ (GKStateMachine)stateMachineWithStates:(NSArray *)states
{
  v4 = states;
  v5 = [[self alloc] initWithStates:v4];

  return v5;
}

- (GKStateMachine)initWithStates:(NSArray *)states
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = states;
  v22.receiver = self;
  v22.super_class = GKStateMachine;
  v5 = [(GKStateMachine *)&v22 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v4;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          [dictionary setObject:v12 forKey:{objc_opt_class(), v18}];
          [v12 _setStateMachine:v5];
          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
    v14 = v5->_states;
    v5->_states = v13;

    currentState = v5->_currentState;
    v5->_currentState = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)updateWithDeltaTime:(NSTimeInterval)sec
{
  currentState = [(GKStateMachine *)self currentState];
  [currentState updateWithDeltaTime:sec];
}

- (void)forceEnterState:(Class)state
{
  v4 = [(GKStateMachine *)self stateForClass:state];
  currentState = [(GKStateMachine *)self currentState];
  [currentState willExitWithNextState:v4];

  currentState2 = [(GKStateMachine *)self currentState];
  currentState = self->_currentState;
  self->_currentState = v4;
  v7 = v4;

  [(GKState *)self->_currentState didEnterWithPreviousState:currentState2];
}

- (BOOL)enterState:(Class)stateClass
{
  v5 = [(GKStateMachine *)self canEnterState:?];
  if (v5)
  {
    v6 = v5;
    [(GKStateMachine *)self forceEnterState:stateClass];
    LOBYTE(v5) = v6;
  }

  return v5;
}

- (BOOL)canEnterState:(Class)stateClass
{
  currentState = [(GKStateMachine *)self currentState];

  if (!currentState)
  {
    return 1;
  }

  currentState2 = [(GKStateMachine *)self currentState];
  v7 = [currentState2 isValidNextState:stateClass];

  return v7;
}

- (id)_instanceData
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_284B587E0 forKeyedSubscript:@"__version"];
  currentState = [(GKStateMachine *)self currentState];

  if (currentState)
  {
    currentState2 = [(GKStateMachine *)self currentState];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [dictionary setObject:v7 forKeyedSubscript:@"__currentstate"];
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  states = self->_states;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __31__GKStateMachine__instanceData__block_invoke;
  v15[3] = &unk_278A5C0B0;
  v16 = array;
  selfCopy = self;
  v18 = dictionary2;
  v11 = dictionary2;
  v12 = array;
  [(NSDictionary *)states enumerateKeysAndObjectsUsingBlock:v15];
  [dictionary setObject:v12 forKeyedSubscript:@"__allstates"];
  [dictionary setObject:v11 forKeyedSubscript:@"__transitions"];
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:0];

  return v13;
}

void __31__GKStateMachine__instanceData__block_invoke(uint64_t a1, objc_class *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = NSStringFromClass(a2);
  [*(a1 + 32) addObject:v6];
  v7 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [*(*(a1 + 40) + 8) allKeys];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 == v11)
        {
          v13 = *(*(&v16 + 1) + 8 * i);
          if (![v5 isValidNextState:v13])
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v8);
          v13 = *(*(&v16 + 1) + 8 * i);
          if (![v5 isValidNextState:v13])
          {
            continue;
          }
        }

        v14 = NSStringFromClass(v13);
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [*(a1 + 48) setObject:v7 forKey:v6];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_dotStringInstanceData
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"digraph GK_state_machine {\n"];
  states = self->_states;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __40__GKStateMachine__dotStringInstanceData__block_invoke;
  v13 = &unk_278A5C0D8;
  selfCopy = self;
  v15 = v3;
  v5 = v3;
  [(NSDictionary *)states enumerateKeysAndObjectsUsingBlock:&v10];
  [v5 appendString:{@"}", v10, v11, v12, v13, selfCopy}];
  v6 = MEMORY[0x277CCAAB0];
  v7 = [v5 copy];
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];

  return v8;
}

void __40__GKStateMachine__dotStringInstanceData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [*(*(a1 + 32) + 8) allKeys];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 == v10)
        {
          v12 = *(*(&v17 + 1) + 8 * i);
          if (![v6 isValidNextState:v12])
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v7);
          v12 = *(*(&v17 + 1) + 8 * i);
          if (![v6 isValidNextState:v12])
          {
            continue;
          }
        }

        v13 = *(a1 + 40);
        v14 = NSStringFromClass(v5);
        v15 = NSStringFromClass(v12);
        [v13 appendFormat:@"%@ -> %@\n", v14, v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
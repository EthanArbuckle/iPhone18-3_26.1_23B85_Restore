@interface AFUIStateMachine
- (AFUIStateMachine)initWithInitialState:(int64_t)a3;
- (AFUIStateMachineDelegate)delegate;
- (id)_descriptionForEvent:(int64_t)a3;
- (id)_endStateNumberFromDictionary:(id)a3 forEvent:(int64_t)a4;
- (void)_setState:(int64_t)a3 forEvent:(int64_t)a4;
- (void)addTransitionFromState:(int64_t)a3 toState:(int64_t)a4 forEvent:(int64_t)a5;
- (void)performTransitionForEvent:(int64_t)a3;
@end

@implementation AFUIStateMachine

- (AFUIStateMachine)initWithInitialState:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AFUIStateMachine *)a2 initWithInitialState:?];
  }

  v10.receiver = self;
  v10.super_class = AFUIStateMachine;
  v5 = [(AFUIStateMachine *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_state = a3;
    v7 = [MEMORY[0x277CBEB38] dictionary];
    endStatesByEventByStartState = v6->_endStatesByEventByStartState;
    v6->_endStatesByEventByStartState = v7;
  }

  return v6;
}

- (void)_setState:(int64_t)a3 forEvent:(int64_t)a4
{
  v7 = [(AFUIStateMachine *)self state];
  [(AFUIStateMachine *)self _setState:a3];
  v8 = [(AFUIStateMachine *)self delegate];
  [v8 stateMachine:self didTransitionFromState:v7 forEvent:a4];
}

- (id)_descriptionForEvent:(int64_t)a3
{
  v5 = [(AFUIStateMachine *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AFUIStateMachine *)self delegate];
    v8 = [v7 stateMachine:self descriptionForEvent:a3];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a3];
  }

  return v8;
}

- (void)addTransitionFromState:(int64_t)a3 toState:(int64_t)a4 forEvent:(int64_t)a5
{
  v9 = [(AFUIStateMachine *)self _endStatesByEventByStartState];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v15 = [v9 objectForKey:v10];

  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v11 = [(AFUIStateMachine *)self _endStatesByEventByStartState];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v11 setObject:v15 forKey:v12];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [v15 setObject:v13 forKey:v14];
}

- (id)_endStateNumberFromDictionary:(id)a3 forEvent:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AFUIStateMachine *)v10 _endStateNumberFromDictionary:a4 forEvent:?];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[AFUIStateMachine state](self, "state")}];
  }

  return v9;
}

- (void)performTransitionForEvent:(int64_t)a3
{
  v5 = [(AFUIStateMachine *)self _endStatesByEventByStartState];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[AFUIStateMachine state](self, "state")}];
  v8 = [v5 objectForKey:v6];

  v7 = [(AFUIStateMachine *)self _endStateNumberFromDictionary:v8 forEvent:a3];
  -[AFUIStateMachine _setState:forEvent:](self, "_setState:forEvent:", [v7 integerValue], a3);
}

- (AFUIStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface AFUIStateMachine
- (AFUIStateMachine)initWithInitialState:(int64_t)state;
- (AFUIStateMachineDelegate)delegate;
- (id)_descriptionForEvent:(int64_t)event;
- (id)_endStateNumberFromDictionary:(id)dictionary forEvent:(int64_t)event;
- (void)_setState:(int64_t)state forEvent:(int64_t)event;
- (void)addTransitionFromState:(int64_t)state toState:(int64_t)toState forEvent:(int64_t)event;
- (void)performTransitionForEvent:(int64_t)event;
@end

@implementation AFUIStateMachine

- (AFUIStateMachine)initWithInitialState:(int64_t)state
{
  if (state == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AFUIStateMachine *)a2 initWithInitialState:?];
  }

  v10.receiver = self;
  v10.super_class = AFUIStateMachine;
  v5 = [(AFUIStateMachine *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_state = state;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    endStatesByEventByStartState = v6->_endStatesByEventByStartState;
    v6->_endStatesByEventByStartState = dictionary;
  }

  return v6;
}

- (void)_setState:(int64_t)state forEvent:(int64_t)event
{
  state = [(AFUIStateMachine *)self state];
  [(AFUIStateMachine *)self _setState:state];
  delegate = [(AFUIStateMachine *)self delegate];
  [delegate stateMachine:self didTransitionFromState:state forEvent:event];
}

- (id)_descriptionForEvent:(int64_t)event
{
  delegate = [(AFUIStateMachine *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AFUIStateMachine *)self delegate];
    event = [delegate2 stateMachine:self descriptionForEvent:event];
  }

  else
  {
    event = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", event];
  }

  return event;
}

- (void)addTransitionFromState:(int64_t)state toState:(int64_t)toState forEvent:(int64_t)event
{
  _endStatesByEventByStartState = [(AFUIStateMachine *)self _endStatesByEventByStartState];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  dictionary = [_endStatesByEventByStartState objectForKey:v10];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    _endStatesByEventByStartState2 = [(AFUIStateMachine *)self _endStatesByEventByStartState];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    [_endStatesByEventByStartState2 setObject:dictionary forKey:v12];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:toState];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  [dictionary setObject:v13 forKey:v14];
}

- (id)_endStateNumberFromDictionary:(id)dictionary forEvent:(int64_t)event
{
  v6 = MEMORY[0x277CCABB0];
  dictionaryCopy = dictionary;
  v8 = [v6 numberWithInteger:event];
  v9 = [dictionaryCopy objectForKey:v8];

  if (!v9)
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(AFUIStateMachine *)v10 _endStateNumberFromDictionary:event forEvent:?];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[AFUIStateMachine state](self, "state")}];
  }

  return v9;
}

- (void)performTransitionForEvent:(int64_t)event
{
  _endStatesByEventByStartState = [(AFUIStateMachine *)self _endStatesByEventByStartState];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[AFUIStateMachine state](self, "state")}];
  v8 = [_endStatesByEventByStartState objectForKey:v6];

  v7 = [(AFUIStateMachine *)self _endStateNumberFromDictionary:v8 forEvent:event];
  -[AFUIStateMachine _setState:forEvent:](self, "_setState:forEvent:", [v7 integerValue], event);
}

- (AFUIStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
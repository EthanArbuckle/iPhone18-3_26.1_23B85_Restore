@interface AFUINetworkAvailabilityStateMachine
- (AFUINetworkAvailabilityStateMachine)initWithDelegate:(id)delegate;
- (AFUINetworkAvailabilityStateMachineDelegate)delegate;
- (id)_stateMachine;
- (id)stateMachine:(id)machine descriptionForEvent:(int64_t)event;
- (int64_t)_state;
- (void)_intializeDelegateStateWithoutBlocking;
- (void)_performTransitionForEvent:(int64_t)event;
- (void)_siriNetworkAvailabilityDidChange:(unint64_t)change;
- (void)siriNetworkAvailabilityDidChange;
- (void)stateMachine:(id)machine didTransitionFromState:(int64_t)state forEvent:(int64_t)event;
@end

@implementation AFUINetworkAvailabilityStateMachine

- (void)_intializeDelegateStateWithoutBlocking
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(21, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__AFUINetworkAvailabilityStateMachine__intializeDelegateStateWithoutBlocking__block_invoke;
  v3[3] = &unk_278CD55A0;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __77__AFUINetworkAvailabilityStateMachine__intializeDelegateStateWithoutBlocking__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _stateMachine];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__AFUINetworkAvailabilityStateMachine__intializeDelegateStateWithoutBlocking__block_invoke_2;
    v6[3] = &unk_278CD5858;
    objc_copyWeak(&v8, (a1 + 32));
    v7 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    objc_destroyWeak(&v8);
  }
}

- (id)_stateMachine
{
  stateMachine = self->_stateMachine;
  if (!stateMachine)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_FAULT))
      {
        [(AFUINetworkAvailabilityStateMachine *)v4 _stateMachine];
      }
    }

    os_unfair_lock_lock(&self->_stateMachineInitilizationLock);
    v5 = +[AFUISiriSession availabilityState];
    v6 = objc_alloc(MEMORY[0x277D61B28]);
    if (v5 - 1 > 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = qword_2414948C0[v5 - 1];
    }

    v8 = [v6 initWithInitialState:v7];
    v9 = self->_stateMachine;
    self->_stateMachine = v8;

    [(SRUIFStateMachine *)self->_stateMachine setDelegate:self];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:1 forEvent:0];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:1 toState:2 forEvent:1];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:1 forEvent:0];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:2 toState:2 forEvent:1];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:0 forEvent:0];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:0 toState:0 forEvent:1];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:1 forEvent:0];
    [(SRUIFStateMachine *)self->_stateMachine addTransitionFromState:3 toState:3 forEvent:1];
    os_unfair_lock_unlock(&self->_stateMachineInitilizationLock);
    stateMachine = self->_stateMachine;
  }

  return stateMachine;
}

void __77__AFUINetworkAvailabilityStateMachine__intializeDelegateStateWithoutBlocking__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 32) state];
    if (v3 > 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = qword_2414948D8[v3];
    }

    v5 = [v6 delegate];
    [v5 _updateSiriAvailability:v4];

    WeakRetained = v6;
  }
}

- (AFUINetworkAvailabilityStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AFUINetworkAvailabilityStateMachine)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = AFUINetworkAvailabilityStateMachine;
  v5 = [(AFUINetworkAvailabilityStateMachine *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(AFUINetworkAvailabilityStateMachine *)v5 setDelegate:delegateCopy];
    [(AFUINetworkAvailabilityStateMachine *)v6 _intializeDelegateStateWithoutBlocking];
    v7 = objc_alloc_init(MEMORY[0x277CEC5D0]);
    radioPreferences = v6->_radioPreferences;
    v6->_radioPreferences = v7;

    [(RadiosPreferences *)v6->_radioPreferences setDelegate:v6];
  }

  return v6;
}

- (void)siriNetworkAvailabilityDidChange
{
  v3 = +[AFUISiriSession availabilityState];

  [(AFUINetworkAvailabilityStateMachine *)self _siriNetworkAvailabilityDidChange:v3];
}

- (void)_siriNetworkAvailabilityDidChange:(unint64_t)change
{
  if (change <= 3)
  {
    [(AFUINetworkAvailabilityStateMachine *)self _performTransitionForEvent:?];
  }
}

- (int64_t)_state
{
  _stateMachine = [(AFUINetworkAvailabilityStateMachine *)self _stateMachine];
  state = [_stateMachine state];

  return state;
}

- (void)stateMachine:(id)machine didTransitionFromState:(int64_t)state forEvent:(int64_t)event
{
  state = [machine state];
  if (state != state)
  {
    v8 = state;
    delegate = [(AFUINetworkAvailabilityStateMachine *)self delegate];
    if (v8 > 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_2414948D8[v8];
    }

    v11 = delegate;
    [delegate _updateSiriAvailability:v10];
  }
}

- (id)stateMachine:(id)machine descriptionForEvent:(int64_t)event
{
  if ((event - 1) > 2)
  {
    return @"SRSiriAvailabilityEventConnectionAvailable";
  }

  else
  {
    return off_278CD6B38[event - 1];
  }
}

- (void)_performTransitionForEvent:(int64_t)event
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    _state = [(AFUINetworkAvailabilityStateMachine *)self _state];
    if ((event - 1) > 2)
    {
      v8 = @"SRSiriAvailabilityEventConnectionAvailable";
    }

    else
    {
      v8 = off_278CD6B38[event - 1];
    }

    v10 = 136315650;
    v11 = "[AFUINetworkAvailabilityStateMachine _performTransitionForEvent:]";
    v12 = 2048;
    v13 = _state;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s from state %ld; event %@", &v10, 0x20u);
  }

  _stateMachine = [(AFUINetworkAvailabilityStateMachine *)self _stateMachine];
  [_stateMachine performTransitionForEvent:event];
}

@end
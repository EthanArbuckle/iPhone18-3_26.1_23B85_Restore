@interface BLSHBacklightIdleProvider
+ (id)createSharedProviderWithLocalAssertionService:(id)a3;
+ (id)sharedProvider;
+ (void)sharedProvider;
- (BLSHBacklightIdleProvider)initWithLocalAssertionService:(id)a3 idleProvider:(id)a4 backlightHost:(id)a5;
- (BLSHBacklightIdleProviderDelegate)delegate;
- (BOOL)hasUserActivityOccured;
- (BOOL)isActive;
- (BOOL)isIdle;
- (double)idleTimeout;
- (double)nonInteractiveIdleTimeout;
- (int64_t)targetIdleState;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6;
- (void)backlightHost:(id)a3 willTransitionToState:(int64_t)a4 forEvent:(id)a5;
- (void)dealloc;
- (void)idleProviderDidIdle:(id)a3;
- (void)idleProviderDidUnidle:(id)a3;
- (void)invalidate;
- (void)onMain_handleDidIdle;
- (void)onMain_handleSuppressedChanged;
- (void)onMain_handleSuspendedChanged;
- (void)onMain_idleBacklightInactiveWithExplanation:(uint64_t)a1;
- (void)reset;
- (void)setActive:(BOOL)a3;
- (void)setIdleTimeout:(double)a3;
- (void)setNonInteractiveIdleTimeout:(double)a3;
- (void)setSuppressed:(os_unfair_lock_s *)a1;
- (void)setSuspended:(BOOL)a3;
- (void)setTargetIdleState:(int64_t)a3;
- (void)signalUserActivityOccurred;
- (void)start;
- (void)updateForBacklightState:(os_unfair_lock_s *)a1;
@end

@implementation BLSHBacklightIdleProvider

+ (id)createSharedProviderWithLocalAssertionService:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&_classLock_0);
  if (_sharedProvider_0)
  {
    [BLSHBacklightIdleProvider createSharedProviderWithLocalAssertionService:a2];
  }

  v6 = [a1 alloc];
  v7 = objc_alloc_init(BLSHUserIdleProvider);
  v8 = +[BLSHBacklightHost sharedBacklightHost];
  v9 = [v6 initWithLocalAssertionService:v5 idleProvider:v7 backlightHost:v8];

  objc_storeStrong(&_sharedProvider_0, v9);
  os_unfair_lock_unlock(&_classLock_0);

  return v9;
}

+ (id)sharedProvider
{
  os_unfair_lock_lock(&_classLock_0);
  v3 = _sharedProvider_0;
  os_unfair_lock_unlock(&_classLock_0);
  if (!v3)
  {
    +[(BLSHBacklightIdleProvider *)a2];
  }

  return v3;
}

- (BLSHBacklightIdleProvider)initWithLocalAssertionService:(id)a3 idleProvider:(id)a4 backlightHost:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = BLSHBacklightIdleProvider;
  v11 = [(BLSHBacklightIdleProvider *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v11->_lock_idleProvider, a4);
    [v9 setDelegate:v12];
    v12->_lock_active = 1;
    v12->_lock_targetIdleBacklightState = 0;
    objc_storeStrong(&v12->_backlightHost, a5);
    [v10 addObserver:v12];
    -[BLSHBacklightIdleProvider updateForBacklightState:](v12, [v10 backlightState]);
    if (v8)
    {
      v14 = [BLSHPreventBacklightIdleAttributeHandler registerHandlerForService:v8 provider:v12];
    }
  }

  return v12;
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_lock_invalidated", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)start
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"must set idleTimeout to non-zero before calling [BLSHBacklightIdleProvider start]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)signalUserActivityOccurred
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_userActivityOccured = 1;
  lock_idleTimeout = self->_lock_idleTimeout;
  v4 = self->_lock_idleProvider;
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHUserIdleProviding *)v4 setIdleTimeout:1 shouldReset:lock_idleTimeout];
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  lock_nonInteractiveIdleTimeout = self->_lock_nonInteractiveIdleTimeout;
  self->_lock_userActivityOccured = 0;
  v4 = self->_lock_idleProvider;
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHUserIdleProviding *)v4 setShouldNotifyOfUnidle:1];
  [(BLSHUserIdleProviding *)v4 setIdleTimeout:1 shouldReset:lock_nonInteractiveIdleTimeout];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  lock_idleProvider = self->_lock_idleProvider;
  self->_lock_idleProvider = 0;
  v4 = lock_idleProvider;

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHUserIdleProviding *)v4 invalidate];
}

- (double)idleTimeout
{
  os_unfair_lock_lock(&self->_lock);
  lock_idleTimeout = self->_lock_idleTimeout;
  os_unfair_lock_unlock(&self->_lock);
  return lock_idleTimeout;
}

- (void)setIdleTimeout:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_idleTimeout = a3;
  lock_userActivityOccured = self->_lock_userActivityOccured;
  v6 = self->_lock_idleProvider;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_userActivityOccured)
  {
    [(BLSHUserIdleProviding *)v6 setIdleTimeout:0 shouldReset:a3];
  }
}

- (double)nonInteractiveIdleTimeout
{
  os_unfair_lock_lock(&self->_lock);
  lock_nonInteractiveIdleTimeout = self->_lock_nonInteractiveIdleTimeout;
  os_unfair_lock_unlock(&self->_lock);
  return lock_nonInteractiveIdleTimeout;
}

- (void)setNonInteractiveIdleTimeout:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_nonInteractiveIdleTimeout = a3;
  lock_userActivityOccured = self->_lock_userActivityOccured;
  v6 = self->_lock_idleProvider;
  os_unfair_lock_unlock(&self->_lock);
  if (!lock_userActivityOccured)
  {
    [(BLSHUserIdleProviding *)v6 setIdleTimeout:0 shouldReset:a3];
  }
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  lock_active = self->_lock_active;
  os_unfair_lock_unlock(&self->_lock);
  return lock_active;
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_active = self->_lock_active;
  self->_lock_active = v3;
  lock_started = self->_lock_started;
  v7 = self->_lock_idleProvider;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_active != v3 && lock_started)
  {
    if (v3)
    {
      [(BLSHUserIdleProviding *)v7 resume];
    }

    else
    {
      [(BLSHUserIdleProviding *)v7 pause];
    }
  }
}

- (BOOL)isIdle
{
  os_unfair_lock_lock(&self->_lock);
  lock_idle = self->_lock_idle;
  os_unfair_lock_unlock(&self->_lock);
  return lock_idle;
}

- (BOOL)hasUserActivityOccured
{
  os_unfair_lock_lock(&self->_lock);
  lock_userActivityOccured = self->_lock_userActivityOccured;
  os_unfair_lock_unlock(&self->_lock);
  return lock_userActivityOccured;
}

- (void)setSuspended:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_suspended = self->_lock_suspended;
  self->_lock_suspended = v3;
  lock_started = self->_lock_started;
  os_unfair_lock_unlock(&self->_lock);
  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BLSHBacklightIdleProvider *)lock_started setSuspended:v7];
  }

  if (lock_suspended != v3 && lock_started)
  {
    BSDispatchMain();
  }
}

- (int64_t)targetIdleState
{
  os_unfair_lock_lock(&self->_lock);
  lock_targetIdleBacklightState = self->_lock_targetIdleBacklightState;
  os_unfair_lock_unlock(&self->_lock);
  return lock_targetIdleBacklightState;
}

- (void)setTargetIdleState:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  lock_targetIdleBacklightState = self->_lock_targetIdleBacklightState;
  self->_lock_targetIdleBacklightState = a3;
  os_unfair_lock_unlock(&self->_lock);
  v6 = bls_backlight_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BLSHBacklightIdleProvider *)lock_targetIdleBacklightState setTargetIdleState:a3, v6];
  }
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvents:(id)a5 abortedEvents:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  os_unfair_lock_lock(&self->_lock);
  lock_didStartTransitionToNewState = 0;
  if (a4 == 2 && self->_lock_idle)
  {
    lock_didStartTransitionToNewState = self->_lock_didStartTransitionToNewState;
  }

  lock_previousBacklightState = self->_lock_previousBacklightState;
  self->_lock_previousBacklightState = a4;
  self->_lock_didStartTransitionToNewState = 0;
  v11 = bls_backlight_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = NSStringFromBLSBacklightState();
    lock_idle = self->_lock_idle;
    lock_active = self->_lock_active;
    v16 = self->_lock_didStartTransitionToNewState;
    v17 = 138413570;
    v18 = v13;
    v19 = 1024;
    v20 = lock_previousBacklightState != a4;
    v21 = 1024;
    v22 = lock_didStartTransitionToNewState;
    v23 = 1024;
    v24 = lock_idle;
    v25 = 1024;
    v26 = lock_active;
    v27 = 1024;
    v28 = v16;
    _os_log_debug_impl(&dword_21FD11000, v11, OS_LOG_TYPE_DEBUG, "didCompleteUpdateToState %@; changed=%{BOOL}d; needToResumeIdleTimer=%{BOOL}d, idle=%{BOOL}d, active=%{BOOL}d, didStartTransitionToNewState=%{BOOL}d", &v17, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (lock_previousBacklightState != a4 || lock_didStartTransitionToNewState)
  {
    [BLSHBacklightIdleProvider backlight:a4 didCompleteUpdateToState:a4 == 2 forEvents:v8 abortedEvents:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)backlightHost:(id)a3 willTransitionToState:(int64_t)a4 forEvent:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (a4 == 2)
  {
    self->_lock_pendingIdleInactiveRequest = 0;
  }

  if (self->_lock_previousBacklightState != a4)
  {
    self->_lock_didStartTransitionToNewState = 1;
  }

  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromBLSBacklightState();
    lock_previousBacklightState = self->_lock_previousBacklightState;
    v11 = NSStringFromBLSBacklightState();
    lock_didStartTransitionToNewState = self->_lock_didStartTransitionToNewState;
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = lock_didStartTransitionToNewState;
    _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, "willTransitionToState %@; previousBacklightState %@; didStartTransitionToNewState=%{BOOL}d", &v13, 0x1Cu);
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)idleProviderDidIdle:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  *&self->_lock_idle = 257;
  os_unfair_lock_unlock(&self->_lock);
  [v4 setShouldNotifyOfUnidle:1];

  BSDispatchMain();
}

- (void)idleProviderDidUnidle:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  self->_lock_userActivityOccured = 1;
  *&self->_lock_idle = 0;
  lock_idleTimeout = self->_lock_idleTimeout;
  os_unfair_lock_unlock(&self->_lock);
  [v5 setShouldNotifyOfUnidle:0];
  [v5 setIdleTimeout:0 shouldReset:lock_idleTimeout];
}

- (BLSHBacklightIdleProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateForBacklightState:(os_unfair_lock_s *)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_5_0(a1);
    v4 = *(v2 + 64);
    if (v4 == 1)
    {
      if (a2 == 2)
      {
        v5 = 0;
        *(v2 + 71) = 0;
      }

      else
      {
        v5 = 1;
      }

      *(v2 + 68) = v5;
    }

    if ((*(v2 + 71) & 1) != 0 || (v6 = *(v2 + 48), fabs(v6) < 2.22044605e-16))
    {
      v6 = *(v2 + 40);
    }

    v7 = *(v2 + 66);
    v9 = *(v2 + 8);
    os_unfair_lock_unlock((v2 + 32));
    if (v4)
    {
      v8 = a2 == 2;
      [v9 setShouldNotifyOfUnidle:v8];
      [v9 setIdleTimeout:1 shouldReset:v6];
      [v2 setActive:v8 & (v7 ^ 1)];
    }
  }
}

- (void)onMain_handleSuspendedChanged
{
  if (a1)
  {
    OUTLINED_FUNCTION_5_0(a1);
    v2 = *(v1 + 66);
    v3 = *(v1 + 8);
    os_unfair_lock_unlock((v1 + 32));
    [*(v1 + 16) backlightState];
    if (BLSBacklightStateIsActive())
    {
      [v3 reset];
      [v1 setActive:v2 ^ 1u];
    }
  }
}

- (void)setSuppressed:(os_unfair_lock_s *)a1
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_5_0(a1);
    v4 = *(v2 + 67);
    *(v2 + 67) = a2;
    v5 = *(v2 + 64);
    os_unfair_lock_unlock((v2 + 32));
    v6 = bls_backlight_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      v9 = v5;
      v10 = 1024;
      v11 = v4 != a2;
      _os_log_debug_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEBUG, "setSuppressed started=%{BOOL}u changed=%{BOOL}u", buf, 0xEu);
    }

    if (v4 != a2 && v5)
    {
      BSDispatchMain();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)onMain_handleSuppressedChanged
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_5_0(a1);
    v2 = *(v1 + 67);
    v3 = *(v1 + 68);
    os_unfair_lock_unlock((v1 + 32));
    v4 = bls_backlight_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109376;
      v6[1] = v2;
      v7 = 1024;
      v8 = v3;
      _os_log_debug_impl(&dword_21FD11000, v4, OS_LOG_TYPE_DEBUG, "onMain_handleSuppressedChanged suppressed=%{BOOL}u idle=%{BOOL}u", v6, 0xEu);
    }

    if ((v2 & 1) == 0 && v3)
    {
      [(BLSHBacklightIdleProvider *)v1 onMain_idleBacklightInactiveWithExplanation:?];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)onMain_idleBacklightInactiveWithExplanation:(uint64_t)a1
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v4 = *(a1 + 69);
    v5 = *(a1 + 24);
    *(a1 + 69) = 0;
    os_unfair_lock_unlock((a1 + 32));
    if (v4 == 1)
    {
      v6 = *(a1 + 16);
      v7 = [objc_alloc(MEMORY[0x277CF0890]) initWithRequestedActivityState:v5 explanation:v3 timestamp:mach_continuous_time() sourceEvent:1 sourceEventMetadata:0];
      v8 = [v6 performChangeRequest:v7];
    }

    else
    {
      v7 = bls_backlight_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v10 = 134218242;
        v11 = a1;
        v12 = 2114;
        v13 = v3;
        _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, "%p will not inactivate (not pending) for explanation:%{public}@", &v10, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)onMain_handleDidIdle
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_5_0(a1);
  v2 = *(v1 + 68);
  v3 = *(v1 + 65);
  v4 = *(v1 + 67);
  os_unfair_lock_unlock((v1 + 32));
  if (v2 != 1)
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134217984;
      v10 = v1;
      v6 = "%p no longer idle, will not deactivate backlight";
      goto LABEL_14;
    }

LABEL_8:

LABEL_9:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!v3 || (v4 & 1) != 0)
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = 134217984;
      v10 = v1;
      v6 = "%p backlightIdle is suppressed, will not deactivate backlight (yet)";
LABEL_14:
      _os_log_debug_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEBUG, v6, &v9, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = *MEMORY[0x277D85DE8];

  [(BLSHBacklightIdleProvider *)v1 onMain_idleBacklightInactiveWithExplanation:?];
}

+ (void)createSharedProviderWithLocalAssertionService:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[BLSHBacklightIdleProvider createSharedProviderWithLocalAssertionService:] should not be called twice"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)sharedProvider
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[BLSHBacklightIdleProvider sharedProvider] should not be called before createSharedProviderWithLocalAssertionService:"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_2(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setSuspended:(os_log_t)log .cold.1(unsigned __int8 a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEBUG, "setSuspended started=%{BOOL}u changed=%{BOOL}u", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setTargetIdleState:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1 != a2;
  v5 = NSStringFromBLSBacklightActivityState();
  v7 = 138412546;
  v8 = v5;
  v9 = 1024;
  v10 = v4;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "setTargetIdleState targetIdleState:%@ changed=%{BOOL}u", &v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)backlight:(uint64_t)a1 didCompleteUpdateToState:(uint64_t)a2 forEvents:(char)a3 abortedEvents:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  [(BLSHBacklightIdleProvider *)a1 updateForBacklightState:a2];
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v8 = [a4 firstObject];
    [WeakRetained backlightTurnedOnForEvent:v8];
  }
}

@end
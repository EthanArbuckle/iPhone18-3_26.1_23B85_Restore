@interface _ASCABLEPowerLogger
- (_ASCABLEPowerLogger)init;
- (void)dealloc;
- (void)logAuthenticationFinishedEventIfNeeded;
- (void)logAuthenticationStartedEventIfNeeded;
@end

@implementation _ASCABLEPowerLogger

- (_ASCABLEPowerLogger)init
{
  v6.receiver = self;
  v6.super_class = _ASCABLEPowerLogger;
  v2 = [(_ASCABLEPowerLogger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(_ASCABLEPowerLogger *)self logAuthenticationFinishedEventIfNeeded];
  v3.receiver = self;
  v3.super_class = _ASCABLEPowerLogger;
  [(_ASCABLEPowerLogger *)&v3 dealloc];
}

- (void)logAuthenticationStartedEventIfNeeded
{
  v9[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___ASCABLEPowerLogger_logAuthenticationStartedEventIfNeeded__block_invoke;
  v7[3] = &unk_1E815F9D0;
  v7[4] = self;
  [v3 setHandler:v7];
  if (!self->_didSendStartedEvent && PLShouldLogRegisteredEvent())
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C20AD000, v4, OS_LOG_TYPE_INFO, "Sending caBLE authentication started PowerLog event", v6, 2u);
    }

    v8 = @"AuthenticationDidStart";
    v9[0] = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    PLLogRegisteredEvent();
    self->_didSendStartedEvent = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)logAuthenticationFinishedEventIfNeeded
{
  v9[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___ASCABLEPowerLogger_logAuthenticationFinishedEventIfNeeded__block_invoke;
  v7[3] = &unk_1E815F9D0;
  v7[4] = self;
  [v3 setHandler:v7];
  if (self->_didSendStartedEvent && !self->_didSendFinishedEvent && PLShouldLogRegisteredEvent())
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C20AD000, v4, OS_LOG_TYPE_INFO, "Sending caBLE authentication finished PowerLog event", v6, 2u);
    }

    v8 = @"AuthenticationDidStart";
    v9[0] = MEMORY[0x1E695E110];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    PLLogRegisteredEvent();
    self->_didSendFinishedEvent = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end
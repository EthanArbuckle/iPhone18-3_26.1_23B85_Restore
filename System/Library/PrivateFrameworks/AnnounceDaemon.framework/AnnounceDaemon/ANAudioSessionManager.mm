@interface ANAudioSessionManager
- (ANAudioSessionManager)initWithAudioSession:(id)session queue:(id)queue endpointID:(id)d;
- (BOOL)activateAudioSessionWithError:(id *)error;
- (id)makeTimerIdentifier;
- (void)_activateAudioSessionWithCompletionHandler:(id)handler;
- (void)_deactivateAudioSession;
- (void)activateAudioSessionWithCompletionHandler:(id)handler;
- (void)deactivateAudioSessionAfterDelay:(double)delay;
- (void)dealloc;
- (void)observer:(id)observer didUpdateActiveCallStatus:(BOOL)status;
- (void)setWaitForCallEndCompletion:(id)completion;
- (void)startCallEndTimer;
@end

@implementation ANAudioSessionManager

- (ANAudioSessionManager)initWithAudioSession:(id)session queue:(id)queue endpointID:(id)d
{
  sessionCopy = session;
  queueCopy = queue;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = ANAudioSessionManager;
  v12 = [(ANAudioSessionManager *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioSession, session);
    if (queueCopy)
    {
      v14 = queueCopy;
      queue = v13->_queue;
      v13->_queue = v14;
    }

    else
    {
      v16 = MEMORY[0x277D85CD0];
      v17 = MEMORY[0x277D85CD0];
      queue = v13->_queue;
      v13->_queue = v16;
    }

    ANLogBuildCategoryName();
    v18 = ANLogWithCategory();
    log = v13->_log;
    v13->_log = v18;

    objc_storeStrong(&v13->_endpointUUID, d);
    v20 = [[ANTelephonyObserver alloc] initWithQueue:v13->_queue];
    telephonyObserver = v13->_telephonyObserver;
    v13->_telephonyObserver = v20;

    waitForCallEndCompletion = v13->_waitForCallEndCompletion;
    v13->_waitForCallEndCompletion = 0;

    callEndTimer = v13->_callEndTimer;
    v13->_callEndTimer = 0;
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(ANAudioSessionManager *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ANAudioSessionManager *)v3 dealloc];
  }

  deactivationTimer = [(ANAudioSessionManager *)self deactivationTimer];

  if (deactivationTimer)
  {
    deactivationTimer2 = [(ANAudioSessionManager *)self deactivationTimer];
    [deactivationTimer2 cancel];

    v6 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Canceled Pending Audio Session Deactivation", buf, 2u);
    }
  }

  [(ANAudioSessionManager *)self _deactivateAudioSession];
  callEndTimer = [(ANAudioSessionManager *)self callEndTimer];

  if (callEndTimer)
  {
    callEndTimer2 = [(ANAudioSessionManager *)self callEndTimer];
    [callEndTimer2 cancel];

    v9 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Canceled call end timer, deactivation.", buf, 2u);
    }
  }

  waitForCallEndCompletion = [(ANAudioSessionManager *)self waitForCallEndCompletion];

  if (waitForCallEndCompletion)
  {
    waitForCallEndCompletion = self->_waitForCallEndCompletion;
    v12 = [MEMORY[0x277CCA9B8] an_errorWithCode:1018];
    waitForCallEndCompletion[2](waitForCallEndCompletion, v12);

    v13 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "Call compeletion handler with error, deactivation.", buf, 2u);
    }
  }

  v14.receiver = self;
  v14.super_class = ANAudioSessionManager;
  [(ANAudioSessionManager *)&v14 dealloc];
}

- (BOOL)activateAudioSessionWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  deactivationTimer = [(ANAudioSessionManager *)self deactivationTimer];

  if (deactivationTimer)
  {
    deactivationTimer2 = [(ANAudioSessionManager *)self deactivationTimer];
    [deactivationTimer2 cancel];

    [(ANAudioSessionManager *)self setActivationRetryTimer:0];
    v7 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Canceled pending audio session deactivation", &v21, 2u);
    }
  }

  audioSession = [(ANAudioSessionManager *)self audioSession];
  v9 = [audioSession setActive:1 error:error];

  v10 = [(ANAudioSessionManager *)self log];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      audioSession2 = [(ANAudioSessionManager *)self audioSession];
      v21 = 138412290;
      v22 = audioSession2;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Activated Audio Session %@", &v21, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ANAudioSessionManager *)error activateAudioSessionWithError:v11, v13, v14, v15, v16, v17, v18];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)activateAudioSessionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(ANAudioSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ANAudioSessionManager_activateAudioSessionWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86840;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __67__ANAudioSessionManager_activateAudioSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCanRetryAudioSessionActivation:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _activateAudioSessionWithCompletionHandler:v3];
}

- (void)deactivateAudioSessionAfterDelay:(double)delay
{
  v20 = *MEMORY[0x277D85DE8];
  deactivationTimer = [(ANAudioSessionManager *)self deactivationTimer];

  if (deactivationTimer)
  {
    v6 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Request to deactivate audio session when deactivation already in progress. Ignoring.", buf, 2u);
    }
  }

  else
  {
    v7 = [(ANAudioSessionManager *)self log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (delay <= 0.0)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Will deactivate audio session immediately", buf, 2u);
      }

      [(ANAudioSessionManager *)self _deactivateAudioSession];
    }

    else
    {
      if (v8)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:delay];
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Will deactivate audio session in (%@) seconds", buf, 0xCu);
      }

      v10 = MEMORY[0x277CEABD8];
      makeTimerIdentifier = [(ANAudioSessionManager *)self makeTimerIdentifier];
      v12 = [v10 timerWithLabel:@"AudioSessionDeactivation" identifier:makeTimerIdentifier];
      [(ANAudioSessionManager *)self setDeactivationTimer:v12];

      objc_initWeak(buf, self);
      deactivationTimer2 = [(ANAudioSessionManager *)self deactivationTimer];
      queue = [(ANAudioSessionManager *)self queue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__ANAudioSessionManager_deactivateAudioSessionAfterDelay___block_invoke;
      v16[3] = &unk_278C86580;
      objc_copyWeak(&v17, buf);
      [deactivationTimer2 startWithValue:queue queue:v16 handler:delay];

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __58__ANAudioSessionManager_deactivateAudioSessionAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained deactivationTimer];
  [v1 cancel];

  [WeakRetained setDeactivationTimer:0];
  [WeakRetained _deactivateAudioSession];
}

- (id)makeTimerIdentifier
{
  endpointUUID = [(ANAudioSessionManager *)self endpointUUID];
  v3 = endpointUUID;
  if (endpointUUID)
  {
    uUID = endpointUUID;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v5 = uUID;

  return v5;
}

- (void)_activateAudioSessionWithCompletionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queue = [(ANAudioSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  endpointUUID = [(ANAudioSessionManager *)self endpointUUID];
  if (endpointUUID)
  {
    endpointUUID2 = [(ANAudioSessionManager *)self endpointUUID];
    an_isLocalDevice = [endpointUUID2 an_isLocalDevice];

    if (!an_isLocalDevice)
    {
      goto LABEL_7;
    }
  }

  telephonyObserver = [(ANAudioSessionManager *)self telephonyObserver];
  hasCalls = [telephonyObserver hasCalls];

  if (hasCalls)
  {
    v11 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = _Block_copy(handlerCopy);
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "There is an active call, wait for call to end then call completion handler: %@", buf, 0xCu);
    }

    [(ANAudioSessionManager *)self setWaitForCallEndCompletion:handlerCopy];
  }

  else
  {
LABEL_7:
    v36 = 0;
    [(ANAudioSessionManager *)self activateAudioSessionWithError:&v36];
    v13 = v36;
    if ([v13 code] == 561017449 && -[ANAudioSessionManager canRetryAudioSessionActivation](self, "canRetryAudioSessionActivation"))
    {
      mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
      v15 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA880]];
      [v15 doubleValue];
      v17 = v16;

      v18 = [(ANAudioSessionManager *)self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(ANAudioSessionManager *)v18 _activateAudioSessionWithCompletionHandler:v19, v20, v21, v22, v23, v24, v25];
      }

      activationRetryTimer = [(ANAudioSessionManager *)self activationRetryTimer];
      [activationRetryTimer cancel];

      [(ANAudioSessionManager *)self setCanRetryAudioSessionActivation:0];
      v27 = MEMORY[0x277CEABD8];
      makeTimerIdentifier = [(ANAudioSessionManager *)self makeTimerIdentifier];
      v29 = [v27 timerWithLabel:@"AudioSessionActivationRetry" identifier:makeTimerIdentifier];
      [(ANAudioSessionManager *)self setActivationRetryTimer:v29];

      objc_initWeak(buf, self);
      activationRetryTimer2 = [(ANAudioSessionManager *)self activationRetryTimer];
      queue2 = [(ANAudioSessionManager *)self queue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __68__ANAudioSessionManager__activateAudioSessionWithCompletionHandler___block_invoke;
      v33[3] = &unk_278C86868;
      objc_copyWeak(&v35, buf);
      v34 = handlerCopy;
      [activationRetryTimer2 startWithValue:queue2 queue:v33 handler:v17];

      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, v13);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __68__ANAudioSessionManager__activateAudioSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _activateAudioSessionWithCompletionHandler:*(a1 + 32)];
  v2 = [WeakRetained activationRetryTimer];
  [v2 cancel];
}

- (void)_deactivateAudioSession
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_23F525000, a2, a3, "Failed to deactivate Audio Session. Error = %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setWaitForCallEndCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  queue = [(ANAudioSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(ANAudioSessionManager *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _Block_copy(self->_waitForCallEndCompletion);
    v8 = _Block_copy(completionCopy);
    v20 = 138412546;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Set wait for call end completion \n old handler: %@ \n new handler: %@", &v20, 0x16u);
  }

  v9 = [(ANAudioSessionManager *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    callEndTimer = self->_callEndTimer;
    v20 = 138412290;
    v21 = callEndTimer;
    _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Call end timer set to nil [%@]", &v20, 0xCu);
  }

  v11 = self->_callEndTimer;
  self->_callEndTimer = 0;

  waitForCallEndCompletion = self->_waitForCallEndCompletion;
  if (completionCopy)
  {
    if (waitForCallEndCompletion)
    {
      v13 = [(ANAudioSessionManager *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = _Block_copy(self->_waitForCallEndCompletion);
        v15 = _Block_copy(completionCopy);
        v20 = 138412546;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "Existing call end completion handler, replacing with new handler.\n old handler: %@ \n new handler: %@", &v20, 0x16u);
      }

      v16 = self->_waitForCallEndCompletion;
      v17 = [MEMORY[0x277CCA9B8] an_errorWithCode:1018];
      v16[2](v16, v17);
    }

    [(ANAudioSessionManager *)self startCallEndTimer];
    v18 = _Block_copy(completionCopy);
    waitForCallEndCompletion = self->_waitForCallEndCompletion;
  }

  else
  {
    v18 = 0;
  }

  self->_waitForCallEndCompletion = v18;

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startCallEndTimer
{
  v21 = *MEMORY[0x277D85DE8];
  queue = [(ANAudioSessionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = MEMORY[0x277CEABD8];
  makeTimerIdentifier = [(ANAudioSessionManager *)self makeTimerIdentifier];
  v6 = [v4 timerWithLabel:@"CallEndTimer" identifier:makeTimerIdentifier];
  callEndTimer = self->_callEndTimer;
  self->_callEndTimer = v6;

  v8 = [(ANAudioSessionManager *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callEndTimer = [(ANAudioSessionManager *)self callEndTimer];
    *buf = 138412290;
    v20 = callEndTimer;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "Call End Timer Created [%@]", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v11 = [mEMORY[0x277CEAB80] numberForDefault:*MEMORY[0x277CEA898]];
  [v11 doubleValue];
  v13 = v12;

  v14 = self->_callEndTimer;
  queue2 = [(ANAudioSessionManager *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__ANAudioSessionManager_startCallEndTimer__block_invoke;
  v17[3] = &unk_278C86580;
  objc_copyWeak(&v18, buf);
  [(ANTimer *)v14 startWithValue:queue2 queue:v17 handler:v13];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __42__ANAudioSessionManager_startCallEndTimer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained callEndTimer];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "Call End Timer Fired [%@]", buf, 0xCu);
  }

  v4 = [WeakRetained waitForCallEndCompletion];

  if (v4)
  {
    v8 = 0;
    [WeakRetained activateAudioSessionWithError:&v8];
    v5 = v8;
    v6 = [WeakRetained waitForCallEndCompletion];
    (v6)[2](v6, v5);

    [WeakRetained setWaitForCallEndCompletion:0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)observer:(id)observer didUpdateActiveCallStatus:(BOOL)status
{
  statusCopy = status;
  v14 = *MEMORY[0x277D85DE8];
  v6 = [(ANAudioSessionManager *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = statusCopy;
    _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "CallIsActive changed to %d", buf, 8u);
  }

  waitForCallEndCompletion = [(ANAudioSessionManager *)self waitForCallEndCompletion];

  if (waitForCallEndCompletion && !statusCopy)
  {
    v11 = 0;
    [(ANAudioSessionManager *)self activateAudioSessionWithError:&v11];
    v8 = v11;
    waitForCallEndCompletion2 = [(ANAudioSessionManager *)self waitForCallEndCompletion];
    (waitForCallEndCompletion2)[2](waitForCallEndCompletion2, v8);

    [(ANAudioSessionManager *)self setWaitForCallEndCompletion:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)activateAudioSessionWithError:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_0(&dword_23F525000, a2, a3, "Failed to set AVAudioSession active: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_activateAudioSessionWithCompletionHandler:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_23F525000, a1, a3, "Failed to activate audio session due to insufficient priority, will try again in %f seconds", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end
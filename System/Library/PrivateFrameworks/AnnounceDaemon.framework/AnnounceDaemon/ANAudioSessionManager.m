@interface ANAudioSessionManager
- (ANAudioSessionManager)initWithAudioSession:(id)a3 queue:(id)a4 endpointID:(id)a5;
- (BOOL)activateAudioSessionWithError:(id *)a3;
- (id)makeTimerIdentifier;
- (void)_activateAudioSessionWithCompletionHandler:(id)a3;
- (void)_deactivateAudioSession;
- (void)activateAudioSessionWithCompletionHandler:(id)a3;
- (void)deactivateAudioSessionAfterDelay:(double)a3;
- (void)dealloc;
- (void)observer:(id)a3 didUpdateActiveCallStatus:(BOOL)a4;
- (void)setWaitForCallEndCompletion:(id)a3;
- (void)startCallEndTimer;
@end

@implementation ANAudioSessionManager

- (ANAudioSessionManager)initWithAudioSession:(id)a3 queue:(id)a4 endpointID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = ANAudioSessionManager;
  v12 = [(ANAudioSessionManager *)&v25 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioSession, a3);
    if (v10)
    {
      v14 = v10;
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

    objc_storeStrong(&v13->_endpointUUID, a5);
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

  v4 = [(ANAudioSessionManager *)self deactivationTimer];

  if (v4)
  {
    v5 = [(ANAudioSessionManager *)self deactivationTimer];
    [v5 cancel];

    v6 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Canceled Pending Audio Session Deactivation", buf, 2u);
    }
  }

  [(ANAudioSessionManager *)self _deactivateAudioSession];
  v7 = [(ANAudioSessionManager *)self callEndTimer];

  if (v7)
  {
    v8 = [(ANAudioSessionManager *)self callEndTimer];
    [v8 cancel];

    v9 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23F525000, v9, OS_LOG_TYPE_DEFAULT, "Canceled call end timer, deactivation.", buf, 2u);
    }
  }

  v10 = [(ANAudioSessionManager *)self waitForCallEndCompletion];

  if (v10)
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

- (BOOL)activateAudioSessionWithError:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(ANAudioSessionManager *)self deactivationTimer];

  if (v5)
  {
    v6 = [(ANAudioSessionManager *)self deactivationTimer];
    [v6 cancel];

    [(ANAudioSessionManager *)self setActivationRetryTimer:0];
    v7 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Canceled pending audio session deactivation", &v21, 2u);
    }
  }

  v8 = [(ANAudioSessionManager *)self audioSession];
  v9 = [v8 setActive:1 error:a3];

  v10 = [(ANAudioSessionManager *)self log];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(ANAudioSessionManager *)self audioSession];
      v21 = 138412290;
      v22 = v12;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "Activated Audio Session %@", &v21, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ANAudioSessionManager *)a3 activateAudioSessionWithError:v11, v13, v14, v15, v16, v17, v18];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)activateAudioSessionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANAudioSessionManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ANAudioSessionManager_activateAudioSessionWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86840;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __67__ANAudioSessionManager_activateAudioSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCanRetryAudioSessionActivation:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _activateAudioSessionWithCompletionHandler:v3];
}

- (void)deactivateAudioSessionAfterDelay:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(ANAudioSessionManager *)self deactivationTimer];

  if (v5)
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
    if (a3 <= 0.0)
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
        v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "Will deactivate audio session in (%@) seconds", buf, 0xCu);
      }

      v10 = MEMORY[0x277CEABD8];
      v11 = [(ANAudioSessionManager *)self makeTimerIdentifier];
      v12 = [v10 timerWithLabel:@"AudioSessionDeactivation" identifier:v11];
      [(ANAudioSessionManager *)self setDeactivationTimer:v12];

      objc_initWeak(buf, self);
      v13 = [(ANAudioSessionManager *)self deactivationTimer];
      v14 = [(ANAudioSessionManager *)self queue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__ANAudioSessionManager_deactivateAudioSessionAfterDelay___block_invoke;
      v16[3] = &unk_278C86580;
      objc_copyWeak(&v17, buf);
      [v13 startWithValue:v14 queue:v16 handler:a3];

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
  v2 = [(ANAudioSessionManager *)self endpointUUID];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
  }

  v5 = v4;

  return v5;
}

- (void)_activateAudioSessionWithCompletionHandler:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANAudioSessionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ANAudioSessionManager *)self endpointUUID];
  if (v6)
  {
    v7 = [(ANAudioSessionManager *)self endpointUUID];
    v8 = [v7 an_isLocalDevice];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = [(ANAudioSessionManager *)self telephonyObserver];
  v10 = [v9 hasCalls];

  if (v10)
  {
    v11 = [(ANAudioSessionManager *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = _Block_copy(v4);
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&dword_23F525000, v11, OS_LOG_TYPE_DEFAULT, "There is an active call, wait for call to end then call completion handler: %@", buf, 0xCu);
    }

    [(ANAudioSessionManager *)self setWaitForCallEndCompletion:v4];
  }

  else
  {
LABEL_7:
    v36 = 0;
    [(ANAudioSessionManager *)self activateAudioSessionWithError:&v36];
    v13 = v36;
    if ([v13 code] == 561017449 && -[ANAudioSessionManager canRetryAudioSessionActivation](self, "canRetryAudioSessionActivation"))
    {
      v14 = [MEMORY[0x277CEAB80] sharedInstance];
      v15 = [v14 numberForDefault:*MEMORY[0x277CEA880]];
      [v15 doubleValue];
      v17 = v16;

      v18 = [(ANAudioSessionManager *)self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(ANAudioSessionManager *)v18 _activateAudioSessionWithCompletionHandler:v19, v20, v21, v22, v23, v24, v25];
      }

      v26 = [(ANAudioSessionManager *)self activationRetryTimer];
      [v26 cancel];

      [(ANAudioSessionManager *)self setCanRetryAudioSessionActivation:0];
      v27 = MEMORY[0x277CEABD8];
      v28 = [(ANAudioSessionManager *)self makeTimerIdentifier];
      v29 = [v27 timerWithLabel:@"AudioSessionActivationRetry" identifier:v28];
      [(ANAudioSessionManager *)self setActivationRetryTimer:v29];

      objc_initWeak(buf, self);
      v30 = [(ANAudioSessionManager *)self activationRetryTimer];
      v31 = [(ANAudioSessionManager *)self queue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __68__ANAudioSessionManager__activateAudioSessionWithCompletionHandler___block_invoke;
      v33[3] = &unk_278C86868;
      objc_copyWeak(&v35, buf);
      v34 = v4;
      [v30 startWithValue:v31 queue:v33 handler:v17];

      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }

    else
    {
      (*(v4 + 2))(v4, v13);
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

- (void)setWaitForCallEndCompletion:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANAudioSessionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ANAudioSessionManager *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _Block_copy(self->_waitForCallEndCompletion);
    v8 = _Block_copy(v4);
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
  if (v4)
  {
    if (waitForCallEndCompletion)
    {
      v13 = [(ANAudioSessionManager *)self log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = _Block_copy(self->_waitForCallEndCompletion);
        v15 = _Block_copy(v4);
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
    v18 = _Block_copy(v4);
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
  v3 = [(ANAudioSessionManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = MEMORY[0x277CEABD8];
  v5 = [(ANAudioSessionManager *)self makeTimerIdentifier];
  v6 = [v4 timerWithLabel:@"CallEndTimer" identifier:v5];
  callEndTimer = self->_callEndTimer;
  self->_callEndTimer = v6;

  v8 = [(ANAudioSessionManager *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ANAudioSessionManager *)self callEndTimer];
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "Call End Timer Created [%@]", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = [MEMORY[0x277CEAB80] sharedInstance];
  v11 = [v10 numberForDefault:*MEMORY[0x277CEA898]];
  [v11 doubleValue];
  v13 = v12;

  v14 = self->_callEndTimer;
  v15 = [(ANAudioSessionManager *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__ANAudioSessionManager_startCallEndTimer__block_invoke;
  v17[3] = &unk_278C86580;
  objc_copyWeak(&v18, buf);
  [(ANTimer *)v14 startWithValue:v15 queue:v17 handler:v13];

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

- (void)observer:(id)a3 didUpdateActiveCallStatus:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = [(ANAudioSessionManager *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = v4;
    _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "CallIsActive changed to %d", buf, 8u);
  }

  v7 = [(ANAudioSessionManager *)self waitForCallEndCompletion];

  if (v7 && !v4)
  {
    v11 = 0;
    [(ANAudioSessionManager *)self activateAudioSessionWithError:&v11];
    v8 = v11;
    v9 = [(ANAudioSessionManager *)self waitForCallEndCompletion];
    (v9)[2](v9, v8);

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
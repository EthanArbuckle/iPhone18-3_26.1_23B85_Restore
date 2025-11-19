@interface AXUserEventTimer
+ (id)sharedInstance;
- (AXUserEventTimer)init;
- (BOOL)_canUseIdleTimerServices;
- (id)acquireAssertionToDisableIdleTimerWithReason:(id)a3;
- (void)_startTrackingPoorMansAssertion:(id)a3;
- (void)_stopTrackingPoorMansAssertion:(id)a3;
- (void)userEventOccurred;
@end

@implementation AXUserEventTimer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[AXUserEventTimer sharedInstance];
  }

  v3 = sharedInstance_timer;

  return v3;
}

uint64_t __34__AXUserEventTimer_sharedInstance__block_invoke()
{
  sharedInstance_timer = objc_alloc_init(AXUserEventTimer);

  return MEMORY[0x1EEE66BB8]();
}

- (AXUserEventTimer)init
{
  v6.receiver = self;
  v6.super_class = AXUserEventTimer;
  v2 = [(AXUserEventTimer *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("AXUserEventTimer-AssertionQueue", 0);
    assertionQueue = v2->_assertionQueue;
    v2->_assertionQueue = v3;
  }

  return v2;
}

- (BOOL)_canUseIdleTimerServices
{
  if (AXInPreboardScenario())
  {
    return 0;
  }

  v3 = MEMORY[0x1E69A8AB8];

  return [v3 isIdleTimerServiceAvailable];
}

- (void)userEventOccurred
{
  if ([(AXUserEventTimer *)self _canUseIdleTimerServices])
  {
    v2 = dispatch_get_global_queue(0, 0);
    dispatch_async(v2, &__block_literal_global_8_0);
  }

  else
  {
    v2 = +[AXBackBoardServer server];
    [v2 userEventOccurred];
  }
}

void __37__AXUserEventTimer_userEventOccurred__block_invoke()
{
  v0 = [MEMORY[0x1E69A8AB8] sharedInstance];
  v9 = 0;
  v1 = [v0 newAssertionToDisableIdleTimerForReason:@"AccessibilityUserEventOccurred" error:&v9];
  v2 = v9;

  v3 = dispatch_time(0, 150000000);
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AXUserEventTimer_userEventOccurred__block_invoke_2;
  v7[3] = &unk_1E71E9B98;
  v5 = v1;
  v8 = v5;
  dispatch_after(v3, v4, v7);

  if (v2)
  {
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __37__AXUserEventTimer_userEventOccurred__block_invoke_cold_1(v2, v6);
    }
  }
}

void *__37__AXUserEventTimer_userEventOccurred__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

- (void)_startTrackingPoorMansAssertion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 reason];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "AXUserEventTimer: Now disabling idle timer for reason: %@", buf, 0xCu);
  }

  assertionQueue = self->_assertionQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__AXUserEventTimer__startTrackingPoorMansAssertion___block_invoke;
  v9[3] = &unk_1E71EA128;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(assertionQueue, v9);
}

void __52__AXUserEventTimer__startTrackingPoorMansAssertion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = *(*(a1 + 32) + 16);
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(*(a1 + 32) + 16);
  }

  [v3 addObject:*(a1 + 40)];
  if (!v2)
  {
    v7 = +[AXBackBoardServer server];
    [v7 setLockScreenDimTimerEnabled:0];
  }
}

- (void)_stopTrackingPoorMansAssertion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 reason];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "AXUserEventTimer: No longer disabling idle timer for reason: %@", buf, 0xCu);
  }

  assertionQueue = self->_assertionQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AXUserEventTimer__stopTrackingPoorMansAssertion___block_invoke;
  v9[3] = &unk_1E71EA128;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(assertionQueue, v9);
}

void __51__AXUserEventTimer__stopTrackingPoorMansAssertion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
  if (v2 && ![*(*(a1 + 32) + 16) count])
  {
    v3 = +[AXBackBoardServer server];
    [v3 setLockScreenDimTimerEnabled:1];
  }
}

- (id)acquireAssertionToDisableIdleTimerWithReason:(id)a3
{
  v4 = a3;
  if (![(AXUserEventTimer *)self _canUseIdleTimerServices])
  {
    goto LABEL_7;
  }

  v5 = [MEMORY[0x1E69A8AB8] sharedInstance];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Accessibility-%@", v4];
  v15 = 0;
  v7 = [v5 newAssertionToDisableIdleTimerForReason:v6 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AXUserEventTimer *)v8 acquireAssertionToDisableIdleTimerWithReason:v4, v9];
    }
  }

  if (!v7)
  {
LABEL_7:
    objc_initWeak(&location, self);
    v10 = objc_alloc(MEMORY[0x1E698E778]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__AXUserEventTimer_acquireAssertionToDisableIdleTimerWithReason___block_invoke;
    v12[3] = &unk_1E71EA750;
    objc_copyWeak(&v13, &location);
    v7 = [v10 initWithIdentifier:@"AccessibilityDisableIdleTimer" forReason:v4 invalidationBlock:v12];
    [(AXUserEventTimer *)self _startTrackingPoorMansAssertion:v7];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __65__AXUserEventTimer_acquireAssertionToDisableIdleTimerWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopTrackingPoorMansAssertion:v3];
}

void __37__AXUserEventTimer_userEventOccurred__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = @"AccessibilityUserEventOccurred";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Error getting assertion %@ > %@", &v2, 0x16u);
}

- (void)acquireAssertionToDisableIdleTimerWithReason:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_18B15E000, log, OS_LOG_TYPE_ERROR, "Error getting assertion %@ > %@", &v3, 0x16u);
}

@end
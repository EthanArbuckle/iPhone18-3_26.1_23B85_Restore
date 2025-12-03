@interface PushButtonMonitor
+ (id)sharedInstance;
- (BOOL)startWithError:(id *)error;
- (PushButtonDelegate)delegate;
- (PushButtonMonitor)init;
- (id)_init;
- (id)prearmAssertion;
- (void)_consumeDoubleTapWithReason:(id)reason includingAX:(BOOL)x;
- (void)_expireDoubleTap:(unint64_t)tap;
- (void)_restartWithReactivationDelay:(double)delay;
- (void)_scheduleDoubleTapExpiration;
- (void)adviseDoubleTap;
- (void)axApplePayConfirmation;
- (void)consumeDoublePressUpForButtonKind:(int64_t)kind;
- (void)dealloc;
- (void)doubleTappedAt:(id)at;
- (void)start;
- (void)stop;
@end

@implementation PushButtonMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PushButtonMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __35__PushButtonMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (PushButtonMonitor)init
{
  v8.receiver = self;
  v8.super_class = PushButtonMonitor;
  v2 = [(PushButtonMonitor *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sbBiometricsService = v2->_sbBiometricsService;
    v2->_sbBiometricsService = v3;

    mEMORY[0x277D66A98] = [MEMORY[0x277D66A98] sharedInstance];
    sbHardwareButtonService = v2->_sbHardwareButtonService;
    v2->_sbHardwareButtonService = mEMORY[0x277D66A98];
  }

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PushButtonMonitor;
  return [(PushButtonMonitor *)&v3 init];
}

- (void)dealloc
{
  [(PushButtonMonitor *)self stop];
  v3.receiver = self;
  v3.super_class = PushButtonMonitor;
  [(PushButtonMonitor *)&v3 dealloc];
}

- (id)prearmAssertion
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v3 = LA_LOG_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238B7F000, v3, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor will acquire assertion", buf, 2u);
  }

  sbBiometricsService = self->_sbBiometricsService;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PushButtonMonitor_prearmAssertion__block_invoke;
  v7[3] = &unk_278A61510;
  v7[4] = &v9;
  [(SBSBiometricsService *)sbBiometricsService acquireWalletPreArmSuppressionAssertionForReason:@"LA monitoring HW button for double press" completion:v7];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __36__PushButtonMonitor_prearmAssertion__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LA_LOG_1();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&dword_238B7F000, v5, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor acquired PreArmSuppression assertion: %{public}@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __36__PushButtonMonitor_prearmAssertion__block_invoke_cold_1(v5);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_consumeDoubleTapWithReason:(id)reason includingAX:(BOOL)x
{
  xCopy = x;
  v12 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  self->_lastDoubleTap = 0;
  if (self->_doubleTapDetected)
  {
    v7 = LA_LOG_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = reasonCopy;
      _os_log_impl(&dword_238B7F000, v7, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor has consumed existing double press, because %{public}@", &v10, 0xCu);
    }

    self->_doubleTapDetected = 0;
  }

  if (xCopy && self->_axDoubleTapDetected)
  {
    v8 = LA_LOG_1();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = reasonCopy;
      _os_log_impl(&dword_238B7F000, v8, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor has consumed existing ax double press, because %{public}@", &v10, 0xCu);
    }

    self->_axDoubleTapDetected = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleDoubleTapExpiration
{
  v24 = *MEMORY[0x277D85DE8];
  lastDoubleTap = self->_lastDoubleTap;
  objc_initWeak(&location, self);
  delegate = [(PushButtonMonitor *)self delegate];
  if (delegate)
  {
    delegate2 = [(PushButtonMonitor *)self delegate];
    [delegate2 expirationTimeout];
    v7 = v6;
  }

  else
  {
    [(PushButtonMonitor *)self _defaultExpirationTimeout];
    v7 = v8;
  }

  v9 = LA_LOG_1();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    delegate3 = [(PushButtonMonitor *)self delegate];
    v11 = [delegate3 description];
    v12 = v11;
    v13 = @"default";
    if (v11)
    {
      v13 = v11;
    }

    *buf = 134218242;
    v21 = v7;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_238B7F000, v9, OS_LOG_TYPE_INFO, "PushButtonMonitor will consume this double press after %0.1f seconds as required by %{public}@", buf, 0x16u);
  }

  v14 = +[DaemonUtils sharedInstance];
  serverQueue = [v14 serverQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__PushButtonMonitor__scheduleDoubleTapExpiration__block_invoke;
  v17[3] = &unk_278A61538;
  v17[4] = self;
  v18[1] = lastDoubleTap;
  objc_copyWeak(v18, &location);
  [DaemonUtils dispatchReallyAfter:(v7 * 1000000000.0) tolerance:serverQueue queue:v17 block:0.0];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
  v16 = *MEMORY[0x277D85DE8];
}

void __49__PushButtonMonitor__scheduleDoubleTapExpiration__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2 == *(a1 + 48) || !v2 && (v3 = objc_loadWeakRetained((a1 + 40)), [v3 delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "secondary"), v4, v3, v5))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _expireDoubleTap:*(a1 + 48)];
  }
}

- (void)_expireDoubleTap:(unint64_t)tap
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"double press from %llu has expired", tap];
  [(PushButtonMonitor *)self _consumeDoubleTapWithReason:v5 includingAX:0];
  delegate = [(PushButtonMonitor *)self delegate];
  [delegate monitor:self doubleTapDetected:{-[PushButtonMonitor doubleTapDetected](self, "doubleTapDetected")}];
}

- (void)doubleTappedAt:(id)at
{
  v12 = *MEMORY[0x277D85DE8];
  [at timeIntervalSinceNow];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  if (v5 > self->_lastDoubleTap)
  {
    v6 = v5;
    v7 = LA_LOG_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_238B7F000, v7, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor recognized a new double press at %llu", &v10, 0xCu);
    }

    self->_doubleTapDetected = 1;
    self->_lastTap = 0;
    self->_lastDoubleTap = v6;
    [(PushButtonMonitor *)self _scheduleDoubleTapExpiration];
    delegate = [(PushButtonMonitor *)self delegate];
    [delegate monitor:self doubleTapDetected:self->_doubleTapDetected];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)adviseDoubleTap
{
  if (![(PushButtonMonitor *)self doubleTapDetected])
  {
    v3 = LA_LOG_1();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_238B7F000, v3, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor has been informed about previous double press", v5, 2u);
    }

    self->_doubleTapDetected = 1;
    v4 = dispatch_time(0, 0);
    self->_lastTap = 0;
    self->_lastDoubleTap = v4;
    [(PushButtonMonitor *)self _scheduleDoubleTapExpiration];
  }
}

- (void)axApplePayConfirmation
{
  v3 = LA_LOG_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_238B7F000, v3, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor has received AX confirmation of the ApplePay operation", buf, 2u);
  }

  self->_axDoubleTapDetected = 1;
  WeakRetained = objc_loadWeakRetained(&self->_axDoubleTapExpirationBlock);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_axDoubleTapExpirationBlock);
    v7 = dispatch_block_testcancel(v6);

    if (!v7)
    {
      v8 = objc_loadWeakRetained(&self->_axDoubleTapExpirationBlock);
      dispatch_block_cancel(v8);
    }
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PushButtonMonitor_axApplePayConfirmation__block_invoke;
  block[3] = &unk_278A61560;
  objc_copyWeak(&v19, buf);
  v9 = dispatch_block_create(0, block);
  objc_storeWeak(&self->_axDoubleTapExpirationBlock, v9);
  delegate = [(PushButtonMonitor *)self delegate];
  [delegate expirationTimeout];
  v12 = v11;
  if (v11 == 0.0)
  {
    [(PushButtonMonitor *)self _defaultExpirationTimeout];
    v12 = v13;
  }

  v14 = dispatch_time(0, (v12 * 1000000000.0));
  v15 = +[DaemonUtils sharedInstance];
  serverQueue = [v15 serverQueue];
  dispatch_after(v14, serverQueue, v9);

  delegate2 = [(PushButtonMonitor *)self delegate];
  [delegate2 monitor:self axApplePayConfirmation:1];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __43__PushButtonMonitor_axApplePayConfirmation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAxDoubleTapDetected:0];
}

- (void)start
{
  v3 = 0;
  if (![(PushButtonMonitor *)self startWithError:&v3])
  {
    [(PushButtonMonitor *)self _restartWithReactivationDelay:60.0];
  }
}

- (void)stop
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_powerButtonObserver)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __25__PushButtonMonitor_stop__block_invoke;
    v5[3] = &unk_278A61588;
    v5[4] = self;
    [DaemonUtils dispatchSyncOnMain:v5];
    v2 = "has";
  }

  else
  {
    v2 = "was already";
  }

  v3 = LA_LOG_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v7 = v2;
    _os_log_impl(&dword_238B7F000, v3, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor %{public}s stopped", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __25__PushButtonMonitor_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

- (void)_restartWithReactivationDelay:(double)delay
{
  v5 = dispatch_time(0, (delay * 1000000000.0));
  v6 = +[DaemonUtils sharedInstance];
  serverQueue = [v6 serverQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PushButtonMonitor__restartWithReactivationDelay___block_invoke;
  v8[3] = &unk_278A615B0;
  *&v8[5] = delay;
  v8[4] = self;
  dispatch_after(v5, serverQueue, v8);
}

uint64_t __51__PushButtonMonitor__restartWithReactivationDelay___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LA_LOG_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_238B7F000, v2, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor is restarting after %.0f seconds", &v6, 0xCu);
  }

  result = [*(a1 + 32) start];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)startWithError:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_powerButtonObserver || !+[DaemonUtils deviceHasTouchIDAndSecureDoublePress])
  {
    v5 = LA_LOG_1();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    powerButtonObserver = self->_powerButtonObserver;
    *buf = 138412290;
    v15 = powerButtonObserver;
    v7 = "PushButtonMonitor is already running with SB button observer: %@";
    goto LABEL_8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__PushButtonMonitor_startWithError___block_invoke;
  v13[3] = &unk_278A61588;
  v13[4] = self;
  [DaemonUtils dispatchSyncOnMain:v13];
  if (!self->_powerButtonObserver)
  {
    v9 = [MEMORY[0x277CD47F0] internalErrorWithMessage:@"Failed to register SB button observer."];
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = LA_LOG_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_powerButtonObserver;
    *buf = 138412290;
    v15 = v6;
    v7 = "PushButtonMonitor was activated with SB button observer: %@";
LABEL_8:
    _os_log_impl(&dword_238B7F000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
  }

LABEL_9:

  v9 = 0;
  if (error)
  {
LABEL_10:
    v9 = v9;
    *error = v9;
  }

LABEL_11:
  v10 = v9 == 0;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __36__PushButtonMonitor_startWithError___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) beginConsumingPressesForButtonKind:2 eventConsumer:*(a1 + 32) priority:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)consumeDoublePressUpForButtonKind:(int64_t)kind
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = LA_LOG_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    kindCopy = kind;
    _os_log_impl(&dword_238B7F000, v5, OS_LOG_TYPE_DEFAULT, "PushButtonMonitor received notification for button %d", buf, 8u);
  }

  if (kind == 2)
  {
    v6 = +[DaemonUtils queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PushButtonMonitor_consumeDoublePressUpForButtonKind___block_invoke;
    block[3] = &unk_278A61588;
    block[4] = self;
    dispatch_async(v6, block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __55__PushButtonMonitor_consumeDoublePressUpForButtonKind___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEAA8] now];
  [v1 doubleTappedAt:v2];
}

- (PushButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
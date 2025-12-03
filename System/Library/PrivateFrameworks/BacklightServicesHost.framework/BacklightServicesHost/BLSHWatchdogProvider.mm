@interface BLSHWatchdogProvider
+ (BOOL)checkForWatchdogDidFire:(BOOL)fire;
+ (BOOL)ignoreWatchdogAborts;
+ (void)markWatchdogDidFire:(id)fire abortReason:(id)reason;
+ (void)resetWatchdogDidFire;
+ (void)setIgnoreWatchdogAborts:(BOOL)aborts;
+ (void)showWatchdogDidFireAlert:(id)alert;
- (BLSHWatchdogProvider)initWithDelegate:(id)delegate;
- (BOOL)isTesting;
- (BOOL)isWaitingwaitingPastFireForCompletionAndTailspin;
- (id)scheduleWatchdogWithDelegate:(id)delegate explanation:(id)explanation timeout:(double)timeout;
- (id)waitingPastFireForCompletionAndTailspinAbortParams;
- (void)_abortForWatchdogFire:(id)fire;
- (void)_checkForReadyToAbortAfterWaitingPastFire;
- (void)_clearIsWaitingForWatchdogCompletion;
- (void)_fireWatchdogWithTimer:(id)timer delegate:(id)delegate timeout:(double)timeout elapsedTime:(double)time abortContext:(id)context explanation:(id)explanation remainingRetries:(unint64_t)retries;
- (void)_giveUpWaitingForWatchdogCompletionAbortWhileWaitingPastFire:(id)fire;
- (void)_startWritingTailspin;
- (void)clearWatchdogWithExplanation:(id)explanation reason:(unint64_t)reason timeout:(double)timeout elapsedTime:(double)time;
- (void)dealloc;
- (void)didDetectSignificantUserInteraction;
- (void)fireWatchdogWithTimer:(id)timer delegate:(id)delegate timeout:(double)timeout elapsedTime:(double)time;
- (void)setWaitingwaitingPastFireForCompletionAndTailspin:(id)tailspin waitForWatchdogCompletion:(BOOL)completion;
@end

@implementation BLSHWatchdogProvider

- (void)didDetectSignificantUserInteraction
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__BLSHWatchdogProvider_didDetectSignificantUserInteraction__block_invoke;
  block[3] = &unk_27841E650;
  block[4] = self;
  if (didDetectSignificantUserInteraction_onceToken != -1)
  {
    dispatch_once(&didDetectSignificantUserInteraction_onceToken, block);
  }
}

uint64_t __59__BLSHWatchdogProvider_didDetectSignificantUserInteraction__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 checkForWatchdogDidFire:0];
}

- (BOOL)isWaitingwaitingPastFireForCompletionAndTailspin
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_waitingForWatchdogCompletion || self->_lock_waitingForTailspin;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BLSHWatchdogProvider)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = BLSHWatchdogProvider;
  v5 = [(BLSHWatchdogProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_watchdogEnabled = 1;
    objc_storeWeak(&v5->_providerDelegate, delegateCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(BSAbsoluteMachTimer *)self->_lock_fireRetryTimer invalidate];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = BLSHWatchdogProvider;
  [(BLSHWatchdogProvider *)&v3 dealloc];
}

+ (void)setIgnoreWatchdogAborts:(BOOL)aborts
{
  os_unfair_lock_lock(&__classLock);
  __ignoreWatchdogAborts = aborts;

  os_unfair_lock_unlock(&__classLock);
}

+ (BOOL)ignoreWatchdogAborts
{
  os_unfair_lock_lock(&__classLock);
  v2 = __ignoreWatchdogAborts;
  os_unfair_lock_unlock(&__classLock);
  return v2;
}

- (id)scheduleWatchdogWithDelegate:(id)delegate explanation:(id)explanation timeout:(double)timeout
{
  explanationCopy = explanation;
  delegateCopy = delegate;
  v10 = bls_diagnostics_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [BLSHWatchdogProvider scheduleWatchdogWithDelegate:explanationCopy explanation:v10 timeout:timeout];
  }

  v11 = [[BSLHWatchdogTimer alloc] initWithExplanation:explanationCopy delegate:delegateCopy provider:self];
  [(BSLHWatchdogTimer *)v11 scheduleWithTimeout:timeout];

  return v11;
}

- (void)fireWatchdogWithTimer:(id)timer delegate:(id)delegate timeout:(double)timeout elapsedTime:(double)time
{
  *&v32[11] = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  delegateCopy = delegate;
  v12 = [delegateCopy abortContextForTimer:timerCopy];
  if ([timerCopy hasSleepBeenImminentSinceScheduled])
  {
    [v12 setSleepImminentAbortReason];
  }

  kdebug_trace();
  v13 = MEMORY[0x277CCACA8];
  abortReasonString = [v12 abortReasonString];
  explanation = [timerCopy explanation];
  v16 = [v13 stringWithFormat:@"BLS %@ watchdog: %@", abortReasonString, explanation];

  isWatchdogEnabled = [(BLSHWatchdogProvider *)self isWatchdogEnabled];
  v18 = BSIsBeingDebugged();
  v19 = v18;
  if (isWatchdogEnabled && (!v18 || [(BLSHWatchdogProvider *)self isTesting]))
  {
    v20 = bls_diagnostics_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      timeoutCopy2 = timeout;
      v27 = 2114;
      v28 = v16;
      v29 = 2048;
      timeCopy2 = time;
      v31 = 2114;
      *v32 = v12;
      _os_log_error_impl(&dword_21FD11000, v20, OS_LOG_TYPE_ERROR, "%.2lfs watchdog first fired:%{public}@ elapsedTime:%.2lfs abortContext:%{public}@", buf, 0x2Au);
    }

    v24 = 0;
    DRTailspinRequest();
    v21 = 0;
    if (v21)
    {
      v22 = bls_diagnostics_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [BLSHWatchdogProvider fireWatchdogWithTimer:delegate:timeout:elapsedTime:];
      }
    }

    [(BLSHWatchdogProvider *)self _fireWatchdogWithTimer:timerCopy delegate:delegateCopy timeout:v12 elapsedTime:v16 abortContext:3 explanation:timeout remainingRetries:time, &v24];
  }

  else
  {
    v21 = bls_diagnostics_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      timeoutCopy2 = timeout;
      v27 = 2114;
      v28 = v16;
      v29 = 2048;
      timeCopy2 = time;
      v31 = 1024;
      *v32 = isWatchdogEnabled;
      v32[2] = 1024;
      *&v32[3] = v19;
      _os_log_impl(&dword_21FD11000, v21, OS_LOG_TYPE_DEFAULT, "%.2lfs watchdog fired:%{public}@ after elapsed time:%.2lfs watchdogEnabled:%{BOOL}u isBeingDebugged:%{BOOL}u", buf, 0x2Cu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_fireWatchdogWithTimer:(id)timer delegate:(id)delegate timeout:(double)timeout elapsedTime:(double)time abortContext:(id)context explanation:(id)explanation remainingRetries:(unint64_t)retries
{
  v65 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  delegateCopy = delegate;
  contextCopy = context;
  v19 = COERCE_DOUBLE(explanation);
  os_unfair_lock_lock(&self->_lock);
  [(BSAbsoluteMachTimer *)self->_lock_fireRetryTimer invalidate];
  lock_fireRetryTimer = self->_lock_fireRetryTimer;
  self->_lock_fireRetryTimer = 0;

  os_unfair_lock_unlock(&self->_lock);
  v21 = time - timeout;
  if (retries)
  {
    v22 = time - timeout > 2.0;
  }

  else
  {
    v22 = 0;
  }

  v23 = bls_diagnostics_log();
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *location = 134219266;
      v42 = @"tries";
      *&location[4] = timeout;
      if (retries == 2)
      {
        v42 = @"try";
      }

      v57 = 2048;
      v58 = time - timeout;
      v59 = 2048;
      timeCopy = timeout;
      v61 = 2048;
      *v62 = retries - 1;
      *&v62[8] = 2112;
      *&v62[10] = v42;
      v63 = 2114;
      v64 = v19;
      _os_log_error_impl(&dword_21FD11000, v24, OS_LOG_TYPE_ERROR, "%.2lfs watchdog is potential hang. extra time:%.2lfs trying again in %.2lfs %lu %@ left after that %{public}@", location, 0x3Eu);
    }

    objc_initWeak(location, self);
    BSContinuousMachTimeNow();
    v26 = v25;
    os_unfair_lock_lock(&self->_lock);
    v27 = objc_alloc(MEMORY[0x277CF0B50]);
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"retry: %@", *&v19];
    v29 = [v27 initWithIdentifier:v28];
    v30 = self->_lock_fireRetryTimer;
    self->_lock_fireRetryTimer = v29;

    v31 = self->_lock_fireRetryTimer;
    v32 = MEMORY[0x277D85CD0];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke;
    v50[3] = &unk_27841FD10;
    objc_copyWeak(v55, location);
    v51 = timerCopy;
    v52 = delegateCopy;
    v55[1] = *&timeout;
    v55[2] = v26;
    v53 = contextCopy;
    v54 = *&v19;
    v55[3] = retries;
    [(BSAbsoluteMachTimer *)v31 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v50 queue:timeout handler:1.0];

    os_unfair_lock_unlock(&self->_lock);
    objc_destroyWeak(v55);
    objc_destroyWeak(location);
  }

  else
  {
    isTesting = [(BLSHWatchdogProvider *)self isTesting];
    if (isTesting)
    {
      v34 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v34 = -112;
    }

    if (isTesting)
    {
      v35 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v35 = -112;
    }

    if (os_log_type_enabled(v24, v35))
    {
      *location = 134219010;
      *&location[4] = timeout;
      v57 = 2114;
      v58 = v19;
      v59 = 2048;
      timeCopy = time;
      v61 = 1024;
      *v62 = v21 > 2.0;
      *&v62[4] = 2114;
      *&v62[6] = contextCopy;
      _os_log_impl(&dword_21FD11000, v24, v34, "%.2lfs watchdog fired:%{public}@ elapsedTime:%.2lfs isPotentialHang:%{BOOL}u abortContext:%{public}@", location, 0x30u);
    }

    if (v21 > 2.0)
    {
      WriteStackshotReport_async();
    }

    if (!+[BLSHWatchdogProvider ignoreWatchdogAborts](BLSHWatchdogProvider, "ignoreWatchdogAborts") && os_variant_has_internal_diagnostics() && (objc_opt_respondsToSelector() & 1) != 0 && [contextCopy wantsWaitPastFireForCompletionAndTailspin] && (WeakRetained = objc_loadWeakRetained(&self->_providerDelegate), v37 = objc_msgSend(WeakRetained, "isTailspinAvailable"), WeakRetained, v37))
    {
      [BLSHWatchdogProvider setIgnoreWatchdogAborts:1];
      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    if ([(BLSHWatchdogProvider *)self isTesting])
    {
      v39 = 100000000;
    }

    else
    {
      v39 = 1000000000;
    }

    v40 = dispatch_time(0, v39);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke_137;
    block[3] = &unk_27841FD38;
    block[4] = self;
    v44 = *&v19;
    v45 = timerCopy;
    v48 = v38;
    v46 = delegateCopy;
    v47 = contextCopy;
    v49 = time - timeout > 2.0;
    dispatch_after(v40, MEMORY[0x277D85CD0], block);
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  BSContinuousMachTimeNow();
  [WeakRetained _fireWatchdogWithTimer:v2 delegate:v3 timeout:*(a1 + 48) elapsedTime:*(a1 + 56) abortContext:*(a1 + 88) - 1 explanation:v4 remainingRetries:v5 - *(a1 + 80)];
}

void __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke_137(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didFinishDumpingStateForWatchdog:*(a1 + 40)];
  }

  v3 = [*(a1 + 48) isInvalidated];
  if (v3 && (*(a1 + 72) & 1) == 0)
  {
    v5 = bls_diagnostics_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke_137_cold_3(a1, v5);
    }
  }

  else
  {
    v4 = [*(a1 + 56) osInterfaceProvider];
    v5 = [v4 systemSleepMonitor];

    v6 = [v5 aggregateState];
    v7 = (a1 + 40);
    v8 = -[BLSHWatchdogAbortParameters initWithDelegate:abortContext:isPotentialHang:sleepMonitorAggregateState:sleepImminentSinceScheduled:explanation:]([BLSHWatchdogAbortParameters alloc], "initWithDelegate:abortContext:isPotentialHang:sleepMonitorAggregateState:sleepImminentSinceScheduled:explanation:", *(a1 + 56), *(a1 + 64), *(a1 + 73), v6, [*(a1 + 48) hasSleepBeenImminentSinceScheduled], *(a1 + 40));
    if (*(a1 + 72) == 1)
    {
      if (v3)
      {
        v9 = [*(a1 + 48) invalidationReason] != 2;
      }

      else
      {
        v9 = 1;
      }

      v11 = bls_diagnostics_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke_137_cold_2(v9, (a1 + 40), v11);
      }

      [*(a1 + 32) setWaitingwaitingPastFireForCompletionAndTailspin:v8 waitForWatchdogCompletion:v9];
    }

    else if (+[BLSHWatchdogProvider ignoreWatchdogAborts])
    {
      v10 = bls_diagnostics_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke_137_cold_1(v7);
      }
    }

    else
    {
      [*(a1 + 32) _abortForWatchdogFire:v8];
    }
  }
}

- (void)_abortForWatchdogFire:(id)fire
{
  v61 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  abortContext = [fireCopy abortContext];
  isPotentialHang = [fireCopy isPotentialHang];
  sleepMonitorAggregateState = [fireCopy sleepMonitorAggregateState];
  sleepImminentSinceScheduled = [fireCopy sleepImminentSinceScheduled];
  explanation = [fireCopy explanation];
  abortReasonString = [abortContext abortReasonString];
  if (![(BLSHWatchdogProvider *)self isTesting])
  {
    [objc_opt_class() markWatchdogDidFire:explanation abortReason:abortReasonString];
  }

  if (objc_opt_respondsToSelector())
  {
    payload = [abortContext payload];
  }

  else
  {
    payload = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    payloadSize = [abortContext payloadSize];
  }

  else
  {
    payloadSize = 0;
  }

  v10 = 30.0;
  if (os_variant_has_internal_diagnostics() && (objc_opt_respondsToSelector() & 1) != 0 && [abortContext wantsPanic])
  {
    v10 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [abortContext panicDelay];
      if (v11 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
    v13 = [v12 BOOLForKey:@"ignoreWatchdogPanicRequests"];
    if (v13)
    {
      v14 = sleepImminentSinceScheduled;
      v15 = bls_diagnostics_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21FD11000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring request to panic from abortContext due to default", buf, 2u);
      }

      sleepImminentSinceScheduled = v14;
    }

    v16 = abortReasonString;
    v17 = v13 ^ 1;
  }

  else
  {
    v16 = abortReasonString;
    v17 = 0;
  }

  v18 = bls_diagnostics_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v33 = @"abort";
    if (v17)
    {
      v33 = @"panic";
    }

    v43 = v33;
    v34 = [sleepMonitorAggregateState descriptionForTimestamp:{objc_msgSend(fireCopy, "abortTimestamp")}];
    v44 = objc_opt_respondsToSelector();
    if (v44)
    {
      v42 = v34;
      v35 = sleepImminentSinceScheduled;
      v36 = MEMORY[0x277CCACA8];
      hasEnsureFlipbookCurrent = [abortContext hasEnsureFlipbookCurrent];
      v37 = v36;
      sleepImminentSinceScheduled = v35;
      v34 = v42;
      v38 = [v37 stringWithFormat:@" ensFlipCur:%u", hasEnsureFlipbookCurrent];
    }

    else
    {
      v38 = &stru_283373E60;
    }

    *buf = 138544130;
    v57 = v43;
    v58 = 2114;
    *v59 = v34;
    *&v59[8] = 1024;
    *v60 = sleepImminentSinceScheduled;
    *&v60[4] = 2114;
    v40 = v38;
    *&v60[6] = v38;
    _os_log_error_impl(&dword_21FD11000, v18, OS_LOG_TYPE_ERROR, "watchdog pre-%{public}@: %{public}@ slImmSinceSched:%{BOOL}u%{public}@", buf, 0x26u);
    if (v44)
    {
    }
  }

  v19 = bls_backlight_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

  v21 = bls_diagnostics_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v39 = @"aborting";
    *buf = 138544130;
    if (v17)
    {
      v39 = @"panicking";
    }

    v57 = v39;
    v58 = 1024;
    *v59 = v20;
    *&v59[4] = 1024;
    *&v59[6] = isPotentialHang;
    *v60 = 2114;
    *&v60[2] = explanation;
    _os_log_error_impl(&dword_21FD11000, v21, OS_LOG_TYPE_ERROR, "%{public}@ for watchdog. BLS backlight debug logging enabled:%{BOOL}u isPotentialHang:%{BOOL}u %{public}@", buf, 0x22u);
  }

  [(BSInvalidatable *)self->_lock_forceOverdueAbortTimer invalidate];
  lock_forceOverdueAbortTimer = self->_lock_forceOverdueAbortTimer;
  self->_lock_forceOverdueAbortTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __46__BLSHWatchdogProvider__abortForWatchdogFire___block_invoke;
  v50[3] = &unk_27841FD60;
  v24 = WeakRetained;
  v51 = v24;
  v25 = abortContext;
  v52 = v25;
  v54 = payload;
  v55 = payloadSize;
  v26 = explanation;
  v53 = v26;
  v27 = MEMORY[0x223D70730](v50);
  v28 = v27;
  if (v17)
  {
    [BLSHWatchdogProvider setIgnoreWatchdogAborts:1];
    v29 = MEMORY[0x277CCACA8];
    abortReasonString2 = [v25 abortReasonString];
    v31 = [v29 stringWithFormat:@"panicking for BLS %@ watchdog. BLS backlight debug logging enabled:%u %@ abortContext:%@", abortReasonString2, v20, v26, v25];

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __46__BLSHWatchdogProvider__abortForWatchdogFire___block_invoke_2;
    v48[3] = &unk_27841F8C0;
    v49 = v28;
    [v24 panicForWatchdog:v31 withDelay:v48 completion:v10];
  }

  else
  {
    (*(v27 + 16))(v27, 0);
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __46__BLSHWatchdogProvider__abortForWatchdogFire___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) abortForWatchdog:objc_msgSend(*(a1 + 40) payload:"abortReason") payloadSize:*(a1 + 56) explanation:{*(a1 + 64), *(a1 + 48)}];
    v2 = vars8;
  }

  return [BLSHWatchdogProvider setIgnoreWatchdogAborts:0];
}

- (void)_checkForReadyToAbortAfterWaitingPastFire
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_waitingAbortParams;
  lock_waitingForWatchdogCompletion = self->_lock_waitingForWatchdogCompletion;
  lock_waitingForTailspin = self->_lock_waitingForTailspin;
  v6 = !self->_lock_waitingForWatchdogCompletion && lock_waitingForTailspin && !self->_lock_startedTailspin;
  os_unfair_lock_unlock(&self->_lock);
  v7 = bls_diagnostics_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    explanation = [(BLSHWatchdogAbortParameters *)v3 explanation];
    v10[0] = 67109890;
    v10[1] = v6;
    v11 = 1024;
    v12 = lock_waitingForTailspin;
    v13 = 1024;
    v14 = lock_waitingForWatchdogCompletion;
    v15 = 2114;
    v16 = explanation;
    _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "_checkForReadyToAbortAfterWaitingPastFire: shouldStartTailspin:%{BOOL}u waitingForTailspin:%{BOOL}u waitingForWatchdogCompletion:%{BOOL}u watchdog:%{public}@", v10, 0x1Eu);
  }

  if (v6)
  {
    [(BLSHWatchdogProvider *)self _startWritingTailspin];
  }

  else if (!lock_waitingForTailspin && !lock_waitingForWatchdogCompletion)
  {
    [(BLSHWatchdogProvider *)self _abortForWatchdogFire:v3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_giveUpWaitingForWatchdogCompletionAbortWhileWaitingPastFire:(id)fire
{
  fireCopy = fire;
  isWaitingwaitingPastFireForCompletionAndTailspin = [(BLSHWatchdogProvider *)self isWaitingwaitingPastFireForCompletionAndTailspin];
  v6 = bls_diagnostics_log();
  v7 = v6;
  if (isWaitingwaitingPastFireForCompletionAndTailspin)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BLSHWatchdogProvider _giveUpWaitingForWatchdogCompletionAbortWhileWaitingPastFire:];
    }

    [(BLSHWatchdogProvider *)self _clearIsWaitingForWatchdogCompletion];
    [(BLSHWatchdogProvider *)self _checkForReadyToAbortAfterWaitingPastFire];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [BLSHWatchdogProvider _giveUpWaitingForWatchdogCompletionAbortWhileWaitingPastFire:];
    }
  }
}

- (void)clearWatchdogWithExplanation:(id)explanation reason:(unint64_t)reason timeout:(double)timeout elapsedTime:(double)time
{
  v39 = *MEMORY[0x277D85DE8];
  explanationCopy = explanation;
  isWatchdogEnabled = [(BLSHWatchdogProvider *)self isWatchdogEnabled];
  v12 = BSIsBeingDebugged();
  isWaitingwaitingPastFireForCompletionAndTailspin = [(BLSHWatchdogProvider *)self isWaitingwaitingPastFireForCompletionAndTailspin];
  if (!isWaitingwaitingPastFireForCompletionAndTailspin)
  {
    goto LABEL_6;
  }

  if (reason == 2)
  {
    [(BLSHWatchdogProvider *)self _clearIsWaitingForWatchdogCompletion];
    v14 = bls_diagnostics_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BLSHWatchdogProvider clearWatchdogWithExplanation:reason:timeout:elapsedTime:];
    }

    [(BLSHWatchdogProvider *)self _checkForReadyToAbortAfterWaitingPastFire];
LABEL_6:
    if (time <= timeout)
    {
      v15 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      kdebug_trace();
      v15 = OS_LOG_TYPE_DEFAULT;
    }

    v16 = bls_diagnostics_log();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = @"completed";
      if (reason == 1)
      {
        v17 = @"replaced";
      }

      v18 = v17;
      v25 = 134219522;
      timeoutCopy = timeout;
      v27 = 2114;
      v28 = explanationCopy;
      v29 = 2048;
      timeCopy = time;
      v31 = 1024;
      v32 = isWaitingwaitingPastFireForCompletionAndTailspin;
      v33 = 2114;
      v34 = v18;
      v35 = 1024;
      v36 = isWatchdogEnabled;
      v37 = 1024;
      v38 = v12;
      v19 = "%.2lfs watchdog invalidated:%{public}@ elapsedTime:%.2lfs waitingPastFire:%{BOOL}u, clearReason:%{public}@ watchdogEnabled:%{BOOL}u isBeingDebugged:%{BOOL}u";
      v20 = v16;
      v21 = v15;
      v22 = 60;
LABEL_17:
      _os_log_impl(&dword_21FD11000, v20, v21, v19, &v25, v22);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v16 = bls_diagnostics_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"completed";
    if (reason == 1)
    {
      v23 = @"replaced";
    }

    v18 = v23;
    v25 = 138543362;
    timeoutCopy = *&v18;
    v19 = "Ignoring %{public}@ because isWaitingwaitingPastFireForCompletionAndTailspin:YES";
    v20 = v16;
    v21 = OS_LOG_TYPE_DEFAULT;
    v22 = 12;
    goto LABEL_17;
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_clearIsWaitingForWatchdogCompletion
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_waitingForWatchdogCompletion = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)waitingPastFireForCompletionAndTailspinAbortParams
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_waitingAbortParams;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setWaitingwaitingPastFireForCompletionAndTailspin:(id)tailspin waitForWatchdogCompletion:(BOOL)completion
{
  tailspinCopy = tailspin;
  os_unfair_lock_lock(&self->_lock);
  lock_waitingAbortParams = self->_lock_waitingAbortParams;
  self->_lock_waitingAbortParams = tailspinCopy;
  v8 = tailspinCopy;

  self->_lock_waitingForWatchdogCompletion = completion;
  self->_lock_waitingForTailspin = 1;
  explanation = [(BLSHWatchdogAbortParameters *)v8 explanation];
  [(BSInvalidatable *)self->_lock_forceOverdueAbortTimer invalidate];
  selfCopy = self;
  delegate = [(BLSHWatchdogAbortParameters *)v8 delegate];
  osInterfaceProvider = [delegate osInterfaceProvider];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __100__BLSHWatchdogProvider_setWaitingwaitingPastFireForCompletionAndTailspin_waitForWatchdogCompletion___block_invoke;
  v19 = &unk_27841FBE0;
  v20 = selfCopy;
  v21 = explanation;
  v13 = explanation;
  v14 = [osInterfaceProvider scheduledTimerWithIdentifier:@"watchdogprovider.waitingpastfire" interval:&v16 leewayInterval:120.0 handler:5.0];
  lock_forceOverdueAbortTimer = self->_lock_forceOverdueAbortTimer;
  self->_lock_forceOverdueAbortTimer = v14;

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHWatchdogProvider *)selfCopy _checkForReadyToAbortAfterWaitingPastFire:v16];
}

- (void)_startWritingTailspin
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_startedTailspin = 1;
  lock_waitingAbortParams = self->_lock_waitingAbortParams;
  selfCopy = self;
  explanation = [(BLSHWatchdogAbortParameters *)lock_waitingAbortParams explanation];
  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_providerDelegate);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__BLSHWatchdogProvider__startWritingTailspin__block_invoke;
  v7[3] = &unk_27841FD88;
  v7[4] = selfCopy;
  [WeakRetained writeTailspinForWatchdog:explanation completion:v7];
}

void __45__BLSHWatchdogProvider__startWritingTailspin__block_invoke(uint64_t a1, void *a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = bls_diagnostics_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = a3;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, "tailspin completed: succeeded:%{BOOL}u %{public}@", v10, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_lock(v7 + 10);
    LOBYTE(v8[6]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v7 + 10);
    [(os_unfair_lock_s *)v8 _checkForReadyToAbortAfterWaitingPastFire];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTesting
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BLSHWatchdogProvider_isTesting__block_invoke;
  block[3] = &unk_27841E650;
  block[4] = self;
  if (isTesting_onceToken != -1)
  {
    dispatch_once(&isTesting_onceToken, block);
  }

  return isTesting___isTesting;
}

void __33__BLSHWatchdogProvider_isTesting__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  if (objc_opt_respondsToSelector())
  {
    v1 = [WeakRetained isTesting];
  }

  else
  {
    v1 = 0;
  }

  isTesting___isTesting = v1;
}

+ (void)markWatchdogDidFire:(id)fire abortReason:(id)reason
{
  v17[5] = *MEMORY[0x277D85DE8];
  v16[0] = @"BLSHWatchdogDidFireDate";
  v5 = MEMORY[0x277CBEAA8];
  reasonCopy = reason;
  fireCopy = fire;
  date = [v5 date];
  v17[0] = date;
  v16[1] = @"BLSHWatchdogDidFireBuildVersion";
  v9 = MGCopyAnswer();
  v17[1] = v9;
  v16[2] = @"BLSHWatchdogDidFireDeviceType";
  v10 = MGCopyAnswer();
  v17[2] = v10;
  v17[3] = fireCopy;
  v16[3] = @"BLSHWatchdogDidFireExplanation";
  v16[4] = @"BLSHWatchdogDidFireAbortReason";
  v17[4] = reasonCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  v12 = objc_alloc(MEMORY[0x277CBEBD0]);
  v13 = [v12 initWithSuiteName:@"com.apple.BacklightServices"];
  [v13 setObject:v11 forKey:@"BLSHWatchdogDidFire"];

  if (!CFPreferencesAppSynchronize(@"com.apple.BacklightServices"))
  {
    v14 = bls_diagnostics_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[BLSHWatchdogProvider markWatchdogDidFire:abortReason:];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (BOOL)checkForWatchdogDidFire:(BOOL)fire
{
  fireCopy = fire;
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  v6 = [v5 dictionaryForKey:@"BLSHWatchdogDidFire"];
  v7 = v6;
  if (v6)
  {
    v8 = !fireCopy;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [v5 removeObjectForKey:@"BLSHWatchdogDidFire"];
    goto LABEL_7;
  }

  if (v6)
  {
LABEL_7:
    v9 = [[BLSHWatchdogDidFireDetails alloc] initWithWatchdogDidFireDictionary:v7];
    v10 = bls_diagnostics_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(BLSHWatchdogProvider *)v9 checkForWatchdogDidFire:fireCopy, v10];
    }

    if (!os_variant_has_internal_diagnostics())
    {
      goto LABEL_20;
    }

    if ([BLSHInternalTapToRadarIgnorer shouldIgnoreDesignation:1])
    {
      +[BLSHWatchdogProvider resetWatchdogDidFire];
      v11 = bls_diagnostics_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[BLSHWatchdogProvider checkForWatchdogDidFire:];
      }
    }

    else
    {
      date = [(BLSHWatchdogDidFireDetails *)v9 date];
      [date timeIntervalSinceNow];
      v14 = v13;

      if (v14 >= -86400.0)
      {
        v15 = bls_diagnostics_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[BLSHWatchdogProvider checkForWatchdogDidFire:];
        }

        [self showWatchdogDidFireAlert:v9];
        goto LABEL_20;
      }

      +[BLSHWatchdogProvider resetWatchdogDidFire];
      v11 = bls_diagnostics_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(BLSHWatchdogProvider *)v9 checkForWatchdogDidFire:v11];
      }
    }

LABEL_20:
  }

  return v7 != 0;
}

+ (void)resetWatchdogDidFire
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
  [v2 removeObjectForKey:@"BLSHWatchdogDidFire"];
}

+ (void)showWatchdogDidFireAlert:(id)alert
{
  v3 = MEMORY[0x277CCACA8];
  alertCopy = alert;
  device = [alertCopy device];
  buildVersion = [alertCopy buildVersion];
  abortReasonString = [alertCopy abortReasonString];
  if ([alertCopy debugLogsEnabled])
  {
    v8 = @"with";
  }

  else
  {
    v8 = @"without";
  }

  date = [alertCopy date];
  bls_loggingString = [date bls_loggingString];
  v11 = [v3 stringWithFormat:@"%@/%@: BacklightServices %@ watchdog fired %@ debug logs at %@", device, buildVersion, abortReasonString, v8, bls_loggingString];
  v32 = v11;

  v12 = MEMORY[0x277CCACA8];
  abortReasonString2 = [alertCopy abortReasonString];
  if ([alertCopy debugLogsEnabled])
  {
    v14 = @"with";
  }

  else
  {
    v14 = @"without";
  }

  date2 = [alertCopy date];
  bls_loggingString2 = [date2 bls_loggingString];
  buildVersion2 = [alertCopy buildVersion];
  explanation = [alertCopy explanation];
  v19 = [v12 stringWithFormat:@"BacklightServices %@ watchdog fired %@ debug logs at %@ on %@\n\nExplanation: %@", abortReasonString2, v14, bls_loggingString2, buildVersion2, explanation];

  v20 = [[BLSHTapToRadarDescriptor alloc] initWithDesignation:1 radarTitle:v11 radarDescription:v19];
  date3 = [alertCopy date];
  [(BLSHTapToRadarDescriptor *)v20 setTimeOfIssue:date3];

  v22 = MEMORY[0x277CCACA8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  if ([alertCopy debugLogsEnabled])
  {
    v25 = @"with";
  }

  else
  {
    v25 = @"without";
  }

  date4 = [alertCopy date];
  bls_loggingString3 = [date4 bls_loggingString];
  buildVersion3 = [alertCopy buildVersion];

  v29 = [v22 stringWithFormat:@"%@ abort: BacklightServices watchdog fired %@ debug logs at %@ on %@.\nPlease file a radar against BacklightServices | All with a sysdiagnose.\n\nTo disable this prompt from CLI:\n\nlogin -f mobile defaults write com.apple.BacklightServices IgnoredTapToRadarDesignations -array -int 0", processName, v25, bls_loggingString3, buildVersion3];
  [(BLSHTapToRadarDescriptor *)v20 setTtrPromptMessage:v29];

  [(BLSHTapToRadarDescriptor *)v20 setTtrDisplayReason:@"BacklightServices watchdog fired"];
  v30 = +[BLSHInternalTapToRadarManager sharedTapToRadarManager];
  v31 = bls_diagnostics_log();
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __49__BLSHWatchdogProvider_showWatchdogDidFireAlert___block_invoke;
  v34[3] = &__block_descriptor_40_e8_v12__0B8l;
  v34[4] = self;
  [v30 requestTapToRadar:v20 log:v31 completion:v34];
}

void __49__BLSHWatchdogProvider_showWatchdogDidFireAlert___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = bls_diagnostics_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __49__BLSHWatchdogProvider_showWatchdogDidFireAlert___block_invoke_cold_1();
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), _blsWatchdogLockStatusDidChange, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 resetWatchdogDidFire];
  }
}

- (void)scheduleWatchdogWithDelegate:(uint64_t)a1 explanation:(NSObject *)a2 timeout:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a3;
  v6 = 2114;
  v7 = a1;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "scheduling %.1fs watchdog %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)fireWatchdogWithTimer:delegate:timeout:elapsedTime:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke_137_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke_137_cold_2(char a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = &stru_283373E60;
  v4 = *a2;
  if (a1)
  {
    v3 = @" and overdue operation finish";
  }

  v6 = 138543618;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_21FD11000, log, OS_LOG_TYPE_ERROR, "will wait for watchdog abort until tailspin%{public}@: %{public}@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __118__BLSHWatchdogProvider__fireWatchdogWithTimer_delegate_timeout_elapsedTime_abortContext_explanation_remainingRetries___block_invoke_137_cold_3(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_fault_impl(&dword_21FD11000, a2, OS_LOG_TYPE_FAULT, "watchdog invalidated after firing while waiting for state dump. Carousel's main thread probably hung for a significant amount of time:%{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_giveUpWaitingForWatchdogCompletionAbortWhileWaitingPastFire:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearWatchdogWithExplanation:reason:timeout:elapsedTime:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)markWatchdogDidFire:abortReason:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)checkForWatchdogDidFire:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 date];
  v7 = [v6 bls_loggingString];
  v8 = [a1 buildVersion];
  v10 = 138543874;
  v11 = v7;
  v12 = 2114;
  v13 = v8;
  v14 = 1024;
  v15 = a2 & 1;
  _os_log_error_impl(&dword_21FD11000, a3, OS_LOG_TYPE_ERROR, "watchdog did fire at %{public}@ on build %{public}@, reset:%{BOOL}u", &v10, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)checkForWatchdogDidFire:.cold.2()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)checkForWatchdogDidFire:(void *)a1 .cold.3(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 date];
  v4 = [v3 bls_loggingString];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "not prompting to file radar for BLS watchdog from %{public}@ because it's too old", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)checkForWatchdogDidFire:.cold.4()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__BLSHWatchdogProvider_showWatchdogDidFireAlert___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end
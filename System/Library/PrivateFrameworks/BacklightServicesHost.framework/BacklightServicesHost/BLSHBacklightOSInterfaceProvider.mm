@interface BLSHBacklightOSInterfaceProvider
+ (BLSHBacklightOSInterfaceProvider)sharedProvider;
+ (void)setSharedProvider:(id)provider;
- (BLSHBacklightOSInterfaceProvider)initWithPlatformProvider:(id)provider;
- (BLSHSuppressionEvent)lastSuppressionEvent;
- (BOOL)isFlipbookTransparent;
- (BOOL)isSuppressionServiceActive;
- (double)timeoutForWatchdogType:(void *)type;
- (id)abortContextForTimer:(id)timer;
- (id)acquireDisplayPowerAssertionForReason:(int64_t)reason;
- (id)addSceneObserver:(id)observer forSceneIdentityToken:(id)token;
- (id)createDisplayPowerResourceHintWithState:(unint64_t)state;
- (id)createPowerAssertionWithIdentifier:(id)identifier;
- (id)createSystemActivityAssertionWithIdentifier:(id)identifier configurator:(id)configurator;
- (id)identifier;
- (id)observeSignificantTimeChangeWithIdentifier:(id)identifier handler:(id)handler;
- (id)removeSceneObserver:(id)observer forSceneIdentityToken:(id)token;
- (id)sceneWithIdentityToken:(id)token;
- (int64_t)caDisplayState;
- (int64_t)cbDisplayMode;
- (int64_t)cbFlipbookState;
- (void)_didCompleteTransitionToDisplayMode:(void *)mode withError:;
- (void)abortForWatchdog:(unint64_t)watchdog payload:(void *)payload payloadSize:(unsigned int)size explanation:(id)explanation;
- (void)clearCAWatchdog;
- (void)deregisterSceneWorkspace:(id)workspace;
- (void)didCompleteSwitchToFlipbookState:(int64_t)state withError:(id)error;
- (void)didCompleteTransitionToDisplayMode:(int64_t)mode withError:(id)error;
- (void)didDetectSignificantUserInteraction;
- (void)dispatchToMainQueueAfterSecondsDelay:(double)delay identifier:(id)identifier block:(id)block;
- (void)endSuppressionService;
- (void)notifyDisplayBlankedIfChangedForCADisplayState:(uint64_t)state;
- (void)panicForWatchdog:(id)watchdog withDelay:(double)delay completion:(id)completion;
- (void)registerHandlersForService:(id)service;
- (void)registerSceneWorkspace:(id)workspace;
- (void)scheduleOSIPWatchdogWithExplanation:(unint64_t)explanation type:;
- (void)setCATransitionsDelayForTesting:(double)testing;
- (void)setCBTransitionsDelayForTesting:(double)testing;
- (void)setFlipbookTransparent:(BOOL)transparent;
- (void)setLastSuppressionEvent:(uint64_t)event;
- (void)setSuppressionServiceActive:(uint64_t)active;
- (void)startSuppressionServiceWithHandler:(id)handler;
- (void)switchToFlipbookState:(int64_t)state;
- (void)transitionToCADisplayState:(int64_t)state;
- (void)transitionToDisplayMode:(int64_t)mode withDuration:(double)duration;
- (void)writeTailspinForWatchdog:(id)watchdog completion:(id)completion;
@end

@implementation BLSHBacklightOSInterfaceProvider

- (int64_t)caDisplayState
{
  os_unfair_lock_lock(&self->_lock);
  lock_caDisplayState = self->_lock_caDisplayState;
  os_unfair_lock_unlock(&self->_lock);
  return lock_caDisplayState;
}

- (int64_t)cbDisplayMode
{
  os_unfair_lock_lock(&self->_lock);
  lock_cbDisplayMode = self->_lock_cbDisplayMode;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cbDisplayMode;
}

- (int64_t)cbFlipbookState
{
  os_unfair_lock_lock(&self->_lock);
  lock_cbFlipbookState = self->_lock_cbFlipbookState;
  os_unfair_lock_unlock(&self->_lock);
  return lock_cbFlipbookState;
}

- (void)endSuppressionService
{
  [(BLSHBacklightOSInterfaceProvider *)self setSuppressionServiceActive:?];
  [(CMSuppressionManager *)self->_suppressionManager stopSuppressionUpdates];
  [(CMSuppressionManager *)self->_suppressionManager stopService];
  v3 = [[BLSHSuppressionEvent alloc] initWithType:2 reason:0 timestamp:mach_continuous_time()];
  [(BLSHBacklightOSInterfaceProvider *)self setLastSuppressionEvent:v3];
}

- (BOOL)isSuppressionServiceActive
{
  os_unfair_lock_lock(&self->_lock);
  lock_suppressionServiceActive = self->_lock_suppressionServiceActive;
  os_unfair_lock_unlock(&self->_lock);
  return lock_suppressionServiceActive;
}

- (void)didDetectSignificantUserInteraction
{
  [(CMSuppressionManager *)self->_suppressionManager didDetectSignificantUserInteraction];
  [(BLSHWatchdogProvider *)self->_watchdogProvider didDetectSignificantUserInteraction];
  criticalAssertProvider = self->_criticalAssertProvider;

  [(BLSHCriticalAssertProvider *)criticalAssertProvider didDetectSignificantUserInteraction];
}

- (void)clearCAWatchdog
{
  if (self)
  {
    os_unfair_lock_lock((self + 88));
    [*(self + 152) invalidate:2];
    v2 = *(self + 152);
    *(self + 152) = 0;

    os_unfair_lock_unlock((self + 88));
  }
}

+ (BLSHBacklightOSInterfaceProvider)sharedProvider
{
  os_unfair_lock_lock(&_classLock);
  v2 = _sharedProvider;
  os_unfair_lock_unlock(&_classLock);

  return v2;
}

+ (void)setSharedProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_lock(&_classLock);
  v4 = _sharedProvider;
  _sharedProvider = providerCopy;

  os_unfair_lock_unlock(&_classLock);
}

- (BLSHBacklightOSInterfaceProvider)initWithPlatformProvider:(id)provider
{
  v79[2] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v67.receiver = self;
  v67.super_class = BLSHBacklightOSInterfaceProvider;
  v7 = [(BLSHBacklightOSInterfaceProvider *)&v67 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v12 = *(v8 + 32);
    *(v8 + 32) = dictionary;

    v13 = [MEMORY[0x277CBEB58] set];
    v14 = *(v8 + 40);
    *(v8 + 40) = v13;

    objc_storeStrong((v8 + 8), provider);
    v15 = [[BLSHWatchdogProvider alloc] initWithDelegate:v8];
    v16 = *(v8 + 16);
    *(v8 + 16) = v15;

    v17 = objc_alloc_init(BLSHCriticalAssertProvider);
    v18 = *(v8 + 24);
    *(v8 + 24) = v17;

    v19 = objc_opt_respondsToSelector();
    LODWORD(v20) = 1.0;
    if (v19)
    {
      [providerCopy backlightDimmedFactor];
    }

    *(v8 + 136) = LODWORD(v20);
    if (MGGetBoolAnswer())
    {
      LOBYTE(bOOLValue2) = MGGetBoolAnswer();
      LOBYTE(bOOLValue) = 1;
    }

    else
    {
      LOBYTE(bOOLValue2) = MGGetBoolAnswer();
      LOBYTE(bOOLValue) = bOOLValue2;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v23 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
      v24 = [v23 valueForKey:@"deviceSupportsAlwaysOnOverride"];
      if (v24 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        bOOLValue = [v24 BOOLValue];
        v25 = bls_backlight_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v69 = v8;
          v70 = 1024;
          LODWORD(v71) = bOOLValue;
          _os_log_impl(&dword_21FD11000, v25, OS_LOG_TYPE_DEFAULT, "OSIP:%p deviceSupportsAlwaysOnOverride set to %{BOOL}u - use 'login -f mobile defaults delete com.apple.BacklightServices deviceSupportsAlwaysOnOverride' to remove", buf, 0x12u);
        }
      }

      v26 = [v23 valueForKey:@"deviceSupportsAlwaysOnFlipbookOverride"];

      if (v26 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        bOOLValue2 = [v26 BOOLValue];
        v27 = bls_backlight_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v69 = v8;
          v70 = 1024;
          LODWORD(v71) = bOOLValue2;
          _os_log_impl(&dword_21FD11000, v27, OS_LOG_TYPE_DEFAULT, "OSIP:%p deviceSupportsAlwaysOnFlipbookOverride set to %{BOOL}u - use 'login -f mobile defaults delete com.apple.BacklightServices deviceSupportsAlwaysOnFlipbookOverride' to remove", buf, 0x12u);
        }
      }

      v78[0] = @"flipbookDiagnosticsFrameLimit";
      v78[1] = @"flipbookDiagnosticsMemoryLimit";
      v79[0] = &unk_28338DE78;
      v79[1] = &unk_28338DE90;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
      [v23 registerDefaults:v28];

      *(v8 + 192) = [v23 integerForKey:@"flipbookDiagnosticsFrameLimit"];
      *(v8 + 200) = [v23 integerForKey:@"flipbookDiagnosticsMemoryLimit"] << 20;
    }

    *(v8 + 130) = bOOLValue;
    *(v8 + 131) = bOOLValue2;
    *(v8 + 132) = bOOLValue2;
    mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
    stateControl = [mainDisplay stateControl];
    v31 = *(v8 + 64);
    *(v8 + 64) = stateControl;

    *(v8 + 96) = [*(v8 + 64) displayState];
    if (!*(v8 + 64))
    {
      [BLSHBacklightOSInterfaceProvider initWithPlatformProvider:a2];
    }

    v32 = objc_alloc_init(MEMORY[0x277CFD3B0]);
    [v32 activate];
    supported = [v32 supported];
    v34 = supported;
    if (supported)
    {
      v35 = (v8 + 133);
      *(v8 + 133) = supported;
      *(v8 + 120) = 3;
      objc_storeStrong((v8 + 56), v32);
      *(v8 + 112) = [*(v8 + 56) displayMode];
      [*(v8 + 56) setCompletionDelegate:v8];
    }

    else
    {
      [v32 cancel];
      v35 = (v8 + 133);
      *(v8 + 133) = v34;
      v36 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:@"backlightServices.setCBDisplayMode"];
      v37 = *(v8 + 80);
      *(v8 + 80) = v36;

      *(v8 + 120) = 3;
      BKSHIDServicesGetBacklightFactor();
      v39 = fabsf(v38);
      v40 = 4;
      if (fabsf(v38 + -1.0) <= 0.001)
      {
        v40 = 3;
      }

      if (v39 <= 0.001)
      {
        v40 = 0;
      }

      *(v8 + 112) = v40;
    }

    *(v8 + 104) = *(v8 + 96) != 1;
    [(BLSHBacklightOSInterfaceProvider *)v8 notifyDisplayBlankedIfChangedForCADisplayState:?];
    isAvailable = [MEMORY[0x277CC1D50] isAvailable];
    v42 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
    v43 = [v42 BOOLForKey:@"disableSuppression"];

    if (v43)
    {
      v44 = bls_backlight_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v69 = v8;
        _os_log_impl(&dword_21FD11000, v44, OS_LOG_TYPE_DEFAULT, "OSIP:%p disableSuppression set to YES - use 'login -f mobile defaults delete com.apple.BacklightServices disableSuppression' to remove", buf, 0xCu);
      }

      isAvailable = 0;
    }

    v45 = bls_backlight_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(v8 + 112);
      if (v46 > 4)
      {
        v47 = @"Invalid";
      }

      else
      {
        v47 = off_27841E908[v46];
      }

      v48 = *(v8 + 130);
      v49 = *(v8 + 131);
      v50 = *v35;
      *buf = 134219266;
      v69 = v8;
      v70 = 2114;
      v71 = v47;
      v72 = 1024;
      *v73 = v48;
      *&v73[4] = 1024;
      *&v73[6] = v49;
      v74 = 1024;
      v75 = v50;
      v76 = 1024;
      v77 = isAvailable;
      _os_log_impl(&dword_21FD11000, v45, OS_LOG_TYPE_DEFAULT, "OSIP:%p startup cbDisplayMode:%{public}@ dsao:%{BOOL}u dsaof:%{BOOL}u dscs:%{BOOL}u sup:%{BOOL}u", buf, 0x2Eu);
    }

    v51 = [[BLSHSuppressionEvent alloc] initWithType:2 reason:0 timestamp:mach_continuous_time()];
    v52 = *(v8 + 48);
    *(v8 + 48) = v51;

    if (isAvailable)
    {
      v53 = [objc_alloc(MEMORY[0x277CC1D50]) initWithClientType:1];
      v54 = *(v8 + 72);
      *(v8 + 72) = v53;
    }

    if (*v35)
    {
      v56 = *(v8 + 112);
      if (v56 > 4)
      {
        v57 = @"Invalid";
      }

      else
      {
        v57 = off_27841E908[v56];
      }

      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"OSIP:%p initWithPlatformProvider: transitionToDisplayMode:%@ withDuration:0", v8, v57];
      [(BLSHBacklightOSInterfaceProvider *)v8 scheduleOSIPWatchdogWithExplanation:v58 type:0];
      v59 = *(v8 + 56);
      v60 = *(v8 + 112);
      v66 = 0;
      [v59 transitionToDisplayMode:v60 withDuration:&v66 error:0.0];
      v61 = v66;
      if (v61)
      {
        v62 = bls_backlight_log();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          v63 = *(v8 + 112);
          if (v63 > 4)
          {
            v64 = @"Invalid";
          }

          else
          {
            v64 = off_27841E908[v63];
          }

          bls_loggingString = [v61 bls_loggingString];
          *buf = 134218498;
          v69 = v8;
          v70 = 2114;
          v71 = v64;
          v72 = 2114;
          *v73 = bls_loggingString;
          _os_log_fault_impl(&dword_21FD11000, v62, OS_LOG_TYPE_FAULT, "OSIP:%p could not transitionToDisplayMode:%{public}@ during init error:%{public}@", buf, 0x20u);
        }
      }
    }

    if (*(v8 + 112) == 4)
    {
      v55 = *(v8 + 136);
    }

    if (*v35 == 1)
    {
      BKSHIDServicesNotifyBacklightFactorWithFadeDurationAsync();
    }

    else
    {
      BKSHIDServicesSetBacklightFactorWithFadeDurationAsync();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)registerHandlersForService:(id)service
{
  serviceCopy = service;
  v5 = [BLSHTransparentFlipbookAttributeHandler registerHandlerForService:"registerHandlerForService:provider:" provider:?];
  if (!v5)
  {
    [BLSHBacklightOSInterfaceProvider registerHandlersForService:a2];
  }

  v6 = v5;
  [(BLSHWatchdogProvider *)self->_watchdogProvider registerHandlersForService:serviceCopy];
}

- (void)registerSceneWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_sceneWorkspaces addObject:workspaceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)deregisterSceneWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_sceneWorkspaces removeObject:workspaceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)sceneWithIdentityToken:(id)token
{
  v20 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_lock_sceneWorkspaces;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) sceneWithIdentityToken:{tokenCopy, v15}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  if (!v11)
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v11 = [mEMORY[0x277D0AAD8] sceneFromIdentityToken:tokenCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)dispatchToMainQueueAfterSecondsDelay:(double)delay identifier:(id)identifier block:(id)block
{
  v5 = (delay * 1000000000.0);
  block = block;
  v6 = dispatch_time(0, v5);
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (void)transitionToDisplayMode:(int64_t)mode withDuration:(double)duration
{
  v45 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_displayStateClientSupported && (self->_lock_cbFlipbookState & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    if (mode > 4)
    {
      v31 = @"Invalid";
    }

    else
    {
      v31 = off_27841E908[mode];
    }

    v32 = self->_lock_cbFlipbookState - 1;
    if (v32 > 2)
    {
      v33 = @"WillTurnOn";
    }

    else
    {
      v33 = off_27841E930[v32];
    }

    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot change cb display mode to %@, flipbook state:%@ is transitioning", v31, v33];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(BLSHBacklightOSInterfaceProvider *)a2 transitionToDisplayMode:v34 withDuration:?];
    }

    [v34 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21FD22020);
  }

  lock_cbDisplayMode = self->_lock_cbDisplayMode;
  v9 = mode - 1;
  if ((lock_cbDisplayMode - 1) > 3)
  {
    v36 = 0;
  }

  else
  {
    v36 = qword_21FDA5230[lock_cbDisplayMode - 1];
  }

  if (v9 > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_21FDA5230[v9];
  }

  deviceSupportsAlwaysOn = self->_deviceSupportsAlwaysOn;
  self->_lock_cbDisplayMode = mode;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_cbDisplayMode != mode)
  {
    v12 = (((mode - 1) < 2) ^ ((lock_cbDisplayMode - 1) < 2)) & deviceSupportsAlwaysOn;
    if (self->_displayStateClientSupported)
    {
      v20 = bls_backlight_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        if (mode > 4)
        {
          v21 = @"Invalid";
        }

        else
        {
          v21 = off_27841E908[mode];
        }

        *buf = 134218498;
        selfCopy4 = self;
        v41 = 2114;
        *v42 = v21;
        *&v42[8] = 2048;
        *&v42[10] = duration;
        _os_log_debug_impl(&dword_21FD11000, v20, OS_LOG_TYPE_DEBUG, "OSIP:%p transitionToDisplayMode:%{public}@ withDuration:%fs", buf, 0x20u);
      }

      if (mode > 4)
      {
        v24 = @"Invalid";
      }

      else
      {
        v24 = off_27841E908[mode];
      }

      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"OSIP:%p transitionToDisplayMode:%@ withDuration:%fs", self, v24, *&duration];
      [(BLSHBacklightOSInterfaceProvider *)self scheduleOSIPWatchdogWithExplanation:v25 type:0];
      displayStateClient = self->_displayStateClient;
      v38 = 0;
      [(CBDisplayStateClient *)displayStateClient transitionToDisplayMode:mode withDuration:&v38 error:duration];
      v27 = v38;
      if (v27)
      {
        v28 = bls_backlight_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          if (mode > 4)
          {
            v29 = @"Invalid";
          }

          else
          {
            v29 = off_27841E908[mode];
          }

          v35 = v29;
          bls_loggingString = [v27 bls_loggingString];
          *buf = 134218498;
          selfCopy4 = self;
          v41 = 2114;
          *v42 = v35;
          *&v42[8] = 2114;
          *&v42[10] = bls_loggingString;
          _os_log_fault_impl(&dword_21FD11000, v28, OS_LOG_TYPE_FAULT, "OSIP:%p could not transitionToDisplayMode:%{public}@ error:%{public}@", buf, 0x20u);
        }
      }

      if (!v12)
      {
        goto LABEL_16;
      }
    }

    else if (!v12)
    {
LABEL_16:
      if (v36 != v10)
      {
        if (v10 == 1)
        {
          backlightDimmedFactor = 1.0;
        }

        else
        {
          backlightDimmedFactor = 0.0;
          if (v10 == 2)
          {
            backlightDimmedFactor = self->_backlightDimmedFactor;
          }
        }

        if (v12)
        {
          durationCopy = 0.0;
        }

        else
        {
          durationCopy = duration;
        }

        v17 = bls_backlight_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          displayStateClientSupported = self->_displayStateClientSupported;
          *buf = 134218754;
          selfCopy4 = self;
          if (displayStateClientSupported)
          {
            v23 = "Notify";
          }

          else
          {
            v23 = "Set";
          }

          v41 = 2080;
          *v42 = v23;
          *&v42[8] = 2048;
          *&v42[10] = backlightDimmedFactor;
          v43 = 2048;
          v44 = durationCopy;
          _os_log_debug_impl(&dword_21FD11000, v17, OS_LOG_TYPE_DEBUG, "OSIP:%p %sBacklightFactor:%f WithFadeDuration:%fs", buf, 0x2Au);
        }

        if (self->_displayStateClientSupported)
        {
          BKSHIDServicesNotifyBacklightFactorWithFadeDurationAsync();
        }

        else
        {
          BKSHIDServicesSetBacklightFactorWithFadeDurationAsync();
        }
      }

      if (!self->_displayStateClientSupported)
      {
        setCBDisplayModeTimer = self->_setCBDisplayModeTimer;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __73__BLSHBacklightOSInterfaceProvider_transitionToDisplayMode_withDuration___block_invoke;
        v37[3] = &unk_27841E728;
        v37[4] = self;
        v37[5] = mode;
        [(BSContinuousMachTimer *)setCBDisplayModeTimer scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v37 queue:duration handler:0.016];
      }

      goto LABEL_30;
    }

    platformProvider = self->_platformProvider;
    if (objc_opt_respondsToSelector())
    {
      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        selfCopy4 = self;
        v41 = 1024;
        *v42 = v9 < 2;
        *&v42[4] = 2048;
        *&v42[6] = duration;
        _os_log_debug_impl(&dword_21FD11000, v14, OS_LOG_TYPE_DEBUG, "OSIP:%p (platformProvider) useAlwaysOnBrightnessCurve:%{BOOL}u withDuration:%fs", buf, 0x1Cu);
      }

      [(BLSHBacklightPlatformProvider *)self->_platformProvider useAlwaysOnBrightnessCurve:v9 < 2 withRampDuration:duration];
    }

    goto LABEL_16;
  }

LABEL_30:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)switchToFlipbookState:(int64_t)state
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_cbFlipbookState = state;
  os_unfair_lock_unlock(&self->_lock);
  if (self->_displayStateClientSupported)
  {
    v7 = state - 1;
    if ((state - 1) > 2)
    {
      v8 = @"WillTurnOn";
    }

    else
    {
      v8 = off_27841E930[v7];
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"OSIP:%p switchToFlipbookState:%@", self, v8];
    [(BLSHBacklightOSInterfaceProvider *)self scheduleOSIPWatchdogWithExplanation:v5 type:1uLL];
    displayStateClient = self->_displayStateClient;
    v14 = 0;
    [(CBDisplayStateClient *)displayStateClient switchToFlipbookState:state error:&v14];
    v10 = v14;
    if (v10)
    {
      v11 = bls_backlight_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        if (v7 > 2)
        {
          v12 = @"WillTurnOn";
        }

        else
        {
          v12 = off_27841E930[v7];
        }

        bls_loggingString = [v10 bls_loggingString];
        *buf = 134218498;
        selfCopy = self;
        v17 = 2114;
        v18 = v12;
        v19 = 2114;
        v20 = bls_loggingString;
        _os_log_fault_impl(&dword_21FD11000, v11, OS_LOG_TYPE_FAULT, "OSIP:%p could not switchToFlipbookState:%{public}@ error:%{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(BLSHBacklightOSInterfaceProvider *)self switchToFlipbookState:state, v5];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)acquireDisplayPowerAssertionForReason:(int64_t)reason
{
  if (reason == 1)
  {
    kdebug_trace();
  }

  v4 = [(CADisplayStateControl *)self->_displayStateControl createPowerAssertionWithReason:1 identifier:@"BacklightServices"];
  [v4 acquire];

  return v4;
}

void __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = bls_backlight_log();
  v7 = v6;
  if (*(a1 + 40) == a2)
  {
    v8 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v8 = 16 * (a3 == 0);
  }

  if (os_log_type_enabled(v6, v8))
  {
    v9 = *(a1 + 32);
    v10 = NSStringFromCADisplayStateTransitionStatus();
    v11 = NSStringFromCADisplayState();
    v12 = *(a1 + 40);
    v13 = NSStringFromCADisplayState();
    *buf = 134218754;
    v30 = v9;
    v31 = 2114;
    v32 = v10;
    v33 = 2114;
    v34 = *&v11;
    v35 = 2114;
    v36 = v13;
    _os_log_impl(&dword_21FD11000, v7, v8, "OSIP:%p completion(%{public}@->%{public}@) transitionToDisplayState:%{public}@", buf, 0x2Au);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_173;
  v28[3] = &unk_27841E750;
  v14 = *(a1 + 40);
  v28[4] = *(a1 + 32);
  v28[5] = a3;
  v28[6] = a2;
  v28[7] = v14;
  v15 = MEMORY[0x223D70730](v28);
  v16 = v15;
  v17 = *(*(a1 + 32) + 184);
  if (v17 <= 0.1)
  {
    (*(v15 + 16))(v15);
  }

  else
  {
    v18 = bls_diagnostics_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21 = NSStringFromCADisplayState();
      *buf = 134218498;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      v33 = 2048;
      v34 = v17;
      _os_log_impl(&dword_21FD11000, v18, OS_LOG_TYPE_DEFAULT, "OSIP:%p delayCompletionsForTesting:YES, delaying CATransitionToDisplayState:%{public}@ completion by %.2fs", buf, 0x20u);
    }

    v22 = dispatch_time(0, (v17 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_175;
    block[3] = &unk_27841E5B0;
    v23 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v27 = v23;
    v26 = v16;
    dispatch_after(v22, MEMORY[0x277D85CD0], block);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_173(uint64_t *a1)
{
  [(BLSHBacklightOSInterfaceProvider *)a1[4] clearCAWatchdog];
  if (!a1[5])
  {
    [(BLSHBacklightOSInterfaceProvider *)a1[4] notifyDisplayBlankedIfChangedForCADisplayState:?];
  }

  v2 = [a1[4] displayStateDelegate];
  [v2 osInterfaceProvider:a1[4] didCompleteTransitionToCADisplayState:a1[7] currentState:a1[6] transitionStatus:a1[5]];
}

uint64_t __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_175(uint64_t a1)
{
  v2 = bls_diagnostics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_175_cold_1(a1, v2);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)createDisplayPowerResourceHintWithState:(unint64_t)state
{
  v3 = [objc_alloc(MEMORY[0x277D3F038]) initWithResourceType:2 andState:state];
  v4 = [BLSHAsyncDisplayPowerResourceHint hintWithHint:v3];

  return v4;
}

- (id)createPowerAssertionWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D6C090];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithIdentifier:identifierCopy];

  return v5;
}

- (id)createSystemActivityAssertionWithIdentifier:(id)identifier configurator:(id)configurator
{
  v5 = MEMORY[0x277D6C098];
  configuratorCopy = configurator;
  identifierCopy = identifier;
  v8 = [[v5 alloc] initWithIdentifier:identifierCopy configurator:configuratorCopy];

  return v8;
}

- (id)observeSignificantTimeChangeWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__0;
  v16[4] = __Block_byref_object_dispose__0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277D766F0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__BLSHBacklightOSInterfaceProvider_observeSignificantTimeChangeWithIdentifier_handler___block_invoke;
  v14[3] = &unk_27841E7A0;
  v9 = handlerCopy;
  v15 = v9;
  v17 = [defaultCenter addObserverForName:v8 object:0 queue:0 usingBlock:v14];

  v10 = objc_alloc(MEMORY[0x277CF0CE8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__BLSHBacklightOSInterfaceProvider_observeSignificantTimeChangeWithIdentifier_handler___block_invoke_2;
  v13[3] = &unk_27841E7C8;
  v13[4] = v16;
  v11 = [v10 initWithIdentifier:identifierCopy forReason:@"observeSignificantTimeChange" invalidationBlock:v13];
  _Block_object_dispose(v16, 8);

  return v11;
}

void __87__BLSHBacklightOSInterfaceProvider_observeSignificantTimeChangeWithIdentifier_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (BLSHSuppressionEvent)lastSuppressionEvent
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_lastSuppressionEvent;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __71__BLSHBacklightOSInterfaceProvider_startSuppressionServiceWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 32);
      v11 = [v7 localizedDescription];
      v12 = [v7 localizedFailureReason];
      v13 = 134218754;
      v14 = v10;
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      _os_log_fault_impl(&dword_21FD11000, v8, OS_LOG_TYPE_FAULT, "OSIP:%p suppression event error - event:%{public}@ error:%{public}@ reason:%{public}@", &v13, 0x2Au);
    }
  }

  else if (([v5 type] - 1) <= 1)
  {
    __71__BLSHBacklightOSInterfaceProvider_startSuppressionServiceWithHandler___block_invoke_cold_1(v5, a1);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)addSceneObserver:(id)observer forSceneIdentityToken:(id)token
{
  v27 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  tokenCopy = token;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BLSHBacklightOSInterfaceProvider addSceneObserver:a2 forSceneIdentityToken:?];
  }

  v9 = [(BLSHBacklightOSInterfaceProvider *)self sceneWithIdentityToken:tokenCopy];
  if (v9)
  {
    v10 = [BLSHSceneEnvironmentObserverToken tokenWithObserver:observerCopy sceneIdentityToken:tokenCopy];
    v11 = [BLSHSceneEnvironmentObserver observerWithObserver:observerCopy];
    os_unfair_lock_lock(&self->_lock);
    v12 = bls_assertions_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(NSMutableDictionary *)self->_lock_sceneObservers objectForKey:v10];
      *buf = 134218754;
      selfCopy = self;
      v21 = 2114;
      v22 = observerCopy;
      v23 = 2114;
      v24 = tokenCopy;
      v25 = 2114;
      v26 = v18;
      _os_log_debug_impl(&dword_21FD11000, v12, OS_LOG_TYPE_DEBUG, "OSIP:%p addSceneObserver:%{public}@ forSceneIdentityToken:%{public}@ existing:%{public}@", buf, 0x2Au);
    }

    v13 = [(NSMutableDictionary *)self->_lock_sceneObservers objectForKey:v10];

    if (v13)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot add the same observer twice for the same scene observer:%@ scene:%@", observerCopy, v9];;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(BLSHBacklightOSInterfaceProvider *)a2 addSceneObserver:v17 forSceneIdentityToken:?];
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21FD22E74);
    }

    [(NSMutableDictionary *)self->_lock_sceneObservers setObject:v11 forKey:v10];
    os_unfair_lock_unlock(&self->_lock);
    [v9 addObserver:v11];
    backlightSceneHostEnvironment = [v9 backlightSceneHostEnvironment];
  }

  else
  {
    v10 = bls_assertions_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BLSHBacklightOSInterfaceProvider addSceneObserver:forSceneIdentityToken:];
    }

    backlightSceneHostEnvironment = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return backlightSceneHostEnvironment;
}

- (id)removeSceneObserver:(id)observer forSceneIdentityToken:(id)token
{
  v27 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  tokenCopy = token;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BLSHBacklightOSInterfaceProvider removeSceneObserver:a2 forSceneIdentityToken:?];
  }

  v9 = [(BLSHBacklightOSInterfaceProvider *)self sceneWithIdentityToken:tokenCopy];
  os_unfair_lock_lock(&self->_lock);
  v10 = [BLSHSceneEnvironmentObserverToken tokenWithObserver:observerCopy sceneIdentityToken:tokenCopy];
  v11 = [(NSMutableDictionary *)self->_lock_sceneObservers objectForKey:v10];
  v12 = bls_assertions_log();
  v13 = 2 * (v9 != 0);
  if (os_log_type_enabled(v12, v13))
  {
    v17 = 134219010;
    selfCopy = self;
    v19 = 2114;
    v20 = observerCopy;
    v21 = 2114;
    v22 = tokenCopy;
    v23 = 1024;
    v24 = v9 != 0;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_21FD11000, v12, v13, "OSIP:%p removeSceneObserver:%{public}@ forSceneIdentityToken:%{public}@ foundScene:%{BOOL}u existing:%{public}@", &v17, 0x30u);
  }

  [(NSMutableDictionary *)self->_lock_sceneObservers removeObjectForKey:v10];
  if (v9)
  {
    if (v11)
    {
      [v9 removeObserver:v11];
    }

    backlightSceneHostEnvironment = [v9 backlightSceneHostEnvironment];
  }

  else
  {
    backlightSceneHostEnvironment = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v15 = *MEMORY[0x277D85DE8];

  return backlightSceneHostEnvironment;
}

- (void)didCompleteTransitionToDisplayMode:(int64_t)mode withError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (mode > 4)
    {
      v8 = @"Invalid";
    }

    else
    {
      v8 = off_27841E908[mode];
    }

    *buf = 134218498;
    selfCopy2 = self;
    v18 = 2114;
    v19 = *&v8;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "OSIP:%p got didCompleteTransitionToDisplayMode:%{public}@ error:%@", buf, 0x20u);
  }

  if (self->_cbTransitionsDelayForTesting <= 0.1)
  {
    [(BLSHBacklightOSInterfaceProvider *)self _didCompleteTransitionToDisplayMode:mode withError:errorCopy];
  }

  else
  {
    v9 = bls_diagnostics_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      cbTransitionsDelayForTesting = self->_cbTransitionsDelayForTesting;
      *buf = 134218240;
      selfCopy2 = self;
      v18 = 2048;
      v19 = cbTransitionsDelayForTesting;
      _os_log_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEFAULT, "OSIP:%p delayCompletionsForTesting:YES, delaying didCompleteCBTransitionToDisplayMode by %.2fs", buf, 0x16u);
    }

    v11 = dispatch_time(0, (self->_cbTransitionsDelayForTesting * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__BLSHBacklightOSInterfaceProvider_didCompleteTransitionToDisplayMode_withError___block_invoke;
    block[3] = &unk_27841E510;
    block[4] = self;
    modeCopy = mode;
    v14 = errorCopy;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __81__BLSHBacklightOSInterfaceProvider_didCompleteTransitionToDisplayMode_withError___block_invoke(uint64_t a1)
{
  v2 = bls_diagnostics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__BLSHBacklightOSInterfaceProvider_didCompleteTransitionToDisplayMode_withError___block_invoke_cold_1(a1, v2);
  }

  [(BLSHBacklightOSInterfaceProvider *)*(a1 + 32) _didCompleteTransitionToDisplayMode:*(a1 + 40) withError:?];
}

- (void)didCompleteSwitchToFlipbookState:(int64_t)state withError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if ((state - 1) > 2)
    {
      v8 = @"WillTurnOn";
    }

    else
    {
      v8 = off_27841E930[state - 1];
    }

    v12 = 134218498;
    selfCopy = self;
    v14 = 2114;
    v15 = v8;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "OSIP:%p got didCompleteSwitchToFlipbookState:%{public}@ error:%@", &v12, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_CBWatchdogType == 1)
  {
    [(BLSHWatchdogInvalidatable *)self->_lock_CBWatchdogTimer invalidate:2];
    lock_CBWatchdogTimer = self->_lock_CBWatchdogTimer;
    self->_lock_CBWatchdogTimer = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  displayStateDelegate = [(BLSHBacklightOSInterfaceProvider *)self displayStateDelegate];
  [displayStateDelegate osInterfaceProvider:self didCompleteSwitchToCBFlipbookState:state withError:errorCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFlipbookTransparent
{
  os_unfair_lock_lock(&self->_lock);
  lock_flipbookTransparent = self->_lock_flipbookTransparent;
  os_unfair_lock_unlock(&self->_lock);
  return lock_flipbookTransparent;
}

- (void)setFlipbookTransparent:(BOOL)transparent
{
  transparentCopy = transparent;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_flipbookTransparent = self->_lock_flipbookTransparent;
  self->_lock_flipbookTransparent = transparentCopy;
  lock_caDisplayState = self->_lock_caDisplayState;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_flipbookTransparent != transparentCopy && lock_caDisplayState == 2)
  {
    v8 = bls_backlight_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (transparentCopy)
    {
      if (v9)
      {
        *buf = 134217984;
        selfCopy2 = self;
        v10 = 1;
        _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_INFO, "OSIP:%p flipbook set transparent, will transition to active", buf, 0xCu);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if (v9)
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_INFO, "OSIP:%p flipbook no longer transparent, will transition to real flipbook", buf, 0xCu);
      }

      v10 = 2;
    }

    displayStateControl = self->_displayStateControl;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__BLSHBacklightOSInterfaceProvider_setFlipbookTransparent___block_invoke;
    v13[3] = &unk_27841E818;
    v13[4] = self;
    v14 = transparentCopy;
    [(CADisplayStateControl *)displayStateControl transitionToDisplayState:v10 withCompletion:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __59__BLSHBacklightOSInterfaceProvider_setFlipbookTransparent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = bls_backlight_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 134218496;
    v11 = v7;
    v12 = 1024;
    v13 = a3;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "OSIP:%p completed(%d) setFlipbookTransparent:%{BOOL}u", &v10, 0x18u);
  }

  if (!a3)
  {
    [(BLSHBacklightOSInterfaceProvider *)*(a1 + 32) notifyDisplayBlankedIfChangedForCADisplayState:a2];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)abortContextForTimer:(id)timer
{
  timerCopy = timer;
  os_unfair_lock_lock(&self->_lock);
  lock_CAWatchdogTimer = self->_lock_CAWatchdogTimer;

  v6 = &OBJC_IVAR___BLSHBacklightOSInterfaceProvider__lock_CBWatchdogType;
  if (lock_CAWatchdogTimer == timerCopy)
  {
    v6 = &OBJC_IVAR___BLSHBacklightOSInterfaceProvider__lock_CAWatchdogType;
  }

  v7 = *(&self->super.super.isa + *v6);
  v8 = [BLSHOSInterfaceProviderAbortContext alloc];
  *&v9 = self->_backlightDimmedFactor;
  BYTE3(v12) = self->_displayStateClientSupported;
  BYTE2(v12) = self->_deviceSupportsAlwaysOnFlipbook;
  LOWORD(v12) = *&self->_lock_flipbookTransparent;
  v10 = [BLSHOSInterfaceProviderAbortContext initWithWatchdogType:v8 cbDisplayMode:"initWithWatchdogType:cbDisplayMode:cbFlipbookState:caDisplayState:completedCADisplayState:suppressionServiceActive:flipbookTransparent:deviceSupportsAlwaysOn:deviceSupportsAlwaysOnFlipbook:displayStateClientSupported:backlightDimmedFactor:" cbFlipbookState:v7 caDisplayState:self->_lock_cbDisplayMode completedCADisplayState:self->_lock_cbFlipbookState suppressionServiceActive:self->_lock_caDisplayState flipbookTransparent:self->_lock_notifiedCADisplayState deviceSupportsAlwaysOn:self->_lock_suppressionServiceActive deviceSupportsAlwaysOnFlipbook:v9 displayStateClientSupported:v12 backlightDimmedFactor:?];
  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (id)identifier
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  build = [v2 build];

  return build;
}

- (void)setCBTransitionsDelayForTesting:(double)testing
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    testingCopy = testing;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEFAULT, "OSIP: setCBTransitionsDelayForTesting:%.02fs", &v7, 0xCu);
  }

  self->_cbTransitionsDelayForTesting = testing;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setCATransitionsDelayForTesting:(double)testing
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    testingCopy = testing;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEFAULT, "OSIP: setCATransitionsDelayForTesting:%.02fs", &v7, 0xCu);
  }

  self->_caTransitionsDelayForTesting = testing;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)abortForWatchdog:(unint64_t)watchdog payload:(void *)payload payloadSize:(unsigned int)size explanation:(id)explanation
{
  [explanation UTF8String];
  if (payload && size)
  {
    abort_with_payload();
  }

  v8 = abort_with_reason();
  [(BLSHBacklightOSInterfaceProvider *)v8 panicForWatchdog:v9 withDelay:v10 completion:v12, v11];
}

- (void)panicForWatchdog:(id)watchdog withDelay:(double)delay completion:(id)completion
{
  watchdogCopy = watchdog;
  completionCopy = completion;
  v9 = bls_diagnostics_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BLSHBacklightOSInterfaceProvider panicForWatchdog:v9 withDelay:? completion:?];
  }

  v10 = OSLogFlushBuffers();
  v11 = bls_diagnostics_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [BLSHBacklightOSInterfaceProvider panicForWatchdog:v10 withDelay:v11 completion:?];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke;
  v17[3] = &unk_27841E5B0;
  delayCopy = delay;
  v18 = watchdogCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = watchdogCopy;
  v14 = MEMORY[0x223D70730](v17);
  v15 = v14;
  if (delay <= 0.0)
  {
    (*(v14 + 16))(v14);
  }

  else
  {
    v16 = dispatch_time(0, (delay * 1000000000.0));
    dispatch_after(v16, MEMORY[0x277D85CD0], v15);
  }
}

uint64_t __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke(uint64_t a1)
{
  v2 = bls_diagnostics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke_cold_1(a1, v2);
  }

  v3 = MEMORY[0x223D70990](3072, [*(a1 + 32) UTF8String]);
  if (!v3)
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    v7 = *(result + 16);
    return v7();
  }

  v4 = v3;
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke_cold_2(v4, v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);
    return v7();
  }

  return result;
}

- (void)writeTailspinForWatchdog:(id)watchdog completion:(id)completion
{
  watchdogCopy = watchdog;
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = [[BLSHTailspinLogWriter alloc] initWithReason:watchdogCopy];
  v7 = v13[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__BLSHBacklightOSInterfaceProvider_writeTailspinForWatchdog_completion___block_invoke;
  v9[3] = &unk_27841E840;
  v8 = completionCopy;
  v10 = v8;
  v11 = &v12;
  [v7 writeTailspinLogWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

void __72__BLSHBacklightOSInterfaceProvider_writeTailspinForWatchdog_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)notifyDisplayBlankedIfChangedForCADisplayState:(uint64_t)state
{
  if (state)
  {
    os_unfair_lock_lock((state + 88));
    v4 = (a2 != 1) ^ (*(state + 104) == 1);
    *(state + 104) = a2;
    os_unfair_lock_unlock((state + 88));
    if ((v4 & 1) == 0)
    {
      kdebug_trace();

      MEMORY[0x282143388](0, a2 != 1);
    }
  }
}

- (void)scheduleOSIPWatchdogWithExplanation:(unint64_t)explanation type:
{
  if (self)
  {
    v5 = a2;
    os_unfair_lock_lock(self + 22);
    obj = [(os_unfair_lock_s *)self scheduleWatchdogWithDelegate:self explanation:v5 timeout:[(BLSHBacklightOSInterfaceProvider *)self timeoutForWatchdogType:explanation]];

    if (explanation <= 2)
    {
      v6 = off_27841E8D8[explanation];
      v7 = off_27841E8F0[explanation];
      [*(&self->_os_unfair_lock_opaque + *v6) invalidate:1];
      objc_storeStrong((self + *v6), obj);
      *(&self->_os_unfair_lock_opaque + *v7) = explanation;
    }

    os_unfair_lock_unlock(self + 22);
  }
}

- (void)transitionToCADisplayState:(int64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_caDisplayState = state;
  if (state == 2)
  {
    lock_flipbookTransparent = self->_lock_flipbookTransparent;
    os_unfair_lock_unlock(&self->_lock);
    if (lock_flipbookTransparent)
    {
      v6 = bls_backlight_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "OSIP:%p flipbook transparent, will transition to CADisplayStateOn not CADisplayStateFlipBook", buf, 0xCu);
      }

      state = 1;
    }

    else
    {
      state = 2;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromCADisplayState();
  v9 = [v7 stringWithFormat:@"OSIP:%p transitionToCADisplayState:%@", self, v8];

  v10 = bls_backlight_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = v9;
    _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

  [(BLSHBacklightOSInterfaceProvider *)self scheduleOSIPWatchdogWithExplanation:v9 type:2uLL];
  displayStateControl = self->_displayStateControl;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke;
  v13[3] = &unk_27841E778;
  v13[4] = self;
  v13[5] = state;
  [(CADisplayStateControl *)displayStateControl transitionToDisplayState:state withCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setSuppressionServiceActive:(uint64_t)active
{
  if (active)
  {
    os_unfair_lock_lock((active + 88));
    *(active + 128) = a2;

    os_unfair_lock_unlock((active + 88));
  }
}

- (void)setLastSuppressionEvent:(uint64_t)event
{
  v4 = a2;
  if (event)
  {
    os_unfair_lock_lock((event + 88));
    objc_storeStrong((event + 48), a2);
    os_unfair_lock_unlock((event + 88));
  }
}

- (void)startSuppressionServiceWithHandler:(id)handler
{
  handlerCopy = handler;
  [(BLSHBacklightOSInterfaceProvider *)self setSuppressionServiceActive:?];
  [(CMSuppressionManager *)self->_suppressionManager startService];
  suppressionManager = self->_suppressionManager;
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__BLSHBacklightOSInterfaceProvider_startSuppressionServiceWithHandler___block_invoke;
  v8[3] = &unk_27841E7F0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(CMSuppressionManager *)suppressionManager startSuppressionUpdatesToQueue:mainQueue withHandler:v8];
}

- (double)timeoutForWatchdogType:(void *)type
{
  if (!type)
  {
    return 0.0;
  }

  systemSleepMonitor = [type systemSleepMonitor];
  isSleepImminent = [systemSleepMonitor isSleepImminent];

  if (a2 < 2)
  {
    v6 = &BLSHBacklightCoreBrightnessCallbackSleepImminentWatchdogTimeout;
    v7 = &BLSHBacklightCoreBrightnessCallbackWatchdogTimeout;
    v8 = isSleepImminent == 0;
    goto LABEL_4;
  }

  if (a2 == 2)
  {
    if (isSleepImminent)
    {
      v6 = &BLSHBacklightCoreAnimationCallbackSleepImminentWatchdogTimeout;
      return *v6;
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v6 = &BLSHBacklightCoreAnimationCallbackWatchdogInternalInstallTimeout;
    v7 = &BLSHBacklightCoreAnimationCallbackWatchdogTimeout;
    v8 = has_internal_diagnostics == 0;
LABEL_4:
    if (v8)
    {
      v6 = v7;
    }

    return *v6;
  }

  return result;
}

- (void)_didCompleteTransitionToDisplayMode:(void *)mode withError:
{
  if (self)
  {
    modeCopy = mode;
    os_unfair_lock_lock((self + 88));
    if (!*(self + 160))
    {
      [*(self + 144) invalidate:2];
      v6 = *(self + 144);
      *(self + 144) = 0;
    }

    os_unfair_lock_unlock((self + 88));
    displayStateDelegate = [self displayStateDelegate];
    [displayStateDelegate osInterfaceProvider:self didCompleteTransitionToCBDisplayMode:a2 withError:modeCopy];
  }
}

- (void)initWithPlatformProvider:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"CADisplayStateControl nil - this process needs entitlement: 'com.apple.QuartzCore.display-state'"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    v7 = 138544642;
    v8 = a1;
    OUTLINED_FUNCTION_0_1();
    v9 = @"BLSHBacklightOSInterfaceProvider.m";
    v10 = 1024;
    v11 = 234;
    v12 = v5;
    v13 = v2;
    OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerHandlersForService:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    v8 = @"BLSHBacklightOSInterfaceProvider.m";
    v9 = 1024;
    v10 = 315;
    v11 = v5;
    v12 = v2;
    OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)transitionToDisplayMode:(uint64_t)a3 withDuration:.cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v10 = 138544642;
  v11 = v4;
  OUTLINED_FUNCTION_0_1();
  v12 = @"BLSHBacklightOSInterfaceProvider.m";
  v13 = 1024;
  v14 = 373;
  v15 = v7;
  v16 = a3;
  OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)switchToFlipbookState:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) > 2)
  {
    v3 = @"WillTurnOn";
  }

  else
  {
    v3 = off_27841E930[a2 - 1];
  }

  v5 = 134218242;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_fault_impl(&dword_21FD11000, log, OS_LOG_TYPE_FAULT, "OSIP:%p unsupported call to switchToFlipbookState:%{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke_175_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = NSStringFromCADisplayState();
  v7 = 134218242;
  v8 = v3;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "OSIP:%p delayCompletionsForTesting:YES, completing delayed CATransitionToDisplayState:%{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __71__BLSHBacklightOSInterfaceProvider_startSuppressionServiceWithHandler___block_invoke_cold_1(void *a1, uint64_t a2)
{
  [a1 timestamp];
  BLSMachTimeFromNSTimeInterval();
  v4 = [[BLSHSuppressionEvent alloc] initWithCoreMotionEvent:a1 timestamp:BLSMachContinuousTimeFromMachAbsoluteTime()];
  [(BLSHBacklightOSInterfaceProvider *)*(a2 + 32) setLastSuppressionEvent:v4];
  (*(*(a2 + 40) + 16))();
}

- (void)addSceneObserver:(char *)a1 forSceneIdentityToken:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[sceneIdentityToken isKindOfClass:[FBSSceneIdentityToken class]]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    v8 = @"BLSHBacklightOSInterfaceProvider.m";
    v9 = 1024;
    v10 = 692;
    v11 = v5;
    v12 = v2;
    OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addSceneObserver:(uint64_t)a3 forSceneIdentityToken:.cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v10 = 138544642;
  v11 = v4;
  OUTLINED_FUNCTION_0_1();
  v12 = @"BLSHBacklightOSInterfaceProvider.m";
  v13 = 1024;
  v14 = 705;
  v15 = v7;
  v16 = a3;
  OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)addSceneObserver:forSceneIdentityToken:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(&dword_21FD11000, v0, OS_LOG_TYPE_ERROR, "OSIP:%p could not find scene for token:%{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)removeSceneObserver:(char *)a1 forSceneIdentityToken:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[sceneIdentityToken isKindOfClass:[FBSSceneIdentityToken class]]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    v8 = @"BLSHBacklightOSInterfaceProvider.m";
    v9 = 1024;
    v10 = 719;
    v11 = v5;
    v12 = v2;
    OUTLINED_FUNCTION_3_0(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __81__BLSHBacklightOSInterfaceProvider_didCompleteTransitionToDisplayMode_withError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "OSIP:%p delayCompletionsForTesting:YES, completing delayed didCompleteCBTransitionToDisplayMode", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)panicForWatchdog:(uint64_t)a1 withDelay:(os_log_t)log completion:.cold.2(uint64_t a1, os_log_t log)
{
  v3 = a1;
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed:%d", a1];
  }

  else
  {
    v4 = @"succeeded";
  }

  *buf = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_21FD11000, log, OS_LOG_TYPE_ERROR, "panicForWatchdog: OSLogFlushBuffers() %{public}@", buf, 0xCu);
  if (v3)
  {
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (v3 <= 0.0)
  {
    v4 = @"immediately";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"after %lfs delay: %@", *&v3, *(a1 + 32)];
  }

  *buf = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "panicForWatchdog: triggering panic %{public}@", buf, 0xCu);
  if (v3 > 0.0)
  {
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __74__BLSHBacklightOSInterfaceProvider_panicForWatchdog_withDelay_completion___block_invoke_cold_2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_21FD11000, a2, OS_LOG_TYPE_FAULT, "attempt to panic failed:%d, falling through to abort", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end
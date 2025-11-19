@interface BLSHBacklightOSInterfaceProvider
+ (BLSHBacklightOSInterfaceProvider)sharedProvider;
+ (void)setSharedProvider:(id)a3;
- (BLSHBacklightOSInterfaceProvider)initWithPlatformProvider:(id)a3;
- (BLSHSuppressionEvent)lastSuppressionEvent;
- (BOOL)isFlipbookTransparent;
- (BOOL)isSuppressionServiceActive;
- (double)timeoutForWatchdogType:(void *)a1;
- (id)abortContextForTimer:(id)a3;
- (id)acquireDisplayPowerAssertionForReason:(int64_t)a3;
- (id)addSceneObserver:(id)a3 forSceneIdentityToken:(id)a4;
- (id)createDisplayPowerResourceHintWithState:(unint64_t)a3;
- (id)createPowerAssertionWithIdentifier:(id)a3;
- (id)createSystemActivityAssertionWithIdentifier:(id)a3 configurator:(id)a4;
- (id)identifier;
- (id)observeSignificantTimeChangeWithIdentifier:(id)a3 handler:(id)a4;
- (id)removeSceneObserver:(id)a3 forSceneIdentityToken:(id)a4;
- (id)sceneWithIdentityToken:(id)a3;
- (int64_t)caDisplayState;
- (int64_t)cbDisplayMode;
- (int64_t)cbFlipbookState;
- (void)_didCompleteTransitionToDisplayMode:(void *)a3 withError:;
- (void)abortForWatchdog:(unint64_t)a3 payload:(void *)a4 payloadSize:(unsigned int)a5 explanation:(id)a6;
- (void)clearCAWatchdog;
- (void)deregisterSceneWorkspace:(id)a3;
- (void)didCompleteSwitchToFlipbookState:(int64_t)a3 withError:(id)a4;
- (void)didCompleteTransitionToDisplayMode:(int64_t)a3 withError:(id)a4;
- (void)didDetectSignificantUserInteraction;
- (void)dispatchToMainQueueAfterSecondsDelay:(double)a3 identifier:(id)a4 block:(id)a5;
- (void)endSuppressionService;
- (void)notifyDisplayBlankedIfChangedForCADisplayState:(uint64_t)a1;
- (void)panicForWatchdog:(id)a3 withDelay:(double)a4 completion:(id)a5;
- (void)registerHandlersForService:(id)a3;
- (void)registerSceneWorkspace:(id)a3;
- (void)scheduleOSIPWatchdogWithExplanation:(unint64_t)a3 type:;
- (void)setCATransitionsDelayForTesting:(double)a3;
- (void)setCBTransitionsDelayForTesting:(double)a3;
- (void)setFlipbookTransparent:(BOOL)a3;
- (void)setLastSuppressionEvent:(uint64_t)a1;
- (void)setSuppressionServiceActive:(uint64_t)a1;
- (void)startSuppressionServiceWithHandler:(id)a3;
- (void)switchToFlipbookState:(int64_t)a3;
- (void)transitionToCADisplayState:(int64_t)a3;
- (void)transitionToDisplayMode:(int64_t)a3 withDuration:(double)a4;
- (void)writeTailspinForWatchdog:(id)a3 completion:(id)a4;
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
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    [*(a1 + 152) invalidate:2];
    v2 = *(a1 + 152);
    *(a1 + 152) = 0;

    os_unfair_lock_unlock((a1 + 88));
  }
}

+ (BLSHBacklightOSInterfaceProvider)sharedProvider
{
  os_unfair_lock_lock(&_classLock);
  v2 = _sharedProvider;
  os_unfair_lock_unlock(&_classLock);

  return v2;
}

+ (void)setSharedProvider:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_classLock);
  v4 = _sharedProvider;
  _sharedProvider = v3;

  os_unfair_lock_unlock(&_classLock);
}

- (BLSHBacklightOSInterfaceProvider)initWithPlatformProvider:(id)a3
{
  v79[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v67.receiver = self;
  v67.super_class = BLSHBacklightOSInterfaceProvider;
  v7 = [(BLSHBacklightOSInterfaceProvider *)&v67 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = *(v8 + 32);
    *(v8 + 32) = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    v14 = *(v8 + 40);
    *(v8 + 40) = v13;

    objc_storeStrong((v8 + 8), a3);
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
      [v6 backlightDimmedFactor];
    }

    *(v8 + 136) = LODWORD(v20);
    if (MGGetBoolAnswer())
    {
      LOBYTE(v21) = MGGetBoolAnswer();
      LOBYTE(v22) = 1;
    }

    else
    {
      LOBYTE(v21) = MGGetBoolAnswer();
      LOBYTE(v22) = v21;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v23 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
      v24 = [v23 valueForKey:@"deviceSupportsAlwaysOnOverride"];
      if (v24 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v22 = [v24 BOOLValue];
        v25 = bls_backlight_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v69 = v8;
          v70 = 1024;
          LODWORD(v71) = v22;
          _os_log_impl(&dword_21FD11000, v25, OS_LOG_TYPE_DEFAULT, "OSIP:%p deviceSupportsAlwaysOnOverride set to %{BOOL}u - use 'login -f mobile defaults delete com.apple.BacklightServices deviceSupportsAlwaysOnOverride' to remove", buf, 0x12u);
        }
      }

      v26 = [v23 valueForKey:@"deviceSupportsAlwaysOnFlipbookOverride"];

      if (v26 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v21 = [v26 BOOLValue];
        v27 = bls_backlight_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v69 = v8;
          v70 = 1024;
          LODWORD(v71) = v21;
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

    *(v8 + 130) = v22;
    *(v8 + 131) = v21;
    *(v8 + 132) = v21;
    v29 = [MEMORY[0x277CD9E40] mainDisplay];
    v30 = [v29 stateControl];
    v31 = *(v8 + 64);
    *(v8 + 64) = v30;

    *(v8 + 96) = [*(v8 + 64) displayState];
    if (!*(v8 + 64))
    {
      [BLSHBacklightOSInterfaceProvider initWithPlatformProvider:a2];
    }

    v32 = objc_alloc_init(MEMORY[0x277CFD3B0]);
    [v32 activate];
    v33 = [v32 supported];
    v34 = v33;
    if (v33)
    {
      v35 = (v8 + 133);
      *(v8 + 133) = v33;
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
    v41 = [MEMORY[0x277CC1D50] isAvailable];
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

      v41 = 0;
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
      v77 = v41;
      _os_log_impl(&dword_21FD11000, v45, OS_LOG_TYPE_DEFAULT, "OSIP:%p startup cbDisplayMode:%{public}@ dsao:%{BOOL}u dsaof:%{BOOL}u dscs:%{BOOL}u sup:%{BOOL}u", buf, 0x2Eu);
    }

    v51 = [[BLSHSuppressionEvent alloc] initWithType:2 reason:0 timestamp:mach_continuous_time()];
    v52 = *(v8 + 48);
    *(v8 + 48) = v51;

    if (v41)
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

          v65 = [v61 bls_loggingString];
          *buf = 134218498;
          v69 = v8;
          v70 = 2114;
          v71 = v64;
          v72 = 2114;
          *v73 = v65;
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

- (void)registerHandlersForService:(id)a3
{
  v7 = a3;
  v5 = [BLSHTransparentFlipbookAttributeHandler registerHandlerForService:"registerHandlerForService:provider:" provider:?];
  if (!v5)
  {
    [BLSHBacklightOSInterfaceProvider registerHandlersForService:a2];
  }

  v6 = v5;
  [(BLSHWatchdogProvider *)self->_watchdogProvider registerHandlersForService:v7];
}

- (void)registerSceneWorkspace:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_sceneWorkspaces addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)deregisterSceneWorkspace:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_sceneWorkspaces removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)sceneWithIdentityToken:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        v10 = [*(*(&v15 + 1) + 8 * i) sceneWithIdentityToken:{v4, v15}];
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
    v12 = [MEMORY[0x277D0AAD8] sharedInstance];
    v11 = [v12 sceneFromIdentityToken:v4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)dispatchToMainQueueAfterSecondsDelay:(double)a3 identifier:(id)a4 block:(id)a5
{
  v5 = (a3 * 1000000000.0);
  block = a5;
  v6 = dispatch_time(0, v5);
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (void)transitionToDisplayMode:(int64_t)a3 withDuration:(double)a4
{
  v45 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_displayStateClientSupported && (self->_lock_cbFlipbookState & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    if (a3 > 4)
    {
      v31 = @"Invalid";
    }

    else
    {
      v31 = off_27841E908[a3];
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
  v9 = a3 - 1;
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
  self->_lock_cbDisplayMode = a3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_cbDisplayMode != a3)
  {
    v12 = (((a3 - 1) < 2) ^ ((lock_cbDisplayMode - 1) < 2)) & deviceSupportsAlwaysOn;
    if (self->_displayStateClientSupported)
    {
      v20 = bls_backlight_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        if (a3 > 4)
        {
          v21 = @"Invalid";
        }

        else
        {
          v21 = off_27841E908[a3];
        }

        *buf = 134218498;
        v40 = self;
        v41 = 2114;
        *v42 = v21;
        *&v42[8] = 2048;
        *&v42[10] = a4;
        _os_log_debug_impl(&dword_21FD11000, v20, OS_LOG_TYPE_DEBUG, "OSIP:%p transitionToDisplayMode:%{public}@ withDuration:%fs", buf, 0x20u);
      }

      if (a3 > 4)
      {
        v24 = @"Invalid";
      }

      else
      {
        v24 = off_27841E908[a3];
      }

      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"OSIP:%p transitionToDisplayMode:%@ withDuration:%fs", self, v24, *&a4];
      [(BLSHBacklightOSInterfaceProvider *)self scheduleOSIPWatchdogWithExplanation:v25 type:0];
      displayStateClient = self->_displayStateClient;
      v38 = 0;
      [(CBDisplayStateClient *)displayStateClient transitionToDisplayMode:a3 withDuration:&v38 error:a4];
      v27 = v38;
      if (v27)
      {
        v28 = bls_backlight_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          if (a3 > 4)
          {
            v29 = @"Invalid";
          }

          else
          {
            v29 = off_27841E908[a3];
          }

          v35 = v29;
          v30 = [v27 bls_loggingString];
          *buf = 134218498;
          v40 = self;
          v41 = 2114;
          *v42 = v35;
          *&v42[8] = 2114;
          *&v42[10] = v30;
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
          v16 = 0.0;
        }

        else
        {
          v16 = a4;
        }

        v17 = bls_backlight_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          displayStateClientSupported = self->_displayStateClientSupported;
          *buf = 134218754;
          v40 = self;
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
          v44 = v16;
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
        v37[5] = a3;
        [(BSContinuousMachTimer *)setCBDisplayModeTimer scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v37 queue:a4 handler:0.016];
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
        v40 = self;
        v41 = 1024;
        *v42 = v9 < 2;
        *&v42[4] = 2048;
        *&v42[6] = a4;
        _os_log_debug_impl(&dword_21FD11000, v14, OS_LOG_TYPE_DEBUG, "OSIP:%p (platformProvider) useAlwaysOnBrightnessCurve:%{BOOL}u withDuration:%fs", buf, 0x1Cu);
      }

      [(BLSHBacklightPlatformProvider *)self->_platformProvider useAlwaysOnBrightnessCurve:v9 < 2 withRampDuration:a4];
    }

    goto LABEL_16;
  }

LABEL_30:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)switchToFlipbookState:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_cbFlipbookState = a3;
  os_unfair_lock_unlock(&self->_lock);
  if (self->_displayStateClientSupported)
  {
    v7 = a3 - 1;
    if ((a3 - 1) > 2)
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
    [(CBDisplayStateClient *)displayStateClient switchToFlipbookState:a3 error:&v14];
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

        v13 = [v10 bls_loggingString];
        *buf = 134218498;
        v16 = self;
        v17 = 2114;
        v18 = v12;
        v19 = 2114;
        v20 = v13;
        _os_log_fault_impl(&dword_21FD11000, v11, OS_LOG_TYPE_FAULT, "OSIP:%p could not switchToFlipbookState:%{public}@ error:%{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(BLSHBacklightOSInterfaceProvider *)self switchToFlipbookState:a3, v5];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)acquireDisplayPowerAssertionForReason:(int64_t)a3
{
  if (a3 == 1)
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

- (id)createDisplayPowerResourceHintWithState:(unint64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x277D3F038]) initWithResourceType:2 andState:a3];
  v4 = [BLSHAsyncDisplayPowerResourceHint hintWithHint:v3];

  return v4;
}

- (id)createPowerAssertionWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277D6C090];
  v4 = a3;
  v5 = [[v3 alloc] initWithIdentifier:v4];

  return v5;
}

- (id)createSystemActivityAssertionWithIdentifier:(id)a3 configurator:(id)a4
{
  v5 = MEMORY[0x277D6C098];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithIdentifier:v7 configurator:v6];

  return v8;
}

- (id)observeSignificantTimeChangeWithIdentifier:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__0;
  v16[4] = __Block_byref_object_dispose__0;
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = *MEMORY[0x277D766F0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__BLSHBacklightOSInterfaceProvider_observeSignificantTimeChangeWithIdentifier_handler___block_invoke;
  v14[3] = &unk_27841E7A0;
  v9 = v6;
  v15 = v9;
  v17 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v14];

  v10 = objc_alloc(MEMORY[0x277CF0CE8]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__BLSHBacklightOSInterfaceProvider_observeSignificantTimeChangeWithIdentifier_handler___block_invoke_2;
  v13[3] = &unk_27841E7C8;
  v13[4] = v16;
  v11 = [v10 initWithIdentifier:v5 forReason:@"observeSignificantTimeChange" invalidationBlock:v13];
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

- (id)addSceneObserver:(id)a3 forSceneIdentityToken:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BLSHBacklightOSInterfaceProvider addSceneObserver:a2 forSceneIdentityToken:?];
  }

  v9 = [(BLSHBacklightOSInterfaceProvider *)self sceneWithIdentityToken:v8];
  if (v9)
  {
    v10 = [BLSHSceneEnvironmentObserverToken tokenWithObserver:v7 sceneIdentityToken:v8];
    v11 = [BLSHSceneEnvironmentObserver observerWithObserver:v7];
    os_unfair_lock_lock(&self->_lock);
    v12 = bls_assertions_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(NSMutableDictionary *)self->_lock_sceneObservers objectForKey:v10];
      *buf = 134218754;
      v20 = self;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
      v25 = 2114;
      v26 = v18;
      _os_log_debug_impl(&dword_21FD11000, v12, OS_LOG_TYPE_DEBUG, "OSIP:%p addSceneObserver:%{public}@ forSceneIdentityToken:%{public}@ existing:%{public}@", buf, 0x2Au);
    }

    v13 = [(NSMutableDictionary *)self->_lock_sceneObservers objectForKey:v10];

    if (v13)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot add the same observer twice for the same scene observer:%@ scene:%@", v7, v9];;
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
    v14 = [v9 backlightSceneHostEnvironment];
  }

  else
  {
    v10 = bls_assertions_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BLSHBacklightOSInterfaceProvider addSceneObserver:forSceneIdentityToken:];
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)removeSceneObserver:(id)a3 forSceneIdentityToken:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BLSHBacklightOSInterfaceProvider removeSceneObserver:a2 forSceneIdentityToken:?];
  }

  v9 = [(BLSHBacklightOSInterfaceProvider *)self sceneWithIdentityToken:v8];
  os_unfair_lock_lock(&self->_lock);
  v10 = [BLSHSceneEnvironmentObserverToken tokenWithObserver:v7 sceneIdentityToken:v8];
  v11 = [(NSMutableDictionary *)self->_lock_sceneObservers objectForKey:v10];
  v12 = bls_assertions_log();
  v13 = 2 * (v9 != 0);
  if (os_log_type_enabled(v12, v13))
  {
    v17 = 134219010;
    v18 = self;
    v19 = 2114;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
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

    v14 = [v9 backlightSceneHostEnvironment];
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)didCompleteTransitionToDisplayMode:(int64_t)a3 withError:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (a3 > 4)
    {
      v8 = @"Invalid";
    }

    else
    {
      v8 = off_27841E908[a3];
    }

    *buf = 134218498;
    v17 = self;
    v18 = 2114;
    v19 = *&v8;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "OSIP:%p got didCompleteTransitionToDisplayMode:%{public}@ error:%@", buf, 0x20u);
  }

  if (self->_cbTransitionsDelayForTesting <= 0.1)
  {
    [(BLSHBacklightOSInterfaceProvider *)self _didCompleteTransitionToDisplayMode:a3 withError:v6];
  }

  else
  {
    v9 = bls_diagnostics_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      cbTransitionsDelayForTesting = self->_cbTransitionsDelayForTesting;
      *buf = 134218240;
      v17 = self;
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
    v15 = a3;
    v14 = v6;
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

- (void)didCompleteSwitchToFlipbookState:(int64_t)a3 withError:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = bls_backlight_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if ((a3 - 1) > 2)
    {
      v8 = @"WillTurnOn";
    }

    else
    {
      v8 = off_27841E930[a3 - 1];
    }

    v12 = 134218498;
    v13 = self;
    v14 = 2114;
    v15 = v8;
    v16 = 2112;
    v17 = v6;
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
  v10 = [(BLSHBacklightOSInterfaceProvider *)self displayStateDelegate];
  [v10 osInterfaceProvider:self didCompleteSwitchToCBFlipbookState:a3 withError:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFlipbookTransparent
{
  os_unfair_lock_lock(&self->_lock);
  lock_flipbookTransparent = self->_lock_flipbookTransparent;
  os_unfair_lock_unlock(&self->_lock);
  return lock_flipbookTransparent;
}

- (void)setFlipbookTransparent:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_flipbookTransparent = self->_lock_flipbookTransparent;
  self->_lock_flipbookTransparent = v3;
  lock_caDisplayState = self->_lock_caDisplayState;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_flipbookTransparent != v3 && lock_caDisplayState == 2)
  {
    v8 = bls_backlight_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v9)
      {
        *buf = 134217984;
        v16 = self;
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
        v16 = self;
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
    v14 = v3;
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

- (id)abortContextForTimer:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_CAWatchdogTimer = self->_lock_CAWatchdogTimer;

  v6 = &OBJC_IVAR___BLSHBacklightOSInterfaceProvider__lock_CBWatchdogType;
  if (lock_CAWatchdogTimer == v4)
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
  v3 = [v2 build];

  return v3;
}

- (void)setCBTransitionsDelayForTesting:(double)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEFAULT, "OSIP: setCBTransitionsDelayForTesting:%.02fs", &v7, 0xCu);
  }

  self->_cbTransitionsDelayForTesting = a3;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setCATransitionsDelayForTesting:(double)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = bls_diagnostics_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEFAULT, "OSIP: setCATransitionsDelayForTesting:%.02fs", &v7, 0xCu);
  }

  self->_caTransitionsDelayForTesting = a3;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)abortForWatchdog:(unint64_t)a3 payload:(void *)a4 payloadSize:(unsigned int)a5 explanation:(id)a6
{
  [a6 UTF8String];
  if (a4 && a5)
  {
    abort_with_payload();
  }

  v8 = abort_with_reason();
  [(BLSHBacklightOSInterfaceProvider *)v8 panicForWatchdog:v9 withDelay:v10 completion:v12, v11];
}

- (void)panicForWatchdog:(id)a3 withDelay:(double)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
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
  v20 = a4;
  v18 = v7;
  v19 = v8;
  v12 = v8;
  v13 = v7;
  v14 = MEMORY[0x223D70730](v17);
  v15 = v14;
  if (a4 <= 0.0)
  {
    (*(v14 + 16))(v14);
  }

  else
  {
    v16 = dispatch_time(0, (a4 * 1000000000.0));
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

- (void)writeTailspinForWatchdog:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = [[BLSHTailspinLogWriter alloc] initWithReason:v5];
  v7 = v13[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__BLSHBacklightOSInterfaceProvider_writeTailspinForWatchdog_completion___block_invoke;
  v9[3] = &unk_27841E840;
  v8 = v6;
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

- (void)notifyDisplayBlankedIfChangedForCADisplayState:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    v4 = (a2 != 1) ^ (*(a1 + 104) == 1);
    *(a1 + 104) = a2;
    os_unfair_lock_unlock((a1 + 88));
    if ((v4 & 1) == 0)
    {
      kdebug_trace();

      MEMORY[0x282143388](0, a2 != 1);
    }
  }
}

- (void)scheduleOSIPWatchdogWithExplanation:(unint64_t)a3 type:
{
  if (a1)
  {
    v5 = a2;
    os_unfair_lock_lock(a1 + 22);
    obj = [(os_unfair_lock_s *)a1 scheduleWatchdogWithDelegate:a1 explanation:v5 timeout:[(BLSHBacklightOSInterfaceProvider *)a1 timeoutForWatchdogType:a3]];

    if (a3 <= 2)
    {
      v6 = off_27841E8D8[a3];
      v7 = off_27841E8F0[a3];
      [*(&a1->_os_unfair_lock_opaque + *v6) invalidate:1];
      objc_storeStrong((a1 + *v6), obj);
      *(&a1->_os_unfair_lock_opaque + *v7) = a3;
    }

    os_unfair_lock_unlock(a1 + 22);
  }
}

- (void)transitionToCADisplayState:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_caDisplayState = a3;
  if (a3 == 2)
  {
    lock_flipbookTransparent = self->_lock_flipbookTransparent;
    os_unfair_lock_unlock(&self->_lock);
    if (lock_flipbookTransparent)
    {
      v6 = bls_backlight_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v15 = self;
        _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_INFO, "OSIP:%p flipbook transparent, will transition to CADisplayStateOn not CADisplayStateFlipBook", buf, 0xCu);
      }

      a3 = 1;
    }

    else
    {
      a3 = 2;
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
    v15 = v9;
    _os_log_debug_impl(&dword_21FD11000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
  }

  [(BLSHBacklightOSInterfaceProvider *)self scheduleOSIPWatchdogWithExplanation:v9 type:2uLL];
  displayStateControl = self->_displayStateControl;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__BLSHBacklightOSInterfaceProvider_transitionToCADisplayState___block_invoke;
  v13[3] = &unk_27841E778;
  v13[4] = self;
  v13[5] = a3;
  [(CADisplayStateControl *)displayStateControl transitionToDisplayState:a3 withCompletion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setSuppressionServiceActive:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    *(a1 + 128) = a2;

    os_unfair_lock_unlock((a1 + 88));
  }
}

- (void)setLastSuppressionEvent:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    objc_storeStrong((a1 + 48), a2);
    os_unfair_lock_unlock((a1 + 88));
  }
}

- (void)startSuppressionServiceWithHandler:(id)a3
{
  v4 = a3;
  [(BLSHBacklightOSInterfaceProvider *)self setSuppressionServiceActive:?];
  [(CMSuppressionManager *)self->_suppressionManager startService];
  suppressionManager = self->_suppressionManager;
  v6 = [MEMORY[0x277CCABD8] mainQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__BLSHBacklightOSInterfaceProvider_startSuppressionServiceWithHandler___block_invoke;
  v8[3] = &unk_27841E7F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(CMSuppressionManager *)suppressionManager startSuppressionUpdatesToQueue:v6 withHandler:v8];
}

- (double)timeoutForWatchdogType:(void *)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = [a1 systemSleepMonitor];
  v4 = [v3 isSleepImminent];

  if (a2 < 2)
  {
    v6 = &BLSHBacklightCoreBrightnessCallbackSleepImminentWatchdogTimeout;
    v7 = &BLSHBacklightCoreBrightnessCallbackWatchdogTimeout;
    v8 = v4 == 0;
    goto LABEL_4;
  }

  if (a2 == 2)
  {
    if (v4)
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

- (void)_didCompleteTransitionToDisplayMode:(void *)a3 withError:
{
  if (a1)
  {
    v5 = a3;
    os_unfair_lock_lock((a1 + 88));
    if (!*(a1 + 160))
    {
      [*(a1 + 144) invalidate:2];
      v6 = *(a1 + 144);
      *(a1 + 144) = 0;
    }

    os_unfair_lock_unlock((a1 + 88));
    v7 = [a1 displayStateDelegate];
    [v7 osInterfaceProvider:a1 didCompleteTransitionToCBDisplayMode:a2 withError:v5];
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
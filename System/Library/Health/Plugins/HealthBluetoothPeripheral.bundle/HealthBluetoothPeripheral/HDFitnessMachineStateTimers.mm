@interface HDFitnessMachineStateTimers
- (BOOL)isDisconnectTimerValid;
- (BOOL)isFieldDetectTimerValid;
- (BOOL)isMachineIdentityVerificationTimerValid;
- (BOOL)isMfaTimerValid;
- (BOOL)isPauseTimerValid;
- (BOOL)isRetryConnectionTimerValid;
- (BOOL)isTagReadTimerValid;
- (BOOL)isUserAcceptanceTimerValid;
- (BOOL)isWaitForMachineStartTimerValid;
- (HDFitnessMachineStateTimers)initWithQueue:(id)a3 delegate:(id)a4;
- (HDFitnessMachineStateTimersDelegate)delegate;
- (void)beginDisconnectTimeout;
- (void)beginFieldDetectTimeout;
- (void)beginMachineIdentityVerificationTimeout;
- (void)beginMfaTimeout;
- (void)beginPauseTimeout;
- (void)beginRetryConnectionTimeout;
- (void)beginTagReadTimeout;
- (void)beginUserAcceptanceTimeout;
- (void)beginWaitForMachineStartTimeout;
- (void)cancelAllTimers;
- (void)cancelDisconnectTimeout;
- (void)cancelFieldDetectTimeout;
- (void)cancelMachineIdentityVerificationTimeout;
- (void)cancelMfaTimeout;
- (void)cancelPauseTimeout;
- (void)cancelRetryConnectionTimeout;
- (void)cancelTagReadTimeout;
- (void)cancelUserAcceptanceTimeout;
- (void)cancelWaitForMachineStartTimeout;
- (void)dealloc;
@end

@implementation HDFitnessMachineStateTimers

- (HDFitnessMachineStateTimers)initWithQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDFitnessMachineStateTimers;
  v9 = [(HDFitnessMachineStateTimers *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (void)dealloc
{
  [(HDFitnessMachineStateTimers *)self cancelAllTimers];
  v3.receiver = self;
  v3.super_class = HDFitnessMachineStateTimers;
  [(HDFitnessMachineStateTimers *)&v3 dealloc];
}

- (void)cancelAllTimers
{
  [(HDFitnessMachineStateTimers *)self cancelFieldDetectTimeout];
  [(HDFitnessMachineStateTimers *)self cancelTagReadTimeout];
  [(HDFitnessMachineStateTimers *)self cancelMachineIdentityVerificationTimeout];
  [(HDFitnessMachineStateTimers *)self cancelUserAcceptanceTimeout];
  [(HDFitnessMachineStateTimers *)self cancelWaitForMachineStartTimeout];
  [(HDFitnessMachineStateTimers *)self cancelPauseTimeout];
  [(HDFitnessMachineStateTimers *)self cancelDisconnectTimeout];
  [(HDFitnessMachineStateTimers *)self cancelRetryConnectionTimeout];

  [(HDFitnessMachineStateTimers *)self cancelMfaTimeout];
}

- (HDFitnessMachineStateTimersDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)beginFieldDetectTimeout
{
  if (self && self->_fieldDetectTimer)
  {
    goto LABEL_3;
  }

  sub_1B5C4(self, a2, v2, v3, v4, v5, v6, v7, v28, v30, v32, v33, v34, location);
  v12 = [HDFitnessMachineStateTimer alloc];
  v13 = self ? self->_queue : 0;
  v14 = v13;
  sub_1B54C();
  sub_1B598();
  sub_1B5F4(v15, v16, v17, v18, v19, v20, v21, v22, v29, v31, sub_1AF58, &unk_5D520, v35, location);
  v23 = sub_1B58C();
  sub_3433C(v23, v24, stru_68.segname, v8, v25);
  v26 = sub_1812C();
  sub_345D4(v26, v27);

  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&location);
  if (self)
  {
LABEL_3:
    fieldDetectTimer = self->_fieldDetectTimer;
  }

  else
  {
    fieldDetectTimer = 0;
  }

  sub_1AB5C(fieldDetectTimer);
}

- (void)cancelFieldDetectTimeout
{
  if (self)
  {
    self = self->_fieldDetectTimer;
  }

  sub_3440C(self);
  v2 = sub_1B580();

  sub_345D4(v2, v3);
}

- (BOOL)isFieldDetectTimerValid
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_fieldDetectTimer;
  if (!v3)
  {
    return 0;
  }

  return v2;
}

- (void)beginTagReadTimeout
{
  if (self && self->_tagReadTimer)
  {
    goto LABEL_3;
  }

  sub_1B5C4(self, a2, v2, v3, v4, v5, v6, v7, v28, v30, v32, v33, v34, location);
  v12 = [HDFitnessMachineStateTimer alloc];
  v13 = self ? self->_queue : 0;
  v14 = v13;
  sub_1B54C();
  sub_1B598();
  sub_1B5F4(v15, v16, v17, v18, v19, v20, v21, v22, v29, v31, sub_1AFE8, &unk_5D520, v35, location);
  v23 = sub_1B58C();
  sub_3433C(v23, v24, &dword_1C + 2, v8, v25);
  v26 = sub_1812C();
  sub_34768(v26, v27);

  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&location);
  if (self)
  {
LABEL_3:
    tagReadTimer = self->_tagReadTimer;
  }

  else
  {
    tagReadTimer = 0;
  }

  sub_1AB5C(tagReadTimer);
}

- (void)cancelTagReadTimeout
{
  if (self)
  {
    self = self->_tagReadTimer;
  }

  sub_3440C(self);
  v2 = sub_1B580();

  sub_34768(v2, v3);
}

- (BOOL)isTagReadTimerValid
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_tagReadTimer;
  if (!v3)
  {
    return 0;
  }

  return v2;
}

- (void)beginMachineIdentityVerificationTimeout
{
  if (self && self->_machineIdentityVerificationTimer)
  {
    goto LABEL_3;
  }

  sub_1B5C4(self, a2, v2, v3, v4, v5, v6, v7, v28, v30, v32, v33, v34, location);
  v12 = [HDFitnessMachineStateTimer alloc];
  v13 = self ? self->_queue : 0;
  v14 = v13;
  sub_1B54C();
  sub_1B598();
  sub_1B5F4(v15, v16, v17, v18, v19, v20, v21, v22, v29, v31, sub_1B078, &unk_5D520, v35, location);
  v23 = sub_1B58C();
  sub_3433C(v23, v24, &dword_0 + 3, v8, v25);
  v26 = sub_1812C();
  sub_348FC(v26, v27);

  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&location);
  if (self)
  {
LABEL_3:
    machineIdentityVerificationTimer = self->_machineIdentityVerificationTimer;
  }

  else
  {
    machineIdentityVerificationTimer = 0;
  }

  sub_1AB5C(machineIdentityVerificationTimer);
}

- (void)cancelMachineIdentityVerificationTimeout
{
  if (self)
  {
    self = self->_machineIdentityVerificationTimer;
  }

  sub_3440C(self);
  v2 = sub_1B580();

  sub_348FC(v2, v3);
}

- (BOOL)isMachineIdentityVerificationTimerValid
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_machineIdentityVerificationTimer;
  if (!v3)
  {
    return 0;
  }

  return v2;
}

- (void)beginUserAcceptanceTimeout
{
  if (self && self->_userAcceptanceTimer)
  {
    goto LABEL_3;
  }

  sub_1B5C4(self, a2, v2, v3, v4, v5, v6, v7, v28, v30, v32, v33, v34, location);
  v12 = [HDFitnessMachineStateTimer alloc];
  v13 = self ? self->_queue : 0;
  v14 = v13;
  sub_1B54C();
  sub_1B598();
  sub_1B5F4(v15, v16, v17, v18, v19, v20, v21, v22, v29, v31, sub_1B108, &unk_5D520, v35, location);
  v23 = sub_1B58C();
  sub_3433C(v23, v24, stru_248.segname, v8, v25);
  v26 = sub_1812C();
  sub_34A90(v26, v27);

  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&location);
  if (self)
  {
LABEL_3:
    userAcceptanceTimer = self->_userAcceptanceTimer;
  }

  else
  {
    userAcceptanceTimer = 0;
  }

  sub_1AB5C(userAcceptanceTimer);
}

- (void)cancelUserAcceptanceTimeout
{
  if (self)
  {
    self = self->_userAcceptanceTimer;
  }

  sub_3440C(self);
  v2 = sub_1B580();

  sub_34A90(v2, v3);
}

- (BOOL)isUserAcceptanceTimerValid
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_userAcceptanceTimer;
  if (!v3)
  {
    return 0;
  }

  return v2;
}

- (void)beginWaitForMachineStartTimeout
{
  if (self && self->_waitForMachineStartTimer)
  {
    goto LABEL_3;
  }

  sub_1B5C4(self, a2, v2, v3, v4, v5, v6, v7, v28, v30, v32, v33, v34, location);
  v12 = [HDFitnessMachineStateTimer alloc];
  v13 = self ? self->_queue : 0;
  v14 = v13;
  sub_1B54C();
  sub_1B598();
  sub_1B5F4(v15, v16, v17, v18, v19, v20, v21, v22, v29, v31, sub_1B198, &unk_5D520, v35, location);
  v23 = sub_1B58C();
  sub_3433C(v23, v24, stru_68.segname, v8, v25);
  v26 = sub_1812C();
  sub_34C24(v26, v27);

  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&location);
  if (self)
  {
LABEL_3:
    waitForMachineStartTimer = self->_waitForMachineStartTimer;
  }

  else
  {
    waitForMachineStartTimer = 0;
  }

  sub_1AB5C(waitForMachineStartTimer);
}

- (void)cancelWaitForMachineStartTimeout
{
  if (self)
  {
    self = self->_waitForMachineStartTimer;
  }

  sub_3440C(self);
  v2 = sub_1B580();

  sub_34C24(v2, v3);
}

- (BOOL)isWaitForMachineStartTimerValid
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_waitForMachineStartTimer;
  if (!v3)
  {
    return 0;
  }

  return v2;
}

- (void)beginPauseTimeout
{
  if (self && self->_pauseTimer)
  {
    goto LABEL_3;
  }

  sub_1B5C4(self, a2, v2, v3, v4, v5, v6, v7, v28, v30, v32, v33, v34, location);
  v12 = [HDFitnessMachineStateTimer alloc];
  v13 = self ? self->_queue : 0;
  v14 = v13;
  sub_1B54C();
  sub_1B598();
  sub_1B5F4(v15, v16, v17, v18, v19, v20, v21, v22, v29, v31, sub_1B228, &unk_5D520, v35, location);
  v23 = sub_1B58C();
  sub_3433C(v23, v24, stru_68.segname, v8, v25);
  v26 = sub_1812C();
  sub_34DB8(v26, v27);

  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&location);
  if (self)
  {
LABEL_3:
    pauseTimer = self->_pauseTimer;
  }

  else
  {
    pauseTimer = 0;
  }

  sub_1AB5C(pauseTimer);
}

- (void)cancelPauseTimeout
{
  if (self)
  {
    self = self->_pauseTimer;
  }

  sub_3440C(self);
  v2 = sub_1B580();

  sub_34DB8(v2, v3);
}

- (BOOL)isPauseTimerValid
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_pauseTimer;
  if (!v3)
  {
    return 0;
  }

  return v2;
}

- (void)beginDisconnectTimeout
{
  if (self && self->_disconnectTimer)
  {
    goto LABEL_3;
  }

  sub_1B5C4(self, a2, v2, v3, v4, v5, v6, v7, v28, v30, v32, v33, v34, location);
  v12 = [HDFitnessMachineStateTimer alloc];
  v13 = self ? self->_queue : 0;
  v14 = v13;
  sub_1B54C();
  sub_1B598();
  sub_1B5F4(v15, v16, v17, v18, v19, v20, v21, v22, v29, v31, sub_1B2B8, &unk_5D520, v35, location);
  v23 = sub_1B58C();
  sub_3433C(v23, v24, &dword_1C + 2, v8, v25);
  v26 = sub_1812C();
  sub_34F4C(v26, v27);

  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&location);
  if (self)
  {
LABEL_3:
    disconnectTimer = self->_disconnectTimer;
  }

  else
  {
    disconnectTimer = 0;
  }

  sub_1AB5C(disconnectTimer);
}

- (void)cancelDisconnectTimeout
{
  if (self)
  {
    self = self->_disconnectTimer;
  }

  sub_3440C(self);
  v2 = sub_1B580();

  sub_34F4C(v2, v3);
}

- (BOOL)isDisconnectTimerValid
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_disconnectTimer;
  if (!v3)
  {
    return 0;
  }

  return v2;
}

- (void)beginRetryConnectionTimeout
{
  if (self && self->_retryConnectionTimer)
  {
    goto LABEL_3;
  }

  sub_1B5C4(self, a2, v2, v3, v4, v5, v6, v7, v28, v30, v32, v33, v34, location);
  v12 = [HDFitnessMachineStateTimer alloc];
  v13 = self ? self->_queue : 0;
  v14 = v13;
  sub_1B54C();
  sub_1B598();
  sub_1B5F4(v15, v16, v17, v18, v19, v20, v21, v22, v29, v31, sub_1B348, &unk_5D520, v35, location);
  v23 = sub_1B58C();
  sub_3433C(v23, v24, &stru_20.cmd + 3, v8, v25);
  v26 = sub_1812C();
  sub_350E0(v26, v27);

  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&location);
  if (self)
  {
LABEL_3:
    retryConnectionTimer = self->_retryConnectionTimer;
  }

  else
  {
    retryConnectionTimer = 0;
  }

  sub_1AB5C(retryConnectionTimer);
}

- (void)cancelRetryConnectionTimeout
{
  if (self)
  {
    self = self->_retryConnectionTimer;
  }

  sub_3440C(self);
  v2 = sub_1B580();

  sub_350E0(v2, v3);
}

- (BOOL)isRetryConnectionTimerValid
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_retryConnectionTimer;
  if (!v3)
  {
    return 0;
  }

  return v2;
}

- (void)beginMfaTimeout
{
  if (self && self->_mfaTimer)
  {
    goto LABEL_3;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 persistentDomainForName:kHKConnectedGymPreferencesDomain];

  v6 = [v5 objectForKeyedSubscript:kHKConnectedGymPreferencesSpartanMFATimeoutOverride];
  v7 = [v6 intValue];

  if (v7 <= 0)
  {
    v7 = 25;
  }

  sub_1B5C4(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26, v27, v28, v29, from);
  v16 = [HDFitnessMachineStateTimer alloc];
  v17 = v7;
  v18 = self ? self->_queue : 0;
  v19 = v18;
  objc_copyWeak(&v29, &from);
  v20 = sub_1B58C();
  sub_3433C(v20, v21, v17, v19, v22);
  v23 = sub_1812C();
  sub_35318(v23, v24);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);

  if (self)
  {
LABEL_3:
    mfaTimer = self->_mfaTimer;
  }

  else
  {
    mfaTimer = 0;
  }

  sub_1AB5C(mfaTimer);
}

- (void)cancelMfaTimeout
{
  if (self)
  {
    self = self->_mfaTimer;
  }

  sub_3440C(self);
  v2 = sub_1B580();

  sub_35318(v2, v3);
}

- (BOOL)isMfaTimerValid
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_mfaTimer;
  if (!v3)
  {
    return 0;
  }

  return v2;
}

@end
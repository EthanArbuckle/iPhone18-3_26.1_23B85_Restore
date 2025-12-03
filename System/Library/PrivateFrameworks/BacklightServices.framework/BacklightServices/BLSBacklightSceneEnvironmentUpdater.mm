@interface BLSBacklightSceneEnvironmentUpdater
- (BLSBacklightSceneEnvironmentUpdater)initWithEnvironment:(id)environment;
- (BOOL)ensureAlwaysOnSessionCreatedForEnvironment:(_BOOL8)environment;
- (void)performDesiredFidelityRequest:(id)request;
- (void)performFrameSpecifiersRequest:(id)request;
- (void)updatedEnvironmentWithDelta:(id)delta backlightSceneUpdate:(id)update;
@end

@implementation BLSBacklightSceneEnvironmentUpdater

- (BLSBacklightSceneEnvironmentUpdater)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v8.receiver = self;
  v8.super_class = BLSBacklightSceneEnvironmentUpdater;
  v5 = [(BLSBacklightSceneEnvironmentUpdater *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
  }

  return v6;
}

- (void)updatedEnvironmentWithDelta:(id)delta backlightSceneUpdate:(id)update
{
  v48 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    delegate = bls_environment_log();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      [BLSBacklightSceneEnvironmentUpdater updatedEnvironmentWithDelta:delegate backlightSceneUpdate:?];
    }

    goto LABEL_27;
  }

  if ((*&delta & 4) != 0)
  {
    visualState = [WeakRetained visualState];
    updateFidelity = [visualState updateFidelity];
    adjustedLuminance = [visualState adjustedLuminance];
    alwaysOnSession = [v8 alwaysOnSession];
    v13 = alwaysOnSession;
    if (adjustedLuminance == 1 || (updateFidelity - 1) <= 1)
    {
      if (![(BLSBacklightSceneEnvironmentUpdater *)self ensureAlwaysOnSessionCreatedForEnvironment:v8])
      {
        goto LABEL_16;
      }

      alwaysOnSession2 = [v8 alwaysOnSession];

      v15 = bls_environment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        identifier = [v8 identifier];
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ visualState:%u date:%u active:%u seed:%u }", 1, (*&delta >> 3) & 1, (*&delta >> 1) & 1, (*&delta >> 4) & 1];
        *buf = 134218754;
        selfCopy5 = self;
        v40 = 2114;
        v41 = alwaysOnSession2;
        v42 = 2112;
        v43 = identifier;
        v44 = 2112;
        v45 = v37;
        _os_log_impl(&dword_21FE25000, v15, OS_LOG_TYPE_INFO, "%p created alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
      }
    }

    else
    {
      if (!alwaysOnSession)
      {
LABEL_16:

        goto LABEL_17;
      }

      v14 = BLSDeviceSupports1HzFlipbook();
      v15 = bls_environment_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v14)
      {
        if (v16)
        {
          identifier2 = [v8 identifier];
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ visualState:%u date:%u active:%u seed:%u }", 1, (*&delta >> 3) & 1, (*&delta >> 1) & 1, (*&delta >> 4) & 1];
          *buf = 134218754;
          selfCopy5 = self;
          v40 = 2114;
          v41 = v13;
          v42 = 2112;
          v43 = identifier2;
          v44 = 2112;
          v45 = v18;
          _os_log_impl(&dword_21FE25000, v15, OS_LOG_TYPE_INFO, "%p (rdar://133418257)  keeping alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
        }

        alwaysOnSession2 = v13;
      }

      else
      {
        if (v16)
        {
          identifier3 = [v8 identifier];
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ visualState:%u date:%u active:%u seed:%u }", 1, (*&delta >> 3) & 1, (*&delta >> 1) & 1, (*&delta >> 4) & 1];
          *buf = 134218754;
          selfCopy5 = self;
          v40 = 2114;
          v41 = v13;
          v42 = 2112;
          v43 = identifier3;
          v44 = 2112;
          v45 = v22;
          _os_log_impl(&dword_21FE25000, v15, OS_LOG_TYPE_INFO, "%p destroying alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
        }

        [v13 invalidate];
        [v8 setAlwaysOnSession:0];
        alwaysOnSession2 = 0;
        v15 = v13;
      }
    }

    v13 = alwaysOnSession2;
    goto LABEL_16;
  }

LABEL_17:
  if (updateCopy)
  {
    context = [updateCopy context];
    triggerEvent = [context triggerEvent];

    [triggerEvent eventID];
    [triggerEvent state];
    identifier4 = [v8 identifier];
    BLSEncode4Chars(identifier4, 4);
    identifier5 = [v8 identifier];
    BLSEncode4Chars(identifier5, 0);
    kdebug_trace();

    delegate = [v8 delegate];
    v27 = bls_environment_log();
    v28 = v27;
    if (delegate)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        identifier6 = [v8 identifier];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 134219010;
        selfCopy5 = self;
        v40 = 2114;
        v41 = identifier6;
        v42 = 2048;
        v43 = delegate;
        v44 = 2114;
        v45 = v31;
        v46 = 2114;
        v47 = updateCopy;
        _os_log_impl(&dword_21FE25000, v28, OS_LOG_TYPE_INFO, "%p calling performBacklightSceneUpdate: on delegate for %{public}@: %p %{public}@ with %{public}@", buf, 0x34u);
      }

      [delegate environment:v8 performBacklightSceneUpdate:updateCopy];
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        selfCopy5 = self;
        v40 = 2114;
        v41 = v8;
        v42 = 2114;
        v43 = updateCopy;
        _os_log_error_impl(&dword_21FE25000, v28, OS_LOG_TYPE_ERROR, "%p delegate:<NULL> (will complete immediately) environment:%{public}@ performBacklightSceneUpdate:%{public}@", buf, 0x20u);
      }

      [updateCopy sceneContentsDidUpdate];
      context2 = [updateCopy context];
      isAnimated = [context2 isAnimated];
      v34 = 0.0;
      if (isAnimated)
      {
        v34 = 0.5;
      }

      [updateCopy performBacklightRampWithDuration:v34];

      [updateCopy sceneContentsAnimationDidComplete];
    }

LABEL_27:
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)performDesiredFidelityRequest:(id)request
{
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (WeakRetained)
  {
    [0 eventID];
    [0 state];
    identifier = [WeakRetained identifier];
    BLSEncode4Chars(identifier, 4);
    identifier2 = [WeakRetained identifier];
    BLSEncode4Chars(identifier2, 0);
    kdebug_trace();

    v10 = [(BLSBacklightSceneEnvironmentUpdater *)self ensureAlwaysOnSessionCreatedForEnvironment:?];
    alwaysOnSession = [WeakRetained alwaysOnSession];
    v12 = bls_environment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      identifier3 = [WeakRetained identifier];
      *buf = 134219266;
      selfCopy = self;
      v26 = 2114;
      v27 = requestCopy;
      v28 = 2114;
      v29 = alwaysOnSession;
      v30 = 2048;
      v31 = WeakRetained;
      v32 = 2114;
      v33 = identifier3;
      v34 = 1024;
      v35 = v10;
      _os_log_impl(&dword_21FE25000, v12, OS_LOG_TYPE_INFO, "%p performDesiredFidelityRequest:%{public}@ alwaysOnSession:%{public}@ environment:<%p %{public}@>, createdSession=%{BOOL}u", buf, 0x3Au);
    }

    delegate = [WeakRetained delegate];

    if (delegate)
    {
      v15 = objc_alloc(MEMORY[0x277CCA970]);
      v16 = [MEMORY[0x277CBEAA8] now];
      v17 = [v15 initWithStartDate:v16 duration:60.0];

      delegate2 = [WeakRetained delegate];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __69__BLSBacklightSceneEnvironmentUpdater_performDesiredFidelityRequest___block_invoke;
      v20[3] = &unk_278428790;
      v21 = alwaysOnSession;
      v22 = v17;
      v23 = requestCopy;
      v19 = v17;
      [delegate2 environment:WeakRetained timelinesForDateInterval:v19 previousSpecifier:0 completion:v20];
    }

    else
    {
      [requestCopy completeWithDesiredFidelity:1];
    }
  }

  else
  {
    v6 = bls_environment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BLSBacklightSceneEnvironmentUpdater *)self performDesiredFidelityRequest:v6];
    }

    [requestCopy completeWithDesiredFidelity:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __69__BLSBacklightSceneEnvironmentUpdater_performDesiredFidelityRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__BLSBacklightSceneEnvironmentUpdater_performDesiredFidelityRequest___block_invoke_2;
  v5[3] = &unk_278428768;
  v6 = *(a1 + 48);
  [v3 desiredFidelityForDateInterval:v4 timelines:a2 withCompletion:v5];
}

- (void)performFrameSpecifiersRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    alwaysOnSession = [WeakRetained alwaysOnSession];
    v8 = bls_environment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [v6 identifier];
      *buf = 134219010;
      selfCopy2 = self;
      v20 = 2114;
      v21 = requestCopy;
      v22 = 2114;
      v23 = alwaysOnSession;
      v24 = 2048;
      v25 = v6;
      v26 = 2114;
      v27 = identifier;
      _os_log_impl(&dword_21FE25000, v8, OS_LOG_TYPE_INFO, "%p performFrameSpecifiersRequest:%{public}@ alwaysOnSession:%{public}@ environment:<%p %{public}@>", buf, 0x34u);
    }

    delegate = [v6 delegate];

    if (delegate && alwaysOnSession)
    {
      dateInterval = [requestCopy dateInterval];
      delegate2 = [v6 delegate];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __69__BLSBacklightSceneEnvironmentUpdater_performFrameSpecifiersRequest___block_invoke;
      v15[3] = &unk_2784287B8;
      v16 = alwaysOnSession;
      v17 = requestCopy;
      [delegate2 environment:v6 timelinesForDateInterval:dateInterval previousSpecifier:0 completion:v15];
    }

    else
    {
      [requestCopy completeWithDateSpecifiers:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    v13 = bls_environment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_21FE25000, v13, OS_LOG_TYPE_DEFAULT, "%p: performFrameSpecifiersRequest: environment is nil", buf, 0xCu);
    }

    [requestCopy completeWithDateSpecifiers:MEMORY[0x277CBEBF8]];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)ensureAlwaysOnSessionCreatedForEnvironment:(_BOOL8)environment
{
  v3 = a2;
  v4 = v3;
  if (environment)
  {
    alwaysOnSession = [v3 alwaysOnSession];
    environment = alwaysOnSession == 0;
    if (!alwaysOnSession)
    {
      alwaysOnSession = [[BLSAlwaysOnSession alloc] initWithEnvironment:v4];
      [v4 setAlwaysOnSession:alwaysOnSession];
    }
  }

  return environment;
}

- (void)updatedEnvironmentWithDelta:(uint64_t)a1 backlightSceneUpdate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_21FE25000, a2, OS_LOG_TYPE_ERROR, "%p: updatedEnvironmentWithDelta: environment is nil", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performDesiredFidelityRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_21FE25000, a2, OS_LOG_TYPE_ERROR, "%p: performDesiredFidelityRequest: environment is nil", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
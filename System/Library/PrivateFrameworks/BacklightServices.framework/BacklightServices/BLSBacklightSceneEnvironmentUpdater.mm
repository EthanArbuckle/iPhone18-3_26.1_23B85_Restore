@interface BLSBacklightSceneEnvironmentUpdater
- (BLSBacklightSceneEnvironmentUpdater)initWithEnvironment:(id)a3;
- (BOOL)ensureAlwaysOnSessionCreatedForEnvironment:(_BOOL8)a1;
- (void)performDesiredFidelityRequest:(id)a3;
- (void)performFrameSpecifiersRequest:(id)a3;
- (void)updatedEnvironmentWithDelta:(id)a3 backlightSceneUpdate:(id)a4;
@end

@implementation BLSBacklightSceneEnvironmentUpdater

- (BLSBacklightSceneEnvironmentUpdater)initWithEnvironment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BLSBacklightSceneEnvironmentUpdater;
  v5 = [(BLSBacklightSceneEnvironmentUpdater *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
  }

  return v6;
}

- (void)updatedEnvironmentWithDelta:(id)a3 backlightSceneUpdate:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v20 = bls_environment_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BLSBacklightSceneEnvironmentUpdater updatedEnvironmentWithDelta:v20 backlightSceneUpdate:?];
    }

    goto LABEL_27;
  }

  if ((*&a3 & 4) != 0)
  {
    v9 = [WeakRetained visualState];
    v10 = [v9 updateFidelity];
    v11 = [v9 adjustedLuminance];
    v12 = [v8 alwaysOnSession];
    v13 = v12;
    if (v11 == 1 || (v10 - 1) <= 1)
    {
      if (![(BLSBacklightSceneEnvironmentUpdater *)self ensureAlwaysOnSessionCreatedForEnvironment:v8])
      {
        goto LABEL_16;
      }

      v19 = [v8 alwaysOnSession];

      v15 = bls_environment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v36 = [v8 identifier];
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ visualState:%u date:%u active:%u seed:%u }", 1, (*&a3 >> 3) & 1, (*&a3 >> 1) & 1, (*&a3 >> 4) & 1];
        *buf = 134218754;
        v39 = self;
        v40 = 2114;
        v41 = v19;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = v37;
        _os_log_impl(&dword_21FE25000, v15, OS_LOG_TYPE_INFO, "%p created alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
      }
    }

    else
    {
      if (!v12)
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
          v17 = [v8 identifier];
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ visualState:%u date:%u active:%u seed:%u }", 1, (*&a3 >> 3) & 1, (*&a3 >> 1) & 1, (*&a3 >> 4) & 1];
          *buf = 134218754;
          v39 = self;
          v40 = 2114;
          v41 = v13;
          v42 = 2112;
          v43 = v17;
          v44 = 2112;
          v45 = v18;
          _os_log_impl(&dword_21FE25000, v15, OS_LOG_TYPE_INFO, "%p (rdar://133418257)  keeping alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
        }

        v19 = v13;
      }

      else
      {
        if (v16)
        {
          v21 = [v8 identifier];
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ visualState:%u date:%u active:%u seed:%u }", 1, (*&a3 >> 3) & 1, (*&a3 >> 1) & 1, (*&a3 >> 4) & 1];
          *buf = 134218754;
          v39 = self;
          v40 = 2114;
          v41 = v13;
          v42 = 2112;
          v43 = v21;
          v44 = 2112;
          v45 = v22;
          _os_log_impl(&dword_21FE25000, v15, OS_LOG_TYPE_INFO, "%p destroying alwaysOnSession:%{public}@ for updatedEnvironment:%@ withDelta:%@", buf, 0x2Au);
        }

        [v13 invalidate];
        [v8 setAlwaysOnSession:0];
        v19 = 0;
        v15 = v13;
      }
    }

    v13 = v19;
    goto LABEL_16;
  }

LABEL_17:
  if (v6)
  {
    v23 = [v6 context];
    v24 = [v23 triggerEvent];

    [v24 eventID];
    [v24 state];
    v25 = [v8 identifier];
    BLSEncode4Chars(v25, 4);
    v26 = [v8 identifier];
    BLSEncode4Chars(v26, 0);
    kdebug_trace();

    v20 = [v8 delegate];
    v27 = bls_environment_log();
    v28 = v27;
    if (v20)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v29 = [v8 identifier];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 134219010;
        v39 = self;
        v40 = 2114;
        v41 = v29;
        v42 = 2048;
        v43 = v20;
        v44 = 2114;
        v45 = v31;
        v46 = 2114;
        v47 = v6;
        _os_log_impl(&dword_21FE25000, v28, OS_LOG_TYPE_INFO, "%p calling performBacklightSceneUpdate: on delegate for %{public}@: %p %{public}@ with %{public}@", buf, 0x34u);
      }

      [v20 environment:v8 performBacklightSceneUpdate:v6];
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v39 = self;
        v40 = 2114;
        v41 = v8;
        v42 = 2114;
        v43 = v6;
        _os_log_error_impl(&dword_21FE25000, v28, OS_LOG_TYPE_ERROR, "%p delegate:<NULL> (will complete immediately) environment:%{public}@ performBacklightSceneUpdate:%{public}@", buf, 0x20u);
      }

      [v6 sceneContentsDidUpdate];
      v32 = [v6 context];
      v33 = [v32 isAnimated];
      v34 = 0.0;
      if (v33)
      {
        v34 = 0.5;
      }

      [v6 performBacklightRampWithDuration:v34];

      [v6 sceneContentsAnimationDidComplete];
    }

LABEL_27:
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)performDesiredFidelityRequest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (WeakRetained)
  {
    [0 eventID];
    [0 state];
    v8 = [WeakRetained identifier];
    BLSEncode4Chars(v8, 4);
    v9 = [WeakRetained identifier];
    BLSEncode4Chars(v9, 0);
    kdebug_trace();

    v10 = [(BLSBacklightSceneEnvironmentUpdater *)self ensureAlwaysOnSessionCreatedForEnvironment:?];
    v11 = [WeakRetained alwaysOnSession];
    v12 = bls_environment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [WeakRetained identifier];
      *buf = 134219266;
      v25 = self;
      v26 = 2114;
      v27 = v4;
      v28 = 2114;
      v29 = v11;
      v30 = 2048;
      v31 = WeakRetained;
      v32 = 2114;
      v33 = v13;
      v34 = 1024;
      v35 = v10;
      _os_log_impl(&dword_21FE25000, v12, OS_LOG_TYPE_INFO, "%p performDesiredFidelityRequest:%{public}@ alwaysOnSession:%{public}@ environment:<%p %{public}@>, createdSession=%{BOOL}u", buf, 0x3Au);
    }

    v14 = [WeakRetained delegate];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277CCA970]);
      v16 = [MEMORY[0x277CBEAA8] now];
      v17 = [v15 initWithStartDate:v16 duration:60.0];

      v18 = [WeakRetained delegate];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __69__BLSBacklightSceneEnvironmentUpdater_performDesiredFidelityRequest___block_invoke;
      v20[3] = &unk_278428790;
      v21 = v11;
      v22 = v17;
      v23 = v4;
      v19 = v17;
      [v18 environment:WeakRetained timelinesForDateInterval:v19 previousSpecifier:0 completion:v20];
    }

    else
    {
      [v4 completeWithDesiredFidelity:1];
    }
  }

  else
  {
    v6 = bls_environment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BLSBacklightSceneEnvironmentUpdater *)self performDesiredFidelityRequest:v6];
    }

    [v4 completeWithDesiredFidelity:1];
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

- (void)performFrameSpecifiersRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained alwaysOnSession];
    v8 = bls_environment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 identifier];
      *buf = 134219010;
      v19 = self;
      v20 = 2114;
      v21 = v4;
      v22 = 2114;
      v23 = v7;
      v24 = 2048;
      v25 = v6;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&dword_21FE25000, v8, OS_LOG_TYPE_INFO, "%p performFrameSpecifiersRequest:%{public}@ alwaysOnSession:%{public}@ environment:<%p %{public}@>", buf, 0x34u);
    }

    v10 = [v6 delegate];

    if (v10 && v7)
    {
      v11 = [v4 dateInterval];
      v12 = [v6 delegate];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __69__BLSBacklightSceneEnvironmentUpdater_performFrameSpecifiersRequest___block_invoke;
      v15[3] = &unk_2784287B8;
      v16 = v7;
      v17 = v4;
      [v12 environment:v6 timelinesForDateInterval:v11 previousSpecifier:0 completion:v15];
    }

    else
    {
      [v4 completeWithDateSpecifiers:MEMORY[0x277CBEBF8]];
    }
  }

  else
  {
    v13 = bls_environment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = self;
      _os_log_impl(&dword_21FE25000, v13, OS_LOG_TYPE_DEFAULT, "%p: performFrameSpecifiersRequest: environment is nil", buf, 0xCu);
    }

    [v4 completeWithDateSpecifiers:MEMORY[0x277CBEBF8]];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)ensureAlwaysOnSessionCreatedForEnvironment:(_BOOL8)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 alwaysOnSession];
    a1 = v5 == 0;
    if (!v5)
    {
      v5 = [[BLSAlwaysOnSession alloc] initWithEnvironment:v4];
      [v4 setAlwaysOnSession:v5];
    }
  }

  return a1;
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
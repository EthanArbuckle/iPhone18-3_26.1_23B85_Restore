@interface BKSProcess
+ (double)backgroundTimeRemaining;
+ (id)busyExtensionInstances:(id)a3;
+ (id)currentProcess;
- (BKSProcess)initWithBundleIdentifier:(id)a3;
- (BKSProcess)initWithProcessIdentity:(id)a3;
- (BKSProcessExitContext)lastExitContext;
- (BOOL)_bootstrapWithError:(id *)a3;
- (BOOL)bootstrapWithProcessHandle:(id)a3 error:(id *)a4;
- (double)backgroundTimeRemaining;
- (id)description;
- (void)bootstrapCurrentProcess;
- (void)invalidate;
- (void)setNowPlayingWithAudio:(BOOL)a3;
- (void)setRecordingAudio:(BOOL)a3;
@end

@implementation BKSProcess

+ (id)currentProcess
{
  if (currentProcess_onceToken != -1)
  {
    +[BKSProcess currentProcess];
  }

  v3 = currentProcess___currentProcess;

  return v3;
}

uint64_t __28__BKSProcess_currentProcess__block_invoke()
{
  v0 = [BKSProcess alloc];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [(BKSProcess *)v0 initWithBundleIdentifier:v2];
  v4 = currentProcess___currentProcess;
  currentProcess___currentProcess = v3;

  v5 = currentProcess___currentProcess;

  return [v5 bootstrapCurrentProcess];
}

- (void)bootstrapCurrentProcess
{
  v3 = [MEMORY[0x277CF0CC8] processHandle];
  handle = self->_handle;
  self->_handle = v3;

  v5 = [MEMORY[0x277D46F48] currentProcess];
  processHandle = self->_processHandle;
  self->_processHandle = v5;

  self->_bootstrapped = 1;
}

- (BKSProcess)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v4)
  {
    [BKSProcess initWithBundleIdentifier:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BKSProcess initWithBundleIdentifier:];
  }

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    [MEMORY[0x277D46F60] identityOfCurrentProcess];
  }

  else
  {
    [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:v4 jobLabel:v4 auid:getuid() platform:6];
  }
  v8 = ;
  v9 = [(BKSProcess *)self initWithProcessIdentity:v8];

  return v9;
}

- (BKSProcess)initWithProcessIdentity:(id)a3
{
  v4 = a3;
  NSClassFromString(&cfstr_Rbsprocessiden.isa);
  if (!v4)
  {
    [BKSProcess initWithProcessIdentity:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BKSProcess initWithProcessIdentity:];
  }

  v12.receiver = self;
  v12.super_class = BKSProcess;
  v5 = [(BKSProcess *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 copy];
    identity = v6->_identity;
    v6->_identity = v7;

    v9 = [MEMORY[0x277D46F80] monitor];
    monitor = v6->_monitor;
    v6->_monitor = v9;
  }

  return v6;
}

- (BOOL)bootstrapWithProcessHandle:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (self->_handle)
  {
    [BKSProcess bootstrapWithProcessHandle:error:];
  }

  if (objc_opt_class())
  {
    v8 = v7;
    NSClassFromString(&cfstr_Bsprocesshandl.isa);
    if (!v8)
    {
      [BKSProcess bootstrapWithProcessHandle:error:];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BKSProcess bootstrapWithProcessHandle:error:];
    }

    objc_storeStrong(&self->_handle, a3);
    v9 = [(BKSProcess *)self _bootstrapWithError:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = rbs_shim_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    processHandle = self->_processHandle;
    v10 = 134218242;
    v11 = self;
    v12 = 2114;
    v13 = processHandle;
    _os_log_impl(&dword_22EEB6000, v3, OS_LOG_TYPE_DEFAULT, "[BKSProcess:%p] Invalidating BKSProcess for %{public}@", &v10, 0x16u);
  }

  [(RBSAssertion *)self->_assertion invalidate];
  assertion = self->_assertion;
  self->_assertion = 0;

  [(BKSProcessAssertion *)self->_audioAssertion invalidate];
  audioAssertion = self->_audioAssertion;
  self->_audioAssertion = 0;

  [(BKSProcessAssertion *)self->_mediaAssertion invalidate];
  mediaAssertion = self->_mediaAssertion;
  self->_mediaAssertion = 0;

  [(RBSProcessMonitor *)self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

+ (double)backgroundTimeRemaining
{
  v2 = [a1 currentProcess];
  [v2 backgroundTimeRemaining];
  v4 = v3;

  result = 1.79769313e308;
  if (v4 != *MEMORY[0x277D47080])
  {
    return v4;
  }

  return result;
}

- (double)backgroundTimeRemaining
{
  v2 = [(RBSProcessHandle *)self->_processHandle activeLimitations];
  [v2 runTime];
  v4 = v3;

  result = 1.79769313e308;
  if (v4 != *MEMORY[0x277D47080])
  {
    return v4;
  }

  return result;
}

- (BKSProcessExitContext)lastExitContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastExitContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNowPlayingWithAudio:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_nowPlayingWithAudio != v3)
  {
    self->_nowPlayingWithAudio = v3;
    v5 = rbs_shim_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      processHandle = self->_processHandle;
      v11 = 134218498;
      v12 = self;
      v13 = 2114;
      v14 = processHandle;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_22EEB6000, v5, OS_LOG_TYPE_DEFAULT, "[BKSProcess:%p] %{public}@ now playing with audio: %{BOOL}d", &v11, 0x1Cu);
    }

    if (self->_nowPlayingWithAudio)
    {
      v7 = [[BKSProcessAssertion alloc] initWithPID:[(RBSProcessHandle *)self->_processHandle pid] flags:13 reason:1 name:@"[BKSProcess setNowPlayingWithAudio:YES]"];
      audioAssertion = self->_audioAssertion;
      self->_audioAssertion = v7;

      [(BKSProcessAssertion *)self->_audioAssertion acquire];
    }

    else
    {
      [(BKSProcessAssertion *)self->_audioAssertion invalidate];
      v9 = self->_audioAssertion;
      self->_audioAssertion = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setRecordingAudio:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_recordingAudio != v3)
  {
    self->_recordingAudio = v3;
    v5 = rbs_shim_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      processHandle = self->_processHandle;
      v11 = 134218498;
      v12 = self;
      v13 = 2114;
      v14 = processHandle;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_22EEB6000, v5, OS_LOG_TYPE_DEFAULT, "[BKSProcess:%p] %{public}@ now recording audio: %{BOOL}d", &v11, 0x1Cu);
    }

    if (self->_recordingAudio)
    {
      v7 = [[BKSProcessAssertion alloc] initWithPID:[(RBSProcessHandle *)self->_processHandle pid] flags:13 reason:23 name:@"[BKSProcess setRecordingAudio:YES]"];
      mediaAssertion = self->_mediaAssertion;
      self->_mediaAssertion = v7;

      [(BKSProcessAssertion *)self->_mediaAssertion acquire];
    }

    else
    {
      [(BKSProcessAssertion *)self->_mediaAssertion invalidate];
      v9 = self->_mediaAssertion;
      self->_mediaAssertion = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)busyExtensionInstances:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277D46E20] sharedInstance];
  v21 = 0;
  v6 = [v5 busyExtensionInstancesFromSet:v3 error:&v21];
  v7 = v21;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v22 = @"ExtensionBundleID";
        v23 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:{1, v17}];
        [v4 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_bootstrapWithError:(id *)a3
{
  v70[5] = *MEMORY[0x277D85DE8];
  if (!self->_identity)
  {
    [BKSProcess _bootstrapWithError:];
  }

  os_unfair_lock_lock(&self->_lock);
  self->_bootstrapped = 1;
  v5 = [MEMORY[0x277D46EF8] grant];
  v70[0] = v5;
  v6 = [MEMORY[0x277D46E48] invalidateAfterInterval:1.0];
  v70[1] = v6;
  v7 = [MEMORY[0x277D46EA8] grantWithBackgroundPriority];
  v70[2] = v7;
  v8 = [MEMORY[0x277D46DF0] grant];
  v70[3] = v8;
  v9 = [MEMORY[0x277D46FC0] grantWithResistance:30];
  v70[4] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:5];

  handle = self->_handle;
  if (handle)
  {
    v12 = [(BSProcessHandle *)handle pid];
    v13 = MEMORY[0x277D46F48];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    v60 = 0;
    v15 = [v13 handleForIdentifier:v14 error:&v60];
    v16 = v60;

    if (v15)
    {
      v17 = objc_alloc(MEMORY[0x277D46DB8]);
      v18 = MEMORY[0x277D47008];
      v19 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      v20 = [v18 targetWithProcessIdentifier:v19];
      v21 = [v17 initWithExplanation:@"BKSProcessLaunch" target:v20 attributes:v10];

      [v21 acquireWithError:0];
LABEL_7:
      v25 = rbs_shim_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(RBSProcessIdentity *)self->_identity shortDescription];
        *buf = 134218498;
        v65 = self;
        v66 = 2114;
        v67 = v15;
        v68 = 2114;
        v69 = v26;
        _os_log_impl(&dword_22EEB6000, v25, OS_LOG_TYPE_DEFAULT, "[BKSProcess:%p] %{public}@ bootstrapped successfully as %{public}@", buf, 0x20u);
      }

      objc_storeStrong(&self->_processHandle, v15);
      objc_storeStrong(&self->_assertion, v21);
      if (!self->_handle)
      {
        v27 = [v15 legacyHandle];
        v28 = self->_handle;
        self->_handle = v27;
      }

      if (self->_assertion)
      {
        v29 = dispatch_time(0, 1000000000);
        v30 = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __34__BKSProcess__bootstrapWithError___block_invoke;
        block[3] = &unk_278871B48;
        block[4] = self;
        dispatch_after(v29, v30, block);
      }

      v31 = 1;
      goto LABEL_31;
    }

    v21 = 0;
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x277D46EB0]);
    [v22 setIdentity:self->_identity];
    [v22 setExplanation:@"BKSProcessLaunch"];
    [v22 setAttributes:v10];
    v23 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v22];
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v24 = [v23 execute:&v59 assertion:&v58 error:&v57];
    v15 = v59;
    v21 = v58;
    v16 = v57;

    if (v24)
    {
      goto LABEL_7;
    }
  }

  v50 = a3;
  v51 = v10;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v32 = [v16 underlyingErrors];
  v33 = [v32 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (!v33)
  {
    goto LABEL_26;
  }

  v34 = v33;
  v35 = *v53;
  v36 = *MEMORY[0x277CCA5B8];
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v53 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v38 = *(*(&v52 + 1) + 8 * i);
      lastExitContext = [v38 domain];
      if ([lastExitContext isEqual:v36])
      {
        v40 = [v38 code];

        if (v40 != 80)
        {
          continue;
        }

        v41 = objc_alloc_init(BKSProcessExitContext);
        [(BKSProcessExitContext *)v41 setExitReason:?];
        lastExitContext = self->_lastExitContext;
        self->_lastExitContext = v41;
      }
    }

    v34 = [v32 countByEnumeratingWithState:&v52 objects:v63 count:16];
  }

  while (v34);
LABEL_26:

  v42 = rbs_shim_log();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v48 = [(RBSProcessIdentity *)self->_identity shortDescription];
    *buf = 134218498;
    v65 = self;
    v66 = 2114;
    v67 = v48;
    v68 = 2114;
    v69 = v16;
    _os_log_error_impl(&dword_22EEB6000, v42, OS_LOG_TYPE_ERROR, "[BKSProcess:%p] Bootstrap failed for %{public}@ with error: <%{public}@>", buf, 0x20u);
  }

  v10 = v51;
  if (v50)
  {
    v43 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA7E8];
    v61[0] = *MEMORY[0x277CCA470];
    v61[1] = v44;
    v62[0] = @"Bootstrap failed";
    v62[1] = v16;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
    *v50 = [v43 errorWithDomain:@"BKSProcessErrorDomain" code:1 userInfo:v45];
  }

  v31 = 0;
  v21 = v49;
LABEL_31:
  os_unfair_lock_unlock(&self->_lock);

  v46 = *MEMORY[0x277D85DE8];
  return v31;
}

void __34__BKSProcess__bootstrapWithError___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v4);
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [(RBSProcessIdentity *)self->_identity shortDescription];
  v6 = [v3 initWithFormat:@"<%@| %@>", v4, v5];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)initWithBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithBundleIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[object isKindOfClass:NSStringClass]" object:? file:? lineNumber:? description:?];
}

- (void)initWithProcessIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithProcessIdentity:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[object isKindOfClass:RBSProcessIdentityClass]" object:? file:? lineNumber:? description:?];
}

- (void)bootstrapWithProcessHandle:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_handle == nil" object:? file:? lineNumber:? description:?];
}

- (void)bootstrapWithProcessHandle:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

- (void)bootstrapWithProcessHandle:error:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[object isKindOfClass:BSProcessHandleClass]" object:? file:? lineNumber:? description:?];
}

- (void)_bootstrapWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
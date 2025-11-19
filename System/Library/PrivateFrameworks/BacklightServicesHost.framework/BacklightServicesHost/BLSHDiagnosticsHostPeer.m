@interface BLSHDiagnosticsHostPeer
- (BLSHDiagnosticsHostPeer)initWithFlipbookDiagnosticsProvider:(id)a3 peer:(id)a4;
- (BOOL)isValid;
- (NSString)description;
- (id)_lock_validateHostFrame:(id)a3 source:(id)a4;
- (id)allFlipbookFrames;
- (id)frameOnGlassNow;
- (id)frameOnGlassWhenFlipbookLastCancelled;
- (id)hostFrameForUUID:(id)a3;
- (void)allFlipbookFrames;
- (void)dealloc;
- (void)genericSurfaceForFrameUUID:(id)a3 reply:(id)a4 name:(id)a5 surfaceFromFrame:(id)a6;
- (void)invalidate;
@end

@implementation BLSHDiagnosticsHostPeer

- (BLSHDiagnosticsHostPeer)initWithFlipbookDiagnosticsProvider:(id)a3 peer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BLSHDiagnosticsHostPeer;
  v9 = [(BLSHDiagnosticsHostPeer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_entitlements = 0;
    v11 = [v8 remoteProcess];
    if ([v11 hasEntitlement:@"com.apple.backlight.captureFrameOnGlass"])
    {
      v10->_entitlements |= 1uLL;
    }

    objc_storeStrong(&v10->_flipbookDiagnosticsProvider, a3);
    v10->_valid = 1;
    v12 = [v8 remoteProcess];
    v10->_clientPid = [v12 pid];
  }

  return v10;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_2();
  v6 = 1024;
  v7 = v2;
  _os_log_fault_impl(&dword_21FD11000, v3, OS_LOG_TYPE_FAULT, "%p must invalidate before deallocating service for pid:%d", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_clientPid withName:@"clientPID"];
  v5 = [v3 build];

  return v5;
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  valid = self->_valid;
  os_unfair_lock_unlock(&self->_lock);
  return valid;
}

- (void)invalidate
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_21FD11000, v1, OS_LOG_TYPE_DEBUG, "%p invalidate %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)allFlipbookFrames
{
  if ([(BLSHDiagnosticsHostPeer *)self isValid])
  {
    v3 = [(BLSFlipbookDiagnosticsProviding *)self->_flipbookDiagnosticsProvider allFlipbookFrames];
    v4 = bls_diagnostics_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(BLSHDiagnosticsHostPeer *)self allFlipbookFrames];
    }
  }

  else
  {
    v4 = bls_diagnostics_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BLSHDiagnosticsHostPeer allFlipbookFrames];
    }

    v3 = 0;
  }

  v5 = [v3 bs_mapNoNulls:&__block_literal_global_10];

  return v5;
}

- (id)frameOnGlassNow
{
  v3 = [(BLSFlipbookDiagnosticsProviding *)self->_flipbookDiagnosticsProvider frameOnGlassNow];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BLSHDiagnosticsHostPeer *)self _lock_validateHostFrame:v3 source:@"frameOnGlassNow"];

  lock_cachedFrameOnGlassNow = self->_lock_cachedFrameOnGlassNow;
  self->_lock_cachedFrameOnGlassNow = v4;
  v6 = v4;

  os_unfair_lock_unlock(&self->_lock);
  v7 = [MEMORY[0x277CF08E8] createWithFrame:v6];

  return v7;
}

- (id)frameOnGlassWhenFlipbookLastCancelled
{
  v3 = [(BLSFlipbookDiagnosticsProviding *)self->_flipbookDiagnosticsProvider frameOnGlassWhenFlipbookLastCancelled];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(BLSHDiagnosticsHostPeer *)self _lock_validateHostFrame:v3 source:@"frameOnGlassWhenFlipbookLastCancelled"];

  lock_cachedLastCancelledFrame = self->_lock_cachedLastCancelledFrame;
  self->_lock_cachedLastCancelledFrame = v4;
  v6 = v4;

  os_unfair_lock_unlock(&self->_lock);
  v7 = [MEMORY[0x277CF08E8] createWithFrame:v6];

  return v7;
}

- (id)_lock_validateHostFrame:(id)a3 source:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!self->_valid)
  {
    v12 = bls_diagnostics_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BLSHDiagnosticsHostPeer _lock_validateHostFrame:source:];
    }

    goto LABEL_9;
  }

  v9 = v7;
  if (!v9)
  {
    v12 = bls_diagnostics_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = 134218242;
      v19 = self;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_21FD11000, v12, OS_LOG_TYPE_INFO, "%p %{public}@ — no host frame", &v18, 0x16u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 uuid];
  if (!v11)
  {
    [BLSHDiagnosticsHostPeer _lock_validateHostFrame:a2 source:self];
  }

  v12 = v11;
  v13 = bls_diagnostics_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v12 UUIDString];
    v17 = [v10 bls_shortLoggingString];
    v18 = 134218754;
    v19 = self;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    _os_log_debug_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEBUG, "%p %{public}@ uuid:%{public}@ frame:%{public}@", &v18, 0x2Au);
  }

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)genericSurfaceForFrameUUID:(id)a3 reply:(id)a4 name:(id)a5 surfaceFromFrame:(id)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  if (![(BLSHDiagnosticsHostPeer *)self isValid])
  {
    v20 = bls_diagnostics_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v42 = [v10 UUIDString];
      *buf = 134218498;
      v58 = self;
      v59 = 2114;
      v60 = v11;
      v61 = 2114;
      v62 = v42;
      _os_log_error_impl(&dword_21FD11000, v20, OS_LOG_TYPE_ERROR, "%p %{public}@, use after invalidation uuid:%{public}@", buf, 0x20u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CF0828];
    v49 = *MEMORY[0x277CCA450];
    v23 = MEMORY[0x277CCACA8];
    v14 = [v10 UUIDString];
    v24 = [v23 stringWithFormat:@"%@: use after invalidation uuid:%@", v11, v14];
    v50 = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v19 = [v21 errorWithDomain:v22 code:5 userInfo:v25];
    goto LABEL_20;
  }

  v14 = [(BLSHDiagnosticsHostPeer *)self hostFrameForUUID:v10];
  if (!v14)
  {
    v26 = bls_diagnostics_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v44 = [v10 UUIDString];
      *buf = 134218498;
      v58 = self;
      v59 = 2114;
      v60 = v11;
      v61 = 2114;
      v62 = v44;
      _os_log_error_impl(&dword_21FD11000, v26, OS_LOG_TYPE_ERROR, "%p %{public}@ invalid (not found) frame uuid, not match any known frame(s) uuid:%{public}@", buf, 0x20u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CF0828];
    v51 = *MEMORY[0x277CCA450];
    v29 = MEMORY[0x277CCACA8];
    v24 = [v10 UUIDString];
    v25 = [v29 stringWithFormat:@"%@: unknown UUID, does not match any known frame(s) uuid:%@", v11, v24];
    v52 = v25;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v19 = [v27 errorWithDomain:v28 code:31 userInfo:v30];
    goto LABEL_19;
  }

  v15 = v12[2](v12, v14);
  if (!v15)
  {
    v31 = bls_diagnostics_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v10 UUIDString];
      v33 = [v14 bls_loggingString];
      *buf = 134218754;
      v58 = self;
      v59 = 2114;
      v60 = v11;
      v61 = 2114;
      v62 = v32;
      v63 = 2114;
      v64 = v33;
      _os_log_impl(&dword_21FD11000, v31, OS_LOG_TYPE_INFO, "%p %{public}@ nil surface for frame with uuid:%{public}@ frame:%{public}@", buf, 0x2Au);
    }

    v46 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CF0828];
    v53 = *MEMORY[0x277CCA450];
    v35 = MEMORY[0x277CCACA8];
    v24 = [v10 UUIDString];
    v25 = [v14 bls_loggingString];
    v30 = [v35 stringWithFormat:@"%@: no saved surface (either never exited flipbook or has already been purged) uuid:%@ frame:%@", v11, v24, v25];
    v54 = v30;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v37 = v46;
    v38 = v34;
    v39 = 30;
    goto LABEL_18;
  }

  v16 = v15;
  XPCObject = IOSurfaceCreateXPCObject(v15);
  v18 = bls_diagnostics_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v48 = [v10 UUIDString];
    v43 = [v14 bls_loggingString];
    *buf = 134219266;
    v58 = self;
    v59 = 2114;
    v60 = v11;
    v61 = 2114;
    v62 = v16;
    v63 = 2114;
    v64 = XPCObject;
    v65 = 2114;
    v66 = v48;
    v67 = 2114;
    v68 = v43;
    _os_log_debug_impl(&dword_21FD11000, v18, OS_LOG_TYPE_DEBUG, "%p %{public}@ surface:%{public}@ surfaceXPC:%{public}@ uuid:%{public}@ frame:%{public}@", buf, 0x3Eu);
  }

  if (!XPCObject)
  {
    v47 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CF0828];
    v55 = *MEMORY[0x277CCA450];
    v40 = MEMORY[0x277CCACA8];
    v24 = [v10 UUIDString];
    v25 = [v14 bls_loggingString];
    v30 = [v40 stringWithFormat:@"%@: failed to create xpc object for uuid:%@ surface:%@ frame:%@", v11, v24, v16, v25];
    v56 = v30;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v38 = v45;
    v37 = v47;
    v39 = 1;
LABEL_18:
    v19 = [v37 errorWithDomain:v38 code:v39 userInfo:v36];

LABEL_19:
LABEL_20:

    XPCObject = 0;
    goto LABEL_21;
  }

  v19 = 0;
LABEL_21:

  v13[2](v13, XPCObject, v19);
  v41 = *MEMORY[0x277D85DE8];
}

- (id)hostFrameForUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  p_lock_cachedFrameOnGlassNow = &self->_lock_cachedFrameOnGlassNow;
  v6 = [(BLSDiagnosticFlipbookFrame *)self->_lock_cachedFrameOnGlassNow uuid];
  v7 = [v4 isEqual:v6];

  if (v7 & 1) != 0 || (p_lock_cachedFrameOnGlassNow = &self->_lock_cachedLastCancelledFrame, -[BLSDiagnosticFlipbookFrame uuid](self->_lock_cachedLastCancelledFrame, "uuid"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v4 isEqual:v8], v8, (v9))
  {
    v10 = *p_lock_cachedFrameOnGlassNow;
    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = [(BLSFlipbookDiagnosticsProviding *)self->_flipbookDiagnosticsProvider frameWithUUID:v4];
LABEL_7:

  return v10;
}

- (void)allFlipbookFrames
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 bls_boundedDescriptionWithTransformer:&__block_literal_global_3];
  v7 = 134218242;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p allFlipbookFrames:%{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_validateHostFrame:source:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_21FD11000, v1, OS_LOG_TYPE_ERROR, "%p %{public}@, use after invalidation", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_lock_validateHostFrame:(const char *)a1 source:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"uuid != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHDiagnosticsHostPeer.m";
    v16 = 1024;
    v17 = 133;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
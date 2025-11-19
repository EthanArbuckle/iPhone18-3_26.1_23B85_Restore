@interface BLSDiagnostics
+ (id)defaultEndpoint;
- (BLSDiagnostics)init;
- (__IOSurface)rawSurfaceForFrame:(id)a3;
- (__IOSurface)surfaceForFrame:(id)a3;
- (id)allFlipbookFrames;
- (id)frameOnGlassNow;
- (id)frameOnGlassWhenFlipbookLastCancelled;
- (id)initWithEndpoint:(id)a1;
@end

@implementation BLSDiagnostics

+ (id)defaultEndpoint
{
  objc_opt_self();
  v0 = MEMORY[0x277CF3288];
  v1 = [MEMORY[0x277CF3288] defaultShellMachName];
  v2 = +[BLSDiagnosticsXPCServiceSpecification identifier];
  v3 = [v0 endpointForMachName:v1 service:v2 instance:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CF3288];
    v7 = +[BLSDiagnosticsXPCServiceSpecification identifier];
    v5 = [v6 nullEndpointForService:v7 instance:0];
  }

  return v5;
}

- (BLSDiagnostics)init
{
  v3 = +[BLSDiagnostics defaultEndpoint];
  v4 = [(BLSDiagnostics *)self initWithEndpoint:v3];

  return v4;
}

- (id)initWithEndpoint:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    NSClassFromString(&cfstr_Bsserviceconne.isa);
    if (!v5)
    {
      [BLSDiagnostics initWithEndpoint:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BLSDiagnostics initWithEndpoint:?];
    }

    v8.receiver = a1;
    v8.super_class = BLSDiagnostics;
    a1 = objc_msgSendSuper2(&v8, sel_init);
    if (a1)
    {
      [(BLSDiagnostics *)v5 initWithEndpoint:a1, &v7];
    }
  }

  return a1;
}

void __35__BLSDiagnostics_initWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setServiceQuality:v3];
  [v5 setTargetQueue:*(*(a1 + 40) + 8)];
  v4 = +[BLSDiagnosticsXPCServiceSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterruptionHandler:&__block_literal_global_3];
  [v5 setInvalidationHandler:&__block_literal_global_25];
}

- (id)allFlipbookFrames
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(BSServiceConnection *)self->_connection remoteTarget];
  v4 = [v3 allFlipbookFrames];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * i) setSurfaceProvider:{self, v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)frameOnGlassNow
{
  v3 = [(BSServiceConnection *)self->_connection remoteTarget];
  v4 = [v3 frameOnGlassNow];

  [v4 setSurfaceProvider:self];

  return v4;
}

- (id)frameOnGlassWhenFlipbookLastCancelled
{
  v3 = [(BSServiceConnection *)self->_connection remoteTarget];
  v4 = [v3 frameOnGlassWhenFlipbookLastCancelled];

  [v4 setSurfaceProvider:self];

  return v4;
}

- (__IOSurface)surfaceForFrame:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  v6 = [v4 uuid];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__BLSDiagnostics_surfaceForFrame___block_invoke;
  v14[3] = &unk_278428A40;
  v14[4] = &v15;
  [v5 surfaceForFrameUUID:v6 reply:v14];

  v7 = v16[5];
  if (v7)
  {
    v8 = IOSurfaceLookupFromXPCObject(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = bls_diagnostics_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v4 bls_shortLoggingString];
    v13 = v16[5];
    *buf = 134218754;
    v22 = self;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v13;
    _os_log_debug_impl(&dword_21FE25000, v9, OS_LOG_TYPE_DEBUG, "%p surfaceForFrame:%{public}@ surface:%{public}@ surfaceXPC:%{public}@", buf, 0x2Au);
  }

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (__IOSurface)rawSurfaceForFrame:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = 0;
  v5 = [(BSServiceConnection *)self->_connection remoteTarget];
  v6 = [v4 uuid];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__BLSDiagnostics_rawSurfaceForFrame___block_invoke;
  v14[3] = &unk_278428A40;
  v14[4] = &v15;
  [v5 rawSurfaceForFrameUUID:v6 reply:v14];

  v7 = v16[5];
  if (v7)
  {
    v8 = IOSurfaceLookupFromXPCObject(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = bls_diagnostics_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v4 bls_shortLoggingString];
    v13 = v16[5];
    *buf = 134218754;
    v22 = self;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v13;
    _os_log_debug_impl(&dword_21FE25000, v9, OS_LOG_TYPE_DEBUG, "%p rawSurfaceForFrame:%{public}@ surface:%{public}@ surfaceXPC:%{public}@", buf, 0x2Au);
  }

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)initWithEndpoint:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"BLSDiagnostics.m";
    v9 = 1024;
    v10 = 41;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEndpoint:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"BLSDiagnostics.m";
    v9 = 1024;
    v10 = 41;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEndpoint:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CF3280] connectionWithEndpoint:a1];
  v7 = *(a2 + 16);
  *(a2 + 16) = v6;

  v8 = +[BLSDiagnosticsXPCServiceSpecification serviceQuality];
  v9 = [MEMORY[0x277CF0C18] serial];
  v10 = [v9 serviceClass:objc_msgSend(v8 relativePriority:{"serviceClass"), objc_msgSend(v8, "relativePriority")}];
  v11 = BSDispatchQueueCreate();
  v12 = *(a2 + 8);
  *(a2 + 8) = v11;

  v13 = *(a2 + 16);
  *a3 = MEMORY[0x277D85DD0];
  *(a3 + 8) = 3221225472;
  *(a3 + 16) = __35__BLSDiagnostics_initWithEndpoint___block_invoke;
  *(a3 + 24) = &unk_278428A18;
  v14 = v8;
  *(a3 + 32) = v14;
  v15 = a2;
  *(a3 + 40) = v15;
  [v13 configureConnection:a3];
  [*(a2 + 16) activate];
  v16 = bls_diagnostics_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a2 + 16);
    v19 = 134218498;
    v20 = v15;
    v21 = 2114;
    v22 = v18;
    v23 = 2114;
    v24 = a1;
    _os_log_debug_impl(&dword_21FE25000, v16, OS_LOG_TYPE_DEBUG, "%p did activate connection:%{public}@ for endpoint:%{public}@", &v19, 0x20u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end
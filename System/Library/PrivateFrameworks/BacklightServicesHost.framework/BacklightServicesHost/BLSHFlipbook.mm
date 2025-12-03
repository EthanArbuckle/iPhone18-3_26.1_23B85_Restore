@interface BLSHFlipbook
+ (id)createWithPlatformProvider:(id)provider;
- (BLSHFlipbook)initWithPlatformProvider:(id)provider;
- (BLSHRenderedFlipbookFrame)captureFrameOnGlass;
- (BLSHRenderedFlipbookFrame)frameOnGlass;
- (BLSHRenderedFlipbookFrame)lastRenderedFrame;
- (BOOL)cachesFramesOnExit;
- (BOOL)is1HzFlipbook;
- (BOOL)isPowerSavingEnabled;
- (NSArray)activeFrames;
- (id)cancelAllFramesWithError:(id *)error;
- (unint64_t)memoryUsage;
- (void)collect;
- (void)dealloc;
- (void)flushLogBuffers:(uint64_t)buffers;
- (void)hangDetectorFired:(void *)fired;
- (void)hangDetectorFor:(void *)for block:;
- (void)invalidate;
- (void)logDiagnostics:(uint64_t)diagnostics;
- (void)purge;
- (void)renderFrameForPresentation:(id)presentation dateSpecifier:(id)specifier onRenderBegin:(id)begin onRenderComplete:(id)complete;
- (void)set1HzFlipbook:(BOOL)flipbook;
- (void)setCachesFramesOnExit:(BOOL)exit;
- (void)setPowerSavingEnabled:(BOOL)enabled;
@end

@implementation BLSHFlipbook

+ (id)createWithPlatformProvider:(id)provider
{
  providerCopy = provider;
  v4 = [objc_alloc(objc_opt_class()) initWithPlatformProvider:providerCopy];

  return v4;
}

- (BLSHFlipbook)initWithPlatformProvider:(id)provider
{
  v32[3] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v30.receiver = self;
  v30.super_class = BLSHFlipbook;
  v5 = [(BLSHFlipbook *)&v30 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_6;
  }

  flipbookSpecification = [providerCopy flipbookSpecification];
  v7 = flipbookSpecification;
  if (!flipbookSpecification)
  {
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  frameCapacity = [flipbookSpecification frameCapacity];
  [v7 surfaceAllocationPoolSize];
  v10 = v9;
  [v7 surfaceOverallocationFactor];
  v12 = v11;
  [v7 softMemoryLimit];
  v31[0] = *MEMORY[0x277CDA668];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:frameCapacity];
  v32[0] = v13;
  v31[1] = *MEMORY[0x277CDA660];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v32[1] = v14;
  v31[2] = *MEMORY[0x277CDA670];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v32[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

LABEL_7:
  mainDisplay = [MEMORY[0x277CD9E40] mainDisplay];
  v18 = [mainDisplay flipBookWithOptions:v16];
  v19 = *(v5 + 5);
  *(v5 + 5) = v18;

  *(v5 + 24) = 0;
  [*(v5 + 5) setWantsTransform:0];
  [*(v5 + 5) setInverted:v5[49]];
  if (os_variant_has_internal_diagnostics())
  {
    [*(v5 + 5) setMaximumMemoryUsageForDiagnostics:20971520];
    inactive = dispatch_workloop_create_inactive("flipbook hang detector workloop");
    v21 = *(v5 + 2);
    *(v5 + 2) = inactive;

    v22 = *(v5 + 2);
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(*(v5 + 2));
    v23 = dispatch_queue_create_with_target_V2("flipbook hang detector queue", 0, *(v5 + 2));
    v24 = *(v5 + 3);
    *(v5 + 3) = v23;

    v25 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"flipbook-hang-detector"];
    v26 = *(v5 + 1);
    *(v5 + 1) = v25;
  }

  v27 = bls_flipbook_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [BLSHFlipbook initWithPlatformProvider:];
  }

LABEL_12:
  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_hangDetectorTimer invalidate];
  v3.receiver = self;
  v3.super_class = BLSHFlipbook;
  [(BLSHFlipbook *)&v3 dealloc];
}

- (void)hangDetectorFor:(void *)for block:
{
  v5 = a2;
  forCopy = for;
  if (self)
  {
    if (([self hangDetected] & 1) == 0)
    {
      v7 = bls_flipbook_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [BLSHFlipbook hangDetectorFor:block:];
      }

      *(self + 32) = mach_continuous_time();
      objc_initWeak(&location, self);
      v8 = *(self + 8);
      v9 = *(self + 24);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __38__BLSHFlipbook_hangDetectorFor_block___block_invoke;
      v11[3] = &unk_27841E4E8;
      objc_copyWeak(&v13, &location);
      v12 = v5;
      [v8 scheduleWithFireInterval:v9 leewayInterval:v11 queue:10.0 handler:1.0];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    forCopy[2](forCopy);
    v10 = bls_flipbook_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BLSHFlipbook hangDetectorFor:block:];
    }

    [*(self + 8) cancel];
  }
}

void __38__BLSHFlipbook_hangDetectorFor_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 cancel];

  [(BLSHFlipbook *)WeakRetained hangDetectorFired:?];
}

void __34__BLSHFlipbook_hangDetectorFired___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 32);
  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  v7 = [v3 stringWithFormat:@"CoreAnimation [CAFlipbook %@] hang detected – %.4lfs elapsed", v4, v6];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = *(a1 + 40);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a1 + 40);
    *buf = 138544642;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2114;
    v20 = @"BLSHFlipbook.m";
    v21 = 1024;
    v22 = 126;
    v23 = 2114;
    v24 = v7;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BLSHRenderedFlipbookFrame)frameOnGlass
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__BLSHFlipbook_frameOnGlass__block_invoke;
  v4[3] = &unk_27841E560;
  v4[4] = self;
  v4[5] = &v5;
  [(BLSHFlipbook *)self hangDetectorFor:v4 block:?];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__BLSHFlipbook_frameOnGlass__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) frameAtTime:mach_continuous_time()];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BLSHRenderedFlipbookFrame)captureFrameOnGlass
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__BLSHFlipbook_captureFrameOnGlass__block_invoke;
  v4[3] = &unk_27841E560;
  v4[4] = self;
  v4[5] = &v5;
  [(BLSHFlipbook *)self hangDetectorFor:v4 block:?];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __35__BLSHFlipbook_captureFrameOnGlass__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copyCurrentFrame];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BLSHRenderedFlipbookFrame)lastRenderedFrame
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__BLSHFlipbook_lastRenderedFrame__block_invoke;
  v4[3] = &unk_27841E560;
  v4[4] = self;
  v4[5] = &v5;
  [(BLSHFlipbook *)self hangDetectorFor:v4 block:?];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __33__BLSHFlipbook_lastRenderedFrame__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) frameAtTime:-1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)activeFrames
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__BLSHFlipbook_activeFrames__block_invoke;
  v4[3] = &unk_27841E560;
  v4[4] = self;
  v4[5] = &v5;
  [(BLSHFlipbook *)self hangDetectorFor:v4 block:?];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __28__BLSHFlipbook_activeFrames__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) activeFrames];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)memoryUsage
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__BLSHFlipbook_memoryUsage__block_invoke;
  v4[3] = &unk_27841E560;
  v4[4] = self;
  v4[5] = &v5;
  [(BLSHFlipbook *)self hangDetectorFor:v4 block:?];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __27__BLSHFlipbook_memoryUsage__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) memoryUsage];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isPowerSavingEnabled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__BLSHFlipbook_isPowerSavingEnabled__block_invoke;
  v4[3] = &unk_27841E560;
  v4[4] = self;
  v4[5] = &v5;
  [(BLSHFlipbook *)self hangDetectorFor:v4 block:?];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __36__BLSHFlipbook_isPowerSavingEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) powerSavingEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setPowerSavingEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__BLSHFlipbook_setPowerSavingEnabled___block_invoke;
  v3[3] = &unk_27841E588;
  v3[4] = self;
  enabledCopy = enabled;
  [(BLSHFlipbook *)self hangDetectorFor:v3 block:?];
}

- (BOOL)is1HzFlipbook
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__BLSHFlipbook_is1HzFlipbook__block_invoke;
  v4[3] = &unk_27841E560;
  v4[4] = self;
  v4[5] = &v5;
  [(BLSHFlipbook *)self hangDetectorFor:v4 block:?];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __29__BLSHFlipbook_is1HzFlipbook__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) isOneHzFlipBook];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)set1HzFlipbook:(BOOL)flipbook
{
  flipbookCopy = flipbook;
  v13 = *MEMORY[0x277D85DE8];
  v5 = bls_flipbook_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    selfCopy = self;
    v11 = 1024;
    v12 = flipbookCopy;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "%p set1HzFlipbook:%{BOOL}u", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__BLSHFlipbook_set1HzFlipbook___block_invoke;
  v7[3] = &unk_27841E588;
  v7[4] = self;
  v8 = flipbookCopy;
  [(BLSHFlipbook *)self hangDetectorFor:v7 block:?];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)cachesFramesOnExit
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__BLSHFlipbook_cachesFramesOnExit__block_invoke;
  v4[3] = &unk_27841E560;
  v4[4] = self;
  v4[5] = &v5;
  [(BLSHFlipbook *)self hangDetectorFor:v4 block:?];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __34__BLSHFlipbook_cachesFramesOnExit__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) cachesFramesOnExit];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setCachesFramesOnExit:(BOOL)exit
{
  exitCopy = exit;
  v13 = *MEMORY[0x277D85DE8];
  v5 = bls_flipbook_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    selfCopy = self;
    v11 = 1024;
    v12 = exitCopy;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "%p setCachesFramesOnExit:%{BOOL}u", buf, 0x12u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__BLSHFlipbook_setCachesFramesOnExit___block_invoke;
  v7[3] = &unk_27841E588;
  v7[4] = self;
  v8 = exitCopy;
  [(BLSHFlipbook *)self hangDetectorFor:v7 block:?];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)renderFrameForPresentation:(id)presentation dateSpecifier:(id)specifier onRenderBegin:(id)begin onRenderComplete:(id)complete
{
  specifierCopy = specifier;
  beginCopy = begin;
  completeCopy = complete;
  flipbookContext = [presentation flipbookContext];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke;
  v34[3] = &unk_27841E538;
  v34[4] = self;
  v14 = flipbookContext;
  v35 = v14;
  [(BLSHFlipbook *)self hangDetectorFor:v34 block:?];
  wantsTransform = [v14 wantsTransform];
  if (self->_wantsTransform != wantsTransform)
  {
    self->_wantsTransform = wantsTransform;
    [(CAFlipBook *)self->_flipbook setWantsTransform:wantsTransform];
  }

  isInverted = [v14 isInverted];
  if (self->_inverted != isInverted)
  {
    self->_inverted = isInverted;
    [(CAFlipBook *)self->_flipbook setInverted:isInverted];
  }

  BSContinuousMachTimeNow();
  v18 = v17;
  v19 = mach_continuous_time();
  presentationDate = [specifierCopy presentationDate];
  bls_machContinuousTime = [presentationDate bls_machContinuousTime];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke_2;
  v28[3] = &unk_27841E600;
  if (v19 <= bls_machContinuousTime)
  {
    v22 = bls_machContinuousTime;
  }

  else
  {
    v22 = v19;
  }

  v31 = completeCopy;
  v32 = v22;
  v28[4] = self;
  v29 = specifierCopy;
  v33 = v18;
  v30 = beginCopy;
  v23 = completeCopy;
  v24 = beginCopy;
  v25 = specifierCopy;
  [(BLSHFlipbook *)self hangDetectorFor:v28 block:?];
  BSContinuousMachTimeNow();
  if (v26 - v18 > 1.0)
  {
    v27 = bls_flipbook_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [BLSHFlipbook renderFrameForPresentation:dateSpecifier:onRenderBegin:onRenderComplete:];
    }
  }
}

void __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  v2 = [*(a1 + 40) caContext];
  [v1 setContextId:{objc_msgSend(v2, "contextId")}];
}

void __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 40);
  v5 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke_3;
  v9[3] = &unk_27841E5B0;
  v11 = *(a1 + 72);
  v9[4] = v2;
  v10 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke_76;
  v6[3] = &unk_27841E5D8;
  v8 = *(a1 + 72);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  [v4 renderForTime:v5 options:0 userInfo:v3 onRenderBegin:v9 onRenderComplete:v6];
}

uint64_t __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke_3(uint64_t a1)
{
  BSContinuousMachTimeNow();
  if (v2 - *(a1 + 48) > 1.0)
  {
    v3 = bls_flipbook_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke_3_cold_1(a1);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  BSContinuousMachTimeNow();
  v8 = v7 - *(a1 + 48);
  if (v8 > 1.0)
  {
    v9 = bls_flipbook_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v5 bls_shortLoggingString];
      v13 = [v6 bls_shortLoggingString];
      v14 = 134218754;
      v15 = v11;
      v16 = 2048;
      v17 = v8;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_error_impl(&dword_21FD11000, v9, OS_LOG_TYPE_ERROR, "%p [CAFlipBook renderForTime:options:userInfo:onRenderBegin:onRenderComplete:] took %.5fs to render frame:%{public}@ error:%{public}@", &v14, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (id)cancelAllFramesWithError:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  BSContinuousMachTimeNow();
  v7 = v6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41__BLSHFlipbook_cancelAllFramesWithError___block_invoke;
  v23[3] = &unk_27841E628;
  v23[4] = self;
  v23[5] = &v30;
  v23[6] = &v24;
  [(BLSHFlipbook *)self hangDetectorFor:v23 block:?];
  BSContinuousMachTimeNow();
  v9 = v8 - v7;
  if (v25[5])
  {
    v10 = bls_flipbook_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      bls_shortLoggingString = [v25[5] bls_shortLoggingString];
      *buf = 134218498;
      selfCopy = self;
      v38 = 2114;
      v39 = bls_shortLoggingString;
      v40 = 2048;
      selfCopy2 = *&v9;
      _os_log_error_impl(&dword_21FD11000, v10, OS_LOG_TYPE_ERROR, "%p [CAFlipBook cancel] error:%{public}@ (took %.5fs.)", buf, 0x20u);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (v9 > 1.0)
  {
    v10 = bls_flipbook_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BLSHFlipbook cancelAllFramesWithError:];
    }

    goto LABEL_4;
  }

LABEL_5:
  if (!error)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"error != nil"];
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      selfCopy = v18;
      v38 = 2114;
      v39 = v20;
      v40 = 2048;
      selfCopy2 = self;
      v42 = 2114;
      v43 = @"BLSHFlipbook.m";
      v44 = 1024;
      v45 = 312;
      v46 = 2114;
      v47 = v15;
      _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v21 = v15;
    [v15 UTF8String];
    v22 = _bs_set_crash_log_message();
    [BLSHFlipbook cancelAllFramesWithError:v22];
  }

  *error = v25[5];
  v11 = v31[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __41__BLSHFlipbook_cancelAllFramesWithError___block_invoke(void *a1)
{
  v2 = *(a1[4] + 40);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 cancelWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)collect
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __23__BLSHFlipbook_collect__block_invoke;
  v2[3] = &unk_27841E650;
  v2[4] = self;
  [(BLSHFlipbook *)self hangDetectorFor:v2 block:?];
}

- (void)purge
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __21__BLSHFlipbook_purge__block_invoke;
  v2[3] = &unk_27841E650;
  v2[4] = self;
  [(BLSHFlipbook *)self hangDetectorFor:v2 block:?];
}

- (void)invalidate
{
  v6 = 0;
  v3 = [(BLSHFlipbook *)self cancelAllFramesWithError:&v6];
  v4 = v6;
  [(BLSHFlipbook *)self collect];
  [(BLSHFlipbook *)self purge];
  flipbook = self->_flipbook;
  self->_flipbook = 0;
}

- (void)hangDetectorFired:(void *)fired
{
  v3 = a2;
  if (fired)
  {
    [fired setHangDetected:1];
    [(BLSHFlipbook *)fired flushLogBuffers:v3];
    v4 = MEMORY[0x277CCACA8];
    v5 = fired[4];
    mach_continuous_time();
    BSTimeDifferenceFromMachTimeToMachTime();
    v7 = [v4 stringWithFormat:@"CoreAnimation [CAFlipbook %@] hang detected – %.4lfs elapsed", v3, v6];
    BLSHRecordCriticalAssertFailure(v7, 0, 0);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __34__BLSHFlipbook_hangDetectorFired___block_invoke;
    v30[3] = &unk_27841E510;
    v8 = v3;
    v31 = v8;
    firedCopy = fired;
    v33 = sel_hangDetectorFired_;
    v9 = MEMORY[0x223D70730](v30);
    if (BLSHIsUnitTestRunning())
    {
      v9[2](v9);
    }

    else
    {
      v10 = dispatch_time(0, 1000000000);
      dispatch_after(v10, MEMORY[0x277D85CD0], v9);
    }

    [(BLSHFlipbook *)fired logDiagnostics:v8];
    dispatch_time(0, 5000000000);
    OUTLINED_FUNCTION_4_0();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __34__BLSHFlipbook_hangDetectorFired___block_invoke_21;
    v28[3] = &unk_27841E538;
    v28[4] = fired;
    v11 = v8;
    v29 = v11;
    OUTLINED_FUNCTION_6(v11, v12, v28);
    dispatch_time(0, 10000000000);
    OUTLINED_FUNCTION_4_0();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __34__BLSHFlipbook_hangDetectorFired___block_invoke_2;
    v26[3] = &unk_27841E538;
    v26[4] = fired;
    v13 = v11;
    v27 = v13;
    OUTLINED_FUNCTION_6(v13, v14, v26);
    dispatch_time(0, 15000000000);
    OUTLINED_FUNCTION_4_0();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __34__BLSHFlipbook_hangDetectorFired___block_invoke_3;
    v24[3] = &unk_27841E538;
    v24[4] = fired;
    v15 = v13;
    v25 = v15;
    OUTLINED_FUNCTION_6(v15, v16, v24);
    dispatch_time(0, 20000000000);
    OUTLINED_FUNCTION_4_0();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __34__BLSHFlipbook_hangDetectorFired___block_invoke_4;
    v22[3] = &unk_27841E538;
    v22[4] = fired;
    v17 = v15;
    v23 = v17;
    OUTLINED_FUNCTION_6(v17, v18, v22);
    dispatch_time(0, 25000000000);
    OUTLINED_FUNCTION_4_0();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __34__BLSHFlipbook_hangDetectorFired___block_invoke_5;
    v20[3] = &unk_27841E538;
    v20[4] = fired;
    v21 = v17;
    OUTLINED_FUNCTION_6(v21, v19, v20);
  }
}

- (void)flushLogBuffers:(uint64_t)buffers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (buffers)
  {
    v4 = bls_diagnostics_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      v10 = *(buffers + 32);
      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      *buf = 138412546;
      v13 = v3;
      v14 = 2048;
      v15 = v11;
      _os_log_error_impl(&dword_21FD11000, v4, 0x90u, "CoreAnimation [CAFlipbook %@] hang detected – %.4lfs elapsed - will flush buffers", buf, 0x16u);
    }

    v5 = OSLogFlushBuffers();
    v6 = bls_diagnostics_log();
    v7 = 16 * (v5 != 0);
    if (os_log_type_enabled(v6, v7))
    {
      if (v5)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed:%d", v5];
      }

      else
      {
        v8 = @"succeeded";
      }

      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_21FD11000, v6, v7, "(flipbook hang detected) OSLogFlushBuffers() %{public}@", buf, 0xCu);
      if (v5)
      {
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logDiagnostics:(uint64_t)diagnostics
{
  v8 = *MEMORY[0x277D85DE8];
  if (diagnostics)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"CoreAnimation flipbook hang detected from : %@", a2];
    WriteStackshotReport_async();
    DRTailspinRequest();
    v3 = 0;
    if (v3)
    {
      v4 = bls_diagnostics_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v7 = v3;
        _os_log_error_impl(&dword_21FD11000, v4, OS_LOG_TYPE_ERROR, "Failed to generate tailspin for flipbook hang: %@", buf, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __34__BLSHFlipbook_hangDetectorFired___block_invoke_5(uint64_t a1)
{
  [(BLSHFlipbook *)*(a1 + 32) flushLogBuffers:?];
  v2 = *(a1 + 32);

  return [v2 setHangDetected:0];
}

- (void)initWithPlatformProvider:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_21FD11000, v0, v1, "%p created %{public}@, specification: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)hangDetectorFor:block:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_21FD11000, v0, v1, "%p %{public}@ hang detector starting for source: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)hangDetectorFor:block:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2_0(&dword_21FD11000, v0, v1, "%p %{public}@ hang detector ending for source: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)renderFrameForPresentation:dateSpecifier:onRenderBegin:onRenderComplete:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_21FD11000, v0, v1, "%p [CAFlipBook renderForTime:options:userInfo:onRenderBegin:onRenderComplete:] took %.5fs. Renderserver may be blocked", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

void __88__BLSHFlipbook_renderFrameForPresentation_dateSpecifier_onRenderBegin_onRenderComplete___block_invoke_3_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_21FD11000, v1, v2, "%p [CAFlipBook renderForTime:options:userInfo:onRenderBegin:onRenderComplete:] took %.5fs until renderBegun", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelAllFramesWithError:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_21FD11000, v0, v1, "%p [CAFlipBook cancel] took %.5fs. Dupe of rdar://78634442?", v2, v3, v4, v5, 0);
  v6 = *MEMORY[0x277D85DE8];
}

@end
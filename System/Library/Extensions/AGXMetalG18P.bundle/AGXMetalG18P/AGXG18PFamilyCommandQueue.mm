@interface AGXG18PFamilyCommandQueue
- (AGXG18PFamilyCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4;
- (BOOL)setGPUPriority:(unint64_t)a3;
- (BOOL)setGPUPriority:(unint64_t)a3 offset:(unsigned __int16)a4;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)a3;
- (id)commandBufferWithUnretainedReferences;
- (unint64_t)resolveAndUpdateQueuePriority:(unint64_t)a3;
- (void)dealloc;
- (void)setLabel:(id)a3;
@end

@implementation AGXG18PFamilyCommandQueue

- (void)dealloc
{
  if (*(*([(IOGPUMetalCommandQueue *)self device]+ 848) + 16997) == 1)
  {
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29CA13000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CommandQueueLifetime", "CommandQueue is deallocated!", buf, 2u);
    }
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyCommandQueue;
  [(IOGPUMetalCommandQueue *)&v4 dealloc];
}

- (AGXG18PFamilyCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4
{
  v27 = *MEMORY[0x29EDCA608];
  bzero(v25, 0x408uLL);
  v7 = [a4 devicePartition];
  v8 = 0xFFFFFFFFLL;
  if (v7 == 2)
  {
    v8 = 1;
  }

  if (v7 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if ([a4 disableIOFencing])
  {
    v10 = 0x200000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = [a4 enableLowLatencySignalSharedEvent];
  v12 = 0x400000000;
  if (!v11)
  {
    v12 = 0;
  }

  v13 = v9 | v10 | v12;
  if ([a4 enableLowLatencyWaitSharedEvent])
  {
    v14 = 0x800000000;
  }

  else
  {
    v14 = 0;
  }

  if ([a4 lockParameterBufferSizeToMax])
  {
    v15 = 0x1000000000;
  }

  else
  {
    v15 = 0;
  }

  v16 = [a4 disableCrossQueueHazardTracking];
  v17 = 0x100000000;
  if (v16)
  {
    v17 = 0;
  }

  v26 = v13 | v14 | v15 | v17;
  v24.receiver = self;
  v24.super_class = AGXG18PFamilyCommandQueue;
  v18 = [(IOGPUMetalCommandQueue *)&v24 initWithDevice:a3 descriptor:a4 args:v25 argsSize:1040];
  v19 = v18;
  if (v18)
  {
    v20 = [(IOGPUMetalCommandQueue *)v18 device];
    {
      v23 = v20;
      {
        [AGXG18PFamilyCommandQueue initWithDevice:descriptor:]::isInternalInstall = *(*(v23 + 848) + 16945);
      }
    }

    if ([AGXG18PFamilyCommandQueue initWithDevice:descriptor:]::isInternalInstall == 1)
    {
      [(AGXG18PFamilyCommandQueue *)v19 setGPUPriority:1];
    }

    if (AGXATelemetry::shouldCaptureTelemetryData(void)::onceToken != -1)
    {
      dispatch_once(&AGXATelemetry::shouldCaptureTelemetryData(void)::onceToken, &__block_literal_global_10448);
    }

    if (AGXATelemetry::shouldCaptureTelemetryData(void)::shouldCapture == 1)
    {
      v21 = atomic_load(AGXATelemetry::backtracesCaptured);
      if (v21 <= 9)
      {
        v19->_telemetryInternalClientMask = backtrace(&v19->_commandQueueBTInfo, 64);
        LOBYTE(v19->_commandQueueBTInfo.callstack[63]) = 0;
      }
    }
  }

  return v19;
}

- (BOOL)setGPUPriority:(unint64_t)a3 offset:(unsigned __int16)a4
{
  v5.receiver = self;
  v5.super_class = AGXG18PFamilyCommandQueue;
  return [(IOGPUMetalCommandQueue *)&v5 setGPUPriority:[(AGXG18PFamilyCommandQueue *)self resolveAndUpdateQueuePriority:a3] offset:a4];
}

- (BOOL)setGPUPriority:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = AGXG18PFamilyCommandQueue;
  return [(IOGPUMetalCommandQueue *)&v4 setGPUPriority:[(AGXG18PFamilyCommandQueue *)self resolveAndUpdateQueuePriority:a3]];
}

- (unint64_t)resolveAndUpdateQueuePriority:(unint64_t)a3
{
  {
    v13 = self;
    self = v13;
    if (v6)
    {
      [AGXG18PFamilyCommandQueue resolveAndUpdateQueuePriority:]::isInternalInstall = *(*([(IOGPUMetalCommandQueue *)v13 device]+ 848) + 16945);
      self = v13;
    }
  }

  if ([AGXG18PFamilyCommandQueue resolveAndUpdateQueuePriority:]::isInternalInstall == 1)
  {
    v4 = &unk_2A179E000;
    {
      v7 = self;
      v4 = &unk_2A179E000;
      v9 = v8;
      self = v7;
      if (v9)
      {
        [AGXG18PFamilyCommandQueue resolveAndUpdateQueuePriority:]::forceGPUPriorityHigh = 0;
        v4 = &unk_2A179E000;
        self = v7;
      }
    }

    v15 = 0;
    {
      v14 = self;
      v10 = v4;
      v4 = v10;
      v12 = v11;
      self = v14;
      if (v12)
      {
        [AGXG18PFamilyCommandQueue resolveAndUpdateQueuePriority:]::forceGPUPriorityEVIsSet = findEnvVarNum<unsigned long long>("AGX_FORCE_GPU_PRIORITY", &v15);
        v4 = v10;
        self = v14;
      }
    }

    if (v4[3552])
    {
      a3 = 0;
    }
  }

  HIDWORD(self->_commandQueueBTInfo.callstack[63]) = a3;
  return a3;
}

- (void)setLabel:(id)a3
{
  v5 = [*(-[IOGPUMetalCommandQueue device](self "device") + 896)];
  v6 = 1 << v5;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  *(&self->super._resourceGroupsLock + 1) |= v6;
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyCommandQueue;
  [(IOGPUMetalCommandQueue *)&v7 setLabel:a3];
}

- (id)commandBufferWithDescriptor:(id)a3
{
  v4 = -[AGXG18PFamilyCommandBuffer initWithQueue:retainedReferences:]([AGXG18PFamilyCommandBuffer alloc], "initWithQueue:retainedReferences:", self, [a3 retainedReferences]);
  -[_MTLCommandBuffer setErrorOptions:](v4, "setErrorOptions:", [a3 errorOptions]);
  v5 = [a3 deadlineProfile];
  if (v5)
  {
    v6 = v5[8];
    v7 = v5;
    *(&v4->super.super.super.super.isa + *MEMORY[0x29EDBB770]) = v7;
    *(v4->_impl + 134) = v6;
  }

  v4->_captureProgramAddressTable = [a3 captureProgramAddressTable];
  v4->_cloneIntersectionFunctionTablesPerDispatch = [a3 cloneIntersectionFunctionTablesPerDispatch];
  impl = v4->_impl;
  impl[568] = [a3 disableFineGrainedComputePreemption];
  [(_MTLCommandBuffer *)v4 configWithCommandBufferDescriptor:a3];
  return v4;
}

- (id)commandBufferWithUnretainedReferences
{
  v2 = [[AGXG18PFamilyCommandBuffer alloc] initWithQueue:self retainedReferences:0];

  return v2;
}

- (id)commandBuffer
{
  v2 = [[AGXG18PFamilyCommandBuffer alloc] initWithQueue:self retainedReferences:1];

  return v2;
}

@end
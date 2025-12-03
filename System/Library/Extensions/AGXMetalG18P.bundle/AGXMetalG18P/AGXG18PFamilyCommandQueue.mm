@interface AGXG18PFamilyCommandQueue
- (AGXG18PFamilyCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor;
- (BOOL)setGPUPriority:(unint64_t)priority;
- (BOOL)setGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset;
- (id)commandBuffer;
- (id)commandBufferWithDescriptor:(id)descriptor;
- (id)commandBufferWithUnretainedReferences;
- (unint64_t)resolveAndUpdateQueuePriority:(unint64_t)priority;
- (void)dealloc;
- (void)setLabel:(id)label;
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

- (AGXG18PFamilyCommandQueue)initWithDevice:(id)device descriptor:(id)descriptor
{
  v27 = *MEMORY[0x29EDCA608];
  bzero(v25, 0x408uLL);
  devicePartition = [descriptor devicePartition];
  v8 = 0xFFFFFFFFLL;
  if (devicePartition == 2)
  {
    v8 = 1;
  }

  if (devicePartition == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if ([descriptor disableIOFencing])
  {
    v10 = 0x200000000;
  }

  else
  {
    v10 = 0;
  }

  enableLowLatencySignalSharedEvent = [descriptor enableLowLatencySignalSharedEvent];
  v12 = 0x400000000;
  if (!enableLowLatencySignalSharedEvent)
  {
    v12 = 0;
  }

  v13 = v9 | v10 | v12;
  if ([descriptor enableLowLatencyWaitSharedEvent])
  {
    v14 = 0x800000000;
  }

  else
  {
    v14 = 0;
  }

  if ([descriptor lockParameterBufferSizeToMax])
  {
    v15 = 0x1000000000;
  }

  else
  {
    v15 = 0;
  }

  disableCrossQueueHazardTracking = [descriptor disableCrossQueueHazardTracking];
  v17 = 0x100000000;
  if (disableCrossQueueHazardTracking)
  {
    v17 = 0;
  }

  v26 = v13 | v14 | v15 | v17;
  v24.receiver = self;
  v24.super_class = AGXG18PFamilyCommandQueue;
  v18 = [(IOGPUMetalCommandQueue *)&v24 initWithDevice:device descriptor:descriptor args:v25 argsSize:1040];
  v19 = v18;
  if (v18)
  {
    device = [(IOGPUMetalCommandQueue *)v18 device];
    {
      v23 = device;
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

- (BOOL)setGPUPriority:(unint64_t)priority offset:(unsigned __int16)offset
{
  v5.receiver = self;
  v5.super_class = AGXG18PFamilyCommandQueue;
  return [(IOGPUMetalCommandQueue *)&v5 setGPUPriority:[(AGXG18PFamilyCommandQueue *)self resolveAndUpdateQueuePriority:priority] offset:offset];
}

- (BOOL)setGPUPriority:(unint64_t)priority
{
  v4.receiver = self;
  v4.super_class = AGXG18PFamilyCommandQueue;
  return [(IOGPUMetalCommandQueue *)&v4 setGPUPriority:[(AGXG18PFamilyCommandQueue *)self resolveAndUpdateQueuePriority:priority]];
}

- (unint64_t)resolveAndUpdateQueuePriority:(unint64_t)priority
{
  {
    selfCopy = self;
    self = selfCopy;
    if (v6)
    {
      [AGXG18PFamilyCommandQueue resolveAndUpdateQueuePriority:]::isInternalInstall = *(*([(IOGPUMetalCommandQueue *)selfCopy device]+ 848) + 16945);
      self = selfCopy;
    }
  }

  if ([AGXG18PFamilyCommandQueue resolveAndUpdateQueuePriority:]::isInternalInstall == 1)
  {
    v4 = &unk_2A179E000;
    {
      selfCopy2 = self;
      v4 = &unk_2A179E000;
      v9 = v8;
      self = selfCopy2;
      if (v9)
      {
        [AGXG18PFamilyCommandQueue resolveAndUpdateQueuePriority:]::forceGPUPriorityHigh = 0;
        v4 = &unk_2A179E000;
        self = selfCopy2;
      }
    }

    v15 = 0;
    {
      selfCopy3 = self;
      v10 = v4;
      v4 = v10;
      v12 = v11;
      self = selfCopy3;
      if (v12)
      {
        [AGXG18PFamilyCommandQueue resolveAndUpdateQueuePriority:]::forceGPUPriorityEVIsSet = findEnvVarNum<unsigned long long>("AGX_FORCE_GPU_PRIORITY", &v15);
        v4 = v10;
        self = selfCopy3;
      }
    }

    if (v4[3552])
    {
      priority = 0;
    }
  }

  HIDWORD(self->_commandQueueBTInfo.callstack[63]) = priority;
  return priority;
}

- (void)setLabel:(id)label
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
  [(IOGPUMetalCommandQueue *)&v7 setLabel:label];
}

- (id)commandBufferWithDescriptor:(id)descriptor
{
  v4 = -[AGXG18PFamilyCommandBuffer initWithQueue:retainedReferences:]([AGXG18PFamilyCommandBuffer alloc], "initWithQueue:retainedReferences:", self, [descriptor retainedReferences]);
  -[_MTLCommandBuffer setErrorOptions:](v4, "setErrorOptions:", [descriptor errorOptions]);
  deadlineProfile = [descriptor deadlineProfile];
  if (deadlineProfile)
  {
    v6 = deadlineProfile[8];
    v7 = deadlineProfile;
    *(&v4->super.super.super.super.isa + *MEMORY[0x29EDBB770]) = v7;
    *(v4->_impl + 134) = v6;
  }

  v4->_captureProgramAddressTable = [descriptor captureProgramAddressTable];
  v4->_cloneIntersectionFunctionTablesPerDispatch = [descriptor cloneIntersectionFunctionTablesPerDispatch];
  impl = v4->_impl;
  impl[568] = [descriptor disableFineGrainedComputePreemption];
  [(_MTLCommandBuffer *)v4 configWithCommandBufferDescriptor:descriptor];
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
@interface MTLIOAccelDevice
- (BOOL)lazyInitialize;
- (BOOL)supportsVertexAmplificationCount:(unint64_t)count;
- (MTLIOAccelDevice)initWithAcceleratorPort:(unsigned int)port;
- (id)_deviceWrapper;
- (id)allocBufferSubDataWithLength:(unint64_t)length options:(unint64_t)options alignment:(unint64_t)alignment heapIndex:(signed __int16 *)index bufferIndex:(signed __int16 *)bufferIndex bufferOffset:(unint64_t *)offset;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset;
- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor;
- (id)newCommandQueueWithDescriptor:(id)descriptor;
- (id)newEvent;
- (id)newEventWithOptions:(int64_t)options;
- (id)newFence;
- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error;
- (id)newIOHandleWithURL:(id)l compressionMethod:(int64_t)method error:(id *)error;
- (id)newIOHandleWithURL:(id)l error:(id *)error;
- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newUncachedIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error;
- (id)newUncachedIOHandleWithURL:(id)l error:(id *)error;
- (unint64_t)currentAllocatedSize;
- (unint64_t)maxBufferLength;
- (unint64_t)recommendedMaxWorkingSetSize;
- (void)_purgeDevice;
- (void)dealloc;
- (void)deallocBufferSubData:(id)data heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length;
- (void)kickCleanupQueue;
- (void)setHwResourcePool:(id *)pool count:(int)count;
- (void)updateResourcePoolPurgeability;
@end

@implementation MTLIOAccelDevice

- (void)dealloc
{
  device_pool_cleanup_queue = self->_device_pool_cleanup_queue;
  if (device_pool_cleanup_queue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__MTLIOAccelDevice_dealloc__block_invoke;
    block[3] = &unk_1E6EEA858;
    block[4] = self;
    dispatch_sync(device_pool_cleanup_queue, block);
    dispatch_release(self->_device_pool_cleanup_queue);
  }

  commandBufferStoragePool = self->_commandBufferStoragePool;
  if (commandBufferStoragePool)
  {
    MTLIOAccelCommandBufferStoragePoolDealloc(commandBufferStoragePool, a2, v2, v3, v4, v5, v6, v7);
  }

  device_dispatch_queue = self->_device_dispatch_queue;
  if (device_dispatch_queue)
  {
    dispatch_release(device_dispatch_queue);
  }

  sharedRef = self->_sharedRef;
  if (sharedRef)
  {
    CFRelease(sharedRef);
  }

  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    CFRelease(deviceRef);
  }

  self->_storageCreateParams.kernelCommandShmemPool = 0;
  self->_storageCreateParams.segmentListShmemPool = 0;
  if (self->_storageCreateParams.var0)
  {
    v14 = 0;
    do
    {

      self->_storageCreateParams.hwResourcePools[v14++] = 0;
    }

    while (v14 < self->_storageCreateParams.var0);
  }

  self->_storageCreateParams.var0 = 0;
  free(self->_storageCreateParams.hwResourcePools);
  self->_storageCreateParams.hwResourcePools = 0;

  IOObjectRelease(self->_acceleratorPort);
  v15.receiver = self;
  v15.super_class = MTLIOAccelDevice;
  [(_MTLDevice *)&v15 dealloc];
}

void __27__MTLIOAccelDevice_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 54152);
  if (*(v2 + 54160) == 1)
  {
    dispatch_source_cancel(v3);
  }

  else
  {
    dispatch_resume(v3);
  }

  *(*(a1 + 32) + 54160) = 0;
  dispatch_activate(*(*(a1 + 32) + 54152));
  v4 = *(*(a1 + 32) + 54152);

  dispatch_release(v4);
}

- (MTLIOAccelDevice)initWithAcceleratorPort:(unsigned int)port
{
  v10.receiver = self;
  v10.super_class = MTLIOAccelDevice;
  v4 = [(_MTLDevice *)&v10 init];
  if (v4)
  {
    v5 = IOAccelDeviceCreateWithAPIProperty();
    v4->_deviceRef = v5;
    if (!v5)
    {
LABEL_7:

      return 0;
    }

    IORegistryEntryGetRegistryEntryID(port, &v4->_registryID);
    v4->_acceleratorPort = port;
    IOObjectRetain(port);
    v4->_storageCreateParams.hwResourcePools = 0;
    v4->_storageCreateParams.var0 = 0;
    deviceRef = v4->_deviceRef;
    IOAccelDeviceGetConfig64();
    v7 = v4->_deviceRef;
    IOAccelDeviceGetSharedMemorySize();
    v4->_videoRam = 0;
    v4->_textureRam = 0;
    v8 = v4->_deviceRef;
    v4->super._globalTraceObjectID = IOAccelDeviceGetGlobalTraceObjectID();
    if (**MEMORY[0x1E69A8488])
    {
      IOAccelDeviceTraceEvent();
    }
  }

  if (![(MTLIOAccelDevice *)v4 supportLazyInitialization]&& ![(MTLIOAccelDevice *)v4 lazyInitialize])
  {
    goto LABEL_7;
  }

  return v4;
}

- (BOOL)lazyInitialize
{
  deviceRef = self->_deviceRef;
  v4 = IOAccelSharedCreate();
  self->_sharedRef = v4;
  if (v4)
  {
    self->_storageCreateParams.akResourceListPool = [[MTLResourceListPool alloc] initWithResourceListCapacity:1024];
    self->_storageCreateParams.akPrivateResourceListPool = [[MTLResourceListPool alloc] initWithResourceListCapacity:256];
    self->_storageCreateParams.kernelCommandShmemPool = [[MTLIOAccelDeviceShmemPool alloc] initWithDevice:self resourceClass:objc_opt_class() shmemSize:[(MTLIOAccelDevice *)self initialKernelCommandShmemSize] options:0];
    self->_storageCreateParams.segmentListShmemPool = [[MTLIOAccelDeviceShmemPool alloc] initWithDevice:self resourceClass:objc_opt_class() shmemSize:[(MTLIOAccelDevice *)self initialSegmentListShmemSize] options:0];
    self->_segmentByteThreshold = 0;
    self->_device_dispatch_queue = dispatch_queue_create("com.Metal.DeviceDispatchQueue", 0);
    MTLIOAccelCommandBufferStoragePoolCreate(self);
    self->_commandBufferStoragePool = v4;
    if (v4)
    {
      v5 = dispatch_queue_create("com.Metal.DeviceCleaupQueue", 0);
      self->_device_pool_cleanup_queue = v5;
      self->_device_pool_cleanup_source = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
      self->_device_pool_cleanup_scheduled = 0;
      v9[0] = 0;
      v9[1] = v9;
      v9[2] = 0x3052000000;
      v9[3] = __Block_byref_object_copy__4;
      v9[4] = __Block_byref_object_dispose__4;
      v9[5] = self;
      device_pool_cleanup_source = self->_device_pool_cleanup_source;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __34__MTLIOAccelDevice_lazyInitialize__block_invoke;
      handler[3] = &unk_1E6EEB598;
      handler[4] = v9;
      dispatch_source_set_event_handler(device_pool_cleanup_source, handler);
      _Block_object_dispose(v9, 8);
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)setHwResourcePool:(id *)pool count:(int)count
{
  self->_storageCreateParams.hwResourcePools = malloc_type_malloc(8 * count, 0x80040B8603338uLL);
  if (count >= 1)
  {
    v7 = 0;
    do
    {
      self->_storageCreateParams.hwResourcePools[v7] = pool[v7];
      ++v7;
    }

    while (count != v7);
  }

  self->_storageCreateParams.var0 = count;
}

- (void)_purgeDevice
{
  v5.receiver = self;
  v5.super_class = MTLIOAccelDevice;
  [(_MTLDevice *)&v5 _purgeDevice];
  MTLIOAccelCommandBufferStoragePoolPurge(self->_commandBufferStoragePool);
  p_storageCreateParams = &self->_storageCreateParams;
  [(MTLIOAccelDeviceShmemPool *)p_storageCreateParams->kernelCommandShmemPool purge];
  [(MTLIOAccelDeviceShmemPool *)p_storageCreateParams->segmentListShmemPool purge];
  [(MTLResourceListPool *)p_storageCreateParams->akResourceListPool purge];
  [(MTLResourceListPool *)p_storageCreateParams->akPrivateResourceListPool purge];
  if (p_storageCreateParams->var0)
  {
    v4 = 0;
    do
    {
      [(hwResourcePoolCount *)p_storageCreateParams->hwResourcePools[v4++] purge];
    }

    while (v4 < p_storageCreateParams->var0);
  }
}

- (unint64_t)recommendedMaxWorkingSetSize
{
  videoRam = self->_videoRam;
  if (!videoRam)
  {
    return self->_sharedMemorySize;
  }

  return videoRam;
}

- (BOOL)supportsVertexAmplificationCount:(unint64_t)count
{
  if (count == 1)
  {
    return 1;
  }

  result = [(MTLIOAccelDevice *)self supportsVertexAmplification];
  if (count != 2)
  {
    return 0;
  }

  return result;
}

- (id)allocBufferSubDataWithLength:(unint64_t)length options:(unint64_t)options alignment:(unint64_t)alignment heapIndex:(signed __int16 *)index bufferIndex:(signed __int16 *)bufferIndex bufferOffset:(unint64_t *)offset
{
  optionsCopy = options;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = __Block_byref_object_copy__4;
  v40 = __Block_byref_object_dispose__4;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v15 = [(MTLIOAccelDevice *)self heapIndexWithOptions:options];
  v16 = v15;
  if (v15 < 0)
  {
    v20 = 0;
  }

  else
  {
    v37[5] = 0;
    *(v29 + 12) = -1;
    if ((optionsCopy & 0xF0) == 0x20)
    {
      optionsCopy |= 0x20000uLL;
    }

    device_dispatch_queue = self->_device_dispatch_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__MTLIOAccelDevice_allocBufferSubDataWithLength_options_alignment_heapIndex_bufferIndex_bufferOffset___block_invoke;
    block[3] = &unk_1E6EEB878;
    v23 = v16;
    block[4] = self;
    block[5] = &v32;
    block[6] = &v24;
    block[7] = &v36;
    block[8] = &v28;
    block[9] = length;
    block[10] = alignment;
    block[11] = optionsCopy;
    dispatch_sync(device_dispatch_queue, block);
    v18 = v37;
    if (v37[5])
    {
      *index = v16;
      *bufferIndex = *(v33 + 12);
      *offset = v25[3];
      if ((optionsCopy & 0x90000) == 0 && v29[3] < 0)
      {
        virtualAddress = [v18[5] virtualAddress];
        bzero((virtualAddress + v25[3]), length);
        v18 = v37;
      }
    }

    v20 = v18[5];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  return v20;
}

void __102__MTLIOAccelDevice_allocBufferSubDataWithLength_options_alignment_heapIndex_bufferIndex_bufferOffset___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 760 + 3336 * *(a1 + 96) + 3328))
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    goto LABEL_11;
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2 <= 63)
  {
    do
    {
      v3 = *(a1 + 32) + 760 + 3336 * *(a1 + 96);
      v4 = *(v3 + 8 * v2);
      if (v4)
      {
        if (MTLRangeAllocatorAllocate(v3 + 40 * v2 + 512, *(a1 + 72), (*(*(a1 + 48) + 8) + 24), *(a1 + 80)))
        {
          *(*(*(a1 + 56) + 8) + 40) = v4;
          break;
        }
      }

      else
      {
        v5 = *(*(a1 + 64) + 8);
        if (*(v5 + 24) < 0)
        {
          *(v5 + 24) = v2;
        }
      }

      v2 = ++*(*(*(a1 + 40) + 8) + 24);
    }

    while (v2 < 64);
  }

LABEL_11:
  if ((*(*(*(a1 + 64) + 8) + 24) & 0x80000000) == 0 && !*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) newBufferWithLength:0x20000 options:*(a1 + 88)];
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      *(*(a1 + 32) + 760 + 3336 * *(a1 + 96) + 8 * *(*(*(a1 + 40) + 8) + 24)) = *(*(*(a1 + 56) + 8) + 40);
      MTLRangeAllocatorInit(*(a1 + 32) + 760 + 3336 * *(a1 + 96) + 40 * *(*(*(a1 + 40) + 8) + 24) + 512, 0x1FFFFLL, 0, 0x80uLL);
      v7 = *(a1 + 96);
      v8 = *(a1 + 32) + 760 + 3336 * *(a1 + 96);
      ++*(v8 + 3328);
      if ((MTLRangeAllocatorAllocate(*(a1 + 32) + 760 + 3336 * v7 + 40 * *(*(*(a1 + 40) + 8) + 24) + 512, *(a1 + 72), (*(*(a1 + 48) + 8) + 24), *(a1 + 80)) & 1) == 0)
      {
        *(*(a1 + 32) + 760 + 3336 * *(a1 + 96) + 8 * *(*(*(a1 + 40) + 8) + 24)) = 0;
        v9 = *(a1 + 32) + 760 + 3336 * *(a1 + 96);
        --*(v9 + 3328);

        *(*(*(a1 + 56) + 8) + 40) = 0;
      }
    }
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = *(a1 + 32) + 760 + 3336 * *(a1 + 96) + 4 * *(*(*(a1 + 40) + 8) + 24);
    ++*(v6 + 3072);
  }
}

- (void)deallocBufferSubData:(id)data heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length
{
  device_dispatch_queue = self->_device_dispatch_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MTLIOAccelDevice_deallocBufferSubData_heapIndex_bufferIndex_bufferOffset_length___block_invoke;
  block[3] = &unk_1E6EEB8A0;
  block[4] = data;
  block[5] = self;
  indexCopy = index;
  bufferIndexCopy = bufferIndex;
  block[6] = offset;
  block[7] = length;
  dispatch_sync(device_dispatch_queue, block);
}

void __83__MTLIOAccelDevice_deallocBufferSubData_heapIndex_bufferIndex_bufferOffset_length___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40) + 760 + 3336 * *(a1 + 64);
  if (*(a1 + 32) == *(v1 + 8 * *(a1 + 66)))
  {
    v3 = v1 + 40 * *(a1 + 66);
    MTLRangeAllocatorDeallocate((v3 + 512), *(a1 + 48), *(a1 + 56));
    v4 = *(a1 + 64);
    v5 = *(a1 + 66);
    v6 = *(a1 + 40) + 760 + 3336 * *(a1 + 64) + 4 * v5;
    --*(v6 + 3072);
    v7 = *(a1 + 40) + 760 + 3336 * v4;
    if (!*(v7 + 4 * v5 + 3072))
    {
      *(v7 + 8 * v5) = 0;
      MTLRangeAllocatorDestroy((v3 + 512));
    }

    v8 = *(a1 + 32);
  }
}

- (id)newCommandQueueWithDescriptor:(id)descriptor
{
  maxCommandBufferCount = [descriptor maxCommandBufferCount];

  return [(_MTLDevice *)self newCommandQueueWithMaxCommandBufferCount:maxCommandBufferCount];
}

- (id)newFence
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  device_dispatch_queue = self->_device_dispatch_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__MTLIOAccelDevice_newFence__block_invoke;
  v5[3] = &unk_1E6EEAD40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(device_dispatch_queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

MTLIOAccelFence *__28__MTLIOAccelDevice_newFence__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 54164);
  v11 = *(v9 + 54168);
  if (v10 >= v11)
  {
    if (v11)
    {
      v12 = 2 * v11;
    }

    else
    {
      v12 = 256;
    }

    v13 = *(v9 + 640);
    FenceMemory = IOAccelSharedAllocateFenceMemory();
    if (FenceMemory != v12)
    {
      __28__MTLIOAccelDevice_newFence__block_invoke_cold_1(FenceMemory, v15, v16, v17, v18, v19, v20, v21);
    }

    v22 = *(a1 + 32);
    v23 = *(v22 + 54176);
    *(v22 + 54184) = malloc_type_realloc(*(v22 + 54184), 8 * (v12 >> 6), 0x100004000313F17uLL);
    bzero((*(*(a1 + 32) + 54184) + 8 * v23), 8 * ((v12 >> 6) - v23));
    v24 = *(a1 + 32);
    if (!*(v24 + 54168))
    {
      **(v24 + 54184) |= 1uLL;
      *(*(a1 + 32) + 54164) = 1;
      v24 = *(a1 + 32);
    }

    *(v24 + 54168) = v12;
    *(*(a1 + 32) + 54176) = v12 >> 6;
    v9 = *(a1 + 32);
    v10 = *(v9 + 54164);
    v11 = *(v9 + 54168);
  }

  if (v10 >= v11)
  {
    __28__MTLIOAccelDevice_newFence__block_invoke_cold_2(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v25 = *(v9 + 54172);
  v26 = *(v9 + 54176);
  if (v25 >= v26)
  {
    v27 = 0;
  }

  else
  {
    while (1)
    {
      v27 = *(*(v9 + 54184) + 8 * v25);
      if (v27 != -1)
      {
        break;
      }

      if (v26 == ++v25)
      {
        v27 = -1;
        LODWORD(v25) = *(v9 + 54176);
        break;
      }
    }
  }

  if (v25 >= v11)
  {
    __28__MTLIOAccelDevice_newFence__block_invoke_cold_3(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(v9 + 54172) = v25;
  v28 = __clz(__rbit64(~v27));
  result = [[MTLIOAccelFence alloc] initWithDevice:*(a1 + 32) fenceIndex:(v28 + (v25 << 6))];
  *(*(*(a1 + 40) + 8) + 40) = result;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 32) + 54184) + 8 * v25) = (1 << v28) | v27;
    ++*(*(a1 + 32) + 54164);
  }

  return result;
}

uint64_t __38__MTLIOAccelDevice_releaseFenceIndex___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = v1 >> 6;
  *(*(*(result + 32) + 54184) + 8 * v2) = *(*(*(result + 32) + 54184) + 8 * (v1 >> 6)) & ~(1 << v1);
  --*(*(result + 32) + 54164);
  v3 = *(result + 32);
  if (v2 < *(v3 + 54172))
  {
    *(v3 + 54172) = v2;
  }

  return result;
}

- (id)newIndirectCommandBufferWithDescriptor:(id)descriptor maxCommandCount:(unint64_t)count options:(unint64_t)options
{
  result = [(MTLIOAccelDevice *)self newIndirectCommandBufferWithDescriptor:descriptor maxCount:count options:options];
  if (result)
  {
    v8 = result;
    v9 = [[MTLIOAccelIndirectCommandBuffer alloc] initWithBuffer:result descriptor:descriptor maxCommandCount:count];

    return v9;
  }

  return result;
}

- (unint64_t)currentAllocatedSize
{
  sharedRef = self->_sharedRef;
  if (IOAccelSharedGetAllocatedSize())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (id)newEvent
{
  if ((self->_configBits & 0x4000) != 0)
  {
    v4 = [_MTLIOAccelMTLEvent alloc];

    return [(_MTLIOAccelMTLEvent *)v4 initWithDevice:self];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTLIOAccelDevice;
    return [(_MTLDevice *)&v5 newEvent];
  }
}

- (id)newEventWithOptions:(int64_t)options
{
  v5 = [_MTLIOAccelMTLEvent alloc];

  return [(_MTLIOAccelMTLEvent *)v5 initWithDevice:self options:options];
}

- (unint64_t)maxBufferLength
{
  deviceRef = self->_deviceRef;
  IOAccelDeviceGetMaxResourceSize();
  return 0;
}

- (void)kickCleanupQueue
{
  device_pool_cleanup_queue = self->_device_pool_cleanup_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MTLIOAccelDevice_kickCleanupQueue__block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = self;
  dispatch_async(device_pool_cleanup_queue, block);
}

void __36__MTLIOAccelDevice_kickCleanupQueue__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 54160) & 1) == 0)
  {
    *(v2 + 54160) = 1;
    v4 = *(*(a1 + 32) + 54152);
    v5 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v4, v5, 0x3B9ACA00uLL, 0x5F5E100uLL);
    v6 = *(*(a1 + 32) + 54152);

    dispatch_resume(v6);
  }
}

- (void)updateResourcePoolPurgeability
{
  if (self->_device_pool_cleanup_scheduled)
  {
    p_storageCreateParams = &self->_storageCreateParams;
    if (!self->_storageCreateParams.var0)
    {
      goto LABEL_6;
    }

    v4 = 0;
    v5 = 0;
    do
    {
      v5 |= [(hwResourcePoolCount *)p_storageCreateParams->hwResourcePools[v4++] updateResourcePurgeability];
    }

    while (v4 < p_storageCreateParams->var0);
    if ((v5 & 1) == 0)
    {
LABEL_6:
      dispatch_suspend(self->_device_pool_cleanup_source);
      self->_device_pool_cleanup_scheduled = 0;
    }
  }
}

- (id)_deviceWrapper
{
  if (!objc_loadWeak(&self->_deviceWrapper))
  {
    return self;
  }

  Weak = objc_loadWeak(&self->_deviceWrapper);

  return [Weak _deviceWrapper];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    v6 = [(MTLIOAccelDevice *)self newBufferWithLength:size options:32];
    if (v6)
    {
      v7 = v6;
      v8 = [[MTLIOAccelAccelerationStructure alloc] initWithBuffer:v6 offset:0];

      return v8;
    }
  }

  else
  {
    [(MTLIOAccelDevice *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size withDescriptor:(id)descriptor
{
  if (![(_MTLDevice *)self requiresRaytracingEmulation])
  {
    [(MTLIOAccelDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }

  v8 = -[MTLIOAccelDevice newBufferWithLength:options:](self, "newBufferWithLength:options:", size, 16 * ([descriptor storageMode] & 0xF));
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  forceResourceIndex = [descriptor forceResourceIndex];
  v11 = [MTLIOAccelAccelerationStructure alloc];
  if (forceResourceIndex)
  {
    v12 = -[MTLIOAccelAccelerationStructure initWithBuffer:offset:resourceIndex:](v11, "initWithBuffer:offset:resourceIndex:", v9, 0, [descriptor resourceIndex]);
  }

  else
  {
    v12 = [(MTLIOAccelAccelerationStructure *)v11 initWithBuffer:v9 offset:0];
  }

  v13 = v12;

  return v13;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    v8 = [(MTLIOAccelDevice *)self newBufferWithLength:size options:32];
    if (v8)
    {
      v9 = v8;
      v10 = [[MTLIOAccelAccelerationStructure alloc] initWithBuffer:v8 offset:0 resourceIndex:index];

      return v10;
    }
  }

  else
  {
    [(MTLIOAccelDevice *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset
{
  if (![(_MTLDevice *)self requiresRaytracingEmulation])
  {
    [(MTLIOAccelDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }

  if (!buffer)
  {
    return 0;
  }

  v8 = [MTLIOAccelAccelerationStructure alloc];

  return [(MTLIOAccelAccelerationStructure *)v8 initWithBuffer:buffer offset:offset];
}

- (id)newAccelerationStructureWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  if (![(_MTLDevice *)self requiresRaytracingEmulation])
  {
    [(MTLIOAccelDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }

  if (!buffer)
  {
    return 0;
  }

  v10 = [MTLIOAccelAccelerationStructure alloc];

  return [(MTLIOAccelAccelerationStructure *)v10 initWithBuffer:buffer offset:offset resourceIndex:index];
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  if ([(_MTLDevice *)self requiresRaytracingEmulation])
  {
    v6 = objc_alloc_init(MTLVisibleFunctionTableDescriptor);
    -[MTLVisibleFunctionTableDescriptor setFunctionCount:](v6, "setFunctionCount:", [descriptor functionCount]);
    -[MTLVisibleFunctionTableDescriptor setResourceIndex:](v6, "setResourceIndex:", [descriptor resourceIndex]);
    -[MTLVisibleFunctionTableDescriptor setForceResourceIndex:](v6, "setForceResourceIndex:", [descriptor forceResourceIndex]);
    v7 = [(MTLIOAccelDevice *)self newVisibleFunctionTableWithDescriptor:v6];

    v8 = [[MTLIOAccelIntersectionFunctionTable alloc] initWithVisibleFunctionTable:v7];
    return v8;
  }

  else
  {
    [(MTLIOAccelDevice *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newIOCommandQueueWithDescriptor:(id)descriptor error:(id *)error
{
  v6 = [MTLIOAccelIOCommandQueue alloc];

  return [(MTLIOAccelIOCommandQueue *)v6 initWithDevice:self descriptor:descriptor];
}

- (id)newIOHandleWithURL:(id)l compressionMethod:(int64_t)method error:(id *)error
{
  if (![l isFileURL])
  {
    if (error)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLIOError" code:1 userInfo:v12];
    }

    return 0;
  }

  if (![l checkResourceIsReachableAndReturnError:error])
  {
    return 0;
  }

  v9 = [MTLIOAccelIOHandleCompressed alloc];
  fileSystemRepresentation = [l fileSystemRepresentation];

  return [(MTLIOAccelIOHandleCompressed *)v9 initWithDevice:self path:fileSystemRepresentation compressionType:method error:error uncached:0];
}

- (id)newIOHandleWithURL:(id)l error:(id *)error
{
  if (![l isFileURL])
  {
    if (error)
    {
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLIOError" code:1 userInfo:v10];
    }

    return 0;
  }

  if (![l checkResourceIsReachableAndReturnError:error])
  {
    return 0;
  }

  v7 = [MTLIOAccelIOHandleRaw alloc];
  fileSystemRepresentation = [l fileSystemRepresentation];

  return [(MTLIOAccelIOHandleRaw *)v7 initWithDevice:self path:fileSystemRepresentation error:error uncached:0];
}

- (id)newUncachedIOHandleWithURL:(id)l compressionType:(int64_t)type error:(id *)error
{
  if (![l isFileURL])
  {
    if (error)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLIOError" code:1 userInfo:v12];
    }

    return 0;
  }

  if (![l checkResourceIsReachableAndReturnError:error])
  {
    return 0;
  }

  v9 = [MTLIOAccelIOHandleCompressed alloc];
  fileSystemRepresentation = [l fileSystemRepresentation];

  return [(MTLIOAccelIOHandleCompressed *)v9 initWithDevice:self path:fileSystemRepresentation compressionType:type error:error uncached:1];
}

- (id)newUncachedIOHandleWithURL:(id)l error:(id *)error
{
  if (![l isFileURL])
  {
    if (error)
    {
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"URL is not a file" forKey:*MEMORY[0x1E696A578]];
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLIOError" code:1 userInfo:v10];
    }

    return 0;
  }

  if (![l checkResourceIsReachableAndReturnError:error])
  {
    return 0;
  }

  v7 = [MTLIOAccelIOHandleRaw alloc];
  fileSystemRepresentation = [l fileSystemRepresentation];

  return [(MTLIOAccelIOHandleRaw *)v7 initWithDevice:self path:fileSystemRepresentation error:error uncached:1];
}

@end
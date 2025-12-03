@interface VNCIContextManager
- (VNCIContextManager)init;
- (id)waitAndGetAvailableContextForCPUAndReturnError:(uint64_t)error;
- (id)waitAndGetAvailableContextForComputeDevice:(void *)device error:;
- (id)waitAndGetAvailableContextForMetalDevice:(uint64_t)device error:(void *)error;
- (id)waitAndGetAvailableContextFromOptions:(void *)options error:;
- (uint64_t)performBlock:(void *)block usingAvailableContextForComputeDevice:(void *)device error:;
- (void)releaseContext:(uint64_t)context;
@end

@implementation VNCIContextManager

- (VNCIContextManager)init
{
  v10.receiver = self;
  v10.super_class = VNCIContextManager;
  v2 = [(VNCIContextManager *)&v10 init];
  if (!v2)
  {
    return 0;
  }

  v11.receiver = v2;
  v11.super_class = VNCIContextManager;
  v3 = [(VNCIContextManager *)&v11 init];
  v4 = v3;
  if (v3)
  {
    v3->_maxContextsCount = 4;
    v5 = [[VNCIContextsHandler alloc] initWithMaxCount:0 metalDevice:?];
    cpuContextsHandler = v4->_cpuContextsHandler;
    v4->_cpuContextsHandler = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    gpuContextsHandlers = v4->_gpuContextsHandlers;
    v4->_gpuContextsHandlers = v7;

    v4->_gpuHandlersLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (id)waitAndGetAvailableContextForComputeDevice:(void *)device error:
{
  v5 = a2;
  if (v5)
  {
    if ([VNComputeDeviceUtilities isCPUComputeDevice:v5])
    {
      v6 = [VNCIContextManager waitAndGetAvailableContextForCPUAndReturnError:self];
    }

    else
    {
      metalDevice = [VNComputeDeviceUtilities metalDeviceForComputeDevice:v5];
      if (!metalDevice)
      {
        v8 = +[VNProcessingDevice defaultMetalDevice];
        metalDevice = [v8 metalDevice];
      }

      v6 = [VNCIContextManager waitAndGetAvailableContextForMetalDevice:self error:metalDevice];
    }
  }

  else if (device)
  {
    [VNError errorForInvalidArgument:0 named:@"computeDevice"];
    *device = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)waitAndGetAvailableContextForCPUAndReturnError:(uint64_t)error
{
  v1 = [VNCIContextsHandler waitAndGetAvailableContextReturnError:?];

  return v1;
}

- (id)waitAndGetAvailableContextForMetalDevice:(uint64_t)device error:(void *)error
{
  errorCopy = error;
  os_unfair_lock_lock((device + 24));
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(errorCopy, "registryID")}];
  v5 = [*(device + 16) objectForKey:v4];
  if (!v5)
  {
    v5 = [[VNCIContextsHandler alloc] initWithMaxCount:errorCopy metalDevice:?];
    [*(device + 16) setObject:? forKey:?];
  }

  os_unfair_lock_unlock((device + 24));
  v6 = [VNCIContextsHandler waitAndGetAvailableContextReturnError:v5];

  return v6;
}

- (id)waitAndGetAvailableContextFromOptions:(void *)options error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = [v5 objectForKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
    v8 = [v7 objectForKeyedSubscript:@"VNComputeStageMain"];

    if (v8)
    {
      self = [(VNCIContextManager *)self waitAndGetAvailableContextForComputeDevice:v8 error:options];
    }

    else
    {
      v9 = +[VNProcessingDevice defaultMetalDevice];
      metalDevice = [v9 metalDevice];

      if (metalDevice)
      {
        [VNCIContextManager waitAndGetAvailableContextForMetalDevice:self error:metalDevice];
      }

      else
      {
        [VNCIContextManager waitAndGetAvailableContextForCPUAndReturnError:self];
      }
      self = ;
    }
  }

  return self;
}

- (void)releaseContext:(uint64_t)context
{
  v3 = a2;
  if (context)
  {
    v7 = v3;
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(v3 + 2);
      v5 = v7;
      if (WeakRetained)
      {
        v6 = v5;
        os_unfair_lock_lock(WeakRetained + 6);
        if ([*(WeakRetained + 5) containsObject:v6])
        {
          [*(WeakRetained + 4) addObject:v6];
          [*(WeakRetained + 5) removeObject:v6];
          os_unfair_lock_unlock(WeakRetained + 6);
          dispatch_semaphore_signal(*(WeakRetained + 2));
        }

        else
        {
          os_unfair_lock_unlock(WeakRetained + 6);
        }
      }
    }

    else
    {
      WeakRetained = 0;
    }

    v3 = v7;
  }
}

- (uint64_t)performBlock:(void *)block usingAvailableContextForComputeDevice:(void *)device error:
{
  v7 = a2;
  blockCopy = block;
  if (self)
  {
    v9 = [(VNCIContextManager *)self waitAndGetAvailableContextForComputeDevice:blockCopy error:device];
    if (v9)
    {
      v10 = v7;
      v11 = v9;
      v12 = v10[2](v10, v11, device);
      [(VNCIContextManager *)self releaseContext:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
@interface VTFrameProcessor
- (BOOL)createSharedEventListener;
- (BOOL)processWithParameters:(id)parameters error:(id *)error;
- (BOOL)startSessionWithConfiguration:(id)configuration error:(id *)error;
- (VTFrameProcessor)init;
- (void)dealloc;
- (void)destroySharedEventListener;
- (void)endSession;
- (void)internalEndSession;
- (void)processWithCommandBuffer:(id)buffer parameters:(id)parameters;
- (void)processWithParameters:(id)parameters completionHandler:(id)handler;
- (void)processWithParameters:(id)parameters frameOutputHandler:(id)handler;
@end

@implementation VTFrameProcessor

- (void)dealloc
{
  [(VTFrameProcessor *)self endSession];
  v3.receiver = self;
  v3.super_class = VTFrameProcessor;
  [(VTFrameProcessor *)&v3 dealloc];
}

- (void)internalEndSession
{
  veFrameProcessor = self->_veFrameProcessor;
  if (veFrameProcessor)
  {
    [(VEFrameProcessor *)veFrameProcessor endSession];

    self->_veFrameProcessor = 0;
  }

  configuration = self->_configuration;
  if (configuration)
  {

    self->_configuration = 0;
  }

  processor = self->_processor;
  if (processor)
  {
    [(VTFrameProcessorImplementationPrivate *)processor finishProcessing];

    self->_processor = 0;
  }

  [(VTFrameProcessor *)self destroySharedEventListener];
}

- (void)destroySharedEventListener
{
  self->_sharedEventListener = 0;
  self->_sharedEventList = 0;
  self->_sharedEventListTearingDown = 0;
}

- (BOOL)createSharedEventListener
{
  self->_sharedEventListTearingDown = 0;
  v3 = [objc_alloc(MEMORY[0x1E6974178]) initWithDispatchQueue:self->_processFrameQueue];
  self->_sharedEventListener = v3;
  result = 0;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_sharedEventList = v4;
    if (v4)
    {
      return 1;
    }
  }

  return result;
}

- (void)endSession
{
  if (self->_sharedEventListener)
  {
    os_unfair_lock_lock(&self->_sharedEventListLock);
    if ([(NSMutableArray *)self->_sharedEventList count]&& !self->_sharedEventListTearingDown)
    {
      lastObject = [(NSMutableArray *)self->_sharedEventList lastObject];
      self->_sharedEventListTearingDown = 1;
      os_unfair_lock_unlock(&self->_sharedEventListLock);
      if (lastObject)
      {
        [lastObject waitUntilSignaledValue:2 timeoutMS:10000];
      }
    }

    else
    {
      self->_sharedEventListTearingDown = 1;
      os_unfair_lock_unlock(&self->_sharedEventListLock);
    }
  }

  processFrameQueue = self->_processFrameQueue;
  if (processFrameQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__VTFrameProcessor_endSession__block_invoke;
    block[3] = &unk_1E72C5D68;
    block[4] = self;
    dispatch_sync(processFrameQueue, block);
    v5 = self->_processFrameQueue;
    if (v5)
    {
      dispatch_release(v5);
    }

    self->_processFrameQueue = 0;
  }
}

- (BOOL)startSessionWithConfiguration:(id)configuration error:(id *)error
{
  v12 = 0;

  self->_configuration = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_processorType = 1;
    v7 = objc_alloc_init(VTTestProcessorImplementation);
    self->_processor = v7;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_processorType = 3;
    configuration = [configuration veConfiguration];
    if (loadVEFrameworkOnce_veLibraryLoaderOnce == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_processorType = 2;
    configuration = [configuration veConfiguration];
    if (loadVEFrameworkOnce_veLibraryLoaderOnce == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_processorType = 4;
    configuration = [configuration veConfiguration];
    if (loadVEFrameworkOnce_veLibraryLoaderOnce == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_processorType = 8;
    configuration = [configuration veConfiguration];
    if (loadVEFrameworkOnce_veLibraryLoaderOnce == -1)
    {
LABEL_14:
      v7 = objc_alloc_init(NSClassFromString(&cfstr_Veframeprocess.isa));
      self->_veFrameProcessor = v7;
LABEL_15:
      v8 = [(VTTestProcessorImplementation *)v7 startSessionWithConfiguration:configuration error:&v12];
      if (!error)
      {
        return v8;
      }

      goto LABEL_16;
    }

LABEL_28:
    loadVEFrameworkOnce_cold_1();
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_processorType = 5;
    v10 = VTTemporalNoiseFilterImplementation;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_processorType = 6;
      v10 = VTLowLatencySuperResolutionScalerImplementation;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_26;
      }

      self->_processorType = 7;
      v10 = VTLowLatencyFrameInterpolationImplementation;
    }
  }

  v11 = objc_alloc_init(v10);
  self->_processor = v11;
  [(VTFrameProcessorImplementationPrivate *)v11 startSessionWithConfiguration:configuration error:error];
LABEL_26:
  v8 = 1;
  if (!error)
  {
    return v8;
  }

LABEL_16:
  if (v12)
  {
    *error = translateNSErrorToVTFrameProcessorError(v12);
  }

  return v8;
}

- (BOOL)processWithParameters:(id)parameters error:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  processorType = self->_processorType;
  if (processorType > 3)
  {
    if (processorType == 4 || processorType == 8)
    {
LABEL_9:
      veParameters = [parameters veParameters];
      v9 = [(VEFrameProcessor *)self->_veFrameProcessor processWithParameters:veParameters error:v15 + 5];
      *(v21 + 24) = v9;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else if (processorType == 2 || processorType == 3)
  {
    goto LABEL_9;
  }

  processFrameQueue = self->_processFrameQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__VTFrameProcessor_processWithParameters_error___block_invoke;
  v13[3] = &unk_1E72C5D90;
  v13[4] = self;
  v13[5] = parameters;
  v13[6] = &v20;
  v13[7] = &v14;
  dispatch_sync(processFrameQueue, v13);
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = v15[5];
  if (v10)
  {
    *error = translateNSErrorToVTFrameProcessorError(v10);
  }

LABEL_12:
  v11 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v11;
}

uint64_t __48__VTFrameProcessor_processWithParameters_error___block_invoke(void *a1)
{
  result = [*(a1[4] + 24) processWithParams:a1[5] error:*(a1[7] + 8) + 40];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    translateNSErrorToVTFrameProcessorError(a3);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    translateNSErrorToVTFrameProcessorError(a3);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    translateNSErrorToVTFrameProcessorError(a3);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    translateNSErrorToVTFrameProcessorError(a3);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke_6(void *a1)
{
  v3 = 0;
  [*(a1[4] + 24) processWithParams:a1[5] error:&v3];
  if (v3)
  {
    translateNSErrorToVTFrameProcessorError(v3);
  }

  return (*(a1[6] + 16))();
}

uint64_t __61__VTFrameProcessor_processWithParameters_frameOutputHandler___block_invoke(uint64_t a1)
{
  v11 = 0;
  v2 = [*(a1 + 32) destinationFrame];
  if (v2)
  {
    [v2 presentationTimeStamp];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
  }

  v9 = v7;
  v10 = v8;
  [*(*(a1 + 40) + 24) processWithParams:*(a1 + 32) error:{&v11, v7, v8}];
  if (v11)
  {
    translateNSErrorToVTFrameProcessorError(v11);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(v3 + 16);
  v7 = v9;
  v8 = v10;
  return v5(v3, v4, &v7);
}

- (void)processWithCommandBuffer:(id)buffer parameters:(id)parameters
{
  processorType = self->_processorType;
  if (processorType > 3)
  {
    if (processorType == 4)
    {
      veParameters = [parameters veParameters];
      veFrameProcessor = self->_veFrameProcessor;
      v10 = &__block_literal_global_36;
      goto LABEL_14;
    }

    if (processorType == 8)
    {
      veParameters = [parameters veParameters];
      veFrameProcessor = self->_veFrameProcessor;
      v10 = &__block_literal_global_38;
      goto LABEL_14;
    }
  }

  else
  {
    if (processorType == 2)
    {
      veParameters = [parameters veParameters];
      veFrameProcessor = self->_veFrameProcessor;
      v10 = &__block_literal_global_34;
      goto LABEL_14;
    }

    if (processorType == 3)
    {
      veParameters = [parameters veParameters];
      veFrameProcessor = self->_veFrameProcessor;
      v10 = &__block_literal_global_32;
LABEL_14:

      [(VEFrameProcessor *)veFrameProcessor processWithCommandBuffer:buffer parameters:veParameters completionHandler:v10];
      return;
    }
  }

  os_unfair_lock_lock(&self->_sharedEventListLock);
  if (!self->_sharedEventListTearingDown && (self->_sharedEventListener || [(VTFrameProcessor *)self createSharedEventListener]))
  {
    newSharedEvent = [(MTLDevice *)self->_device newSharedEvent];
    [(NSMutableArray *)self->_sharedEventList addObject:newSharedEvent];
    os_unfair_lock_unlock(&self->_sharedEventListLock);
    if (newSharedEvent)
    {
      sharedEventListener = self->_sharedEventListener;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __56__VTFrameProcessor_processWithCommandBuffer_parameters___block_invoke_5;
      v13[3] = &unk_1E72C5E28;
      v13[4] = self;
      v13[5] = parameters;
      [newSharedEvent notifyListener:sharedEventListener atValue:1 block:v13];
      [buffer encodeSignalEvent:newSharedEvent value:1];
      [buffer encodeWaitForEvent:newSharedEvent value:2];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_sharedEventListLock);
  }
}

void __56__VTFrameProcessor_processWithCommandBuffer_parameters___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = 0;
  [*(*(a1 + 32) + 24) processWithParams:*(a1 + 40) error:&v4];
  [a2 setSignaledValue:2];
  os_unfair_lock_lock((*(a1 + 32) + 76));
  [*(*(a1 + 32) + 64) removeObject:a2];
  os_unfair_lock_unlock((*(a1 + 32) + 76));
}

- (VTFrameProcessor)init
{
  v6.receiver = self;
  v6.super_class = VTFrameProcessor;
  v2 = [(VTFrameProcessor *)&v6 init];
  if (v2)
  {
    if (loadVEFrameworkOnce_veLibraryLoaderOnce != -1)
    {
      dispatch_once(&loadVEFrameworkOnce_veLibraryLoaderOnce, &__block_literal_global);
    }

    v2->_veFrameProcessor = 0;
    v5 = 0;
    asprintf(&v5, "vtframeprocessor-queue-%p", v2);
    v2->_processFrameQueue = FigDispatchQueueCreateWithPriority();
    free(v5);
    if (v2->_processFrameQueue && (v3 = MTLCreateSystemDefaultDevice(), (v2->_device = v3) != 0))
    {
      v2->_sharedEventListLock._os_unfair_lock_opaque = 0;
      v2->_sharedEventListener = 0;
      v2->_sharedEventList = 0;
      v2->_sharedEventListTearingDown = 0;
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
      return 0;
    }
  }

  return v2;
}

- (void)processWithParameters:(id)parameters completionHandler:(id)handler
{
  if (handler)
  {
    switch(self->_processorType)
    {
      case 2:
        [parameters veParameters];
        v7 = OUTLINED_FUNCTION_0_0();
        block[19] = MEMORY[0x1E69E9820];
        block[20] = 3221225472;
        block[21] = __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke_2;
        block[22] = &unk_1E72C5DB8;
        block[23] = parameters;
        block[24] = handler;
        goto LABEL_10;
      case 3:
        [parameters veParameters];
        v7 = OUTLINED_FUNCTION_0_0();
        block[25] = MEMORY[0x1E69E9820];
        block[26] = 3221225472;
        block[27] = __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke;
        block[28] = &unk_1E72C5DB8;
        block[29] = parameters;
        block[30] = handler;
        goto LABEL_10;
      case 4:
        [parameters veParameters];
        v7 = OUTLINED_FUNCTION_0_0();
        block[13] = MEMORY[0x1E69E9820];
        block[14] = 3221225472;
        block[15] = __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke_3;
        block[16] = &unk_1E72C5DB8;
        block[17] = parameters;
        block[18] = handler;
        goto LABEL_10;
      case 5:
        processFrameQueue = self->_processFrameQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke_5;
        block[3] = &unk_1E72C5DE0;
        block[4] = self;
        block[5] = parameters;
        block[6] = handler;
        v9 = block;
        goto LABEL_8;
      case 8:
        [parameters veParameters];
        v7 = OUTLINED_FUNCTION_0_0();
        block[7] = MEMORY[0x1E69E9820];
        block[8] = 3221225472;
        block[9] = __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke_4;
        block[10] = &unk_1E72C5DB8;
        block[11] = parameters;
        block[12] = handler;
LABEL_10:
        [v7 processWithParameters:? completionHandler:?];
        break;
      default:
        processFrameQueue = self->_processFrameQueue;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __60__VTFrameProcessor_processWithParameters_completionHandler___block_invoke_6;
        v10[3] = &unk_1E72C5DE0;
        v10[4] = self;
        v10[5] = parameters;
        v10[6] = handler;
        v9 = v10;
LABEL_8:
        dispatch_async(processFrameQueue, v9);
        break;
    }
  }
}

- (void)processWithParameters:(id)parameters frameOutputHandler:(id)handler
{
  if (handler)
  {
    processorType = self->_processorType;
    if (processorType == 4)
    {
      v8 = [objc_msgSend(parameters "destinationFrames")];
      v15 = 0uLL;
      v16 = 0;
      if (v8)
      {
        [v8 presentationTimeStamp];
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VTFrameProcessorErrorDomain" code:-19740 userInfo:0];
      v10 = *(handler + 2);
      v13 = v15;
      v14 = v16;
      v10(handler, parameters, &v13, 1, v9);
    }

    else if (processorType == 7)
    {
      processor = self->_processor;

      [VTFrameProcessorImplementationPrivate processWithParameters:"processWithParameters:frameOutputHandler:" frameOutputHandler:?];
    }

    else
    {
      processFrameQueue = self->_processFrameQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__VTFrameProcessor_processWithParameters_frameOutputHandler___block_invoke;
      block[3] = &unk_1E72C5DE0;
      block[4] = parameters;
      block[5] = self;
      block[6] = handler;
      dispatch_async(processFrameQueue, block);
    }
  }
}

@end
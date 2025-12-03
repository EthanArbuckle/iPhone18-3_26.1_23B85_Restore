@interface VTLowLatencyFrameInterpolationImplementation
- (BOOL)processWithParams:(id)params error:(id *)error;
- (BOOL)startSessionWithConfiguration:(id)configuration error:(id *)error;
- (VTLowLatencyFrameInterpolationImplementation)init;
- (void)dealloc;
- (void)processWithParameters:(id)parameters frameOutputHandler:(id)handler;
@end

@implementation VTLowLatencyFrameInterpolationImplementation

- (VTLowLatencyFrameInterpolationImplementation)init
{
  v3.receiver = self;
  v3.super_class = VTLowLatencyFrameInterpolationImplementation;
  return [(VTLowLatencyFrameInterpolationImplementation *)&v3 init];
}

- (BOOL)startSessionWithConfiguration:(id)configuration error:(id *)error
{
  VCPFrameworkOnce = loadVCPFrameworkOnce();
  if (VCPFrameworkOnce)
  {
    self->_vcpFrameInterpolationProcessor = [objc_alloc(NSClassFromString(&cfstr_Vcpvideointerp_0.isa)) initWithConfiguration:objc_msgSend(configuration error:{"vcpConfiguration"), error}];
  }

  else
  {
    NSLog(&cfstr_ProcessorNotSu.isa);
  }

  return VCPFrameworkOnce;
}

- (BOOL)processWithParams:(id)params error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v7 = [objc_msgSend(params "sourceFrame")];
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_msgSend(params "previousFrame")];
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  destinationFrames = [params destinationFrames];
  if (v8)
  {
    v12 = destinationFrames;
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(destinationFrames, "count")}];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v14)
    {
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v13 addObject:{objc_msgSend(*(*(&v26 + 1) + 8 * i), "buffer")}];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v14);
    }

    dispatch_group_enter([params parameterDispatchGroup]);
    vcpFrameInterpolationProcessor = self->_vcpFrameInterpolationProcessor;
    interpolationPhase = [params interpolationPhase];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__VTLowLatencyFrameInterpolationImplementation_processWithParams_error___block_invoke;
    v25[3] = &unk_1E72C9630;
    v25[4] = params;
    v25[5] = &v30;
    [(VCPVideoInterpolationSession *)vcpFrameInterpolationProcessor processWithPreviousFrame:v10 currentFrame:v8 interpolationPhases:interpolationPhase outputBuffers:v13 error:&v34 frameCompletionHandler:v25];
    if (v34)
    {
      dispatch_group_leave([params parameterDispatchGroup]);
    }

    dispatch_group_wait([params parameterDispatchGroup], 0xFFFFFFFFFFFFFFFFLL);
    v19 = v34;
    if (!v34)
    {
      if (*(v31 + 6))
      {
        v20 = MEMORY[0x1E696ABC0];
        v21 = MEMORY[0x1E695DF20];
        v22 = [MEMORY[0x1E696AD98] numberWithInt:?];
        v19 = [v20 errorWithDomain:@"VTFrameProcessorErrorDomain" code:-19740 userInfo:{objc_msgSend(v21, "dictionaryWithObject:forKey:", v22, *MEMORY[0x1E696AA08])}];
        v34 = v19;
      }

      else
      {
        v19 = 0;
      }
    }

    v23 = v19 == 0;
    if (error)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v19 = 0;
    v13 = 0;
    v23 = 0;
    if (error)
    {
LABEL_22:
      *error = v19;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v30, 8);
  return v23;
}

void __72__VTLowLatencyFrameInterpolationImplementation_processWithParams_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5 || a4)
  {
    *(*(*(a1 + 40) + 8) + 24) = a5;
    v7 = [*(a1 + 32) parameterDispatchGroup];

    dispatch_group_leave(v7);
  }
}

- (void)processWithParameters:(id)parameters frameOutputHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v7 = [objc_msgSend(parameters "sourceFrame")];
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_msgSend(parameters "previousFrame")];
  if (v9)
  {
    v10 = CFRetain(v9);
  }

  else
  {
    v10 = 0;
  }

  destinationFrames = [parameters destinationFrames];
  if (!v8)
  {
    v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VTFrameProcessorErrorDomain" code:-19741 userInfo:0];
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(destinationFrames, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [destinationFrames countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(destinationFrames);
        }

        [v12 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * v16++), "buffer")}];
      }

      while (v14 != v16);
      v14 = [destinationFrames countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v14);
  }

  vcpFrameInterpolationProcessor = self->_vcpFrameInterpolationProcessor;
  interpolationPhase = [parameters interpolationPhase];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__VTLowLatencyFrameInterpolationImplementation_processWithParameters_frameOutputHandler___block_invoke;
  v22[3] = &unk_1E72C9658;
  v22[5] = parameters;
  v22[6] = handler;
  v22[4] = destinationFrames;
  [(VCPVideoInterpolationSession *)vcpFrameInterpolationProcessor processWithPreviousFrame:v10 currentFrame:v8 interpolationPhases:interpolationPhase outputBuffers:v12 error:&v27 frameCompletionHandler:v22];
  if (v27)
  {
    v19 = *(handler + 2);
    v20 = *MEMORY[0x1E6960C70];
    v21 = *(MEMORY[0x1E6960C70] + 16);
    v19(handler, parameters, &v20, 1);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t __89__VTLowLatencyFrameInterpolationImplementation_processWithParameters_frameOutputHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [*(a1 + 32) objectAtIndex:a2];
  if (v7)
  {
    [v7 presentationTimeStamp];
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  v17 = v15;
  v18 = v16;
  if (a5)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = MEMORY[0x1E695DF20];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:a5];
    [v8 errorWithDomain:@"VTFrameProcessorErrorDomain" code:-19740 userInfo:{objc_msgSend(v9, "dictionaryWithObject:forKey:", v10, *MEMORY[0x1E696AA08])}];
  }

  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(v11 + 16);
  v15 = v17;
  v16 = v18;
  return v13(v11, v12, &v15);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTLowLatencyFrameInterpolationImplementation;
  [(VTLowLatencyFrameInterpolationImplementation *)&v3 dealloc];
}

@end
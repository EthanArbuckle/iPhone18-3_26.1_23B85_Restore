@interface VTTemporalNoiseFilterImplementation
- (BOOL)_checkForDiscontinuity:(id)a3;
- (BOOL)_validateParameters:(id)a3 error:(id *)a4;
- (BOOL)finishProcessing;
- (BOOL)processWithParams:(id)a3 completionHandler:(id)a4 error:(id *)a5;
- (BOOL)processWithParams:(id)a3 error:(id *)a4;
- (BOOL)startSessionWithConfiguration:(id)a3 error:(id *)a4;
- (PendingFrameItem)_createPendingFrame:(id *)a3 inputFrame:(id)a4;
- (PendingFrameItem)_findFrameInQueue:(id *)a3;
- (VTTemporalNoiseFilterImplementation)init;
- (int)_completeFrame:(PendingFrameItem *)a3;
- (int)_processFrame:(id)a3 outputFrame:(id)a4 useClientProvidedOutputFrame:(unsigned __int8)a5;
- (int)_processReferenceFrameIfNotProcessed:(id)a3;
- (int)_processSourceFrameIfNotProcessed:(id)a3 completionHandler:(id)a4;
- (int)_setFilterStrength:(int)a3;
- (void)_clearStaledPendingFramesFromQueue;
- (void)_completeFrames;
- (void)_freePendingFrame:(PendingFrameItem *)a3;
- (void)dealloc;
- (void)handleEmittedFrame:(__CVBuffer *)a3 presentationTimestamp:(id *)a4 status:(int)a5 infoFlags:(unsigned int)a6;
@end

@implementation VTTemporalNoiseFilterImplementation

- (VTTemporalNoiseFilterImplementation)init
{
  v6.receiver = self;
  v6.super_class = VTTemporalNoiseFilterImplementation;
  v2 = [(VTTemporalNoiseFilterImplementation *)&v6 init];
  if (!v2)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A0040461DCC1BuLL);
  v3->filterInternal = v4;
  if (!v4)
  {
    NSLog(&cfstr_FailToAllocate.isa);
    return 0;
  }

  return v3;
}

- (BOOL)startSessionWithConfiguration:(id)a3 error:(id *)a4
{
  UInt32 = a3;
  if (!a3)
  {
    [VTTemporalNoiseFilterImplementation startSessionWithConfiguration:? error:?];
    Mutable = 0;
    v14 = v15;
    goto LABEL_21;
  }

  self->_configuration = a3;
  filterInternal = self->filterInternal;
  filterInternal->var9 = 100;
  filterInternal->var7 = **&MEMORY[0x1E6960C70];
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"TemporalFilterID", @"com.apple.videotoolbox.temporalfilter.mctf");
  v10 = VTTemporalFilterSessionCreate(v8, @"TemporalNoiseReduction", [UInt32 frameWidth], objc_msgSend(UInt32, "frameHeight"), Mutable, 0, 0, 0, filterOutputCallback, self, self->filterInternal);
  if (v10)
  {
    v14 = v10;
    UInt32 = 0;
    goto LABEL_21;
  }

  if ([UInt32 sourcePixelFormat])
  {
    [UInt32 sourcePixelFormat];
    UInt32 = FigCFNumberCreateUInt32();
    v11 = VTSessionSetProperty(self->filterInternal->var0, @"SourceFramePixelFormat", UInt32);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    UInt32 = 0;
  }

  v11 = [(VTTemporalNoiseFilterImplementation *)self _setFilterStrength:self->filterInternal->var9];
  if (v11)
  {
LABEL_17:
    v14 = v11;
LABEL_21:
    v12 = 0;
    if (a4 && v14)
    {
      v12 = 0;
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"VTFrameProcessorErrorDomain" code:v14 userInfo:0];
    }

    goto LABEL_12;
  }

  self->filterInternal->var6 = FigSimpleMutexCreate();
  if (!self->filterInternal->var6)
  {
    v14 = -12904;
    goto LABEL_21;
  }

  self->filterInternal->var2 = dispatch_queue_create("FrameCompletionHandlerQueue", 0);
  self->filterInternal->var3 = dispatch_group_create();
  self->filterInternal->var4 = dispatch_group_create();
  if (isMCTFRunningOutOfProcess_onceToken != -1)
  {
    [VTTemporalNoiseFilterImplementation startSessionWithConfiguration:error:];
  }

  self->filterInternal->var10 = isMCTFRunningOutOfProcess_runningOutOfProcess;
  v12 = 1;
LABEL_12:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  return v12;
}

- (BOOL)processWithParams:(id)a3 completionHandler:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = [a3 nextFrames];
  v10 = [a3 previousFrames];
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v11 = [a3 sourceFrame];
  if (v11)
  {
    [v11 presentationTimeStamp];
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  if (![(VTTemporalNoiseFilterImplementation *)self _validateParameters:a3 error:a5])
  {
    v27 = 0;
    v26 = 0;
    goto LABEL_30;
  }

  if ([(VTTemporalNoiseFilterImplementation *)self _checkForDiscontinuity:a3])
  {
    [(VTTemporalNoiseFilterImplementation *)self _completeFrames];
    [a3 filterStrength];
    self->filterInternal->var9 = (v12 * 100.0);
    v13 = [(VTTemporalNoiseFilterImplementation *)self _setFilterStrength:?];
    if (v13)
    {
      goto LABEL_28;
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
LABEL_9:
    v17 = 0;
    while (1)
    {
      if (*v35 != v16)
      {
        objc_enumerationMutation(v10);
      }

      v13 = [(VTTemporalNoiseFilterImplementation *)self _processReferenceFrameIfNotProcessed:*(*(&v34 + 1) + 8 * v17)];
      if (v13)
      {
        goto LABEL_28;
      }

      if (v15 == ++v17)
      {
        v15 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v15)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  v13 = [(VTTemporalNoiseFilterImplementation *)self _processSourceFrameIfNotProcessed:a3 completionHandler:a4];
  if (v13)
  {
LABEL_28:
    v26 = v13;
    v27 = 0;
LABEL_30:
    v28 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"VTFrameProcessorErrorDomain" code:v26 userInfo:0];
    v29 = v28;
    if (a5)
    {
      *a5 = v28;
    }

    [(VTTemporalNoiseFilterImplementation *)self _completeFrames];
    if ((v27 & 1) == 0)
    {
      (*(a4 + 2))(a4, a3, v29);
    }

    return 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = [v9 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v9);
        }

        v22 = [(VTTemporalNoiseFilterImplementation *)self _processReferenceFrameIfNotProcessed:*(*(&v30 + 1) + 8 * v21)];
        if (v22)
        {
          v26 = v22;
          v27 = 1;
          goto LABEL_30;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v9 countByEnumeratingWithState:&v30 objects:v41 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v23 = [v9 count];
  if (v23 < -[VTTemporalNoiseFilterConfiguration nextFrameCount](self->_configuration, "nextFrameCount") || (v24 = [v10 count], v24 < -[VTTemporalNoiseFilterConfiguration previousFrameCount](self->_configuration, "previousFrameCount")))
  {
    [(VTTemporalNoiseFilterImplementation *)self _completeFrames];
  }

  return 1;
}

- (BOOL)processWithParams:(id)a3 error:(id *)a4
{
  dispatch_group_enter(self->filterInternal->var4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__VTTemporalNoiseFilterImplementation_processWithParams_error___block_invoke;
  v8[3] = &unk_1E72C8E50;
  v8[4] = self;
  v8[5] = a4;
  LOBYTE(a4) = [(VTTemporalNoiseFilterImplementation *)self processWithParams:a3 completionHandler:v8 error:a4];
  dispatch_group_wait(self->filterInternal->var4, 0xFFFFFFFFFFFFFFFFLL);
  return a4;
}

void __63__VTTemporalNoiseFilterImplementation_processWithParams_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      *v3 = a3;
    }
  }

  dispatch_group_leave(*(*(*(a1 + 32) + 8) + 32));
}

- (BOOL)_checkForDiscontinuity:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (([a3 hasDiscontinuity] & 1) == 0)
  {
    var9 = self->filterInternal->var9;
    [a3 filterStrength];
    if ((v8 * 100.0) == var9)
    {
      memset(&v40, 0, sizeof(v40));
      v9 = [a3 sourceFrame];
      if (v9)
      {
        [v9 presentationTimeStamp];
      }

      else
      {
        memset(&v40, 0, sizeof(v40));
      }

      if ((self->filterInternal->var7.var2 & 1) == 0 || ![objc_msgSend(a3 "previousFrames")])
      {
        goto LABEL_13;
      }

      v10 = [objc_msgSend(a3 "previousFrames")];
      filterInternal = self->filterInternal;
      if (v10)
      {
        [v10 presentationTimeStamp];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      time1 = filterInternal->var7;
      if (!CMTimeCompare(&time1, &time2))
      {
LABEL_13:
        v31 = self;
        flags = *(v5 + 12);
        epoch = *(v5 + 16);
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v14 = [a3 previousFrames];
        v15 = [v14 countByEnumeratingWithState:&v36 objects:v43 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v37;
LABEL_15:
          v18 = 0;
          while (1)
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v36 + 1) + 8 * v18);
            if (flags)
            {
              if (v19)
              {
                [*(*(&v36 + 1) + 8 * v18) presentationTimeStamp];
              }

              else
              {
                memset(&time2, 0, sizeof(time2));
              }

              time1.value = value;
              time1.timescale = timescale;
              time1.flags = flags;
              time1.epoch = epoch;
              if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
              {
                break;
              }
            }

            if (v19)
            {
              [v19 presentationTimeStamp];
              flags = time2.flags;
              epoch = time2.epoch;
            }

            else
            {
              epoch = 0;
              flags = 0;
              memset(&time2, 0, sizeof(time2));
            }

            value = time2.value;
            timescale = time2.timescale;
            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:&v36 objects:v43 count:16];
              if (v16)
              {
                goto LABEL_15;
              }

              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:
          if ((flags & 1) == 0 || (time2 = v40, time1.value = value, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, CMTimeCompare(&time2, &time1) >= 1))
          {
            value = v40.value;
            v20 = v40.flags;
            timescale = v40.timescale;
            v21 = v40.epoch;
            v22 = v31->filterInternal;
            if (v22->var7.var2)
            {
              time2 = v40;
              time1 = v22->var7;
              if (CMTimeCompare(&time2, &time1) < 1)
              {
                goto LABEL_49;
              }

              v22 = v31->filterInternal;
            }

            v22->var7 = v40;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v23 = [a3 nextFrames];
            v24 = [v23 countByEnumeratingWithState:&v32 objects:v42 count:16];
            if (!v24)
            {
              return 0;
            }

            v25 = v24;
            v26 = *v33;
LABEL_35:
            v27 = 0;
            while (1)
            {
              if (*v33 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v32 + 1) + 8 * v27);
              if (v20)
              {
                if (v28)
                {
                  [*(*(&v32 + 1) + 8 * v27) presentationTimeStamp];
                }

                else
                {
                  memset(&time2, 0, sizeof(time2));
                }

                time1.value = value;
                time1.timescale = timescale;
                time1.flags = v20;
                time1.epoch = v21;
                if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
                {
                  break;
                }
              }

              if (v28)
              {
                [v28 presentationTimeStamp];
                v20 = time2.flags;
                v21 = time2.epoch;
              }

              else
              {
                v21 = 0;
                v20 = 0;
                memset(&time2, 0, sizeof(time2));
              }

              value = time2.value;
              timescale = time2.timescale;
              if (v25 == ++v27)
              {
                v25 = [v23 countByEnumeratingWithState:&v32 objects:v42 count:16];
                if (v25)
                {
                  goto LABEL_35;
                }

                return 0;
              }
            }
          }
        }
      }
    }

LABEL_49:
    if (dword_1EAD32180)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v6 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return v6;
    }
  }

  return 1;
}

- (BOOL)_validateParameters:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  [(VTTemporalNoiseFilterConfiguration *)self->_configuration sourcePixelBufferAttributes];
  [(VTTemporalNoiseFilterConfiguration *)self->_configuration destinationPixelBufferAttributes];
  v7 = [a3 sourceFrame];
  v8 = [a3 destinationFrame];
  if (![objc_msgSend(a3 "sourceFrame")])
  {
    [VTTemporalNoiseFilterImplementation _validateParameters:? error:?];
    goto LABEL_29;
  }

  if (![objc_msgSend(a3 "destinationFrame")])
  {
    [VTTemporalNoiseFilterImplementation _validateParameters:? error:?];
    goto LABEL_29;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType([objc_msgSend(a3 "sourceFrame")]);
  [v7 buffer];
  if (!CVPixelBufferIsCompatibleWithAttributes())
  {
    [VTTemporalNoiseFilterImplementation _validateParameters:? error:?];
    goto LABEL_29;
  }

  [v8 buffer];
  if (!CVPixelBufferIsCompatibleWithAttributes())
  {
    [VTTemporalNoiseFilterImplementation _validateParameters:? error:?];
    goto LABEL_29;
  }

  if (CVPixelBufferGetPixelFormatType([objc_msgSend(a3 "destinationFrame")]) != PixelFormatType)
  {
    [VTTemporalNoiseFilterImplementation _validateParameters:? error:?];
LABEL_29:
    result = 0;
    if (a4)
    {
      if (v32)
      {
        v23 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"VTFrameProcessorErrorDomain" code:v32 userInfo:0];
        result = 0;
        *a4 = v23;
      }
    }

    return result;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [a3 previousFrames];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        [v15 buffer];
        if (!CVPixelBufferIsCompatibleWithAttributes())
        {
          [VTTemporalNoiseFilterImplementation _validateParameters:? error:?];
          goto LABEL_29;
        }

        if (CVPixelBufferGetPixelFormatType([v15 buffer]) != PixelFormatType)
        {
          [VTTemporalNoiseFilterImplementation _validateParameters:? error:?];
          goto LABEL_29;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [a3 nextFrames];
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * j);
        [v21 buffer];
        if (!CVPixelBufferIsCompatibleWithAttributes())
        {
          [VTTemporalNoiseFilterImplementation _validateParameters:? error:?];
          goto LABEL_29;
        }

        if (CVPixelBufferGetPixelFormatType([v21 buffer]) != PixelFormatType)
        {
          [VTTemporalNoiseFilterImplementation _validateParameters:? error:?];
          goto LABEL_29;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (int)_setFilterStrength:(int)a3
{
  valuePtr = a3;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v5 = VTSessionSetProperty(self->filterInternal->var0, @"FilterStrength", v4);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    return -19740;
  }

  else
  {
    return 0;
  }
}

- (PendingFrameItem)_findFrameInQueue:(id *)a3
{
  for (i = self->filterInternal->var5.var0; i; i = i->var9.var0)
  {
    time1 = i->var2;
    v6 = *a3;
    if (!CMTimeCompare(&time1, &v6))
    {
      break;
    }
  }

  return i;
}

- (void)_freePendingFrame:(PendingFrameItem *)a3
{
  if (a3)
  {
    var8 = a3->var8;
    if (var8)
    {
      _Block_release(var8);
    }

    var5 = a3->var5;
    if (var5)
    {
      CFRelease(var5);
    }

    free(a3);
  }
}

- (int)_processSourceFrameIfNotProcessed:(id)a3 completionHandler:(id)a4
{
  v7 = [a3 sourceFrame];
  v8 = [a3 destinationFrame];
  FigSimpleMutexLock();
  if (!v7)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v9 = [(VTTemporalNoiseFilterImplementation *)self _findFrameInQueue:&v16];
    if (!v9)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v10 = v9;
    v11 = 0;
    goto LABEL_9;
  }

  [v7 presentationTimeStamp];
  v9 = [(VTTemporalNoiseFilterImplementation *)self _findFrameInQueue:&v16];
  if (v9)
  {
    goto LABEL_5;
  }

  [v7 presentationTimeStamp];
LABEL_7:
  v12 = [(VTTemporalNoiseFilterImplementation *)self _createPendingFrame:&v16 inputFrame:v7];
  if (!v12)
  {
    [VTTemporalNoiseFilterImplementation _processSourceFrameIfNotProcessed:? completionHandler:?];
    v14 = v16;
LABEL_14:
    FigSimpleMutexUnlock();
    return v14;
  }

  v10 = v12;
  v11 = 1;
LABEL_9:
  v10->var8 = _Block_copy(a4);
  v10->var1 = a3;
  if ((v11 & 1) == 0)
  {
    if (v10->var4)
    {
      v14 = [(VTTemporalNoiseFilterImplementation *)self _completeFrame:v10];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_14;
  }

  v13 = !self->filterInternal->var10;
  v10->var3 = v13;
  FigSimpleMutexUnlock();
  return [(VTTemporalNoiseFilterImplementation *)self _processFrame:v7 outputFrame:v8 useClientProvidedOutputFrame:v13];
}

- (int)_processReferenceFrameIfNotProcessed:(id)a3
{
  FigSimpleMutexLock();
  filterInternal = self->filterInternal;
  if (filterInternal->var8.var2)
  {
    if (a3)
    {
      [a3 presentationTimeStamp];
      filterInternal = self->filterInternal;
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    var8 = filterInternal->var8;
    if (CMTimeCompare(&time1, &var8) < 1)
    {
      value = 0;
LABEL_12:
      FigSimpleMutexUnlock();
      return value;
    }
  }

  if (a3)
  {
    [a3 presentationTimeStamp];
    if (![(VTTemporalNoiseFilterImplementation *)self _findFrameInQueue:&time1])
    {
      [a3 presentationTimeStamp];
LABEL_14:
      if ([(VTTemporalNoiseFilterImplementation *)self _createPendingFrame:&time1 inputFrame:a3])
      {
        FigSimpleMutexUnlock();
        return [(VTTemporalNoiseFilterImplementation *)self _processFrame:a3 outputFrame:0 useClientProvidedOutputFrame:0];
      }

      [VTTemporalNoiseFilterImplementation _processReferenceFrameIfNotProcessed:?];
      value = time1.value;
      goto LABEL_12;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (![(VTTemporalNoiseFilterImplementation *)self _findFrameInQueue:&time1])
    {
      memset(&time1, 0, sizeof(time1));
      goto LABEL_14;
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

- (int)_processFrame:(id)a3 outputFrame:(id)a4 useClientProvidedOutputFrame:(unsigned __int8)a5
{
  v5 = a5;
  v9 = [a3 buffer];
  v16 = 0uLL;
  v17 = 0;
  if (a3)
  {
    [a3 presentationTimeStamp];
  }

  var0 = self->filterInternal->var0;
  if (v5)
  {
    v11 = [a4 buffer];
    v14 = v16;
    v15 = v17;
    v12 = VTTemporalFilterSessionProcessFrameWithOutputPixelBuffer(var0, v9, v11, &v14, 0);
  }

  else
  {
    v14 = v16;
    v15 = v17;
    v12 = VTTemporalFilterSessionProcessFrame(var0, v9, &v14, 0);
  }

  if (v12)
  {
    return -19740;
  }

  else
  {
    return 0;
  }
}

- (void)handleEmittedFrame:(__CVBuffer *)a3 presentationTimestamp:(id *)a4 status:(int)a5 infoFlags:(unsigned int)a6
{
  FigSimpleMutexLock();
  v14 = *a4;
  v11 = [(VTTemporalNoiseFilterImplementation *)self _findFrameInQueue:&v14];
  if (v11)
  {
    v12 = v11;
    v11->var4 = 1;
    if (a3)
    {
      v13 = CFRetain(a3);
    }

    else
    {
      v13 = 0;
    }

    v12->var5 = v13;
    v12->var6 = a5;
    v12->var7 = a6;
    if (v12->var1)
    {
      [(VTTemporalNoiseFilterImplementation *)self _completeFrame:v12];
    }
  }

  FigSimpleMutexUnlock();
}

- (int)_completeFrame:(PendingFrameItem *)a3
{
  var1 = a3->var1;
  if (var1 && a3->var8)
  {
    v6 = var1;
    var5 = a3->var5;
    if (var5)
    {
      v8 = CFRetain(var5);
    }

    else
    {
      v8 = 0;
    }

    v20 = *&a3->var2.var0;
    var3 = a3->var2.var3;
    v9 = _Block_copy(a3->var8);
    var6 = a3->var6;
    v11 = a3->var3;
    filterInternal = self->filterInternal;
    filterInternal->var8.var3 = var3;
    *&filterInternal->var8.var0 = v20;
    v13 = self->filterInternal;
    var2 = v13->var2;
    v15 = v13->var3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__VTTemporalNoiseFilterImplementation__completeFrame___block_invoke;
    block[3] = &unk_1E72C8E78;
    v18 = var6;
    v19 = v11;
    block[4] = v6;
    block[5] = self;
    block[6] = v9;
    block[7] = v8;
    dispatch_group_async(v15, var2, block);
    [(VTTemporalNoiseFilterImplementation *)self _clearStaledPendingFramesFromQueue];
    return 0;
  }

  else
  {
    [VTTemporalNoiseFilterImplementation _completeFrame:?];
    return v22;
  }
}

- (void)_completeFrames
{
  self->filterInternal->var11 = 1;
  FigSimpleMutexLock();
  var0 = self->filterInternal->var5.var0;
  if (var0)
  {
    do
    {
      v4 = var0->var9.var0;
      if (!var0->var1)
      {
        filterInternal = self->filterInternal;
        v8 = filterInternal->var5.var0;
        p_var5 = &filterInternal->var5;
        v6 = v8;
        if (v8 != var0)
        {
          do
          {
            v9 = v6;
            v6 = v6->var9.var0;
          }

          while (v6 != var0);
          p_var5 = &v9->var9;
        }

        p_var5->var0 = v6->var9.var0;
        [(VTTemporalNoiseFilterImplementation *)self _freePendingFrame:?];
      }

      var0 = v4;
    }

    while (v4);
  }

  FigSimpleMutexUnlock();
  VTTemporalFilterSessionCompleteFrames(self->filterInternal->var0);
  v10 = self->filterInternal;
  v11 = MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  v10->var7.var3 = v12;
  v13 = *v11;
  *&v10->var7.var0 = *v11;
  v14 = self->filterInternal;
  v14->var8.var3 = v12;
  *&v14->var8.var0 = v13;
  self->filterInternal->var11 = 0;
}

- (BOOL)finishProcessing
{
  [(VTTemporalNoiseFilterImplementation *)self _completeFrames];
  dispatch_group_wait(self->filterInternal->var3, 0xFFFFFFFFFFFFFFFFLL);
  return 1;
}

- (void)dealloc
{
  [(VTTemporalNoiseFilterImplementation *)self finishProcessing];
  filterInternal = self->filterInternal;
  if (filterInternal->var0)
  {
    CFRelease(filterInternal->var0);
    self->filterInternal->var0 = 0;
    filterInternal = self->filterInternal;
  }

  if (filterInternal->var1)
  {
    CFRelease(filterInternal->var1);
    self->filterInternal->var1 = 0;
    filterInternal = self->filterInternal;
  }

  if (filterInternal->var4)
  {
    dispatch_release(filterInternal->var4);
    filterInternal = self->filterInternal;
    filterInternal->var4 = 0;
  }

  if (filterInternal->var3)
  {
    dispatch_release(filterInternal->var3);
    filterInternal = self->filterInternal;
    filterInternal->var3 = 0;
  }

  if (filterInternal->var2)
  {
    dispatch_release(filterInternal->var2);
    filterInternal = self->filterInternal;
    filterInternal->var2 = 0;
  }

  if (filterInternal->var6)
  {
    FigSimpleMutexDestroy();
    filterInternal = self->filterInternal;
  }

  free(filterInternal);

  v4.receiver = self;
  v4.super_class = VTTemporalNoiseFilterImplementation;
  [(VTTemporalNoiseFilterImplementation *)&v4 dealloc];
}

- (PendingFrameItem)_createPendingFrame:(id *)a3 inputFrame:(id)a4
{
  v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040B0CC2D8EuLL);
  v8 = v7;
  if (v7)
  {
    v9 = *&a3->var0;
    v7->var2.var3 = a3->var3;
    *&v7->var2.var0 = v9;
    v10 = a4;
    v8->var5 = 0;
    v8->var0 = v10;
    v8->var1 = 0;
    v8->var3 = 0;
    v8->var9.var0 = self->filterInternal->var5.var0;
    self->filterInternal->var5.var0 = v8;
  }

  return v8;
}

- (void)_clearStaledPendingFramesFromQueue
{
  filterInternal = self->filterInternal;
  if (filterInternal->var8.var2)
  {
    var0 = filterInternal->var5.var0;
    if (var0)
    {
      do
      {
        v5 = var0->var9.var0;
        v6 = self->filterInternal;
        time1 = var0->var2;
        var8 = v6->var8;
        if (CMTimeCompare(&time1, &var8) <= 0)
        {
          v7 = self->filterInternal;
          v10 = v7->var5.var0;
          p_var5 = &v7->var5;
          v8 = v10;
          if (v10 != var0)
          {
            do
            {
              v11 = v8;
              v8 = v8->var9.var0;
            }

            while (v8 != var0);
            p_var5 = v11 + 9;
          }

          p_var5->var0 = v8->var9.var0;
          [(VTTemporalNoiseFilterImplementation *)self _freePendingFrame:var0];
        }

        var0 = v5;
      }

      while (v5);
    }
  }
}

void __54__VTTemporalNoiseFilterImplementation__completeFrame___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [objc_msgSend(*(a1 + 32) "destinationFrame")];
  if (!v2)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      if (*(a1 + 68))
      {
        goto LABEL_8;
      }

      v5 = v3;
      v6 = *(*(a1 + 40) + 8);
      v9 = *(v6 + 8);
      v8 = (v6 + 8);
      v7 = v9;
      if (!v9)
      {
        if (VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], v8))
        {
          goto LABEL_8;
        }

        v7 = *(*(*(a1 + 40) + 8) + 8);
        v4 = *(a1 + 56);
      }

      VTPixelTransferSessionTransferImage(v7, v4, v5);
    }

    else
    {
      FigSignalErrorAtGM();
    }
  }

LABEL_8:
  if (*(a1 + 64))
  {
    [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"VTFrameProcessorErrorDomain" code:-19740 userInfo:0];
  }

  (*(*(a1 + 48) + 16))();
  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_release(*(a1 + 48));
  v11 = *(a1 + 32);
}

- (uint64_t)startSessionWithConfiguration:(_DWORD *)a1 error:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_validateParameters:(_DWORD *)a1 error:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_validateParameters:(_DWORD *)a1 error:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_validateParameters:(_DWORD *)a1 error:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_validateParameters:(_DWORD *)a1 error:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_validateParameters:(_DWORD *)a1 error:.cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_validateParameters:(_DWORD *)a1 error:.cold.6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_validateParameters:(_DWORD *)a1 error:.cold.7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_validateParameters:(_DWORD *)a1 error:.cold.8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_validateParameters:(_DWORD *)a1 error:.cold.9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_processSourceFrameIfNotProcessed:(_DWORD *)a1 completionHandler:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_processReferenceFrameIfNotProcessed:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_completeFrame:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end
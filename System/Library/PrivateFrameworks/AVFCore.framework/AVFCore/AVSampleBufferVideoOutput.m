@interface AVSampleBufferVideoOutput
- (AVSampleBufferVideoOutput)init;
- (BOOL)_configureWithVideoQueue:(OpaqueFigVideoQueue *)a3;
- (BOOL)hasNewPixelBufferForSourceTime:(id *)a3;
- (BOOL)setUpWithOutputSettings:(id)a3 outputSettingsArePixelBufferAttributes:(BOOL)a4 withExceptionReason:(id *)a5;
- (__CVBuffer)_copyPixelBufferForItemTimeWithOptions:(id *)a3 itemTimeForDisplay:(id *)a4 options:(unsigned int)a5;
- (__CVBuffer)copyLastPixelBuffer:(id *)a3;
- (id)_weakReference;
- (void)_dispatchOutputSequenceWasFlushed;
- (void)_resetLastImageTime;
- (void)dealloc;
- (void)setOutputDelegate:(id)a3 queue:(id)a4;
@end

@implementation AVSampleBufferVideoOutput

- (BOOL)setUpWithOutputSettings:(id)a3 outputSettingsArePixelBufferAttributes:(BOOL)a4 withExceptionReason:(id *)a5
{
  self->_videoOutputInternal->lastImageTime = **&MEMORY[0x1E6960C70];
  if (VTPixelBufferConformerCreateWithAttributes())
  {
    return 0;
  }

  if (!self->_videoOutputInternal->pixelBufferConformer)
  {
    return 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:0.015];
  [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E6973EF8], 0}];
  v8 = [(AVSampleBufferVideoOutput *)self _weakReference];
  if (FigVisualContextCreateRemote())
  {
    return 0;
  }

  vc = self->_videoOutputInternal->vc;
  if (!vc)
  {
    return 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10 || v10(vc, AVSampleBufferVideoOutput_figVCAvailableImmediate, v8))
  {
    return 0;
  }

  self->_videoOutputInternal->stateQueue = dispatch_queue_create("com.apple.avfoundation.avsamplebuffervideooutput", 0);
  return 1;
}

- (AVSampleBufferVideoOutput)init
{
  v5.receiver = self;
  v5.super_class = AVSampleBufferVideoOutput;
  v2 = [(AVSampleBufferVideoOutput *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVSampleBufferVideoOutputInternal);
    v2->_videoOutputInternal = v3;
    if (!v3 || (v2->_videoOutputInternal->delegateStorage = objc_alloc_init(AVWeakReferencingDelegateStorage), v2->_videoOutputInternal->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v2], ![(AVSampleBufferVideoOutput *)v2 setUpWithOutputSettings:0 outputSettingsArePixelBufferAttributes:1 withExceptionReason:0]))
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  videoOutputInternal = self->_videoOutputInternal;
  if (videoOutputInternal)
  {
    pixelBufferConformer = videoOutputInternal->pixelBufferConformer;
    if (pixelBufferConformer)
    {
      CFRelease(pixelBufferConformer);
      videoOutputInternal = self->_videoOutputInternal;
    }

    vc = videoOutputInternal->vc;
    if (vc)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v6)
      {
        v6(vc, 0, 0);
      }

      v7 = self->_videoOutputInternal->vc;
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v8(v7);
        }
      }

      videoOutputInternal = self->_videoOutputInternal;
      v9 = videoOutputInternal->vc;
      if (v9)
      {
        CFRelease(v9);
        videoOutputInternal = self->_videoOutputInternal;
      }
    }

    v10 = self->_videoOutputInternal;
    stateQueue = v10->stateQueue;
    if (stateQueue)
    {
      dispatch_release(stateQueue);
      v10 = self->_videoOutputInternal;
    }
  }

  v12.receiver = self;
  v12.super_class = AVSampleBufferVideoOutput;
  [(AVSampleBufferVideoOutput *)&v12 dealloc];
}

- (id)_weakReference
{
  videoOutputInternal = self->_videoOutputInternal;
  if (videoOutputInternal)
  {
    return videoOutputInternal->weakReference;
  }

  else
  {
    return 0;
  }
}

- (void)setOutputDelegate:(id)a3 queue:(id)a4
{
  if (a3)
  {
    if (!a4)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = "delegateQueue != NULL";
      goto LABEL_9;
    }
  }

  else if (a4)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = "delegateQueue == NULL";
LABEL_9:
    v12 = [v8 exceptionWithName:v9 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", a4, v4, v5, v6, v7, v10), 0}];
    objc_exception_throw(v12);
  }

  delegateStorage = self->_videoOutputInternal->delegateStorage;

  [AVWeakReferencingDelegateStorage setDelegate:"setDelegate:queue:" queue:?];
}

- (__CVBuffer)_copyPixelBufferForItemTimeWithOptions:(id *)a3 itemTimeForDisplay:(id *)a4 options:(unsigned int)a5
{
  v5 = *&a5;
  v14 = 0;
  cf = 0;
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v12 = *MEMORY[0x1E6960C70];
  vc = self->_videoOutputInternal->vc;
  v11 = *a3;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    v9 = *MEMORY[0x1E695E480];
    v16 = v11;
    if (!v8(vc, v9, &v16, v5, &cf, 0, &v12))
    {
      if (a4)
      {
        if ((BYTE12(v12) & 0x1D) != 1)
        {
          goto LABEL_8;
        }

        *&a4->var0 = v12;
        a4->var3 = v13;
      }

      if (VTPixelBufferConformerCopyConformedPixelBuffer())
      {
        v14 = 0;
      }
    }
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

- (BOOL)hasNewPixelBufferForSourceTime:(id *)a3
{
  if ((a3->var2 & 0x1D) != 1)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  vc = self->_videoOutputInternal->vc;
  v8 = *a3;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    return 0;
  }

  v9 = v8;
  return v6(vc, &v9) != 0;
}

- (__CVBuffer)copyLastPixelBuffer:(id *)a3
{
  v18 = *MEMORY[0x1E6960C70];
  v19 = *(MEMORY[0x1E6960C70] + 16);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3810000000;
  v15 = &unk_19626E495;
  v16 = v18;
  v17 = v19;
  stateQueue = self->_videoOutputInternal->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVSampleBufferVideoOutput_copyLastPixelBuffer___block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v12;
  dispatch_sync(stateQueue, block);
  v6 = 0;
  if ((*(v13 + 11) & 0x1D) == 1)
  {
    v9 = *(v13 + 2);
    v10 = v13[6];
    v7 = [(AVSampleBufferVideoOutput *)self copyPixelBufferForSourceTime:&v9 sourceTimeForDisplay:&v18];
    v6 = v7;
    if (a3)
    {
      if (v7 && (BYTE12(v18) & 0x1D) == 1)
      {
        *&a3->var0 = v18;
        a3->var3 = v19;
      }
    }
  }

  _Block_object_dispose(&v12, 8);
  return v6;
}

__n128 __49__AVSampleBufferVideoOutput_copyLastPixelBuffer___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = v2[3];
  v1[3].n128_u64[0] = v2[4].n128_u64[0];
  v1[2] = result;
  return result;
}

- (BOOL)_configureWithVideoQueue:(OpaqueFigVideoQueue *)a3
{
  v3 = *MEMORY[0x1E695E480];
  v4 = CFArrayCreate(*MEMORY[0x1E695E480], &self->_videoOutputInternal->vc, 1, MEMORY[0x1E695E9C0]);
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6(CMBaseObject, *MEMORY[0x1E6973D70], v4);
  CFRelease(v4);
  if (!v7)
  {
    v4 = CFArrayCreate(v3, MEMORY[0x1E695E738], 1, MEMORY[0x1E695E9C0]);
    v9 = FigVideoQueueGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v8 = v10(v9, *MEMORY[0x1E6973D78], v4) == 0;
LABEL_7:
      CFRelease(v4);
      return v8;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  return 0;
}

- (void)_resetLastImageTime
{
  stateQueue = self->_videoOutputInternal->stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVSampleBufferVideoOutput__resetLastImageTime__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

__n128 __48__AVSampleBufferVideoOutput__resetLastImageTime__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(v1 + 48) = *MEMORY[0x1E6960C70];
  *(v1 + 64) = *(v2 + 16);
  return result;
}

- (void)_dispatchOutputSequenceWasFlushed
{
  delegateStorage = self->_videoOutputInternal->delegateStorage;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__AVSampleBufferVideoOutput__dispatchOutputSequenceWasFlushed__block_invoke;
  v3[3] = &unk_1E7463C50;
  v3[4] = self;
  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:v3];
}

uint64_t __62__AVSampleBufferVideoOutput__dispatchOutputSequenceWasFlushed__block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(v3 + 32);

      return [a2 outputSequenceWasFlushed:v4];
    }
  }

  return result;
}

__n128 __AVSampleBufferVideoOutput_figVCAvailableImmediate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 60))
  {
    time1 = *(a1 + 40);
    v4 = *(v2 + 48);
    if (CMTimeCompare(&time1, &v4) < 1)
    {
      return result;
    }

    v2 = *(a1 + 32);
  }

  result = *(a1 + 40);
  *(v2 + 64) = *(a1 + 56);
  *(v2 + 48) = result;
  return result;
}

@end
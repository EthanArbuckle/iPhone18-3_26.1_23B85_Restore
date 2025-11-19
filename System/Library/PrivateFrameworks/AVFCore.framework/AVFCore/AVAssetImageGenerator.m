@interface AVAssetImageGenerator
+ (AVAssetImageGenerator)assetImageGeneratorWithAsset:(AVAsset *)asset;
- (AVAssetImageGenerator)initWithAsset:(AVAsset *)asset;
- (BOOL)_ensureFigAssetImageGeneratorAllowingSynchronousPropertyLoad:(BOOL)a3 error:(id *)a4;
- (BOOL)isDefunct;
- (CGImage)_copyCGImageAtTime:(id *)a3 usingAssetReader:(id)a4 error:(id *)a5;
- (CGImageRef)copyCGImageAtTime:(CMTime *)requestedTime actualTime:(CMTime *)actualTime error:(NSError *)outError;
- (CGSize)_scaledSizeForRenderSize:(CGSize)result;
- (CGSize)maximumSize;
- (id)_NSErrorForError:(int)a3;
- (id)_makeAutoreleasedAssetReader;
- (id)_optionsDictionary;
- (id)_requestWithRequestID:(id)a3;
- (id)_videoSettingWithSize:(CGSize)a3 bitDepth:(unsigned int)a4;
- (void)_didGenerateCGImage:(id)a3;
- (void)_failedToGenerateCGImage:(id)a3;
- (void)_serverDied;
- (void)cancelAllCGImageGeneration;
- (void)dealloc;
- (void)generateCGImageAsynchronouslyForTime:(CMTime *)requestedTime completionHandler:(void *)handler;
- (void)generateCGImagesAsynchronouslyForTimes:(NSArray *)requestedTimes completionHandler:(AVAssetImageGeneratorCompletionHandler)handler;
- (void)setPrefersStandardDynamicRange:(BOOL)a3;
- (void)setRequestedTimeToleranceAfter:(CMTime *)requestedTimeToleranceAfter;
- (void)setRequestedTimeToleranceBefore:(CMTime *)requestedTimeToleranceBefore;
- (void)setVideoComposition:(AVVideoComposition *)videoComposition;
@end

@implementation AVAssetImageGenerator

+ (AVAssetImageGenerator)assetImageGeneratorWithAsset:(AVAsset *)asset
{
  v3 = [[a1 alloc] initWithAsset:asset];

  return v3;
}

- (AVAssetImageGenerator)initWithAsset:(AVAsset *)asset
{
  v15.receiver = self;
  v15.super_class = AVAssetImageGenerator;
  v4 = [(AVAssetImageGenerator *)&v15 init];
  if (v4)
  {
    if (asset && (v5 = objc_alloc_init(AVAssetImageGeneratorInternal), (v4->_priv = v5) != 0))
    {
      v4->_priv->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v4];
      v4->_priv->asset = asset;
      v4->_priv->appliesPreferredTrackTransform = 0;
      v4->_priv->maximumSize = *MEMORY[0x1E695F060];
      v4->_priv->apertureMode = 0;
      priv = v4->_priv;
      v7 = MEMORY[0x1E6960C88];
      v8 = *MEMORY[0x1E6960C88];
      *&priv->requestedTimeToleranceBefore.value = *MEMORY[0x1E6960C88];
      v9 = *(v7 + 16);
      priv->requestedTimeToleranceBefore.epoch = v9;
      v10 = v4->_priv;
      *&v10->requestedTimeToleranceAfter.value = v8;
      v10->requestedTimeToleranceAfter.epoch = v9;
      v4->_priv->requests = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4->_priv->requestsQueue = dispatch_queue_create("com.apple.avfoundation.requestsqueue", v11);
      v4->_priv->nextRequestID = 0;
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4->_priv->imageRequestQueue = dispatch_queue_create("com.apple.avfoundation.imagerequestqueue", v12);
      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v4->_priv->generateImagesAsyncQueue = dispatch_queue_create("com.apple.avfoundation.generateimagesasyncqueue", v13);
      v4->_priv->dynamicRangePolicy = @"ForceSDR";
      v4->_priv->allowsProfessionalVideoWorkflowVideoDecoders = 1;
      v4->_priv->status = 0;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (priv->generator)
    {
      v4 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      [v4 removeListenerWithWeakReference:self->_priv->weakReference callback:aig_didGenerateCGImage name:*MEMORY[0x1E6970E38] object:self->_priv->generator];
      [v4 removeListenerWithWeakReference:self->_priv->weakReference callback:aig_failedToGenerateCGImage name:*MEMORY[0x1E6970E40] object:self->_priv->generator];
      [v4 removeListenerWithWeakReference:self->_priv->weakReference callback:aig_serverDied name:*MEMORY[0x1E6970E48] object:self->_priv->generator];
      [v4 removeListenerWithWeakReference:self->_priv->weakReference callback:aig_serverDied name:*MEMORY[0x1E69628A8] object:self->_priv->generator];
      [v4 removeListenerWithWeakReference:self->_priv->weakReference callback:aig_invalidated name:*MEMORY[0x1E6970E50] object:self->_priv->generator];
      CFRelease(self->_priv->weakReference);
      FigBaseObject = FigAssetImageGeneratorGetFigBaseObject();
      if (FigBaseObject)
      {
        v6 = FigBaseObject;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }

      priv = self->_priv;
      generator = priv->generator;
      if (generator)
      {
        CFRelease(generator);
        self->_priv->generator = 0;
        priv = self->_priv;
      }
    }

    v9 = self->_priv;
    requestsQueue = v9->requestsQueue;
    if (requestsQueue)
    {
      dispatch_release(requestsQueue);
      v9 = self->_priv;
    }

    v11 = self->_priv;
    imageRequestQueue = v11->imageRequestQueue;
    if (imageRequestQueue)
    {
      dispatch_release(imageRequestQueue);
      v11 = self->_priv;
    }

    generateImagesAsyncQueue = v11->generateImagesAsyncQueue;
    if (generateImagesAsyncQueue)
    {
      dispatch_release(generateImagesAsyncQueue);
      v11 = self->_priv;
    }
  }

  v14.receiver = self;
  v14.super_class = AVAssetImageGenerator;
  [(AVAssetImageGenerator *)&v14 dealloc];
}

- (CGImageRef)copyCGImageAtTime:(CMTime *)requestedTime actualTime:(CMTime *)actualTime error:(NSError *)outError
{
  v24 = 0;
  v25 = 0;
  v9 = objc_autoreleasePoolPush();
  if ([(AVAssetImageGenerator *)self videoComposition]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [(AVAssetImageGenerator *)self _makeAutoreleasedAssetReader];
    v26 = *&requestedTime->value;
    epoch = requestedTime->epoch;
    v24 = [(AVAssetImageGenerator *)self _copyCGImageAtTime:&v26 usingAssetReader:v10 error:&v25];
    if (actualTime)
    {
      v11 = *&requestedTime->value;
      actualTime->epoch = requestedTime->epoch;
      *&actualTime->value = v11;
    }
  }

  else
  {
    v15 = [(AVAssetImageGenerator *)self _optionsDictionary];
    if (![v15 count])
    {
      v15 = 0;
    }

    if ([(AVAssetImageGenerator *)self _ensureFigAssetImageGeneratorAllowingSynchronousPropertyLoad:1 error:&v25])
    {
      generator = self->_priv->generator;
      if (generator)
      {
        v22 = *&requestedTime->value;
        v23 = requestedTime->epoch;
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v17)
        {
          v18 = *MEMORY[0x1E695E480];
          v26 = v22;
          epoch = v23;
          v19 = v17(generator, &v26, v15, v18, &v24, actualTime);
          if (v24)
          {
            goto LABEL_5;
          }

          v20 = v19;
        }

        else
        {
          v20 = 4294954514;
        }

        v21 = [(AVAssetImageGenerator *)self _NSErrorForError:v20, v22, v23];
      }

      else
      {
        v21 = AVLocalizedError(@"AVFoundationErrorDomain", -11822, 0);
      }

      v25 = v21;
    }
  }

LABEL_5:
  v12 = v25;
  objc_autoreleasePoolPop(v9);
  v13 = v25;
  result = v24;
  if (outError)
  {
    if (!v24)
    {
      *outError = v25;
    }
  }

  return result;
}

- (void)generateCGImagesAsynchronouslyForTimes:(NSArray *)requestedTimes completionHandler:(AVAssetImageGeneratorCompletionHandler)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", 0, v4, v5, v6, v7, "handler != nil"), 0}];
    objc_exception_throw(v15);
  }

  v10 = [(NSArray *)requestedTimes copy];
  v11 = [handler copy];
  if ([(AVAssetImageGenerator *)self videoComposition]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    generateImagesAsyncQueue = self->_priv->generateImagesAsyncQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke;
    block[3] = &unk_1E74621B8;
    block[4] = v10;
    block[5] = self;
    block[6] = v11;
    dispatch_async(generateImagesAsyncQueue, block);
  }

  else
  {
    asset = self->_priv->asset;
    v18[0] = @"streaming";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_3;
    v16[3] = &unk_1E74621B8;
    v16[4] = self;
    v16[5] = v10;
    v16[6] = v11;
    [(AVAsset *)asset loadValuesAsynchronouslyForKeys:v14 completionHandler:v16];
  }
}

uint64_t __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        v17 = 0uLL;
        v18 = 0;
        if (v7)
        {
          [v7 CMTimeValue];
        }

        v8 = [*(a1 + 40) _makeAutoreleasedAssetReader];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 128);
        *(v9 + 128) = v10 + 1;
        v11 = *(a1 + 40);
        v12 = *(*(v11 + 8) + 152);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_2;
        v13[3] = &unk_1E7462190;
        v14 = v10;
        v15 = v17;
        v16 = v18;
        v13[4] = v11;
        v13[5] = v8;
        v13[6] = *(a1 + 48);
        dispatch_async(v12, v13);
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 >= *(v3[1] + 160))
  {
    v14 = 0;
    v6 = *(a1 + 40);
    v12 = *(a1 + 60);
    v13 = *(a1 + 76);
    v7 = [v3 _copyCGImageAtTime:&v12 usingAssetReader:v6 error:&v14];
    v8 = *(a1 + 48);
    v9 = *(v8 + 16);
    v12 = *(a1 + 60);
    v13 = *(a1 + 76);
    if (v7)
    {
      v10 = *(a1 + 60);
      v11 = *(a1 + 76);
      (v9)(v8, &v12, v7, &v10, 0, 0);
      CFRelease(v7);
    }

    else
    {
      v9(v8, &v12, 0);
    }
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(v4 + 16);
    v12 = *(a1 + 60);
    v13 = *(a1 + 76);
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    v5(v4, &v12, 0);
  }
}

__n128 __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 32) + 8) + 168);
  block[1] = 3221225472;
  block[2] = __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_4;
  block[3] = &unk_1E74621B8;
  v5 = v1;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
  return result;
}

uint64_t __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_4(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v20 = [*(a1 + 32) _optionsDictionary];
  v28 = 0;
  v19 = [*(a1 + 32) _ensureFigAssetImageGeneratorAllowingSynchronousPropertyLoad:0 error:&v28];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 40);
  result = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (result)
  {
    v3 = result;
    v17 = *MEMORY[0x1E6970E10];
    v18 = *v25;
    v16 = *MEMORY[0x1E6970E30];
    do
    {
      v4 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * v4);
        v6 = MEMORY[0x1E696AD98];
        ++*(*(*(a1 + 32) + 8) + 128);
        v7 = [v6 numberWithInt:?];
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, @"RequestID", v5, @"RequestedTime", *(a1 + 48), @"CompletionHandler", *(a1 + 32), @"Self", 0}];
        v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v20];
        [v9 setObject:v7 forKey:v17];
        [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", 0xFFFFFFFFLL), v16}];
        v10 = *(a1 + 32);
        v11 = *(*(v10 + 8) + 120);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_5;
        block[3] = &unk_1E7460DF0;
        block[4] = v10;
        block[5] = v8;
        dispatch_async(v11, block);
        v12 = *(a1 + 32);
        v13 = *(*(v12 + 8) + 152);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_6;
        v21[3] = &unk_1E74621E0;
        v22 = v19;
        v21[4] = v28;
        v21[5] = v12;
        v21[6] = v5;
        v21[7] = v9;
        v14 = *(a1 + 48);
        v21[8] = v8;
        v21[9] = v14;
        dispatch_async(v13, v21);
        ++v4;
      }

      while (v3 != v4);
      result = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(a1 + 80) == 1)
  {
    v5 = *(*(*(a1 + 40) + 8) + 16);
    if (v5)
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        [v6 CMTimeValue];
      }

      else
      {
        v18 = 0uLL;
        v19 = 0;
      }

      v8 = *(a1 + 56);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v9)
      {
        v10 = *MEMORY[0x1E695E480];
        v20 = v18;
        v21 = v19;
        a3 = v9(v5, &v20, v8, v10);
        if (!a3)
        {
          goto LABEL_13;
        }
      }

      else
      {
        a3 = 4294954514;
      }

      v7 = [*(a1 + 40) _NSErrorForError:a3];
    }

    else
    {
      v7 = AVLocalizedError(@"AVFoundationErrorDomain", -11822, 0);
    }

    v4 = v7;
  }

LABEL_13:
  if (v4)
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 48);
    if (v12)
    {
      [v12 CMTimeValue];
    }

    else
    {
      v20 = 0uLL;
      v21 = 0;
    }

    v13 = *(v11 + 16);
    v18 = *MEMORY[0x1E6960C70];
    v19 = *(MEMORY[0x1E6960C70] + 16);
    v13(v11, &v20, 0, &v18, 1, v4);
    v14 = *(a1 + 40);
    v15 = *(*(v14 + 8) + 120);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__AVAssetImageGenerator_generateCGImagesAsynchronouslyForTimes_completionHandler___block_invoke_7;
    v17[3] = &unk_1E7460DF0;
    v16 = *(a1 + 64);
    v17[4] = v14;
    v17[5] = v16;
    dispatch_async(v15, v17);
  }
}

- (void)generateCGImageAsynchronouslyForTime:(CMTime *)requestedTime completionHandler:(void *)handler
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *requestedTime;
  v9[0] = [MEMORY[0x1E696B098] valueWithCMTime:&v8];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__AVAssetImageGenerator_generateCGImageAsynchronouslyForTime_completionHandler___block_invoke;
  v7[3] = &unk_1E7462208;
  v7[4] = handler;
  [(AVAssetImageGenerator *)self generateCGImagesAsynchronouslyForTimes:v6 completionHandler:v7];
}

uint64_t __80__AVAssetImageGenerator_generateCGImageAsynchronouslyForTime_completionHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4, unint64_t a5, uint64_t a6)
{
  if (a5 >= 2)
  {
    if (a5 == 2)
    {
      v10 = *(result + 32);
      v11 = AVLocalizedError(@"AVFoundationErrorDomain", -11878, 0);
      v12 = *(v10 + 16);
      v13 = *a4;
      v14 = *(a4 + 2);
      return v12(v10, a3, &v13, v11);
    }
  }

  else
  {
    v8 = *(result + 32);
    v9 = *(v8 + 16);
    v13 = *a4;
    v14 = *(a4 + 2);
    return v9(v8, a3, &v13, a6);
  }

  return result;
}

- (void)cancelAllCGImageGeneration
{
  FigAtomicCompareAndSwap32();
  generator = self->_priv->generator;
  if (generator)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {

      v4(generator);
    }
  }
}

- (void)setPrefersStandardDynamicRange:(BOOL)a3
{
  v3 = a3;
  v5 = self->_priv->dynamicRangePolicy;
  v6 = @"MatchSource";
  if (v3)
  {
    v6 = @"ForceSDR";
  }

  self->_priv->dynamicRangePolicy = &v6->isa;
}

- (CGSize)maximumSize
{
  priv = self->_priv;
  width = priv->maximumSize.width;
  height = priv->maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setVideoComposition:(AVVideoComposition *)videoComposition
{
  v3 = self->_priv->videoComposition;
  if (v3 != videoComposition)
  {
    if (videoComposition)
    {
      v19 = 0;
      if ([(AVVideoComposition *)videoComposition _isValidReturningExceptionReason:&v19])
      {
        [(AVVideoComposition *)videoComposition renderScale];
        if (v12 == 1.0)
        {
          if (![(AVVideoComposition *)videoComposition outputBufferDescription])
          {
            v3 = self->_priv->videoComposition;
            goto LABEL_7;
          }

          v14 = MEMORY[0x1E695DF30];
          v15 = *MEMORY[0x1E695D940];
          v16 = @"AVAssetImageGenerator can't use a video composition with non-null outputBufferDescription";
        }

        else
        {
          v14 = MEMORY[0x1E695DF30];
          v15 = *MEMORY[0x1E695D940];
          v16 = @"AVAssetImageGenerator can't use a video composition with a renderScale other than 1.0";
        }
      }

      else
      {
        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
        v16 = v19;
      }

      v17 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v16, v7, v8, v9, v10, v11, v18), 0}];
      objc_exception_throw(v17);
    }

LABEL_7:

    self->_priv->videoComposition = [(AVVideoComposition *)videoComposition copy];
    v19 = 0;
    [(AVVideoComposition *)self->_priv->videoComposition _copyFigVideoCompositor:0 andSession:&v19 recyclingSession:self->_priv->customVideoCompositorSession forFigRemaker:1 error:0];
    v13 = self->_priv->customVideoCompositorSession;
    self->_priv->customVideoCompositorSession = v19;
  }
}

- (void)setRequestedTimeToleranceBefore:(CMTime *)requestedTimeToleranceBefore
{
  priv = self->_priv;
  v4 = *&requestedTimeToleranceBefore->value;
  priv->requestedTimeToleranceBefore.epoch = requestedTimeToleranceBefore->epoch;
  *&priv->requestedTimeToleranceBefore.value = v4;
}

- (void)setRequestedTimeToleranceAfter:(CMTime *)requestedTimeToleranceAfter
{
  priv = self->_priv;
  v4 = *&requestedTimeToleranceAfter->value;
  priv->requestedTimeToleranceAfter.epoch = requestedTimeToleranceAfter->epoch;
  *&priv->requestedTimeToleranceAfter.value = v4;
}

- (id)_optionsDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:3];
  [v3 setObject:v4 forKey:*MEMORY[0x1E6970E18]];
  priv = self->_priv;
  if (priv->appliesPreferredTrackTransform)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v6 forKey:*MEMORY[0x1E6970DE8]];
    priv = self->_priv;
  }

  width = priv->maximumSize.width;
  if (width > 0.0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:width];
    [v3 setObject:v8 forKey:*MEMORY[0x1E6970E00]];
    priv = self->_priv;
  }

  height = priv->maximumSize.height;
  if (height > 0.0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:height];
    [v3 setObject:v10 forKey:*MEMORY[0x1E6970DF8]];
    priv = self->_priv;
  }

  apertureMode = priv->apertureMode;
  if (apertureMode)
  {
    [v3 setObject:apertureMode forKey:*MEMORY[0x1E6970DE0]];
    priv = self->_priv;
  }

  if (priv->useSWDecoderForAV1)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v12 forKey:*MEMORY[0x1E6970DC8]];
    priv = self->_priv;
  }

  dynamicRangePolicy = priv->dynamicRangePolicy;
  if (dynamicRangePolicy)
  {
    if ([(NSString *)dynamicRangePolicy isEqualToString:@"MatchSource"])
    {
      v14 = MEMORY[0x1E6970DD8];
    }

    else
    {
      if (![(NSString *)self->_priv->dynamicRangePolicy isEqualToString:@"ForceSDR"])
      {
        goto LABEL_17;
      }

      v14 = MEMORY[0x1E6970DD0];
    }

    [v3 setObject:*v14 forKey:*MEMORY[0x1E6970DF0]];
  }

LABEL_17:
  v15 = self->_priv;
  if (!v15->allowsProfessionalVideoWorkflowVideoDecoders)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v16 forKey:*MEMORY[0x1E6970E08]];
    v15 = self->_priv;
  }

  if ((v15->requestedTimeToleranceBefore.flags & 0x1D) == 1)
  {
    requestedTimeToleranceBefore = v15->requestedTimeToleranceBefore;
    [v3 setObject:NSDictionaryFromCMTime(&requestedTimeToleranceBefore) forKey:*MEMORY[0x1E6970E28]];
    v15 = self->_priv;
  }

  if ((v15->requestedTimeToleranceAfter.flags & 0x1D) == 1)
  {
    requestedTimeToleranceBefore = v15->requestedTimeToleranceAfter;
    [v3 setObject:NSDictionaryFromCMTime(&requestedTimeToleranceBefore) forKey:*MEMORY[0x1E6970E20]];
  }

  return v3;
}

- (void)_didGenerateCGImage:(id)a3
{
  v5 = -[AVAssetImageGenerator _requestWithRequestID:](self, "_requestWithRequestID:", [a3 objectForKey:*MEMORY[0x1E6970E68]]);
  if (v5)
  {
    v6 = v5;
    v7 = [a3 objectForKey:*MEMORY[0x1E6970E58]];
    v8 = [a3 objectForKey:*MEMORY[0x1E6970E60]];
    memset(&v16, 0, sizeof(v16));
    CMTimeMakeFromDictionary(&v16, v8);
    v9 = [v6 objectForKey:@"RequestedTime"];
    v10 = [v6 objectForKey:@"CompletionHandler"];
    if (v9)
    {
      [v9 CMTimeValue];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v11 = *(v10 + 16);
    v14 = v16;
    v11(v10, v15, v7, &v14, 0, 0);
    requestsQueue = self->_priv->requestsQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__AVAssetImageGenerator__didGenerateCGImage___block_invoke;
    v13[3] = &unk_1E7460DF0;
    v13[4] = self;
    v13[5] = v6;
    dispatch_async(requestsQueue, v13);
  }
}

- (void)_failedToGenerateCGImage:(id)a3
{
  v5 = -[AVAssetImageGenerator _requestWithRequestID:](self, "_requestWithRequestID:", [a3 objectForKey:*MEMORY[0x1E6970E68]]);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E6970E70]), "intValue"}];
    v8 = [v6 objectForKey:@"RequestedTime"];
    v9 = [v6 objectForKey:@"CompletionHandler"];
    if (v7 == -12432)
    {
      if (v8)
      {
        [v8 CMTimeValue];
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
      }

      v10 = *(v9 + 16);
      v15 = *MEMORY[0x1E6960C70];
      v16 = *(MEMORY[0x1E6960C70] + 16);
      v10(v9, &v17, 0, &v15, 2, 0);
    }

    else
    {
      if (v8)
      {
        [v8 CMTimeValue];
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
      }

      v11 = [(AVAssetImageGenerator *)self _NSErrorForError:v7];
      v12 = *(v9 + 16);
      v15 = *MEMORY[0x1E6960C70];
      v16 = *(MEMORY[0x1E6960C70] + 16);
      v12(v9, &v17, 0, &v15, 1, v11);
    }

    requestsQueue = self->_priv->requestsQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__AVAssetImageGenerator__failedToGenerateCGImage___block_invoke;
    v14[3] = &unk_1E7460DF0;
    v14[4] = self;
    v14[5] = v6;
    dispatch_async(requestsQueue, v14);
  }
}

- (void)_serverDied
{
  self->_priv->status = 1;
  requestsQueue = self->_priv->requestsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVAssetImageGenerator__serverDied__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(requestsQueue, block);
}

uint64_t __36__AVAssetImageGenerator__serverDied__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(*(*(a1 + 32) + 8) + 112);
  v1 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v19;
    v14 = *MEMORY[0x1E6960C70];
    v4 = *(MEMORY[0x1E6960C70] + 16);
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v19 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [v6 objectForKey:@"RequestedTime"];
        v8 = [v6 objectForKey:@"CompletionHandler"];
        v9 = AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0);
        if (v7)
        {
          [v7 CMTimeValue];
        }

        else
        {
          memset(v17, 0, sizeof(v17));
        }

        v10 = *(v8 + 16);
        v15 = v14;
        v16 = v4;
        v10(v8, v17, 0, &v15, 1, v9);
      }

      v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v2);
  }

  return [*(*(*(a1 + 32) + 8) + 112) removeAllObjects];
}

- (id)_requestWithRequestID:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  requestsQueue = self->_priv->requestsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVAssetImageGenerator__requestWithRequestID___block_invoke;
  block[3] = &unk_1E7460F30;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(requestsQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __47__AVAssetImageGenerator__requestWithRequestID___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1[4] + 8) + 112);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if ([objc_msgSend(v7 objectForKey:{@"RequestID", "isEqual:", a1[5]}])
        {
          result = v7;
          *(*(a1[6] + 8) + 40) = result;
          return result;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (CGSize)_scaledSizeForRenderSize:(CGSize)result
{
  priv = self->_priv;
  width = priv->maximumSize.width;
  height = priv->maximumSize.height;
  if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
  {
    if (width <= 0.0)
    {
      width = result.width;
    }

    if (height <= 0.0)
    {
      height = result.height;
    }

    if (width < result.width || height < result.height)
    {
      v8 = width / result.width;
      v9 = height / result.height;
      result.height = result.height * v8;
      result.width = result.width * v9;
      if (v8 >= v9)
      {
        result.height = height;
      }

      else
      {
        result.width = width;
      }
    }
  }

  return result;
}

- (CGImage)_copyCGImageAtTime:(id *)a3 usingAssetReader:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  imageOut = 0;
  v9 = [a4 outputs];
  if (![v9 count])
  {
    v17 = AVLocalizedError(@"AVFoundationErrorDomain", -11832, 0);
LABEL_18:
    result = 0;
    if (!a5)
    {
      return result;
    }

    goto LABEL_19;
  }

  v10 = [v9 objectAtIndex:0];
  start = *a3;
  v23 = **&MEMORY[0x1E6960CC0];
  CMTimeRangeMake(&v25, &start, &v23);
  [a4 setTimeRange:&v25];
  [a4 _setReadSingleSample:1];
  [a4 startReading];
  v11 = [v10 copyNextSampleBuffer];
  if (!v11)
  {
    if ([a4 status] == 3)
    {
      v17 = [a4 error];
      v19 = [v17 userInfo];
      v20 = *MEMORY[0x1E696AA08];
      v21 = [v19 objectForKey:*MEMORY[0x1E696AA08]];
      if ([v21 code] == -12138)
      {
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObject:v21 forKey:v20];
      }

      else
      {
        if ([v17 code] != -11841)
        {
LABEL_17:
          [a4 cancelReading];
          goto LABEL_18;
        }

        v22 = [MEMORY[0x1E695DF20] dictionaryWithObject:v17 forKey:v20];
      }
    }

    else
    {
      v22 = 0;
    }

    v17 = AVLocalizedError(@"AVFoundationErrorDomain", -11832, v22);
    goto LABEL_17;
  }

  v12 = v11;
  [a4 cancelReading];
  v27 = *MEMORY[0x1E69834D8];
  v28[0] = *MEMORY[0x1E695E4C0];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  ImageBuffer = CMSampleBufferGetImageBuffer(v12);
  if (!ImageBuffer || ((v15 = ImageBuffer, ![(NSString *)[(AVAssetImageGenerator *)self dynamicRangePolicy] isEqualToString:@"MatchSource"]) ? (v16 = 0) : (v16 = v13), VTCreateCGImageFromCVPixelBuffer(v15, v16, &imageOut), v17 = 0, !imageOut))
  {
    v17 = AVLocalizedError(@"AVFoundationErrorDomain", -11801, 0);
  }

  CFRelease(v12);
  result = imageOut;
  if (a5)
  {
LABEL_19:
    if (!result)
    {
      *a5 = v17;
    }
  }

  return result;
}

- (id)_NSErrorForError:(int)a3
{
  if (a3 == 268435459)
  {
    return AVLocalizedError(@"AVFoundationErrorDomain", -11819, 0);
  }

  else
  {
    return AVLocalizedErrorWithUnderlyingOSStatus(a3, 0);
  }
}

- (BOOL)isDefunct
{
  v9 = 0;
  if ([[(AVAssetImageGenerator *)self asset] isDefunct])
  {
    v3 = 1;
  }

  else
  {
    generator = self->_priv->generator;
    v5 = *(CMBaseObjectGetVTable() + 8);
    if (*v5 < 5uLL)
    {
      v3 = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = v5[11];
      if (v6)
      {
        LOBYTE(v6) = v6(generator, &v9) == 0;
        v3 = v9;
      }

      else
      {
        v3 = 0;
      }
    }

    if (v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = 1;
    }

    if (!v3)
    {
      v3 = v7;
    }
  }

  return v3 == 1;
}

- (BOOL)_ensureFigAssetImageGeneratorAllowingSynchronousPropertyLoad:(BOOL)a3 error:(id *)a4
{
  v7 = [(AVAsset *)self->_priv->asset _figAsset];
  [(AVAssetImageGenerator *)self _optionsDictionary];
  priv = self->_priv;
  if (priv->generator)
  {
    return 1;
  }

  if (!a3 && [(AVAsset *)priv->asset statusOfValueForKey:@"streaming" error:a4]!= 2)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if ([(AVAsset *)self->_priv->asset _requiresInProcessOperation])
  {
    if ([(AVAsset *)self->_priv->asset _isStreaming])
    {
      v9 = FigStreamAssetImageGeneratorCreateFromAssetWithOptions();
    }

    else
    {
      v9 = FigAssetImageGeneratorCreateFromAssetWithOptions();
    }

    v11 = v9;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    RemoteFromAssetWithOptions = FigAssetImageGeneratorCreateRemoteFromAssetWithOptions();
    if (!RemoteFromAssetWithOptions)
    {
LABEL_12:
      v12 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      v13 = CFRetain(self->_priv->weakReference);
      v16 = OUTLINED_FUNCTION_0_1(v13, v14, self->_priv->weakReference, v15, *MEMORY[0x1E6970E38], self->_priv->generator);
      OUTLINED_FUNCTION_0_1(v16, v17, self->_priv->weakReference, v18, *MEMORY[0x1E6970E40], self->_priv->generator);
      [v12 addListenerWithWeakReference:self->_priv->weakReference callback:aig_serverDied name:*MEMORY[0x1E6970E48] object:self->_priv->generator flags:0];
      v19 = [v12 addListenerWithWeakReference:self->_priv->weakReference callback:aig_serverDied name:*MEMORY[0x1E69628A8] object:self->_priv->generator flags:0];
      OUTLINED_FUNCTION_0_1(v19, v20, self->_priv->weakReference, v21, *MEMORY[0x1E6970E50], self->_priv->generator);
      return 1;
    }

    v11 = RemoteFromAssetWithOptions;
  }

  if (!a4)
  {
    return 0;
  }

  v23 = [(AVAssetImageGenerator *)self _NSErrorForError:v11];
  result = 0;
  *a4 = v23;
  return result;
}

- (id)_videoSettingWithSize:(CGSize)a3 bitDepth:(unsigned int)a4
{
  cf = 0;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  LODWORD(v7) = 0;
  if (!FPSupport_CreateDestinationPixelBufferAttributes())
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:{@"AVVideoAllowWideColorKey", v7}];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

- (id)_makeAutoreleasedAssetReader
{
  v3 = [(AVAsset *)self->_priv->asset tracksWithMediaType:@"vide"];
  if ([(AVAssetImageGenerator *)self videoComposition])
  {
    [(AVVideoComposition *)[(AVAssetImageGenerator *)self videoComposition] renderSize];
    v5 = v4;
    v7 = v6;
  }

  else if ([(NSArray *)v3 count])
  {
    [OUTLINED_FUNCTION_1_1() naturalSize];
    v5 = v22;
    v7 = v23;
    if (self->_priv->appliesPreferredTrackTransform)
    {
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      v24 = OUTLINED_FUNCTION_1_1();
      if (v24)
      {
        [v24 preferredTransform];
      }

      v27 = v7 * 0.0 + 0.0 * v5;
      v7 = fabs(v27);
      v5 = v7;
    }
  }

  else
  {
    v7 = 0.0;
    v5 = 0.0;
  }

  [(AVAssetImageGenerator *)self _scaledSizeForRenderSize:v5, v7, v28, v29, v30];
  v9 = v8;
  v11 = v10;
  if (-[NSArray count](v3, "count") && [objc_msgSend(OUTLINED_FUNCTION_1_1() "formatDescriptions")])
  {
    MaximumBitsPerComponent = FigExportSettings_GetMaximumBitsPerComponent();
  }

  else
  {
    MaximumBitsPerComponent = 8;
  }

  v13 = [(AVAssetImageGenerator *)self _videoSettingWithSize:MaximumBitsPerComponent bitDepth:v9, v11];
  v14 = [AVAssetReader assetReaderWithAsset:self->_priv->asset error:0];
  if (v14)
  {
    if ([(AVAssetImageGenerator *)self videoComposition])
    {
      v15 = [(AVAsset *)self->_priv->asset tracksWithMediaType:@"auxv"];
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v3];
      v17 = v16;
      if (v15)
      {
        [v16 addObjectsFromArray:v15];
      }

      v18 = [AVAssetReaderVideoCompositionOutput assetReaderVideoCompositionOutputWithVideoTracks:v17 videoSettings:v13];
      if (v18)
      {
        v19 = v18;
        customVideoCompositorSession = self->_priv->customVideoCompositorSession;
        v21 = [(AVAssetImageGenerator *)self videoComposition];
        if (customVideoCompositorSession)
        {
          [v19 _setVideoComposition:v21 customVideoCompositorSession:self->_priv->customVideoCompositorSession];
        }

        else
        {
          [v19 setVideoComposition:v21];
        }

        goto LABEL_22;
      }
    }

    else if ([(NSArray *)v3 count])
    {
      v25 = [AVAssetReaderTrackOutput assetReaderTrackOutputWithTrack:OUTLINED_FUNCTION_1_1() outputSettings:v13];
      if (v25)
      {
        v19 = v25;
        [(AVAssetReaderTrackOutput *)v25 setAppliesPreferredTrackTransform:self->_priv->appliesPreferredTrackTransform];
LABEL_22:
        [(AVAssetReader *)v14 addOutput:v19];
      }
    }
  }

  return v14;
}

@end
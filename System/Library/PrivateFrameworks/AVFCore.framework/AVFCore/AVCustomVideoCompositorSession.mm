@interface AVCustomVideoCompositorSession
+ (AVCustomVideoCompositorSession)sessionWithVideoComposition:(id)a3 recyclingSession:(id)a4;
- (AVCustomVideoCompositorSession)initWithVideoComposition:(id)a3;
- (BOOL)_validateRequiredPixelBufferAttributesForRenderContext:(id)a3 andReturnException:(id *)a4;
- (BOOL)_validateSourcePixelBufferAttributes:(id)a3 andReturnException:(id *)a4;
- (BOOL)commitCustomVideoCompositorPropertiesAndReturnError:(id *)a3;
- (BOOL)supportsHDRSourceFrames;
- (BOOL)supportsWideColorSourceFrames;
- (OpaqueFigVideoCompositor)_copyFigVideoCompositor;
- (id)getAndClearClientError;
- (int)_compositionFrame:(OpaqueFigVideoCompositorFrame *)a3 atTime:(id *)a4 requiresRenderUsingSources:(id)a5 requiresSampleBuffersUsingSources:(id)a6 withInstruction:(void *)a7;
- (int)_customCompositorShouldAnticipateRenderingFromTime:(id *)a3 toTime:(id *)a4 andThenFromTime:(id *)a5 toTime:(id *)a6;
- (int)_customCompositorShouldCancelPendingFrames;
- (int)_customCompositorShouldPrerollForRenderingFromTime:(id *)a3 toTime:(id *)a4 andThenFromTime:(id *)a5 toTime:(id *)a6 requestID:(int64_t)a7;
- (void)_cleanupFigCallbacks;
- (void)_customCompositorFigPropertyDidChange;
- (void)_willDeallocOrFinalize;
- (void)compositionFrame:(OpaqueFigVideoCompositorFrame *)a3 didFinishWithComposedPixelBuffer:(__CVBuffer *)a4;
- (void)compositionFrame:(OpaqueFigVideoCompositorFrame *)a3 didFinishWithComposedTaggedBufferGroup:(OpaqueCMTaggedBufferGroup *)a4;
- (void)compositionFrame:(OpaqueFigVideoCompositorFrame *)a3 didFinishWithError:(id)a4;
- (void)compositionFrameDidCancel:(OpaqueFigVideoCompositorFrame *)a3;
- (void)dealloc;
- (void)detachVideoComposition;
- (void)setVideoComposition:(id)a3;
@end

@implementation AVCustomVideoCompositorSession

+ (AVCustomVideoCompositorSession)sessionWithVideoComposition:(id)a3 recyclingSession:(id)a4
{
  if (a4 && [a4 customVideoCompositor] && (objc_msgSend(a4, "customVideoCompositor"), objc_msgSend(a3, "customVideoCompositorClass"), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [a4 setVideoComposition:a3];
    return a4;
  }

  else
  {
    v7 = [[AVCustomVideoCompositorSession alloc] initWithVideoComposition:a3];

    return v7;
  }
}

- (AVCustomVideoCompositorSession)initWithVideoComposition:(id)a3
{
  v26.receiver = self;
  v26.super_class = AVCustomVideoCompositorSession;
  v4 = [(AVCustomVideoCompositorSession *)&v26 init];
  if (v4)
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    v5 = [a3 copy];
    v4->_videoComposition = v5;
    v6 = objc_alloc_init([(AVVideoComposition *)v5 customVideoCompositorClass]);
    v4->_clientCustomCompositor = v6;
    if (!v6)
    {
      goto LABEL_19;
    }

    v7 = *MEMORY[0x1E695E480];
    if (FigVideoCompositorCreateRemote())
    {
      goto LABEL_19;
    }

    clientCustomCompositor_low = LODWORD(v4->_clientCustomCompositor);
    valuePtr = clientCustomCompositor_low | ([objc_msgSend(MEMORY[0x1E696AE30] "processInfo")] << 32);
    v9 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
    FigBaseObject = FigVideoCompositorGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v12 = v11(FigBaseObject, *MEMORY[0x1E6973BC0], v9) == 0;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
      if (!v9)
      {
LABEL_10:
        if (v12)
        {
          v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v14 = dispatch_queue_create("com.apple.avcustomvideocompositorsession.clientcustomcompositorq", v13);
          v4->_clientCustomCompositorQ = v14;
          if (v14)
          {
            v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v16 = dispatch_queue_create("com.apple.avcustomvideocompositorsession.rendercontextq", v15);
            v4->_renderContextQ = v16;
            if (v16)
            {
              v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
              v18 = dispatch_queue_create("com.apple.avcustomvideocompositorsession.clienterrorq", v17);
              v4->_clientErrorQ = v18;
              if (v18)
              {
                v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                v20 = dispatch_queue_create("com.apple.avcustomvideocompositorsession.videocompositionq", v19);
                v4->_videoCompositionQ = v20;
                if (v20)
                {
                  v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                  v22 = dispatch_queue_create("com.apple.avcustomvideocompositorsession.finishedrequestq", v21);
                  v4->_finishedRequestQ = v22;
                  if (v22)
                  {
                    v23 = [[AVWeakReference alloc] initWithReferencedObject:v4];
                    v4->_weakSelf = v23;
                    if (v23)
                    {
                      if (![(AVCustomVideoCompositorSession *)v4 _setupFigCallbacks])
                      {
                        return v4;
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_19:

        return 0;
      }
    }

    CFRelease(v9);
    goto LABEL_10;
  }

  return v4;
}

- (BOOL)_validateSourcePixelBufferAttributes:(id)a3 andReturnException:(id *)a4
{
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [a3 objectForKey:*MEMORY[0x1E6966130]];
      if (v11)
      {
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![v12 count])
          {
            v13 = @"Value of kCVPixelBufferPixelFormatTypeKey in AVVideoCompositing sourcePixelBufferAttributes must contain at least one item. (AVVideoCompositing=%p)";
            goto LABEL_14;
          }

LABEL_11:
          v14 = 0;
          v15 = 1;
          if (!a4)
          {
            return v15;
          }

          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_11;
        }

        v13 = @"Value of kCVPixelBufferPixelFormatTypeKey in AVVideoCompositing sourcePixelBufferAttributes must be either an NSArray or an NSNumber. (AVVideoCompositing=%p)";
      }

      else
      {
        v13 = @"sourcePixelBufferAttributes must contain kCVPixelBufferPixelFormatTypeKey. (AVVideoCompositing=%p)";
      }
    }

    else
    {
      v13 = @"sourcePixelBufferAttributes must be an NSDictionary. (AVVideoCompositing=%p)";
    }
  }

  else
  {
    v13 = @"sourcePixelBufferAttributes must not be nil. (AVVideoCompositing=%p)";
  }

LABEL_14:
  v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self->_clientCustomCompositor userInfo:{sel_sourcePixelBufferAttributes, v13, a4, v4, v5, v6, v7, self->_clientCustomCompositor), 0}];
  v15 = 0;
  if (a4)
  {
LABEL_15:
    *a4 = v14;
  }

  return v15;
}

- (BOOL)_validateRequiredPixelBufferAttributesForRenderContext:(id)a3 andReturnException:(id *)a4
{
  if (a3)
  {
    v10 = [a3 objectForKey:*MEMORY[0x1E6966130]];
    if (v10)
    {
      v11 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v11 count])
        {
          v12 = @"Value of kCVPixelBufferPixelFormatTypeKey in requiredPixelBufferAttributesForRenderContext must contain at least one item. (AVVideoCompositing=%p)";
          goto LABEL_12;
        }

LABEL_9:
        v13 = 0;
        v14 = 1;
        if (!a4)
        {
          return v14;
        }

        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_9;
      }

      v12 = @"Value of kCVPixelBufferPixelFormatTypeKey in requiredPixelBufferAttributesForRenderContext must be either an NSArray or an NSNumber. (AVVideoCompositing=%p)";
    }

    else
    {
      v12 = @"requiredPixelBufferAttributesForRenderContext must contain kCVPixelBufferPixelFormatTypeKey. (AVVideoCompositing=%p)";
    }
  }

  else
  {
    v12 = @"requiredPixelBufferAttributesForRenderContext must not be nil. (AVVideoCompositing=%p)";
  }

LABEL_12:
  v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self->_clientCustomCompositor userInfo:{sel_requiredPixelBufferAttributesForRenderContext, v12, a4, v4, v5, v6, v7, self->_clientCustomCompositor), 0}];
  v14 = 0;
  if (a4)
  {
LABEL_13:
    *a4 = v13;
  }

  return v14;
}

- (BOOL)commitCustomVideoCompositorPropertiesAndReturnError:(id *)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v5 = [(AVVideoCompositing *)self->_clientCustomCompositor sourcePixelBufferAttributes];
  v6 = [(AVVideoCompositing *)self->_clientCustomCompositor requiredPixelBufferAttributesForRenderContext];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__40;
  v27 = __Block_byref_object_dispose__40;
  v28 = [-[AVVideoCompositing requiredPixelBufferAttributesForRenderContext](self->_clientCustomCompositor "requiredPixelBufferAttributesForRenderContext")];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__40;
  v21 = __Block_byref_object_dispose__40;
  v22 = 0;
  if (![(AVCustomVideoCompositorSession *)self _validateSourcePixelBufferAttributes:v5 andReturnException:&v29]|| ![(AVCustomVideoCompositorSession *)self _validateRequiredPixelBufferAttributesForRenderContext:v6 andReturnException:&v29])
  {
    goto LABEL_21;
  }

  FigBaseObject = FigVideoCompositorGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v8)
  {
    v9 = -12782;
LABEL_10:
    v10 = AVLocalizedErrorWithUnderlyingOSStatus(v9, 0);
    goto LABEL_22;
  }

  v9 = v8(FigBaseObject, *MEMORY[0x1E6973C18], v5);
  if (v9)
  {
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(AVVideoCompositing *)self->_clientCustomCompositor canConformColorOfSourceFrames]&& ![(AVCustomVideoCompositorSession *)self supportsHDRSourceFrames])
  {
    [(AVCustomVideoCompositorSession *)self supportsWideColorSourceFrames];
  }

  UInt32 = FigCFNumberCreateUInt32();
  v12 = FigVideoCompositorGetFigBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v9 = v13(v12, *MEMORY[0x1E6973C10], UInt32);
  }

  else
  {
    v9 = -12782;
  }

  if (UInt32)
  {
    CFRelease(UInt32);
  }

  if (v9)
  {
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    if ([(AVVideoCompositing *)self->_clientCustomCompositor supportsSourceTaggedBuffers])
    {
      v9 = FigVideoCompositorSetProperty(self->_figCustomCompositor, *MEMORY[0x1E6973C20], *MEMORY[0x1E695E4D0]);
      if (v9)
      {
        goto LABEL_10;
      }
    }
  }

  renderContextQ = self->_renderContextQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__AVCustomVideoCompositorSession_commitCustomVideoCompositorPropertiesAndReturnError___block_invoke;
  block[3] = &unk_1E74627B8;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v23;
  dispatch_sync(renderContextQ, block);
LABEL_21:
  v10 = 0;
LABEL_22:

  if (v29)
  {
    if (![objc_opt_class() conformsToProtocol:&unk_1F0B14370])
    {
      objc_exception_throw(v29);
    }

    [(AVVideoCompositing *)self->_clientCustomCompositor customVideoCompositor:self->_clientCustomCompositor wouldHaveTriggeredException:v29];
    v30 = *MEMORY[0x1E695E618];
    v31[0] = [v29 reason];
    v10 = AVLocalizedError(@"AVFoundationErrorDomain", -11841, [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1]);
  }

  if (a3 && v10)
  {
    *a3 = v10;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v10 == 0;
}

void *__86__AVCustomVideoCompositorSession_commitCustomVideoCompositorPropertiesAndReturnError___block_invoke(void *result)
{
  *(*(result[5] + 8) + 40) = *(result[4] + 24);
  *(result[4] + 24) = *(*(result[6] + 8) + 40);
  *(*(result[6] + 8) + 40) = 0;
  return result;
}

- (void)detachVideoComposition
{
  [(AVCustomVideoCompositorSession *)self _cleanupFigCallbacks];
  videoCompositionQ = self->_videoCompositionQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVCustomVideoCompositorSession_detachVideoComposition__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(videoCompositionQ, block);
}

- (void)_willDeallocOrFinalize
{
  [(AVCustomVideoCompositorSession *)self _cleanupFigCallbacks];
  renderContextQ = self->_renderContextQ;
  if (renderContextQ)
  {
    dispatch_release(renderContextQ);
  }

  clientErrorQ = self->_clientErrorQ;
  if (clientErrorQ)
  {
    dispatch_release(clientErrorQ);
  }

  clientCustomCompositorQ = self->_clientCustomCompositorQ;
  if (clientCustomCompositorQ)
  {
    dispatch_release(clientCustomCompositorQ);
  }

  videoCompositionQ = self->_videoCompositionQ;
  if (videoCompositionQ)
  {
    dispatch_release(videoCompositionQ);
  }

  finishedRequestQ = self->_finishedRequestQ;
  if (finishedRequestQ)
  {
    dispatch_release(finishedRequestQ);
  }

  figCustomCompositor = self->_figCustomCompositor;
  if (figCustomCompositor)
  {

    CFRelease(figCustomCompositor);
  }
}

- (void)dealloc
{
  [(AVCustomVideoCompositorSession *)self _willDeallocOrFinalize];

  v3.receiver = self;
  v3.super_class = AVCustomVideoCompositorSession;
  [(AVCustomVideoCompositorSession *)&v3 dealloc];
}

- (void)setVideoComposition:(id)a3
{
  videoCompositionQ = self->_videoCompositionQ;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__AVCustomVideoCompositorSession_setVideoComposition___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = a3;
  v4[5] = self;
  dispatch_sync(videoCompositionQ, v4);
}

uint64_t __54__AVCustomVideoCompositorSession_setVideoComposition___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 56);
  if (*(result + 32) != v1)
  {
    v2 = result;

    result = [*(v2 + 32) copy];
    *(*(v2 + 40) + 56) = result;
    *(*(v2 + 40) + 64) = 1;
  }

  return result;
}

- (OpaqueFigVideoCompositor)_copyFigVideoCompositor
{
  result = self->_figCustomCompositor;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

- (id)getAndClearClientError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__40;
  v10 = __Block_byref_object_dispose__40;
  v11 = 0;
  clientErrorQ = self->_clientErrorQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVCustomVideoCompositorSession_getAndClearClientError__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(clientErrorQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __56__AVCustomVideoCompositorSession_getAndClearClientError__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = *(*(a1 + 32) + 96);

  *(*(a1 + 32) + 96) = 0;
}

- (void)compositionFrame:(OpaqueFigVideoCompositorFrame *)a3 didFinishWithComposedPixelBuffer:(__CVBuffer *)a4
{
  CFRetain(a4);
  finishedRequestQ = self->_finishedRequestQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AVCustomVideoCompositorSession_compositionFrame_didFinishWithComposedPixelBuffer___block_invoke;
  block[3] = &unk_1E74625B0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(finishedRequestQ, block);
}

void __84__AVCustomVideoCompositorSession_compositionFrame_didFinishWithComposedPixelBuffer___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = a1[6];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v5(v3, v2, 0, v4);
  }

  v6 = a1[6];

  CFRelease(v6);
}

- (void)compositionFrame:(OpaqueFigVideoCompositorFrame *)a3 didFinishWithComposedTaggedBufferGroup:(OpaqueCMTaggedBufferGroup *)a4
{
  CFRetain(a4);
  finishedRequestQ = self->_finishedRequestQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__AVCustomVideoCompositorSession_compositionFrame_didFinishWithComposedTaggedBufferGroup___block_invoke;
  block[3] = &unk_1E74625B0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(finishedRequestQ, block);
}

void __90__AVCustomVideoCompositorSession_compositionFrame_didFinishWithComposedTaggedBufferGroup___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = a1[6];
  v5 = *(CMBaseObjectGetVTable() + 16);
  if (*v5 >= 2uLL)
  {
    v6 = v5[14];
    if (v6)
    {
      v6(v3, v2, 0, v4);
    }
  }

  v7 = a1[6];

  CFRelease(v7);
}

- (void)compositionFrame:(OpaqueFigVideoCompositorFrame *)a3 didFinishWithError:(id)a4
{
  clientErrorQ = self->_clientErrorQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AVCustomVideoCompositorSession_compositionFrame_didFinishWithError___block_invoke;
  block[3] = &unk_1E7460DF0;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(clientErrorQ, block);
  finishedRequestQ = self->_finishedRequestQ;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__AVCustomVideoCompositorSession_compositionFrame_didFinishWithError___block_invoke_2;
  v8[3] = &unk_1E7460FA8;
  v8[4] = self;
  v8[5] = a3;
  dispatch_async(finishedRequestQ, v8);
}

id *__70__AVCustomVideoCompositorSession_compositionFrame_didFinishWithError___block_invoke(id *result)
{
  if (!*(result[4] + 12))
  {
    v1 = result;
    result = result[5];
    *(v1[4] + 12) = result;
  }

  return result;
}

uint64_t __70__AVCustomVideoCompositorSession_compositionFrame_didFinishWithError___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 40);
  if (v6)
  {

    return v6(v2, v1, 4294951116, 0);
  }

  return result;
}

- (void)compositionFrameDidCancel:(OpaqueFigVideoCompositorFrame *)a3
{
  finishedRequestQ = self->_finishedRequestQ;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__AVCustomVideoCompositorSession_compositionFrameDidCancel___block_invoke;
  v4[3] = &unk_1E7460FA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(finishedRequestQ, v4);
}

uint64_t __60__AVCustomVideoCompositorSession_compositionFrameDidCancel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 40);
  if (v6)
  {

    return v6(v2, v1, 4294954788, 0);
  }

  return result;
}

- (BOOL)supportsWideColorSourceFrames
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__40;
  v11 = __Block_byref_object_dispose__40;
  v12 = 0;
  if ([(AVCustomVideoCompositorSession *)self supportsHDRSourceFrames]|| (videoCompositionQ = self->_videoCompositionQ, v6[0] = MEMORY[0x1E69E9820], v6[1] = 3221225472, v6[2] = __63__AVCustomVideoCompositorSession_supportsWideColorSourceFrames__block_invoke, v6[3] = &unk_1E7460E68, v6[4] = self, v6[5] = &v7, dispatch_sync(videoCompositionQ, v6), [AVCustomVideoCompositorSession _colorPropertiesAreSetInVideoComposition:v8[5]]))
  {
    v4 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [(AVVideoCompositing *)self->_clientCustomCompositor supportsWideColorSourceFrames];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

id __63__AVCustomVideoCompositorSession_supportsWideColorSourceFrames__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)supportsHDRSourceFrames
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  clientCustomCompositor = self->_clientCustomCompositor;

  return [(AVVideoCompositing *)clientCustomCompositor supportsHDRSourceFrames];
}

- (int)_compositionFrame:(OpaqueFigVideoCompositorFrame *)a3 atTime:(id *)a4 requiresRenderUsingSources:(id)a5 requiresSampleBuffersUsingSources:(id)a6 withInstruction:(void *)a7
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3052000000;
  v43 = __Block_byref_object_copy__40;
  v44 = __Block_byref_object_dispose__40;
  v45 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3052000000;
  v39[3] = __Block_byref_object_copy__40;
  v39[4] = __Block_byref_object_dispose__40;
  v39[5] = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3052000000;
  v34 = __Block_byref_object_copy__40;
  v35 = __Block_byref_object_dispose__40;
  v36 = 0;
  videoCompositionQ = self->_videoCompositionQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __188__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___compositionFrame_atTime_requiresRenderUsingSources_requiresSampleBuffersUsingSources_withInstruction___block_invoke;
  block[3] = &unk_1E7465D40;
  block[4] = self;
  block[5] = &v40;
  block[6] = v39;
  block[7] = v37;
  block[8] = &v31;
  block[9] = a7;
  dispatch_sync(videoCompositionQ, block);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__40;
  v28 = __Block_byref_object_dispose__40;
  v29 = 0;
  renderContextQ = self->_renderContextQ;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __188__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___compositionFrame_atTime_requiresRenderUsingSources_requiresSampleBuffersUsingSources_withInstruction___block_invoke_2;
  v23[3] = &unk_1E7462B88;
  v23[4] = self;
  v23[5] = v37;
  v23[6] = v39;
  v23[7] = &v24;
  dispatch_sync(renderContextQ, v23);
  if (v25[5])
  {
    v14 = [AVAsynchronousVideoCompositionRequest alloc];
    v15 = v25[5];
    v16 = v41[5];
    v17 = v32[5];
    v21 = *&a4->var0;
    var3 = a4->var3;
    [AVCustomVideoCompositorSession(AVCustomVideoCompositorSession_FigCallbackHandling) _compositionFrame:v20 atTime:[(AVAsynchronousVideoCompositionRequest *)v14 initUsingSession:self withRenderContext:v15 compositionFrame:a3 atTime:&v21 usingSources:a5 instruction:v16 withSampleBuffers:a6 lookupableSpatialVideoConfigurations:v17] requiresRenderUsingSources:? requiresSampleBuffersUsingSources:? withInstruction:?];
    v18 = 0;
  }

  else
  {
    v18 = -12504;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v40, 8);
  return v18;
}

uint64_t __188__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___compositionFrame_atTime_requiresRenderUsingSources_requiresSampleBuffersUsingSources_withInstruction___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = [*(a1[4] + 56) instructionForFigInstruction:a1[9]];
  *(*(a1[6] + 8) + 40) = *(a1[4] + 56);
  *(*(a1[7] + 8) + 24) = *(a1[4] + 64);
  *(a1[4] + 64) = 0;
  result = [*(*(a1[6] + 8) + 40) lookupableSpatialVideoConfigurations];
  *(*(a1[8] + 8) + 40) = result;
  return result;
}

id __188__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___compositionFrame_atTime_requiresRenderUsingSources_requiresSampleBuffersUsingSources_withInstruction___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 112);
  if (!v2 || *(*(a1[5] + 8) + 24) == 1)
  {
    v3 = -[AVVideoCompositionRenderContext initWithFigVideoCompositor:clientRequiredPixelBufferAttributes:videoComposition:pixelBufferPool:]([AVVideoCompositionRenderContext alloc], "initWithFigVideoCompositor:clientRequiredPixelBufferAttributes:videoComposition:pixelBufferPool:", *(a1[4] + 8), *(a1[4] + 24), *(*(a1[6] + 8) + 40), [*(a1[4] + 112) pixelBufferPool]);

    *(a1[4] + 112) = v3;
    v4 = a1[4];
    v5 = *(v4 + 72);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __188__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___compositionFrame_atTime_requiresRenderUsingSources_requiresSampleBuffersUsingSources_withInstruction___block_invoke_3;
    v7[3] = &unk_1E7460DF0;
    v7[4] = v4;
    v7[5] = v3;
    dispatch_async(v5, v7);
    v2 = *(a1[4] + 112);
  }

  result = v2;
  *(*(a1[7] + 8) + 40) = result;
  return result;
}

void __188__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___compositionFrame_atTime_requiresRenderUsingSources_requiresSampleBuffersUsingSources_withInstruction___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 80) startVideoCompositionRequest:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (int)_customCompositorShouldAnticipateRenderingFromTime:(id *)a3 toTime:(id *)a4 andThenFromTime:(id *)a5 toTime:(id *)a6
{
  clientCustomCompositorQ = self->_clientCustomCompositorQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __167__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___customCompositorShouldAnticipateRenderingFromTime_toTime_andThenFromTime_toTime___block_invoke;
  block[3] = &unk_1E7465D68;
  block[4] = self;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  dispatch_sync(clientCustomCompositorQ, block);
  return 0;
}

void __167__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___customCompositorShouldAnticipateRenderingFromTime_toTime_andThenFromTime_toTime___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [AVVideoCompositionRenderHint alloc];
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 80);
    v6 = *(a1 + 88);
    v7 = *(a1 + 104);
    v4 = *(a1 + 112);
    v5 = *(a1 + 128);
    v3 = [(AVVideoCompositionRenderHint *)v2 initWithStartCompositionTime:&v10 endCompositionTime:&v8 subsequentStartCompositionTime:&v6 subsequentEndCompositionTime:&v4];
    [*(*(a1 + 32) + 80) anticipateRenderingUsingHint:v3];
  }
}

- (int)_customCompositorShouldPrerollForRenderingFromTime:(id *)a3 toTime:(id *)a4 andThenFromTime:(id *)a5 toTime:(id *)a6 requestID:(int64_t)a7
{
  clientCustomCompositorQ = self->_clientCustomCompositorQ;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __177__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___customCompositorShouldPrerollForRenderingFromTime_toTime_andThenFromTime_toTime_requestID___block_invoke;
  v9[3] = &unk_1E7465D90;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v9[4] = self;
  v9[5] = a7;
  dispatch_sync(clientCustomCompositorQ, v9);
  return 0;
}

uint64_t __177__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___customCompositorShouldPrerollForRenderingFromTime_toTime_andThenFromTime_toTime_requestID___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [AVVideoCompositionRenderHint alloc];
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 88);
    v12 = *(a1 + 96);
    v13 = *(a1 + 112);
    v10 = *(a1 + 120);
    v11 = *(a1 + 136);
    v3 = [(AVVideoCompositionRenderHint *)v2 initWithStartCompositionTime:&v16 endCompositionTime:&v14 subsequentStartCompositionTime:&v12 subsequentEndCompositionTime:&v10];
    [*(*(a1 + 32) + 80) prerollForRenderingUsingHint:v3];
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 72);
  if (v9)
  {
    return v9(v4, v5, 0);
  }

  return result;
}

- (int)_customCompositorShouldCancelPendingFrames
{
  clientCustomCompositorQ = self->_clientCustomCompositorQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __128__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___customCompositorShouldCancelPendingFrames__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(clientCustomCompositorQ, block);
  return 0;
}

uint64_t __128__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___customCompositorShouldCancelPendingFrames__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 80);

    return [v3 cancelAllPendingVideoCompositionRequests];
  }

  return result;
}

- (void)_customCompositorFigPropertyDidChange
{
  renderContextQ = self->_renderContextQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___customCompositorFigPropertyDidChange__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(renderContextQ, block);
}

void __123__AVCustomVideoCompositorSession_AVCustomVideoCompositorSession_FigCallbackHandling___customCompositorFigPropertyDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (v3)
  {
    if (([v3 hasEqualPropertiesToFigVideoCompositor:*(v2 + 8)] & 1) == 0)
    {

      *(*(a1 + 32) + 112) = 0;
    }
  }
}

- (void)_cleanupFigCallbacks
{
  weakSelf = self->_weakSelf;
  if (weakSelf)
  {
    CFRelease(weakSelf);
    [+[AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:](AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:{CMNotificationCenterGetDefaultLocalCenter()), "removeListenerWithWeakReference:callback:name:object:", self->_weakSelf, _customCompositorPropertyChangedNotificationReceived, *MEMORY[0x1E6973BB0], self->_figCustomCompositor}];

    self->_weakSelf = 0;
  }

  if (self->_callbackContextToken)
  {
    [+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
    self->_callbackContextToken = 0;
  }

  if (self->_hasRegisteredFigCustomCompositorCallbacks)
  {
    figCustomCompositor = self->_figCustomCompositor;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v5)
    {
      v5(figCustomCompositor, 0, 0);
    }

    self->_hasRegisteredFigCustomCompositorCallbacks = 0;
  }
}

@end
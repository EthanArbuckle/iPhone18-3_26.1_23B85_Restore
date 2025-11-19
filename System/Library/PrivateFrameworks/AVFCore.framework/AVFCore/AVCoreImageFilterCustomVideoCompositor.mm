@interface AVCoreImageFilterCustomVideoCompositor
- (AVCoreImageFilterCustomVideoCompositor)init;
- (NSDictionary)requiredPixelBufferAttributesForRenderContext;
- (NSDictionary)sourcePixelBufferAttributes;
- (id)defaultCIContext;
- (void)_willDeallocOrFinalize;
- (void)cancelAllPendingVideoCompositionRequests;
- (void)dealloc;
- (void)renderContextChanged:(id)a3;
- (void)startVideoCompositionRequest:(id)a3;
@end

@implementation AVCoreImageFilterCustomVideoCompositor

- (AVCoreImageFilterCustomVideoCompositor)init
{
  v5.receiver = self;
  v5.super_class = AVCoreImageFilterCustomVideoCompositor;
  v2 = [(AVCoreImageFilterCustomVideoCompositor *)&v5 init];
  if (v2)
  {
    v2->_filteringRequestsInFlight = dispatch_group_create();
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_defaultCIContextThreadSafety = dispatch_queue_create("com.apple.AVStorylineCustomVideoCompositor._renderContextQ", v3);
  }

  return v2;
}

- (void)_willDeallocOrFinalize
{
  filteringRequestsInFlight = self->_filteringRequestsInFlight;
  if (filteringRequestsInFlight)
  {
    dispatch_release(filteringRequestsInFlight);
  }

  defaultCIContextThreadSafety = self->_defaultCIContextThreadSafety;
  if (defaultCIContextThreadSafety)
  {

    dispatch_release(defaultCIContextThreadSafety);
  }
}

- (void)dealloc
{
  [(AVCoreImageFilterCustomVideoCompositor *)self _willDeallocOrFinalize];

  v3.receiver = self;
  v3.super_class = AVCoreImageFilterCustomVideoCompositor;
  [(AVCoreImageFilterCustomVideoCompositor *)&v3 dealloc];
}

- (NSDictionary)sourcePixelBufferAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6966118];
  v4[0] = *MEMORY[0x1E6966130];
  v4[1] = v2;
  v5[0] = &unk_1F0AD3850;
  v5[1] = MEMORY[0x1E695E118];
  v4[2] = *MEMORY[0x1E69660D8];
  v5[2] = MEMORY[0x1E695E0F8];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (NSDictionary)requiredPixelBufferAttributesForRenderContext
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6966118];
  v4[0] = *MEMORY[0x1E6966130];
  v4[1] = v2;
  v5[0] = &unk_1F0AD3868;
  v5[1] = MEMORY[0x1E695E118];
  v4[2] = *MEMORY[0x1E69660D8];
  v5[2] = MEMORY[0x1E695E0F8];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (void)renderContextChanged:(id)a3
{
  defaultCIContextThreadSafety = self->_defaultCIContextThreadSafety;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVCoreImageFilterCustomVideoCompositor_renderContextChanged___block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(defaultCIContextThreadSafety, block);
}

- (id)defaultCIContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__38;
  v10 = __Block_byref_object_dispose__38;
  v11 = 0;
  defaultCIContextThreadSafety = self->_defaultCIContextThreadSafety;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVCoreImageFilterCustomVideoCompositor_defaultCIContext__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultCIContextThreadSafety, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __58__AVCoreImageFilterCustomVideoCompositor_defaultCIContext__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    *(*(a1 + 32) + 32) = objc_alloc_init(MEMORY[0x1E695F620]);
    v2 = *(*(a1 + 32) + 32);
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)startVideoCompositionRequest:(id)a3
{
  if ([(AVCoreImageFilterCustomVideoCompositor *)self shouldCancelAllRequests])
  {

    [a3 finishCancelledRequest];
  }

  else
  {
    v6 = [a3 videoCompositionInstruction];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Expecting video composition to contain only AVCoreImageFilterVideoCompositionInstruction", v7, v8, v9, v10, v11, v18), 0}];
      objc_exception_throw(v17);
    }

    v12 = [objc_msgSend(a3 "sourceTrackIDs")];
    if (v12)
    {
      v13 = [a3 sourceFrameByTrackID:{objc_msgSend(v12, "intValue")}];
    }

    else
    {
      v13 = 0;
    }

    dispatch_group_enter(self->_filteringRequestsInFlight);
    v14 = [AVAsynchronousCIImageFilteringRequest alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__AVCoreImageFilterCustomVideoCompositor_startVideoCompositionRequest___block_invoke;
    v21[3] = &unk_1E7465BE0;
    v21[4] = self;
    v19[4] = self;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__AVCoreImageFilterCustomVideoCompositor_startVideoCompositionRequest___block_invoke_2;
    v20[3] = &unk_1E7465C08;
    v20[4] = self;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__AVCoreImageFilterCustomVideoCompositor_startVideoCompositionRequest___block_invoke_3;
    v19[3] = &unk_1E7460C00;
    v15 = [(AVAsynchronousCIImageFilteringRequest *)v14 initUsingCompositingRequest:a3 sourceFrame:v13 cancellationTest:v21 defaultCIContextProvider:v20 completionHandler:v19];
    v16 = [v6 handler];
    (*(v16 + 16))(v16, v15);
  }
}

void __71__AVCoreImageFilterCustomVideoCompositor_startVideoCompositionRequest___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) filteringRequestsInFlight];

  dispatch_group_leave(v1);
}

- (void)cancelAllPendingVideoCompositionRequests
{
  [(AVCoreImageFilterCustomVideoCompositor *)self setShouldCancelAllRequests:1];
  dispatch_group_wait(self->_filteringRequestsInFlight, 0xFFFFFFFFFFFFFFFFLL);

  [(AVCoreImageFilterCustomVideoCompositor *)self setShouldCancelAllRequests:0];
}

@end
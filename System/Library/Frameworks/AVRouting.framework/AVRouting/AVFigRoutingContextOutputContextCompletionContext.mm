@interface AVFigRoutingContextOutputContextCompletionContext
- (AVFigRoutingContextOutputContextCompletionContext)initWithCompletionHandler:(id)handler outputDevices:(id)devices figRoutingContext:(OpaqueFigRoutingContext *)context;
- (id)_getFigEndpointTypeFromAVOutputDeviceType:(id)type;
- (void)dealloc;
- (void)reportModificationMetrics:(id)metrics;
@end

@implementation AVFigRoutingContextOutputContextCompletionContext

- (AVFigRoutingContextOutputContextCompletionContext)initWithCompletionHandler:(id)handler outputDevices:(id)devices figRoutingContext:(OpaqueFigRoutingContext *)context
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = AVFigRoutingContextOutputContextCompletionContext;
  v8 = [(AVFigRoutingContextOutputContextCompletionContext *)&v21 init];
  v8->_completionHandler = [handler copy];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [devices countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(devices);
        }

        [v9 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(*(&v17 + 1) + 8 * v13++), "deviceType"))}];
      }

      while (v11 != v13);
      v11 = [devices countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }

  v8->_devicesType = v9;

  if (context)
  {
    v14 = CFRetain(context);
  }

  else
  {
    v14 = 0;
  }

  v8->mFigRoutingContext = v14;
  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)dealloc
{
  mFigRoutingContext = self->mFigRoutingContext;
  if (mFigRoutingContext)
  {
    CFRelease(mFigRoutingContext);
  }

  v4.receiver = self;
  v4.super_class = AVFigRoutingContextOutputContextCompletionContext;
  [(AVFigRoutingContextOutputContextCompletionContext *)&v4 dealloc];
}

- (id)_getFigEndpointTypeFromAVOutputDeviceType:(id)type
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [type countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(type);
        }

        if (![*(*(&v9 + 1) + 8 * v7) integerValue])
        {
          result = *MEMORY[0x1E69626A8];
          goto LABEL_11;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [type countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)reportModificationMetrics:(id)metrics
{
  global_queue = dispatch_get_global_queue(-32768, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__AVFigRoutingContextOutputContextCompletionContext_reportModificationMetrics___block_invoke;
  v6[3] = &unk_1E794E9A8;
  v6[4] = metrics;
  v6[5] = self;
  dispatch_async(global_queue, v6);
}

void __79__AVFigRoutingContextOutputContextCompletionContext_reportModificationMetrics___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setFigEndpointType:{objc_msgSend(*(a1 + 40), "_getFigEndpointTypeFromAVOutputDeviceType:", objc_msgSend(*(a1 + 40), "devicesType"))}];
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v5 = *(*(v4 + 8) + 8);
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 16) + 232);
  if (v7)
  {
    v8 = *(VTable + 16) + 232;
    v7(v5, v3);
  }

  objc_autoreleasePoolPop(v2);
}

@end
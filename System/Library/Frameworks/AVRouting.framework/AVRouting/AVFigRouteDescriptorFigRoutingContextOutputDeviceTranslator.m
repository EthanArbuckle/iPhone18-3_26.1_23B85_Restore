@interface AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator
+ (id)sharedOutputDeviceTranslator;
- (AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator)init;
- (id)initForUsingRouteConfigUpdatedNotification:(BOOL)a3;
- (id)outputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)a3;
- (id)outputDevicesFromRoutingContext:(OpaqueFigRoutingContext *)a3;
- (id)predictedOutputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)a3;
- (void)addOutputDevice:(id)a3 withOptions:(__CFDictionary *)a4 toRoutingContext:(OpaqueFigRoutingContext *)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)removeOutputDevice:(id)a3 withOptions:(__CFDictionary *)a4 fromRoutingContext:(OpaqueFigRoutingContext *)a5 completionHandler:(id)a6;
- (void)setOutputDevice:(id)a3 withOptions:(__CFDictionary *)a4 onRoutingContext:(OpaqueFigRoutingContext *)a5 completionHandler:(id)a6;
- (void)setOutputDevices:(id)a3 withOptions:(__CFDictionary *)a4 onRoutingContext:(OpaqueFigRoutingContext *)a5 completionHandler:(id)a6;
@end

@implementation AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator;
  [(AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator *)&v2 dealloc];
}

+ (id)sharedOutputDeviceTranslator
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator)init
{
  v3 = AVOutputContextUsesRouteConfigUpdatedNotification();

  return [(AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator *)self initForUsingRouteConfigUpdatedNotification:v3];
}

- (id)outputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)a3
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(a3, &cf);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_4;
  }

  v7 = [AVOutputDevice outputDeviceWithRouteDescriptor:cf withRoutingContext:a3];
  v6 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v6);
  }

  return v7;
}

- (void)setOutputDevice:(id)a3 withOptions:(__CFDictionary *)a4 onRoutingContext:(OpaqueFigRoutingContext *)a5 completionHandler:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v11 = objc_alloc_init(AVRoutingEventWaiter);
  if (AVOutputDeviceGetFigRouteDescriptor(a3, &v21))
  {
    if (self->_useRoutingContextCallbacks)
    {
      if (a3)
      {
        v22[0] = a3;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      }

      else
      {
        v12 = MEMORY[0x1E695E0F0];
      }

      v14 = [[AVFigRoutingContextOutputContextCompletionContext alloc] initWithCompletionHandler:a6 outputDevices:v12 figRoutingContext:a5];
      v15 = v21;
      VTable = CMBaseObjectGetVTable();
      v17 = *(*(VTable + 16) + 216);
      if (v17)
      {
        v18 = *(VTable + 16) + 216;
        v17(a5, v15, a4, AVFigRoutingContextModificationCallback_0, v14);
      }
    }

    else
    {
      v13 = AVMakeSelectRouteDescriptorOperation(a5, v21, a4, self->_useRouteConfigUpdatedNotification, 0);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __126__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_setOutputDevice_withOptions_onRoutingContext_completionHandler___block_invoke;
      v20[3] = &unk_1E794E958;
      v20[5] = v11;
      v20[6] = a6;
      v20[4] = v13;
      [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v13 setCompletionBlock:v20];
      [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v13 start];
      if ([(AVRoutingOperation *)v13 isFinished])
      {
        [(AVRoutingEventWaiter *)v11 waitUntilEventIsCompleted];
      }
    }
  }

  else
  {
    [AVFigEndpointFigRoutingContextOutputDeviceTranslator setOutputDevice:withOptions:onRoutingContext:completionHandler:];
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __126__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_setOutputDevice_withOptions_onRoutingContext_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 32) result]);
  v2 = *(a1 + 40);

  return [v2 markEventAsCompleted];
}

- (void)setOutputDevices:(id)a3 withOptions:(__CFDictionary *)a4 onRoutingContext:(OpaqueFigRoutingContext *)a5 completionHandler:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [a3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(a3);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        value = 0;
        if (!AVOutputDeviceGetFigRouteDescriptor(v16, &value))
        {
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_18;
        }

        if (value)
        {
          CFArrayAppendValue(Mutable, value);
        }
      }

      v13 = [a3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (Mutable)
  {
    if (self->_useRoutingContextCallbacks)
    {
      v17 = [[AVFigRoutingContextOutputContextCompletionContext alloc] initWithCompletionHandler:a6 outputDevices:a3 figRoutingContext:a5];
      VTable = CMBaseObjectGetVTable();
      v19 = *(*(VTable + 16) + 224);
      if (v19)
      {
        v20 = *(VTable + 16) + 224;
        v19(a5, Mutable, a4, AVFigRoutingContextModificationCallback_0, v17);
      }
    }

    else
    {
      v21 = AVMakeSelectRouteDescriptorsOperation(a5, Mutable, a4, self->_useRouteConfigUpdatedNotification);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __127__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_setOutputDevices_withOptions_onRoutingContext_completionHandler___block_invoke;
      v23[3] = &unk_1E794EA68;
      v23[4] = v21;
      v23[5] = a6;
      [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v21 setCompletionBlock:v23];
      [+[AVRoutingGlobalOperationQueue defaultQueue](AVRoutingGlobalOperationQueue "defaultQueue")];
    }

    CFRelease(Mutable);
  }

  else
  {
LABEL_18:
    [AVFigEndpointFigRoutingContextOutputDeviceTranslator setOutputDevice:withOptions:onRoutingContext:completionHandler:];
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __127__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_setOutputDevices_withOptions_onRoutingContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __126__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_addOutputDevice_withOptions_toRoutingContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)removeOutputDevice:(id)a3 withOptions:(__CFDictionary *)a4 fromRoutingContext:(OpaqueFigRoutingContext *)a5 completionHandler:(id)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (AVOutputDeviceGetFigRouteDescriptor(a3, &v20) && v20)
  {
    if (self->_useRoutingContextCallbacks)
    {
      if (a3)
      {
        v21[0] = a3;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }

      v13 = [[AVFigRoutingContextOutputContextCompletionContext alloc] initWithCompletionHandler:a6 outputDevices:v11 figRoutingContext:a5];
      v14 = v20;
      VTable = CMBaseObjectGetVTable();
      v16 = *(*(VTable + 16) + 208);
      if (v16)
      {
        v17 = *(VTable + 16) + 208;
        v16(a5, v14, a4, AVFigRoutingContextModificationCallback_0, v13);
      }
    }

    else
    {
      v12 = AVMakeRemoveRouteDescriptorOperation(a5, v20, a4, self->_useRouteConfigUpdatedNotification);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __131__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_removeOutputDevice_withOptions_fromRoutingContext_completionHandler___block_invoke;
      v19[3] = &unk_1E794EA68;
      v19[4] = v12;
      v19[5] = a6;
      [(AVRoutingRouteConfigUpdatedFigRoutingContextRouteChangeOperation *)v12 setCompletionBlock:v19];
      [+[AVRoutingGlobalOperationQueue defaultQueue](AVRoutingGlobalOperationQueue "defaultQueue")];
    }
  }

  else
  {
    [AVFigEndpointFigRoutingContextOutputDeviceTranslator setOutputDevice:withOptions:onRoutingContext:completionHandler:];
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __131__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_removeOutputDevice_withOptions_fromRoutingContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) result];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (id)predictedOutputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)a3
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(a3, 0, &cf);
  v6 = cf;
  if (v5)
  {
    v7 = 0;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_4;
  }

  v7 = [AVOutputDevice outputDeviceWithRouteDescriptor:cf withRoutingContext:a3];
  v6 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v6);
  }

  return v7;
}

- (id)initForUsingRouteConfigUpdatedNotification:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator;
  v4 = [(AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_useRouteConfigUpdatedNotification = a3;
    v4->_useRoutingContextCallbacks = AVOutputContextUsesRoutingContextCallbacks();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)outputDevicesFromRoutingContext:(OpaqueFigRoutingContext *)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  theArray = 0;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 64);
  if (v6)
  {
    v7 = *(VTable + 16) + 64;
    if (!v6(a3, &theArray))
    {
      for (i = 0; ; ++i)
      {
        Count = theArray;
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        if (i >= Count)
        {
          break;
        }

        v10 = [AVOutputDevice outputDeviceWithRouteDescriptor:CFArrayGetValueAtIndex(theArray withRoutingContext:i), a3];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v4;
}

- (void)addOutputDevice:(id)a3 withOptions:(__CFDictionary *)a4 toRoutingContext:(OpaqueFigRoutingContext *)a5 completionHandler:(id)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28 = 0;
  FigRouteDescriptor = AVOutputDeviceGetFigRouteDescriptor(a3, &v28);
  v12 = FigRouteDescriptor;
  if (FigRouteDescriptor && v28)
  {
    if (self->_useRoutingContextCallbacks)
    {
      if (a3)
      {
        v29[0] = a3;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      }

      else
      {
        v13 = MEMORY[0x1E695E0F0];
      }

      v16 = [[AVFigRoutingContextOutputContextCompletionContext alloc] initWithCompletionHandler:a6 outputDevices:v13 figRoutingContext:a5];
      v17 = v28;
      v18 = *(CMBaseObjectGetVTable() + 16);
      if (*(v18 + 88))
      {
        (*(v18 + 200))(a5, v17, a4, AVFigRoutingContextModificationCallback_0, v16);
      }
    }

    else
    {
      v14 = AVMakeAddRouteDescriptorOperation(a5, v28, a4, self->_useRouteConfigUpdatedNotification);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_3();
      v24 = __126__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_addOutputDevice_withOptions_toRoutingContext_completionHandler___block_invoke;
      v25 = &unk_1E794EA68;
      v26 = v15;
      v27 = a6;
      [v15 setCompletionBlock:v23];
      [+[AVRoutingGlobalOperationQueue defaultQueue](AVRoutingGlobalOperationQueue "defaultQueue")];
    }
  }

  if ((v12 & 1) == 0)
  {
    v19 = objc_alloc_init(AVOutputContextDestinationChange);
    [(AVOutputContextDestinationChange *)v19 markAsFailed];
    v20 = OUTLINED_FUNCTION_1_0();
    v21(v20);
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end
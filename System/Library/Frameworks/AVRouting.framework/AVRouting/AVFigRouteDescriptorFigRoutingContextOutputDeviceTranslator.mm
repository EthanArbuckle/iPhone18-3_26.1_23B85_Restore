@interface AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator
+ (id)sharedOutputDeviceTranslator;
- (AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator)init;
- (id)initForUsingRouteConfigUpdatedNotification:(BOOL)notification;
- (id)outputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)context;
- (id)outputDevicesFromRoutingContext:(OpaqueFigRoutingContext *)context;
- (id)predictedOutputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)context;
- (void)addOutputDevice:(id)device withOptions:(__CFDictionary *)options toRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler;
- (void)dealloc;
- (void)removeOutputDevice:(id)device withOptions:(__CFDictionary *)options fromRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler;
- (void)setOutputDevice:(id)device withOptions:(__CFDictionary *)options onRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler;
- (void)setOutputDevices:(id)devices withOptions:(__CFDictionary *)options onRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler;
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
  v2 = objc_alloc_init(self);

  return v2;
}

- (AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator)init
{
  v3 = AVOutputContextUsesRouteConfigUpdatedNotification();

  return [(AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator *)self initForUsingRouteConfigUpdatedNotification:v3];
}

- (id)outputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)context
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(context, &cf);
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

  v7 = [AVOutputDevice outputDeviceWithRouteDescriptor:cf withRoutingContext:context];
  v6 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v6);
  }

  return v7;
}

- (void)setOutputDevice:(id)device withOptions:(__CFDictionary *)options onRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v11 = objc_alloc_init(AVRoutingEventWaiter);
  if (AVOutputDeviceGetFigRouteDescriptor(device, &v21))
  {
    if (self->_useRoutingContextCallbacks)
    {
      if (device)
      {
        v22[0] = device;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      }

      else
      {
        v12 = MEMORY[0x1E695E0F0];
      }

      v14 = [[AVFigRoutingContextOutputContextCompletionContext alloc] initWithCompletionHandler:handler outputDevices:v12 figRoutingContext:context];
      v15 = v21;
      VTable = CMBaseObjectGetVTable();
      v17 = *(*(VTable + 16) + 216);
      if (v17)
      {
        v18 = *(VTable + 16) + 216;
        v17(context, v15, options, AVFigRoutingContextModificationCallback_0, v14);
      }
    }

    else
    {
      v13 = AVMakeSelectRouteDescriptorOperation(context, v21, options, self->_useRouteConfigUpdatedNotification, 0);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __126__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_setOutputDevice_withOptions_onRoutingContext_completionHandler___block_invoke;
      v20[3] = &unk_1E794E958;
      v20[5] = v11;
      v20[6] = handler;
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

- (void)setOutputDevices:(id)devices withOptions:(__CFDictionary *)options onRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [devices countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(devices);
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

      v13 = [devices countByEnumeratingWithState:&v25 objects:v29 count:16];
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
      v17 = [[AVFigRoutingContextOutputContextCompletionContext alloc] initWithCompletionHandler:handler outputDevices:devices figRoutingContext:context];
      VTable = CMBaseObjectGetVTable();
      v19 = *(*(VTable + 16) + 224);
      if (v19)
      {
        v20 = *(VTable + 16) + 224;
        v19(context, Mutable, options, AVFigRoutingContextModificationCallback_0, v17);
      }
    }

    else
    {
      v21 = AVMakeSelectRouteDescriptorsOperation(context, Mutable, options, self->_useRouteConfigUpdatedNotification);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __127__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_setOutputDevices_withOptions_onRoutingContext_completionHandler___block_invoke;
      v23[3] = &unk_1E794EA68;
      v23[4] = v21;
      v23[5] = handler;
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

- (void)removeOutputDevice:(id)device withOptions:(__CFDictionary *)options fromRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (AVOutputDeviceGetFigRouteDescriptor(device, &v20) && v20)
  {
    if (self->_useRoutingContextCallbacks)
    {
      if (device)
      {
        v21[0] = device;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      }

      else
      {
        v11 = MEMORY[0x1E695E0F0];
      }

      v13 = [[AVFigRoutingContextOutputContextCompletionContext alloc] initWithCompletionHandler:handler outputDevices:v11 figRoutingContext:context];
      v14 = v20;
      VTable = CMBaseObjectGetVTable();
      v16 = *(*(VTable + 16) + 208);
      if (v16)
      {
        v17 = *(VTable + 16) + 208;
        v16(context, v14, options, AVFigRoutingContextModificationCallback_0, v13);
      }
    }

    else
    {
      v12 = AVMakeRemoveRouteDescriptorOperation(context, v20, options, self->_useRouteConfigUpdatedNotification);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __131__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_removeOutputDevice_withOptions_fromRoutingContext_completionHandler___block_invoke;
      v19[3] = &unk_1E794EA68;
      v19[4] = v12;
      v19[5] = handler;
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

- (id)predictedOutputDeviceFromRoutingContext:(OpaqueFigRoutingContext *)context
{
  cf = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v4)
  {
    return 0;
  }

  v5 = v4(context, 0, &cf);
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

  v7 = [AVOutputDevice outputDeviceWithRouteDescriptor:cf withRoutingContext:context];
  v6 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v6);
  }

  return v7;
}

- (id)initForUsingRouteConfigUpdatedNotification:(BOOL)notification
{
  v8.receiver = self;
  v8.super_class = AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator;
  v4 = [(AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_useRouteConfigUpdatedNotification = notification;
    v4->_useRoutingContextCallbacks = AVOutputContextUsesRoutingContextCallbacks();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)outputDevicesFromRoutingContext:(OpaqueFigRoutingContext *)context
{
  array = [MEMORY[0x1E695DF70] array];
  theArray = 0;
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 64);
  if (v6)
  {
    v7 = *(VTable + 16) + 64;
    if (!v6(context, &theArray))
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

        context = [AVOutputDevice outputDeviceWithRouteDescriptor:CFArrayGetValueAtIndex(theArray withRoutingContext:i), context];
        if (context)
        {
          [array addObject:context];
        }
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return array;
}

- (void)addOutputDevice:(id)device withOptions:(__CFDictionary *)options toRoutingContext:(OpaqueFigRoutingContext *)context completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28 = 0;
  FigRouteDescriptor = AVOutputDeviceGetFigRouteDescriptor(device, &v28);
  v12 = FigRouteDescriptor;
  if (FigRouteDescriptor && v28)
  {
    if (self->_useRoutingContextCallbacks)
    {
      if (device)
      {
        v29[0] = device;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      }

      else
      {
        v13 = MEMORY[0x1E695E0F0];
      }

      v16 = [[AVFigRoutingContextOutputContextCompletionContext alloc] initWithCompletionHandler:handler outputDevices:v13 figRoutingContext:context];
      v17 = v28;
      v18 = *(CMBaseObjectGetVTable() + 16);
      if (*(v18 + 88))
      {
        (*(v18 + 200))(context, v17, options, AVFigRoutingContextModificationCallback_0, v16);
      }
    }

    else
    {
      v14 = AVMakeAddRouteDescriptorOperation(context, v28, options, self->_useRouteConfigUpdatedNotification);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_3();
      v24 = __126__AVFigRouteDescriptorFigRoutingContextOutputDeviceTranslator_addOutputDevice_withOptions_toRoutingContext_completionHandler___block_invoke;
      v25 = &unk_1E794EA68;
      v26 = v15;
      handlerCopy = handler;
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
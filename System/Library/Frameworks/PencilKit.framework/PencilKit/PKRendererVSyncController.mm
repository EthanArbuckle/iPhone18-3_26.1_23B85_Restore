@interface PKRendererVSyncController
+ (id)sharedController;
- (PKRendererVSyncController)init;
- (uint64_t)isActive;
- (void)addRendererController:(uint64_t)a1;
- (void)removeRendererController:(uint64_t)a1;
@end

@implementation PKRendererVSyncController

- (PKRendererVSyncController)init
{
  v14.receiver = self;
  v14.super_class = PKRendererVSyncController;
  v2 = [(PKRendererVSyncController *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.pencilkit.vsync", v3);
    vSyncQueue = v2->_vSyncQueue;
    v2->_vSyncQueue = v4;

    v6 = dispatch_queue_create("com.apple.pencilkit.vsync-runloop", v3);
    runloopQueue = v2->_runloopQueue;
    v2->_runloopQueue = v6;

    v8 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    rendererControllers = v2->_rendererControllers;
    v2->_rendererControllers = v8;

    mach_timebase_info(&timebase_info);
    v10 = v2->_runloopQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__PKRendererVSyncController_init__block_invoke;
    block[3] = &unk_1E82D6388;
    v13 = v2;
    dispatch_async(v10, block);
  }

  return v2;
}

void __33__PKRendererVSyncController_init__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = (v1 + 32);
    if (!*(v1 + 32))
    {
      v3 = os_log_create("com.apple.pencilkit", "Sketching");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = @"primary";
        _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_INFO, "Opening mobile framebuffer by name: %@", buf, 0xCu);
      }

      IOMobileFramebufferOpenByName();
      if (*v2)
      {
        v4 = IOMobileFramebufferSupportedFrameInfo();
        v5 = v4;
        if (v4 && (v6 = *v4, *v5))
        {
          v7 = v5 + 1;
          while (!strcmp(v6, "Presentation_time"))
          {
            v8 = *v7++;
            v6 = v8;
            if (!v8)
            {
              goto LABEL_11;
            }
          }

          RunLoopSource = IOMobileFramebufferGetRunLoopSource();
          if (RunLoopSource)
          {
            Current = CFRunLoopGetCurrent();
            CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x1E695E8D0]);
            IOMobileFramebufferChangeFrameInfo();
            IOMobileFramebufferFrameInfo();
            goto LABEL_17;
          }

          v9 = os_log_create("com.apple.pencilkit", "Sketching");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_ERROR, "Unable to get runloop source for primary mobile framebuffer", buf, 2u);
          }
        }

        else
        {
LABEL_11:
          v9 = os_log_create("com.apple.pencilkit", "Sketching");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_ERROR, "Must be able to read frame info Presentation_time.", buf, 2u);
          }
        }

        *v2 = 0;
        goto LABEL_17;
      }

      v10 = os_log_create("com.apple.pencilkit", "Sketching");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "Unable to open primary mobile framebuffer", buf, 2u);
      }
    }
  }

LABEL_17:

  CFRunLoopRun();
}

+ (id)sharedController
{
  objc_opt_self();
  if (qword_1ED6A5088 != -1)
  {
    dispatch_once(&qword_1ED6A5088, &__block_literal_global_27);
  }

  v0 = _MergedGlobals_131;

  return v0;
}

void __45__PKRendererVSyncController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(PKRendererVSyncController);
  v1 = _MergedGlobals_131;
  _MergedGlobals_131 = v0;
}

- (uint64_t)isActive
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37__PKRendererVSyncController_isActive__block_invoke;
    v4[3] = &unk_1E82D6868;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)addRendererController:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__PKRendererVSyncController_addRendererController___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)removeRendererController:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__PKRendererVSyncController_removeRendererController___block_invoke;
    v6[3] = &unk_1E82D6890;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

void __67__PKRendererVSyncController_signalVSyncSemaphore_presentationTime___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) signalVSyncSemaphore:*(a1 + 48) presentationTime:{*(a1 + 40), v6}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

@end
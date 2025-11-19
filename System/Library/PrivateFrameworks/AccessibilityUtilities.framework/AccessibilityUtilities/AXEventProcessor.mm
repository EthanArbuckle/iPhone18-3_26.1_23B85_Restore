@interface AXEventProcessor
- (AXEventProcessor)init;
- (AXEventProcessor)initWithHIDTapIdentifier:(id)a3 HIDEventTapPriority:(int)a4 shouldMonitorHIDEventsOnly:(BOOL)a5 systemEventTapIdentifier:(id)a6 systemEventTapPriority:(int)a7;
- (void)_installHIDEventFilter;
- (void)_installSystemEventFilter;
- (void)_runHIDEventReceiveThread;
- (void)_uninstallHIDEventFilter;
- (void)_uninstallSystemEventFilter;
- (void)beginHandlingHIDEventsForReason:(id)a3;
- (void)beginHandlingSystemEventsForReason:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)endHandlingHIDEventsForReason:(id)a3;
- (void)endHandlingSystemEventsForReason:(id)a3;
- (void)raiseHIDEventTapPriorityToMaximum;
- (void)raiseSystemEventTapPriorityToMaximum;
- (void)restoreHIDEventTapPriorityToDefault;
- (void)restoreSystemEventTapPriorityToDefault;
- (void)setIgnoreEventsForContinuitySession:(BOOL)a3;
@end

@implementation AXEventProcessor

- (AXEventProcessor)init
{
  [MEMORY[0x1E695DF30] raise:@"NotSupported" format:@"Use initWithHIDTapIdentifier:HIDEventTapPriority:systemEventTapIdentifier:systemEventTapPriority:"];

  return [(AXEventProcessor *)self initWithHIDTapIdentifier:0 HIDEventTapPriority:0 shouldMonitorHIDEventsOnly:0 systemEventTapIdentifier:0 systemEventTapPriority:0];
}

- (AXEventProcessor)initWithHIDTapIdentifier:(id)a3 HIDEventTapPriority:(int)a4 shouldMonitorHIDEventsOnly:(BOOL)a5 systemEventTapIdentifier:(id)a6 systemEventTapPriority:(int)a7
{
  v7 = *&a7;
  v9 = a5;
  v10 = *&a4;
  v12 = a3;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = AXEventProcessor;
  v14 = [(AXEventProcessor *)&v31 init];
  v15 = v14;
  if (v14)
  {
    [(AXEventProcessor *)v14 setHIDEventTapIdentifier:v12];
    [(AXEventProcessor *)v15 setHIDEventTapPriority:v10];
    [(AXEventProcessor *)v15 setHIDEventFilterMask:1];
    [(AXEventProcessor *)v15 setSystemEventTapIdentifier:v13];
    [(AXEventProcessor *)v15 setSystemEventTapPriority:v7];
    [(AXEventProcessor *)v15 setShouldMonitorHIDEventsOnly:v9];
    v16 = [MEMORY[0x1E695DF70] array];
    [(AXEventProcessor *)v15 setHidActualEventTapEnabledReasons:v16];

    v17 = [MEMORY[0x1E695DF70] array];
    [(AXEventProcessor *)v15 setSystemActualEventTapEnabledReasons:v17];

    IsBackboard = AXProcessIsBackboard();
    if (v13 && (IsBackboard & 1) == 0)
    {
      _AXAssert();
    }

    if (v12)
    {
      v15->_shouldRunHIDReceiveThreadRunloop = 1;
      objc_initWeak(&location, v15);
      v19 = objc_alloc(MEMORY[0x1E696AF00]);
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __140__AXEventProcessor_initWithHIDTapIdentifier_HIDEventTapPriority_shouldMonitorHIDEventsOnly_systemEventTapIdentifier_systemEventTapPriority___block_invoke;
      v28 = &unk_1E71EA778;
      objc_copyWeak(&v29, &location);
      v20 = [v19 initWithBlock:&v25];
      HIDEventReceiveThread = v15->_HIDEventReceiveThread;
      v15->_HIDEventReceiveThread = v20;

      v22 = v15->_HIDEventReceiveThread;
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-HIDEventReceive-%p", v12, v15, v25, v26, v27, v28];
      [(NSThread *)v22 setName:v23];

      [(NSThread *)v15->_HIDEventReceiveThread start];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }

  return v15;
}

void __140__AXEventProcessor_initWithHIDTapIdentifier_HIDEventTapPriority_shouldMonitorHIDEventsOnly_systemEventTapIdentifier_systemEventTapPriority___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runHIDEventReceiveThread];
}

- (void)dealloc
{
  if (self->_shouldRunHIDReceiveThreadRunloop)
  {
    _AXAssert();
  }

  v3.receiver = self;
  v3.super_class = AXEventProcessor;
  [(AXEventProcessor *)&v3 dealloc];
}

- (void)cleanup
{
  if (self->_HIDEventReceiveThread && self->_shouldRunHIDReceiveThreadRunloop)
  {
    [AXEventProcessor performSelector:"performSelector:onThread:withObject:waitUntilDone:" onThread:sel__uninstallHIDEventFilter withObject:? waitUntilDone:?];
    self->_shouldRunHIDReceiveThreadRunloop = 0;
    [(NSThread *)self->_HIDEventReceiveThread cancel];
    HIDEventReceiveThread = self->_HIDEventReceiveThread;
    self->_HIDEventReceiveThread = 0;
  }
}

- (void)beginHandlingHIDEventsForReason:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AXEventProcessor *)self HIDEventTapIdentifier];

  if (v5)
  {
    v6 = [(AXEventProcessor *)self hidActualEventTapEnabledReasons];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      v8 = AXLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "EventProcessor: This reason already exists among reasons for tapping HID events. Unbalanced. %@", &v9, 0xCu);
      }
    }

    else
    {
      v8 = [(AXEventProcessor *)self hidActualEventTapEnabledReasons];
      [v8 addObject:v4];
    }

    if (![(AXEventProcessor *)self isHandlingHIDEvents])
    {
      [(AXEventProcessor *)self setHandlingHIDEvents:1];
      [(AXEventProcessor *)self performSelector:sel__installHIDEventFilter onThread:self->_HIDEventReceiveThread withObject:0 waitUntilDone:0];
    }
  }

  else
  {
    _AXAssert();
  }
}

- (void)endHandlingHIDEventsForReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AXEventProcessor *)self hidActualEventTapEnabledReasons];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(AXEventProcessor *)self hidActualEventTapEnabledReasons];
    [v7 removeObject:v4];
  }

  else
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_DEFAULT, "EventProcessor: This reason does not exist among reasons for tapping HID events. Unbalanced. %@", &v10, 0xCu);
    }
  }

  v8 = [(AXEventProcessor *)self hidActualEventTapEnabledReasons];
  if ([v8 count])
  {
  }

  else
  {
    v9 = [(AXEventProcessor *)self isHandlingHIDEvents];

    if (v9)
    {
      [(AXEventProcessor *)self setHandlingHIDEvents:0];
      [(AXEventProcessor *)self performSelector:sel__uninstallHIDEventFilter onThread:self->_HIDEventReceiveThread withObject:0 waitUntilDone:0];
    }
  }
}

- (void)raiseHIDEventTapPriorityToMaximum
{
  v3 = [(AXEventProcessor *)self HIDEventTapIdentifier];

  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__AXEventProcessor_raiseHIDEventTapPriorityToMaximum__block_invoke;
    block[3] = &unk_1E71E9B98;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __53__AXEventProcessor_raiseHIDEventTapPriorityToMaximum__block_invoke(uint64_t a1)
{
  v3 = +[AXEventTapManager sharedManager];
  v2 = [*(a1 + 32) HIDEventTapIdentifier];
  [v3 setEventTapPriority:v2 priority:90];
}

- (void)restoreHIDEventTapPriorityToDefault
{
  v3 = [(AXEventProcessor *)self HIDEventTapIdentifier];

  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AXEventProcessor_restoreHIDEventTapPriorityToDefault__block_invoke;
    block[3] = &unk_1E71E9B98;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __55__AXEventProcessor_restoreHIDEventTapPriorityToDefault__block_invoke(uint64_t a1)
{
  v3 = +[AXEventTapManager sharedManager];
  v2 = [*(a1 + 32) HIDEventTapIdentifier];
  [v3 setEventTapPriority:v2 priority:{objc_msgSend(*(a1 + 32), "HIDEventTapPriority")}];
}

- (void)beginHandlingSystemEventsForReason:(id)a3
{
  v4 = a3;
  v5 = [(AXEventProcessor *)self systemEventTapIdentifier];

  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__AXEventProcessor_beginHandlingSystemEventsForReason___block_invoke;
    v6[3] = &unk_1E71EA128;
    v6[4] = self;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }

  else
  {
    _AXAssert();
  }
}

uint64_t __55__AXEventProcessor_beginHandlingSystemEventsForReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemActualEventTapEnabledReasons];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v8 = @"This reason already exists among reasons for tapping system events. Unbalanced. Could be trouble, but might be ok. %@";
    v9 = *(a1 + 40);
    LOBYTE(v7) = 1;
    _AXLogWithFacility();
  }

  else
  {
    v4 = [*(a1 + 32) systemActualEventTapEnabledReasons];
    [v4 addObject:*(a1 + 40)];
  }

  result = [*(a1 + 32) isHandlingSystemEvents];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setHandlingSystemEvents:1];
    v6 = *(a1 + 32);

    return [v6 _installSystemEventFilter];
  }

  return result;
}

- (void)endHandlingSystemEventsForReason:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AXEventProcessor_endHandlingSystemEventsForReason___block_invoke;
  v6[3] = &unk_1E71EA128;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __53__AXEventProcessor_endHandlingSystemEventsForReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemActualEventTapEnabledReasons];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) systemActualEventTapEnabledReasons];
    [v4 removeObject:*(a1 + 40)];
  }

  else
  {
    v8 = @"This reason does not exist among reasons for tapping system events. Unbalanced. %@";
    v9 = *(a1 + 40);
    LOBYTE(v7) = 1;
    _AXLogWithFacility();
  }

  v10 = [*(a1 + 32) systemActualEventTapEnabledReasons];
  if ([v10 count])
  {
  }

  else
  {
    v5 = [*(a1 + 32) isHandlingSystemEvents];

    if (v5)
    {
      [*(a1 + 32) setHandlingSystemEvents:0];
      v6 = *(a1 + 32);

      [v6 _uninstallSystemEventFilter];
    }
  }
}

- (void)raiseSystemEventTapPriorityToMaximum
{
  v3 = [(AXEventProcessor *)self systemEventTapIdentifier];

  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AXEventProcessor_raiseSystemEventTapPriorityToMaximum__block_invoke;
    block[3] = &unk_1E71E9B98;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __56__AXEventProcessor_raiseSystemEventTapPriorityToMaximum__block_invoke(uint64_t a1)
{
  v3 = +[AXEventTapManager sharedManager];
  v2 = [*(a1 + 32) systemEventTapIdentifier];
  [v3 setEventTapPriority:v2 priority:90];
}

- (void)restoreSystemEventTapPriorityToDefault
{
  v3 = [(AXEventProcessor *)self systemEventTapIdentifier];

  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AXEventProcessor_restoreSystemEventTapPriorityToDefault__block_invoke;
    block[3] = &unk_1E71E9B98;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __58__AXEventProcessor_restoreSystemEventTapPriorityToDefault__block_invoke(uint64_t a1)
{
  v3 = +[AXEventTapManager sharedManager];
  v2 = [*(a1 + 32) systemEventTapIdentifier];
  [v3 setEventTapPriority:v2 priority:{objc_msgSend(*(a1 + 32), "systemEventTapPriority")}];
}

- (void)setIgnoreEventsForContinuitySession:(BOOL)a3
{
  self->_ignoreEventsForContinuitySession = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AXEventProcessor_setIgnoreEventsForContinuitySession___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__AXEventProcessor_setIgnoreEventsForContinuitySession___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AXEventTapManager sharedManager];
  [v2 setIgnoreEventsForContinuitySession:v1];
}

- (void)_runHIDEventReceiveThread
{
  AXSetThreadPriority();
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v5 = [MEMORY[0x1E695DF60] port];
  v6 = *MEMORY[0x1E695D918];
  [v4 addPort:v5 forMode:*MEMORY[0x1E695D918]];

  do
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [MEMORY[0x1E695DF00] distantFuture];
    [v4 runMode:v6 beforeDate:v8];

    objc_autoreleasePoolPop(v7);
  }

  while (self->_shouldRunHIDReceiveThreadRunloop && ![(NSThread *)self->_HIDEventReceiveThread isCancelled]);

  objc_autoreleasePoolPop(v3);
}

- (void)_installHIDEventFilter
{
  v3 = [(AXEventProcessor *)self HIDEventFilterMask];
  v4 = ([(AXEventProcessor *)self HIDEventFilterMask]>> 1) & 1;
  v5 = ([(AXEventProcessor *)self HIDEventFilterMask]>> 2) & 1;
  v6 = ([(AXEventProcessor *)self HIDEventFilterMask]>> 3) & 1;
  v21 = [(AXEventProcessor *)self HIDEventFilterMask];
  v7 = ([(AXEventProcessor *)self HIDEventFilterMask]>> 4) & 1;
  v8 = ([(AXEventProcessor *)self HIDEventFilterMask]>> 5) & 1;
  v9 = ([(AXEventProcessor *)self HIDEventFilterMask]>> 6) & 1;
  v10 = ([(AXEventProcessor *)self HIDEventFilterMask]>> 7) & 1;
  v11 = objc_opt_new();
  [v11 setWantsDigitizerEvents:v3 & 1];
  [v11 setWantsKeyboardEvents:v4];
  [v11 setWantsATVRemoteEvents:v5];
  [v11 setWantsLisaEvents:v6];
  [v11 setWantsMouseEvents:v7];
  [v11 setWantsAccessibilityEvents:v8];
  [v11 setWantsStylusEvents:v9];
  [v11 setWantsVolumeButtonEvents:v10];
  objc_initWeak(&location, self);
  v12 = +[AXEventTapManager sharedManager];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __42__AXEventProcessor__installHIDEventFilter__block_invoke;
  v22[3] = &unk_1E71EC9F0;
  objc_copyWeak(&v23, &location);
  v13 = [(AXEventProcessor *)self HIDEventTapIdentifier];
  if ([(AXEventProcessor *)self shouldMonitorHIDEventsOnly])
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [v12 installEventTap:v22 identifier:v13 type:v14 skipDeviceMatching:(v21 >> 8) & 1 filterEvents:v11 matchingServiceHandler:0];

  v16 = +[AXEventTapManager sharedManager];
  v17 = [(AXEventProcessor *)self HIDEventTapIdentifier];
  [v16 setEventTapPriority:v17 priority:{-[AXEventProcessor HIDEventTapPriority](self, "HIDEventTapPriority")}];

  v18 = +[AXEventTapManager sharedManager];
  v19 = [(AXEventProcessor *)self HIDEventTapIdentifier];
  v20 = [(AXEventProcessor *)self failedToHandleEventInTime];
  [v18 setFailedToProcessInTimeCallback:v19 callback:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void *__42__AXEventProcessor__installHIDEventFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (AXEventTypeIsTouch([v3 type]))
  {
    v5 = [v3 handInfo];
    v6 = [v5 pathsIncludingMayBeginEvents];

    if (AXDeviceIsAudioAccessory() && ![v6 count])
    {
    }

    else
    {
      v7 = [v6 indexOfObjectPassingTest:&__block_literal_global_43];

      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
        goto LABEL_13;
      }
    }
  }

  if ([WeakRetained shouldNotifyUserEventOccurred] && objc_msgSend(v3, "type") == 3001 && CFAbsoluteTimeGetCurrent() - *&_block_invoke_LastEvent > 3.0)
  {
    v9 = [MEMORY[0x1E6988748] backgroundAccessQueue];
    [v9 performAsynchronousReadingBlock:&__block_literal_global_44];

    _block_invoke_LastEvent = CFAbsoluteTimeGetCurrent();
  }

  v8 = [WeakRetained HIDEventHandler];

  if (v8)
  {
    v10 = [WeakRetained HIDEventHandler];
    v8 = (v10)[2](v10, v3);
  }

LABEL_13:

  return v8;
}

void __42__AXEventProcessor__installHIDEventFilter__block_invoke_3()
{
  v0 = +[AXUserEventTimer sharedInstance];
  [v0 userEventOccurred];
}

- (void)_uninstallHIDEventFilter
{
  v4 = +[AXEventTapManager sharedManager];
  v3 = [(AXEventProcessor *)self HIDEventTapIdentifier];
  [v4 removeEventTap:v3];
}

- (void)_installSystemEventFilter
{
  objc_initWeak(&location, self);
  v3 = +[AXEventTapManager sharedManager];
  v8 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v9, &location);
  v4 = [(AXEventProcessor *)self systemEventTapIdentifier:v8];
  v5 = [v3 installEventTap:&v8 identifier:v4 type:0];

  v6 = +[AXEventTapManager sharedManager];
  v7 = [(AXEventProcessor *)self systemEventTapIdentifier];
  [v6 setEventTapPriority:v7 priority:{-[AXEventProcessor systemEventTapPriority](self, "systemEventTapPriority")}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void *__45__AXEventProcessor__installSystemEventFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained shouldNotifyUserEventOccurred] && objc_msgSend(v3, "type") == 3001 && (objc_msgSend(v3, "isCancel") & 1) == 0 && CFAbsoluteTimeGetCurrent() - *&_block_invoke_2_LastEvent > 3.0)
  {
    v5 = [MEMORY[0x1E6988748] backgroundAccessQueue];
    [v5 performAsynchronousReadingBlock:&__block_literal_global_48];

    _block_invoke_2_LastEvent = CFAbsoluteTimeGetCurrent();
  }

  v6 = [WeakRetained systemEventHandler];

  if (v6)
  {
    v7 = [WeakRetained systemEventHandler];
    v6 = (v7)[2](v7, v3);
  }

  return v6;
}

void __45__AXEventProcessor__installSystemEventFilter__block_invoke_2()
{
  v0 = +[AXUserEventTimer sharedInstance];
  [v0 userEventOccurred];
}

- (void)_uninstallSystemEventFilter
{
  v4 = +[AXEventTapManager sharedManager];
  v3 = [(AXEventProcessor *)self systemEventTapIdentifier];
  [v4 removeEventTap:v3];
}

@end
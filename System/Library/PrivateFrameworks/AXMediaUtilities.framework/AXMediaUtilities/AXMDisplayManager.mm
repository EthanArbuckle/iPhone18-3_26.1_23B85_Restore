@interface AXMDisplayManager
- (AXMDisplay)coreAnimationMainDisplay;
- (AXMDisplay)frontBoardMainDisplay;
- (AXMDisplayManager)initWithCompletion:(id)completion;
- (NSString)description;
- (double)mobileGestaltOrientation;
- (id)_displayPropertiesFromMobileGestalt;
- (id)initAndWaitForMainDisplayConfiguration;
- (int64_t)_discreteOrientationForOrientation:(double)orientation;
- (void)_updateDisplay:(id)display withCADisplay:(id)aDisplay;
- (void)_updateDisplay:(id)display withConfiguration:(id)configuration;
- (void)_updateDisplayPropertiesWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration;
- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity;
- (void)initAndWaitForMainDisplayConfiguration;
@end

@implementation AXMDisplayManager

- (AXMDisplay)coreAnimationMainDisplay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AXMDisplayManager_coreAnimationMainDisplay__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__AXMDisplayManager_coreAnimationMainDisplay__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (AXMDisplayManager)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  v31.receiver = self;
  v31.super_class = AXMDisplayManager;
  v6 = [(AXMDisplayManager *)&v31 init];
  v7 = v6;
  if (v6)
  {
    v6->_mobileGestaltOrientation = -1.0;
    v8 = dispatch_queue_create("AXMDisplayManager", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    if (MGGetSInt32Answer() != 7)
    {
      v10 = [[AXMDisplay alloc] _initWithBackingType:2];
      queue_FrontBoardMainDisplay = v7->_queue_FrontBoardMainDisplay;
      v7->_queue_FrontBoardMainDisplay = v10;

      dispatch_group_enter(v5);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __40__AXMDisplayManager_initWithCompletion___block_invoke;
      v28[3] = &unk_1E7A1CB30;
      v29 = v7;
      v30 = v5;
      v12 = MEMORY[0x1B2700900](v28);
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v12[2](v12);
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __40__AXMDisplayManager_initWithCompletion___block_invoke_2;
        block[3] = &unk_1E7A1D038;
        v27 = v12;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    v13 = [[AXMDisplay alloc] _initWithBackingType:1];
    queue_CoreAnimationMainDisplay = v7->_queue_CoreAnimationMainDisplay;
    v7->_queue_CoreAnimationMainDisplay = v13;

    v15 = v7->_queue_CoreAnimationMainDisplay;
    mainDisplay = [MEMORY[0x1E6979328] mainDisplay];
    [(AXMDisplayManager *)v7 _updateDisplay:v15 withCADisplay:mainDisplay];
  }

  v17 = dispatch_get_global_queue(21, 0);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __40__AXMDisplayManager_initWithCompletion___block_invoke_3;
  v23[3] = &unk_1E7A1C678;
  v18 = v7;
  v24 = v18;
  v25 = completionCopy;
  v19 = completionCopy;
  dispatch_group_notify(v5, v17, v23);

  v20 = v25;
  v21 = v18;

  return v21;
}

void __40__AXMDisplayManager_initWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E699FB10]);
  [*(a1 + 32) setDisplayMonitor:v2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 32) displayMonitor];
  v4 = [v3 connectedIdentities];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [*(a1 + 32) displayMonitor];
        v11 = [v10 configurationForIdentity:v9];

        if ([v11 isMainDisplay])
        {
          [*(a1 + 32) _updateDisplay:*(*(a1 + 32) + 24) withConfiguration:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  dispatch_group_leave(*(a1 + 40));
  v12 = [*(a1 + 32) displayMonitor];
  [v12 addObserver:*(a1 + 32)];
}

uint64_t __40__AXMDisplayManager_initWithCompletion___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)initAndWaitForMainDisplayConfiguration
{
  v2 = [(AXMDisplayManager *)self initWithCompletion:0];
  if (!v2->_initialized)
  {
    v3 = *MEMORY[0x1E695E8E0];
    do
    {
      CFRunLoopRunInMode(v3, 0.15, 1u);
    }

    while (!v2->_initialized);
  }

  v4 = AXLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AXMDisplayManager *)v2 initAndWaitForMainDisplayConfiguration];
  }

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  initialized = self->_initialized;
  frontBoardMainDisplay = [(AXMDisplayManager *)self frontBoardMainDisplay];
  coreAnimationMainDisplay = [(AXMDisplayManager *)self coreAnimationMainDisplay];
  _displayPropertiesFromMobileGestalt = [(AXMDisplayManager *)self _displayPropertiesFromMobileGestalt];
  v8 = [v3 stringWithFormat:@"AXMDisplayManager:<%p> Initialized %ld\n\tFrontbaord Main:%@\n\tCADisplay Main:%@\n\tStatic (gestalt) props: %@", self, initialized, frontBoardMainDisplay, coreAnimationMainDisplay, _displayPropertiesFromMobileGestalt];

  return v8;
}

- (void)dealloc
{
  displayMonitor = [(AXMDisplayManager *)self displayMonitor];
  [displayMonitor removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXMDisplayManager;
  [(AXMDisplayManager *)&v4 dealloc];
}

- (double)mobileGestaltOrientation
{
  result = self->_mobileGestaltOrientation;
  if (result == -1.0)
  {
    v16 = v4;
    v17 = v3;
    v18 = v2;
    v10 = MGCopyAnswer();
    if (!v10)
    {
      v11 = AXLogDisplay();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [AXMDisplayManager mobileGestaltOrientation];
      }
    }

    v12 = [v10 objectForKeyedSubscript:{@"main-screen-orientation", v5, v16, v17, v18, v6, v7}];
    v13 = v12;
    if (v12)
    {
      [v12 floatValue];
      self->_mobileGestaltOrientation = v14;
    }

    else
    {
      v15 = AXLogDisplay();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [AXMDisplayManager mobileGestaltOrientation];
      }
    }

    return self->_mobileGestaltOrientation;
  }

  return result;
}

- (AXMDisplay)frontBoardMainDisplay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AXMDisplayManager_frontBoardMainDisplay__block_invoke;
  v5[3] = &unk_1E7A1CAE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__AXMDisplayManager_frontBoardMainDisplay__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_displayPropertiesFromMobileGestalt
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = MGCopyAnswer();
  if (!v3)
  {
    v4 = AXLogDisplay();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [AXMDisplayManager mobileGestaltOrientation];
    }
  }

  v5 = [v3 objectForKeyedSubscript:@"main-screen-scale"];
  if (v5)
  {
    [dictionary setObject:v5 forKeyedSubscript:@"scale"];
  }

  else
  {
    v6 = AXLogDisplay();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [AXMDisplayManager mobileGestaltOrientation];
    }
  }

  v7 = [v3 objectForKeyedSubscript:@"main-screen-orientation"];

  if (v7)
  {
    [dictionary setObject:v7 forKeyedSubscript:@"orientation"];
  }

  else
  {
    v8 = AXLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [AXMDisplayManager _displayPropertiesFromMobileGestalt];
    }
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:MGGetBoolAnswer()];
  [dictionary setObject:v9 forKeyedSubscript:@"supportsDeepColor"];

  return dictionary;
}

- (void)_updateDisplay:(id)display withCADisplay:(id)aDisplay
{
  displayCopy = display;
  aDisplayCopy = aDisplay;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AXMDisplayManager__updateDisplay_withCADisplay___block_invoke;
  block[3] = &unk_1E7A1D5C8;
  v12 = displayCopy;
  v13 = aDisplayCopy;
  selfCopy = self;
  v9 = aDisplayCopy;
  v10 = displayCopy;
  dispatch_sync(queue, block);
}

void __50__AXMDisplayManager__updateDisplay_withCADisplay___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [a1[5] currentMode];
  [a1[4] setScale:{objc_msgSend(v2, "preferredScale")}];

  [a1[6] mobileGestaltOrientation];
  [a1[4] setOrientation:?];
  [a1[4] scale];
  v4 = 1.0 / v3;
  [a1[5] bounds];
  v6 = v4 * v5;
  v8 = v4 * v7;
  v10 = v4 * v9;
  v12 = v4 * v11;
  [a1[4] orientation];
  v14 = v13;
  [a1[5] bounds];
  v16 = v15;
  v18 = v17;
  [a1[4] setPhysicalOrientation:{objc_msgSend(a1[6], "_discreteOrientationForOrientation:", v14)}];
  if (AXMFloatApproxEqual(v14, 1.57079633) || AXMFloatApproxEqual(v14, 4.71238898))
  {
    v19 = v16;
    v20 = v10;
  }

  else
  {
    v19 = v18;
    v18 = v16;
    v20 = v12;
    v12 = v10;
  }

  [a1[4] setReferenceBounds:{v6, v8, v12, v20}];
  [a1[4] setSize:{v18, v19}];
  v21 = [a1[5] name];
  [a1[4] setName:v21];

  v22 = AXLogDisplay();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a1[4];
    v24 = 138412290;
    v25 = v23;
    _os_log_impl(&dword_1AE37B000, v22, OS_LOG_TYPE_DEFAULT, "Display settings after update from CADisplay.mainDisplay: %@", &v24, 0xCu);
  }
}

- (int64_t)_discreteOrientationForOrientation:(double)orientation
{
  if (AXMFloatApproxEqual(orientation, 0.0))
  {
    return 1;
  }

  if (AXMFloatApproxEqual(orientation, 1.57079633))
  {
    return 3;
  }

  if (AXMFloatApproxEqual(orientation, 3.14159265))
  {
    return 2;
  }

  if (!AXMFloatApproxEqual(orientation, 4.71238898))
  {
    v5 = AXLogDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [AXMDisplayManager _discreteOrientationForOrientation:];
    }

    return 1;
  }

  return 4;
}

- (void)_updateDisplay:(id)display withConfiguration:(id)configuration
{
  displayCopy = display;
  configurationCopy = configuration;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AXMDisplayManager__updateDisplay_withConfiguration___block_invoke;
  block[3] = &unk_1E7A1D5C8;
  v12 = displayCopy;
  v13 = configurationCopy;
  selfCopy = self;
  v9 = configurationCopy;
  v10 = displayCopy;
  dispatch_sync(queue, block);
}

void __54__AXMDisplayManager__updateDisplay_withConfiguration___block_invoke(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [a1[5] name];
  [a1[4] setName:v2];

  [a1[5] pointScale];
  [a1[4] setScale:?];
  [a1[5] pixelSize];
  [a1[4] setSize:?];
  [a1[6] mobileGestaltOrientation];
  [a1[4] setOrientation:?];
  [a1[5] bounds];
  [a1[4] setReferenceBounds:?];
  v3 = a1[6];
  [v3 mobileGestaltOrientation];
  [a1[4] setPhysicalOrientation:{objc_msgSend(v3, "_discreteOrientationForOrientation:")}];
  [a1[4] setSupportsDeepColor:MGGetBoolAnswer()];
  v4 = AXLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1AE37B000, v4, OS_LOG_TYPE_DEFAULT, "Display settings after update from FB configuration: %@", &v6, 0xCu);
  }
}

- (void)_updateDisplayPropertiesWithConfiguration:(id)configuration
{
  [(AXMDisplayManager *)self _updateDisplay:self->_queue_FrontBoardMainDisplay withConfiguration:configuration];
  queue_CoreAnimationMainDisplay = self->_queue_CoreAnimationMainDisplay;
  mainDisplay = [MEMORY[0x1E6979328] mainDisplay];
  [(AXMDisplayManager *)self _updateDisplay:queue_CoreAnimationMainDisplay withCADisplay:mainDisplay];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AXMDisplayManagerMainDisplayWasUpdatedNotification" object:self];
}

- (void)displayMonitor:(id)monitor didConnectIdentity:(id)identity withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7 = AXLogDisplay();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEFAULT, "connected new display. Updating AXMDisplay properties", v8, 2u);
  }

  if ([configurationCopy isMainDisplay])
  {
    [(AXMDisplayManager *)self _updateDisplayPropertiesWithConfiguration:configurationCopy];
  }
}

- (void)displayMonitor:(id)monitor didUpdateIdentity:(id)identity withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7 = AXLogDisplay();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEFAULT, "display config changed. Updating AXMDisplay properties", v8, 2u);
  }

  if ([configurationCopy isMainDisplay])
  {
    [(AXMDisplayManager *)self _updateDisplayPropertiesWithConfiguration:configurationCopy];
  }
}

- (void)displayMonitor:(id)monitor willDisconnectIdentity:(id)identity
{
  v4 = AXLogDisplay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AE37B000, v4, OS_LOG_TYPE_DEFAULT, "disconnected new display", v5, 2u);
  }
}

- (void)initAndWaitForMainDisplayConfiguration
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "AXMDisplayManager initialized: %@", &v2, 0xCu);
}

@end
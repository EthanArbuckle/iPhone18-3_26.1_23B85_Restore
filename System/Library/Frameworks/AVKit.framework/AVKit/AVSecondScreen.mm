@interface AVSecondScreen
- (AVSecondScreen)initWithScene:(id)scene;
- (BOOL)_isWindowSceneAvailable;
- (CGRect)sceneBounds;
- (UIScreen)screen;
- (UIWindowScene)windowScene;
- (void)_updatePreferredDisplayCriteria;
- (void)connectWithSecondScreenConnection:(id)connection;
- (void)dealloc;
- (void)setState:(int64_t)state;
@end

@implementation AVSecondScreen

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (BOOL)_isWindowSceneAvailable
{
  windowScene = [(AVSecondScreen *)self windowScene];
  window = [(AVSecondScreen *)self window];
  v5 = [windowScene avkit_screenHasWindowsExcludingWindow:window];

  return v5 ^ 1;
}

- (void)_updatePreferredDisplayCriteria
{
  secondScreenConnection = [(AVSecondScreen *)self secondScreenConnection];
  preferredDisplayCriteria = [secondScreenConnection preferredDisplayCriteria];

  v4 = [preferredDisplayCriteria videoDynamicRange] - 1;
  if (v4 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = qword_18B6EC5D8[v4];
  }

  windowScene = [(AVSecondScreen *)self windowScene];
  [preferredDisplayCriteria refreshRate];
  [windowScene avkit_setPreferredRefreshRate:v5 HDRMode:v7];
}

- (CGRect)sceneBounds
{
  windowScene = [(AVSecondScreen *)self windowScene];
  coordinateSpace = [windowScene coordinateSpace];
  [coordinateSpace bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setState:(int64_t)state
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    isAvailable = [(AVSecondScreen *)self isAvailable];
    window = [(AVSecondScreen *)self window];
    if (window)
    {
      window2 = [(AVSecondScreen *)self window];
      v8 = [window2 isHidden] ^ 1;
    }

    else
    {
      v8 = 0;
    }

    state = self->_state;
    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (state > 2)
      {
        v11 = @"Invalid";
      }

      else
      {
        v11 = off_1E7207B20[state];
      }

      if (state > 2)
      {
        v12 = @"Invalid";
      }

      else
      {
        v12 = off_1E7207B20[state];
      }

      v14 = 136315650;
      v15 = "[AVSecondScreen setState:]";
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ -> %@", &v14, 0x20u);
    }

    self->_state = state;
    switch(state)
    {
      case 2:
        secondScreenConnection = [(AVSecondScreen *)self secondScreenConnection];
        [secondScreenConnection connectWithScreen:self active:1];
        goto LABEL_21;
      case 1:
        if (isAvailable)
        {
          return;
        }

        secondScreenConnection = [MEMORY[0x1E696AD88] defaultCenter];
        [secondScreenConnection postNotificationName:@"AVSecondScreenConnectionDidBecomePossibleNotification" object:self];
        goto LABEL_21;
      case 0:
        [(AVSecondScreen *)self connectWithSecondScreenConnection:0];
        if (v8)
        {
          secondScreenConnection = [(AVSecondScreen *)self windowScene];
          [secondScreenConnection avkit_resetPreferredModeSwitchRequest];
LABEL_21:
        }

        break;
    }
  }
}

- (void)connectWithSecondScreenConnection:(id)connection
{
  v32 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  secondScreenConnection = [(AVSecondScreen *)self secondScreenConnection];

  if (secondScreenConnection != connectionCopy)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315394;
      v27 = "[AVSecondScreen connectWithSecondScreenConnection:]";
      v28 = 2112;
      v29 = connectionCopy;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v26, 0x16u);
    }

    secondScreenConnection2 = [(AVSecondScreen *)self secondScreenConnection];
    [secondScreenConnection2 connectWithScreen:0 active:0];
    debugAssistant = [secondScreenConnection2 debugAssistant];
    [debugAssistant setScene:0];

    [(AVSecondScreen *)self setSecondScreenConnection:connectionCopy];
    if (connectionCopy)
    {
      if (![(AVSecondScreen *)self isAvailable])
      {
        v9 = _AVLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v26) = 0;
          _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Attempted to connect with a screen that is not available.", &v26, 2u);
        }
      }

      debugAssistant2 = [connectionCopy debugAssistant];
      windowScene = [(AVSecondScreen *)self windowScene];
      [debugAssistant2 setScene:windowScene];

      [(AVSecondScreen *)self _updatePreferredDisplayCriteria];
      window = [(AVSecondScreen *)self window];

      if (!window)
      {
        v13 = objc_alloc(MEMORY[0x1E69DD2E8]);
        windowScene2 = [(AVSecondScreen *)self windowScene];
        v15 = [v13 initWithWindowScene:windowScene2];
        [(AVSecondScreen *)self setWindow:v15];

        v16 = _AVLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          window2 = [(AVSecondScreen *)self window];
          window3 = [(AVSecondScreen *)self window];
          screen = [window3 screen];
          v26 = 136315650;
          v27 = "[AVSecondScreen connectWithSecondScreenConnection:]";
          v28 = 2048;
          v29 = window2;
          v30 = 2112;
          v31 = screen;
          _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s Created second window %p on %@", &v26, 0x20u);
        }
      }

      window4 = [(AVSecondScreen *)self window];
      contentViewController = [connectionCopy contentViewController];
      [window4 setRootViewController:contentViewController];

      [connectionCopy connectWithScreen:self active:1];
      window5 = [(AVSecondScreen *)self window];
      [window5 setHidden:0];
    }

    else
    {
      window6 = [(AVSecondScreen *)self window];
      [window6 setHidden:1];

      window7 = [(AVSecondScreen *)self window];
      [window7 setRootViewController:0];

      window8 = [(AVSecondScreen *)self window];
      [window8 setWindowScene:0];

      [(AVSecondScreen *)self setWindow:0];
    }
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  observationController = [(AVSecondScreen *)self observationController];
  [observationController stopAllObservation];

  [(AVSecondScreen *)self setState:0];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[AVSecondScreen dealloc]";
    v8 = 1024;
    v9 = 159;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v5.receiver = self;
  v5.super_class = AVSecondScreen;
  [(AVSecondScreen *)&v5 dealloc];
}

- (AVSecondScreen)initWithScene:(id)scene
{
  sceneCopy = scene;
  avkit_asWindowScene = [sceneCopy avkit_asWindowScene];
  avkit_screenType = [sceneCopy avkit_screenType];

  if ((avkit_screenType - 5) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v20.receiver = self;
    v20.super_class = AVSecondScreen;
    v8 = [(AVSecondScreen *)&v20 init];
    if (v8)
    {
      screen = [avkit_asWindowScene screen];
      objc_storeWeak(&v8->_windowScene, avkit_asWindowScene);
      objc_storeWeak(&v8->_screen, screen);
      v8->_TVOutScreen = avkit_screenType == 3;
      if ([avkit_asWindowScene activationState] <= 1 && (objc_msgSend(avkit_asWindowScene, "avkit_screenHasWindowsExcludingWindow:", 0) & 1) == 0)
      {
        v8->_state = 1;
      }

      v10 = [[AVObservationController alloc] initWithOwner:v8];
      observationController = v8->_observationController;
      v8->_observationController = v10;

      observationController = [(AVSecondScreen *)v8 observationController];
      [observationController startObservingNotificationForName:*MEMORY[0x1E69DE338] object:avkit_asWindowScene notificationCenter:0 observationHandler:&__block_literal_global_6825];

      observationController2 = [(AVSecondScreen *)v8 observationController];
      [observationController2 startObservingNotificationForName:*MEMORY[0x1E69DE358] object:avkit_asWindowScene notificationCenter:0 observationHandler:&__block_literal_global_10_6826];

      observationController3 = [(AVSecondScreen *)v8 observationController];
      [observationController3 startObservingNotificationForName:*MEMORY[0x1E69DE360] object:avkit_asWindowScene notificationCenter:0 observationHandler:&__block_literal_global_13_6827];

      observationController4 = [(AVSecondScreen *)v8 observationController];
      [observationController4 startObservingNotificationForName:*MEMORY[0x1E69DE348] object:avkit_asWindowScene notificationCenter:0 observationHandler:&__block_literal_global_16_6828];

      observationController5 = [(AVSecondScreen *)v8 observationController];
      [observationController5 startObservingNotificationForName:*MEMORY[0x1E69DE340] object:avkit_asWindowScene notificationCenter:0 observationHandler:&__block_literal_global_19_6829];

      observationController6 = [(AVSecondScreen *)v8 observationController];
      [observationController6 startObservingNotificationForName:*MEMORY[0x1E69DE7C0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_24_6830];

      observationController7 = [(AVSecondScreen *)v8 observationController];
      [observationController7 startObservingNotificationForName:@"AVSecondScreenConnectionPreferredDisplayCriteriaDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_27_6831];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __32__AVSecondScreen_initWithScene___block_invoke_25(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = [a4 object];
  v6 = [v8 secondScreenConnection];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    [v8 _updatePreferredDisplayCriteria];
  }
}

void __32__AVSecondScreen_initWithScene___block_invoke_21(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AVSecondScreen initWithScene:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", &v11, 0x16u);
  }

  v8 = [v5 state];
  if ([v5 _isWindowSceneAvailable])
  {
    if (([v5 isAvailable] & 1) == 0)
    {
      v9 = [v5 windowScene];
      v10 = [v9 avkit_isForeground];

      if (v10)
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  [v5 setState:v8];
}

void __32__AVSecondScreen_initWithScene___block_invoke_17(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a2;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[AVSecondScreen initWithScene:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", &v9, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"AVSecondScreenDidDisconnectNotification" object:v6];
}

void __32__AVSecondScreen_initWithScene___block_invoke_14(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a2;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVSecondScreen initWithScene:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  [v6 setState:0];
}

void __32__AVSecondScreen_initWithScene___block_invoke_11(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVSecondScreen initWithScene:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  if ([v5 _isWindowSceneAvailable])
  {
    [v5 setState:1];
  }
}

void __32__AVSecondScreen_initWithScene___block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[AVSecondScreen initWithScene:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = [v7 avkit_isForeground];
    v16 = 1024;
    v17 = [v7 avkit_screenHasWindowsExcludingWindow:0];
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s %@ foreground: %d haswindows: %d", &v10, 0x22u);
  }

  if ([v6 _isWindowSceneAvailable])
  {
    [v6 setState:1];
  }
}

void __32__AVSecondScreen_initWithScene___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[AVSecondScreen initWithScene:]_block_invoke";
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", &v13, 0x16u);
  }

  v10 = [v6 window];
  if ([v10 isHidden])
  {
  }

  else
  {
    v11 = [v6 window];
    v12 = [v11 windowScene];

    if (v12 == v7)
    {
      [v6 setState:2];
    }
  }
}

@end
@interface AVSecondScreen
- (AVSecondScreen)initWithScene:(id)a3;
- (BOOL)_isWindowSceneAvailable;
- (CGRect)sceneBounds;
- (UIScreen)screen;
- (UIWindowScene)windowScene;
- (void)_updatePreferredDisplayCriteria;
- (void)connectWithSecondScreenConnection:(id)a3;
- (void)dealloc;
- (void)setState:(int64_t)a3;
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
  v3 = [(AVSecondScreen *)self windowScene];
  v4 = [(AVSecondScreen *)self window];
  v5 = [v3 avkit_screenHasWindowsExcludingWindow:v4];

  return v5 ^ 1;
}

- (void)_updatePreferredDisplayCriteria
{
  v3 = [(AVSecondScreen *)self secondScreenConnection];
  v8 = [v3 preferredDisplayCriteria];

  v4 = [v8 videoDynamicRange] - 1;
  if (v4 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = qword_18B6EC5D8[v4];
  }

  v6 = [(AVSecondScreen *)self windowScene];
  [v8 refreshRate];
  [v6 avkit_setPreferredRefreshRate:v5 HDRMode:v7];
}

- (CGRect)sceneBounds
{
  v2 = [(AVSecondScreen *)self windowScene];
  v3 = [v2 coordinateSpace];
  [v3 bounds];
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

- (void)setState:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    v5 = [(AVSecondScreen *)self isAvailable];
    v6 = [(AVSecondScreen *)self window];
    if (v6)
    {
      v7 = [(AVSecondScreen *)self window];
      v8 = [v7 isHidden] ^ 1;
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

      if (a3 > 2)
      {
        v12 = @"Invalid";
      }

      else
      {
        v12 = off_1E7207B20[a3];
      }

      v14 = 136315650;
      v15 = "[AVSecondScreen setState:]";
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ -> %@", &v14, 0x20u);
    }

    self->_state = a3;
    switch(a3)
    {
      case 2:
        v13 = [(AVSecondScreen *)self secondScreenConnection];
        [v13 connectWithScreen:self active:1];
        goto LABEL_21;
      case 1:
        if (v5)
        {
          return;
        }

        v13 = [MEMORY[0x1E696AD88] defaultCenter];
        [v13 postNotificationName:@"AVSecondScreenConnectionDidBecomePossibleNotification" object:self];
        goto LABEL_21;
      case 0:
        [(AVSecondScreen *)self connectWithSecondScreenConnection:0];
        if (v8)
        {
          v13 = [(AVSecondScreen *)self windowScene];
          [v13 avkit_resetPreferredModeSwitchRequest];
LABEL_21:
        }

        break;
    }
  }
}

- (void)connectWithSecondScreenConnection:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVSecondScreen *)self secondScreenConnection];

  if (v5 != v4)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315394;
      v27 = "[AVSecondScreen connectWithSecondScreenConnection:]";
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %@", &v26, 0x16u);
    }

    v7 = [(AVSecondScreen *)self secondScreenConnection];
    [v7 connectWithScreen:0 active:0];
    v8 = [v7 debugAssistant];
    [v8 setScene:0];

    [(AVSecondScreen *)self setSecondScreenConnection:v4];
    if (v4)
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

      v10 = [v4 debugAssistant];
      v11 = [(AVSecondScreen *)self windowScene];
      [v10 setScene:v11];

      [(AVSecondScreen *)self _updatePreferredDisplayCriteria];
      v12 = [(AVSecondScreen *)self window];

      if (!v12)
      {
        v13 = objc_alloc(MEMORY[0x1E69DD2E8]);
        v14 = [(AVSecondScreen *)self windowScene];
        v15 = [v13 initWithWindowScene:v14];
        [(AVSecondScreen *)self setWindow:v15];

        v16 = _AVLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(AVSecondScreen *)self window];
          v18 = [(AVSecondScreen *)self window];
          v19 = [v18 screen];
          v26 = 136315650;
          v27 = "[AVSecondScreen connectWithSecondScreenConnection:]";
          v28 = 2048;
          v29 = v17;
          v30 = 2112;
          v31 = v19;
          _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "%s Created second window %p on %@", &v26, 0x20u);
        }
      }

      v20 = [(AVSecondScreen *)self window];
      v21 = [v4 contentViewController];
      [v20 setRootViewController:v21];

      [v4 connectWithScreen:self active:1];
      v22 = [(AVSecondScreen *)self window];
      [v22 setHidden:0];
    }

    else
    {
      v23 = [(AVSecondScreen *)self window];
      [v23 setHidden:1];

      v24 = [(AVSecondScreen *)self window];
      [v24 setRootViewController:0];

      v25 = [(AVSecondScreen *)self window];
      [v25 setWindowScene:0];

      [(AVSecondScreen *)self setWindow:0];
    }
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(AVSecondScreen *)self observationController];
  [v3 stopAllObservation];

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

- (AVSecondScreen)initWithScene:(id)a3
{
  v4 = a3;
  v5 = [v4 avkit_asWindowScene];
  v6 = [v4 avkit_screenType];

  if ((v6 - 5) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v20.receiver = self;
    v20.super_class = AVSecondScreen;
    v8 = [(AVSecondScreen *)&v20 init];
    if (v8)
    {
      v9 = [v5 screen];
      objc_storeWeak(&v8->_windowScene, v5);
      objc_storeWeak(&v8->_screen, v9);
      v8->_TVOutScreen = v6 == 3;
      if ([v5 activationState] <= 1 && (objc_msgSend(v5, "avkit_screenHasWindowsExcludingWindow:", 0) & 1) == 0)
      {
        v8->_state = 1;
      }

      v10 = [[AVObservationController alloc] initWithOwner:v8];
      observationController = v8->_observationController;
      v8->_observationController = v10;

      v12 = [(AVSecondScreen *)v8 observationController];
      [v12 startObservingNotificationForName:*MEMORY[0x1E69DE338] object:v5 notificationCenter:0 observationHandler:&__block_literal_global_6825];

      v13 = [(AVSecondScreen *)v8 observationController];
      [v13 startObservingNotificationForName:*MEMORY[0x1E69DE358] object:v5 notificationCenter:0 observationHandler:&__block_literal_global_10_6826];

      v14 = [(AVSecondScreen *)v8 observationController];
      [v14 startObservingNotificationForName:*MEMORY[0x1E69DE360] object:v5 notificationCenter:0 observationHandler:&__block_literal_global_13_6827];

      v15 = [(AVSecondScreen *)v8 observationController];
      [v15 startObservingNotificationForName:*MEMORY[0x1E69DE348] object:v5 notificationCenter:0 observationHandler:&__block_literal_global_16_6828];

      v16 = [(AVSecondScreen *)v8 observationController];
      [v16 startObservingNotificationForName:*MEMORY[0x1E69DE340] object:v5 notificationCenter:0 observationHandler:&__block_literal_global_19_6829];

      v17 = [(AVSecondScreen *)v8 observationController];
      [v17 startObservingNotificationForName:*MEMORY[0x1E69DE7C0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_24_6830];

      v18 = [(AVSecondScreen *)v8 observationController];
      [v18 startObservingNotificationForName:@"AVSecondScreenConnectionPreferredDisplayCriteriaDidChangeNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_27_6831];
    }

    self = v8;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
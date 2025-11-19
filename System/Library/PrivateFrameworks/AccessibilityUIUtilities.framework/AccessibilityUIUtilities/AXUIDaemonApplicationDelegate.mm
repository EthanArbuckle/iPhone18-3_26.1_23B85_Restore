@interface AXUIDaemonApplicationDelegate
+ (BOOL)isFeatureEnabled;
+ (NSString)debugFeatureName;
+ (NSString)featureEnabledStatusDidChangeNotification;
+ (OS_os_log)loggingFacility;
- (AXUIDaemonApplicationDelegate)init;
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (void)_didUpdateToOrientation:(int64_t)a3 duration:(double)a4;
- (void)_exitIfNotEnabled;
- (void)_systemAppDidBecomeReady;
- (void)applicationWillTerminate:(id)a3;
- (void)dealloc;
- (void)setKeepAlive:(BOOL)a3;
@end

@implementation AXUIDaemonApplicationDelegate

- (AXUIDaemonApplicationDelegate)init
{
  v7.receiver = self;
  v7.super_class = AXUIDaemonApplicationDelegate;
  v2 = [(AXUIDaemonApplicationDelegate *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = [objc_opt_class() featureEnabledStatusDidChangeNotification];
    [v3 addObserver:v2 selector:sel__enabledPreferenceDidChange_ name:v4 object:0];

    [(AXUIDaemonApplicationDelegate *)v2 _exitIfNotEnabled];
    [(AXUIDaemonApplicationDelegate *)v2 setKeepAlive:1];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _systemAppDidBecomeReady, *MEMORY[0x1E6989808], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  [(FBSOrientationObserver *)self->_orientationObserver invalidate];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [objc_opt_class() featureEnabledStatusDidChangeNotification];
  [v3 removeObserver:self name:v4 object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E6989808], 0);
  v6.receiver = self;
  v6.super_class = AXUIDaemonApplicationDelegate;
  [(AXUIDaemonApplicationDelegate *)&v6 dealloc];
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() loggingFacility];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [objc_opt_class() debugFeatureName];
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_1C0DFB000, v8, OS_LOG_TYPE_DEFAULT, "Launched %@.", buf, 0xCu);
  }

  [(AXUIDaemonApplicationDelegate *)self didFinishLaunching];
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__AXUIDaemonApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke;
  aBlock[3] = &unk_1E812DD90;
  objc_copyWeak(&v15, buf);
  v10 = _Block_copy(aBlock);
  v11 = objc_alloc_init(MEMORY[0x1E699FB90]);
  orientationObserver = self->_orientationObserver;
  self->_orientationObserver = v11;

  [(FBSOrientationObserver *)self->_orientationObserver setHandler:v10];
  [(AXUIDaemonApplicationDelegate *)self _didUpdateToOrientation:[(FBSOrientationObserver *)self->_orientationObserver activeInterfaceOrientation] duration:0.0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return 1;
}

void __75__AXUIDaemonApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__AXUIDaemonApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke_2;
  v6[3] = &unk_1E812DD68;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __75__AXUIDaemonApplicationDelegate_application_didFinishLaunchingWithOptions___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) orientation];
  [*(a1 + 40) duration];

  return [v2 _didUpdateToOrientation:v3 duration:?];
}

- (void)applicationWillTerminate:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() loggingFacility];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() debugFeatureName];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1C0DFB000, v4, OS_LOG_TYPE_DEFAULT, "Will terminate %@.", &v6, 0xCu);
  }

  [(AXUIDaemonApplicationDelegate *)self willTerminate];
}

- (void)_didUpdateToOrientation:(int64_t)a3 duration:(double)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_class() loggingFacility];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v15 = a3;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&dword_1C0DFB000, v7, OS_LOG_TYPE_DEFAULT, "Update orientation to %ld with duration %g", buf, 0x16u);
  }

  AXPerformSafeBlock();
  v8 = [MEMORY[0x1E69DC938] currentDevice];
  [v8 setOrientation:a3 animated:a4 > 0.0];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = @"Duration";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v13 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v9 postNotificationName:@"AXUIDaemonOrientationDidUpdateNotification" object:0 userInfo:v11];

  [(AXUIDaemonApplicationDelegate *)self didUpdateOrientation];
}

void __66__AXUIDaemonApplicationDelegate__didUpdateToOrientation_duration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 _setInterfaceOrientation:*(a1 + 32)];
}

- (void)_exitIfNotEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  if (([objc_opt_class() isFeatureEnabled] & 1) == 0)
  {
    v3 = [objc_opt_class() loggingFacility];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [objc_opt_class() debugFeatureName];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C0DFB000, v3, OS_LOG_TYPE_DEFAULT, "Exiting %@.", &v6, 0xCu);
    }

    [(AXUIDaemonApplicationDelegate *)self setKeepAlive:0];
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 terminateWithSuccess];
  }
}

- (void)_systemAppDidBecomeReady
{
  if (!+[AXUIDaemonApplication usesScenes])
  {
    v2 = [objc_opt_class() loggingFacility];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C0DFB000, v2, OS_LOG_TYPE_DEFAULT, "Restarting because SpringBoard just became active.", v4, 2u);
    }

    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 terminateWithSuccess];
  }
}

- (void)setKeepAlive:(BOOL)a3
{
  if (vproc_swap_integer())
  {
    v4 = [objc_opt_class() loggingFacility];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXUIDaemonApplicationDelegate *)a3 setKeepAlive:v4];
    }
  }
}

+ (OS_os_log)loggingFacility
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v2 = MEMORY[0x1E69E9C10];

  return v2;
}

+ (NSString)debugFeatureName
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return &stru_1F4041FC0;
}

+ (BOOL)isFeatureEnabled
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return 0;
}

+ (NSString)featureEnabledStatusDidChangeNotification
{
  OUTLINED_FUNCTION_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  return &stru_1F4041FC0;
}

- (void)setKeepAlive:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_error_impl(&dword_1C0DFB000, a2, OS_LOG_TYPE_ERROR, "Unable to set keep alive to %i.", v2, 8u);
}

@end
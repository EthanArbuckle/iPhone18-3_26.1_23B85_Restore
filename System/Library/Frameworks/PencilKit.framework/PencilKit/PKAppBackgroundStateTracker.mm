@interface PKAppBackgroundStateTracker
+ (id)sharedInstance;
- (PKAppBackgroundStateTracker)init;
- (void)_updateState;
- (void)_updateStateOnMainThread;
@end

@implementation PKAppBackgroundStateTracker

- (void)_updateState
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(PKAppBackgroundStateTracker *)self _updateStateOnMainThread];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PKAppBackgroundStateTracker__updateState__block_invoke;
    block[3] = &unk_1E82D7148;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

+ (id)sharedInstance
{
  objc_opt_self();
  if (_MergedGlobals_135 != -1)
  {
    dispatch_once(&_MergedGlobals_135, &__block_literal_global_35);
  }

  v0 = qword_1ED6A50C8;

  return v0;
}

void __45__PKAppBackgroundStateTracker_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKAppBackgroundStateTracker);
  v1 = qword_1ED6A50C8;
  qword_1ED6A50C8 = v0;
}

- (PKAppBackgroundStateTracker)init
{
  v11.receiver = self;
  v11.super_class = PKAppBackgroundStateTracker;
  v2 = [(PKAppBackgroundStateTracker *)&v11 init];
  v3 = v2;
  if (v2)
  {
    atomic_store(0, &v2->_inBackground);
    v4 = NSClassFromString(&cfstr_Uiapplication.isa);
    v3->_applicationClass = v4;
    if (v4)
    {
      if ((_UIApplicationIsExtension() & 1) == 0)
      {
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v7 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

        if ((v7 & 1) == 0)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter addObserver:v3 selector:sel__updateState name:*MEMORY[0x1E69DDAC8] object:0];

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 addObserver:v3 selector:sel__updateState name:*MEMORY[0x1E69DDAB0] object:0];

          [(PKAppBackgroundStateTracker *)v3 _updateState];
        }
      }
    }
  }

  return v3;
}

- (void)_updateStateOnMainThread
{
  if (self)
  {
    sharedApplication = [*(self + 16) sharedApplication];
    v3 = [sharedApplication applicationState] == 2;

    atomic_store(v3, (self + 8));
  }
}

@end
@interface MPHomeMonitor
+ (BOOL)isCurrentDeviceValidHomeAccessory;
+ (MPHomeMonitor)sharedMonitor;
+ (void)setupIfNecessary;
- (BOOL)isSoundCheckEnabled;
- (MPHomeMonitor)init;
- (void)_postNotificationWithName:(id)a3;
- (void)setSoundCheckEnabled:(BOOL)a3;
@end

@implementation MPHomeMonitor

+ (BOOL)isCurrentDeviceValidHomeAccessory
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = [MEMORY[0x1E69E4420] currentDeviceInfo];
    v4 = [v3 isAudioAccessory];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)_postNotificationWithName:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "<MPHomeMonitor %p> Posting Notification: %@", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:v4 object:self];
}

- (void)setSoundCheckEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[MPHomeManagerObserver sharedObserver];
  [v4 setSoundCheckEnabled:v3];
}

- (BOOL)isSoundCheckEnabled
{
  v2 = +[MPHomeManagerObserver sharedObserver];
  v3 = [v2 isSoundCheckEnabled];

  return v3;
}

- (MPHomeMonitor)init
{
  v7.receiver = self;
  v7.super_class = MPHomeMonitor;
  v2 = [(MPHomeMonitor *)&v7 init];
  if (v2)
  {
    v3 = +[MPHomeManagerObserver sharedObserver];
    [v3 setDelegate:v2];

    if (!+[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
    {
      v4 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_FAULT, "MPHomeMonitor initialized for non-valid accessory", v6, 2u);
      }
    }
  }

  return v2;
}

+ (MPHomeMonitor)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, &__block_literal_global_14269);
  }

  v3 = sharedMonitor___sharedMonitor;

  return v3;
}

void __30__MPHomeMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(MPHomeMonitor);
  v1 = sharedMonitor___sharedMonitor;
  sharedMonitor___sharedMonitor = v0;
}

+ (void)setupIfNecessary
{
  v11 = *MEMORY[0x1E69E9840];
  if (+[MPHomeMonitor isCurrentDeviceValidHomeAccessory])
  {
    v2 = +[MPHomeMonitor sharedMonitor];
    v3 = +[MPHomeManagerObserver sharedObserver];
    v4 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 setupDidComplete];
      v6 = @"Setting up";
      if (v5)
      {
        v6 = @"Setup complete";
      }

      v7 = 134218242;
      v8 = v2;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[MPHomeMonitor setupIfNecessary:] <MPHomeMonitor %p> %@", &v7, 0x16u);
    }
  }

  else
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Preferences");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "[MPHomeMonitor setupIfNecessary:] Ignoring - Device is not valid home accessory", &v7, 2u);
    }
  }
}

@end
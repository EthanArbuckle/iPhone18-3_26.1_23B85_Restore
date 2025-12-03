@interface MusicKit_SoftLinking_MPPlaybackUserDefaults
+ (MusicKit_SoftLinking_MPPlaybackUserDefaults)standardUserDefaults;
- (BOOL)isPrivateListeningEnabled;
- (id)_initWithUnderlyingPlaybackUserDefaults:(id)defaults;
- (int64_t)preferredMusicLowBandwidthResolution;
- (int64_t)preferredVideoLowBandwidthResolution;
- (void)_handlePreferredResolutionsDidChangeNotification:(id)notification;
- (void)dealloc;
@end

@implementation MusicKit_SoftLinking_MPPlaybackUserDefaults

+ (MusicKit_SoftLinking_MPPlaybackUserDefaults)standardUserDefaults
{
  if (standardUserDefaults_sOnceToken != -1)
  {
    +[MusicKit_SoftLinking_MPPlaybackUserDefaults standardUserDefaults];
  }

  v3 = standardUserDefaults_sStandardUserDefaults;

  return v3;
}

- (id)_initWithUnderlyingPlaybackUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPPlaybackUserDefaults;
  v6 = [(MusicKit_SoftLinking_MPPlaybackUserDefaults *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPlaybackUserDefaults, defaults);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handlePreferredResolutionsDidChangeNotification_ name:v9 object:v7->_underlyingPlaybackUserDefaults];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:self->_underlyingPlaybackUserDefaults];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPPlaybackUserDefaults;
  [(MusicKit_SoftLinking_MPPlaybackUserDefaults *)&v5 dealloc];
}

- (int64_t)preferredMusicLowBandwidthResolution
{
  preferredMusicLowBandwidthResolution = [(MPPlaybackUserDefaults *)self->_underlyingPlaybackUserDefaults preferredMusicLowBandwidthResolution];
  v3 = 4;
  if (preferredMusicLowBandwidthResolution != 192000)
  {
    v3 = 0;
  }

  if (preferredMusicLowBandwidthResolution == 48000)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  v5 = 1;
  v6 = 2;
  if (preferredMusicLowBandwidthResolution != 256)
  {
    v6 = 0;
  }

  if (preferredMusicLowBandwidthResolution != 64)
  {
    v5 = v6;
  }

  if (preferredMusicLowBandwidthResolution <= 47999)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (int64_t)preferredVideoLowBandwidthResolution
{
  preferredVideoLowBandwidthResolution = [(MPPlaybackUserDefaults *)self->_underlyingPlaybackUserDefaults preferredVideoLowBandwidthResolution];
  if (preferredVideoLowBandwidthResolution == 1000000)
  {
    return 2;
  }

  else
  {
    return preferredVideoLowBandwidthResolution == 1000;
  }
}

- (BOOL)isPrivateListeningEnabled
{
  isPrivateListeningEnabled = [(MPPlaybackUserDefaults *)self->_underlyingPlaybackUserDefaults isPrivateListeningEnabled];
  bOOLValue = [isPrivateListeningEnabled BOOLValue];

  return bOOLValue;
}

- (void)_handlePreferredResolutionsDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:self userInfo:userInfo];
}

@end
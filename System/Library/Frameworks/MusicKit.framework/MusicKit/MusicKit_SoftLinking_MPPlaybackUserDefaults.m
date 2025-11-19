@interface MusicKit_SoftLinking_MPPlaybackUserDefaults
+ (MusicKit_SoftLinking_MPPlaybackUserDefaults)standardUserDefaults;
- (BOOL)isPrivateListeningEnabled;
- (id)_initWithUnderlyingPlaybackUserDefaults:(id)a3;
- (int64_t)preferredMusicLowBandwidthResolution;
- (int64_t)preferredVideoLowBandwidthResolution;
- (void)_handlePreferredResolutionsDidChangeNotification:(id)a3;
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

- (id)_initWithUnderlyingPlaybackUserDefaults:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPPlaybackUserDefaults;
  v6 = [(MusicKit_SoftLinking_MPPlaybackUserDefaults *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPlaybackUserDefaults, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handlePreferredResolutionsDidChangeNotification_ name:v9 object:v7->_underlyingPlaybackUserDefaults];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = getMPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification();
  [v3 removeObserver:self name:v4 object:self->_underlyingPlaybackUserDefaults];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPPlaybackUserDefaults;
  [(MusicKit_SoftLinking_MPPlaybackUserDefaults *)&v5 dealloc];
}

- (int64_t)preferredMusicLowBandwidthResolution
{
  v2 = [(MPPlaybackUserDefaults *)self->_underlyingPlaybackUserDefaults preferredMusicLowBandwidthResolution];
  v3 = 4;
  if (v2 != 192000)
  {
    v3 = 0;
  }

  if (v2 == 48000)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  v5 = 1;
  v6 = 2;
  if (v2 != 256)
  {
    v6 = 0;
  }

  if (v2 != 64)
  {
    v5 = v6;
  }

  if (v2 <= 47999)
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
  v2 = [(MPPlaybackUserDefaults *)self->_underlyingPlaybackUserDefaults preferredVideoLowBandwidthResolution];
  if (v2 == 1000000)
  {
    return 2;
  }

  else
  {
    return v2 == 1000;
  }
}

- (BOOL)isPrivateListeningEnabled
{
  v2 = [(MPPlaybackUserDefaults *)self->_underlyingPlaybackUserDefaults isPrivateListeningEnabled];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_handlePreferredResolutionsDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification" object:self userInfo:v6];
}

@end
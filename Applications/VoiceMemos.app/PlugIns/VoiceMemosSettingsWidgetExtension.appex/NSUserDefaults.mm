@interface NSUserDefaults
+ (BOOL)_isRunningInVoiceMemos;
+ (id)voiceMemosUserDefaults;
- (BOOL)rc_useLocationBasedNaming;
- (BOOL)rc_useStereoRecording;
- (int64_t)rc_audioQuality;
- (int64_t)rc_channelConfiguration;
- (int64_t)rc_recentlyDeletedWindow;
- (void)rc_setAudioQuality:(int64_t)a3;
- (void)rc_setChannelConfiguration:(int64_t)a3;
- (void)rc_setRecentlyDeletedWindow:(int64_t)a3;
- (void)settingsChangedPostNotification;
@end

@implementation NSUserDefaults

- (int64_t)rc_recentlyDeletedWindow
{
  v2 = [(NSUserDefaults *)self objectForKey:@"RCVoiceMemosRecentlyDeletedWindowKey"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (void)rc_setRecentlyDeletedWindow:(int64_t)a3
{
  [(NSUserDefaults *)self setInteger:a3 forKey:@"RCVoiceMemosRecentlyDeletedWindowKey"];

  [(NSUserDefaults *)self settingsChangedPostNotification];
}

- (int64_t)rc_audioQuality
{
  v2 = [(NSUserDefaults *)self objectForKey:@"RCVoiceMemosAudioQualityKey"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)rc_setAudioQuality:(int64_t)a3
{
  [(NSUserDefaults *)self setInteger:a3 forKey:@"RCVoiceMemosAudioQualityKey"];

  [(NSUserDefaults *)self settingsChangedPostNotification];
}

- (int64_t)rc_channelConfiguration
{
  v2 = [(NSUserDefaults *)self objectForKey:@"RCVoiceMemosChannelConfigurationKey"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)rc_setChannelConfiguration:(int64_t)a3
{
  [(NSUserDefaults *)self setInteger:a3 forKey:@"RCVoiceMemosChannelConfigurationKey"];

  [(NSUserDefaults *)self settingsChangedPostNotification];
}

- (BOOL)rc_useLocationBasedNaming
{
  v2 = [(NSUserDefaults *)self objectForKey:@"RCVoiceMemosUseLocationBasedNaming"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)rc_useStereoRecording
{
  v2 = [(NSUserDefaults *)self objectForKey:@"RCVoiceMemosStereoRecordingKey"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)settingsChangedPostNotification
{
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RCVoiceMemosSettingsDidChangeNotification" object:0 userInfo:0 deliverImmediately:1];
}

+ (BOOL)_isRunningInVoiceMemos
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.VoiceMemos"];

  return v4;
}

+ (id)voiceMemosUserDefaults
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001BFC;
  block[3] = &unk_100024E88;
  block[4] = a1;
  if (qword_100028ED8 != -1)
  {
    dispatch_once(&qword_100028ED8, block);
  }

  v2 = qword_100028ED0;

  return v2;
}

@end
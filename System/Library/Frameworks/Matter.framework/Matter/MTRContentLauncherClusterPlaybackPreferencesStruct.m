@interface MTRContentLauncherClusterPlaybackPreferencesStruct
- (MTRContentLauncherClusterPlaybackPreferencesStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRContentLauncherClusterPlaybackPreferencesStruct

- (MTRContentLauncherClusterPlaybackPreferencesStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRContentLauncherClusterPlaybackPreferencesStruct;
  v2 = [(MTRContentLauncherClusterPlaybackPreferencesStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    playbackPosition = v2->_playbackPosition;
    v2->_playbackPosition = &unk_284C3E588;

    v5 = objc_opt_new();
    textTrack = v3->_textTrack;
    v3->_textTrack = v5;

    audioTracks = v3->_audioTracks;
    v3->_audioTracks = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRContentLauncherClusterPlaybackPreferencesStruct);
  v5 = [(MTRContentLauncherClusterPlaybackPreferencesStruct *)self playbackPosition];
  [(MTRContentLauncherClusterPlaybackPreferencesStruct *)v4 setPlaybackPosition:v5];

  v6 = [(MTRContentLauncherClusterPlaybackPreferencesStruct *)self textTrack];
  [(MTRContentLauncherClusterPlaybackPreferencesStruct *)v4 setTextTrack:v6];

  v7 = [(MTRContentLauncherClusterPlaybackPreferencesStruct *)self audioTracks];
  [(MTRContentLauncherClusterPlaybackPreferencesStruct *)v4 setAudioTracks:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: playbackPosition:%@ textTrack:%@; audioTracks:%@; >", v5, self->_playbackPosition, self->_textTrack, self->_audioTracks];;

  return v6;
}

@end
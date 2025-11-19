@interface MTEpisodeActionController
- (id)allActions;
- (id)dependentKeys;
- (void)reloadActions;
@end

@implementation MTEpisodeActionController

- (id)allActions
{
  v2 = +[MTEpisodeActionFactory viewAction];
  v10[0] = v2;
  v3 = +[MTEpisodeActionFactory playNextAction];
  v10[1] = v3;
  v4 = +[MTEpisodeActionFactory addToUpNextAction];
  v10[2] = v4;
  v5 = +[MTEpisodeActionFactory markUnplayedAction];
  v10[3] = v5;
  v6 = +[MTEpisodeActionFactory markPlayedAction];
  v10[4] = v6;
  v7 = +[MTEpisodeActionFactory shareAction];
  v10[5] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:6];

  return v8;
}

- (void)reloadActions
{
  v3 = [(IMActionController *)self actionObject];
  v4 = [(MTEpisodeActionController *)self dependentKeys];
  v5 = [v3 dictionaryWithValuesForKeys:v4];

  if (!-[NSDictionary isEqualToDictionary:](self->_episodeDict, "isEqualToDictionary:", v5) && [v5 count])
  {
    objc_storeStrong(&self->_episodeDict, v5);
    v6.receiver = self;
    v6.super_class = MTEpisodeActionController;
    [(IMActionController *)&v6 reloadActions];
  }
}

- (id)dependentKeys
{
  v4[0] = kEpisodeUuid;
  v4[1] = kEpisodeAssetURL;
  v4[2] = kEpisodePersistentID;
  v4[3] = kEpisodePlayState;
  v4[4] = kEpisodePlayStateManuallySet;
  v4[5] = kEpisodeIsFromiTunesSync;
  v4[6] = kEpisodeExternalType;
  v4[7] = kEpisodeAudio;
  v4[8] = kEpisodeVideo;
  v2 = [NSArray arrayWithObjects:v4 count:9];

  return v2;
}

@end
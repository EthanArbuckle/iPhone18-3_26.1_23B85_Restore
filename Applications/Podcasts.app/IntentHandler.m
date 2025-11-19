@interface IntentHandler
- (BOOL)_intentWantsPlaybackQueueIncludedInNowPlayingInfo:(id)a3;
- (id)_playbackRequestURLForIntent:(id)a3;
- (id)_responseForCode:(int64_t)a3;
- (id)_responseForMediaRemoteStatus:(unsigned int)a3 error:(unsigned int)a4;
- (void)confirmPlayMedia:(id)a3 completion:(id)a4;
- (void)handlePlayMedia:(id)a3 completion:(id)a4;
@end

@implementation IntentHandler

- (void)handlePlayMedia:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IntentHandler *)self _playbackRequestURLForIntent:v6];
  if ([v8 length])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001477DC;
    v12[3] = &unk_1004DDBF0;
    v12[4] = self;
    v13 = v7;
    [MTExtensionPlaybackController setQueueWithPlaybackRequestIdentifier:v8 mrCompletion:v12];
    v9 = v13;
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v10 = _MTLogCategorySiri();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 mediaContainer];
      *buf = 134217984;
      v15 = [v11 type];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Siri Actions failed to play media.  Unhandled media container type: %lu", buf, 0xCu);
    }

    v9 = [(IntentHandler *)self _responseForCode:6];
    (*(v7 + 2))(v7, v9);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)confirmPlayMedia:(id)a3 completion:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (!self->_playbackController)
  {
    v7 = objc_alloc_init(MTExtensionPlaybackController);
    playbackController = self->_playbackController;
    self->_playbackController = v7;
  }

  v9 = [v15 mediaContainer];
  v10 = [v9 identifier];

  if ([v10 length])
  {
    v11 = [(IntentHandler *)self _playbackRequestURLForIntent:v15];
    v12 = +[NSMutableDictionary dictionary];
    if ([(IntentHandler *)self _intentWantsPlaybackQueueIncludedInNowPlayingInfo:v15])
    {
      [MTExtensionPlaybackController playbackQueueForIdentifier:v11 startPlayback:1 assetInfo:0];
      v13 = MRSystemAppPlaybackQueueCreateExternalRepresentation();
      if (v13)
      {
        [v12 setObject:v13 forKey:kMRMediaRemoteOptionSystemAppPlaybackQueueData];
      }

      MRSystemAppPlaybackQueueDestroy();
    }

    if (v6)
    {
      v14 = [(IntentHandler *)self _responseForCode:4];
      [v14 setNowPlayingInfo:v12];
      v6[2](v6, v14);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v11 = [(IntentHandler *)self _responseForCode:6];
    v6[2](v6, v11);
  }

LABEL_14:
}

- (id)_playbackRequestURLForIntent:(id)a3
{
  v3 = a3;
  v4 = [v3 mediaContainer];
  v5 = [v4 identifier];

  v6 = [v3 mediaItems];
  v7 = [v6 firstObject];
  v8 = [v7 identifier];

  v9 = [[MTURLCommandRequest alloc] initWithURLString:v8];
  v10 = [(MTURLCommandRequest *)v9 playQueueType];

  if (v10)
  {
    v11 = v8;
LABEL_5:
    v14 = v11;
    goto LABEL_6;
  }

  v12 = [[MTURLCommandRequest alloc] initWithURLString:v5];
  v13 = [(MTURLCommandRequest *)v12 playQueueType];

  if (v13)
  {
    v11 = v5;
    goto LABEL_5;
  }

  v16 = [v3 mediaContainer];
  v17 = [v16 type];

  if (v17 == 6)
  {
    v18 = +[MTPlaybackIdentifierUtil sharedInstance];
    v19 = [v18 localPlaybackQueueIdentifierForPodcastUuid:v5 episodeUuid:v8 sampPlaybackOrder:SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue];
LABEL_13:
    v14 = v19;

    goto LABEL_6;
  }

  v20 = [v3 mediaContainer];
  v21 = [v20 type];

  if (v21 == 8)
  {
    v18 = +[MTPlaybackIdentifierUtil sharedInstance];
    v19 = [v18 localPlaybackQueueIdentifierForStationUuid:v5 episodeUuid:v8];
    goto LABEL_13;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (BOOL)_intentWantsPlaybackQueueIncludedInNowPlayingInfo:(id)a3
{
  v3 = [a3 mediaContainer];
  v4 = [v3 identifier];
  v5 = [v4 containsString:@"&includePlaybackQueue=true"];

  return v5;
}

- (id)_responseForMediaRemoteStatus:(unsigned int)a3 error:(unsigned int)a4
{
  v4 = 4;
  v5 = 10;
  v6 = 6;
  if (a3 == 1)
  {
    v6 = 9;
  }

  if (a3 != 10)
  {
    v5 = v6;
  }

  if (a3)
  {
    v4 = v5;
  }

  if (a4)
  {
    v7 = 6;
  }

  else
  {
    v7 = v4;
  }

  v8 = [(IntentHandler *)self _responseForCode:v7];

  return v8;
}

- (id)_responseForCode:(int64_t)a3
{
  v3 = [[INPlayMediaIntentResponse alloc] initWithCode:a3 userActivity:0];

  return v3;
}

@end
@interface IntentHandler
- (BOOL)_intentWantsPlaybackQueueIncludedInNowPlayingInfo:(id)info;
- (id)_playbackRequestURLForIntent:(id)intent;
- (id)_responseForCode:(int64_t)code;
- (id)_responseForMediaRemoteStatus:(unsigned int)status error:(unsigned int)error;
- (void)confirmPlayMedia:(id)media completion:(id)completion;
- (void)handlePlayMedia:(id)media completion:(id)completion;
@end

@implementation IntentHandler

- (void)handlePlayMedia:(id)media completion:(id)completion
{
  mediaCopy = media;
  completionCopy = completion;
  v8 = [(IntentHandler *)self _playbackRequestURLForIntent:mediaCopy];
  if ([v8 length])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001477DC;
    v12[3] = &unk_1004DDBF0;
    v12[4] = self;
    v13 = completionCopy;
    [MTExtensionPlaybackController setQueueWithPlaybackRequestIdentifier:v8 mrCompletion:v12];
    v9 = v13;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v10 = _MTLogCategorySiri();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      mediaContainer = [mediaCopy mediaContainer];
      *buf = 134217984;
      type = [mediaContainer type];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Siri Actions failed to play media.  Unhandled media container type: %lu", buf, 0xCu);
    }

    v9 = [(IntentHandler *)self _responseForCode:6];
    (*(completionCopy + 2))(completionCopy, v9);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)confirmPlayMedia:(id)media completion:(id)completion
{
  mediaCopy = media;
  completionCopy = completion;
  if (!self->_playbackController)
  {
    v7 = objc_alloc_init(MTExtensionPlaybackController);
    playbackController = self->_playbackController;
    self->_playbackController = v7;
  }

  mediaContainer = [mediaCopy mediaContainer];
  identifier = [mediaContainer identifier];

  if ([identifier length])
  {
    v11 = [(IntentHandler *)self _playbackRequestURLForIntent:mediaCopy];
    v12 = +[NSMutableDictionary dictionary];
    if ([(IntentHandler *)self _intentWantsPlaybackQueueIncludedInNowPlayingInfo:mediaCopy])
    {
      [MTExtensionPlaybackController playbackQueueForIdentifier:v11 startPlayback:1 assetInfo:0];
      v13 = MRSystemAppPlaybackQueueCreateExternalRepresentation();
      if (v13)
      {
        [v12 setObject:v13 forKey:kMRMediaRemoteOptionSystemAppPlaybackQueueData];
      }

      MRSystemAppPlaybackQueueDestroy();
    }

    if (completionCopy)
    {
      v14 = [(IntentHandler *)self _responseForCode:4];
      [v14 setNowPlayingInfo:v12];
      completionCopy[2](completionCopy, v14);
    }
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_14;
    }

    v11 = [(IntentHandler *)self _responseForCode:6];
    completionCopy[2](completionCopy, v11);
  }

LABEL_14:
}

- (id)_playbackRequestURLForIntent:(id)intent
{
  intentCopy = intent;
  mediaContainer = [intentCopy mediaContainer];
  identifier = [mediaContainer identifier];

  mediaItems = [intentCopy mediaItems];
  firstObject = [mediaItems firstObject];
  identifier2 = [firstObject identifier];

  v9 = [[MTURLCommandRequest alloc] initWithURLString:identifier2];
  playQueueType = [(MTURLCommandRequest *)v9 playQueueType];

  if (playQueueType)
  {
    v11 = identifier2;
LABEL_5:
    v14 = v11;
    goto LABEL_6;
  }

  v12 = [[MTURLCommandRequest alloc] initWithURLString:identifier];
  playQueueType2 = [(MTURLCommandRequest *)v12 playQueueType];

  if (playQueueType2)
  {
    v11 = identifier;
    goto LABEL_5;
  }

  mediaContainer2 = [intentCopy mediaContainer];
  type = [mediaContainer2 type];

  if (type == 6)
  {
    v18 = +[MTPlaybackIdentifierUtil sharedInstance];
    v19 = [v18 localPlaybackQueueIdentifierForPodcastUuid:identifier episodeUuid:identifier2 sampPlaybackOrder:SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue];
LABEL_13:
    v14 = v19;

    goto LABEL_6;
  }

  mediaContainer3 = [intentCopy mediaContainer];
  type2 = [mediaContainer3 type];

  if (type2 == 8)
  {
    v18 = +[MTPlaybackIdentifierUtil sharedInstance];
    v19 = [v18 localPlaybackQueueIdentifierForStationUuid:identifier episodeUuid:identifier2];
    goto LABEL_13;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (BOOL)_intentWantsPlaybackQueueIncludedInNowPlayingInfo:(id)info
{
  mediaContainer = [info mediaContainer];
  identifier = [mediaContainer identifier];
  v5 = [identifier containsString:@"&includePlaybackQueue=true"];

  return v5;
}

- (id)_responseForMediaRemoteStatus:(unsigned int)status error:(unsigned int)error
{
  v4 = 4;
  v5 = 10;
  v6 = 6;
  if (status == 1)
  {
    v6 = 9;
  }

  if (status != 10)
  {
    v5 = v6;
  }

  if (status)
  {
    v4 = v5;
  }

  if (error)
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

- (id)_responseForCode:(int64_t)code
{
  v3 = [[INPlayMediaIntentResponse alloc] initWithCode:code userActivity:0];

  return v3;
}

@end
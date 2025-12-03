@interface MTExtensionPlaybackController
+ (_MRSystemAppPlaybackQueue)playbackQueueForIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info;
+ (void)_setPlaybackQueueWithIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account playerID:(id)d mrCompletion:(id)completion;
+ (void)setQueueWithPlaybackRequestIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account completion:(id)completion;
@end

@implementation MTExtensionPlaybackController

+ (void)setQueueWithPlaybackRequestIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account completion:(id)completion
{
  playbackCopy = playback;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001B28;
  v15[3] = &unk_10002C720;
  completionCopy = completion;
  v14 = completionCopy;
  [self setQueueWithPlaybackRequestIdentifier:identifier startPlayback:playbackCopy assetInfo:info requesterSharedUserId:id sharedUserIdFromPlayableITunesAccount:account mrCompletion:v15];
}

+ (void)_setPlaybackQueueWithIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info requesterSharedUserId:(id)id sharedUserIdFromPlayableITunesAccount:(id)account playerID:(id)d mrCompletion:(id)completion
{
  playbackCopy = playback;
  identifierCopy = identifier;
  infoCopy = info;
  idCopy = id;
  accountCopy = account;
  dCopy = d;
  completionCopy = completion;
  if ([identifierCopy length])
  {
    [self playbackQueueForIdentifier:identifierCopy startPlayback:playbackCopy assetInfo:infoCopy];
    v21 = [NSMutableDictionary dictionaryWithCapacity:2];
    v22 = v21;
    if (idCopy)
    {
      [v21 setObject:idCopy forKey:@"requesterUserId"];
    }

    v30 = idCopy;
    v23 = infoCopy;
    if (accountCopy)
    {
      [v22 setObject:accountCopy forKey:@"sharedUserId"];
    }

    MRSystemAppPlaybackQueueSetUserInfo();
    v24 = dispatch_get_global_queue(0, 0);
    MRMediaRemoteGetLocalOrigin();
    v25 = MRNowPlayingClientCreate();
    v29 = dCopy;
    v26 = MRNowPlayingPlayerCreate();
    MRNowPlayingPlayerPathCreate();
    if (v25)
    {
      CFRelease(v25);
    }

    infoCopy = v23;
    if (v26)
    {
      CFRelease(v26);
    }

    v33 = kMRMediaRemoteOptionAssistantSetQueueTrueCompletion;
    v34 = &off_10002DE30;
    v27 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v31 = completionCopy;
    MRMediaRemoteSetAppPlaybackQueueForPlayer();

    dCopy = v29;
    idCopy = v30;
  }

  else
  {
    v28 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to set playback queue: empty playback request identifier provided", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 2, 7);
    }
  }
}

+ (_MRSystemAppPlaybackQueue)playbackQueueForIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info
{
  infoCopy = info;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [NSArray arrayWithObjects:&identifierCopy count:1];

  v8 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();
  MRSystemAppPlaybackQueueSetTracklistShuffleMode();
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  if ([infoCopy length])
  {
    MRSystemAppPlaybackQueueSetSiriAssetInfo();
  }

  MRSystemAppPlaybackQueueSetFeatureName();

  return v8;
}

@end
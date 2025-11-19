@interface MTExtensionPlaybackController
+ (_MRSystemAppPlaybackQueue)playbackQueueForIdentifier:(id)a3 startPlayback:(BOOL)a4 assetInfo:(id)a5;
+ (void)_setPlaybackQueueWithIdentifier:(id)a3 startPlayback:(BOOL)a4 assetInfo:(id)a5 requesterSharedUserId:(id)a6 sharedUserIdFromPlayableITunesAccount:(id)a7 playerID:(id)a8 mrCompletion:(id)a9;
+ (void)setQueueWithPlaybackRequestIdentifier:(id)a3 startPlayback:(BOOL)a4 assetInfo:(id)a5 requesterSharedUserId:(id)a6 sharedUserIdFromPlayableITunesAccount:(id)a7 completion:(id)a8;
@end

@implementation MTExtensionPlaybackController

+ (void)setQueueWithPlaybackRequestIdentifier:(id)a3 startPlayback:(BOOL)a4 assetInfo:(id)a5 requesterSharedUserId:(id)a6 sharedUserIdFromPlayableITunesAccount:(id)a7 completion:(id)a8
{
  v11 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001435A0;
  v15[3] = &unk_1004DDB70;
  v16 = a8;
  v14 = v16;
  [a1 setQueueWithPlaybackRequestIdentifier:a3 startPlayback:v11 assetInfo:a5 requesterSharedUserId:a6 sharedUserIdFromPlayableITunesAccount:a7 mrCompletion:v15];
}

+ (void)_setPlaybackQueueWithIdentifier:(id)a3 startPlayback:(BOOL)a4 assetInfo:(id)a5 requesterSharedUserId:(id)a6 sharedUserIdFromPlayableITunesAccount:(id)a7 playerID:(id)a8 mrCompletion:(id)a9
{
  v13 = a4;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if ([v15 length])
  {
    [a1 playbackQueueForIdentifier:v15 startPlayback:v13 assetInfo:v16];
    v21 = [NSMutableDictionary dictionaryWithCapacity:2];
    v22 = v21;
    if (v17)
    {
      [v21 setObject:v17 forKey:@"requesterUserId"];
    }

    v30 = v17;
    v23 = v16;
    if (v18)
    {
      [v22 setObject:v18 forKey:@"sharedUserId"];
    }

    MRSystemAppPlaybackQueueSetUserInfo();
    v24 = dispatch_get_global_queue(0, 0);
    MRMediaRemoteGetLocalOrigin();
    v25 = MRNowPlayingClientCreate();
    v29 = v19;
    v26 = MRNowPlayingPlayerCreate();
    MRNowPlayingPlayerPathCreate();
    if (v25)
    {
      CFRelease(v25);
    }

    v16 = v23;
    if (v26)
    {
      CFRelease(v26);
    }

    v33 = kMRMediaRemoteOptionAssistantSetQueueTrueCompletion;
    v34 = &off_100501720;
    v27 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v31 = v20;
    MRMediaRemoteSetAppPlaybackQueueForPlayer();

    v19 = v29;
    v17 = v30;
  }

  else
  {
    v28 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to set playback queue: empty playback request identifier provided", buf, 2u);
    }

    if (v20)
    {
      (*(v20 + 2))(v20, 2, 7);
    }
  }
}

+ (_MRSystemAppPlaybackQueue)playbackQueueForIdentifier:(id)a3 startPlayback:(BOOL)a4 assetInfo:(id)a5
{
  v6 = a5;
  v10 = a3;
  v7 = a3;
  [NSArray arrayWithObjects:&v10 count:1];

  v8 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();
  MRSystemAppPlaybackQueueSetTracklistShuffleMode();
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  if ([v6 length])
  {
    MRSystemAppPlaybackQueueSetSiriAssetInfo();
  }

  MRSystemAppPlaybackQueueSetFeatureName();

  return v8;
}

@end
@interface MTRemoteSetPlaybackQueueUtil
+ (id)_entityForFetchRequest:(id)a3;
+ (int64_t)requestStatusForMediaRemoteStatus:(unsigned int)a3;
+ (void)_destinationForRequest:(id)a3 completion:(id)a4;
+ (void)convertActiveEndpointToBufferedAirPlayWithCompletion:(id)a3;
+ (void)decodeAndSetPlaybackQueueForController:(id)a3 fromIdentifiers:(id)a4 sessionIdentifierOverride:(id)a5 enqueuer:(id)a6 accountLookupFailed:(BOOL)a7 startPlayback:(BOOL)a8 upNextQueueIntent:(unint64_t)a9 completion:(id)a10;
+ (void)insertEpisodeUuids:(id)a3 intoPlaybackQueueAtPosition:(int)a4;
+ (void)insertPlayerItems:(id)a3 intoPlaybackQueueAtPosition:(int)a4;
+ (void)performRequestAsBufferedAirPlay:(id)a3;
+ (void)pickRouteAndSwitchToLocalCard:(id)a3 completion:(id)a4;
+ (void)promptBeforePerformingRequestAsBufferedAirPlay:(id)a3 queueStatus:(unint64_t)a4;
+ (void)sendPlaybackQueueToLocalDestination:(_MRSystemAppPlaybackQueue *)a3 context:(id)a4 completion:(id)a5;
+ (void)setRemotePlaybackQueue:(id)a3 completion:(id)a4;
@end

@implementation MTRemoteSetPlaybackQueueUtil

+ (void)setRemotePlaybackQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 manifest];
  v9 = [v6 context];
  v10 = [v9 isInteractive];

  v20 = 0;
  v11 = +[MTPlaybackIdentifierUtil sharedInstance];
  v12 = [v11 playbackQueueWithAccountInfoForManifest:v8 queueStatus:&v20];

  if (v20)
  {
    if (v10)
    {
      [a1 promptBeforePerformingRequestAsBufferedAirPlay:v6 queueStatus:?];
    }

    else
    {
      [a1 performRequestAsBufferedAirPlay:v6];
    }
  }

  else
  {
    [v6 startPlayback];
    MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
    v13 = [v6 context];
    [v13 upNextQueueIntent];

    MRSystemAppPlaybackQueueSetReplaceIntent();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E4800;
    v14[3] = &unk_1004DBDD0;
    v15 = v6;
    v16 = v7;
    v17 = v12;
    v18 = a1;
    v19 = v10;
    [a1 _destinationForRequest:v15 completion:v14];
  }
}

+ (void)sendPlaybackQueueToLocalDestination:(_MRSystemAppPlaybackQueue *)a3 context:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MPCAssistantRemoteControlDestination alloc];
  v10 = [v9 initWithAppBundleID:kMTApplicationBundleIdentifier playerID:kPodcastsPlayerID origin:0];
  v11 = objc_alloc_init(NSMutableDictionary);
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  if (ExternalRepresentation)
  {
    [v11 setObject:ExternalRepresentation forKey:kMRMediaRemoteOptionSystemAppPlaybackQueueData];
  }

  if (v7)
  {
    [v11 setObject:v7 forKey:kMRMediaRemoteOptionContextID];
  }

  v13 = objc_alloc_init(MPCAssistantCommand);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E4D50;
  v15[3] = &unk_1004DBDF8;
  v16 = v8;
  v17 = a1;
  v14 = v8;
  [v13 sendCommand:122 toDestination:v10 withOptions:v11 completion:v15];
}

+ (void)promptBeforePerformingRequestAsBufferedAirPlay:(id)a3 queueStatus:(unint64_t)a4
{
  v6 = a3;
  if (isTV())
  {
    [a1 performRequestAsBufferedAirPlay:v6];
  }

  else
  {
    v7 = +[MTPlayerController defaultInstance];
    v8 = [v7 playerPath];
    v9 = [v8 route];

    v10 = [v6 manifest];
    v11 = [v10 currentItem];
    v12 = [v11 episode];

    v13 = [v12 podcast];
    v14 = [v13 provider];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E4FC8;
    v15[3] = &unk_1004DBE20;
    v17 = a1;
    v16 = v6;
    [MTEpisodeUnavailableUtil promptBeforePerformingIntentAsBufferedAirPlayForRoute:v9 provider:v14 queueStatus:a4 completion:v15];
  }
}

+ (void)performRequestAsBufferedAirPlay:(id)a3
{
  v4 = a3;
  v5 = [v4 completion];
  v6 = [v4 startPlayback];
  v7 = [v4 context];
  v8 = [v7 source];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E512C;
  v13[3] = &unk_1004DBE48;
  v16 = v6;
  v14 = v5;
  v15 = v8;
  v9 = v5;
  [v4 setCompletion:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E51D0;
  v11[3] = &unk_1004D8C08;
  v12 = v4;
  v10 = v4;
  [a1 convertActiveEndpointToBufferedAirPlayWithCompletion:v11];
}

+ (void)convertActiveEndpointToBufferedAirPlayWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[MTPlayerController defaultInstance];
  v6 = [v5 playerPath];
  v7 = [v6 route];

  [a1 pickRouteAndSwitchToLocalCard:v7 completion:v4];
}

+ (void)pickRouteAndSwitchToLocalCard:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MPAVRoutingController alloc] initWithName:@"PodcastsRemoteSetPlaybackQueueUtil"];
  if (!v5)
  {
    v5 = +[MPAVRoutingController systemRoute];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E53E8;
  v9[3] = &unk_1004DAF38;
  v10 = v6;
  v8 = v6;
  [v7 selectRoute:v5 operation:0 completion:v9];
}

+ (void)decodeAndSetPlaybackQueueForController:(id)a3 fromIdentifiers:(id)a4 sessionIdentifierOverride:(id)a5 enqueuer:(id)a6 accountLookupFailed:(BOOL)a7 startPlayback:(BOOL)a8 upNextQueueIntent:(unint64_t)a9 completion:(id)a10
{
  v10 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a10;
  v19 = +[PFClientUtil isRunningOnHomepod];
  if (v17 && v19)
  {
    v20 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Overriding active account, enqueuer: %@", buf, 0xCu);
    }

    v21 = +[MTAccountController sharedInstance];
    [v21 setAccountOverride:v17];

    goto LABEL_7;
  }

  v22 = +[MTAccountController sharedInstance];
  [v22 setAccountOverride:0];

  if (v17)
  {
LABEL_7:
    v23 = +[MTAccountController sharedInstance];
    v10 = [v23 isPrimaryUserActiveAccount] ^ 1;
  }

  v24 = [v14 upNextController];
  v25 = [v24 count];

  v26 = [v14 upNextController];
  v27 = [v26 upNextOffset];

  if (a9 || v25 == v27)
  {
    v29 = +[MTPlaybackIdentifierUtil sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000E57E4;
    v31[3] = &unk_1004DBE98;
    v32 = v15;
    v35 = v18;
    v36 = 7;
    v33 = v16;
    v37 = a9;
    v38 = a8;
    v34 = v14;
    [v29 fetchPlayerItemsForPlaybackQueueRequestIdentifiers:v32 initiatedByAnotherUser:v10 completion:v31];
  }

  else
  {
    v28 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v15;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Asking for queue confirmation for identifiers %@", buf, 0xCu);
    }

    if (v18)
    {
      (*(v18 + 2))(v18, 8, 7);
    }
  }
}

+ (void)insertEpisodeUuids:(id)a3 intoPlaybackQueueAtPosition:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:*(*(&v14 + 1) + 8 * v12), v14];
        if (v13)
        {
          [v7 addObject:v13];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [a1 insertPlayerItems:v7 intoPlaybackQueueAtPosition:v4];
}

+ (void)insertPlayerItems:(id)a3 intoPlaybackQueueAtPosition:(int)a4
{
  v5 = a3;
  v6 = +[MTPlayerController defaultInstance];
  v7 = +[MTPlaybackIdentifierUtil sharedInstance];
  v8 = [v7 playbackQueueWithAccountInfoForPlayerItems:v5];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E5CE0;
  v9[3] = &unk_1004DBEF8;
  v9[4] = v8;
  v10 = a4;
  [v6 resolveActivePlayerPathWithCompletion:v9];
}

+ (int64_t)requestStatusForMediaRemoteStatus:(unsigned int)a3
{
  result = 1;
  if (a3 <= 2)
  {
    if (!a3)
    {
      return result;
    }

    if (a3 == 1)
    {
      return 3;
    }

    return 0;
  }

  if (a3 > 19)
  {
    if (a3 == 101)
    {
      return 8;
    }

    return 0;
  }

  if (a3 != 3)
  {
    if (a3 == 10)
    {
      return 4;
    }

    return 0;
  }

  return result;
}

+ (void)_destinationForRequest:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = +[MTPlayerController defaultInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E5FA8;
  v7[3] = &unk_1004DBF20;
  v8 = v4;
  v6 = v4;
  [v5 resolveActivePlayerPathWithCompletion:v7];
}

+ (id)_entityForFetchRequest:(id)a3
{
  v3 = a3;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100008A9C;
  v30 = sub_10003B524;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100008A9C;
  v24 = sub_10003B524;
  v25 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000E6300;
  v15 = &unk_1004DBF48;
  v18 = &v20;
  v6 = v5;
  v16 = v6;
  v7 = v3;
  v17 = v7;
  v19 = &v26;
  [v6 performBlockAndWait:&v12];
  if (v27[5])
  {
    v8 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v27[5];
      *buf = 138412290;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error fetching episodeGuid while setting play queue: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v10 = [v21[5] firstObject];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

@end
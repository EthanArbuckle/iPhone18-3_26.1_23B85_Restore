@interface MTRemoteSetPlaybackQueueUtil
+ (id)_entityForFetchRequest:(id)request;
+ (int64_t)requestStatusForMediaRemoteStatus:(unsigned int)status;
+ (void)_destinationForRequest:(id)request completion:(id)completion;
+ (void)convertActiveEndpointToBufferedAirPlayWithCompletion:(id)completion;
+ (void)decodeAndSetPlaybackQueueForController:(id)controller fromIdentifiers:(id)identifiers sessionIdentifierOverride:(id)override enqueuer:(id)enqueuer accountLookupFailed:(BOOL)failed startPlayback:(BOOL)playback upNextQueueIntent:(unint64_t)intent completion:(id)self0;
+ (void)insertEpisodeUuids:(id)uuids intoPlaybackQueueAtPosition:(int)position;
+ (void)insertPlayerItems:(id)items intoPlaybackQueueAtPosition:(int)position;
+ (void)performRequestAsBufferedAirPlay:(id)play;
+ (void)pickRouteAndSwitchToLocalCard:(id)card completion:(id)completion;
+ (void)promptBeforePerformingRequestAsBufferedAirPlay:(id)play queueStatus:(unint64_t)status;
+ (void)sendPlaybackQueueToLocalDestination:(_MRSystemAppPlaybackQueue *)destination context:(id)context completion:(id)completion;
+ (void)setRemotePlaybackQueue:(id)queue completion:(id)completion;
@end

@implementation MTRemoteSetPlaybackQueueUtil

+ (void)setRemotePlaybackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  manifest = [queueCopy manifest];
  context = [queueCopy context];
  isInteractive = [context isInteractive];

  v20 = 0;
  v11 = +[MTPlaybackIdentifierUtil sharedInstance];
  v12 = [v11 playbackQueueWithAccountInfoForManifest:manifest queueStatus:&v20];

  if (v20)
  {
    if (isInteractive)
    {
      [self promptBeforePerformingRequestAsBufferedAirPlay:queueCopy queueStatus:?];
    }

    else
    {
      [self performRequestAsBufferedAirPlay:queueCopy];
    }
  }

  else
  {
    [queueCopy startPlayback];
    MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
    context2 = [queueCopy context];
    [context2 upNextQueueIntent];

    MRSystemAppPlaybackQueueSetReplaceIntent();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E4800;
    v14[3] = &unk_1004DBDD0;
    v15 = queueCopy;
    v16 = completionCopy;
    v17 = v12;
    selfCopy = self;
    v19 = isInteractive;
    [self _destinationForRequest:v15 completion:v14];
  }
}

+ (void)sendPlaybackQueueToLocalDestination:(_MRSystemAppPlaybackQueue *)destination context:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v9 = [MPCAssistantRemoteControlDestination alloc];
  v10 = [v9 initWithAppBundleID:kMTApplicationBundleIdentifier playerID:kPodcastsPlayerID origin:0];
  v11 = objc_alloc_init(NSMutableDictionary);
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  if (ExternalRepresentation)
  {
    [v11 setObject:ExternalRepresentation forKey:kMRMediaRemoteOptionSystemAppPlaybackQueueData];
  }

  if (contextCopy)
  {
    [v11 setObject:contextCopy forKey:kMRMediaRemoteOptionContextID];
  }

  v13 = objc_alloc_init(MPCAssistantCommand);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000E4D50;
  v15[3] = &unk_1004DBDF8;
  v16 = completionCopy;
  selfCopy = self;
  v14 = completionCopy;
  [v13 sendCommand:122 toDestination:v10 withOptions:v11 completion:v15];
}

+ (void)promptBeforePerformingRequestAsBufferedAirPlay:(id)play queueStatus:(unint64_t)status
{
  playCopy = play;
  if (isTV())
  {
    [self performRequestAsBufferedAirPlay:playCopy];
  }

  else
  {
    v7 = +[MTPlayerController defaultInstance];
    playerPath = [v7 playerPath];
    route = [playerPath route];

    manifest = [playCopy manifest];
    currentItem = [manifest currentItem];
    episode = [currentItem episode];

    podcast = [episode podcast];
    provider = [podcast provider];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E4FC8;
    v15[3] = &unk_1004DBE20;
    selfCopy = self;
    v16 = playCopy;
    [MTEpisodeUnavailableUtil promptBeforePerformingIntentAsBufferedAirPlayForRoute:route provider:provider queueStatus:status completion:v15];
  }
}

+ (void)performRequestAsBufferedAirPlay:(id)play
{
  playCopy = play;
  completion = [playCopy completion];
  startPlayback = [playCopy startPlayback];
  context = [playCopy context];
  source = [context source];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E512C;
  v13[3] = &unk_1004DBE48;
  v16 = startPlayback;
  v14 = completion;
  v15 = source;
  v9 = completion;
  [playCopy setCompletion:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E51D0;
  v11[3] = &unk_1004D8C08;
  v12 = playCopy;
  v10 = playCopy;
  [self convertActiveEndpointToBufferedAirPlayWithCompletion:v11];
}

+ (void)convertActiveEndpointToBufferedAirPlayWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[MTPlayerController defaultInstance];
  playerPath = [v5 playerPath];
  route = [playerPath route];

  [self pickRouteAndSwitchToLocalCard:route completion:completionCopy];
}

+ (void)pickRouteAndSwitchToLocalCard:(id)card completion:(id)completion
{
  cardCopy = card;
  completionCopy = completion;
  v7 = [[MPAVRoutingController alloc] initWithName:@"PodcastsRemoteSetPlaybackQueueUtil"];
  if (!cardCopy)
  {
    cardCopy = +[MPAVRoutingController systemRoute];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E53E8;
  v9[3] = &unk_1004DAF38;
  v10 = completionCopy;
  v8 = completionCopy;
  [v7 selectRoute:cardCopy operation:0 completion:v9];
}

+ (void)decodeAndSetPlaybackQueueForController:(id)controller fromIdentifiers:(id)identifiers sessionIdentifierOverride:(id)override enqueuer:(id)enqueuer accountLookupFailed:(BOOL)failed startPlayback:(BOOL)playback upNextQueueIntent:(unint64_t)intent completion:(id)self0
{
  failedCopy = failed;
  controllerCopy = controller;
  identifiersCopy = identifiers;
  overrideCopy = override;
  enqueuerCopy = enqueuer;
  completionCopy = completion;
  v19 = +[PFClientUtil isRunningOnHomepod];
  if (enqueuerCopy && v19)
  {
    v20 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = enqueuerCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Overriding active account, enqueuer: %@", buf, 0xCu);
    }

    v21 = +[MTAccountController sharedInstance];
    [v21 setAccountOverride:enqueuerCopy];

    goto LABEL_7;
  }

  v22 = +[MTAccountController sharedInstance];
  [v22 setAccountOverride:0];

  if (enqueuerCopy)
  {
LABEL_7:
    v23 = +[MTAccountController sharedInstance];
    failedCopy = [v23 isPrimaryUserActiveAccount] ^ 1;
  }

  upNextController = [controllerCopy upNextController];
  v25 = [upNextController count];

  upNextController2 = [controllerCopy upNextController];
  upNextOffset = [upNextController2 upNextOffset];

  if (intent || v25 == upNextOffset)
  {
    v29 = +[MTPlaybackIdentifierUtil sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000E57E4;
    v31[3] = &unk_1004DBE98;
    v32 = identifiersCopy;
    v35 = completionCopy;
    v36 = 7;
    v33 = overrideCopy;
    intentCopy = intent;
    playbackCopy = playback;
    v34 = controllerCopy;
    [v29 fetchPlayerItemsForPlaybackQueueRequestIdentifiers:v32 initiatedByAnotherUser:failedCopy completion:v31];
  }

  else
  {
    v28 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = identifiersCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Asking for queue confirmation for identifiers %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 8, 7);
    }
  }
}

+ (void)insertEpisodeUuids:(id)uuids intoPlaybackQueueAtPosition:(int)position
{
  v4 = *&position;
  uuidsCopy = uuids;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [uuidsCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = uuidsCopy;
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

  [self insertPlayerItems:v7 intoPlaybackQueueAtPosition:v4];
}

+ (void)insertPlayerItems:(id)items intoPlaybackQueueAtPosition:(int)position
{
  itemsCopy = items;
  v6 = +[MTPlayerController defaultInstance];
  v7 = +[MTPlaybackIdentifierUtil sharedInstance];
  v8 = [v7 playbackQueueWithAccountInfoForPlayerItems:itemsCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E5CE0;
  v9[3] = &unk_1004DBEF8;
  v9[4] = v8;
  positionCopy = position;
  [v6 resolveActivePlayerPathWithCompletion:v9];
}

+ (int64_t)requestStatusForMediaRemoteStatus:(unsigned int)status
{
  result = 1;
  if (status <= 2)
  {
    if (!status)
    {
      return result;
    }

    if (status == 1)
    {
      return 3;
    }

    return 0;
  }

  if (status > 19)
  {
    if (status == 101)
    {
      return 8;
    }

    return 0;
  }

  if (status != 3)
  {
    if (status == 10)
    {
      return 4;
    }

    return 0;
  }

  return result;
}

+ (void)_destinationForRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v5 = +[MTPlayerController defaultInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E5FA8;
  v7[3] = &unk_1004DBF20;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 resolveActivePlayerPathWithCompletion:v7];
}

+ (id)_entityForFetchRequest:(id)request
{
  requestCopy = request;
  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

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
  v6 = mainOrPrivateContext;
  v16 = v6;
  v7 = requestCopy;
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

    firstObject = 0;
  }

  else
  {
    firstObject = [v21[5] firstObject];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return firstObject;
}

@end
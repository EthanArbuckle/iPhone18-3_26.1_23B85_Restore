@interface MTMediaRemoteController
- (AFMultiUserConnection)siriMultiUserConnection;
- (BOOL)_commandEventIsFromSiri:(id)siri;
- (BOOL)_commandEventIsInternal:(id)internal;
- (MTMediaRemoteController)initWithPlayerController:(id)controller;
- (MTPlayerController)playerController;
- (__CFArray)copySupportedCommands;
- (id)_skipBackwardCommandEvent;
- (id)_skipForwardCommandEvent;
- (id)accountFromQueueContainingDsid:(id)dsid error:(id *)error;
- (int64_t)findIndexOfCommand:(unsigned int)command inArray:(__CFArray *)array;
- (int64_t)remoteChangePlaybackRate:(id)rate;
- (int64_t)remoteNextTrack:(id)track;
- (int64_t)remotePause:(id)pause;
- (int64_t)remotePreviousTrack:(id)track;
- (void)_donateCurrentPlayerItem;
- (void)accountForRequesterUserId:(id)id completionHandler:(id)handler;
- (void)dealloc;
- (void)remoteInsertIntoPlaybackQueueCommand:(id)command completionHandler:(id)handler;
- (void)remotePlayCommand:(id)command completionHandler:(id)handler;
- (void)remotePlayItemInPlaybackQueueCommand:(id)command completionHandler:(id)handler;
- (void)remoteRemoveFromPlaybackQueueCommand:(id)command completionHandler:(id)handler;
- (void)remoteReorderPlaybackQueueCommand:(id)command completionHandler:(id)handler;
- (void)remoteSetPlaybackQueueCommand:(id)command isMagicMoment:(BOOL)moment completionHandler:(id)handler;
- (void)remoteSetPlaybackSessionCommand:(id)command completionHandler:(id)handler;
- (void)remoteTogglePlayPauseCommand:(id)command completionHandler:(id)handler;
- (void)sessionIdentifierDidChange;
- (void)updatePreferredSkipDurationsFromUserDefaults:(id)defaults forCommandCenter:(id)center;
- (void)updateRemoteSkipPreferenceFromDefaults:(id)defaults;
@end

@implementation MTMediaRemoteController

- (MTMediaRemoteController)initWithPlayerController:(id)controller
{
  controllerCopy = controller;
  player = [controllerCopy player];
  [(MTMediaRemoteController *)self setPlayerController:controllerCopy];
  playbackQueueController = [controllerCopy playbackQueueController];
  v7 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = player;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting setup of media remote controller for player: %@", buf, 0xCu);
  }

  v45.receiver = self;
  v45.super_class = MTMediaRemoteController;
  v8 = [(MTMediaRemoteController *)&v45 initWithPlayer:player];
  v9 = v8;
  if (v8)
  {
    [(MTMediaRemoteController *)v8 setPlaybackQueueController:playbackQueueController];
    [playbackQueueController setSessionDelegate:v9];
    commandCenter = [player commandCenter];
    insertIntoPlaybackQueueCommand = [commandCenter insertIntoPlaybackQueueCommand];
    [insertIntoPlaybackQueueCommand addTarget:v9 action:"remoteInsertIntoPlaybackQueueCommand:completionHandler:"];

    playItemInQueueCommand = [commandCenter playItemInQueueCommand];
    [playItemInQueueCommand addTarget:v9 action:"remotePlayItemInPlaybackQueueCommand:completionHandler:"];

    reorderQueueCommand = [commandCenter reorderQueueCommand];
    [reorderQueueCommand addTarget:v9 action:"remoteReorderPlaybackQueueCommand:completionHandler:"];

    removeFromPlaybackQueueCommand = [commandCenter removeFromPlaybackQueueCommand];
    [removeFromPlaybackQueueCommand addTarget:v9 action:"remoteRemoveFromPlaybackQueueCommand:completionHandler:"];

    setPlaybackQueueCommand = [commandCenter setPlaybackQueueCommand];
    [setPlaybackQueueCommand addTarget:v9 action:"remoteSetPlaybackQueueCommand:completionHandler:" usingExtendedStatus:1];

    playCommand = [commandCenter playCommand];
    [playCommand addTarget:v9 action:"remotePlayCommand:completionHandler:"];

    if (os_feature_enabled_red_sun())
    {
      setPlaybackQueueCommand2 = [commandCenter setPlaybackQueueCommand];
      [setPlaybackQueueCommand2 registerSupportedQueueType:8];
    }

    setPlaybackSessionCommand = [commandCenter setPlaybackSessionCommand];
    [setPlaybackSessionCommand addTarget:v9 action:"remoteSetPlaybackSessionCommand:completionHandler:"];

    setPlaybackSessionCommand2 = [commandCenter setPlaybackSessionCommand];
    v49 = @"com.apple.podcasts.MTPlaybackQueueController.GenericQueue";
    v20 = [NSArray arrayWithObjects:&v49 count:1];
    [setPlaybackSessionCommand2 setSupportedSessionTypes:v20];

    setPlaybackSessionCommand3 = [commandCenter setPlaybackSessionCommand];
    v48 = @"com.apple.podcasts.MTPlaybackQueueController.GenericQueue";
    v22 = [NSArray arrayWithObjects:&v48 count:1];
    [setPlaybackSessionCommand3 setExportableSessionTypes:v22];

    [MPRemoteCommandCenter updateLaunchCommandsWithConfigurationHandler:&stru_1004D9A60];
    v23 = +[IMAVPlayer sharedPlayer];
    LODWORD(v22) = player == v23;

    if (v22)
    {
      v24 = [MPRemoteCommandCenter alloc];
      v25 = [v24 initWithPlayerID:kMTPodcastsMagicMomentsPlayerID];
      [(MTMediaRemoteController *)v9 setMetadataCommandCenter:v25];

      metadataCommandCenter = [(MTMediaRemoteController *)v9 metadataCommandCenter];
      setPlaybackQueueCommand3 = [metadataCommandCenter setPlaybackQueueCommand];
      [setPlaybackQueueCommand3 addTarget:v9 action:"remoteSetMetadataPlaybackQueueCommand:completionHandler:" usingExtendedStatus:1];
    }

    objc_initWeak(buf, v9);
    v28 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
    v47[0] = kMTSkipForwardIntervalDefaultKey;
    v47[1] = kMTSkipBackwardsIntervalDefaultKey;
    v47[2] = kMTRemoteSkipInsteadOfNextTrackDefaultKey;
    v29 = [NSArray arrayWithObjects:v47 count:3];
    v30 = [NSSet setWithArray:v29];

    v31 = [[MTDefaultsChangeNotifier alloc] initWithProperties:v30 defaults:v28];
    defaultsObserver = v9->_defaultsObserver;
    v9->_defaultsObserver = v31;

    v33 = v9->_defaultsObserver;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100083BD0;
    v41[3] = &unk_1004D9A88;
    objc_copyWeak(&v44, buf);
    v34 = v28;
    v42 = v34;
    v35 = commandCenter;
    v43 = v35;
    [(MTDictionaryDiff *)v33 addCallback:v41];
    [(MTDefaultsChangeNotifier *)v9->_defaultsObserver start];
    [(MTMediaRemoteController *)v9 updatePreferredSkipDurationsFromUserDefaults:v34 forCommandCenter:v35];
    [(MTMediaRemoteController *)v9 updateRemoteSkipPreferenceFromDefaults:v34];
    v36 = +[MTSiriAnalyticsController sharedInstance];
    [(MTMediaRemoteController *)v9 setSiriAnalyticsController:v36];

    if (isTV())
    {
      [(MTMediaRemoteController *)v9 setSupportedPlaybackRates:0];
    }

    v46[0] = @"PlayerBar";
    v46[1] = @"PlayerBar";
    v46[2] = @"PlayState";
    v46[3] = @"MiniPlayer";
    v46[4] = @"NowPlaying";
    v37 = [NSArray arrayWithObjects:v46 count:5];
    internalRequestLabels = v9->_internalRequestLabels;
    v9->_internalRequestLabels = v37;

    objc_destroyWeak(&v44);
    objc_destroyWeak(buf);
  }

  v39 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = player;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Finished setup of media remote controller for player: %@", buf, 0xCu);
  }

  return v9;
}

- (AFMultiUserConnection)siriMultiUserConnection
{
  siriMultiUserConnection = self->_siriMultiUserConnection;
  if (!siriMultiUserConnection)
  {
    v4 = objc_alloc_init(AFMultiUserConnection);
    v5 = self->_siriMultiUserConnection;
    self->_siriMultiUserConnection = v4;

    siriMultiUserConnection = self->_siriMultiUserConnection;
  }

  return siriMultiUserConnection;
}

- (void)accountForRequesterUserId:(id)id completionHandler:(id)handler
{
  handlerCopy = handler;
  idCopy = id;
  siriMultiUserConnection = [(MTMediaRemoteController *)self siriMultiUserConnection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100083D6C;
  v10[3] = &unk_1004D9AD8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [siriMultiUserConnection getHomeUserIdForSharedUserId:idCopy completion:v10];
}

- (id)accountFromQueueContainingDsid:(id)dsid error:(id *)error
{
  userInfo = [dsid userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"enqueuerDSID"];

  if (v6)
  {
    v7 = +[ACAccountStore ic_sharedAccountStore];
    v8 = [v7 ic_storeAccountForStoreAccountID:v6 error:error];

    v9 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found account %@ with error %@", &v11, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  player = [(MTMediaRemoteController *)self player];
  commandCenter = [player commandCenter];
  setPlaybackQueueCommand = [commandCenter setPlaybackQueueCommand];
  [setPlaybackQueueCommand removeTarget:self];

  player2 = [(MTMediaRemoteController *)self player];
  commandCenter2 = [player2 commandCenter];
  playCommand = [commandCenter2 playCommand];
  [playCommand removeTarget:self];

  defaultsObserver = [(MTMediaRemoteController *)self defaultsObserver];
  [defaultsObserver stop];

  [(MTMediaRemoteController *)self setDefaultsObserver:0];
  v10.receiver = self;
  v10.super_class = MTMediaRemoteController;
  [(MTMediaRemoteController *)&v10 dealloc];
}

- (__CFArray)copySupportedCommands
{
  v9.receiver = self;
  v9.super_class = MTMediaRemoteController;
  copySupportedCommands = [(MTMediaRemoteController *)&v9 copySupportedCommands];
  v4 = MRMediaRemoteCommandInfoCreate();
  MRMediaRemoteCommandInfoSetCommand();
  MRMediaRemoteCommandInfoSetEnabled();
  CFArrayAppendValue(copySupportedCommands, v4);
  CFRelease(v4);
  v5 = MRMediaRemoteCommandInfoCreate();
  MRMediaRemoteCommandInfoSetCommand();
  MRMediaRemoteCommandInfoSetEnabled();
  CFArrayAppendValue(copySupportedCommands, v5);
  CFRelease(v5);
  v6 = [(MTMediaRemoteController *)self findIndexOfCommand:4 inArray:copySupportedCommands];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFArrayRemoveValueAtIndex(copySupportedCommands, v6);
  }

  v7 = [(MTMediaRemoteController *)self findIndexOfCommand:5 inArray:copySupportedCommands];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFArrayRemoveValueAtIndex(copySupportedCommands, v7);
  }

  return copySupportedCommands;
}

- (int64_t)findIndexOfCommand:(unsigned int)command inArray:(__CFArray *)array
{
  if (CFArrayGetCount(array) < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(array, v6);
    if (MRMediaRemoteCommandInfoGetCommand() == command)
    {
      break;
    }

    if (++v6 >= CFArrayGetCount(array))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (void)remoteInsertIntoPlaybackQueueCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  playbackQueue = [commandCopy playbackQueue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    playbackQueue2 = [commandCopy playbackQueue];
    trackIdentifiers = [playbackQueue2 trackIdentifiers];
    v12 = +[MTPlaybackIdentifierUtil sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100084644;
    v13[3] = &unk_1004D9B00;
    v16 = handlerCopy;
    v14 = commandCopy;
    selfCopy = self;
    [v12 fetchPlayerItemsForPlaybackQueueRequestIdentifiers:trackIdentifiers completion:v13];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 200);
  }
}

- (void)remotePlayItemInPlaybackQueueCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  commandCopy = command;
  playbackQueueController = [(MTMediaRemoteController *)self playbackQueueController];
  contentItemID = [commandCopy contentItemID];

  LODWORD(commandCopy) = [playbackQueueController playItemWithContentID:contentItemID];
  if (commandCopy)
  {
    [(MTMediaRemoteController *)self _donateCurrentPlayerItem];
    v9 = 0;
  }

  else
  {
    v9 = 200;
  }

  handlerCopy[2](handlerCopy, v9);
}

- (void)remoteReorderPlaybackQueueCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  commandCopy = command;
  playbackQueueController = [(MTMediaRemoteController *)self playbackQueueController];
  contentItemID = [commandCopy contentItemID];
  insertAfterContextItemID = [commandCopy insertAfterContextItemID];

  [playbackQueueController reorderItemWithContentId:contentItemID afterItemWithContentID:insertAfterContextItemID];
  handlerCopy[2]();
}

- (void)remoteRemoveFromPlaybackQueueCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  commandCopy = command;
  playbackQueueController = [(MTMediaRemoteController *)self playbackQueueController];
  contentItemID = [commandCopy contentItemID];

  [playbackQueueController removeItemWithContentID:contentItemID];
  handlerCopy[2]();
}

- (void)remoteSetPlaybackQueueCommand:(id)command isMagicMoment:(BOOL)moment completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  v10 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = commandCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set Playback Queue: %@", buf, 0xCu);
  }

  playbackQueue = [commandCopy playbackQueue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "remoteSetPlaybackQueueCommand with playbackQueue type MPLocalMediaQueryRemotePlaybackQueue", buf, 2u);
    }

    playbackQueue2 = [commandCopy playbackQueue];
    mediaQuery = [playbackQueue2 mediaQuery];
    v16 = [MTMediaQueryManifest alloc];
    firstItem = [playbackQueue2 firstItem];
    v18 = [(MTMediaQueryManifest *)v16 initWithMediaQuery:mediaQuery initialItem:firstItem];

    isRequestingImmediatePlayback = [playbackQueue2 isRequestingImmediatePlayback];
    playerController = [(MTMediaRemoteController *)self playerController];
    [playerController setManifest:v18 startPlayback:isRequestingImmediatePlayback reason:7 interactive:0 completion:0];

    v21 = [MPRemoteCommandStatus statusWithCode:0];
    handlerCopy[2](handlerCopy, v21);

    goto LABEL_71;
  }

  playbackQueue3 = [commandCopy playbackQueue];
  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  playbackQueue4 = [commandCopy playbackQueue];
  playbackQueue2 = playbackQueue4;
  if ((v23 & 1) == 0)
  {
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if (v26)
    {
      if (os_feature_enabled_red_sun())
      {
        playbackQueueController = [(MTMediaRemoteController *)self playbackQueueController];
        [playbackQueueController clearUpNextManifest];

        playbackQueue2 = [MPRemoteCommandStatus statusWithCode:0];
        handlerCopy[2](handlerCopy, playbackQueue2);
      }

      else
      {
        playerController2 = [(MTMediaRemoteController *)self playerController];
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_1000860B4;
        v84[3] = &unk_1004D84D0;
        v85 = handlerCopy;
        [playerController2 clearPlayerManifestWithCompletion:v84];

        playbackQueue2 = v85;
      }

      goto LABEL_71;
    }

LABEL_68:
    v76 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      playbackQueue5 = [commandCopy playbackQueue];
      *buf = 138412290;
      *&buf[4] = playbackQueue5;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Unhandled Set Playback Queue Command! %@", buf, 0xCu);
    }

    playbackQueue2 = [MPRemoteCommandStatus statusWithCode:200];
    handlerCopy[2](handlerCopy, playbackQueue2);
    goto LABEL_71;
  }

  if (moment)
  {
    isRequestingImmediatePlayback2 = 0;
  }

  else
  {
    isRequestingImmediatePlayback2 = [playbackQueue4 isRequestingImmediatePlayback];
  }

  trackIdentifiers = [playbackQueue2 trackIdentifiers];
  firstObject = [trackIdentifiers firstObject];

  objc_opt_class();
  v30 = objc_opt_isKindOfClass();
  v31 = _MTLogCategoryMediaRemote();
  v32 = v31;
  if (v30)
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = firstObject;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Playback Queue Identifier: %@", buf, 0xCu);
    }

    v33 = [[MTURLCommandRequest alloc] initWithURLString:firstObject];
    if ([(MTURLCommandRequest *)v33 commandType]== 2)
    {
      v34 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        siriAssetInfo = [playbackQueue2 siriAssetInfo];
        v36 = [siriAssetInfo length];
        *buf = 67109120;
        *&buf[4] = v36 != 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "SetPlaybackQueue has assetInfo: %d", buf, 8u);
      }

      v37 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        siriAssetInfo2 = [playbackQueue2 siriAssetInfo];
        *buf = 138412290;
        *&buf[4] = siriAssetInfo2;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "SetPlaybackQueue assetInfo: %@", buf, 0xCu);
      }

      if (![(MTURLCommandRequest *)v33 playReason])
      {
        if ([(MTMediaRemoteController *)self _commandEventIsFromSiri:commandCopy])
        {
          v39 = 9;
        }

        else
        {
          v39 = 7;
        }

        v40 = [(MTURLCommandRequest *)v33 copyWithPlayReason:v39];

        v33 = v40;
      }

      userInfo = [playbackQueue2 userInfo];
      v81 = [userInfo objectForKeyedSubscript:@"requesterUserId"];

      userInfo2 = [playbackQueue2 userInfo];
      v79 = [userInfo2 objectForKeyedSubscript:@"sharedUserId"];

      v43 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v81;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "SetPlaybackQueue requesterUserId: %@", buf, 0xCu);
      }

      v44 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v79;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "SetPlaybackQueue sharedUserId: %@", buf, 0xCu);
      }

      *&v122 = 0;
      *(&v122 + 1) = &v122;
      v123 = 0x2020000000;
      v124 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v119 = sub_100008980;
      v120 = sub_10003B4A4;
      v121 = 0;
      v106[0] = _NSConcreteStackBlock;
      v106[1] = 3221225472;
      v106[2] = sub_100085924;
      v106[3] = &unk_1004D9B50;
      v33 = v33;
      v107 = v33;
      selfCopy = self;
      v109 = playbackQueue2;
      v112 = buf;
      v113 = &v122;
      v114 = isRequestingImmediatePlayback2;
      momentCopy = moment;
      v110 = firstObject;
      v111 = handlerCopy;
      v45 = objc_retainBlock(v106);
      v46 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        siriMultiUserConnection = [(MTMediaRemoteController *)self siriMultiUserConnection];
        *v116 = 138412290;
        v117 = siriMultiUserConnection;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Siri connection: %@", v116, 0xCu);
      }

      v48 = +[MPPlaybackUserDefaults standardUserDefaults];
      isPrivateListeningEnabled = [v48 isPrivateListeningEnabled];
      bOOLValue = [isPrivateListeningEnabled BOOLValue];

      siriMultiUserConnection2 = [(MTMediaRemoteController *)self siriMultiUserConnection];
      if (!siriMultiUserConnection2 || (v52 = [v81 length] == 0, siriMultiUserConnection2, v52))
      {
        v64 = _MTLogCategoryMediaRemote();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *v116 = 67109120;
          LODWORD(v117) = bOOLValue;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Device private listening value: %d", v116, 8u);
        }

        *(*(&v122 + 1) + 24) = bOOLValue ^ 1;
        (v45[2])(v45);
      }

      else
      {
        v99[0] = _NSConcreteStackBlock;
        v99[1] = 3221225472;
        v99[2] = sub_100085B5C;
        v99[3] = &unk_1004D9B78;
        v103 = buf;
        v100 = v81;
        v101 = v79;
        v104 = &v122;
        v105 = bOOLValue;
        v102 = v45;
        [(MTMediaRemoteController *)self accountForRequesterUserId:v100 completionHandler:v99];
      }

      siriAnalyticsController = [(MTMediaRemoteController *)self siriAnalyticsController];
      contextID = [commandCopy contextID];
      [siriAnalyticsController observePlaybackStartEventForRefId:contextID];

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v122, 8);

LABEL_64:
      goto LABEL_71;
    }

    if ([(MTURLCommandRequest *)v33 commandType]== 1)
    {
      v57 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "SetPlaybackQueue for following/subscribing", buf, 2u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v119 = sub_100008980;
      v120 = sub_10003B4A4;
      v121 = 0;
      v94[0] = _NSConcreteStackBlock;
      v94[1] = 3221225472;
      v94[2] = sub_100085C9C;
      v94[3] = &unk_1004D9BC8;
      v95 = firstObject;
      v58 = playbackQueue2;
      v96 = v58;
      v98 = buf;
      v59 = handlerCopy;
      v97 = v59;
      v60 = objc_retainBlock(v94);
      v82 = objc_alloc_init(AFMultiUserConnection);
      userInfo3 = [v58 userInfo];
      v62 = [userInfo3 objectForKeyedSubscript:@"requesterUserId"];

      v63 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v122) = 138412290;
        *(&v122 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "SetPlaybackQueue requesterUserId: %@", &v122, 0xCu);
      }

      if (v82 && [v62 length])
      {
        v90[0] = _NSConcreteStackBlock;
        v90[1] = 3221225472;
        v90[2] = sub_100085EB0;
        v90[3] = &unk_1004D9BF0;
        v91 = v59;
        v93 = buf;
        v92 = v60;
        [(MTMediaRemoteController *)self accountForRequesterUserId:v62 completionHandler:v90];
      }

      else
      {
        (v60[2])(v60);
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_64;
    }

    v67 = [(MTURLCommandRequest *)v33 commandType]== 3;
    v68 = _MTLogCategoryMediaRemote();
    v69 = v68;
    if (v67)
    {
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "remoteSetPlaybackQueueCommand with command type MTURLCommandRequestTypeSetRemotePlaybackQueue", buf, 2u);
      }

      replaceIntent = [playbackQueue2 replaceIntent];
      v71 = 2 * (replaceIntent == 1);
      if (replaceIntent == 2)
      {
        v71 = 1;
      }

      v78 = v71;
      v89 = 0;
      v80 = [(MTMediaRemoteController *)self accountFromQueueContainingDsid:playbackQueue2 error:&v89];
      v83 = v89;
      if (v83)
      {
        v72 = _MTLogCategoryMediaRemote();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v83;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Failed account lookup with error %@", buf, 0xCu);
        }
      }

      playerController3 = [(MTMediaRemoteController *)self playerController];
      trackIdentifiers2 = [playbackQueue2 trackIdentifiers];
      sessionIdentifierOverride = [commandCopy sessionIdentifierOverride];
      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = sub_100085F94;
      v86[3] = &unk_1004D9B28;
      v87 = playbackQueue2;
      v88 = handlerCopy;
      [MTRemoteSetPlaybackQueueUtil decodeAndSetPlaybackQueueForController:playerController3 fromIdentifiers:trackIdentifiers2 sessionIdentifierOverride:sessionIdentifierOverride enqueuer:v80 accountLookupFailed:v83 != 0 startPlayback:isRequestingImmediatePlayback2 upNextQueueIntent:v78 completion:v86];

      goto LABEL_64;
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = firstObject;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Unexpected track identifier for SetPlaybackQueue command: %@", buf, 0xCu);
    }

    goto LABEL_68;
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v53 = objc_opt_class();
    *buf = 138412546;
    *&buf[4] = v53;
    *&buf[12] = 2112;
    *&buf[14] = firstObject;
    v54 = v53;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Track identifier for SetPlaybackQueue command was unexpected type: %@ (%@)", buf, 0x16u);
  }

  v55 = [MPRemoteCommandStatus statusWithCode:200];
  handlerCopy[2](handlerCopy, v55);

LABEL_71:
}

- (void)remoteSetPlaybackSessionCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  playbackSessionData = [commandCopy playbackSessionData];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v9 = [NSArray arrayWithObjects:v31 count:2];
  v10 = [NSSet setWithArray:v9];
  v28 = 0;
  v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:playbackSessionData error:&v28];
  v12 = v28;

  v13 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = commandCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Set Playback Session: %@", buf, 0xCu);
  }

  if (v12 || ![v11 count])
  {
    v14 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to set playback session, unarchiving error: %@", buf, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 200);
    }
  }

  else
  {
    v15 = [MTURLCommandRequest alloc];
    firstObject = [v11 firstObject];
    v17 = [(MTURLCommandRequest *)v15 initWithURLString:firstObject];
    requesterDsid = [(MTURLCommandRequest *)v17 requesterDsid];

    v19 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = requesterDsid;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Set Playback Session enqueuer DSID: %@", buf, 0xCu);
    }

    v20 = +[ACAccountStore ic_sharedAccountStore];
    v21 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [requesterDsid longLongValue]);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100086484;
    v23[3] = &unk_1004D9C40;
    v24 = requesterDsid;
    selfCopy = self;
    v26 = v11;
    v27 = handlerCopy;
    v22 = requesterDsid;
    [v20 ic_storeAccountForStoreAccountID:v21 completion:v23];
  }
}

- (void)remotePlayCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  mediaRemoteOptions = [commandCopy mediaRemoteOptions];
  v9 = [mediaRemoteOptions objectForKey:kMRMediaRemoteOptionInterruptionEvent];
  bOOLValue = [v9 BOOLValue];

  v11 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = commandCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "received remotePlay: %@", buf, 0xCu);
  }

  playerController = [(MTMediaRemoteController *)self playerController];
  player = [playerController player];
  manifest = [player manifest];
  currentItem = [manifest currentItem];

  if (currentItem)
  {
    [(MTMediaRemoteController *)self _donateCurrentPlayerItem];
    if ([(MTMediaRemoteController *)self _commandEventIsFromSiri:commandCopy])
    {
      v16 = 9;
    }

    else if ([(MTMediaRemoteController *)self _commandEventIsInternal:commandCopy])
    {
      v16 = 7;
    }

    else
    {
      v16 = 8;
    }

    v17 = [playerController playWithReason:v16 interruptEvent:bOOLValue];
    if (handlerCopy)
    {
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = 200;
      }

      handlerCopy[2](handlerCopy, v18);
    }
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000869A0;
    v19[3] = &unk_1004D9C90;
    v20 = playerController;
    selfCopy = self;
    v23 = bOOLValue;
    v22 = handlerCopy;
    [v20 restorePlayerManifestWithCompletion:v19];
  }
}

- (int64_t)remotePause:(id)pause
{
  v4.receiver = self;
  v4.super_class = MTMediaRemoteController;
  return [(MTMediaRemoteController *)&v4 remotePause:pause];
}

- (void)remoteTogglePlayPauseCommand:(id)command completionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100086C44;
  v7[3] = &unk_1004D9CB8;
  selfCopy = self;
  handlerCopy = handler;
  v6.receiver = selfCopy;
  v6.super_class = MTMediaRemoteController;
  v5 = handlerCopy;
  [(MTMediaRemoteController *)&v6 remoteTogglePlayPauseCommand:command completionHandler:v7];
}

- (int64_t)remoteNextTrack:(id)track
{
  trackCopy = track;
  if ([(MTMediaRemoteController *)self remoteSkipPreference]!= 1 || [(MTMediaRemoteController *)self _commandEventIsFromSiri:trackCopy]|| [(MTMediaRemoteController *)self _commandEventIsInternal:trackCopy])
  {
    v8.receiver = self;
    v8.super_class = MTMediaRemoteController;
    v5 = [(MTMediaRemoteController *)&v8 remoteNextTrack:trackCopy];
    if (!v5)
    {
      [(MTMediaRemoteController *)self _donateCurrentPlayerItem];
    }
  }

  else
  {
    _skipForwardCommandEvent = [(MTMediaRemoteController *)self _skipForwardCommandEvent];
    v5 = [(MTMediaRemoteController *)self remoteSkipForward:_skipForwardCommandEvent];
  }

  return v5;
}

- (int64_t)remotePreviousTrack:(id)track
{
  trackCopy = track;
  if ([(MTMediaRemoteController *)self remoteSkipPreference]!= 1 || [(MTMediaRemoteController *)self _commandEventIsFromSiri:trackCopy]|| [(MTMediaRemoteController *)self _commandEventIsInternal:trackCopy])
  {
    v8.receiver = self;
    v8.super_class = MTMediaRemoteController;
    v5 = [(MTMediaRemoteController *)&v8 remotePreviousTrack:trackCopy];
    if (!v5)
    {
      [(MTMediaRemoteController *)self _donateCurrentPlayerItem];
    }
  }

  else
  {
    _skipBackwardCommandEvent = [(MTMediaRemoteController *)self _skipBackwardCommandEvent];
    v5 = [(MTMediaRemoteController *)self remoteSkipBackward:_skipBackwardCommandEvent];
  }

  return v5;
}

- (int64_t)remoteChangePlaybackRate:(id)rate
{
  v4.receiver = self;
  v4.super_class = MTMediaRemoteController;
  return [(MTMediaRemoteController *)&v4 remoteChangePlaybackRate:rate];
}

- (void)sessionIdentifierDidChange
{
  player = [(MTMediaRemoteController *)self player];
  commandCenter = [player commandCenter];

  setPlaybackSessionCommand = [commandCenter setPlaybackSessionCommand];
  playbackQueueController = [(MTMediaRemoteController *)self playbackQueueController];
  sessionIdentifier = [playbackQueueController sessionIdentifier];
  [setPlaybackSessionCommand setCurrentPlaybackSessionIdentifier:sessionIdentifier];
}

- (void)updatePreferredSkipDurationsFromUserDefaults:(id)defaults forCommandCenter:(id)center
{
  v5 = kMTSkipForwardIntervalDefaultKey;
  centerCopy = center;
  defaultsCopy = defaults;
  v13 = [defaultsCopy valueForKey:v5];
  v8 = [defaultsCopy valueForKey:kMTSkipBackwardsIntervalDefaultKey];

  v9 = [NSMutableArray arrayWithObjects:&off_100500CA0, &off_100500CB8, &off_100500CD0, &off_100500CE8, &off_100500D00, 0];
  v10 = [NSMutableArray arrayWithObjects:&off_100500CA0, &off_100500CB8, &off_100500CD0, &off_100500CE8, &off_100500D00, 0];
  if (v13)
  {
    [v9 removeObject:v13];
    [v9 insertObject:v13 atIndex:0];
  }

  if (v8)
  {
    [v10 removeObject:v8];
    [v10 insertObject:v8 atIndex:0];
  }

  skipForwardCommand = [centerCopy skipForwardCommand];
  [skipForwardCommand setPreferredIntervals:v9];

  skipBackwardCommand = [centerCopy skipBackwardCommand];

  [skipBackwardCommand setPreferredIntervals:v10];
}

- (void)updateRemoteSkipPreferenceFromDefaults:(id)defaults
{
  v4 = [defaults BOOLForKey:kMTRemoteSkipInsteadOfNextTrackDefaultKey];

  [(MTMediaRemoteController *)self setRemoteSkipPreference:v4];
}

- (BOOL)_commandEventIsFromSiri:(id)siri
{
  mediaRemoteOptions = [siri mediaRemoteOptions];
  v4 = [mediaRemoteOptions objectForKey:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];

  if ([v4 isEqualToString:@"com.apple.siri"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"com.apple.MediaAssistant"];
  }

  return v5;
}

- (BOOL)_commandEventIsInternal:(id)internal
{
  mediaRemoteOptions = [internal mediaRemoteOptions];
  v5 = [mediaRemoteOptions objectForKey:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];

  LOBYTE(self) = [(NSArray *)self->_internalRequestLabels containsObject:v5];
  return self;
}

- (id)_skipForwardCommandEvent
{
  player = [(MTMediaRemoteController *)self player];
  commandCenter = [player commandCenter];

  skipForwardCommand = [commandCenter skipForwardCommand];
  preferredIntervals = [skipForwardCommand preferredIntervals];
  firstObject = [preferredIntervals firstObject];

  [firstObject doubleValue];
  v7 = [skipForwardCommand newCommandEventWithInterval:?];

  return v7;
}

- (id)_skipBackwardCommandEvent
{
  player = [(MTMediaRemoteController *)self player];
  commandCenter = [player commandCenter];

  skipBackwardCommand = [commandCenter skipBackwardCommand];
  preferredIntervals = [skipBackwardCommand preferredIntervals];
  firstObject = [preferredIntervals firstObject];

  [firstObject doubleValue];
  v7 = [skipBackwardCommand newCommandEventWithInterval:?];

  return v7;
}

- (void)_donateCurrentPlayerItem
{
  playerController = [(MTMediaRemoteController *)self playerController];
  compositeManifest = [playerController compositeManifest];

  v3 = +[MTIntentDonationUtil sharedInstance];
  [v3 donateManifestCurrentItem:compositeManifest];
}

- (MTPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

@end
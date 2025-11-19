@interface MTMediaRemoteController
- (AFMultiUserConnection)siriMultiUserConnection;
- (BOOL)_commandEventIsFromSiri:(id)a3;
- (BOOL)_commandEventIsInternal:(id)a3;
- (MTMediaRemoteController)initWithPlayerController:(id)a3;
- (MTPlayerController)playerController;
- (__CFArray)copySupportedCommands;
- (id)_skipBackwardCommandEvent;
- (id)_skipForwardCommandEvent;
- (id)accountFromQueueContainingDsid:(id)a3 error:(id *)a4;
- (int64_t)findIndexOfCommand:(unsigned int)a3 inArray:(__CFArray *)a4;
- (int64_t)remoteChangePlaybackRate:(id)a3;
- (int64_t)remoteNextTrack:(id)a3;
- (int64_t)remotePause:(id)a3;
- (int64_t)remotePreviousTrack:(id)a3;
- (void)_donateCurrentPlayerItem;
- (void)accountForRequesterUserId:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)remoteInsertIntoPlaybackQueueCommand:(id)a3 completionHandler:(id)a4;
- (void)remotePlayCommand:(id)a3 completionHandler:(id)a4;
- (void)remotePlayItemInPlaybackQueueCommand:(id)a3 completionHandler:(id)a4;
- (void)remoteRemoveFromPlaybackQueueCommand:(id)a3 completionHandler:(id)a4;
- (void)remoteReorderPlaybackQueueCommand:(id)a3 completionHandler:(id)a4;
- (void)remoteSetPlaybackQueueCommand:(id)a3 isMagicMoment:(BOOL)a4 completionHandler:(id)a5;
- (void)remoteSetPlaybackSessionCommand:(id)a3 completionHandler:(id)a4;
- (void)remoteTogglePlayPauseCommand:(id)a3 completionHandler:(id)a4;
- (void)sessionIdentifierDidChange;
- (void)updatePreferredSkipDurationsFromUserDefaults:(id)a3 forCommandCenter:(id)a4;
- (void)updateRemoteSkipPreferenceFromDefaults:(id)a3;
@end

@implementation MTMediaRemoteController

- (MTMediaRemoteController)initWithPlayerController:(id)a3
{
  v4 = a3;
  v5 = [v4 player];
  [(MTMediaRemoteController *)self setPlayerController:v4];
  v6 = [v4 playbackQueueController];
  v7 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting setup of media remote controller for player: %@", buf, 0xCu);
  }

  v45.receiver = self;
  v45.super_class = MTMediaRemoteController;
  v8 = [(MTMediaRemoteController *)&v45 initWithPlayer:v5];
  v9 = v8;
  if (v8)
  {
    [(MTMediaRemoteController *)v8 setPlaybackQueueController:v6];
    [v6 setSessionDelegate:v9];
    v10 = [v5 commandCenter];
    v11 = [v10 insertIntoPlaybackQueueCommand];
    [v11 addTarget:v9 action:"remoteInsertIntoPlaybackQueueCommand:completionHandler:"];

    v12 = [v10 playItemInQueueCommand];
    [v12 addTarget:v9 action:"remotePlayItemInPlaybackQueueCommand:completionHandler:"];

    v13 = [v10 reorderQueueCommand];
    [v13 addTarget:v9 action:"remoteReorderPlaybackQueueCommand:completionHandler:"];

    v14 = [v10 removeFromPlaybackQueueCommand];
    [v14 addTarget:v9 action:"remoteRemoveFromPlaybackQueueCommand:completionHandler:"];

    v15 = [v10 setPlaybackQueueCommand];
    [v15 addTarget:v9 action:"remoteSetPlaybackQueueCommand:completionHandler:" usingExtendedStatus:1];

    v16 = [v10 playCommand];
    [v16 addTarget:v9 action:"remotePlayCommand:completionHandler:"];

    if (os_feature_enabled_red_sun())
    {
      v17 = [v10 setPlaybackQueueCommand];
      [v17 registerSupportedQueueType:8];
    }

    v18 = [v10 setPlaybackSessionCommand];
    [v18 addTarget:v9 action:"remoteSetPlaybackSessionCommand:completionHandler:"];

    v19 = [v10 setPlaybackSessionCommand];
    v49 = @"com.apple.podcasts.MTPlaybackQueueController.GenericQueue";
    v20 = [NSArray arrayWithObjects:&v49 count:1];
    [v19 setSupportedSessionTypes:v20];

    v21 = [v10 setPlaybackSessionCommand];
    v48 = @"com.apple.podcasts.MTPlaybackQueueController.GenericQueue";
    v22 = [NSArray arrayWithObjects:&v48 count:1];
    [v21 setExportableSessionTypes:v22];

    [MPRemoteCommandCenter updateLaunchCommandsWithConfigurationHandler:&stru_1004D9A60];
    v23 = +[IMAVPlayer sharedPlayer];
    LODWORD(v22) = v5 == v23;

    if (v22)
    {
      v24 = [MPRemoteCommandCenter alloc];
      v25 = [v24 initWithPlayerID:kMTPodcastsMagicMomentsPlayerID];
      [(MTMediaRemoteController *)v9 setMetadataCommandCenter:v25];

      v26 = [(MTMediaRemoteController *)v9 metadataCommandCenter];
      v27 = [v26 setPlaybackQueueCommand];
      [v27 addTarget:v9 action:"remoteSetMetadataPlaybackQueueCommand:completionHandler:" usingExtendedStatus:1];
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
    v35 = v10;
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
    v51 = v5;
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

- (void)accountForRequesterUserId:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTMediaRemoteController *)self siriMultiUserConnection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100083D6C;
  v10[3] = &unk_1004D9AD8;
  v11 = v6;
  v9 = v6;
  [v8 getHomeUserIdForSharedUserId:v7 completion:v10];
}

- (id)accountFromQueueContainingDsid:(id)a3 error:(id *)a4
{
  v5 = [a3 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"enqueuerDSID"];

  if (v6)
  {
    v7 = +[ACAccountStore ic_sharedAccountStore];
    v8 = [v7 ic_storeAccountForStoreAccountID:v6 error:a4];

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
  v3 = [(MTMediaRemoteController *)self player];
  v4 = [v3 commandCenter];
  v5 = [v4 setPlaybackQueueCommand];
  [v5 removeTarget:self];

  v6 = [(MTMediaRemoteController *)self player];
  v7 = [v6 commandCenter];
  v8 = [v7 playCommand];
  [v8 removeTarget:self];

  v9 = [(MTMediaRemoteController *)self defaultsObserver];
  [v9 stop];

  [(MTMediaRemoteController *)self setDefaultsObserver:0];
  v10.receiver = self;
  v10.super_class = MTMediaRemoteController;
  [(MTMediaRemoteController *)&v10 dealloc];
}

- (__CFArray)copySupportedCommands
{
  v9.receiver = self;
  v9.super_class = MTMediaRemoteController;
  v3 = [(MTMediaRemoteController *)&v9 copySupportedCommands];
  v4 = MRMediaRemoteCommandInfoCreate();
  MRMediaRemoteCommandInfoSetCommand();
  MRMediaRemoteCommandInfoSetEnabled();
  CFArrayAppendValue(v3, v4);
  CFRelease(v4);
  v5 = MRMediaRemoteCommandInfoCreate();
  MRMediaRemoteCommandInfoSetCommand();
  MRMediaRemoteCommandInfoSetEnabled();
  CFArrayAppendValue(v3, v5);
  CFRelease(v5);
  v6 = [(MTMediaRemoteController *)self findIndexOfCommand:4 inArray:v3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFArrayRemoveValueAtIndex(v3, v6);
  }

  v7 = [(MTMediaRemoteController *)self findIndexOfCommand:5 inArray:v3];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFArrayRemoveValueAtIndex(v3, v7);
  }

  return v3;
}

- (int64_t)findIndexOfCommand:(unsigned int)a3 inArray:(__CFArray *)a4
{
  if (CFArrayGetCount(a4) < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(a4, v6);
    if (MRMediaRemoteCommandInfoGetCommand() == a3)
    {
      break;
    }

    if (++v6 >= CFArrayGetCount(a4))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (void)remoteInsertIntoPlaybackQueueCommand:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 playbackQueue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 playbackQueue];
    v11 = [v10 trackIdentifiers];
    v12 = +[MTPlaybackIdentifierUtil sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100084644;
    v13[3] = &unk_1004D9B00;
    v16 = v7;
    v14 = v6;
    v15 = self;
    [v12 fetchPlayerItemsForPlaybackQueueRequestIdentifiers:v11 completion:v13];
  }

  else
  {
    (*(v7 + 2))(v7, 200);
  }
}

- (void)remotePlayItemInPlaybackQueueCommand:(id)a3 completionHandler:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(MTMediaRemoteController *)self playbackQueueController];
  v8 = [v6 contentItemID];

  LODWORD(v6) = [v7 playItemWithContentID:v8];
  if (v6)
  {
    [(MTMediaRemoteController *)self _donateCurrentPlayerItem];
    v9 = 0;
  }

  else
  {
    v9 = 200;
  }

  v10[2](v10, v9);
}

- (void)remoteReorderPlaybackQueueCommand:(id)a3 completionHandler:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(MTMediaRemoteController *)self playbackQueueController];
  v8 = [v6 contentItemID];
  v9 = [v6 insertAfterContextItemID];

  [v7 reorderItemWithContentId:v8 afterItemWithContentID:v9];
  v10[2]();
}

- (void)remoteRemoveFromPlaybackQueueCommand:(id)a3 completionHandler:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(MTMediaRemoteController *)self playbackQueueController];
  v8 = [v6 contentItemID];

  [v7 removeItemWithContentID:v8];
  v9[2]();
}

- (void)remoteSetPlaybackQueueCommand:(id)a3 isMagicMoment:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set Playback Queue: %@", buf, 0xCu);
  }

  v11 = [v8 playbackQueue];
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

    v14 = [v8 playbackQueue];
    v15 = [v14 mediaQuery];
    v16 = [MTMediaQueryManifest alloc];
    v17 = [v14 firstItem];
    v18 = [(MTMediaQueryManifest *)v16 initWithMediaQuery:v15 initialItem:v17];

    v19 = [v14 isRequestingImmediatePlayback];
    v20 = [(MTMediaRemoteController *)self playerController];
    [v20 setManifest:v18 startPlayback:v19 reason:7 interactive:0 completion:0];

    v21 = [MPRemoteCommandStatus statusWithCode:0];
    v9[2](v9, v21);

    goto LABEL_71;
  }

  v22 = [v8 playbackQueue];
  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  v24 = [v8 playbackQueue];
  v14 = v24;
  if ((v23 & 1) == 0)
  {
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if (v26)
    {
      if (os_feature_enabled_red_sun())
      {
        v27 = [(MTMediaRemoteController *)self playbackQueueController];
        [v27 clearUpNextManifest];

        v14 = [MPRemoteCommandStatus statusWithCode:0];
        v9[2](v9, v14);
      }

      else
      {
        v56 = [(MTMediaRemoteController *)self playerController];
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_1000860B4;
        v84[3] = &unk_1004D84D0;
        v85 = v9;
        [v56 clearPlayerManifestWithCompletion:v84];

        v14 = v85;
      }

      goto LABEL_71;
    }

LABEL_68:
    v76 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v77 = [v8 playbackQueue];
      *buf = 138412290;
      *&buf[4] = v77;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Unhandled Set Playback Queue Command! %@", buf, 0xCu);
    }

    v14 = [MPRemoteCommandStatus statusWithCode:200];
    v9[2](v9, v14);
    goto LABEL_71;
  }

  if (a4)
  {
    v25 = 0;
  }

  else
  {
    v25 = [v24 isRequestingImmediatePlayback];
  }

  v28 = [v14 trackIdentifiers];
  v29 = [v28 firstObject];

  objc_opt_class();
  v30 = objc_opt_isKindOfClass();
  v31 = _MTLogCategoryMediaRemote();
  v32 = v31;
  if (v30)
  {
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Playback Queue Identifier: %@", buf, 0xCu);
    }

    v33 = [[MTURLCommandRequest alloc] initWithURLString:v29];
    if ([(MTURLCommandRequest *)v33 commandType]== 2)
    {
      v34 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v14 siriAssetInfo];
        v36 = [v35 length];
        *buf = 67109120;
        *&buf[4] = v36 != 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "SetPlaybackQueue has assetInfo: %d", buf, 8u);
      }

      v37 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [v14 siriAssetInfo];
        *buf = 138412290;
        *&buf[4] = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "SetPlaybackQueue assetInfo: %@", buf, 0xCu);
      }

      if (![(MTURLCommandRequest *)v33 playReason])
      {
        if ([(MTMediaRemoteController *)self _commandEventIsFromSiri:v8])
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

      v41 = [v14 userInfo];
      v81 = [v41 objectForKeyedSubscript:@"requesterUserId"];

      v42 = [v14 userInfo];
      v79 = [v42 objectForKeyedSubscript:@"sharedUserId"];

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
      v108 = self;
      v109 = v14;
      v112 = buf;
      v113 = &v122;
      v114 = v25;
      v115 = a4;
      v110 = v29;
      v111 = v9;
      v45 = objc_retainBlock(v106);
      v46 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [(MTMediaRemoteController *)self siriMultiUserConnection];
        *v116 = 138412290;
        v117 = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Siri connection: %@", v116, 0xCu);
      }

      v48 = +[MPPlaybackUserDefaults standardUserDefaults];
      v49 = [v48 isPrivateListeningEnabled];
      v50 = [v49 BOOLValue];

      v51 = [(MTMediaRemoteController *)self siriMultiUserConnection];
      if (!v51 || (v52 = [v81 length] == 0, v51, v52))
      {
        v64 = _MTLogCategoryMediaRemote();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *v116 = 67109120;
          LODWORD(v117) = v50;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Device private listening value: %d", v116, 8u);
        }

        *(*(&v122 + 1) + 24) = v50 ^ 1;
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
        v105 = v50;
        v102 = v45;
        [(MTMediaRemoteController *)self accountForRequesterUserId:v100 completionHandler:v99];
      }

      v65 = [(MTMediaRemoteController *)self siriAnalyticsController];
      v66 = [v8 contextID];
      [v65 observePlaybackStartEventForRefId:v66];

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
      v95 = v29;
      v58 = v14;
      v96 = v58;
      v98 = buf;
      v59 = v9;
      v97 = v59;
      v60 = objc_retainBlock(v94);
      v82 = objc_alloc_init(AFMultiUserConnection);
      v61 = [v58 userInfo];
      v62 = [v61 objectForKeyedSubscript:@"requesterUserId"];

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

      v70 = [v14 replaceIntent];
      v71 = 2 * (v70 == 1);
      if (v70 == 2)
      {
        v71 = 1;
      }

      v78 = v71;
      v89 = 0;
      v80 = [(MTMediaRemoteController *)self accountFromQueueContainingDsid:v14 error:&v89];
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

      v73 = [(MTMediaRemoteController *)self playerController];
      v74 = [v14 trackIdentifiers];
      v75 = [v8 sessionIdentifierOverride];
      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = sub_100085F94;
      v86[3] = &unk_1004D9B28;
      v87 = v14;
      v88 = v9;
      [MTRemoteSetPlaybackQueueUtil decodeAndSetPlaybackQueueForController:v73 fromIdentifiers:v74 sessionIdentifierOverride:v75 enqueuer:v80 accountLookupFailed:v83 != 0 startPlayback:v25 upNextQueueIntent:v78 completion:v86];

      goto LABEL_64;
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v29;
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
    *&buf[14] = v29;
    v54 = v53;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Track identifier for SetPlaybackQueue command was unexpected type: %@ (%@)", buf, 0x16u);
  }

  v55 = [MPRemoteCommandStatus statusWithCode:200];
  v9[2](v9, v55);

LABEL_71:
}

- (void)remoteSetPlaybackSessionCommand:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 playbackSessionData];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v9 = [NSArray arrayWithObjects:v31 count:2];
  v10 = [NSSet setWithArray:v9];
  v28 = 0;
  v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v8 error:&v28];
  v12 = v28;

  v13 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
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

    if (v7)
    {
      v7[2](v7, 200);
    }
  }

  else
  {
    v15 = [MTURLCommandRequest alloc];
    v16 = [v11 firstObject];
    v17 = [(MTURLCommandRequest *)v15 initWithURLString:v16];
    v18 = [(MTURLCommandRequest *)v17 requesterDsid];

    v19 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Set Playback Session enqueuer DSID: %@", buf, 0xCu);
    }

    v20 = +[ACAccountStore ic_sharedAccountStore];
    v21 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v18 longLongValue]);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100086484;
    v23[3] = &unk_1004D9C40;
    v24 = v18;
    v25 = self;
    v26 = v11;
    v27 = v7;
    v22 = v18;
    [v20 ic_storeAccountForStoreAccountID:v21 completion:v23];
  }
}

- (void)remotePlayCommand:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mediaRemoteOptions];
  v9 = [v8 objectForKey:kMRMediaRemoteOptionInterruptionEvent];
  v10 = [v9 BOOLValue];

  v11 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "received remotePlay: %@", buf, 0xCu);
  }

  v12 = [(MTMediaRemoteController *)self playerController];
  v13 = [v12 player];
  v14 = [v13 manifest];
  v15 = [v14 currentItem];

  if (v15)
  {
    [(MTMediaRemoteController *)self _donateCurrentPlayerItem];
    if ([(MTMediaRemoteController *)self _commandEventIsFromSiri:v6])
    {
      v16 = 9;
    }

    else if ([(MTMediaRemoteController *)self _commandEventIsInternal:v6])
    {
      v16 = 7;
    }

    else
    {
      v16 = 8;
    }

    v17 = [v12 playWithReason:v16 interruptEvent:v10];
    if (v7)
    {
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = 200;
      }

      v7[2](v7, v18);
    }
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000869A0;
    v19[3] = &unk_1004D9C90;
    v20 = v12;
    v21 = self;
    v23 = v10;
    v22 = v7;
    [v20 restorePlayerManifestWithCompletion:v19];
  }
}

- (int64_t)remotePause:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTMediaRemoteController;
  return [(MTMediaRemoteController *)&v4 remotePause:a3];
}

- (void)remoteTogglePlayPauseCommand:(id)a3 completionHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100086C44;
  v7[3] = &unk_1004D9CB8;
  v8 = self;
  v9 = a4;
  v6.receiver = v8;
  v6.super_class = MTMediaRemoteController;
  v5 = v9;
  [(MTMediaRemoteController *)&v6 remoteTogglePlayPauseCommand:a3 completionHandler:v7];
}

- (int64_t)remoteNextTrack:(id)a3
{
  v4 = a3;
  if ([(MTMediaRemoteController *)self remoteSkipPreference]!= 1 || [(MTMediaRemoteController *)self _commandEventIsFromSiri:v4]|| [(MTMediaRemoteController *)self _commandEventIsInternal:v4])
  {
    v8.receiver = self;
    v8.super_class = MTMediaRemoteController;
    v5 = [(MTMediaRemoteController *)&v8 remoteNextTrack:v4];
    if (!v5)
    {
      [(MTMediaRemoteController *)self _donateCurrentPlayerItem];
    }
  }

  else
  {
    v6 = [(MTMediaRemoteController *)self _skipForwardCommandEvent];
    v5 = [(MTMediaRemoteController *)self remoteSkipForward:v6];
  }

  return v5;
}

- (int64_t)remotePreviousTrack:(id)a3
{
  v4 = a3;
  if ([(MTMediaRemoteController *)self remoteSkipPreference]!= 1 || [(MTMediaRemoteController *)self _commandEventIsFromSiri:v4]|| [(MTMediaRemoteController *)self _commandEventIsInternal:v4])
  {
    v8.receiver = self;
    v8.super_class = MTMediaRemoteController;
    v5 = [(MTMediaRemoteController *)&v8 remotePreviousTrack:v4];
    if (!v5)
    {
      [(MTMediaRemoteController *)self _donateCurrentPlayerItem];
    }
  }

  else
  {
    v6 = [(MTMediaRemoteController *)self _skipBackwardCommandEvent];
    v5 = [(MTMediaRemoteController *)self remoteSkipBackward:v6];
  }

  return v5;
}

- (int64_t)remoteChangePlaybackRate:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTMediaRemoteController;
  return [(MTMediaRemoteController *)&v4 remoteChangePlaybackRate:a3];
}

- (void)sessionIdentifierDidChange
{
  v3 = [(MTMediaRemoteController *)self player];
  v7 = [v3 commandCenter];

  v4 = [v7 setPlaybackSessionCommand];
  v5 = [(MTMediaRemoteController *)self playbackQueueController];
  v6 = [v5 sessionIdentifier];
  [v4 setCurrentPlaybackSessionIdentifier:v6];
}

- (void)updatePreferredSkipDurationsFromUserDefaults:(id)a3 forCommandCenter:(id)a4
{
  v5 = kMTSkipForwardIntervalDefaultKey;
  v6 = a4;
  v7 = a3;
  v13 = [v7 valueForKey:v5];
  v8 = [v7 valueForKey:kMTSkipBackwardsIntervalDefaultKey];

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

  v11 = [v6 skipForwardCommand];
  [v11 setPreferredIntervals:v9];

  v12 = [v6 skipBackwardCommand];

  [v12 setPreferredIntervals:v10];
}

- (void)updateRemoteSkipPreferenceFromDefaults:(id)a3
{
  v4 = [a3 BOOLForKey:kMTRemoteSkipInsteadOfNextTrackDefaultKey];

  [(MTMediaRemoteController *)self setRemoteSkipPreference:v4];
}

- (BOOL)_commandEventIsFromSiri:(id)a3
{
  v3 = [a3 mediaRemoteOptions];
  v4 = [v3 objectForKey:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];

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

- (BOOL)_commandEventIsInternal:(id)a3
{
  v4 = [a3 mediaRemoteOptions];
  v5 = [v4 objectForKey:kMRMediaRemoteOptionRemoteControlInterfaceIdentifier];

  LOBYTE(self) = [(NSArray *)self->_internalRequestLabels containsObject:v5];
  return self;
}

- (id)_skipForwardCommandEvent
{
  v2 = [(MTMediaRemoteController *)self player];
  v3 = [v2 commandCenter];

  v4 = [v3 skipForwardCommand];
  v5 = [v4 preferredIntervals];
  v6 = [v5 firstObject];

  [v6 doubleValue];
  v7 = [v4 newCommandEventWithInterval:?];

  return v7;
}

- (id)_skipBackwardCommandEvent
{
  v2 = [(MTMediaRemoteController *)self player];
  v3 = [v2 commandCenter];

  v4 = [v3 skipBackwardCommand];
  v5 = [v4 preferredIntervals];
  v6 = [v5 firstObject];

  [v6 doubleValue];
  v7 = [v4 newCommandEventWithInterval:?];

  return v7;
}

- (void)_donateCurrentPlayerItem
{
  v2 = [(MTMediaRemoteController *)self playerController];
  v4 = [v2 compositeManifest];

  v3 = +[MTIntentDonationUtil sharedInstance];
  [v3 donateManifestCurrentItem:v4];
}

- (MTPlayerController)playerController
{
  WeakRetained = objc_loadWeakRetained(&self->_playerController);

  return WeakRetained;
}

@end
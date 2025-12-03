@interface MTSetPlaybackQueueUtil
+ (BOOL)_setManifest:(id)manifest playerController:(id)controller queueType:(int64_t)type startPlayback:(BOOL)playback forceLocal:(BOOL)local reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)self0;
+ (BOOL)_setPlaybackQueueForMyPodcastsWithOrder:(int64_t)order playerController:(id)controller startPlayback:(BOOL)playback forceLocal:(BOOL)local reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)completion;
+ (BOOL)_setPlaybackQueueFromStoreForPodcastAdamId:(id)id playerController:(id)controller siriAssetInfo:(id)info savePlayHistory:(BOOL)history playbackOrder:(int64_t)order startPlayback:(BOOL)playback reason:(unint64_t)reason interactive:(BOOL)self0 completion:(id)self1;
+ (BOOL)setPlaybackQueueForRequest:(id)request playerController:(id)controller siriAssetInfo:(id)info enqueuer:(id)enqueuer savePlayHistory:(BOOL)history startPlayback:(BOOL)playback forceLocal:(BOOL)local isMagicMoment:(BOOL)self0 completion:(id)self1;
+ (BOOL)subscribeWithCommandURL:(id)l siriAssetInfo:(id)info requester:(id)requester completion:(id)completion;
+ (id)queueCommandCustomStatusForRequestStatus:(int64_t)status queueType:(int64_t)type;
+ (int64_t)_automaticCommandStatusForRequestStatus:(int64_t)status;
+ (int64_t)queueCommandStatusForRequestStatus:(int64_t)status queueType:(int64_t)type;
+ (int64_t)subscribeCommandStatusForErrorCode:(int64_t)code;
@end

@implementation MTSetPlaybackQueueUtil

+ (BOOL)setPlaybackQueueForRequest:(id)request playerController:(id)controller siriAssetInfo:(id)info enqueuer:(id)enqueuer savePlayHistory:(BOOL)history startPlayback:(BOOL)playback forceLocal:(BOOL)local isMagicMoment:(BOOL)self0 completion:(id)self1
{
  playbackCopy = playback;
  historyCopy = history;
  requestCopy = request;
  controllerCopy = controller;
  infoCopy = info;
  enqueuerCopy = enqueuer;
  completionCopy = completion;
  playQueueType = [requestCopy playQueueType];
  if (!requestCopy || !playQueueType)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    goto LABEL_10;
  }

  selfCopy = self;
  v70 = playbackCopy;
  v22 = +[MTReachability sharedInstance];
  isReachable = [v22 isReachable];

  if ((isReachable & 1) != 0 || !+[PFClientUtil isRunningOnHomepod])
  {
    v26 = +[PFClientUtil isRunningOnHomepod];
    if (enqueuerCopy && v26)
    {
      v27 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = enqueuerCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Overriding active account, enqueuer: %@", &buf, 0xCu);
      }

      v28 = +[MTAccountController sharedInstance];
      [v28 setAccountOverride:enqueuerCopy];
    }

    else
    {
      v29 = +[MTAccountController sharedInstance];
      [v29 setAccountOverride:0];
    }

    playReason = [requestCopy playReason];
    if ([requestCopy playQueueType] == 1)
    {
      v30 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "setPlaybackQueueForRequest for type MTURLPlayCommandQueueTypePodcasts", &buf, 2u);
      }

      if (moment)
      {
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0);
        }

        goto LABEL_10;
      }

      if (+[PFClientUtil isRunningOnHomepod])
      {
        v45 = [[MTNetworkMediaManifest alloc] initWithAssetInfo:infoCopy];
        [(MTPlayerManifest *)v45 setNetworkUPPEnabled:historyCopy];
        LOBYTE(v64) = 0;
        v46 = [self _setManifest:v45 playerController:controllerCopy queueType:8 startPlayback:v70 forceLocal:local reason:playReason interactive:v64 completion:completionCopy];
      }

      else
      {
        playbackOrder = [requestCopy playbackOrder];
        v50 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = playbackOrder;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "setPlaybackQueueForRequest with playback order: %ld", &buf, 0xCu);
        }

        v46 = [self _setPlaybackQueueForMyPodcastsWithOrder:playbackOrder playerController:controllerCopy startPlayback:v70 forceLocal:local reason:playReason interactive:0 completion:completionCopy];
      }

LABEL_97:
      v25 = v46;
      goto LABEL_98;
    }

    if ([requestCopy playQueueType] != 2)
    {
      if ([requestCopy playQueueType] == 3)
      {
        v40 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "setPlaybackQueueForRequest for type MTURLPlayCommandQueueTypeStation", &buf, 2u);
        }

        stationUuid = [requestCopy stationUuid];
        episodeUuid = [requestCopy episodeUuid];
        if (+[PFClientUtil isRunningOnHomepod])
        {
          v43 = [[MTNetworkMediaManifest alloc] initWithStationId:stationUuid assetInfo:infoCopy];
          [(MTPlayerManifest *)v43 setNetworkUPPEnabled:historyCopy];
          v44 = 8;
        }

        else
        {
          if (episodeUuid)
          {
            [MTPlaybackQueueFactory playStationUuid:stationUuid episodeUuid:episodeUuid limit:0x7FFFFFFFFFFFFFFFLL];
          }

          else
          {
            [MTPlaybackQueueFactory playStationUuid:stationUuid limit:0x7FFFFFFFFFFFFFFFLL];
          }
          v43 = ;
          v44 = 4;
        }

        if (moment)
        {
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_100130A80;
          v72[3] = &unk_1004DD6D0;
          v73 = v43;
          v74 = controllerCopy;
          v75 = completionCopy;
          v59 = v43;
          [v74 setManifestAsDryRun:v59 reason:9 completion:v72];

          v25 = 1;
          goto LABEL_98;
        }

        LOBYTE(v64) = 0;
        v46 = [self _setManifest:v43 playerController:controllerCopy queueType:v44 startPlayback:v70 forceLocal:0 reason:playReason interactive:v64 completion:completionCopy];
      }

      else
      {
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0);
          v47 = _MTLogCategoryMediaRemote();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            urlString = [requestCopy urlString];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = urlString;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Unexpected command: %@", &buf, 0xCu);
          }
        }

        v46 = 0;
      }

      goto LABEL_97;
    }

    v31 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "setPlaybackQueueForRequest for type MTURLPlayCommandQueueTypePodcast", &buf, 2u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v117 = 0x3032000000;
    v118 = sub_100008B9C;
    v119 = sub_10003B5A4;
    podcastUuid = [requestCopy podcastUuid];
    episodeUuid2 = [requestCopy episodeUuid];
    v109 = 0;
    v110 = &v109;
    v111 = 0x3032000000;
    v112 = sub_100008B9C;
    v113 = sub_10003B5A4;
    podcastAdamId = [requestCopy podcastAdamId];
    v103 = 0;
    v104 = &v103;
    v105 = 0x3032000000;
    v106 = sub_100008B9C;
    v107 = sub_10003B5A4;
    episodeAdamId = [requestCopy episodeAdamId];
    playbackOrder2 = [requestCopy playbackOrder];
    v99 = 0;
    v100 = &v99;
    v101 = 0x2020000000;
    v102 = 0;
    v95 = 0;
    v96 = &v95;
    v97 = 0x2020000000;
    v98 = 0;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    v33 = [v104[5] length];
    v34 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v34 mainOrPrivateContext];

    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_1001307D0;
    v81[3] = &unk_1004DD680;
    v36 = mainOrPrivateContext;
    v82 = v36;
    v37 = episodeUuid2;
    v83 = v37;
    p_buf = &buf;
    v86 = &v99;
    v87 = &v95;
    v88 = &v109;
    v89 = &v91;
    v90 = &v103;
    v84 = requestCopy;
    [v36 performBlockAndWait:v81];
    v67 = v36;
    if ((v100[3] & 1) != 0 || v33)
    {
      if ((v100[3] & 1) == 0)
      {
LABEL_30:
        v38 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *v115 = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "setPlaybackQueueForRequest using MAPI to get latest episode", v115, 2u);
        }

        if ((isReachable & 1) == 0)
        {
          v52 = _MTLogCategoryPlayback();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *v115 = 0;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "No network connection for playback request that needs the network.", v115, 2u);
          }

          v53 = 11;
          goto LABEL_67;
        }

        v39 = 0;
LABEL_51:
        v51 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v115 = 67109120;
          *&v115[4] = v39;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "playUsingDatabaseUuids -- %d", v115, 8u);
        }

        if (v39 && (+[PFClientUtil isRunningOnHomepod]& 1) == 0)
        {
          *v115 = 0;
          if (*(v100 + 24) == 1 && ([MTPlaybackQueueFactory playEpisodeUuid:v37 context:0 limit:0x7FFFFFFFFFFFFFFFLL], (v56 = objc_claimAutoreleasedReturnValue()) != 0) || ([MTPlaybackQueueFactory playPodcastUuid:*(*(&buf + 1) + 40) order:playbackOrder2 limit:0x7FFFFFFFFFFFFFFFLL error:v115], v56 = objc_claimAutoreleasedReturnValue(), *v115 != 3))
          {
            if (moment)
            {
              v76[0] = _NSConcreteStackBlock;
              v76[1] = 3221225472;
              v76[2] = sub_1001309F0;
              v76[3] = &unk_1004DD6A8;
              v58 = v56;
              v77 = v58;
              v78 = controllerCopy;
              v79 = completionCopy;
              v80 = 2;
              [v78 setManifestAsDryRun:v58 reason:9 completion:v76];

              v46 = 0;
              v55 = 0;
LABEL_95:
              v25 = 1;
LABEL_96:

              _Block_object_dispose(&v91, 8);
              _Block_object_dispose(&v95, 8);
              _Block_object_dispose(&v99, 8);
              _Block_object_dispose(&v103, 8);

              _Block_object_dispose(&v109, 8);
              _Block_object_dispose(&buf, 8);

              if ((v55 & 1) == 0)
              {
                goto LABEL_98;
              }

              goto LABEL_97;
            }

            LOBYTE(v64) = 0;
            v46 = [selfCopy _setManifest:v56 playerController:controllerCopy queueType:2 startPlayback:v70 forceLocal:local reason:playReason interactive:v64 completion:completionCopy];
          }

          else
          {
            if (completionCopy)
            {
              (*(completionCopy + 2))(completionCopy, 4, 2);
            }

            v46 = 0;
          }
        }

        else if ([v104[5] length])
        {
          if (moment)
          {
            goto LABEL_65;
          }

          if (historyCopy)
          {
            v57 = +[PFClientUtil isRunningOnHomepod];
          }

          else
          {
            v57 = 0;
          }

          v60 = [MTNetworkMediaManifest alloc];
          v61 = [(MTNetworkMediaManifest *)v60 initWithEpisodeAdamId:v104[5] assetInfo:infoCopy];
          [(MTPlayerManifest *)v61 setNetworkUPPEnabled:v57];
          LOBYTE(v64) = 0;
          v46 = [selfCopy _setManifest:v61 playerController:controllerCopy queueType:8 startPlayback:v70 forceLocal:local reason:playReason interactive:v64 completion:completionCopy];
        }

        else if ([v110[5] length])
        {
          if (moment)
          {
LABEL_65:
            playbackQueueController = [controllerCopy playbackQueueController];
            [playbackQueueController setMagicMomentPlayerItem:0];

            if (!completionCopy)
            {
LABEL_68:
              v46 = 0;
              v55 = 0;
              v25 = 0;
              goto LABEL_96;
            }

            v53 = 1;
LABEL_67:
            (*(completionCopy + 2))(completionCopy, v53, 0);
            goto LABEL_68;
          }

          LOBYTE(v65) = 0;
          v46 = [selfCopy _setPlaybackQueueFromStoreForPodcastAdamId:v110[5] playerController:controllerCopy siriAssetInfo:infoCopy savePlayHistory:historyCopy playbackOrder:playbackOrder2 startPlayback:v70 reason:playReason interactive:v65 completion:completionCopy];
        }

        else
        {
          v62 = _MTLogCategoryDefault();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *v115 = 0;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Invalid queue component specification.", v115, 2u);
          }

          if (completionCopy)
          {
            (*(completionCopy + 2))(completionCopy, 0, 0);
          }

          v46 = 0;
        }

        v55 = 1;
        goto LABEL_95;
      }
    }

    else if ((v92[3] & 1) != 0 || (v96[3] & 1) == 0)
    {
      goto LABEL_30;
    }

    v39 = 1;
    goto LABEL_51;
  }

  v24 = _MTLogCategoryPlayback();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No network connection for Homepod playback request.", &buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 11, 0);
LABEL_10:
  v25 = 0;
LABEL_98:

  return v25;
}

+ (BOOL)subscribeWithCommandURL:(id)l siriAssetInfo:(id)info requester:(id)requester completion:(id)completion
{
  infoCopy = info;
  requesterCopy = requester;
  completionCopy = completion;
  lCopy = l;
  v13 = [[MTURLCommandRequest alloc] initWithURLString:lCopy];

  if ([(MTURLCommandRequest *)v13 commandType]== 1)
  {
    podcastAdamId = [(MTURLCommandRequest *)v13 podcastAdamId];
    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [podcastAdamId longLongValue]);
    if ([MTStoreIdentifier isEmptyNumber:v15])
    {
      podcastFeedUrl = [(MTURLCommandRequest *)v13 podcastFeedUrl];
      v17 = [podcastFeedUrl length];

      if (!v17)
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0, 2);
        }

        v19 = 0;
        goto LABEL_18;
      }

      podcastFeedUrl2 = [(MTURLCommandRequest *)v13 podcastFeedUrl];
      [MTSubscribeUtil subscribeToPodcastWithFeedUrl:podcastFeedUrl2 completion:completionCopy];
    }

    else
    {
      if (!+[PFClientUtil isRunningOnHomepod])
      {
        v21 = [MTStoreManifest podcastStorePlatformDictionaryFromSiriAssetInfo:infoCopy podcastAdamId:v15];
        v19 = v21 != 0;
        if (v21)
        {
          [MTSubscribeUtil subscribeToPodcastWithStorePlatformDictionary:v21 completion:completionCopy];
        }

        else
        {
          v22 = objc_alloc_init(MTAddPodcastParams);
          -[MTAddPodcastParams setStoreCollectionId:](v22, "setStoreCollectionId:", [podcastAdamId longLongValue]);
          v25 = _NSConcreteStackBlock;
          v26 = 3221225472;
          v27 = sub_100130FA8;
          v28 = &unk_1004D8838;
          v29 = completionCopy;
          [(MTAddPodcastParams *)v22 setCompletion:&v25];
          v23 = [MTSubscriptionManager sharedInstance:v25];
          [v23 subscribeToPodcastWithParams:v22];
        }

        goto LABEL_18;
      }

      v20 = +[MTSubscriptionController sharedInstance];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100130E2C;
      v30[3] = &unk_1004DAF38;
      v31 = completionCopy;
      [v20 subscribeToShowWithPodcastStoreId:podcastAdamId account:requesterCopy completion:v30];
    }

    v19 = 1;
LABEL_18:

    goto LABEL_19;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 2);
  }

  v19 = 0;
LABEL_19:

  return v19;
}

+ (int64_t)queueCommandStatusForRequestStatus:(int64_t)status queueType:(int64_t)type
{
  if (status > 9)
  {
    return 200;
  }

  else
  {
    return qword_1003FEA08[status];
  }
}

+ (id)queueCommandCustomStatusForRequestStatus:(int64_t)status queueType:(int64_t)type
{
  if (status == 11)
  {
    v4 = [NSError errorWithDomain:@"MTSetPlaybackQueueUtilErrorDomain" code:-433001 userInfo:0];
    v5 = [MPRemoteCommandStatus statusWithCode:200 error:v4];
  }

  else
  {
    v5 = [MPRemoteCommandStatus statusWithCode:[MTSetPlaybackQueueUtil queueCommandStatusForRequestStatus:status queueType:type]];
  }

  return v5;
}

+ (int64_t)subscribeCommandStatusForErrorCode:(int64_t)code
{
  if (code > 3)
  {
    return 100;
  }

  else
  {
    return qword_1003FEA58[code];
  }
}

+ (BOOL)_setPlaybackQueueForMyPodcastsWithOrder:(int64_t)order playerController:(id)controller startPlayback:(BOOL)playback forceLocal:(BOOL)local reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)completion
{
  localCopy = local;
  playbackCopy = playback;
  controllerCopy = controller;
  completionCopy = completion;
  if (order)
  {
    v17 = [MTPlaybackQueueFactory playMyPodcastsWithOrder:order];
    LOBYTE(v20) = interactive;
    v18 = [self _setManifest:v17 playerController:controllerCopy queueType:1 startPlayback:playbackCopy forceLocal:localCopy reason:reason interactive:v20 completion:completionCopy];
  }

  else
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100131244;
    v21[3] = &unk_1004DD6F8;
    v22 = controllerCopy;
    v27 = playbackCopy;
    v23 = completionCopy;
    v24 = 0;
    v28 = localCopy;
    selfCopy = self;
    reasonCopy = reason;
    interactiveCopy = interactive;
    [v22 restorePlayerManifestWithCompletion:v21];

    v18 = 1;
  }

  return v18;
}

+ (BOOL)_setManifest:(id)manifest playerController:(id)controller queueType:(int64_t)type startPlayback:(BOOL)playback forceLocal:(BOOL)local reason:(unint64_t)reason interactive:(BOOL)interactive completion:(id)self0
{
  playbackCopy = playback;
  manifestCopy = manifest;
  controllerCopy = controller;
  completionCopy = completion;
  v17 = completionCopy;
  if (manifestCopy)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013154C;
    v19[3] = &unk_1004DBE70;
    v20 = completionCopy;
    typeCopy = type;
    [controllerCopy setManifest:manifestCopy startPlayback:playbackCopy forceLocal:0 reason:reason interactive:interactive completion:v19];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 3, type);
  }

  return manifestCopy != 0;
}

+ (BOOL)_setPlaybackQueueFromStoreForPodcastAdamId:(id)id playerController:(id)controller siriAssetInfo:(id)info savePlayHistory:(BOOL)history playbackOrder:(int64_t)order startPlayback:(BOOL)playback reason:(unint64_t)reason interactive:(BOOL)self0 completion:(id)self1
{
  playbackCopy = playback;
  historyCopy = history;
  idCopy = id;
  infoCopy = info;
  completionCopy = completion;
  controllerCopy = controller;
  longLongValue = [idCopy longLongValue];
  v19 = [NSNumber numberWithLongLong:longLongValue];
  v20 = [MTStoreManifest podcastStorePlatformDictionaryFromSiriAssetInfo:infoCopy podcastAdamId:v19];

  if (v20)
  {
    v21 = [MTStoreManifest alloc];
    v22 = [NSNumber numberWithLongLong:longLongValue];
    v23 = [(MTStoreManifest *)v21 initWithPodcastAdamId:v22 siriAssetInfo:infoCopy oldestEpisode:order == 2 initiatedByAnotherUser:0];

    v24 = 3;
  }

  else
  {
    v23 = [[MTNetworkMediaManifest alloc] initWithPodcastAdamId:idCopy assetInfo:infoCopy];
    [(MTPlayerManifest *)v23 setNetworkUPPEnabled:historyCopy];
    v24 = 8;
  }

  LOBYTE(v27) = interactive;
  v25 = [self _setManifest:v23 playerController:controllerCopy queueType:v24 startPlayback:playbackCopy forceLocal:0 reason:reason interactive:v27 completion:completionCopy];

  return v25;
}

+ (int64_t)_automaticCommandStatusForRequestStatus:(int64_t)status
{
  if (status == 4)
  {
    return 110;
  }

  else
  {
    return -1;
  }
}

@end
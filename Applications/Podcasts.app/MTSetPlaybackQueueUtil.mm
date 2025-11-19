@interface MTSetPlaybackQueueUtil
+ (BOOL)_setManifest:(id)a3 playerController:(id)a4 queueType:(int64_t)a5 startPlayback:(BOOL)a6 forceLocal:(BOOL)a7 reason:(unint64_t)a8 interactive:(BOOL)a9 completion:(id)a10;
+ (BOOL)_setPlaybackQueueForMyPodcastsWithOrder:(int64_t)a3 playerController:(id)a4 startPlayback:(BOOL)a5 forceLocal:(BOOL)a6 reason:(unint64_t)a7 interactive:(BOOL)a8 completion:(id)a9;
+ (BOOL)_setPlaybackQueueFromStoreForPodcastAdamId:(id)a3 playerController:(id)a4 siriAssetInfo:(id)a5 savePlayHistory:(BOOL)a6 playbackOrder:(int64_t)a7 startPlayback:(BOOL)a8 reason:(unint64_t)a9 interactive:(BOOL)a10 completion:(id)a11;
+ (BOOL)setPlaybackQueueForRequest:(id)a3 playerController:(id)a4 siriAssetInfo:(id)a5 enqueuer:(id)a6 savePlayHistory:(BOOL)a7 startPlayback:(BOOL)a8 forceLocal:(BOOL)a9 isMagicMoment:(BOOL)a10 completion:(id)a11;
+ (BOOL)subscribeWithCommandURL:(id)a3 siriAssetInfo:(id)a4 requester:(id)a5 completion:(id)a6;
+ (id)queueCommandCustomStatusForRequestStatus:(int64_t)a3 queueType:(int64_t)a4;
+ (int64_t)_automaticCommandStatusForRequestStatus:(int64_t)a3;
+ (int64_t)queueCommandStatusForRequestStatus:(int64_t)a3 queueType:(int64_t)a4;
+ (int64_t)subscribeCommandStatusForErrorCode:(int64_t)a3;
@end

@implementation MTSetPlaybackQueueUtil

+ (BOOL)setPlaybackQueueForRequest:(id)a3 playerController:(id)a4 siriAssetInfo:(id)a5 enqueuer:(id)a6 savePlayHistory:(BOOL)a7 startPlayback:(BOOL)a8 forceLocal:(BOOL)a9 isMagicMoment:(BOOL)a10 completion:(id)a11
{
  v11 = a8;
  v12 = a7;
  v17 = a3;
  v18 = a4;
  v71 = a5;
  v19 = a6;
  v20 = a11;
  v21 = [v17 playQueueType];
  if (!v17 || !v21)
  {
    if (v20)
    {
      (*(v20 + 2))(v20, 0, 0);
    }

    goto LABEL_10;
  }

  v69 = a1;
  v70 = v11;
  v22 = +[MTReachability sharedInstance];
  v23 = [v22 isReachable];

  if ((v23 & 1) != 0 || !+[PFClientUtil isRunningOnHomepod])
  {
    v26 = +[PFClientUtil isRunningOnHomepod];
    if (v19 && v26)
    {
      v27 = _MTLogCategoryMediaRemote();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Overriding active account, enqueuer: %@", &buf, 0xCu);
      }

      v28 = +[MTAccountController sharedInstance];
      [v28 setAccountOverride:v19];
    }

    else
    {
      v29 = +[MTAccountController sharedInstance];
      [v29 setAccountOverride:0];
    }

    v68 = [v17 playReason];
    if ([v17 playQueueType] == 1)
    {
      v30 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "setPlaybackQueueForRequest for type MTURLPlayCommandQueueTypePodcasts", &buf, 2u);
      }

      if (a10)
      {
        if (v20)
        {
          (*(v20 + 2))(v20, 0, 0);
        }

        goto LABEL_10;
      }

      if (+[PFClientUtil isRunningOnHomepod])
      {
        v45 = [[MTNetworkMediaManifest alloc] initWithAssetInfo:v71];
        [(MTPlayerManifest *)v45 setNetworkUPPEnabled:v12];
        LOBYTE(v64) = 0;
        v46 = [a1 _setManifest:v45 playerController:v18 queueType:8 startPlayback:v70 forceLocal:a9 reason:v68 interactive:v64 completion:v20];
      }

      else
      {
        v49 = [v17 playbackOrder];
        v50 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v49;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "setPlaybackQueueForRequest with playback order: %ld", &buf, 0xCu);
        }

        v46 = [a1 _setPlaybackQueueForMyPodcastsWithOrder:v49 playerController:v18 startPlayback:v70 forceLocal:a9 reason:v68 interactive:0 completion:v20];
      }

LABEL_97:
      v25 = v46;
      goto LABEL_98;
    }

    if ([v17 playQueueType] != 2)
    {
      if ([v17 playQueueType] == 3)
      {
        v40 = _MTLogCategoryPlayback();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "setPlaybackQueueForRequest for type MTURLPlayCommandQueueTypeStation", &buf, 2u);
        }

        v41 = [v17 stationUuid];
        v42 = [v17 episodeUuid];
        if (+[PFClientUtil isRunningOnHomepod])
        {
          v43 = [[MTNetworkMediaManifest alloc] initWithStationId:v41 assetInfo:v71];
          [(MTPlayerManifest *)v43 setNetworkUPPEnabled:v12];
          v44 = 8;
        }

        else
        {
          if (v42)
          {
            [MTPlaybackQueueFactory playStationUuid:v41 episodeUuid:v42 limit:0x7FFFFFFFFFFFFFFFLL];
          }

          else
          {
            [MTPlaybackQueueFactory playStationUuid:v41 limit:0x7FFFFFFFFFFFFFFFLL];
          }
          v43 = ;
          v44 = 4;
        }

        if (a10)
        {
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_100130A80;
          v72[3] = &unk_1004DD6D0;
          v73 = v43;
          v74 = v18;
          v75 = v20;
          v59 = v43;
          [v74 setManifestAsDryRun:v59 reason:9 completion:v72];

          v25 = 1;
          goto LABEL_98;
        }

        LOBYTE(v64) = 0;
        v46 = [a1 _setManifest:v43 playerController:v18 queueType:v44 startPlayback:v70 forceLocal:0 reason:v68 interactive:v64 completion:v20];
      }

      else
      {
        if (v20)
        {
          (*(v20 + 2))(v20, 0, 0);
          v47 = _MTLogCategoryMediaRemote();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = [v17 urlString];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v48;
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
    v120 = [v17 podcastUuid];
    v32 = [v17 episodeUuid];
    v109 = 0;
    v110 = &v109;
    v111 = 0x3032000000;
    v112 = sub_100008B9C;
    v113 = sub_10003B5A4;
    v114 = [v17 podcastAdamId];
    v103 = 0;
    v104 = &v103;
    v105 = 0x3032000000;
    v106 = sub_100008B9C;
    v107 = sub_10003B5A4;
    v108 = [v17 episodeAdamId];
    v66 = [v17 playbackOrder];
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
    v35 = [v34 mainOrPrivateContext];

    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_1001307D0;
    v81[3] = &unk_1004DD680;
    v36 = v35;
    v82 = v36;
    v37 = v32;
    v83 = v37;
    p_buf = &buf;
    v86 = &v99;
    v87 = &v95;
    v88 = &v109;
    v89 = &v91;
    v90 = &v103;
    v84 = v17;
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

        if ((v23 & 1) == 0)
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
          if (*(v100 + 24) == 1 && ([MTPlaybackQueueFactory playEpisodeUuid:v37 context:0 limit:0x7FFFFFFFFFFFFFFFLL], (v56 = objc_claimAutoreleasedReturnValue()) != 0) || ([MTPlaybackQueueFactory playPodcastUuid:*(*(&buf + 1) + 40) order:v66 limit:0x7FFFFFFFFFFFFFFFLL error:v115], v56 = objc_claimAutoreleasedReturnValue(), *v115 != 3))
          {
            if (a10)
            {
              v76[0] = _NSConcreteStackBlock;
              v76[1] = 3221225472;
              v76[2] = sub_1001309F0;
              v76[3] = &unk_1004DD6A8;
              v58 = v56;
              v77 = v58;
              v78 = v18;
              v79 = v20;
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
            v46 = [v69 _setManifest:v56 playerController:v18 queueType:2 startPlayback:v70 forceLocal:a9 reason:v68 interactive:v64 completion:v20];
          }

          else
          {
            if (v20)
            {
              (*(v20 + 2))(v20, 4, 2);
            }

            v46 = 0;
          }
        }

        else if ([v104[5] length])
        {
          if (a10)
          {
            goto LABEL_65;
          }

          if (v12)
          {
            v57 = +[PFClientUtil isRunningOnHomepod];
          }

          else
          {
            v57 = 0;
          }

          v60 = [MTNetworkMediaManifest alloc];
          v61 = [(MTNetworkMediaManifest *)v60 initWithEpisodeAdamId:v104[5] assetInfo:v71];
          [(MTPlayerManifest *)v61 setNetworkUPPEnabled:v57];
          LOBYTE(v64) = 0;
          v46 = [v69 _setManifest:v61 playerController:v18 queueType:8 startPlayback:v70 forceLocal:a9 reason:v68 interactive:v64 completion:v20];
        }

        else if ([v110[5] length])
        {
          if (a10)
          {
LABEL_65:
            v54 = [v18 playbackQueueController];
            [v54 setMagicMomentPlayerItem:0];

            if (!v20)
            {
LABEL_68:
              v46 = 0;
              v55 = 0;
              v25 = 0;
              goto LABEL_96;
            }

            v53 = 1;
LABEL_67:
            (*(v20 + 2))(v20, v53, 0);
            goto LABEL_68;
          }

          LOBYTE(v65) = 0;
          v46 = [v69 _setPlaybackQueueFromStoreForPodcastAdamId:v110[5] playerController:v18 siriAssetInfo:v71 savePlayHistory:v12 playbackOrder:v66 startPlayback:v70 reason:v68 interactive:v65 completion:v20];
        }

        else
        {
          v62 = _MTLogCategoryDefault();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *v115 = 0;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Invalid queue component specification.", v115, 2u);
          }

          if (v20)
          {
            (*(v20 + 2))(v20, 0, 0);
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

  (*(v20 + 2))(v20, 11, 0);
LABEL_10:
  v25 = 0;
LABEL_98:

  return v25;
}

+ (BOOL)subscribeWithCommandURL:(id)a3 siriAssetInfo:(id)a4 requester:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [[MTURLCommandRequest alloc] initWithURLString:v12];

  if ([(MTURLCommandRequest *)v13 commandType]== 1)
  {
    v14 = [(MTURLCommandRequest *)v13 podcastAdamId];
    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v14 longLongValue]);
    if ([MTStoreIdentifier isEmptyNumber:v15])
    {
      v16 = [(MTURLCommandRequest *)v13 podcastFeedUrl];
      v17 = [v16 length];

      if (!v17)
      {
        if (v11)
        {
          v11[2](v11, 0, 2);
        }

        v19 = 0;
        goto LABEL_18;
      }

      v18 = [(MTURLCommandRequest *)v13 podcastFeedUrl];
      [MTSubscribeUtil subscribeToPodcastWithFeedUrl:v18 completion:v11];
    }

    else
    {
      if (!+[PFClientUtil isRunningOnHomepod])
      {
        v21 = [MTStoreManifest podcastStorePlatformDictionaryFromSiriAssetInfo:v9 podcastAdamId:v15];
        v19 = v21 != 0;
        if (v21)
        {
          [MTSubscribeUtil subscribeToPodcastWithStorePlatformDictionary:v21 completion:v11];
        }

        else
        {
          v22 = objc_alloc_init(MTAddPodcastParams);
          -[MTAddPodcastParams setStoreCollectionId:](v22, "setStoreCollectionId:", [v14 longLongValue]);
          v25 = _NSConcreteStackBlock;
          v26 = 3221225472;
          v27 = sub_100130FA8;
          v28 = &unk_1004D8838;
          v29 = v11;
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
      v31 = v11;
      [v20 subscribeToShowWithPodcastStoreId:v14 account:v10 completion:v30];
    }

    v19 = 1;
LABEL_18:

    goto LABEL_19;
  }

  if (v11)
  {
    v11[2](v11, 0, 2);
  }

  v19 = 0;
LABEL_19:

  return v19;
}

+ (int64_t)queueCommandStatusForRequestStatus:(int64_t)a3 queueType:(int64_t)a4
{
  if (a3 > 9)
  {
    return 200;
  }

  else
  {
    return qword_1003FEA08[a3];
  }
}

+ (id)queueCommandCustomStatusForRequestStatus:(int64_t)a3 queueType:(int64_t)a4
{
  if (a3 == 11)
  {
    v4 = [NSError errorWithDomain:@"MTSetPlaybackQueueUtilErrorDomain" code:-433001 userInfo:0];
    v5 = [MPRemoteCommandStatus statusWithCode:200 error:v4];
  }

  else
  {
    v5 = [MPRemoteCommandStatus statusWithCode:[MTSetPlaybackQueueUtil queueCommandStatusForRequestStatus:a3 queueType:a4]];
  }

  return v5;
}

+ (int64_t)subscribeCommandStatusForErrorCode:(int64_t)a3
{
  if (a3 > 3)
  {
    return 100;
  }

  else
  {
    return qword_1003FEA58[a3];
  }
}

+ (BOOL)_setPlaybackQueueForMyPodcastsWithOrder:(int64_t)a3 playerController:(id)a4 startPlayback:(BOOL)a5 forceLocal:(BOOL)a6 reason:(unint64_t)a7 interactive:(BOOL)a8 completion:(id)a9
{
  v11 = a6;
  v12 = a5;
  v15 = a4;
  v16 = a9;
  if (a3)
  {
    v17 = [MTPlaybackQueueFactory playMyPodcastsWithOrder:a3];
    LOBYTE(v20) = a8;
    v18 = [a1 _setManifest:v17 playerController:v15 queueType:1 startPlayback:v12 forceLocal:v11 reason:a7 interactive:v20 completion:v16];
  }

  else
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100131244;
    v21[3] = &unk_1004DD6F8;
    v22 = v15;
    v27 = v12;
    v23 = v16;
    v24 = 0;
    v28 = v11;
    v25 = a1;
    v26 = a7;
    v29 = a8;
    [v22 restorePlayerManifestWithCompletion:v21];

    v18 = 1;
  }

  return v18;
}

+ (BOOL)_setManifest:(id)a3 playerController:(id)a4 queueType:(int64_t)a5 startPlayback:(BOOL)a6 forceLocal:(BOOL)a7 reason:(unint64_t)a8 interactive:(BOOL)a9 completion:(id)a10
{
  v11 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a10;
  v17 = v16;
  if (v14)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10013154C;
    v19[3] = &unk_1004DBE70;
    v20 = v16;
    v21 = a5;
    [v15 setManifest:v14 startPlayback:v11 forceLocal:0 reason:a8 interactive:a9 completion:v19];
  }

  else if (v16)
  {
    (*(v16 + 2))(v16, 3, a5);
  }

  return v14 != 0;
}

+ (BOOL)_setPlaybackQueueFromStoreForPodcastAdamId:(id)a3 playerController:(id)a4 siriAssetInfo:(id)a5 savePlayHistory:(BOOL)a6 playbackOrder:(int64_t)a7 startPlayback:(BOOL)a8 reason:(unint64_t)a9 interactive:(BOOL)a10 completion:(id)a11
{
  v30 = a8;
  v28 = a6;
  v14 = a3;
  v15 = a5;
  v16 = a11;
  v17 = a4;
  v18 = [v14 longLongValue];
  v19 = [NSNumber numberWithLongLong:v18];
  v20 = [MTStoreManifest podcastStorePlatformDictionaryFromSiriAssetInfo:v15 podcastAdamId:v19];

  if (v20)
  {
    v21 = [MTStoreManifest alloc];
    v22 = [NSNumber numberWithLongLong:v18];
    v23 = [(MTStoreManifest *)v21 initWithPodcastAdamId:v22 siriAssetInfo:v15 oldestEpisode:a7 == 2 initiatedByAnotherUser:0];

    v24 = 3;
  }

  else
  {
    v23 = [[MTNetworkMediaManifest alloc] initWithPodcastAdamId:v14 assetInfo:v15];
    [(MTPlayerManifest *)v23 setNetworkUPPEnabled:v28];
    v24 = 8;
  }

  LOBYTE(v27) = a10;
  v25 = [a1 _setManifest:v23 playerController:v17 queueType:v24 startPlayback:v30 forceLocal:0 reason:a9 interactive:v27 completion:v16];

  return v25;
}

+ (int64_t)_automaticCommandStatusForRequestStatus:(int64_t)a3
{
  if (a3 == 4)
  {
    return 110;
  }

  else
  {
    return -1;
  }
}

@end
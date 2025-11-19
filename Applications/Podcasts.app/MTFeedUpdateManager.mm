@interface MTFeedUpdateManager
- (BOOL)isPodcastUpdatable:(id)a3 userInitiated:(BOOL)a4 forced:(BOOL)a5;
- (MTFeedUpdateManager)init;
- (void)_fetchMediaAPIShowsExpectedToUpdate:(id)a3;
- (void)_unsafe_updateAllPodcastsUserInitiated:(BOOL)a3 forced:(BOOL)a4 useBackgroundFetch:(BOOL)a5 source:(int64_t)a6 startedUpdatesCallback:(id)a7;
- (void)_updateAllMediaAPIPodcastsUserInitiated:(BOOL)a3 source:(int64_t)a4 completion:(id)a5;
- (void)_updateAllNonMediaAPIPodcastsUserInitiated:(BOOL)a3 forced:(BOOL)a4 source:(int64_t)a5 started:(id)a6;
- (void)_updateAllPodcastsUserInitiated:(BOOL)a3 forced:(BOOL)a4 useBackgroundFetch:(BOOL)a5 source:(int64_t)a6 startedUpdatesCallback:(id)a7;
- (void)_updatePodcastWithUUID:(id)a3 triggerBy:(id)a4 userInitiated:(BOOL)a5 forced:(BOOL)a6 forceBootstrap:(BOOL)a7 source:(int64_t)a8 completion:(id)a9;
- (void)_updatePodcastWithUUID:(id)a3 triggerBy:(id)a4 userInitiated:(BOOL)a5 forced:(BOOL)a6 forceBootstrap:(BOOL)a7 useBackgroundFetch:(BOOL)a8 source:(int64_t)a9 tryRedirectURL:(BOOL)a10 startedUpdateCallback:(id)a11 completion:(id)a12;
- (void)_updatePodcastsWithUUIDs:(id)a3 userInitiated:(BOOL)a4 forced:(BOOL)a5 useBackgroundFetch:(BOOL)a6 source:(int64_t)a7 startedUpdatesCallback:(id)a8;
- (void)updateAllMediaAPIPodcastsWithSource:(int64_t)a3 started:(id)a4;
- (void)updateAllPodcastsInBackgroundWithSource:(int64_t)a3 started:(id)a4;
- (void)updateAllPodcastsNeedingRetry:(id)a3;
- (void)updateAllPodcastsUserInitiated:(BOOL)a3 forced:(BOOL)a4 source:(int64_t)a5 started:(id)a6;
- (void)updateMediaAPIPodcastsExpectedToUpdate:(id)a3;
- (void)updateMediaAPIPodcastsExpectedToUpdateWithLimit:(int64_t)a3 started:(id)a4;
- (void)updatePodcastWithStoreId:(int64_t)a3 triggerBy:(id)a4 userInitiated:(BOOL)a5 forced:(BOOL)a6 source:(int64_t)a7 completion:(id)a8;
- (void)updatePodcastsWithUUIDs:(id)a3 userInitiated:(BOOL)a4 source:(int64_t)a5 started:(id)a6;
@end

@implementation MTFeedUpdateManager

- (MTFeedUpdateManager)init
{
  v8.receiver = self;
  v8.super_class = MTFeedUpdateManager;
  v2 = [(MTFeedUpdateManager *)&v8 init];
  if (v2)
  {
    v3 = +[MTFeedManager sharedInstance];
    feedManager = v2->_feedManager;
    v2->_feedManager = v3;

    v5 = dispatch_queue_create("MTFeedUpdateManagerQueue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;
  }

  return v2;
}

- (void)updateAllPodcastsUserInitiated:(BOOL)a3 forced:(BOOL)a4 source:(int64_t)a5 started:(id)a6
{
  v10 = a6;
  v11 = [(MTFeedUpdateManager *)self workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010A41C;
  v13[3] = &unk_1004DC8A0;
  v16 = a3;
  v17 = a4;
  v14 = v10;
  v15 = a5;
  v13[4] = self;
  v12 = v10;
  dispatch_async(v11, v13);
}

- (void)updateAllPodcastsInBackgroundWithSource:(int64_t)a3 started:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Updating all podcasts with non background source. %ld.", buf, 0xCu);
    }
  }

  v8 = [(MTFeedUpdateManager *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010A574;
  block[3] = &unk_1004D8A70;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(v8, block);
}

- (void)updateAllPodcastsNeedingRetry:(id)a3
{
  v4 = a3;
  v5 = [(MTFeedUpdateManager *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010A644;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchMediaAPIShowsExpectedToUpdate:(id)a3
{
  v3 = a3;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 importContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010AA98;
  v8[3] = &unk_1004D8520;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  v7 = v5;
  [v7 performBlock:v8];
}

- (void)updateMediaAPIPodcastsExpectedToUpdateWithLimit:(int64_t)a3 started:(id)a4
{
  v6 = a4;
  v7 = [(MTFeedUpdateManager *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B29C;
  block[3] = &unk_1004D8A70;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)updateMediaAPIPodcastsExpectedToUpdate:(id)a3
{
  v4 = a3;
  v5 = [(MTFeedUpdateManager *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B888;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_updateAllMediaAPIPodcastsUserInitiated:(BOOL)a3 source:(int64_t)a4 completion:(id)a5
{
  v6 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010BC30;
  v8[3] = &unk_1004DC990;
  v8[4] = self;
  v9 = a5;
  v11 = v6;
  v10 = a4;
  v7 = v9;
  [_TtC18PodcastsFoundation26BatchFeedRequestController fetchOutOfDateShowUUIDsWithIncludeImplicit:v6 completionHandler:v8];
}

- (void)updateAllMediaAPIPodcastsWithSource:(int64_t)a3 started:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010BF20;
  v7[3] = &unk_1004DC9B8;
  v8 = a4;
  v6 = v8;
  [(MTFeedUpdateManager *)self _updateAllMediaAPIPodcastsUserInitiated:0 source:a3 completion:v7];
}

- (void)_updateAllNonMediaAPIPodcastsUserInitiated:(BOOL)a3 forced:(BOOL)a4 source:(int64_t)a5 started:(id)a6
{
  v9 = a6;
  v10 = +[MTDB sharedInstance];
  v11 = [v10 importContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010C020;
  v14[3] = &unk_1004DC9E0;
  v18 = a3;
  v15 = v11;
  v16 = self;
  v19 = a4;
  v17 = v9;
  v12 = v9;
  v13 = v11;
  [v13 performBlock:v14];
}

- (void)updatePodcastsWithUUIDs:(id)a3 userInitiated:(BOOL)a4 source:(int64_t)a5 started:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(MTFeedUpdateManager *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C49C;
  block[3] = &unk_1004DC968;
  block[4] = self;
  v16 = v10;
  v19 = a4;
  v17 = v11;
  v18 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

- (void)_updatePodcastWithUUID:(id)a3 triggerBy:(id)a4 userInitiated:(BOOL)a5 forced:(BOOL)a6 forceBootstrap:(BOOL)a7 source:(int64_t)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v18 = [(MTFeedUpdateManager *)self workQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10010C658;
  v22[3] = &unk_1004DCA08;
  v27 = a5;
  v28 = a6;
  v22[4] = self;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v29 = a7;
  v26 = a8;
  v19 = v16;
  v20 = v15;
  v21 = v17;
  dispatch_async(v18, v22);
}

- (void)updatePodcastWithStoreId:(int64_t)a3 triggerBy:(id)a4 userInitiated:(BOOL)a5 forced:(BOOL)a6 source:(int64_t)a7 completion:(id)a8
{
  v13 = a4;
  v14 = a8;
  v15 = +[MTDB sharedInstance];
  v16 = [v15 importContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10010C930;
  v20[3] = &unk_1004DCA30;
  v23 = v14;
  v24 = a3;
  v21 = v16;
  v22 = v13;
  v26 = a5;
  v27 = a6;
  v25 = a7;
  v17 = v13;
  v18 = v14;
  v19 = v16;
  [v19 performBlock:v20];
}

- (BOOL)isPodcastUpdatable:(id)a3 userInitiated:(BOOL)a4 forced:(BOOL)a5
{
  v6 = a4;
  v7 = a3;
  v8 = v7;
  if (v7 && (![v7 isImplicitlyFollowed] || v6))
  {
    v9 = 1;
    if (!v6 && !a5)
    {
      if (+[MTStoreIdentifier isNotEmpty:](MTStoreIdentifier, "isNotEmpty:", [v8 storeCollectionId]) && ((objc_msgSend(v8, "importing") & 1) != 0 || (objc_msgSend(v8, "feedUpdateNeedsRetry") & 1) != 0))
      {
        v9 = 1;
      }

      else
      {
        v11 = +[MTPodcast predicateForPeriodicallyUpdatablePodcasts];
        v9 = [v11 evaluateWithObject:v8];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_unsafe_updateAllPodcastsUserInitiated:(BOOL)a3 forced:(BOOL)a4 useBackgroundFetch:(BOOL)a5 source:(int64_t)a6 startedUpdatesCallback:(id)a7
{
  v10 = a3;
  v12 = a7;
  if (v10)
  {
    +[MTPodcast predicateForNotHiddenPodcasts];
  }

  else
  {
    +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  }
  v13 = ;
  v14 = +[MTDB sharedInstance];
  v15 = [v14 importContext];

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100008B1C;
  v29[4] = sub_10003B564;
  v30 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010CDC0;
  v19[3] = &unk_1004DCA80;
  v16 = v15;
  v20 = v16;
  v17 = v13;
  v21 = v17;
  v22 = self;
  v26 = v10;
  v27 = a4;
  v28 = a5;
  v24 = v29;
  v25 = a6;
  v18 = v12;
  v23 = v18;
  [v16 performBlock:v19];

  _Block_object_dispose(v29, 8);
}

- (void)_updateAllPodcastsUserInitiated:(BOOL)a3 forced:(BOOL)a4 useBackgroundFetch:(BOOL)a5 source:(int64_t)a6 startedUpdatesCallback:(id)a7
{
  v10 = a3;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10010D2A0;
  v28[3] = &unk_1004D9870;
  v12 = a7;
  v29 = v12;
  v13 = objc_retainBlock(v28);
  if (sub_100039618())
  {
    v14 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Skipping feed update: disabled";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    }
  }

  else
  {
    v16 = [(MTFeedUpdateManager *)self feedManager];
    v17 = [v16 abortUpdatesIfNetworkUnreachable:v10];

    if (!v17)
    {
      v18 = +[IMURLBag sharedInstance];
      v19 = [v18 batchFeedFetchIsEnabled];
      v20 = [(MTFeedUpdateManager *)self workQueue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10010D350;
      v21[3] = &unk_1004DCB20;
      v24 = v10;
      v25 = a4;
      v26 = a5;
      v21[4] = self;
      v23 = a6;
      v22 = v12;
      [v19 asyncValueOnQueue:v20 withCompletion:v21];

      goto LABEL_10;
    }

    v14 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Skipping feed update due to network not being reachable";
      goto LABEL_7;
    }
  }

  (v13[2])(v13, 0);
LABEL_10:
}

- (void)_updatePodcastsWithUUIDs:(id)a3 userInitiated:(BOOL)a4 forced:(BOOL)a5 useBackgroundFetch:(BOOL)a6 source:(int64_t)a7 startedUpdatesCallback:(id)a8
{
  v14 = a3;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10010D9FC;
  v27[3] = &unk_1004D9870;
  v28 = a8;
  v15 = v28;
  v16 = objc_retainBlock(v27);
  v17 = [(MTFeedUpdateManager *)self workQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10010DAAC;
  v20[3] = &unk_1004DCB98;
  v24 = a4;
  v20[4] = self;
  v21 = v14;
  v25 = a5;
  v26 = a6;
  v22 = v16;
  v23 = a7;
  v18 = v14;
  v19 = v16;
  dispatch_async(v17, v20);
}

- (void)_updatePodcastWithUUID:(id)a3 triggerBy:(id)a4 userInitiated:(BOOL)a5 forced:(BOOL)a6 forceBootstrap:(BOOL)a7 useBackgroundFetch:(BOOL)a8 source:(int64_t)a9 tryRedirectURL:(BOOL)a10 startedUpdateCallback:(id)a11 completion:(id)a12
{
  v15 = a3;
  v41 = a4;
  v16 = a11;
  v17 = a12;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10010E5A8;
  v73[3] = &unk_1004D8838;
  v18 = v16;
  v74 = v18;
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10010E660;
  v70[3] = &unk_1004DCBC0;
  v19 = objc_retainBlock(v73);
  v71 = v19;
  v20 = v17;
  v72 = v20;
  v21 = objc_retainBlock(v70);
  if (sub_100039618())
  {
    v22 = +[_TtC18PodcastsFoundation20FeedUpdaterObjcError feedUpdatesDisabled];
    (v21[2])(v21, v22);
  }

  else
  {
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v69 = 1;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = sub_100008B1C;
    v66[4] = sub_10003B564;
    v67 = 0;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x3032000000;
    v64[3] = sub_100008B1C;
    v64[4] = sub_10003B564;
    v65 = 0;
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x2020000000;
    v63[3] = 0;
    v35 = +[NSUUID UUID];
    v23 = _MTLogCategoryFeedUpdateDiagnostics();
    spid = os_signpost_id_generate(v23);

    v24 = _MTLogCategoryFeedUpdateDiagnostics();
    v25 = v24;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      v26 = [v35 UUIDString];
      *buf = 138543362;
      v76 = v26;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MTFeedUpdateManagerFull", "identifier=%{public, name=identifier}@", buf, 0xCu);
    }

    v27 = _MTLogCategoryFeedUpdateDiagnostics();
    v28 = os_signpost_id_generate(v27);

    v29 = _MTLogCategoryFeedUpdateDiagnostics();
    v30 = v29;
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      v31 = [v35 UUIDString];
      *buf = 138543362;
      v76 = v31;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "CoreDataCongestion", "identifier=%{public, name=identifier}@", buf, 0xCu);
    }

    v32 = +[MTDB sharedInstance];
    v33 = [v32 importContext];

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10010E74C;
    v42[3] = &unk_1004DCC38;
    v55 = v28;
    v36 = v35;
    v43 = v36;
    v34 = v33;
    v44 = v34;
    v45 = v15;
    v46 = self;
    v58 = a5;
    v59 = a6;
    v51 = v68;
    v52 = v66;
    v60 = a10;
    v53 = v63;
    v54 = v64;
    v61 = a8;
    v56 = a9;
    v48 = v21;
    v49 = v19;
    v47 = v41;
    v62 = a7;
    v50 = v20;
    v57 = spid;
    [v34 performBlock:v42];

    _Block_object_dispose(v63, 8);
    _Block_object_dispose(v64, 8);

    _Block_object_dispose(v66, 8);
    _Block_object_dispose(v68, 8);
  }
}

@end
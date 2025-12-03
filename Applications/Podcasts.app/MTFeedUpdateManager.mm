@interface MTFeedUpdateManager
- (BOOL)isPodcastUpdatable:(id)updatable userInitiated:(BOOL)initiated forced:(BOOL)forced;
- (MTFeedUpdateManager)init;
- (void)_fetchMediaAPIShowsExpectedToUpdate:(id)update;
- (void)_unsafe_updateAllPodcastsUserInitiated:(BOOL)initiated forced:(BOOL)forced useBackgroundFetch:(BOOL)fetch source:(int64_t)source startedUpdatesCallback:(id)callback;
- (void)_updateAllMediaAPIPodcastsUserInitiated:(BOOL)initiated source:(int64_t)source completion:(id)completion;
- (void)_updateAllNonMediaAPIPodcastsUserInitiated:(BOOL)initiated forced:(BOOL)forced source:(int64_t)source started:(id)started;
- (void)_updateAllPodcastsUserInitiated:(BOOL)initiated forced:(BOOL)forced useBackgroundFetch:(BOOL)fetch source:(int64_t)source startedUpdatesCallback:(id)callback;
- (void)_updatePodcastWithUUID:(id)d triggerBy:(id)by userInitiated:(BOOL)initiated forced:(BOOL)forced forceBootstrap:(BOOL)bootstrap source:(int64_t)source completion:(id)completion;
- (void)_updatePodcastWithUUID:(id)d triggerBy:(id)by userInitiated:(BOOL)initiated forced:(BOOL)forced forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)source tryRedirectURL:(BOOL)self0 startedUpdateCallback:(id)self1 completion:(id)self2;
- (void)_updatePodcastsWithUUIDs:(id)ds userInitiated:(BOOL)initiated forced:(BOOL)forced useBackgroundFetch:(BOOL)fetch source:(int64_t)source startedUpdatesCallback:(id)callback;
- (void)updateAllMediaAPIPodcastsWithSource:(int64_t)source started:(id)started;
- (void)updateAllPodcastsInBackgroundWithSource:(int64_t)source started:(id)started;
- (void)updateAllPodcastsNeedingRetry:(id)retry;
- (void)updateAllPodcastsUserInitiated:(BOOL)initiated forced:(BOOL)forced source:(int64_t)source started:(id)started;
- (void)updateMediaAPIPodcastsExpectedToUpdate:(id)update;
- (void)updateMediaAPIPodcastsExpectedToUpdateWithLimit:(int64_t)limit started:(id)started;
- (void)updatePodcastWithStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forced:(BOOL)forced source:(int64_t)source completion:(id)completion;
- (void)updatePodcastsWithUUIDs:(id)ds userInitiated:(BOOL)initiated source:(int64_t)source started:(id)started;
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

- (void)updateAllPodcastsUserInitiated:(BOOL)initiated forced:(BOOL)forced source:(int64_t)source started:(id)started
{
  startedCopy = started;
  workQueue = [(MTFeedUpdateManager *)self workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010A41C;
  v13[3] = &unk_1004DC8A0;
  initiatedCopy = initiated;
  forcedCopy = forced;
  v14 = startedCopy;
  sourceCopy = source;
  v13[4] = self;
  v12 = startedCopy;
  dispatch_async(workQueue, v13);
}

- (void)updateAllPodcastsInBackgroundWithSource:(int64_t)source started:(id)started
{
  startedCopy = started;
  if (source)
  {
    v7 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      sourceCopy = source;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Updating all podcasts with non background source. %ld.", buf, 0xCu);
    }
  }

  workQueue = [(MTFeedUpdateManager *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010A574;
  block[3] = &unk_1004D8A70;
  v11 = startedCopy;
  sourceCopy2 = source;
  block[4] = self;
  v9 = startedCopy;
  dispatch_async(workQueue, block);
}

- (void)updateAllPodcastsNeedingRetry:(id)retry
{
  retryCopy = retry;
  workQueue = [(MTFeedUpdateManager *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010A644;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = retryCopy;
  v6 = retryCopy;
  dispatch_async(workQueue, v7);
}

- (void)_fetchMediaAPIShowsExpectedToUpdate:(id)update
{
  updateCopy = update;
  v4 = +[MTDB sharedInstance];
  importContext = [v4 importContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010AA98;
  v8[3] = &unk_1004D8520;
  v9 = importContext;
  v10 = updateCopy;
  v6 = updateCopy;
  v7 = importContext;
  [v7 performBlock:v8];
}

- (void)updateMediaAPIPodcastsExpectedToUpdateWithLimit:(int64_t)limit started:(id)started
{
  startedCopy = started;
  workQueue = [(MTFeedUpdateManager *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B29C;
  block[3] = &unk_1004D8A70;
  v10 = startedCopy;
  limitCopy = limit;
  block[4] = self;
  v8 = startedCopy;
  dispatch_async(workQueue, block);
}

- (void)updateMediaAPIPodcastsExpectedToUpdate:(id)update
{
  updateCopy = update;
  workQueue = [(MTFeedUpdateManager *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B888;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(workQueue, v7);
}

- (void)_updateAllMediaAPIPodcastsUserInitiated:(BOOL)initiated source:(int64_t)source completion:(id)completion
{
  initiatedCopy = initiated;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010BC30;
  v8[3] = &unk_1004DC990;
  v8[4] = self;
  completionCopy = completion;
  v11 = initiatedCopy;
  sourceCopy = source;
  v7 = completionCopy;
  [_TtC18PodcastsFoundation26BatchFeedRequestController fetchOutOfDateShowUUIDsWithIncludeImplicit:initiatedCopy completionHandler:v8];
}

- (void)updateAllMediaAPIPodcastsWithSource:(int64_t)source started:(id)started
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010BF20;
  v7[3] = &unk_1004DC9B8;
  startedCopy = started;
  v6 = startedCopy;
  [(MTFeedUpdateManager *)self _updateAllMediaAPIPodcastsUserInitiated:0 source:source completion:v7];
}

- (void)_updateAllNonMediaAPIPodcastsUserInitiated:(BOOL)initiated forced:(BOOL)forced source:(int64_t)source started:(id)started
{
  startedCopy = started;
  v10 = +[MTDB sharedInstance];
  importContext = [v10 importContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010C020;
  v14[3] = &unk_1004DC9E0;
  initiatedCopy = initiated;
  v15 = importContext;
  selfCopy = self;
  forcedCopy = forced;
  v17 = startedCopy;
  v12 = startedCopy;
  v13 = importContext;
  [v13 performBlock:v14];
}

- (void)updatePodcastsWithUUIDs:(id)ds userInitiated:(BOOL)initiated source:(int64_t)source started:(id)started
{
  dsCopy = ds;
  startedCopy = started;
  workQueue = [(MTFeedUpdateManager *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C49C;
  block[3] = &unk_1004DC968;
  block[4] = self;
  v16 = dsCopy;
  initiatedCopy = initiated;
  v17 = startedCopy;
  sourceCopy = source;
  v13 = startedCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

- (void)_updatePodcastWithUUID:(id)d triggerBy:(id)by userInitiated:(BOOL)initiated forced:(BOOL)forced forceBootstrap:(BOOL)bootstrap source:(int64_t)source completion:(id)completion
{
  dCopy = d;
  byCopy = by;
  completionCopy = completion;
  workQueue = [(MTFeedUpdateManager *)self workQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10010C658;
  v22[3] = &unk_1004DCA08;
  initiatedCopy = initiated;
  forcedCopy = forced;
  v22[4] = self;
  v23 = dCopy;
  v24 = byCopy;
  v25 = completionCopy;
  bootstrapCopy = bootstrap;
  sourceCopy = source;
  v19 = byCopy;
  v20 = dCopy;
  v21 = completionCopy;
  dispatch_async(workQueue, v22);
}

- (void)updatePodcastWithStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forced:(BOOL)forced source:(int64_t)source completion:(id)completion
{
  byCopy = by;
  completionCopy = completion;
  v15 = +[MTDB sharedInstance];
  importContext = [v15 importContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10010C930;
  v20[3] = &unk_1004DCA30;
  v23 = completionCopy;
  idCopy = id;
  v21 = importContext;
  v22 = byCopy;
  initiatedCopy = initiated;
  forcedCopy = forced;
  sourceCopy = source;
  v17 = byCopy;
  v18 = completionCopy;
  v19 = importContext;
  [v19 performBlock:v20];
}

- (BOOL)isPodcastUpdatable:(id)updatable userInitiated:(BOOL)initiated forced:(BOOL)forced
{
  initiatedCopy = initiated;
  updatableCopy = updatable;
  v8 = updatableCopy;
  if (updatableCopy && (![updatableCopy isImplicitlyFollowed] || initiatedCopy))
  {
    v9 = 1;
    if (!initiatedCopy && !forced)
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

- (void)_unsafe_updateAllPodcastsUserInitiated:(BOOL)initiated forced:(BOOL)forced useBackgroundFetch:(BOOL)fetch source:(int64_t)source startedUpdatesCallback:(id)callback
{
  initiatedCopy = initiated;
  callbackCopy = callback;
  if (initiatedCopy)
  {
    +[MTPodcast predicateForNotHiddenPodcasts];
  }

  else
  {
    +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  }
  v13 = ;
  v14 = +[MTDB sharedInstance];
  importContext = [v14 importContext];

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
  v16 = importContext;
  v20 = v16;
  v17 = v13;
  v21 = v17;
  selfCopy = self;
  v26 = initiatedCopy;
  forcedCopy = forced;
  fetchCopy = fetch;
  v24 = v29;
  sourceCopy = source;
  v18 = callbackCopy;
  v23 = v18;
  [v16 performBlock:v19];

  _Block_object_dispose(v29, 8);
}

- (void)_updateAllPodcastsUserInitiated:(BOOL)initiated forced:(BOOL)forced useBackgroundFetch:(BOOL)fetch source:(int64_t)source startedUpdatesCallback:(id)callback
{
  initiatedCopy = initiated;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10010D2A0;
  v28[3] = &unk_1004D9870;
  callbackCopy = callback;
  v29 = callbackCopy;
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
    feedManager = [(MTFeedUpdateManager *)self feedManager];
    v17 = [feedManager abortUpdatesIfNetworkUnreachable:initiatedCopy];

    if (!v17)
    {
      v18 = +[IMURLBag sharedInstance];
      batchFeedFetchIsEnabled = [v18 batchFeedFetchIsEnabled];
      workQueue = [(MTFeedUpdateManager *)self workQueue];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10010D350;
      v21[3] = &unk_1004DCB20;
      v24 = initiatedCopy;
      forcedCopy = forced;
      fetchCopy = fetch;
      v21[4] = self;
      sourceCopy = source;
      v22 = callbackCopy;
      [batchFeedFetchIsEnabled asyncValueOnQueue:workQueue withCompletion:v21];

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

- (void)_updatePodcastsWithUUIDs:(id)ds userInitiated:(BOOL)initiated forced:(BOOL)forced useBackgroundFetch:(BOOL)fetch source:(int64_t)source startedUpdatesCallback:(id)callback
{
  dsCopy = ds;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10010D9FC;
  v27[3] = &unk_1004D9870;
  callbackCopy = callback;
  v15 = callbackCopy;
  v16 = objc_retainBlock(v27);
  workQueue = [(MTFeedUpdateManager *)self workQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10010DAAC;
  v20[3] = &unk_1004DCB98;
  initiatedCopy = initiated;
  v20[4] = self;
  v21 = dsCopy;
  forcedCopy = forced;
  fetchCopy = fetch;
  v22 = v16;
  sourceCopy = source;
  v18 = dsCopy;
  v19 = v16;
  dispatch_async(workQueue, v20);
}

- (void)_updatePodcastWithUUID:(id)d triggerBy:(id)by userInitiated:(BOOL)initiated forced:(BOOL)forced forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)source tryRedirectURL:(BOOL)self0 startedUpdateCallback:(id)self1 completion:(id)self2
{
  dCopy = d;
  byCopy = by;
  callbackCopy = callback;
  completionCopy = completion;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_10010E5A8;
  v73[3] = &unk_1004D8838;
  v18 = callbackCopy;
  v74 = v18;
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10010E660;
  v70[3] = &unk_1004DCBC0;
  v19 = objc_retainBlock(v73);
  v71 = v19;
  v20 = completionCopy;
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
      uUIDString = [v35 UUIDString];
      *buf = 138543362;
      v76 = uUIDString;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MTFeedUpdateManagerFull", "identifier=%{public, name=identifier}@", buf, 0xCu);
    }

    v27 = _MTLogCategoryFeedUpdateDiagnostics();
    v28 = os_signpost_id_generate(v27);

    v29 = _MTLogCategoryFeedUpdateDiagnostics();
    v30 = v29;
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      uUIDString2 = [v35 UUIDString];
      *buf = 138543362;
      v76 = uUIDString2;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "CoreDataCongestion", "identifier=%{public, name=identifier}@", buf, 0xCu);
    }

    v32 = +[MTDB sharedInstance];
    importContext = [v32 importContext];

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10010E74C;
    v42[3] = &unk_1004DCC38;
    v55 = v28;
    v36 = v35;
    v43 = v36;
    v34 = importContext;
    v44 = v34;
    v45 = dCopy;
    selfCopy = self;
    initiatedCopy = initiated;
    forcedCopy = forced;
    v51 = v68;
    v52 = v66;
    lCopy = l;
    v53 = v63;
    v54 = v64;
    fetchCopy = fetch;
    sourceCopy = source;
    v48 = v21;
    v49 = v19;
    v47 = byCopy;
    bootstrapCopy = bootstrap;
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
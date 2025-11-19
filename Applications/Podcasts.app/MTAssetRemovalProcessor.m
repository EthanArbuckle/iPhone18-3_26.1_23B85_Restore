@interface MTAssetRemovalProcessor
- (id)episodePredicateForPodcast:(id)a3;
- (void)_removeDownloadAssetsForEpisodeUuids:(id)a3 reason:(id)a4;
- (void)disable;
- (void)enable;
- (void)episodeUuidObserver:(id)a3 resultsChangedForPodcast:(id)a4 withDeletedIds:(id)a5 andInsertIds:(id)a6;
@end

@implementation MTAssetRemovalProcessor

- (id)episodePredicateForPodcast:(id)a3
{
  v3 = a3;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100154534;
  v10[3] = &unk_1004D91D0;
  v6 = v5;
  v11 = v6;
  v7 = v3;
  v12 = v7;
  v13 = &v20;
  v14 = &v24;
  v15 = &v16;
  [v6 performBlockAndWait:v10];
  if (v17[3])
  {
    v8 = [MTEpisode predicateForAutomaticDeletionOnShow:v7 deletePlayedEpisodes:*(v21 + 24) episodeLimit:v25[3]];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

- (void)episodeUuidObserver:(id)a3 resultsChangedForPodcast:(id)a4 withDeletedIds:(id)a5 andInsertIds:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ([(MTAssetRemovalProcessor *)self isDisabled])
  {
    v12 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v16 = v10;
      v17 = 2048;
      v18 = [v11 count];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Asset Removal is temporary disabled skipping removal for: %{public}@, episode uuids: %lu", buf, 0x16u);
    }
  }

  else if ([v11 count])
  {
    v13 = [v9 predicate];
    v14 = [NSString stringWithFormat:@"they matched podcast %@'s predicate: %@", v10, v13];

    [(MTAssetRemovalProcessor *)self _removeDownloadAssetsForEpisodeUuids:v11 reason:v14];
  }
}

- (void)enable
{
  v3 = _MTLogCategoryDownload();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Re-Enabling Asset Removal...", buf, 2u);
  }

  [(MTAssetRemovalProcessor *)self setDisabled:0];
  if ([(MTBaseProcessor *)self isRunning])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100154864;
    v6[3] = &unk_1004D8358;
    v6[4] = self;
    [(MTBaseProcessor *)self enqueueWorkBlock:v6];
    v4 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Asset Removal has been re-enabled";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
    }
  }

  else
  {
    v4 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Asset Removal has not yet been started.";
      goto LABEL_8;
    }
  }
}

- (void)disable
{
  [(MTAssetRemovalProcessor *)self setDisabled:1];
  v2 = _MTLogCategoryDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Asset Removal Disabled", v3, 2u);
  }
}

- (void)_removeDownloadAssetsForEpisodeUuids:(id)a3 reason:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MTLogCategoryDownload();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting removal of assets for episode uuids: %{public}@, because %{public}@", &v9, 0x16u);
  }

  v8 = +[MTLibrary sharedInstance];
  [v8 removeDownloadAssetsForEpisodeUuids:v5 shouldKeep:&stru_1004DDD90];
}

@end
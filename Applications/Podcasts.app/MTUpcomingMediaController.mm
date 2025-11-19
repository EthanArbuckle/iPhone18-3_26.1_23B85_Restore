@interface MTUpcomingMediaController
- (MTUpcomingMediaController)init;
- (void)_setSuggestedEpisodeUuidsImmediately:(id)a3;
- (void)setEpisodeIntents:(id)a3;
- (void)setIntents:(id)a3;
- (void)setStationIntents:(id)a3;
- (void)setSuggestedEpisodeUuids:(id)a3;
- (void)setSuggestedStationUuids:(id)a3;
@end

@implementation MTUpcomingMediaController

- (MTUpcomingMediaController)init
{
  v10.receiver = self;
  v10.super_class = MTUpcomingMediaController;
  v2 = [(MTUpcomingMediaController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("MTUpcomingMediaController.upcoming_media_queue", v3);
    v5 = [[MTCoalescableWorkController alloc] initWithWorkQueue:v4 identifier:@"MTUpcomingMediaController.setSuggestedEpisodes"];
    suggestedEpisodesWorkController = v2->_suggestedEpisodesWorkController;
    v2->_suggestedEpisodesWorkController = v5;

    v7 = [[MTCoalescableWorkController alloc] initWithWorkQueue:v4 identifier:@"MTUpcomingMediaController.setSuggestedStations"];
    suggestedStationsWorkController = v2->_suggestedStationsWorkController;
    v2->_suggestedStationsWorkController = v7;

    v2->_pendingDeferredUpdate = 0;
  }

  return v2;
}

- (void)setSuggestedEpisodeUuids:(id)a3
{
  v4 = a3;
  if ((os_feature_enabled_podcasts_better_media_suggestions() & 1) == 0)
  {
    [(MTUpcomingMediaController *)self setDeferredEpisodeUuids:v4];
    v5 = _MTLogCategorySiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Upcoming Media: Deferring update of %lu suggested episode UUIDs", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v6 = self;
    objc_sync_enter(v6);
    if (![(MTUpcomingMediaController *)v6 pendingDeferredUpdate])
    {
      [(MTUpcomingMediaController *)v6 setPendingDeferredUpdate:1];
      v7 = dispatch_time(0, 10000000000);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000DBF6C;
      v8[3] = &unk_1004DB990;
      v8[4] = v6;
      objc_copyWeak(&v9, buf);
      dispatch_after(v7, &_dispatch_main_q, v8);
      objc_destroyWeak(&v9);
    }

    objc_sync_exit(v6);

    objc_destroyWeak(buf);
  }
}

- (void)_setSuggestedEpisodeUuidsImmediately:(id)a3
{
  v4 = a3;
  if ((os_feature_enabled_podcasts_better_media_suggestions() & 1) == 0)
  {
    v5 = _MTLogCategorySiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Upcoming Media: Setting %lu suggested episode UUIDs", buf, 0xCu);
    }

    suggestedEpisodesWorkController = self->_suggestedEpisodesWorkController;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DC14C;
    v7[3] = &unk_1004D8798;
    v8 = v4;
    v9 = self;
    [(MTCoalescableWorkController *)suggestedEpisodesWorkController schedule:v7];
  }
}

- (void)setSuggestedStationUuids:(id)a3
{
  v4 = a3;
  suggestedStationsWorkController = self->_suggestedStationsWorkController;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DC76C;
  v7[3] = &unk_1004D8798;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(MTCoalescableWorkController *)suggestedStationsWorkController schedule:v7];
}

- (void)setStationIntents:(id)a3
{
  v13 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_stationIntents, a3);
  v6 = [(MTUpcomingMediaController *)v5 episodeIntents];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  v9 = v8;

  stationIntents = v5->_stationIntents;
  if (!stationIntents)
  {
    stationIntents = &__NSArray0__struct;
  }

  v11 = stationIntents;
  v12 = [v9 arrayByAddingObjectsFromArray:v11];
  [(MTUpcomingMediaController *)v5 setIntents:v12];

  objc_sync_exit(v5);
}

- (void)setEpisodeIntents:(id)a3
{
  v13 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_episodeIntents, a3);
  episodeIntents = v5->_episodeIntents;
  if (!episodeIntents)
  {
    episodeIntents = &__NSArray0__struct;
  }

  v7 = episodeIntents;
  v8 = [(MTUpcomingMediaController *)v5 stationIntents];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  v11 = v10;

  v12 = [(NSArray *)v7 arrayByAddingObjectsFromArray:v11];
  [(MTUpcomingMediaController *)v5 setIntents:v12];

  objc_sync_exit(v5);
}

- (void)setIntents:(id)a3
{
  v4 = a3;
  v22 = self;
  objc_sync_enter(v22);
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = [[INShortcut alloc] initWithIntent:v9];
        v11 = [[INRelevantShortcut alloc] initWithShortcut:v10];
        v12 = [v9 mediaContainer];
        v13 = [v12 title];

        v14 = [v9 keyImage];
        v15 = [[INDefaultCardTemplate alloc] initWithTitle:v13];
        [v15 setImage:v14];
        [v11 setWatchTemplate:v15];
        [v5 addObject:v11];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v16 = +[INRelevantShortcutStore defaultStore];
  [v16 setRelevantShortcuts:v5 completionHandler:&stru_1004DBC10];

  v17 = [NSOrderedSet orderedSetWithArray:obj];
  v18 = +[INUpcomingMediaManager sharedManager];
  [v18 setPredictionMode:1 forType:6];

  v19 = +[INUpcomingMediaManager sharedManager];
  [v19 setPredictionMode:1 forType:7];

  v20 = +[INUpcomingMediaManager sharedManager];
  [v20 setPredictionMode:1 forType:8];

  v21 = +[INUpcomingMediaManager sharedManager];
  [v21 setSuggestedMediaIntents:v17];

  objc_sync_exit(v22);
}

@end
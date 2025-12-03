@interface MTUpcomingMediaController
- (MTUpcomingMediaController)init;
- (void)_setSuggestedEpisodeUuidsImmediately:(id)immediately;
- (void)setEpisodeIntents:(id)intents;
- (void)setIntents:(id)intents;
- (void)setStationIntents:(id)intents;
- (void)setSuggestedEpisodeUuids:(id)uuids;
- (void)setSuggestedStationUuids:(id)uuids;
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

- (void)setSuggestedEpisodeUuids:(id)uuids
{
  uuidsCopy = uuids;
  if ((os_feature_enabled_podcasts_better_media_suggestions() & 1) == 0)
  {
    [(MTUpcomingMediaController *)self setDeferredEpisodeUuids:uuidsCopy];
    v5 = _MTLogCategorySiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = [uuidsCopy count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Upcoming Media: Deferring update of %lu suggested episode UUIDs", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (![(MTUpcomingMediaController *)selfCopy pendingDeferredUpdate])
    {
      [(MTUpcomingMediaController *)selfCopy setPendingDeferredUpdate:1];
      v7 = dispatch_time(0, 10000000000);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000DBF6C;
      v8[3] = &unk_1004DB990;
      v8[4] = selfCopy;
      objc_copyWeak(&v9, buf);
      dispatch_after(v7, &_dispatch_main_q, v8);
      objc_destroyWeak(&v9);
    }

    objc_sync_exit(selfCopy);

    objc_destroyWeak(buf);
  }
}

- (void)_setSuggestedEpisodeUuidsImmediately:(id)immediately
{
  immediatelyCopy = immediately;
  if ((os_feature_enabled_podcasts_better_media_suggestions() & 1) == 0)
  {
    v5 = _MTLogCategorySiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = [immediatelyCopy count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Upcoming Media: Setting %lu suggested episode UUIDs", buf, 0xCu);
    }

    suggestedEpisodesWorkController = self->_suggestedEpisodesWorkController;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DC14C;
    v7[3] = &unk_1004D8798;
    v8 = immediatelyCopy;
    selfCopy = self;
    [(MTCoalescableWorkController *)suggestedEpisodesWorkController schedule:v7];
  }
}

- (void)setSuggestedStationUuids:(id)uuids
{
  uuidsCopy = uuids;
  suggestedStationsWorkController = self->_suggestedStationsWorkController;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DC76C;
  v7[3] = &unk_1004D8798;
  v8 = uuidsCopy;
  selfCopy = self;
  v6 = uuidsCopy;
  [(MTCoalescableWorkController *)suggestedStationsWorkController schedule:v7];
}

- (void)setStationIntents:(id)intents
{
  intentsCopy = intents;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_stationIntents, intents);
  episodeIntents = [(MTUpcomingMediaController *)selfCopy episodeIntents];
  v7 = episodeIntents;
  if (episodeIntents)
  {
    v8 = episodeIntents;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  v9 = v8;

  stationIntents = selfCopy->_stationIntents;
  if (!stationIntents)
  {
    stationIntents = &__NSArray0__struct;
  }

  v11 = stationIntents;
  v12 = [v9 arrayByAddingObjectsFromArray:v11];
  [(MTUpcomingMediaController *)selfCopy setIntents:v12];

  objc_sync_exit(selfCopy);
}

- (void)setEpisodeIntents:(id)intents
{
  intentsCopy = intents;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_episodeIntents, intents);
  episodeIntents = selfCopy->_episodeIntents;
  if (!episodeIntents)
  {
    episodeIntents = &__NSArray0__struct;
  }

  v7 = episodeIntents;
  stationIntents = [(MTUpcomingMediaController *)selfCopy stationIntents];
  v9 = stationIntents;
  if (stationIntents)
  {
    v10 = stationIntents;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  v11 = v10;

  v12 = [(NSArray *)v7 arrayByAddingObjectsFromArray:v11];
  [(MTUpcomingMediaController *)selfCopy setIntents:v12];

  objc_sync_exit(selfCopy);
}

- (void)setIntents:(id)intents
{
  intentsCopy = intents;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [intentsCopy count]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = intentsCopy;
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
        mediaContainer = [v9 mediaContainer];
        title = [mediaContainer title];

        keyImage = [v9 keyImage];
        v15 = [[INDefaultCardTemplate alloc] initWithTitle:title];
        [v15 setImage:keyImage];
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

  objc_sync_exit(selfCopy);
}

@end
@interface EpisodesPropertySourceController
- (EpisodesPropertySourceController)initWithNotification:(id)notification keepSorted:(BOOL)sorted;
- (EpisodesPropertySourceControllerDelegate)delegate;
- (id)_sortDescriptorsForDefaultOrdering;
- (id)_sourceByApplyingDefaultOrderingToPropertySources:(id)sources;
- (id)firstEpisodePropertySourcePassingTest:(id)test;
- (unint64_t)indexOfPropertySourcePassingTest:(id)test;
- (void)_didFetchEpisodePropertySources:(id)sources;
- (void)_didUpdateEpisodePropertySourcesAtIndexes:(id)indexes;
- (void)_didUpdateEpisodePropertySourcesNeedingFullReload;
- (void)_loadEpisodePropertySourcesFromDatabaseInBackground;
- (void)_loadEpisodePropertySourcesFromNotificationInfo;
@end

@implementation EpisodesPropertySourceController

- (EpisodesPropertySourceController)initWithNotification:(id)notification keepSorted:(BOOL)sorted
{
  notificationCopy = notification;
  v13.receiver = self;
  v13.super_class = EpisodesPropertySourceController;
  v8 = [(EpisodesPropertySourceController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notification, notification);
    v10 = +[NSMutableArray array];
    backgroundEpisodeUuidFetches = v9->_backgroundEpisodeUuidFetches;
    v9->_backgroundEpisodeUuidFetches = v10;

    v9->_keepSorted = sorted;
    [(EpisodesPropertySourceController *)v9 _loadEpisodePropertySourcesFromNotificationInfo];
  }

  return v9;
}

- (id)firstEpisodePropertySourcePassingTest:(id)test
{
  testCopy = test;
  v5 = testCopy;
  if (testCopy)
  {
    orderedEpisodePropertySources = self->_orderedEpisodePropertySources;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000048F0;
    v9[3] = &unk_10002C8E0;
    v10 = testCopy;
    v7 = [(NSArray *)orderedEpisodePropertySources mt_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)indexOfPropertySourcePassingTest:(id)test
{
  testCopy = test;
  v5 = testCopy;
  if (testCopy)
  {
    orderedEpisodePropertySources = self->_orderedEpisodePropertySources;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000049AC;
    v9[3] = &unk_10002C8E0;
    v10 = testCopy;
    v7 = [(NSArray *)orderedEpisodePropertySources indexOfObjectPassingTest:v9];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)_loadEpisodePropertySourcesFromNotificationInfo
{
  notification = [(EpisodesPropertySourceController *)self notification];
  request = [notification request];
  content = [request content];
  mt_notificationEpisodes = [content mt_notificationEpisodes];

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [mt_notificationEpisodes count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = mt_notificationEpisodes;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [NotificationEpisodePropertySource alloc];
        v15 = [(NotificationEpisodePropertySource *)v14 initWithNotification:notification episode:v13, v18];
        if (v15)
        {
          [v7 addObject:v15];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [(EpisodesPropertySourceController *)self _sourceByApplyingDefaultOrderingToPropertySources:v7];
  orderedEpisodePropertySources = self->_orderedEpisodePropertySources;
  self->_orderedEpisodePropertySources = v16;
}

- (void)_loadEpisodePropertySourcesFromDatabaseInBackground
{
  orderedEpisodePropertySources = self->_orderedEpisodePropertySources;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004CCC;
  v11[3] = &unk_10002C908;
  v11[4] = self;
  v4 = [(NSArray *)orderedEpisodePropertySources mt_compactMap:v11];
  backgroundEpisodeUuidFetches = [(EpisodesPropertySourceController *)self backgroundEpisodeUuidFetches];
  [backgroundEpisodeUuidFetches addObjectsFromArray:v4];

  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004D70;
  v7[3] = &unk_10002C958;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [DatabaseEpisodePropertySource fetchSourceForEpisodeUuids:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_didFetchEpisodePropertySources:(id)sources
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    v5 = [sourcesCopy mt_compactMap:&stru_10002C998];
    orderedEpisodePropertySources = [(EpisodesPropertySourceController *)self orderedEpisodePropertySources];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100005120;
    v20[3] = &unk_10002C9C0;
    v7 = v5;
    v21 = v7;
    v8 = [orderedEpisodePropertySources indexesOfObjectsPassingTest:v20];

    orderedEpisodePropertySources2 = [(EpisodesPropertySourceController *)self orderedEpisodePropertySources];
    v10 = [orderedEpisodePropertySources2 mt_allObjectsExcludingIndexes:v8];

    v11 = [v10 arrayByAddingObjectsFromArray:sourcesCopy];

    v12 = [(EpisodesPropertySourceController *)self _sourceByApplyingDefaultOrderingToPropertySources:v11];

    v13 = [v12 count];
    orderedEpisodePropertySources3 = [(EpisodesPropertySourceController *)self orderedEpisodePropertySources];
    v15 = [orderedEpisodePropertySources3 count];

    if (v13 == v15)
    {
      orderedEpisodePropertySources4 = [(EpisodesPropertySourceController *)self orderedEpisodePropertySources];
      v17 = [orderedEpisodePropertySources4 mt_compactMap:&stru_10002C9E0];

      v18 = [v12 mt_compactMap:&stru_10002CA00];
      v19 = [v17 isEqualToArray:v18];

      objc_storeStrong(&self->_orderedEpisodePropertySources, v12);
      if (v19)
      {
        [(EpisodesPropertySourceController *)self _didUpdateEpisodePropertySourcesAtIndexes:v8];
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
      objc_storeStrong(&self->_orderedEpisodePropertySources, v12);
    }

    [(EpisodesPropertySourceController *)self _didUpdateEpisodePropertySourcesNeedingFullReload];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_sourceByApplyingDefaultOrderingToPropertySources:(id)sources
{
  sourcesCopy = sources;
  _sortDescriptorsForDefaultOrdering = [(EpisodesPropertySourceController *)self _sortDescriptorsForDefaultOrdering];
  if (_sortDescriptorsForDefaultOrdering)
  {
    v6 = [sourcesCopy sortedArrayUsingDescriptors:_sortDescriptorsForDefaultOrdering];
  }

  else
  {
    v6 = sourcesCopy;
  }

  v7 = v6;

  return v7;
}

- (id)_sortDescriptorsForDefaultOrdering
{
  if ([(EpisodesPropertySourceController *)self keepSorted])
  {
    cachedSortDescriptors = self->_cachedSortDescriptors;
    if (!cachedSortDescriptors)
    {
      request = [(UNNotification *)self->_notification request];
      content = [request content];
      mt_podcastUuid = [content mt_podcastUuid];

      v7 = [BaseEpisodePropertySource defaultSortOrderSortDescriptorsForPodcastUuid:mt_podcastUuid];
      v8 = self->_cachedSortDescriptors;
      self->_cachedSortDescriptors = v7;

      cachedSortDescriptors = self->_cachedSortDescriptors;
    }

    v9 = cachedSortDescriptors;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_didUpdateEpisodePropertySourcesNeedingFullReload
{
  delegate = [(EpisodesPropertySourceController *)self delegate];
  [delegate episodesPropertySourceControllerDidUpdatingNeedingFullReload:self];
}

- (void)_didUpdateEpisodePropertySourcesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  delegate = [(EpisodesPropertySourceController *)self delegate];
  [delegate episodesPropertySourceController:self didUpdateEpisodePropertySourcesAtIndexes:indexesCopy];
}

- (EpisodesPropertySourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
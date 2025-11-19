@interface EpisodesPropertySourceController
- (EpisodesPropertySourceController)initWithNotification:(id)a3 keepSorted:(BOOL)a4;
- (EpisodesPropertySourceControllerDelegate)delegate;
- (id)_sortDescriptorsForDefaultOrdering;
- (id)_sourceByApplyingDefaultOrderingToPropertySources:(id)a3;
- (id)firstEpisodePropertySourcePassingTest:(id)a3;
- (unint64_t)indexOfPropertySourcePassingTest:(id)a3;
- (void)_didFetchEpisodePropertySources:(id)a3;
- (void)_didUpdateEpisodePropertySourcesAtIndexes:(id)a3;
- (void)_didUpdateEpisodePropertySourcesNeedingFullReload;
- (void)_loadEpisodePropertySourcesFromDatabaseInBackground;
- (void)_loadEpisodePropertySourcesFromNotificationInfo;
@end

@implementation EpisodesPropertySourceController

- (EpisodesPropertySourceController)initWithNotification:(id)a3 keepSorted:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = EpisodesPropertySourceController;
  v8 = [(EpisodesPropertySourceController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notification, a3);
    v10 = +[NSMutableArray array];
    backgroundEpisodeUuidFetches = v9->_backgroundEpisodeUuidFetches;
    v9->_backgroundEpisodeUuidFetches = v10;

    v9->_keepSorted = a4;
    [(EpisodesPropertySourceController *)v9 _loadEpisodePropertySourcesFromNotificationInfo];
  }

  return v9;
}

- (id)firstEpisodePropertySourcePassingTest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    orderedEpisodePropertySources = self->_orderedEpisodePropertySources;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000048F0;
    v9[3] = &unk_10002C8E0;
    v10 = v4;
    v7 = [(NSArray *)orderedEpisodePropertySources mt_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)indexOfPropertySourcePassingTest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    orderedEpisodePropertySources = self->_orderedEpisodePropertySources;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000049AC;
    v9[3] = &unk_10002C8E0;
    v10 = v4;
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
  v3 = [(EpisodesPropertySourceController *)self notification];
  v4 = [v3 request];
  v5 = [v4 content];
  v6 = [v5 mt_notificationEpisodes];

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
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
        v15 = [(NotificationEpisodePropertySource *)v14 initWithNotification:v3 episode:v13, v18];
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
  v5 = [(EpisodesPropertySourceController *)self backgroundEpisodeUuidFetches];
  [v5 addObjectsFromArray:v4];

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

- (void)_didFetchEpisodePropertySources:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 mt_compactMap:&stru_10002C998];
    v6 = [(EpisodesPropertySourceController *)self orderedEpisodePropertySources];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100005120;
    v20[3] = &unk_10002C9C0;
    v7 = v5;
    v21 = v7;
    v8 = [v6 indexesOfObjectsPassingTest:v20];

    v9 = [(EpisodesPropertySourceController *)self orderedEpisodePropertySources];
    v10 = [v9 mt_allObjectsExcludingIndexes:v8];

    v11 = [v10 arrayByAddingObjectsFromArray:v4];

    v12 = [(EpisodesPropertySourceController *)self _sourceByApplyingDefaultOrderingToPropertySources:v11];

    v13 = [v12 count];
    v14 = [(EpisodesPropertySourceController *)self orderedEpisodePropertySources];
    v15 = [v14 count];

    if (v13 == v15)
    {
      v16 = [(EpisodesPropertySourceController *)self orderedEpisodePropertySources];
      v17 = [v16 mt_compactMap:&stru_10002C9E0];

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

- (id)_sourceByApplyingDefaultOrderingToPropertySources:(id)a3
{
  v4 = a3;
  v5 = [(EpisodesPropertySourceController *)self _sortDescriptorsForDefaultOrdering];
  if (v5)
  {
    v6 = [v4 sortedArrayUsingDescriptors:v5];
  }

  else
  {
    v6 = v4;
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
      v4 = [(UNNotification *)self->_notification request];
      v5 = [v4 content];
      v6 = [v5 mt_podcastUuid];

      v7 = [BaseEpisodePropertySource defaultSortOrderSortDescriptorsForPodcastUuid:v6];
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
  v3 = [(EpisodesPropertySourceController *)self delegate];
  [v3 episodesPropertySourceControllerDidUpdatingNeedingFullReload:self];
}

- (void)_didUpdateEpisodePropertySourcesAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(EpisodesPropertySourceController *)self delegate];
  [v5 episodesPropertySourceController:self didUpdateEpisodePropertySourcesAtIndexes:v4];
}

- (EpisodesPropertySourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
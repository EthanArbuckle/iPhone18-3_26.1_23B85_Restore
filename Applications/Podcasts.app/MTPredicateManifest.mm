@interface MTPredicateManifest
- (MTPredicateManifest)initWithInitialEpisodeUuid:(id)uuid fetchRequest:(id)request;
- (MTPredicateManifest)initWithInitialEpisodeUuid:(id)uuid predicateToTrack:(id)track sortDescriptors:(id)descriptors;
- (NSArray)sortDescriptors;
- (id)_augmentPredicate:(id)predicate;
- (id)_currentEpisodeUuid;
- (void)_frcDidChangeResults:(id)results uuidToManagedObjectIDMap:(id)map;
- (void)_freezeContentIfNeeded;
- (void)_load:(id)_load;
- (void)_observeAllPropertyChangesForEntityName:(id)name predicate:(id)predicate;
- (void)_refetch:(id)_refetch;
- (void)_restrictionsDidChange;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
- (void)generator:(id)generator didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)setSortDescriptors:(id)descriptors;
@end

@implementation MTPredicateManifest

- (MTPredicateManifest)initWithInitialEpisodeUuid:(id)uuid predicateToTrack:(id)track sortDescriptors:(id)descriptors
{
  uuidCopy = uuid;
  trackCopy = track;
  descriptorsCopy = descriptors;
  if (!descriptorsCopy)
  {
    v11 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:1];
    v19[0] = v11;
    v12 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:1];
    v19[1] = v12;
    v13 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLevel ascending:0];
    v19[2] = v13;
    v14 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeTitle ascending:1 selector:"localizedStandardCompare:"];
    v19[3] = v14;
    descriptorsCopy = [NSArray arrayWithObjects:v19 count:4];
  }

  v15 = [NSFetchRequest alloc];
  v16 = [v15 initWithEntityName:kMTEpisodeEntityName];
  [v16 setPredicate:trackCopy];
  [v16 setSortDescriptors:descriptorsCopy];
  v17 = [(MTPredicateManifest *)self initWithInitialEpisodeUuid:uuidCopy fetchRequest:v16];

  return v17;
}

- (MTPredicateManifest)initWithInitialEpisodeUuid:(id)uuid fetchRequest:(id)request
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = MTPredicateManifest;
  v7 = [(MTBaseEpisodeListManifest *)&v14 initWithInitialEpisodeUuid:uuid];
  v8 = v7;
  if (v7)
  {
    [(MTPredicateManifest *)v7 setFetchRequest:requestCopy];
    predicate = [requestCopy predicate];
    [(MTPredicateManifest *)v8 setPredicate:predicate];

    [(MTPredicateManifest *)v8 setNeedsFrozenCheck:1];
    v10 = [[MTResultsChangeGenerator alloc] initWithDelegate:v8];
    [(MTPredicateManifest *)v8 setChangeGenerator:v10];

    v11 = objc_alloc_init(MTIndexPathShifter);
    [(MTPredicateManifest *)v8 setIndexPathShifter:v11];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v8 selector:"_restrictionsDidChange" name:@"PFExplicitContentAllowedDidChangeNotification" object:0];
  }

  return v8;
}

- (void)dealloc
{
  [(MTAllPropertyChangesQueryObserver *)self->_allPropertyChangeObserver stop];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTPredicateManifest;
  [(MTPredicateManifest *)&v4 dealloc];
}

- (void)setSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  fetchRequest = [(MTPredicateManifest *)self fetchRequest];
  [fetchRequest setSortDescriptors:descriptorsCopy];
}

- (NSArray)sortDescriptors
{
  fetchRequest = [(MTPredicateManifest *)self fetchRequest];
  sortDescriptors = [fetchRequest sortDescriptors];

  return sortDescriptors;
}

- (void)_restrictionsDidChange
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100140964;
  v2[3] = &unk_1004D8358;
  v2[4] = self;
  [IMAVPlayer performOnMainQueue:v2];
}

- (void)_load:(id)_load
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100140A1C;
  v5[3] = &unk_1004D8520;
  selfCopy = self;
  _loadCopy = _load;
  v4.receiver = selfCopy;
  v4.super_class = MTPredicateManifest;
  v3 = _loadCopy;
  [(MTPredicateManifest *)&v4 _load:v5];
}

- (void)_refetch:(id)_refetch
{
  _refetchCopy = _refetch;
  if (([(MTPredicateManifest *)self isLoaded]& 1) != 0)
  {
    kdebug_trace();
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100140C18;
    v11 = &unk_1004D8520;
    selfCopy = self;
    v13 = _refetchCopy;
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &v8);
    v6 = [(MTPredicateManifest *)self frc:v8];
    managedObjectContext = [v6 managedObjectContext];
    [managedObjectContext performBlock:v5];
  }

  else if (_refetchCopy)
  {
    _refetchCopy[2](_refetchCopy);
  }
}

- (id)_augmentPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [MTEpisode predicateForDownloaded:0 excludeHidden:1];
  v6 = [MTEpisode predicateForFeedDeleted:1];
  v7 = [v5 AND:v6];

  v8 = [NSCompoundPredicate notPredicateWithSubpredicate:v7];
  v9 = [predicateCopy AND:v8];

  _currentEpisodeUuid = [(MTPredicateManifest *)self _currentEpisodeUuid];
  if ([_currentEpisodeUuid length])
  {
    v11 = [MTEpisode predicateForEpisodeUuid:_currentEpisodeUuid];
    v12 = [v9 OR:v11];

    v9 = v12;
  }

  v13 = +[MTEpisode predicateForPodcastIsNotHidden];
  v14 = [v9 AND:v13];

  v15 = [MTEpisode predicateForExternalType:0];
  v16 = [v14 AND:v15];

  _predicateForFilteringExplicitEpisodes = [(MTBaseEpisodeListManifest *)self _predicateForFilteringExplicitEpisodes];
  v18 = [v16 AND:_predicateForFilteringExplicitEpisodes];

  v19 = +[MTEpisode predicateForEntitledEpisodes];
  v20 = [v18 AND:v19];

  return v20;
}

- (id)_currentEpisodeUuid
{
  currentItem = [(MTPredicateManifest *)self currentItem];
  episodeUuid = [currentItem episodeUuid];

  if (![episodeUuid length])
  {
    initialEpisodeUuid = [(MTBaseEpisodeListManifest *)self initialEpisodeUuid];

    episodeUuid = initialEpisodeUuid;
  }

  return episodeUuid;
}

- (void)_frcDidChangeResults:(id)results uuidToManagedObjectIDMap:(id)map
{
  resultsCopy = results;
  mapCopy = map;
  if ([(MTPredicateManifest *)self isLoaded]&& ![(MTPredicateManifest *)self resultsAreFrozen])
  {
    kdebug_trace();
    if (self->_preserveOriginalEpisodeOrdering)
    {
      explicitSortOrder = [(MTPredicateManifest *)self explicitSortOrder];

      if (!explicitSortOrder)
      {
        objc_storeStrong(&self->_explicitSortOrder, results);
      }
    }

    explicitSortOrder2 = [(MTPredicateManifest *)self explicitSortOrder];

    if (explicitSortOrder2)
    {
      v12 = [NSSet setWithArray:resultsCopy];
      v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      explicitSortOrder3 = [(MTPredicateManifest *)self explicitSortOrder];
      v14 = [explicitSortOrder3 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v37;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(explicitSortOrder3);
            }

            v18 = *(*(&v36 + 1) + 8 * i);
            if ([v12 containsObject:v18])
            {
              [v9 addObject:v18];
            }
          }

          v15 = [explicitSortOrder3 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v15);
      }

      _currentEpisodeUuid = [(MTPredicateManifest *)self _currentEpisodeUuid];
      if ([_currentEpisodeUuid length] && (objc_msgSend(v9, "containsObject:", _currentEpisodeUuid) & 1) == 0 && objc_msgSend(resultsCopy, "containsObject:", _currentEpisodeUuid))
      {
        currentIndex = [(MTPredicateManifest *)self currentIndex];
        if (currentIndex <= [v9 count])
        {
          currentIndex2 = [(MTPredicateManifest *)self currentIndex];
        }

        else
        {
          currentIndex2 = 0;
        }

        [v9 insertObject:_currentEpisodeUuid atIndex:currentIndex2];
      }
    }

    else
    {
      v9 = resultsCopy;
    }

    episodeUuids = [(MTBaseEpisodeListManifest *)self episodeUuids];
    v23 = [episodeUuids isEqual:v9];

    if (v23)
    {
      kdebug_trace();
      goto LABEL_4;
    }

    episodeUuids2 = [(MTBaseEpisodeListManifest *)self episodeUuids];
    [(MTBaseEpisodeListManifest *)self setEpisodeUuids:v9];
    [(MTBaseEpisodeListManifest *)self setUuidToManagedObjectIDMap:mapCopy];
    if (![(MTBaseEpisodeListManifest *)self count]|| [(MTPredicateManifest *)self currentIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_47:
      [(MTPredicateManifest *)self _freezeContentIfNeeded];
      [(MTBaseEpisodeListManifest *)self postManifestDidChangeNotification];
      kdebug_trace();

      goto LABEL_4;
    }

    kdebug_trace();
    v25 = [NSIndexPath indexPathForRow:[(MTPredicateManifest *)self currentIndex] inSection:0];
    indexPathShifter = [(MTPredicateManifest *)self indexPathShifter];
    [indexPathShifter setInitialIndexPath:v25];

    changeGenerator = [(MTPredicateManifest *)self changeGenerator];
    [changeGenerator generateChangesForExistingObjects:episodeUuids2 newObjects:v9 inSection:0];

    indexPathShifter2 = [(MTPredicateManifest *)self indexPathShifter];
    shiftedIndexPath = [indexPathShifter2 shiftedIndexPath];
    v30 = [shiftedIndexPath row];

    if (v30 != 0x7FFFFFFFFFFFFFFFLL || -[MTPredicateManifest currentIndex](self, "currentIndex") == 1 && ((v30 = -[MTPredicateManifest currentIndex](self, "currentIndex") - 1, v31 = -[MTPredicateManifest currentIndex](self, "currentIndex"), v31 >= [episodeUuids2 count]) ? (v32 = 0) : (objc_msgSend(episodeUuids2, "objectAtIndexedSubscript:", -[MTPredicateManifest currentIndex](self, "currentIndex")), v32 = objc_claimAutoreleasedReturnValue()), v30 >= objc_msgSend(v9, "count") ? (v33 = 0) : (objc_msgSend(v9, "objectAtIndexedSubscript:", v30), v33 = objc_claimAutoreleasedReturnValue()), v34 = objc_msgSend(v32, "isEqualToString:", v33), v33, v32, v34))
    {
      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v30 < [(MTBaseEpisodeListManifest *)self count])
    {
      currentItem = [(MTPredicateManifest *)self currentItem];
      [currentItem setManifestIndex:v30];

LABEL_46:
      [(MTPredicateManifest *)self setCurrentIndex:v30];
      kdebug_trace();
      goto LABEL_47;
    }

LABEL_45:
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_46;
  }

  v9 = resultsCopy;
LABEL_4:
}

- (void)_freezeContentIfNeeded
{
  if (![(MTPredicateManifest *)self needsFrozenCheck])
  {
    return;
  }

  kdebug_trace();
  [(MTPredicateManifest *)self setNeedsFrozenCheck:0];
  episodeUuids = [(MTBaseEpisodeListManifest *)self episodeUuids];
  v4 = [episodeUuids count];

  if (v4 >= 0xC9)
  {
    _currentEpisodeUuid = [(MTPredicateManifest *)self _currentEpisodeUuid];
    if ([(MTPredicateManifest *)self currentIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      episodeUuids2 = [(MTBaseEpisodeListManifest *)self episodeUuids];
      _currentEpisodeUuid2 = [(MTPredicateManifest *)self _currentEpisodeUuid];
      currentIndex = [episodeUuids2 indexOfObject:_currentEpisodeUuid2];
    }

    else
    {
      currentIndex = [(MTPredicateManifest *)self currentIndex];
    }

    if (currentIndex == 0x7FFFFFFFFFFFFFFFLL)
    {

      return;
    }

    v8 = 50;
    if (currentIndex > 50)
    {
      v8 = currentIndex;
    }

    v9 = v8 - 50;
    episodeUuids3 = [(MTBaseEpisodeListManifest *)self episodeUuids];
    v11 = [episodeUuids3 count];

    v12 = (currentIndex + 100);
    if (v11 < currentIndex + 100)
    {
      v12 = v11;
    }

    v13 = &v12[-v9];
    episodeUuids4 = [(MTBaseEpisodeListManifest *)self episodeUuids];
    v15 = [episodeUuids4 subarrayWithRange:{v9, v13}];

    [(MTBaseEpisodeListManifest *)self setEpisodeUuids:v15];
    -[MTPredicateManifest setCurrentIndex:](self, "setCurrentIndex:", [v15 indexOfObject:_currentEpisodeUuid]);
    self->_resultsAreFrozen = 1;
  }

  kdebug_trace();
}

- (void)_observeAllPropertyChangesForEntityName:(id)name predicate:(id)predicate
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001418EC;
  v7[3] = &unk_1004D94C8;
  v7[4] = self;
  nameCopy = name;
  predicateCopy = predicate;
  v5 = predicateCopy;
  v6 = nameCopy;
  [IMAVPlayer performOnAvSessionQueue:v7];
}

- (void)generator:(id)generator didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  indexPathShifter = [(MTPredicateManifest *)self indexPathShifter];
  shiftedIndexPath = [indexPathShifter shiftedIndexPath];

  indexPathShifter2 = [(MTPredicateManifest *)self indexPathShifter];
  [indexPathShifter2 processChangeAtIndexPath:pathCopy forChangeType:type newIndexPath:indexPathCopy];
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (type - 1 <= 2)
  {
    [(MTPredicateManifest *)self setHasFRCChanges:1];
  }
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  if ([(MTPredicateManifest *)self hasFRCChanges])
  {
    fetchedObjects = [contentCopy fetchedObjects];
    v6 = [fetchedObjects valueForKey:kEpisodeUuid];

    fetchedObjects2 = [contentCopy fetchedObjects];
    v8 = [fetchedObjects2 valueForKey:kObjectID];
    v9 = [NSDictionary dictionaryWithObjects:v8 forKeys:v6];

    [(MTPredicateManifest *)self setHasFRCChanges:0];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100141D04;
    v12[3] = &unk_1004D94C8;
    v12[4] = self;
    v13 = v6;
    v14 = v9;
    v10 = v9;
    v11 = v6;
    [IMAVPlayer performOnMainQueue:v12];
  }
}

@end
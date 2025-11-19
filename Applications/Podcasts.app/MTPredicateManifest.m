@interface MTPredicateManifest
- (MTPredicateManifest)initWithInitialEpisodeUuid:(id)a3 fetchRequest:(id)a4;
- (MTPredicateManifest)initWithInitialEpisodeUuid:(id)a3 predicateToTrack:(id)a4 sortDescriptors:(id)a5;
- (NSArray)sortDescriptors;
- (id)_augmentPredicate:(id)a3;
- (id)_currentEpisodeUuid;
- (void)_frcDidChangeResults:(id)a3 uuidToManagedObjectIDMap:(id)a4;
- (void)_freezeContentIfNeeded;
- (void)_load:(id)a3;
- (void)_observeAllPropertyChangesForEntityName:(id)a3 predicate:(id)a4;
- (void)_refetch:(id)a3;
- (void)_restrictionsDidChange;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)dealloc;
- (void)generator:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)setSortDescriptors:(id)a3;
@end

@implementation MTPredicateManifest

- (MTPredicateManifest)initWithInitialEpisodeUuid:(id)a3 predicateToTrack:(id)a4 sortDescriptors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = [NSSortDescriptor sortDescriptorWithKey:kEpisodePubDate ascending:1];
    v19[0] = v11;
    v12 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeEpisodeNumber ascending:1];
    v19[1] = v12;
    v13 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLevel ascending:0];
    v19[2] = v13;
    v14 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeTitle ascending:1 selector:"localizedStandardCompare:"];
    v19[3] = v14;
    v10 = [NSArray arrayWithObjects:v19 count:4];
  }

  v15 = [NSFetchRequest alloc];
  v16 = [v15 initWithEntityName:kMTEpisodeEntityName];
  [v16 setPredicate:v9];
  [v16 setSortDescriptors:v10];
  v17 = [(MTPredicateManifest *)self initWithInitialEpisodeUuid:v8 fetchRequest:v16];

  return v17;
}

- (MTPredicateManifest)initWithInitialEpisodeUuid:(id)a3 fetchRequest:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = MTPredicateManifest;
  v7 = [(MTBaseEpisodeListManifest *)&v14 initWithInitialEpisodeUuid:a3];
  v8 = v7;
  if (v7)
  {
    [(MTPredicateManifest *)v7 setFetchRequest:v6];
    v9 = [v6 predicate];
    [(MTPredicateManifest *)v8 setPredicate:v9];

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

- (void)setSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(MTPredicateManifest *)self fetchRequest];
  [v5 setSortDescriptors:v4];
}

- (NSArray)sortDescriptors
{
  v2 = [(MTPredicateManifest *)self fetchRequest];
  v3 = [v2 sortDescriptors];

  return v3;
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

- (void)_load:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100140A1C;
  v5[3] = &unk_1004D8520;
  v6 = self;
  v7 = a3;
  v4.receiver = v6;
  v4.super_class = MTPredicateManifest;
  v3 = v7;
  [(MTPredicateManifest *)&v4 _load:v5];
}

- (void)_refetch:(id)a3
{
  v4 = a3;
  if (([(MTPredicateManifest *)self isLoaded]& 1) != 0)
  {
    kdebug_trace();
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_100140C18;
    v11 = &unk_1004D8520;
    v12 = self;
    v13 = v4;
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, &v8);
    v6 = [(MTPredicateManifest *)self frc:v8];
    v7 = [v6 managedObjectContext];
    [v7 performBlock:v5];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (id)_augmentPredicate:(id)a3
{
  v4 = a3;
  v5 = [MTEpisode predicateForDownloaded:0 excludeHidden:1];
  v6 = [MTEpisode predicateForFeedDeleted:1];
  v7 = [v5 AND:v6];

  v8 = [NSCompoundPredicate notPredicateWithSubpredicate:v7];
  v9 = [v4 AND:v8];

  v10 = [(MTPredicateManifest *)self _currentEpisodeUuid];
  if ([v10 length])
  {
    v11 = [MTEpisode predicateForEpisodeUuid:v10];
    v12 = [v9 OR:v11];

    v9 = v12;
  }

  v13 = +[MTEpisode predicateForPodcastIsNotHidden];
  v14 = [v9 AND:v13];

  v15 = [MTEpisode predicateForExternalType:0];
  v16 = [v14 AND:v15];

  v17 = [(MTBaseEpisodeListManifest *)self _predicateForFilteringExplicitEpisodes];
  v18 = [v16 AND:v17];

  v19 = +[MTEpisode predicateForEntitledEpisodes];
  v20 = [v18 AND:v19];

  return v20;
}

- (id)_currentEpisodeUuid
{
  v3 = [(MTPredicateManifest *)self currentItem];
  v4 = [v3 episodeUuid];

  if (![v4 length])
  {
    v5 = [(MTBaseEpisodeListManifest *)self initialEpisodeUuid];

    v4 = v5;
  }

  return v4;
}

- (void)_frcDidChangeResults:(id)a3 uuidToManagedObjectIDMap:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(MTPredicateManifest *)self isLoaded]&& ![(MTPredicateManifest *)self resultsAreFrozen])
  {
    kdebug_trace();
    if (self->_preserveOriginalEpisodeOrdering)
    {
      v10 = [(MTPredicateManifest *)self explicitSortOrder];

      if (!v10)
      {
        objc_storeStrong(&self->_explicitSortOrder, a3);
      }
    }

    v11 = [(MTPredicateManifest *)self explicitSortOrder];

    if (v11)
    {
      v12 = [NSSet setWithArray:v7];
      v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = [(MTPredicateManifest *)self explicitSortOrder];
      v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v36 + 1) + 8 * i);
            if ([v12 containsObject:v18])
            {
              [v9 addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v15);
      }

      v19 = [(MTPredicateManifest *)self _currentEpisodeUuid];
      if ([v19 length] && (objc_msgSend(v9, "containsObject:", v19) & 1) == 0 && objc_msgSend(v7, "containsObject:", v19))
      {
        v20 = [(MTPredicateManifest *)self currentIndex];
        if (v20 <= [v9 count])
        {
          v21 = [(MTPredicateManifest *)self currentIndex];
        }

        else
        {
          v21 = 0;
        }

        [v9 insertObject:v19 atIndex:v21];
      }
    }

    else
    {
      v9 = v7;
    }

    v22 = [(MTBaseEpisodeListManifest *)self episodeUuids];
    v23 = [v22 isEqual:v9];

    if (v23)
    {
      kdebug_trace();
      goto LABEL_4;
    }

    v24 = [(MTBaseEpisodeListManifest *)self episodeUuids];
    [(MTBaseEpisodeListManifest *)self setEpisodeUuids:v9];
    [(MTBaseEpisodeListManifest *)self setUuidToManagedObjectIDMap:v8];
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
    v26 = [(MTPredicateManifest *)self indexPathShifter];
    [v26 setInitialIndexPath:v25];

    v27 = [(MTPredicateManifest *)self changeGenerator];
    [v27 generateChangesForExistingObjects:v24 newObjects:v9 inSection:0];

    v28 = [(MTPredicateManifest *)self indexPathShifter];
    v29 = [v28 shiftedIndexPath];
    v30 = [v29 row];

    if (v30 != 0x7FFFFFFFFFFFFFFFLL || -[MTPredicateManifest currentIndex](self, "currentIndex") == 1 && ((v30 = -[MTPredicateManifest currentIndex](self, "currentIndex") - 1, v31 = -[MTPredicateManifest currentIndex](self, "currentIndex"), v31 >= [v24 count]) ? (v32 = 0) : (objc_msgSend(v24, "objectAtIndexedSubscript:", -[MTPredicateManifest currentIndex](self, "currentIndex")), v32 = objc_claimAutoreleasedReturnValue()), v30 >= objc_msgSend(v9, "count") ? (v33 = 0) : (objc_msgSend(v9, "objectAtIndexedSubscript:", v30), v33 = objc_claimAutoreleasedReturnValue()), v34 = objc_msgSend(v32, "isEqualToString:", v33), v33, v32, v34))
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
      v35 = [(MTPredicateManifest *)self currentItem];
      [v35 setManifestIndex:v30];

LABEL_46:
      [(MTPredicateManifest *)self setCurrentIndex:v30];
      kdebug_trace();
      goto LABEL_47;
    }

LABEL_45:
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_46;
  }

  v9 = v7;
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
  v3 = [(MTBaseEpisodeListManifest *)self episodeUuids];
  v4 = [v3 count];

  if (v4 >= 0xC9)
  {
    v16 = [(MTPredicateManifest *)self _currentEpisodeUuid];
    if ([(MTPredicateManifest *)self currentIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(MTBaseEpisodeListManifest *)self episodeUuids];
      v6 = [(MTPredicateManifest *)self _currentEpisodeUuid];
      v7 = [v5 indexOfObject:v6];
    }

    else
    {
      v7 = [(MTPredicateManifest *)self currentIndex];
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {

      return;
    }

    v8 = 50;
    if (v7 > 50)
    {
      v8 = v7;
    }

    v9 = v8 - 50;
    v10 = [(MTBaseEpisodeListManifest *)self episodeUuids];
    v11 = [v10 count];

    v12 = (v7 + 100);
    if (v11 < v7 + 100)
    {
      v12 = v11;
    }

    v13 = &v12[-v9];
    v14 = [(MTBaseEpisodeListManifest *)self episodeUuids];
    v15 = [v14 subarrayWithRange:{v9, v13}];

    [(MTBaseEpisodeListManifest *)self setEpisodeUuids:v15];
    -[MTPredicateManifest setCurrentIndex:](self, "setCurrentIndex:", [v15 indexOfObject:v16]);
    self->_resultsAreFrozen = 1;
  }

  kdebug_trace();
}

- (void)_observeAllPropertyChangesForEntityName:(id)a3 predicate:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001418EC;
  v7[3] = &unk_1004D94C8;
  v7[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  [IMAVPlayer performOnAvSessionQueue:v7];
}

- (void)generator:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v10 = a7;
  v11 = a5;
  v12 = [(MTPredicateManifest *)self indexPathShifter];
  v14 = [v12 shiftedIndexPath];

  v13 = [(MTPredicateManifest *)self indexPathShifter];
  [v13 processChangeAtIndexPath:v11 forChangeType:a6 newIndexPath:v10];
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v15 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 - 1 <= 2)
  {
    [(MTPredicateManifest *)self setHasFRCChanges:1];
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = a3;
  if ([(MTPredicateManifest *)self hasFRCChanges])
  {
    v5 = [v4 fetchedObjects];
    v6 = [v5 valueForKey:kEpisodeUuid];

    v7 = [v4 fetchedObjects];
    v8 = [v7 valueForKey:kObjectID];
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
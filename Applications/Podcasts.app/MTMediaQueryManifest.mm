@interface MTMediaQueryManifest
- (MTMediaQueryManifest)initWithMediaQuery:(id)query initialItem:(id)item;
- (void)_processResults:(id)results;
- (void)_updateSortOrder;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
@end

@implementation MTMediaQueryManifest

- (MTMediaQueryManifest)initWithMediaQuery:(id)query initialItem:(id)item
{
  queryCopy = query;
  itemCopy = item;
  v5 = [MTMLMediaItem itemWithMPMediaItem:?];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000089CC;
  v39 = sub_10003B4BC;
  v40 = 0;
  v6 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v6 mainOrPrivateContext];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000987DC;
  v31[3] = &unk_1004D87E8;
  v8 = mainOrPrivateContext;
  v32 = v8;
  v9 = v5;
  v33 = v9;
  v34 = &v35;
  [v8 performBlockAndWait:v31];
  items = [queryCopy items];
  v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(items, "count")}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = items;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v13)
  {
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [MTMLMediaItem itemWithMPMediaItem:*(*(&v27 + 1) + 8 * v15)];
        persistentId = [v16 persistentId];
        [v11 addObject:persistentId];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v41 count:16];
    }

    while (v13);
  }

  v18 = [NSPredicate predicateWithFormat:@"%K IN %@", kEpisodePersistentID, v11];
  v19 = v36[5];
  v26.receiver = self;
  v26.super_class = MTMediaQueryManifest;
  v20 = [(MTPredicateManifest *)&v26 initWithInitialEpisodeUuid:v19 predicateToTrack:v18 sortDescriptors:0];
  v21 = v20;
  if (v20)
  {
    [(MTMediaQueryManifest *)v20 setQuery:queryCopy];
    [(MTMediaQueryManifest *)v21 setPersistentIds:v11];
  }

  _Block_object_dispose(&v35, 8);
  return v21;
}

- (void)_processResults:(id)results
{
  resultsCopy = results;
  v5 = objc_alloc_init(NSMutableDictionary);
  [(MTMediaQueryManifest *)self setPidToUuidMapping:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = resultsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        pidToUuidMapping = [(MTMediaQueryManifest *)self pidToUuidMapping];
        uuid = [v11 uuid];
        v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 persistentID]);
        [pidToUuidMapping setObject:uuid forKey:v14];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(MTMediaQueryManifest *)self _updateSortOrder];
}

- (void)_updateSortOrder
{
  v3 = [NSMutableArray alloc];
  persistentIds = [(MTMediaQueryManifest *)self persistentIds];
  v5 = [v3 initWithCapacity:{objc_msgSend(persistentIds, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  persistentIds2 = [(MTMediaQueryManifest *)self persistentIds];
  v7 = [persistentIds2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(persistentIds2);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        pidToUuidMapping = [(MTMediaQueryManifest *)self pidToUuidMapping];
        v13 = [pidToUuidMapping objectForKey:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [persistentIds2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(MTPredicateManifest *)self setExplicitSortOrder:v5];
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (type == 2)
  {
    pidToUuidMapping = [(MTMediaQueryManifest *)self pidToUuidMapping];
    uuid = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [objectCopy persistentID]);
    [pidToUuidMapping removeObjectForKey:uuid];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    pidToUuidMapping = [(MTMediaQueryManifest *)self pidToUuidMapping];
    uuid = [objectCopy uuid];
    v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [objectCopy persistentID]);
    stringValue = [v17 stringValue];
    [pidToUuidMapping setValue:uuid forKey:stringValue];
  }

LABEL_6:
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  [(MTMediaQueryManifest *)self _updateSortOrder];
  v5.receiver = self;
  v5.super_class = MTMediaQueryManifest;
  [(MTPredicateManifest *)&v5 controllerDidChangeContent:contentCopy];
}

@end
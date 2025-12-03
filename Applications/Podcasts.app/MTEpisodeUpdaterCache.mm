@interface MTEpisodeUpdaterCache
+ (id)defaultPropertiesToFetch;
+ (id)episodeCacheWithPredicate:(id)predicate inCtx:(id)ctx extraProperties:(id)properties;
- (MTEpisodeUpdaterCache)initWithPredicate:(id)predicate inCtx:(id)ctx extraProperties:(id)properties;
- (id)episodeForAssetUrl:(id)url;
- (id)episodeForEnclosure:(id)enclosure;
- (id)episodeForGuid:(id)guid;
- (id)episodeForPersistentID:(id)d;
- (id)episodeForTitle:(id)title pubDate:(double)date;
- (id)episodeForUUID:(id)d;
- (id)episodeWithValue:(id)value forPropertyKey:(id)key;
- (id)searchCacheForEpisodeMatchingFeedItem:(id)item enclosureUrl:(id)url;
- (id)searchCacheForEpisodeMatchingMediaItem:(id)item;
- (id)unvisitedEpisodes;
@end

@implementation MTEpisodeUpdaterCache

+ (id)defaultPropertiesToFetch
{
  v4[0] = kEpisodeEnclosureUrl;
  v4[1] = kEpisodePodcastUuid;
  v4[2] = kEpisodeTitle;
  v4[3] = kEpisodeUuid;
  v4[4] = kEpisodeGuid;
  v4[5] = kEpisodePubDate;
  v4[6] = kEpisodeByteSize;
  v4[7] = kEpisodeAssetURL;
  v4[8] = kEpisodePersistentID;
  v4[9] = kEpisodeStoreTrackId;
  v2 = [NSArray arrayWithObjects:v4 count:10];

  return v2;
}

+ (id)episodeCacheWithPredicate:(id)predicate inCtx:(id)ctx extraProperties:(id)properties
{
  propertiesCopy = properties;
  ctxCopy = ctx;
  predicateCopy = predicate;
  v11 = [[self alloc] initWithPredicate:predicateCopy inCtx:ctxCopy extraProperties:propertiesCopy];

  return v11;
}

- (MTEpisodeUpdaterCache)initWithPredicate:(id)predicate inCtx:(id)ctx extraProperties:(id)properties
{
  predicateCopy = predicate;
  ctxCopy = ctx;
  propertiesCopy = properties;
  v56.receiver = self;
  v56.super_class = MTEpisodeUpdaterCache;
  v11 = [(MTEpisodeUpdaterCache *)&v56 init];
  if (v11)
  {
    v43 = predicateCopy;
    v12 = &__NSArray0__struct;
    if (propertiesCopy)
    {
      v12 = propertiesCopy;
    }

    v13 = v12;

    defaultPropertiesToFetch = [objc_opt_class() defaultPropertiesToFetch];
    v15 = [defaultPropertiesToFetch arrayByAddingObjectsFromArray:v13];

    objc_storeStrong(&v11->_propertiesToFetch, v15);
    objc_storeStrong(&v11->_ctx, ctx);
    v16 = ctxCopy;
    if (([(MTManagedObjectContext *)v11->_ctx isResetable]& 1) != 0)
    {
      v40 = 0;
    }

    else
    {
      v40 = objc_alloc_init(NSCache);
    }

    v37 = +[NSMutableDictionary dictionary];
    v39 = +[NSMutableDictionary dictionary];
    v17 = +[NSMutableDictionary dictionary];
    v18 = +[NSMutableDictionary dictionary];
    v19 = +[NSMutableDictionary dictionary];
    v20 = +[NSMutableDictionary dictionary];
    v21 = +[NSMutableSet set];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1001666EC;
    v44[3] = &unk_1004DE330;
    v42 = v16;
    v45 = v16;
    v46 = v43;
    propertiesCopy = v15;
    v47 = propertiesCopy;
    v48 = v37;
    v49 = v17;
    v50 = v18;
    v51 = v39;
    v52 = v19;
    v22 = v40;
    v53 = v22;
    v54 = v20;
    v23 = v21;
    v55 = v23;
    v24 = v20;
    v38 = v19;
    v25 = v39;
    v26 = v18;
    v27 = v17;
    v28 = v37;
    [v45 performBlockAndWait:v44];
    unvisitedUUIDs = v11->_unvisitedUUIDs;
    v11->_unvisitedUUIDs = v23;
    v41 = v23;

    v57[0] = kEpisodeTitle;
    v57[1] = kEpisodeEnclosureUrl;
    v58[0] = v28;
    v58[1] = v27;
    v57[2] = kEpisodeGuid;
    v57[3] = kEpisodePersistentID;
    v58[2] = v26;
    v58[3] = v25;
    v30 = v25;
    v57[4] = kEpisodeAssetURL;
    v57[5] = kEpisodeUuid;
    v58[4] = v38;
    v58[5] = v24;
    v31 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:6];
    lookupDict = v11->_lookupDict;
    v11->_lookupDict = v31;

    managedObjectCache = v11->_managedObjectCache;
    v11->_managedObjectCache = v22;
    v34 = v22;

    predicateCopy = v43;
    v35 = v11;

    ctxCopy = v42;
  }

  return v11;
}

- (id)searchCacheForEpisodeMatchingMediaItem:(id)item
{
  itemCopy = item;
  persistentId = [itemCopy persistentId];
  v6 = [(MTEpisodeUpdaterCache *)self episodeForPersistentID:persistentId];

  if (!v6)
  {
    assetUrl = [itemCopy assetUrl];
    v6 = [(MTEpisodeUpdaterCache *)self episodeForAssetUrl:assetUrl];

    if (!v6)
    {
      guid = [itemCopy guid];
      v6 = [(MTEpisodeUpdaterCache *)self episodeForGuid:guid];

      if (!v6)
      {
        title = [itemCopy title];
        stringByStrippingHTML = [title stringByStrippingHTML];
        pubDate = [itemCopy pubDate];
        [pubDate timeIntervalSinceReferenceDate];
        v6 = [(MTEpisodeUpdaterCache *)self episodeForTitle:stringByStrippingHTML pubDate:?];
      }
    }
  }

  uuid = [v6 uuid];

  if (uuid)
  {
    unvisitedUUIDs = self->_unvisitedUUIDs;
    uuid2 = [v6 uuid];
    [(NSMutableSet *)unvisitedUUIDs removeObject:uuid2];
  }

  else if (v6)
  {
    v15 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      title2 = [v6 title];
      v18 = 138412290;
      v19 = title2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "MTEpisodeUpdaterCache encountered episode without UUID %@", &v18, 0xCu);
    }
  }

  return v6;
}

- (id)searchCacheForEpisodeMatchingFeedItem:(id)item enclosureUrl:(id)url
{
  itemCopy = item;
  urlCopy = url;
  guid = [itemCopy guid];

  if (!guid || ([itemCopy guid], v9 = objc_claimAutoreleasedReturnValue(), -[MTEpisodeUpdaterCache episodeForGuid:](self, "episodeForGuid:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v11 = [(MTEpisodeUpdaterCache *)self episodeForEnclosure:urlCopy];
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      title = [itemCopy title];
      stringByStrippingHTML = [title stringByStrippingHTML];
      pubDate = [itemCopy pubDate];
      [pubDate timeIntervalSinceReferenceDate];
      v10 = [(MTEpisodeUpdaterCache *)self episodeForTitle:stringByStrippingHTML pubDate:?];
    }
  }

  uuid = [v10 uuid];

  if (uuid)
  {
    unvisitedUUIDs = self->_unvisitedUUIDs;
    uuid2 = [v10 uuid];
    [(NSMutableSet *)unvisitedUUIDs removeObject:uuid2];
  }

  else if (v10)
  {
    v18 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      title2 = [v10 title];
      v21 = 138412290;
      v22 = title2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "MTEpisodeUpdaterCache encountered episode without UUID %@", &v21, 0xCu);
    }
  }

  return v10;
}

- (id)unvisitedEpisodes
{
  v3 = [NSMutableArray arrayWithCapacity:[(NSMutableSet *)self->_unvisitedUUIDs count]];
  v4 = [NSMutableSet setWithSet:self->_unvisitedUUIDs];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_unvisitedUUIDs;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = kEpisodeUuid;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(MTEpisodeUpdaterCache *)self episodeWithValue:v11 forPropertyKey:v9, v19];
        if (v12)
        {
          [v3 addObject:v12];
          [v4 removeObject:v11];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    ctx = self->_ctx;
    v14 = kMTEpisodeEntityName;
    v15 = [MTEpisode predicateForEpisodeUuids:v4];
    v16 = [(MTManagedObjectContext *)ctx objectsInEntity:v14 predicate:v15 propertiesToFetch:self->_propertiesToFetch batchSize:0];

    [v3 addObjectsFromArray:v16];
  }

  v17 = [v3 copy];

  return v17;
}

- (id)episodeForUUID:(id)d
{
  dCopy = d;
  if (![dCopy length])
  {
    v7 = 0;
    goto LABEL_9;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100008C3C;
  v18 = sub_10003B5F4;
  v19 = 0;
  if ([(MTManagedObjectContext *)self->_ctx isResetable])
  {
    ctx = self->_ctx;
    v6 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10016730C;
    v13[3] = &unk_1004D9040;
    v13[6] = &v14;
    v13[4] = self;
    v13[5] = dCopy;
    [(MTManagedObjectContext *)ctx performBlockAndWait:v13];
LABEL_7:

    goto LABEL_8;
  }

  v8 = [(NSCache *)self->_managedObjectCache objectForKey:dCopy];
  v9 = v15[5];
  v15[5] = v8;

  if (!v15[5])
  {
    v10 = self->_ctx;
    v6 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100167368;
    v12[3] = &unk_1004D9040;
    v12[6] = &v14;
    v12[4] = self;
    v12[5] = dCopy;
    [(MTManagedObjectContext *)v10 performBlockAndWait:v12];
    goto LABEL_7;
  }

LABEL_8:
  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

LABEL_9:

  return v7;
}

- (id)episodeWithValue:(id)value forPropertyKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v8 = keyCopy;
  if (keyCopy && ([keyCopy isEqualToString:kEpisodeTitle] & 1) == 0)
  {
    v10 = [(NSDictionary *)self->_lookupDict objectForKey:v8];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:valueCopy];
      if (v12)
      {
        v9 = [(MTEpisodeUpdaterCache *)self episodeForUUID:v12];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)episodeForGuid:(id)guid
{
  guidCopy = guid;
  if ([guidCopy length])
  {
    v5 = [(MTEpisodeUpdaterCache *)self episodeWithValue:guidCopy forPropertyKey:kEpisodeGuid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)episodeForEnclosure:(id)enclosure
{
  enclosureCopy = enclosure;
  if ([enclosureCopy length])
  {
    v5 = [(MTEpisodeUpdaterCache *)self episodeWithValue:enclosureCopy forPropertyKey:kEpisodeEnclosureUrl];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)episodeForAssetUrl:(id)url
{
  urlCopy = url;
  if ([urlCopy length])
  {
    v5 = [(MTEpisodeUpdaterCache *)self episodeWithValue:urlCopy forPropertyKey:kEpisodeAssetURL];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)episodeForPersistentID:(id)d
{
  if (d)
  {
    v4 = [(MTEpisodeUpdaterCache *)self episodeWithValue:d forPropertyKey:kEpisodePersistentID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)episodeForTitle:(id)title pubDate:(double)date
{
  titleCopy = title;
  if ([titleCopy length])
  {
    lookupDict = [(MTEpisodeUpdaterCache *)self lookupDict];
    v8 = [lookupDict objectForKey:kEpisodeTitle];
    v9 = [v8 objectForKey:titleCopy];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v25;
      v15 = 1.79769313e308;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = [(MTEpisodeUpdaterCache *)self episodeForUUID:*(*(&v24 + 1) + 8 * v16), v24];
        if (!v17)
        {
          break;
        }

        v18 = v17;
        [v17 pubDate];
        v20 = vabdd_f64(v19, date);
        if (v20 < v15)
        {
          v21 = v18;

          v15 = v20;
          v13 = v21;
        }

        if (v12 == ++v16)
        {
          v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          if (v15 < 604800.0)
          {
            v13 = v13;
            v22 = v13;
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_17:
    v22 = 0;
LABEL_18:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end
@interface BKLibraryAssetModificationDateManager
- (BKLibraryAssetModificationDateManager)initWithLibraryManager:(id)manager annotationProvider:(id)provider;
- (id)libraryAssetForAssetIDs:(id)ds inManagedObjectContext:(id)context;
- (id)updatesFromLibraryAssets:(id)assets annotations:(id)annotations;
- (void)annotationsForAssetIDs:(id)ds completion:(id)completion;
- (void)consumeUpdates:(id)updates inManagedObjectContext:(id)context;
- (void)resetModificationDateForAssetIDs:(id)ds completion:(id)completion;
@end

@implementation BKLibraryAssetModificationDateManager

- (BKLibraryAssetModificationDateManager)initWithLibraryManager:(id)manager annotationProvider:(id)provider
{
  managerCopy = manager;
  providerCopy = provider;
  v9 = [(BKLibraryAssetModificationDateManager *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryManager, manager);
    objc_storeStrong(&v10->_annotationProvider, provider);
  }

  return v10;
}

- (void)resetModificationDateForAssetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (dsCopy && ![dsCopy count])
  {
    v9 = objc_retainBlock(completionCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }

  else
  {
    v8 = dispatch_get_global_queue(-2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_56998;
    block[3] = &unk_D62F8;
    block[4] = self;
    v12 = dsCopy;
    v13 = completionCopy;
    dispatch_async(v8, block);
  }
}

- (id)libraryAssetForAssetIDs:(id)ds inManagedObjectContext:(id)context
{
  dsCopy = ds;
  contextCopy = context;
  if (dsCopy)
  {
    v7 = [BKLibraryManager predicateForAssetIDsTaggedLibraryAssets:dsCopy];
  }

  else
  {
    v7 = 0;
  }

  v25[0] = @"assetID";
  v25[1] = @"modificationDate";
  v25[2] = @"creationDate";
  v8 = [NSArray arrayWithObjects:v25 count:3];
  v19 = contextCopy;
  v9 = [contextCopy copyEntityPropertiesArray:v8 fromEntityName:@"BKLibraryAsset" withPredicate:v7 sortBy:0 ascending:0];

  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"assetID"];
        if (v17)
        {
          [v10 setObject:v16 forKeyedSubscript:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  return v10;
}

- (void)annotationsForAssetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_56EC4;
  v13[4] = sub_56ED4;
  v14 = 0;
  if ([dsCopy count])
  {
    annotationProvider = [(BKLibraryAssetModificationDateManager *)self annotationProvider];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_56EDC;
    v9[3] = &unk_D6F90;
    v10 = dsCopy;
    v12 = v13;
    v11 = completionCopy;
    [annotationProvider performBlockOnUserSideQueue:v9];
  }

  _Block_object_dispose(v13, 8);
}

- (id)updatesFromLibraryAssets:(id)assets annotations:(id)annotations
{
  assetsCopy = assets;
  annotationsCopy = annotations;
  if ([annotationsCopy count])
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    v6 = +[AEAnnotation maxModificationDateColumnName];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = annotationsCopy;
    obj = annotationsCopy;
    v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:{@"annotationAssetID", v18}];
          if (v12)
          {
            v13 = [assetsCopy objectForKeyedSubscript:v12];
            v14 = [v11 objectForKeyedSubscript:v6];
            if (v14)
            {
              v15 = [v13 objectForKeyedSubscript:@"modificationDate"];
              v16 = [v13 objectForKeyedSubscript:@"creationDate"];
              if (!v15 || [v15 compare:v14] == -1 || objc_msgSend(v15, "isEqualToDate:", v16))
              {
                [v19 setObject:v14 forKeyedSubscript:v12];
              }
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    annotationsCopy = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)consumeUpdates:(id)updates inManagedObjectContext:(id)context
{
  updatesCopy = updates;
  contextCopy = context;
  if ([updatesCopy count])
  {
    allKeys = [updatesCopy allKeys];
    v18 = contextCopy;
    v8 = [BKLibraryManager libraryAssetsWithAssetIDsContainedInList:allKeys tempAssetIDs:0 inManagedObjectContext:contextCopy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          if ([v14 isValid])
          {
            assetID = [v14 assetID];
            if (assetID)
            {
              v16 = [updatesCopy objectForKeyedSubscript:assetID];
              if (v16)
              {
                [v14 setDifferentObject:v16 forKey:@"modificationDate"];
                purchasedAndLocalParent = [v14 purchasedAndLocalParent];
                [purchasedAndLocalParent setDifferentObject:v16 forKey:@"modificationDate"];
              }
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    contextCopy = v18;
    [v18 saveLibrary];
  }
}

@end
@interface BKLibraryAssetPostProcessor
- (BKLibraryAssetPostProcessor)initWithLibraryManager:(id)a3;
- (id)_libraryAssetsForPostProcessingInManagedObjectContext:(id)a3;
- (void)_postProcess;
- (void)_postProcessExplicitFlagForProductProfiles:(id)a3;
- (void)dealloc;
- (void)ownershipDidChange:(id)a3;
@end

@implementation BKLibraryAssetPostProcessor

- (BKLibraryAssetPostProcessor)initWithLibraryManager:(id)a3
{
  v5 = a3;
  v6 = [(BKLibraryAssetPostProcessor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryManager, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.BKLibraryAssetCoverLoader", v8);
    iVarQueue = v7->_iVarQueue;
    v7->_iVarQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.BKLibraryAssetCoverLoader", v11);
    coverImageQueue = v7->_coverImageQueue;
    v7->_coverImageQueue = v12;

    v14 = v7->_iVarQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4DDD0;
    block[3] = &unk_D5528;
    v15 = v7;
    v19 = v15;
    dispatch_sync(v14, block);
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v15 selector:"ownershipDidChange:" name:@"BKLibraryOwnershipDidChangeNotification" object:v7->_libraryManager];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"BKLibraryOwnershipDidChangeNotification" object:self->_libraryManager];

  v4.receiver = self;
  v4.super_class = BKLibraryAssetPostProcessor;
  [(BKLibraryAssetPostProcessor *)&v4 dealloc];
}

- (void)ownershipDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"BKLibraryOwnershipAssetsKey"];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v12 + 1) + 8 * v10) objectForKeyedSubscript:{@"BKLibraryOwnershipOldDatasource", v12}];

        if (!v11)
        {

          [(BKLibraryAssetPostProcessor *)self _postProcess];
          goto LABEL_11;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_postProcessExplicitFlagForProductProfiles:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryAssetPostProcessor *)self libraryManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4E09C;
  v7[3] = &unk_D58E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performBlockOnWorkerQueue:v7];
}

- (void)_postProcess
{
  kdebug_trace();
  v3 = [(BKLibraryAssetPostProcessor *)self libraryManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4E440;
  v4[3] = &unk_D56B8;
  v4[4] = self;
  [v3 performNamed:@"post-processing" workerQueueBlock:v4];
}

- (id)_libraryAssetsForPostProcessingInManagedObjectContext:(id)a3
{
  v3 = a3;
  v4 = [NSFetchRequest fetchRequestWithEntityName:@"BKLibraryAsset"];
  v5 = +[BKLibraryManager predicateForLibraryAssetsMissingExplicitContentFlag];
  v6 = +[BKLibraryManager predicateForDownloadableStoreLibraryAssets];
  v12[0] = v5;
  v12[1] = v6;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  [v4 setPredicate:v8];

  [v4 setResultType:2];
  [v4 setPropertiesToFetch:&off_DE228];
  v11 = 0;
  v9 = [v3 executeFetchRequest:v4 error:&v11];

  return v9;
}

@end
@interface SHMediaLibraryDataStore
- (BOOL)commitChangesWithError:(id *)a3;
- (SHMediaLibraryDataStore)initWithStoreType:(int64_t)a3;
- (SHMediaLibraryDataStoreDelegate)delegate;
- (id)createMetadataWithData:(id)a3 track:(id)a4 group:(id)a5 context:(id)a6;
- (id)createWithManagedTrack:(id)a3 excludeCloudMetadata:(BOOL)a4;
- (id)dataFromManagedObjectRawResponseDictionary:(id)a3;
- (id)fetchAllUploadableGroupsMissingLibrarySyncMetadata;
- (id)fetchAllUploadableTracksMissingLibrarySyncMetadata;
- (id)fetchLibraryGroupsWithParameters:(id)a3;
- (id)fetchLibraryTracksWithParameters:(id)a3;
- (id)fetchObjectsForRequest:(id)a3 withPredicate:(id)a4 context:(id)a5;
- (id)fetchRawSongResponseDataForLibraryTrackIdentifier:(id)a3;
- (id)libraryChangesFromManagedObjects:(id)a3 usingContext:(id)a4 changeType:(int64_t)a5;
- (id)persistentContainerForStoreType:(int64_t)a3 error:(id *)a4;
- (id)updateReportForLibraryGroups:(id)a3;
- (id)updateReportForLibraryTrack:(id)a3;
- (void)associateTrack:(id)a3 toGroupWithIdentifier:(id)a4 context:(id)a5;
- (void)deleteAllItems;
- (void)deleteAllItemsWithFetchRequest:(id)a3 completionHandler:(id)a4;
- (void)deleteAllSyncMetadataItems;
- (void)deleteItemsByIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)fetchLibraryItemsWithParameters:(id)a3 completionHandler:(id)a4;
- (void)managedObjectsDidChange:(id)a3;
- (void)observeDatabaseChangesWithContext:(id)a3;
- (void)persistLibraryGroups:(id)a3 completionHandler:(id)a4;
- (void)persistUpdatedTracks:(id)a3 completionHandler:(id)a4;
- (void)reset;
- (void)updateManagedTrack:(id)a3 withUpdatedTrack:(id)a4;
@end

@implementation SHMediaLibraryDataStore

- (SHMediaLibraryDataStore)initWithStoreType:(int64_t)a3
{
  v20.receiver = self;
  v20.super_class = SHMediaLibraryDataStore;
  v4 = [(SHMediaLibraryDataStore *)&v20 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v19 = 0;
  v6 = [(SHMediaLibraryDataStore *)v4 persistentContainerForStoreType:a3 error:&v19];
  v7 = v19;
  persistentContainer = v5->_persistentContainer;
  v5->_persistentContainer = v6;

  if (!v7)
  {
    v11 = [(NSPersistentContainer *)v5->_persistentContainer newBackgroundContext];
    v12 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
    [(NSManagedObjectContext *)v11 setMergePolicy:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [NSString stringWithFormat:@"%@ context", v14];
    [(NSManagedObjectContext *)v11 setName:v15];

    managedObjectContext = v5->_managedObjectContext;
    v5->_managedObjectContext = v11;
    v17 = v11;

    [(SHMediaLibraryDataStore *)v5 observeDatabaseChangesWithContext:v17];
LABEL_7:
    v10 = v5;
    goto LABEL_8;
  }

  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to load persistent container %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)persistentContainerForStoreType:(int64_t)a3 error:(id *)a4
{
  v6 = NSSQLiteStoreType;
  if (!a3)
  {
    v7 = NSInMemoryStoreType;

    v6 = v7;
  }

  v8 = [NSManagedObjectModel alloc];
  v9 = +[SHMediaLibraryPersistentConfiguration managedObjectModelURL];
  v10 = [v8 initWithContentsOfURL:v9];

  v11 = [[NSPersistentContainer alloc] initWithName:@"ShazamLibrary" managedObjectModel:v10];
  v12 = [SHMediaLibraryPersistentConfiguration persistentStoreDescriptionForStoreType:v6];
  v22 = v12;
  v13 = [NSArray arrayWithObjects:&v22 count:1];
  [v11 setPersistentStoreDescriptions:v13];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000189E0;
  v20 = sub_1000189F0;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000189F8;
  v15[3] = &unk_10007D428;
  v15[4] = &v16;
  [v11 loadPersistentStoresWithCompletionHandler:v15];
  if (a4)
  {
    *a4 = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)fetchLibraryItemsWithParameters:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 filterOptions])
  {
    v7 = [(SHMediaLibraryDataStore *)self fetchLibraryTracksWithParameters:v9];
  }

  else
  {
    v7 = 0;
  }

  if (([v9 filterOptions] & 2) != 0)
  {
    v8 = [(SHMediaLibraryDataStore *)self fetchLibraryGroupsWithParameters:v9];
  }

  else
  {
    v8 = 0;
  }

  v6[2](v6, v7, v8, 0);
}

- (id)fetchLibraryTracksWithParameters:(id)a3
{
  v4 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000189E0;
  v39 = sub_1000189F0;
  v40 = +[NSMutableArray array];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v5 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Local] Media library began fetching tracks.", buf, 2u);
  }

  if (*(v28 + 24) == 1)
  {
    while (1)
    {
      v7 = [v36[5] count];
      if (v7 == [v4 resultsLimit])
      {
        break;
      }

      v8 = [v4 resultsLimit];
      v9 = [v36[5] count];
      if ((v8 - v9) >= 0x1F4)
      {
        v10 = 500;
      }

      else
      {
        v10 = v8 - v9;
      }

      v11 = +[SHFetchRequestFactory tracksFetchRequestWithContext:fetchOffset:fetchLimit:sortedByAscendingDate:excludeCloudMetadata:](SHFetchRequestFactory, "tracksFetchRequestWithContext:fetchOffset:fetchLimit:sortedByAscendingDate:excludeCloudMetadata:", v5, v32[3], v10, [v4 ascending], objc_msgSend(v4, "excludeCloudMetadata"));
      v12 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v11 withPredicate:0 context:v5];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100018EE8;
      v19[3] = &unk_10007D450;
      v13 = v12;
      v20 = v13;
      v24 = &v27;
      v21 = v4;
      v22 = self;
      v25 = &v35;
      v26 = &v31;
      v23 = v5;
      [v23 performBlockAndWait:v19];

      if ((v28[3] & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Local] Media library already fetched max limit.", buf, 2u);
    }
  }

LABEL_13:
  v15 = sh_log_object();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v36[5] count];
    *buf = 134217984;
    v42 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Local] Media library fetched %lu tracks.", buf, 0xCu);
  }

  v17 = [v36[5] copy];
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v17;
}

- (id)fetchRawSongResponseDataForLibraryTrackIdentifier:(id)a3
{
  v4 = [NSPredicate predicateWithFormat:@"syncID == %@", a3];
  v5 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v6 = +[SHTrackMO fetchRequest];
  [v6 setResultType:2];
  [v6 setFetchLimit:1];
  v13 = @"rawSongResponse";
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  [v6 setPropertiesToFetch:v7];

  v8 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v6 withPredicate:v4 context:v5];
  if ([v8 count])
  {
    v9 = [v8 firstObject];
    v10 = [v9 objectForKeyedSubscript:@"rawSongResponse"];

    v11 = [(SHMediaLibraryDataStore *)self dataFromManagedObjectRawResponseDictionary:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)fetchAllUploadableTracksMissingLibrarySyncMetadata
{
  v3 = NSStringFromSelector("date");
  v4 = [NSString stringWithFormat:@"%@ != nil", v3];
  v5 = [NSPredicate predicateWithFormat:v4];

  v6 = NSStringFromSelector("metadata");
  v7 = [NSString stringWithFormat:@"%@ == nil", v6];
  v8 = [NSPredicate predicateWithFormat:v7];

  v27[0] = v5;
  v27[1] = v8;
  v9 = [NSArray arrayWithObjects:v27 count:2];
  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

  v11 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v12 = +[SHTrackMO fetchRequest];
  v13 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v12 withPredicate:v10 context:v11];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000189E0;
  v25 = sub_1000189F0;
  v26 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100019514;
  v17[3] = &unk_10007D478;
  v14 = v13;
  v18 = v14;
  v19 = self;
  v20 = &v21;
  [v11 performBlockAndWait:v17];
  v15 = [v22[5] copy];

  _Block_object_dispose(&v21, 8);

  return v15;
}

- (id)fetchAllUploadableGroupsMissingLibrarySyncMetadata
{
  v3 = NSStringFromSelector("metadata");
  v4 = [NSString stringWithFormat:@"%@ == nil", v3];
  v5 = [NSPredicate predicateWithFormat:v4];

  v23 = v5;
  v6 = [NSArray arrayWithObjects:&v23 count:1];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  v8 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v9 = +[SHGroupMO fetchRequest];
  v10 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v9 withPredicate:v7 context:v8];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000189E0;
  v21 = sub_1000189F0;
  v22 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000198A8;
  v14[3] = &unk_10007D4A0;
  v11 = v10;
  v15 = v11;
  v16 = &v17;
  [v8 performBlockAndWait:v14];
  v12 = [v18[5] copy];

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (id)fetchLibraryGroupsWithParameters:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000189E0;
  v28 = sub_1000189F0;
  v29 = +[NSMutableArray array];
  v5 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Local] Media library fetching groups.", buf, 2u);
  }

  v7 = [SHFetchRequestFactory groupsFetchRequestWithContext:v5];
  v8 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v7 withPredicate:0 context:v5];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100019CC4;
  v19 = &unk_10007D4C8;
  v9 = v4;
  v20 = v9;
  v10 = v8;
  v21 = v10;
  v23 = &v24;
  v11 = v5;
  v22 = v11;
  [v11 performBlockAndWait:&v16];
  v12 = sh_log_object();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v25[5] count];
    *buf = 134217984;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Local] Media library fetched %lu groups.", buf, 0xCu);
  }

  v14 = [v25[5] copy];
  _Block_object_dispose(&v24, 8);

  return v14;
}

- (void)persistUpdatedTracks:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SHMediaLibraryDataStore *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019F6C;
  v11[3] = &unk_10007D4F0;
  v11[4] = self;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlockAndWait:v11];
}

- (id)updateReportForLibraryTrack:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SHMediaLibraryUpdateReport);
  v6 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v7 = NSStringFromSelector("identifier");
  v8 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v7];
  v9 = [v4 valueForKeyPath:v8];

  v10 = [NSPredicate predicateWithFormat:@"%K IN %@", @"syncID", v9];
  v11 = +[SHTrackMO fetchRequest];
  v12 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v11 withPredicate:v10 context:v6];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001A688;
  v19[3] = &unk_10007D1E8;
  v20 = v4;
  v21 = v12;
  v13 = v5;
  v22 = v13;
  v14 = v12;
  v15 = v4;
  [v6 performBlockAndWait:v19];
  v16 = v22;
  v17 = v13;

  return v13;
}

- (void)persistLibraryGroups:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SHMediaLibraryDataStore *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A9D8;
  v11[3] = &unk_10007D4F0;
  v11[4] = self;
  v13 = v12 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [v9 performBlockAndWait:v11];
}

- (id)updateReportForLibraryGroups:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SHMediaLibraryUpdateReport);
  v6 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v7 = NSStringFromSelector("identifier");
  v8 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v7];
  v9 = [v4 valueForKeyPath:v8];

  v10 = NSStringFromSelector("syncID");
  v11 = [NSPredicate predicateWithFormat:@"%K IN %@", v10, v9];

  v12 = +[SHGroupMO fetchRequest];
  v13 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v12 withPredicate:v11 context:v6];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001B14C;
  v20[3] = &unk_10007D1E8;
  v21 = v4;
  v22 = v13;
  v14 = v5;
  v23 = v14;
  v15 = v13;
  v16 = v4;
  [v6 performBlockAndWait:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

- (void)deleteItemsByIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v9 = NSStringFromSelector("syncID");
  v10 = [NSPredicate predicateWithFormat:@"%K IN %@", v9, v7];

  v11 = +[SHGroupMO fetchRequest];
  v12 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v11 withPredicate:v10 context:v8];

  v13 = +[SHTrackMO fetchRequest];
  v14 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v13 withPredicate:v10 context:v8];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001B564;
  v19[3] = &unk_10007D4F0;
  v20 = v12;
  v21 = v8;
  v22 = v14;
  v23 = v6;
  v15 = v6;
  v16 = v14;
  v17 = v8;
  v18 = v12;
  [v17 performBlockAndWait:v19];
}

- (void)deleteAllItemsWithFetchRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v9 = [(SHMediaLibraryDataStore *)self persistentContainer];
  v10 = [v9 persistentStoreDescriptions];
  v11 = [v10 firstObject];

  v12 = [v11 type];
  LODWORD(v10) = [v12 isEqualToString:NSInMemoryStoreType];

  if (v10)
  {
    [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v6 withPredicate:0 context:v8];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001B9D4;
    v30 = v29[3] = &unk_10007D568;
    v31 = v8;
    v32 = v7;
    v13 = v30;
    [v31 performBlockAndWait:v29];

    v14 = v30;
  }

  else
  {
    v15 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v6];
    v16 = [(SHMediaLibraryDataStore *)self persistentContainer];
    v17 = [v16 persistentStoreCoordinator];

    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_1000189E0;
    v27 = sub_1000189F0;
    v28 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001BADC;
    v18[3] = &unk_10007D590;
    v14 = v17;
    v19 = v14;
    v13 = v15;
    v20 = v13;
    v21 = v8;
    v22 = &v23;
    [v21 performBlockAndWait:v18];
    (*(v7 + 2))(v7, v24[5]);

    _Block_object_dispose(&v23, 8);
  }
}

- (void)deleteAllItems
{
  v3 = +[SHGroupMO fetchRequest];
  [(SHMediaLibraryDataStore *)self deleteAllItemsWithFetchRequest:v3 completionHandler:&stru_10007D5D0];

  v4 = +[SHTrackMO fetchRequest];
  [(SHMediaLibraryDataStore *)self deleteAllItemsWithFetchRequest:v4 completionHandler:&stru_10007D5F0];

  [(SHMediaLibraryDataStore *)self reset];
}

- (void)deleteAllSyncMetadataItems
{
  v3 = +[SHMetadataMO fetchRequest];
  [(SHMediaLibraryDataStore *)self deleteAllItemsWithFetchRequest:v3 completionHandler:&stru_10007D610];

  [(SHMediaLibraryDataStore *)self reset];
}

- (BOOL)commitChangesWithError:(id *)a3
{
  [(SHMediaLibraryDataStore *)self managedObjectContext];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000189E0;
  v22 = sub_1000189F0;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001C084;
  v4 = v10[3] = &unk_10007D638;
  v11 = v4;
  v12 = &v14;
  v13 = &v18;
  [v4 performBlockAndWait:v10];
  v5 = *(v15 + 24);
  if (a3 && (v15[3] & 1) == 0)
  {
    v6 = v19[5];
    if (v6)
    {
      v26 = NSUnderlyingErrorKey;
      v27 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = sh_log_object();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to commit library core data changes. Error %@", buf, 0xCu);
    }

    *a3 = [NSError errorWithDomain:SHErrorDomain code:400 userInfo:v7];

    v5 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v5 & 1;
}

- (void)reset
{
  [(SHMediaLibraryDataStore *)self managedObjectContext];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001C19C;
  v4 = v3[3] = &unk_10007CD50;
  v2 = v4;
  [v2 performBlockAndWait:v3];
}

- (id)fetchObjectsForRequest:(id)a3 withPredicate:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    [v7 setPredicate:v8];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000189E0;
  v30 = sub_1000189F0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000189E0;
  v24 = sub_1000189F0;
  v25 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001C400;
  v15[3] = &unk_10007D660;
  v18 = &v20;
  v10 = v9;
  v16 = v10;
  v11 = v7;
  v17 = v11;
  v19 = &v26;
  [v10 performBlockAndWait:v15];
  if (v27[5])
  {
    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to fetch request %{public}@", buf, 0xCu);
    }
  }

  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

- (id)createMetadataWithData:(id)a3 track:(id)a4 group:(id)a5 context:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSEntityDescription insertNewObjectForEntityForName:v14 inManagedObjectContext:v9];

  [v15 setData:v12];
  [v15 setTrack:v11];

  [v15 setGroup:v10];

  return v15;
}

- (void)associateTrack:(id)a3 toGroupWithIdentifier:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = NSStringFromSelector("syncID");
  v12 = [NSPredicate predicateWithFormat:@"%K == %@", v11, v9];

  v13 = +[SHGroupMO fetchRequest];
  v14 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v13 withPredicate:v12 context:v10];
  v15 = [v14 firstObject];

  if (v15)
  {
    [v8 setGroup:v15];
  }

  else
  {
    v16 = sh_log_object();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Persisting a Track with an associated Group ID, but there is no group saved locally. Will fallback to creation.", buf, 2u);
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [NSEntityDescription insertNewObjectForEntityForName:v18 inManagedObjectContext:v10];

    [v19 setSyncID:v9];
    [v8 setGroup:v19];
  }
}

- (void)updateManagedTrack:(id)a3 withUpdatedTrack:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 identifier];
  [v5 setSyncID:v7];

  v8 = [v6 creationDate];
  [v5 setDate:v8];

  [v6 locationCoordinate];
  [v5 setLatitude:?];
  [v6 locationCoordinate];
  [v5 setLongitude:v9];
  if ([v6 explicitContent])
  {
    [v5 setExplicit:{objc_msgSend(v6, "explicitContent")}];
  }

  if ([v6 shazamCount])
  {
    [v5 setShazamCount:{objc_msgSend(v6, "shazamCount")}];
  }

  v10 = [v6 shazamKey];

  if (v10)
  {
    v11 = [v6 shazamKey];
    v12 = [v11 validatedKey];
    [v5 setShazamKey:v12];
  }

  v13 = [v6 recognitionIdentifier];

  if (v13)
  {
    v14 = [v6 recognitionIdentifier];
    [v5 setRecognitionID:v14];
  }

  v15 = [v6 title];

  if (v15)
  {
    v16 = [v6 title];
    [v5 setTitle:v16];
  }

  v17 = [v6 subtitle];

  if (v17)
  {
    v18 = [v6 subtitle];
    [v5 setSubtitle:v18];
  }

  v19 = [v6 providerIdentifier];

  if (v19)
  {
    v20 = [v6 providerIdentifier];
    [v5 setProviderID:v20];
  }

  v21 = [v6 providerName];

  if (v21)
  {
    v22 = [v6 providerName];
    [v5 setProviderName:v22];
  }

  v23 = [v6 artworkURL];

  if (v23)
  {
    v24 = [v6 artworkURL];
    [v5 setArtworkURL:v24];
  }

  v25 = [v6 shazamURL];

  if (v25)
  {
    v26 = [v6 shazamURL];
    [v5 setShazamURL:v26];
  }

  v27 = [v6 albumName];

  if (v27)
  {
    v28 = [v6 albumName];
    [v5 setAlbumName:v28];
  }

  v29 = [v6 appleMusicID];

  if (v29)
  {
    v30 = [v6 appleMusicID];
    [v5 setAppleMusicID:v30];
  }

  v31 = [v6 appleMusicURL];

  if (v31)
  {
    v32 = [v6 appleMusicURL];
    [v5 setAppleMusicURL:v32];
  }

  v33 = [v6 genres];

  if (v33)
  {
    v34 = [v6 genres];
    [v5 setGenres:v34];
  }

  v35 = [v6 isrc];

  if (v35)
  {
    v36 = [v6 isrc];
    [v5 setIsrc:v36];
  }

  v37 = [v6 rawSongResponse];

  if (v37)
  {
    v52 = @"SHMediaLibraryDataStoreRawResponseSongsData";
    v38 = [v6 rawSongResponse];
    v53 = v38;
    v39 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    [v5 setRawSongResponse:v39];
  }

  v40 = [v6 releaseDate];

  if (v40)
  {
    v41 = [v6 releaseDate];
    [v5 setReleaseDate:v41];
  }

  v42 = [v6 videoURL];

  if (v42)
  {
    v43 = [v6 videoURL];
    [v5 setVideoURL:v43];
  }

  v44 = [v6 lastUpdatedDate];

  if (v44)
  {
    v45 = [v6 lastUpdatedDate];
    [v5 setModifiedDate:v45];
  }

  v46 = NSStringFromSelector("name");
  v47 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v46];

  v48 = [v6 labels];
  v49 = [v48 valueForKeyPath:v47];
  v50 = [v49 allObjects];

  v51 = [v50 copy];
  [v5 setLabels:v51];
}

- (void)observeDatabaseChangesWithContext:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"managedObjectsDidChange:" name:NSManagedObjectContextObjectsDidChangeNotification object:v4];
}

- (void)managedObjectsDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:NSInsertedObjectsKey];
  if (v6 || ([v5 objectForKeyedSubscript:NSUpdatedObjectsKey], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v12 = [v5 objectForKeyedSubscript:NSDeletedObjectsKey];

    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v7 = sh_log_object();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Local] Received Managed objects change notification. Handling changes.", buf, 2u);
  }

  v8 = [(SHMediaLibraryDataStore *)self managedObjectContext];
  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = sub_1000189E0;
  v25 = sub_1000189F0;
  v26 = +[NSMutableArray array];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10001CF5C;
  v16 = &unk_10007D590;
  v17 = v5;
  v18 = self;
  v9 = v8;
  v19 = v9;
  v20 = buf;
  [v9 performBlockAndWait:&v13];
  v10 = [(SHMediaLibraryDataStore *)self delegate:v13];
  v11 = [*(v22 + 5) copy];
  [v10 libraryDataStore:self didUpdateWithChanges:v11];

  _Block_object_dispose(buf, 8);
LABEL_7:
}

- (id)libraryChangesFromManagedObjects:(id)a3 usingContext:(id)a4 changeType:(int64_t)a5
{
  v6 = a3;
  v7 = a4;
  v39 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [NSEntityDescription entityForName:v9 inManagedObjectContext:v7];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v36 = v7;
  v13 = [NSEntityDescription entityForName:v12 inManagedObjectContext:v7];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    v37 = *v42;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v41 + 1) + 8 * i);
        v20 = [v19 entity];
        v21 = [v20 isKindOfEntity:v10];

        if (v21)
        {
          v22 = [(SHMediaLibraryDataStore *)self createWithManagedTrack:v19 excludeCloudMetadata:0];
          if (v22)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v23 = [v19 entity];
          v24 = [v23 isKindOfEntity:v13];

          if (v24)
          {
            v25 = v19;
            v26 = [SHMediaLibraryGroup alloc];
            v27 = [v25 metadata];
            v28 = [v27 data];
            [v25 syncID];
            v29 = v10;
            v30 = v14;
            v32 = v31 = v13;

            v22 = [v26 initWithGroupMetadata:v28 groupSyncID:v32];
            v13 = v31;
            v14 = v30;
            v10 = v29;

            v17 = v37;
            if (v22)
            {
LABEL_11:
              v33 = [[SHMediaLibraryChange alloc] initWithLibraryItem:v22 changeType:a5];
              [v39 addObject:v33];

              continue;
            }
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v16);
  }

  v34 = [v39 copy];

  return v34;
}

- (id)createWithManagedTrack:(id)a3 excludeCloudMetadata:(BOOL)a4
{
  v5 = a3;
  v29 = [SHMediaLibraryTrack alloc];
  v6 = [v5 syncID];
  v7 = [v5 date];
  v38 = [v5 releaseDate];
  v31 = [v5 group];
  v37 = [v31 syncID];
  v36 = [v5 labels];
  v35 = [v5 modifiedDate];
  v34 = [v5 providerID];
  v39 = v7;
  v40 = v6;
  if (a4)
  {
    v32 = 0;
  }

  else
  {
    v20 = [v5 metadata];
    v32 = [v20 data];
  }

  v28 = [v5 providerName];
  v33 = [v5 shazamKey];
  v27 = [v5 recognitionID];
  v23 = [v5 title];
  v26 = [v5 subtitle];
  v25 = [v5 artworkURL];
  v22 = [v5 appleMusicID];
  v24 = [v5 appleMusicURL];
  v21 = [v5 shazamURL];
  v8 = [v5 videoURL];
  v9 = [v5 explicit];
  v10 = [v5 albumName];
  v11 = [v5 isrc];
  v12 = [v5 shazamCount];
  [v5 latitude];
  v14 = v13;
  [v5 longitude];
  v16 = CLLocationCoordinate2DMake(v14, v15);
  v17 = [v5 genres];
  LOBYTE(v19) = v9;
  v30 = [v29 initWithTrackSyncID:v40 creationDate:v39 releaseDate:v38 groupSyncID:v37 labels:v36 lastUpdatedDate:v35 providerIdentifier:v16.latitude trackMetadata:v16.longitude providerName:v34 shazamKey:v32 recognitionID:v28 title:v33 subtitle:v27 artworkURL:v23 appleMusicID:v26 appleMusicURL:v25 shazamURL:v22 videoURL:v24 isExplicit:v21 albumName:v8 isrc:v19 shazamCount:v10 locationCoordinate:v11 genres:v12 rawSongResponse:{v17, 0}];

  if (!a4)
  {
  }

  return v30;
}

- (id)dataFromManagedObjectRawResponseDictionary:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectForKeyedSubscript:@"SHMediaLibraryDataStoreRawResponseSongsData"];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v11 = 0;
      v7 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:&v11];
      v8 = v11;
      if (v8)
      {
        v9 = sh_log_object();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v13 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error occured with serializing raw response %@", buf, 0xCu);
        }
      }

      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SHMediaLibraryDataStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
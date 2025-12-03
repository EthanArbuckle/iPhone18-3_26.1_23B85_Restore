@interface SHMediaLibraryDataStore
- (BOOL)commitChangesWithError:(id *)error;
- (SHMediaLibraryDataStore)initWithStoreType:(int64_t)type;
- (SHMediaLibraryDataStoreDelegate)delegate;
- (id)createMetadataWithData:(id)data track:(id)track group:(id)group context:(id)context;
- (id)createWithManagedTrack:(id)track excludeCloudMetadata:(BOOL)metadata;
- (id)dataFromManagedObjectRawResponseDictionary:(id)dictionary;
- (id)fetchAllUploadableGroupsMissingLibrarySyncMetadata;
- (id)fetchAllUploadableTracksMissingLibrarySyncMetadata;
- (id)fetchLibraryGroupsWithParameters:(id)parameters;
- (id)fetchLibraryTracksWithParameters:(id)parameters;
- (id)fetchObjectsForRequest:(id)request withPredicate:(id)predicate context:(id)context;
- (id)fetchRawSongResponseDataForLibraryTrackIdentifier:(id)identifier;
- (id)libraryChangesFromManagedObjects:(id)objects usingContext:(id)context changeType:(int64_t)type;
- (id)persistentContainerForStoreType:(int64_t)type error:(id *)error;
- (id)updateReportForLibraryGroups:(id)groups;
- (id)updateReportForLibraryTrack:(id)track;
- (void)associateTrack:(id)track toGroupWithIdentifier:(id)identifier context:(id)context;
- (void)deleteAllItems;
- (void)deleteAllItemsWithFetchRequest:(id)request completionHandler:(id)handler;
- (void)deleteAllSyncMetadataItems;
- (void)deleteItemsByIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchLibraryItemsWithParameters:(id)parameters completionHandler:(id)handler;
- (void)managedObjectsDidChange:(id)change;
- (void)observeDatabaseChangesWithContext:(id)context;
- (void)persistLibraryGroups:(id)groups completionHandler:(id)handler;
- (void)persistUpdatedTracks:(id)tracks completionHandler:(id)handler;
- (void)reset;
- (void)updateManagedTrack:(id)track withUpdatedTrack:(id)updatedTrack;
@end

@implementation SHMediaLibraryDataStore

- (SHMediaLibraryDataStore)initWithStoreType:(int64_t)type
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
  v6 = [(SHMediaLibraryDataStore *)v4 persistentContainerForStoreType:type error:&v19];
  v7 = v19;
  persistentContainer = v5->_persistentContainer;
  v5->_persistentContainer = v6;

  if (!v7)
  {
    newBackgroundContext = [(NSPersistentContainer *)v5->_persistentContainer newBackgroundContext];
    v12 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
    [(NSManagedObjectContext *)newBackgroundContext setMergePolicy:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [NSString stringWithFormat:@"%@ context", v14];
    [(NSManagedObjectContext *)newBackgroundContext setName:v15];

    managedObjectContext = v5->_managedObjectContext;
    v5->_managedObjectContext = newBackgroundContext;
    v17 = newBackgroundContext;

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

- (id)persistentContainerForStoreType:(int64_t)type error:(id *)error
{
  v6 = NSSQLiteStoreType;
  if (!type)
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
  if (error)
  {
    *error = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)fetchLibraryItemsWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  if ([parametersCopy filterOptions])
  {
    v7 = [(SHMediaLibraryDataStore *)self fetchLibraryTracksWithParameters:parametersCopy];
  }

  else
  {
    v7 = 0;
  }

  if (([parametersCopy filterOptions] & 2) != 0)
  {
    v8 = [(SHMediaLibraryDataStore *)self fetchLibraryGroupsWithParameters:parametersCopy];
  }

  else
  {
    v8 = 0;
  }

  handlerCopy[2](handlerCopy, v7, v8, 0);
}

- (id)fetchLibraryTracksWithParameters:(id)parameters
{
  parametersCopy = parameters;
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
  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
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
      if (v7 == [parametersCopy resultsLimit])
      {
        break;
      }

      resultsLimit = [parametersCopy resultsLimit];
      v9 = [v36[5] count];
      if ((resultsLimit - v9) >= 0x1F4)
      {
        v10 = 500;
      }

      else
      {
        v10 = resultsLimit - v9;
      }

      v11 = +[SHFetchRequestFactory tracksFetchRequestWithContext:fetchOffset:fetchLimit:sortedByAscendingDate:excludeCloudMetadata:](SHFetchRequestFactory, "tracksFetchRequestWithContext:fetchOffset:fetchLimit:sortedByAscendingDate:excludeCloudMetadata:", managedObjectContext, v32[3], v10, [parametersCopy ascending], objc_msgSend(parametersCopy, "excludeCloudMetadata"));
      v12 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v11 withPredicate:0 context:managedObjectContext];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100018EE8;
      v19[3] = &unk_10007D450;
      v13 = v12;
      v20 = v13;
      v24 = &v27;
      v21 = parametersCopy;
      selfCopy = self;
      v25 = &v35;
      v26 = &v31;
      v23 = managedObjectContext;
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

- (id)fetchRawSongResponseDataForLibraryTrackIdentifier:(id)identifier
{
  identifier = [NSPredicate predicateWithFormat:@"syncID == %@", identifier];
  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v6 = +[SHTrackMO fetchRequest];
  [v6 setResultType:2];
  [v6 setFetchLimit:1];
  v13 = @"rawSongResponse";
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  [v6 setPropertiesToFetch:v7];

  v8 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v6 withPredicate:identifier context:managedObjectContext];
  if ([v8 count])
  {
    firstObject = [v8 firstObject];
    v10 = [firstObject objectForKeyedSubscript:@"rawSongResponse"];

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

  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v12 = +[SHTrackMO fetchRequest];
  v13 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v12 withPredicate:v10 context:managedObjectContext];

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
  selfCopy = self;
  v20 = &v21;
  [managedObjectContext performBlockAndWait:v17];
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

  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v9 = +[SHGroupMO fetchRequest];
  v10 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v9 withPredicate:v7 context:managedObjectContext];

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
  [managedObjectContext performBlockAndWait:v14];
  v12 = [v18[5] copy];

  _Block_object_dispose(&v17, 8);

  return v12;
}

- (id)fetchLibraryGroupsWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000189E0;
  v28 = sub_1000189F0;
  v29 = +[NSMutableArray array];
  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v6 = sh_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Local] Media library fetching groups.", buf, 2u);
  }

  v7 = [SHFetchRequestFactory groupsFetchRequestWithContext:managedObjectContext];
  v8 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v7 withPredicate:0 context:managedObjectContext];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100019CC4;
  v19 = &unk_10007D4C8;
  v9 = parametersCopy;
  v20 = v9;
  v10 = v8;
  v21 = v10;
  v23 = &v24;
  v11 = managedObjectContext;
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

- (void)persistUpdatedTracks:(id)tracks completionHandler:(id)handler
{
  tracksCopy = tracks;
  handlerCopy = handler;
  [(SHMediaLibraryDataStore *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019F6C;
  v11[3] = &unk_10007D4F0;
  v11[4] = self;
  v13 = v12 = tracksCopy;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = v13;
  v10 = tracksCopy;
  [v9 performBlockAndWait:v11];
}

- (id)updateReportForLibraryTrack:(id)track
{
  trackCopy = track;
  v5 = objc_alloc_init(SHMediaLibraryUpdateReport);
  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v7 = NSStringFromSelector("identifier");
  v8 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v7];
  v9 = [trackCopy valueForKeyPath:v8];

  v10 = [NSPredicate predicateWithFormat:@"%K IN %@", @"syncID", v9];
  v11 = +[SHTrackMO fetchRequest];
  v12 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v11 withPredicate:v10 context:managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001A688;
  v19[3] = &unk_10007D1E8;
  v20 = trackCopy;
  v21 = v12;
  v13 = v5;
  v22 = v13;
  v14 = v12;
  v15 = trackCopy;
  [managedObjectContext performBlockAndWait:v19];
  v16 = v22;
  v17 = v13;

  return v13;
}

- (void)persistLibraryGroups:(id)groups completionHandler:(id)handler
{
  groupsCopy = groups;
  handlerCopy = handler;
  [(SHMediaLibraryDataStore *)self managedObjectContext];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A9D8;
  v11[3] = &unk_10007D4F0;
  v11[4] = self;
  v13 = v12 = groupsCopy;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = v13;
  v10 = groupsCopy;
  [v9 performBlockAndWait:v11];
}

- (id)updateReportForLibraryGroups:(id)groups
{
  groupsCopy = groups;
  v5 = objc_alloc_init(SHMediaLibraryUpdateReport);
  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v7 = NSStringFromSelector("identifier");
  v8 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v7];
  v9 = [groupsCopy valueForKeyPath:v8];

  v10 = NSStringFromSelector("syncID");
  v11 = [NSPredicate predicateWithFormat:@"%K IN %@", v10, v9];

  v12 = +[SHGroupMO fetchRequest];
  v13 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v12 withPredicate:v11 context:managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001B14C;
  v20[3] = &unk_10007D1E8;
  v21 = groupsCopy;
  v22 = v13;
  v14 = v5;
  v23 = v14;
  v15 = v13;
  v16 = groupsCopy;
  [managedObjectContext performBlockAndWait:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

- (void)deleteItemsByIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
  v9 = NSStringFromSelector("syncID");
  identifiersCopy = [NSPredicate predicateWithFormat:@"%K IN %@", v9, identifiersCopy];

  v11 = +[SHGroupMO fetchRequest];
  v12 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v11 withPredicate:identifiersCopy context:managedObjectContext];

  v13 = +[SHTrackMO fetchRequest];
  v14 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v13 withPredicate:identifiersCopy context:managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001B564;
  v19[3] = &unk_10007D4F0;
  v20 = v12;
  v21 = managedObjectContext;
  v22 = v14;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = v14;
  v17 = managedObjectContext;
  v18 = v12;
  [v17 performBlockAndWait:v19];
}

- (void)deleteAllItemsWithFetchRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
  persistentContainer = [(SHMediaLibraryDataStore *)self persistentContainer];
  persistentStoreDescriptions = [persistentContainer persistentStoreDescriptions];
  firstObject = [persistentStoreDescriptions firstObject];

  type = [firstObject type];
  LODWORD(persistentStoreDescriptions) = [type isEqualToString:NSInMemoryStoreType];

  if (persistentStoreDescriptions)
  {
    [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:requestCopy withPredicate:0 context:managedObjectContext];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001B9D4;
    v30 = v29[3] = &unk_10007D568;
    v31 = managedObjectContext;
    v32 = handlerCopy;
    v13 = v30;
    [v31 performBlockAndWait:v29];

    v14 = v30;
  }

  else
  {
    v15 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:requestCopy];
    persistentContainer2 = [(SHMediaLibraryDataStore *)self persistentContainer];
    persistentStoreCoordinator = [persistentContainer2 persistentStoreCoordinator];

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
    v14 = persistentStoreCoordinator;
    v19 = v14;
    v13 = v15;
    v20 = v13;
    v21 = managedObjectContext;
    v22 = &v23;
    [v21 performBlockAndWait:v18];
    (*(handlerCopy + 2))(handlerCopy, v24[5]);

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

- (BOOL)commitChangesWithError:(id *)error
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
  if (error && (v15[3] & 1) == 0)
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

    *error = [NSError errorWithDomain:SHErrorDomain code:400 userInfo:v7];

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

- (id)fetchObjectsForRequest:(id)request withPredicate:(id)predicate context:(id)context
{
  requestCopy = request;
  predicateCopy = predicate;
  contextCopy = context;
  if (predicateCopy)
  {
    [requestCopy setPredicate:predicateCopy];
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
  v10 = contextCopy;
  v16 = v10;
  v11 = requestCopy;
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

- (id)createMetadataWithData:(id)data track:(id)track group:(id)group context:(id)context
{
  contextCopy = context;
  groupCopy = group;
  trackCopy = track;
  dataCopy = data;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSEntityDescription insertNewObjectForEntityForName:v14 inManagedObjectContext:contextCopy];

  [v15 setData:dataCopy];
  [v15 setTrack:trackCopy];

  [v15 setGroup:groupCopy];

  return v15;
}

- (void)associateTrack:(id)track toGroupWithIdentifier:(id)identifier context:(id)context
{
  trackCopy = track;
  identifierCopy = identifier;
  contextCopy = context;
  v11 = NSStringFromSelector("syncID");
  identifierCopy = [NSPredicate predicateWithFormat:@"%K == %@", v11, identifierCopy];

  v13 = +[SHGroupMO fetchRequest];
  v14 = [(SHMediaLibraryDataStore *)self fetchObjectsForRequest:v13 withPredicate:identifierCopy context:contextCopy];
  firstObject = [v14 firstObject];

  if (firstObject)
  {
    [trackCopy setGroup:firstObject];
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
    v19 = [NSEntityDescription insertNewObjectForEntityForName:v18 inManagedObjectContext:contextCopy];

    [v19 setSyncID:identifierCopy];
    [trackCopy setGroup:v19];
  }
}

- (void)updateManagedTrack:(id)track withUpdatedTrack:(id)updatedTrack
{
  trackCopy = track;
  updatedTrackCopy = updatedTrack;
  identifier = [updatedTrackCopy identifier];
  [trackCopy setSyncID:identifier];

  creationDate = [updatedTrackCopy creationDate];
  [trackCopy setDate:creationDate];

  [updatedTrackCopy locationCoordinate];
  [trackCopy setLatitude:?];
  [updatedTrackCopy locationCoordinate];
  [trackCopy setLongitude:v9];
  if ([updatedTrackCopy explicitContent])
  {
    [trackCopy setExplicit:{objc_msgSend(updatedTrackCopy, "explicitContent")}];
  }

  if ([updatedTrackCopy shazamCount])
  {
    [trackCopy setShazamCount:{objc_msgSend(updatedTrackCopy, "shazamCount")}];
  }

  shazamKey = [updatedTrackCopy shazamKey];

  if (shazamKey)
  {
    shazamKey2 = [updatedTrackCopy shazamKey];
    validatedKey = [shazamKey2 validatedKey];
    [trackCopy setShazamKey:validatedKey];
  }

  recognitionIdentifier = [updatedTrackCopy recognitionIdentifier];

  if (recognitionIdentifier)
  {
    recognitionIdentifier2 = [updatedTrackCopy recognitionIdentifier];
    [trackCopy setRecognitionID:recognitionIdentifier2];
  }

  title = [updatedTrackCopy title];

  if (title)
  {
    title2 = [updatedTrackCopy title];
    [trackCopy setTitle:title2];
  }

  subtitle = [updatedTrackCopy subtitle];

  if (subtitle)
  {
    subtitle2 = [updatedTrackCopy subtitle];
    [trackCopy setSubtitle:subtitle2];
  }

  providerIdentifier = [updatedTrackCopy providerIdentifier];

  if (providerIdentifier)
  {
    providerIdentifier2 = [updatedTrackCopy providerIdentifier];
    [trackCopy setProviderID:providerIdentifier2];
  }

  providerName = [updatedTrackCopy providerName];

  if (providerName)
  {
    providerName2 = [updatedTrackCopy providerName];
    [trackCopy setProviderName:providerName2];
  }

  artworkURL = [updatedTrackCopy artworkURL];

  if (artworkURL)
  {
    artworkURL2 = [updatedTrackCopy artworkURL];
    [trackCopy setArtworkURL:artworkURL2];
  }

  shazamURL = [updatedTrackCopy shazamURL];

  if (shazamURL)
  {
    shazamURL2 = [updatedTrackCopy shazamURL];
    [trackCopy setShazamURL:shazamURL2];
  }

  albumName = [updatedTrackCopy albumName];

  if (albumName)
  {
    albumName2 = [updatedTrackCopy albumName];
    [trackCopy setAlbumName:albumName2];
  }

  appleMusicID = [updatedTrackCopy appleMusicID];

  if (appleMusicID)
  {
    appleMusicID2 = [updatedTrackCopy appleMusicID];
    [trackCopy setAppleMusicID:appleMusicID2];
  }

  appleMusicURL = [updatedTrackCopy appleMusicURL];

  if (appleMusicURL)
  {
    appleMusicURL2 = [updatedTrackCopy appleMusicURL];
    [trackCopy setAppleMusicURL:appleMusicURL2];
  }

  genres = [updatedTrackCopy genres];

  if (genres)
  {
    genres2 = [updatedTrackCopy genres];
    [trackCopy setGenres:genres2];
  }

  isrc = [updatedTrackCopy isrc];

  if (isrc)
  {
    isrc2 = [updatedTrackCopy isrc];
    [trackCopy setIsrc:isrc2];
  }

  rawSongResponse = [updatedTrackCopy rawSongResponse];

  if (rawSongResponse)
  {
    v52 = @"SHMediaLibraryDataStoreRawResponseSongsData";
    rawSongResponse2 = [updatedTrackCopy rawSongResponse];
    v53 = rawSongResponse2;
    v39 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    [trackCopy setRawSongResponse:v39];
  }

  releaseDate = [updatedTrackCopy releaseDate];

  if (releaseDate)
  {
    releaseDate2 = [updatedTrackCopy releaseDate];
    [trackCopy setReleaseDate:releaseDate2];
  }

  videoURL = [updatedTrackCopy videoURL];

  if (videoURL)
  {
    videoURL2 = [updatedTrackCopy videoURL];
    [trackCopy setVideoURL:videoURL2];
  }

  lastUpdatedDate = [updatedTrackCopy lastUpdatedDate];

  if (lastUpdatedDate)
  {
    lastUpdatedDate2 = [updatedTrackCopy lastUpdatedDate];
    [trackCopy setModifiedDate:lastUpdatedDate2];
  }

  v46 = NSStringFromSelector("name");
  v47 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v46];

  labels = [updatedTrackCopy labels];
  v49 = [labels valueForKeyPath:v47];
  allObjects = [v49 allObjects];

  v51 = [allObjects copy];
  [trackCopy setLabels:v51];
}

- (void)observeDatabaseChangesWithContext:(id)context
{
  contextCopy = context;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"managedObjectsDidChange:" name:NSManagedObjectContextObjectsDidChangeNotification object:contextCopy];
}

- (void)managedObjectsDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:NSInsertedObjectsKey];
  if (v6 || ([userInfo objectForKeyedSubscript:NSUpdatedObjectsKey], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v12 = [userInfo objectForKeyedSubscript:NSDeletedObjectsKey];

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

  managedObjectContext = [(SHMediaLibraryDataStore *)self managedObjectContext];
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
  v17 = userInfo;
  selfCopy = self;
  v9 = managedObjectContext;
  v19 = v9;
  v20 = buf;
  [v9 performBlockAndWait:&v13];
  v10 = [(SHMediaLibraryDataStore *)self delegate:v13];
  v11 = [*(v22 + 5) copy];
  [v10 libraryDataStore:self didUpdateWithChanges:v11];

  _Block_object_dispose(buf, 8);
LABEL_7:
}

- (id)libraryChangesFromManagedObjects:(id)objects usingContext:(id)context changeType:(int64_t)type
{
  objectsCopy = objects;
  contextCopy = context;
  v39 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [objectsCopy count]);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [NSEntityDescription entityForName:v9 inManagedObjectContext:contextCopy];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v36 = contextCopy;
  v13 = [NSEntityDescription entityForName:v12 inManagedObjectContext:contextCopy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = objectsCopy;
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
        entity = [v19 entity];
        v21 = [entity isKindOfEntity:v10];

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
          entity2 = [v19 entity];
          v24 = [entity2 isKindOfEntity:v13];

          if (v24)
          {
            v25 = v19;
            v26 = [SHMediaLibraryGroup alloc];
            metadata = [v25 metadata];
            data = [metadata data];
            [v25 syncID];
            v29 = v10;
            v30 = v14;
            v32 = v31 = v13;

            v22 = [v26 initWithGroupMetadata:data groupSyncID:v32];
            v13 = v31;
            v14 = v30;
            v10 = v29;

            v17 = v37;
            if (v22)
            {
LABEL_11:
              v33 = [[SHMediaLibraryChange alloc] initWithLibraryItem:v22 changeType:type];
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

- (id)createWithManagedTrack:(id)track excludeCloudMetadata:(BOOL)metadata
{
  trackCopy = track;
  v29 = [SHMediaLibraryTrack alloc];
  syncID = [trackCopy syncID];
  date = [trackCopy date];
  releaseDate = [trackCopy releaseDate];
  group = [trackCopy group];
  syncID2 = [group syncID];
  labels = [trackCopy labels];
  modifiedDate = [trackCopy modifiedDate];
  providerID = [trackCopy providerID];
  v39 = date;
  v40 = syncID;
  if (metadata)
  {
    data = 0;
  }

  else
  {
    metadata = [trackCopy metadata];
    data = [metadata data];
  }

  providerName = [trackCopy providerName];
  shazamKey = [trackCopy shazamKey];
  recognitionID = [trackCopy recognitionID];
  title = [trackCopy title];
  subtitle = [trackCopy subtitle];
  artworkURL = [trackCopy artworkURL];
  appleMusicID = [trackCopy appleMusicID];
  appleMusicURL = [trackCopy appleMusicURL];
  shazamURL = [trackCopy shazamURL];
  videoURL = [trackCopy videoURL];
  explicit = [trackCopy explicit];
  albumName = [trackCopy albumName];
  isrc = [trackCopy isrc];
  shazamCount = [trackCopy shazamCount];
  [trackCopy latitude];
  v14 = v13;
  [trackCopy longitude];
  v16 = CLLocationCoordinate2DMake(v14, v15);
  genres = [trackCopy genres];
  LOBYTE(v19) = explicit;
  v30 = [v29 initWithTrackSyncID:v40 creationDate:v39 releaseDate:releaseDate groupSyncID:syncID2 labels:labels lastUpdatedDate:modifiedDate providerIdentifier:v16.latitude trackMetadata:v16.longitude providerName:providerID shazamKey:data recognitionID:providerName title:shazamKey subtitle:recognitionID artworkURL:title appleMusicID:subtitle appleMusicURL:artworkURL shazamURL:appleMusicID videoURL:appleMusicURL isExplicit:shazamURL albumName:videoURL isrc:v19 shazamCount:albumName locationCoordinate:isrc genres:shazamCount rawSongResponse:{genres, 0}];

  if (!metadata)
  {
  }

  return v30;
}

- (id)dataFromManagedObjectRawResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy && [dictionaryCopy count])
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
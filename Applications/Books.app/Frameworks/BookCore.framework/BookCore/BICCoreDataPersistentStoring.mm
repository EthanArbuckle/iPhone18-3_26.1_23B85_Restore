@interface BICCoreDataPersistentStoring
+ (id)_predicateForImageEntriesMatchingAddedEntries:(id)entries;
+ (id)_predicateForToBeDeletedImageEntriesInLevelID:(signed __int16)d;
- (BICCoreDataPersistentStoring)initWithURL:(id)l;
- (id)addNewImageEntryToSet:(id)set;
- (id)addNewImageSetWithIdentifier:(id)identifier;
- (id)fetchAllImageSets;
- (id)fetchImageEntriesMatchingAddedEntries:(id)entries;
- (id)fetchImageEntriesWithLocations:(id)locations;
- (id)fetchImageSetsWithDescribedImages:(id)images;
- (id)fetchImageSetsWithIDs:(id)ds;
- (id)fetchToBeDeletedImageEntriesInLevelID:(signed __int16)d;
- (id)imageSetForIdentifier:(id)identifier;
- (void)_commonInit;
- (void)clean:(id)clean;
- (void)deleteObject:(id)object;
- (void)performBlock:(id)block;
- (void)performBlockAndWait:(id)wait;
- (void)processPendingChanges;
- (void)removeImageSets:(id)sets;
- (void)saveIfNeeded;
@end

@implementation BICCoreDataPersistentStoring

+ (id)_predicateForToBeDeletedImageEntriesInLevelID:(signed __int16)d
{
  v3 = [NSNumber numberWithShort:d];
  v4 = [NSPredicate predicateWithFormat:@"state = %@ AND level = %@", &off_2E5A80, v3];

  return v4;
}

+ (id)_predicateForImageEntriesMatchingAddedEntries:(id)entries
{
  v3 = [entries valueForKey:@"entryLocation"];
  v4 = [NSPredicate predicateWithFormat:@"entryLocation IN %@", v3];

  return v4;
}

- (BICCoreDataPersistentStoring)initWithURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = BICCoreDataPersistentStoring;
  v6 = [(BICCoreDataPersistentStoring *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v8 = [BUCoalescingCallBlock alloc];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_C0BD4;
    v13[3] = &unk_2C7B08;
    v9 = v7;
    v14 = v9;
    v10 = [v8 initWithNotifyBlock:v13 blockDescription:@"CoreData Saves"];
    v11 = v9[5];
    v9[5] = v10;

    [v9[5] setCoalescingDelay:5.0];
  }

  return v7;
}

- (void)_commonInit
{
  onceToken = self->_onceToken;
  p_onceToken = &self->_onceToken;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C0E10;
  block[3] = &unk_2C7D40;
  block[4] = self;
  if (onceToken != -1)
  {
    dispatch_once(p_onceToken, block);
  }
}

- (id)imageSetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  v5 = +[BICCoreDataPersistentStoring _imageSetFetchRequest];
  [v5 setIncludesPendingChanges:1];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = [BICCoreDataPersistentStoring _predicateForImageSetWithID:identifierCopy];
  [v5 setPredicate:v6];

  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  v14 = 0;
  v8 = [backgroundContext executeFetchRequest:v5 error:&v14];
  v9 = v14;

  if ([v8 count] >= 2)
  {
    v10 = BCImageCacheLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E92E0();
    }
  }

  if (v9)
  {
    v11 = BCImageCacheLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1E9348();
    }
  }

  if ([v8 count])
  {
    v12 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)addNewImageSetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  v5 = [BICImageSet alloc];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  v7 = [(BICImageSet *)v5 initWithContext:backgroundContext];

  [(BICImageSet *)v7 setIdentifier:identifierCopy];

  return v7;
}

- (id)addNewImageEntryToSet:(id)set
{
  setCopy = set;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  v5 = [BICImageEntry alloc];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  v7 = [(BICImageEntry *)v5 initWithContext:backgroundContext];

  [(BICImageEntry *)v7 setImageSet:setCopy];

  return v7;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  [backgroundContext performBlock:blockCopy];
}

- (void)performBlockAndWait:(id)wait
{
  waitCopy = wait;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  [backgroundContext performBlockAndWait:waitCopy];
}

- (void)deleteObject:(id)object
{
  objectCopy = object;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  [backgroundContext deleteObject:objectCopy];
}

- (void)processPendingChanges
{
  [(BICCoreDataPersistentStoring *)self _commonInit];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  [backgroundContext processPendingChanges];
}

- (void)saveIfNeeded
{
  [(BICCoreDataPersistentStoring *)self _commonInit];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  hasChanges = [backgroundContext hasChanges];

  if (hasChanges)
  {
    coalescingSaves = [(BICCoreDataPersistentStoring *)self coalescingSaves];
    [coalescingSaves signalWithCompletion:&stru_2CC9B0];
  }
}

- (id)fetchAllImageSets
{
  [(BICCoreDataPersistentStoring *)self _commonInit];
  v3 = +[BICCoreDataPersistentStoring _imageSetFetchRequest];
  [v3 setIncludesPendingChanges:1];
  [v3 setReturnsObjectsAsFaults:0];
  [v3 setFetchBatchSize:64];
  v4 = [NSPredicate predicateWithValue:1];
  [v3 setPredicate:v4];

  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  v10 = 0;
  v6 = [backgroundContext executeFetchRequest:v3 error:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = BCImageCacheLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1E93B0();
    }
  }

  return v6;
}

- (id)fetchImageSetsWithIDs:(id)ds
{
  dsCopy = ds;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  v5 = +[BICCoreDataPersistentStoring _imageSetFetchRequest];
  [v5 setIncludesPendingChanges:1];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setFetchBatchSize:{32 * (objc_msgSend(dsCopy, "count") > 0x40)}];
  v6 = [BICCoreDataPersistentStoring _predicateForImageSetsWithIDs:dsCopy];

  [v5 setPredicate:v6];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  v12 = 0;
  v8 = [backgroundContext executeFetchRequest:v5 error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = BCImageCacheLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E9418();
    }
  }

  return v8;
}

- (id)fetchImageSetsWithDescribedImages:(id)images
{
  v4 = [images valueForKey:@"identifier"];
  v5 = [(BICCoreDataPersistentStoring *)self fetchImageSetsWithIDs:v4];

  return v5;
}

- (void)removeImageSets:(id)sets
{
  setsCopy = sets;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C190C;
  v7[3] = &unk_2C7BE8;
  v8 = setsCopy;
  selfCopy = self;
  v6 = setsCopy;
  [backgroundContext performBlock:v7];
}

- (id)fetchToBeDeletedImageEntriesInLevelID:(signed __int16)d
{
  dCopy = d;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  v5 = +[BICCoreDataPersistentStoring _imageEntryFetchRequest];
  [v5 setIncludesPendingChanges:1];
  v6 = [BICCoreDataPersistentStoring _predicateForToBeDeletedImageEntriesInLevelID:dCopy];
  [v5 setPredicate:v6];

  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  v12 = 0;
  v8 = [backgroundContext executeFetchRequest:v5 error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = BCImageCacheLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E94E8();
    }
  }

  return v8;
}

- (id)fetchImageEntriesMatchingAddedEntries:(id)entries
{
  entriesCopy = entries;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  v5 = +[BICCoreDataPersistentStoring _imageEntryFetchRequest];
  [v5 setIncludesPendingChanges:1];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setFetchBatchSize:32];
  v6 = [BICCoreDataPersistentStoring _predicateForImageEntriesMatchingAddedEntries:entriesCopy];

  [v5 setPredicate:v6];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  v12 = 0;
  v8 = [backgroundContext executeFetchRequest:v5 error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = BCImageCacheLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E9550();
    }
  }

  return v8;
}

- (id)fetchImageEntriesWithLocations:(id)locations
{
  locationsCopy = locations;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  v5 = +[BICCoreDataPersistentStoring _imageEntryFetchRequest];
  [v5 setIncludesPendingChanges:1];
  [v5 setReturnsObjectsAsFaults:0];
  locationsCopy = [NSPredicate predicateWithFormat:@"entryLocation in %@", locationsCopy];

  [v5 setPredicate:locationsCopy];
  backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
  v12 = 0;
  v8 = [backgroundContext executeFetchRequest:v5 error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = BCImageCacheLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E95B8();
    }
  }

  return v8;
}

- (void)clean:(id)clean
{
  cleanCopy = clean;
  [(BICCoreDataPersistentStoring *)self _commonInit];
  v5 = [(BICCoreDataPersistentStoring *)self url];

  if (v5)
  {
    v6 = +[BICCoreDataPersistentStoring _imageSetFetchRequest];
    [v6 setIncludesPendingChanges:1];
    v7 = [NSPredicate predicateWithValue:1];
    [v6 setPredicate:v7];

    v8 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v6];
    backgroundContext = [(BICCoreDataPersistentStoring *)self backgroundContext];
    v10 = [backgroundContext executeRequest:v8 error:0];

    v11 = objc_retainBlock(cleanCopy);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11);
    }
  }

  else
  {
    backgroundContext2 = [(BICCoreDataPersistentStoring *)self backgroundContext];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_C1FA0;
    v14[3] = &unk_2C8488;
    v14[4] = self;
    v15 = cleanCopy;
    [backgroundContext2 performBlock:v14];
  }
}

@end
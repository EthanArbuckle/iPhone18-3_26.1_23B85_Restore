@interface RAPStorage
- (BOOL)_removeItemWithIdentifier:(id)identifier triggeringGarbageCollection:(BOOL)collection error:(id *)error;
- (BOOL)containsItems;
- (RAPStorage)init;
- (RAPStorage)initWithStorageDirectoryURL:(id)l pathExtension:(id)extension;
- (id)_allItemIdentifiersByCreationDateSortedAscending:(BOOL)ascending dates:(id *)dates;
- (id)_itemURLForIdentifier:(id)identifier;
- (id)creationDateForItemWithIdentifier:(id)identifier error:(id *)error;
- (id)dataForItemWithIdentifier:(id)identifier error:(id *)error;
- (id)initByUsingOrCreatingStorageDirectoryAtURL:(id)l error:(id *)error;
- (void)_iterateAllItemIdentifiersIncludingURLPropertiesForKeys:(id)keys usingBlock:(id)block;
- (void)_iterateAllItemIdentifiersUsingBlock:(id)block;
- (void)garbageCollectIfNeeded;
- (void)removeAllItems;
- (void)removeItemsPassingTest:(id)test;
- (void)saveItemWithData:(id)data forIdentifier:(id)identifier completion:(id)completion;
- (void)setItemTimeToLive:(double)live;
@end

@implementation RAPStorage

- (void)setItemTimeToLive:(double)live
{
  if (self->_itemTimeToLive != live)
  {
    self->_itemTimeToLive = live;
    [(RAPStorage *)self garbageCollectIfNeeded];
  }
}

- (void)garbageCollectIfNeeded
{
  [(RAPStorage *)self itemTimeToLive];
  if (v3 != 1.79769313e308)
  {
    v4 = [NSDate dateWithTimeIntervalSinceNow:-v3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = 0;
    v5 = [(RAPStorage *)self _allItemIdentifiersByCreationDateSortedAscending:1 dates:&v14];
    v6 = v14;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v6 objectAtIndexedSubscript:v9];
          if ([v13 compare:v4] == -1)
          {
            [(RAPStorage *)self _removeItemWithIdentifier:v12 triggeringGarbageCollection:0 error:0];
          }

          ++v9;
        }

        v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

- (id)creationDateForItemWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  [(RAPStorage *)self garbageCollectIfNeeded];
  v7 = [(RAPStorage *)self _itemURLForIdentifier:identifierCopy];

  v13 = 0;
  v8 = [v7 getResourceValue:&v13 forKey:NSURLCreationDateKey error:error];
  v9 = v13;
  v10 = v9;
  v11 = 0;
  if (v8)
  {
    v11 = v9;
  }

  return v11;
}

- (BOOL)containsItems
{
  selfCopy = self;
  [(RAPStorage *)self garbageCollectIfNeeded];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10073558C;
  v4[3] = &unk_101627CE0;
  v4[4] = &v5;
  [(RAPStorage *)selfCopy _iterateAllItemIdentifiersUsingBlock:v4];
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

- (id)_allItemIdentifiersByCreationDateSortedAscending:(BOOL)ascending dates:(id *)dates
{
  ascendingCopy = ascending;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = objc_alloc_init(NSMutableDictionary);
  v25 = NSURLCreationDateKey;
  v9 = [NSArray arrayWithObjects:&v25 count:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10073580C;
  v21[3] = &unk_101627C68;
  v10 = v7;
  v22 = v10;
  v11 = v8;
  v23 = v11;
  [(RAPStorage *)self _iterateAllItemIdentifiersIncludingURLPropertiesForKeys:v9 usingBlock:v21];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1007358A0;
  v19[3] = &unk_101627C90;
  v12 = v11;
  v20 = v12;
  v13 = [NSSortDescriptor sortDescriptorWithKey:0 ascending:ascendingCopy comparator:v19];
  v24 = v13;
  v14 = [NSArray arrayWithObjects:&v24 count:1];
  [v10 sortUsingDescriptors:v14];

  if (dates)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100735920;
    v17[3] = &unk_101627CB8;
    v18 = v12;
    *dates = sub_100021DB0(v10, v17);
  }

  v15 = v10;

  return v10;
}

- (void)removeAllItems
{
  [(RAPStorage *)self garbageCollectIfNeeded];

  [(RAPStorage *)self removeItemsPassingTest:&stru_101627C40];
}

- (void)removeItemsPassingTest:(id)test
{
  testCopy = test;
  [(RAPStorage *)self garbageCollectIfNeeded];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100735A20;
  v6[3] = &unk_101627C00;
  v6[4] = self;
  v7 = testCopy;
  v5 = testCopy;
  [(RAPStorage *)self _iterateAllItemIdentifiersUsingBlock:v6];
}

- (void)_iterateAllItemIdentifiersIncludingURLPropertiesForKeys:(id)keys usingBlock:(id)block
{
  keysCopy = keys;
  blockCopy = block;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = +[NSFileManager defaultManager];
  v20 = keysCopy;
  v9 = [v8 contentsOfDirectoryAtURL:self->_directoryURL includingPropertiesForKeys:keysCopy options:0 error:0];

  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  v12 = *v23;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v22 + 1) + 8 * i);
      if (self->_pathExtension)
      {
        pathExtension = [*(*(&v22 + 1) + 8 * i) pathExtension];
        v16 = [pathExtension isEqual:self->_pathExtension];

        if (!v16)
        {
          continue;
        }

        lastPathComponent = [v14 lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      }

      else
      {
        stringByDeletingPathExtension = [*(*(&v22 + 1) + 8 * i) lastPathComponent];
      }

      v19 = [NSUUID _maps_UUIDWithUUIDString:stringByDeletingPathExtension];
      if (v19)
      {
        v21 = 0;
        blockCopy[2](blockCopy, v19, v14, &v21);
        if (v21)
        {

          goto LABEL_17;
        }
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_17:
}

- (void)_iterateAllItemIdentifiersUsingBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100735D2C;
  v5[3] = &unk_101627BD8;
  blockCopy = block;
  v4 = blockCopy;
  [(RAPStorage *)self _iterateAllItemIdentifiersIncludingURLPropertiesForKeys:&__NSArray0__struct usingBlock:v5];
}

- (BOOL)_removeItemWithIdentifier:(id)identifier triggeringGarbageCollection:(BOOL)collection error:(id *)error
{
  collectionCopy = collection;
  identifierCopy = identifier;
  if (collectionCopy)
  {
    [(RAPStorage *)self garbageCollectIfNeeded];
  }

  v9 = [(RAPStorage *)self _itemURLForIdentifier:identifierCopy];
  v10 = +[NSFileManager defaultManager];
  v11 = [v10 removeItemAtURL:v9 error:error];

  return v11;
}

- (id)dataForItemWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  [(RAPStorage *)self garbageCollectIfNeeded];
  v7 = [(RAPStorage *)self _itemURLForIdentifier:identifierCopy];

  v8 = [NSData dataWithContentsOfURL:v7 options:1 error:error];

  return v8;
}

- (void)saveItemWithData:(id)data forIdentifier:(id)identifier completion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(-32768, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100735F68;
  v15[3] = &unk_101660380;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = dataCopy;
  v18 = completionCopy;
  v12 = dataCopy;
  v13 = completionCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

- (id)_itemURLForIdentifier:(id)identifier
{
  directoryURL = self->_directoryURL;
  uUIDString = [identifier UUIDString];
  v6 = [(NSURL *)directoryURL URLByAppendingPathComponent:uUIDString];

  if (self->_pathExtension)
  {
    v7 = [v6 URLByAppendingPathExtension:?];

    v6 = v7;
  }

  return v6;
}

- (RAPStorage)initWithStorageDirectoryURL:(id)l pathExtension:(id)extension
{
  lCopy = l;
  extensionCopy = extension;
  v15.receiver = self;
  v15.super_class = RAPStorage;
  v8 = [(RAPStorage *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_itemTimeToLive = 1.79769313e308;
    v10 = [lCopy copy];
    directoryURL = v9->_directoryURL;
    v9->_directoryURL = v10;

    v12 = [extensionCopy copy];
    pathExtension = v9->_pathExtension;
    v9->_pathExtension = v12;
  }

  return v9;
}

- (id)initByUsingOrCreatingStorageDirectoryAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [(RAPStorage *)self initWithStorageDirectoryURL:lCopy];
  if (!v7 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:error], v8, v10 = 0, v9))
  {
    v10 = v7;
  }

  return v10;
}

- (RAPStorage)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end
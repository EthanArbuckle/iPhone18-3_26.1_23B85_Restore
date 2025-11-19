@interface RAPStorage
- (BOOL)_removeItemWithIdentifier:(id)a3 triggeringGarbageCollection:(BOOL)a4 error:(id *)a5;
- (BOOL)containsItems;
- (RAPStorage)init;
- (RAPStorage)initWithStorageDirectoryURL:(id)a3 pathExtension:(id)a4;
- (id)_allItemIdentifiersByCreationDateSortedAscending:(BOOL)a3 dates:(id *)a4;
- (id)_itemURLForIdentifier:(id)a3;
- (id)creationDateForItemWithIdentifier:(id)a3 error:(id *)a4;
- (id)dataForItemWithIdentifier:(id)a3 error:(id *)a4;
- (id)initByUsingOrCreatingStorageDirectoryAtURL:(id)a3 error:(id *)a4;
- (void)_iterateAllItemIdentifiersIncludingURLPropertiesForKeys:(id)a3 usingBlock:(id)a4;
- (void)_iterateAllItemIdentifiersUsingBlock:(id)a3;
- (void)garbageCollectIfNeeded;
- (void)removeAllItems;
- (void)removeItemsPassingTest:(id)a3;
- (void)saveItemWithData:(id)a3 forIdentifier:(id)a4 completion:(id)a5;
- (void)setItemTimeToLive:(double)a3;
@end

@implementation RAPStorage

- (void)setItemTimeToLive:(double)a3
{
  if (self->_itemTimeToLive != a3)
  {
    self->_itemTimeToLive = a3;
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

- (id)creationDateForItemWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(RAPStorage *)self garbageCollectIfNeeded];
  v7 = [(RAPStorage *)self _itemURLForIdentifier:v6];

  v13 = 0;
  v8 = [v7 getResourceValue:&v13 forKey:NSURLCreationDateKey error:a4];
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
  v2 = self;
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
  [(RAPStorage *)v2 _iterateAllItemIdentifiersUsingBlock:v4];
  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)_allItemIdentifiersByCreationDateSortedAscending:(BOOL)a3 dates:(id *)a4
{
  v5 = a3;
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
  v13 = [NSSortDescriptor sortDescriptorWithKey:0 ascending:v5 comparator:v19];
  v24 = v13;
  v14 = [NSArray arrayWithObjects:&v24 count:1];
  [v10 sortUsingDescriptors:v14];

  if (a4)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100735920;
    v17[3] = &unk_101627CB8;
    v18 = v12;
    *a4 = sub_100021DB0(v10, v17);
  }

  v15 = v10;

  return v10;
}

- (void)removeAllItems
{
  [(RAPStorage *)self garbageCollectIfNeeded];

  [(RAPStorage *)self removeItemsPassingTest:&stru_101627C40];
}

- (void)removeItemsPassingTest:(id)a3
{
  v4 = a3;
  [(RAPStorage *)self garbageCollectIfNeeded];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100735A20;
  v6[3] = &unk_101627C00;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(RAPStorage *)self _iterateAllItemIdentifiersUsingBlock:v6];
}

- (void)_iterateAllItemIdentifiersIncludingURLPropertiesForKeys:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = +[NSFileManager defaultManager];
  v20 = v6;
  v9 = [v8 contentsOfDirectoryAtURL:self->_directoryURL includingPropertiesForKeys:v6 options:0 error:0];

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
        v15 = [*(*(&v22 + 1) + 8 * i) pathExtension];
        v16 = [v15 isEqual:self->_pathExtension];

        if (!v16)
        {
          continue;
        }

        v17 = [v14 lastPathComponent];
        v18 = [v17 stringByDeletingPathExtension];
      }

      else
      {
        v18 = [*(*(&v22 + 1) + 8 * i) lastPathComponent];
      }

      v19 = [NSUUID _maps_UUIDWithUUIDString:v18];
      if (v19)
      {
        v21 = 0;
        v7[2](v7, v19, v14, &v21);
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

- (void)_iterateAllItemIdentifiersUsingBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100735D2C;
  v5[3] = &unk_101627BD8;
  v6 = a3;
  v4 = v6;
  [(RAPStorage *)self _iterateAllItemIdentifiersIncludingURLPropertiesForKeys:&__NSArray0__struct usingBlock:v5];
}

- (BOOL)_removeItemWithIdentifier:(id)a3 triggeringGarbageCollection:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    [(RAPStorage *)self garbageCollectIfNeeded];
  }

  v9 = [(RAPStorage *)self _itemURLForIdentifier:v8];
  v10 = +[NSFileManager defaultManager];
  v11 = [v10 removeItemAtURL:v9 error:a5];

  return v11;
}

- (id)dataForItemWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(RAPStorage *)self garbageCollectIfNeeded];
  v7 = [(RAPStorage *)self _itemURLForIdentifier:v6];

  v8 = [NSData dataWithContentsOfURL:v7 options:1 error:a4];

  return v8;
}

- (void)saveItemWithData:(id)a3 forIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(-32768, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100735F68;
  v15[3] = &unk_101660380;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (id)_itemURLForIdentifier:(id)a3
{
  directoryURL = self->_directoryURL;
  v5 = [a3 UUIDString];
  v6 = [(NSURL *)directoryURL URLByAppendingPathComponent:v5];

  if (self->_pathExtension)
  {
    v7 = [v6 URLByAppendingPathExtension:?];

    v6 = v7;
  }

  return v6;
}

- (RAPStorage)initWithStorageDirectoryURL:(id)a3 pathExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = RAPStorage;
  v8 = [(RAPStorage *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_itemTimeToLive = 1.79769313e308;
    v10 = [v6 copy];
    directoryURL = v9->_directoryURL;
    v9->_directoryURL = v10;

    v12 = [v7 copy];
    pathExtension = v9->_pathExtension;
    v9->_pathExtension = v12;
  }

  return v9;
}

- (id)initByUsingOrCreatingStorageDirectoryAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(RAPStorage *)self initWithStorageDirectoryURL:v6];
  if (!v7 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:a4], v8, v10 = 0, v9))
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
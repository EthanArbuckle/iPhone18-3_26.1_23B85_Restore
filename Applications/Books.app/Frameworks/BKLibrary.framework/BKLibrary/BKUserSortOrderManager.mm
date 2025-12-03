@interface BKUserSortOrderManager
+ (BOOL)resortAscendingSortKeyedObjects:(id)objects;
+ (BOOL)resortDescendingSortKeyedObjects:(id)objects;
+ (id)nextSortKeyForCollection:(id)collection;
+ (void)resetDescendingSortKeyedObjects:(id)objects;
+ (void)saveSortedBooksArray:(id)array inCollection:(id)collection inLibrary:(id)library;
+ (void)saveSortedCollectionsArray:(id)array inLibraryManager:(id)manager;
@end

@implementation BKUserSortOrderManager

+ (id)nextSortKeyForCollection:(id)collection
{
  maxSortKey = [collection maxSortKey];
  v4 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(maxSortKey, "longLongValue") + 10000}];

  return v4;
}

+ (void)saveSortedBooksArray:(id)array inCollection:(id)collection inLibrary:(id)library
{
  arrayCopy = array;
  collectionCopy = collection;
  libraryCopy = library;
  if (!+[NSThread isMainThread])
  {
    sub_90DFC();
  }

  v24 = collectionCopy;
  collectionCopy = [NSPredicate predicateWithFormat:@"collection == %@", collectionCopy];
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [arrayCopy count]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = arrayCopy;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        collectionMembers = [*(*(&v25 + 1) + 8 * v16) collectionMembers];
        v18 = [collectionMembers filteredSetUsingPredicate:collectionCopy];
        anyObject = [v18 anyObject];

        if (anyObject)
        {
          [v11 addObject:anyObject];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  if ([BKUserSortOrderManager resortDescendingSortKeyedObjects:v11])
  {
    uiChildContext = [libraryCopy uiChildContext];
    hasChanges = [uiChildContext hasChanges];

    if (hasChanges)
    {
      uiChildContext2 = [libraryCopy uiChildContext];
      [uiChildContext2 setSaveContext:2];

      uiChildContext3 = [libraryCopy uiChildContext];
      [uiChildContext3 save:0];
    }
  }
}

+ (void)saveSortedCollectionsArray:(id)array inLibraryManager:(id)manager
{
  managerCopy = manager;
  [array valueForKey:@"collectionID"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_50CB4;
  v8[3] = &unk_D58E0;
  v10 = v9 = managerCopy;
  v6 = v10;
  v7 = managerCopy;
  [v7 performNamed:@"saveSortedCollectionsArray" workerQueueBlock:v8];
}

+ (BOOL)resortAscendingSortKeyedObjects:(id)objects
{
  reverseObjectEnumerator = [objects reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  LOBYTE(reverseObjectEnumerator) = [BKUserSortOrderManager resortDescendingSortKeyedObjects:allObjects];
  return reverseObjectEnumerator;
}

+ (void)resetDescendingSortKeyedObjects:(id)objects
{
  objectsCopy = objects;
  v4 = [objectsCopy count];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = objectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 10000 * v4;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [NSNumber alloc];
        v13 = [v12 initWithLongLong:{v8, v14}];
        [v11 setValue:v13 forKey:@"sortKey"];
        v8 -= 10000;

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

+ (BOOL)resortDescendingSortKeyedObjects:(id)objects
{
  objectsCopy = objects;
  v4 = [objectsCopy count];
  if (v4 >= 1)
  {
    v43 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    v44 = objectsCopy;
    v45 = v4;
    v9 = v4;
    v10 = 1;
    while (1)
    {
      v11 = v5;
      v5 = v6;

      v6 = v7;
      v7 = [objectsCopy objectAtIndex:v8 - 1];

      if (v6)
      {
        if (v5 && v7)
        {
          v12 = [v6 valueForKey:@"sortKey"];
          longLongValue = [v12 longLongValue];
          v14 = [v7 valueForKey:@"sortKey"];
          longLongValue2 = [v14 longLongValue];

          if (longLongValue <= longLongValue2)
          {
            v24 = [v5 valueForKey:@"sortKey"];
            longLongValue3 = [v24 longLongValue];
            v26 = [v7 valueForKey:@"sortKey"];
            longLongValue4 = [v26 longLongValue];
            v41 = longLongValue3;
            v28 = longLongValue3 - longLongValue4;

            if (v28 < 2)
            {
              objectsCopy = v44;
              if (v41 == longLongValue4 || v28 == 1)
              {
LABEL_26:

                v38 = v43;
                goto LABEL_28;
              }

              if (v9 == &dword_0 + 1)
              {
                v30 = [v6 valueForKey:@"sortKey"];
                longLongValue5 = [v30 longLongValue];

                if (longLongValue5 < 2)
                {
                  goto LABEL_26;
                }

                v22 = [NSNumber numberWithLongLong:longLongValue5 >> 1];
                [v7 setValue:v22 forKey:@"sortKey"];
              }

              else
              {
                if (v28 > -2)
                {
                  goto LABEL_26;
                }

                v42 = v28;
                v32 = -v28;
                v33 = [v5 valueForKey:@"sortKey"];
                longLongValue6 = [v33 longLongValue];

                if (longLongValue6 <= v32)
                {
                  goto LABEL_26;
                }

                v35 = [v5 valueForKey:@"sortKey"];
                v36 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v35 longLongValue] - (v32 >> 1));
                [v6 setValue:v36 forKey:@"sortKey"];

                v22 = [v5 valueForKey:@"sortKey"];
                v37 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v22 longLongValue] + v42);
                [v7 setValue:v37 forKey:@"sortKey"];
              }

              v21 = v45;
            }

            else
            {
              v22 = [v7 valueForKey:@"sortKey"];
              v29 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v22 longLongValue] + (v28 >> 1));
              [v6 setValue:v29 forKey:@"sortKey"];

              objectsCopy = v44;
              v21 = v45;
            }

LABEL_24:

            v43 = 1;
            goto LABEL_25;
          }

          objectsCopy = v44;
        }

        else if (v7)
        {
          v16 = [v6 valueForKey:@"sortKey"];
          longLongValue7 = [v16 longLongValue];
          v18 = [v7 valueForKey:@"sortKey"];
          longLongValue8 = [v18 longLongValue];

          v20 = longLongValue7 <= longLongValue8;
          objectsCopy = v44;
          v21 = v45;
          if (!v20)
          {
            goto LABEL_25;
          }

          v22 = [v7 valueForKey:@"sortKey"];
          v23 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v22 longLongValue] + 5000);
          [v6 setValue:v23 forKey:@"sortKey"];

          goto LABEL_24;
        }
      }

      v21 = v45;
LABEL_25:
      v10 = v8++ < v21;
      if (!--v9)
      {
        goto LABEL_26;
      }
    }
  }

  v38 = 0;
  v10 = 0;
LABEL_28:
  v39 = BKLibraryCollectionLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v47 = v38 & 1;
    v48 = 1024;
    v49 = v10;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "SortOrderManager - changes: %{BOOL}d, collision: %{BOOL}d", buf, 0xEu);
  }

  if (v10)
  {
    [BKUserSortOrderManager resetDescendingSortKeyedObjects:objectsCopy];
    v38 = 1;
  }

  return v38 & 1;
}

@end
@interface BKUserSortOrderManager
+ (BOOL)resortAscendingSortKeyedObjects:(id)a3;
+ (BOOL)resortDescendingSortKeyedObjects:(id)a3;
+ (id)nextSortKeyForCollection:(id)a3;
+ (void)resetDescendingSortKeyedObjects:(id)a3;
+ (void)saveSortedBooksArray:(id)a3 inCollection:(id)a4 inLibrary:(id)a5;
+ (void)saveSortedCollectionsArray:(id)a3 inLibraryManager:(id)a4;
@end

@implementation BKUserSortOrderManager

+ (id)nextSortKeyForCollection:(id)a3
{
  v3 = [a3 maxSortKey];
  v4 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v3, "longLongValue") + 10000}];

  return v4;
}

+ (void)saveSortedBooksArray:(id)a3 inCollection:(id)a4 inLibrary:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!+[NSThread isMainThread])
  {
    sub_90DFC();
  }

  v24 = v8;
  v10 = [NSPredicate predicateWithFormat:@"collection == %@", v8];
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v7;
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

        v17 = [*(*(&v25 + 1) + 8 * v16) collectionMembers];
        v18 = [v17 filteredSetUsingPredicate:v10];
        v19 = [v18 anyObject];

        if (v19)
        {
          [v11 addObject:v19];
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
    v20 = [v9 uiChildContext];
    v21 = [v20 hasChanges];

    if (v21)
    {
      v22 = [v9 uiChildContext];
      [v22 setSaveContext:2];

      v23 = [v9 uiChildContext];
      [v23 save:0];
    }
  }
}

+ (void)saveSortedCollectionsArray:(id)a3 inLibraryManager:(id)a4
{
  v5 = a4;
  [a3 valueForKey:@"collectionID"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_50CB4;
  v8[3] = &unk_D58E0;
  v10 = v9 = v5;
  v6 = v10;
  v7 = v5;
  [v7 performNamed:@"saveSortedCollectionsArray" workerQueueBlock:v8];
}

+ (BOOL)resortAscendingSortKeyedObjects:(id)a3
{
  v3 = [a3 reverseObjectEnumerator];
  v4 = [v3 allObjects];

  LOBYTE(v3) = [BKUserSortOrderManager resortDescendingSortKeyedObjects:v4];
  return v3;
}

+ (void)resetDescendingSortKeyedObjects:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

+ (BOOL)resortDescendingSortKeyedObjects:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 >= 1)
  {
    v43 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    v44 = v3;
    v45 = v4;
    v9 = v4;
    v10 = 1;
    while (1)
    {
      v11 = v5;
      v5 = v6;

      v6 = v7;
      v7 = [v3 objectAtIndex:v8 - 1];

      if (v6)
      {
        if (v5 && v7)
        {
          v12 = [v6 valueForKey:@"sortKey"];
          v13 = [v12 longLongValue];
          v14 = [v7 valueForKey:@"sortKey"];
          v15 = [v14 longLongValue];

          if (v13 <= v15)
          {
            v24 = [v5 valueForKey:@"sortKey"];
            v25 = [v24 longLongValue];
            v26 = [v7 valueForKey:@"sortKey"];
            v27 = [v26 longLongValue];
            v41 = v25;
            v28 = v25 - v27;

            if (v28 < 2)
            {
              v3 = v44;
              if (v41 == v27 || v28 == 1)
              {
LABEL_26:

                v38 = v43;
                goto LABEL_28;
              }

              if (v9 == &dword_0 + 1)
              {
                v30 = [v6 valueForKey:@"sortKey"];
                v31 = [v30 longLongValue];

                if (v31 < 2)
                {
                  goto LABEL_26;
                }

                v22 = [NSNumber numberWithLongLong:v31 >> 1];
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
                v34 = [v33 longLongValue];

                if (v34 <= v32)
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

              v3 = v44;
              v21 = v45;
            }

LABEL_24:

            v43 = 1;
            goto LABEL_25;
          }

          v3 = v44;
        }

        else if (v7)
        {
          v16 = [v6 valueForKey:@"sortKey"];
          v17 = [v16 longLongValue];
          v18 = [v7 valueForKey:@"sortKey"];
          v19 = [v18 longLongValue];

          v20 = v17 <= v19;
          v3 = v44;
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
    [BKUserSortOrderManager resetDescendingSortKeyedObjects:v3];
    v38 = 1;
  }

  return v38 & 1;
}

@end
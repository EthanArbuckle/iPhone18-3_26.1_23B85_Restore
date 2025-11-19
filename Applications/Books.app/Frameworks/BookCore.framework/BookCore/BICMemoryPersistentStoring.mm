@interface BICMemoryPersistentStoring
- (BICMemoryPersistentStoring)initWithURL:(id)a3;
- (id)addNewImageEntryToSet:(id)a3;
- (id)addNewImageSetWithIdentifier:(id)a3;
- (id)fetchAllImageSets;
- (id)fetchImageEntriesMatchingAddedEntries:(id)a3;
- (id)fetchImageEntriesWithLocations:(id)a3;
- (id)fetchImageSetsWithDescribedImages:(id)a3;
- (id)fetchImageSetsWithIDs:(id)a3;
- (id)fetchToBeDeletedImageEntriesInLevelID:(signed __int16)a3;
- (id)imageSetForIdentifier:(id)a3;
- (int64_t)totalNumberOfImageEntries;
- (int64_t)totalNumberOfImageSets;
- (void)clean:(id)a3;
- (void)deleteObject:(id)a3;
- (void)performBlock:(id)a3;
- (void)performBlockAndWait:(id)a3;
- (void)removeImageSets:(id)a3;
@end

@implementation BICMemoryPersistentStoring

- (BICMemoryPersistentStoring)initWithURL:(id)a3
{
  v7.receiver = self;
  v7.super_class = BICMemoryPersistentStoring;
  v3 = [(BICMemoryPersistentStoring *)&v7 init];
  if (v3)
  {
    v4 = +[NSMutableDictionary dictionary];
    imageSets = v3->_imageSets;
    v3->_imageSets = v4;
  }

  return v3;
}

- (id)imageSetForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BICMemoryPersistentStoring *)self imageSets];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)addNewImageSetWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(BICMemoryImageSet);
  [(BICMemoryImageSet *)v5 setIdentifier:v4];
  v6 = [(BICMemoryPersistentStoring *)self imageSets];
  [v6 setObject:v5 forKeyedSubscript:v4];

  return v5;
}

- (id)addNewImageEntryToSet:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BICMemoryImageEntry);
  [v3 addEntry:v4];

  return v4;
}

- (void)performBlock:(id)a3
{
  v3 = objc_retainBlock(a3);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)performBlockAndWait:(id)a3
{
  v3 = objc_retainBlock(a3);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)deleteObject:(id)a3
{
  v9 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();
  if (v4)
  {
    v5 = [(BICMemoryPersistentStoring *)self imageSets];
    v6 = [v4 identifier];
    [v5 setObject:0 forKeyedSubscript:v6];
  }

  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    [v7 deleteEntry];
  }
}

- (id)fetchAllImageSets
{
  v2 = [(BICMemoryPersistentStoring *)self imageSets];
  v3 = [v2 allValues];

  return v3;
}

- (id)fetchImageSetsWithIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(BICMemoryPersistentStoring *)self imageSets];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 allObjects];

  return v14;
}

- (id)fetchImageSetsWithDescribedImages:(id)a3
{
  v4 = [a3 valueForKey:@"identifier"];
  v5 = [(BICMemoryPersistentStoring *)self fetchImageSetsWithIDs:v4];

  return v5;
}

- (void)removeImageSets:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(BICMemoryPersistentStoring *)self imageSets];
        [v10 setObject:0 forKeyedSubscript:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)fetchToBeDeletedImageEntriesInLevelID:(signed __int16)a3
{
  v3 = a3;
  v5 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [(BICMemoryPersistentStoring *)self imageSets];
  v7 = [v6 allValues];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v13 = [v12 imageEntries];
        v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v22;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v21 + 1) + 8 * j);
              if ([v18 state] == 3 && objc_msgSend(v18, "level") == v3)
              {
                [v5 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v15);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)fetchImageEntriesMatchingAddedEntries:(id)a3
{
  v4 = [a3 valueForKey:@"entryLocation"];
  v5 = [(BICMemoryPersistentStoring *)self fetchImageEntriesWithLocations:v4];

  return v5;
}

- (id)fetchImageEntriesWithLocations:(id)a3
{
  v4 = [NSSet setWithArray:a3];
  v5 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(BICMemoryPersistentStoring *)self imageSets];
  v7 = [v6 allValues];

  obj = v7;
  v21 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = [v9 imageEntries];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              v16 = [v15 entryLocation];
              v17 = [v4 containsObject:v16];

              if (v17)
              {
                [v5 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  return v5;
}

- (void)clean:(id)a3
{
  v4 = a3;
  v5 = [(BICMemoryPersistentStoring *)self imageSets];
  [v5 removeAllObjects];

  v7 = objc_retainBlock(v4);
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (int64_t)totalNumberOfImageSets
{
  v2 = [(BICMemoryPersistentStoring *)self imageSets];
  v3 = [v2 count];

  return v3;
}

- (int64_t)totalNumberOfImageEntries
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(BICMemoryPersistentStoring *)self imageSets];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) imageEntries];
        v6 += [v9 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
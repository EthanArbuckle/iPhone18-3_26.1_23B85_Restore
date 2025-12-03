@interface BICMemoryPersistentStoring
- (BICMemoryPersistentStoring)initWithURL:(id)l;
- (id)addNewImageEntryToSet:(id)set;
- (id)addNewImageSetWithIdentifier:(id)identifier;
- (id)fetchAllImageSets;
- (id)fetchImageEntriesMatchingAddedEntries:(id)entries;
- (id)fetchImageEntriesWithLocations:(id)locations;
- (id)fetchImageSetsWithDescribedImages:(id)images;
- (id)fetchImageSetsWithIDs:(id)ds;
- (id)fetchToBeDeletedImageEntriesInLevelID:(signed __int16)d;
- (id)imageSetForIdentifier:(id)identifier;
- (int64_t)totalNumberOfImageEntries;
- (int64_t)totalNumberOfImageSets;
- (void)clean:(id)clean;
- (void)deleteObject:(id)object;
- (void)performBlock:(id)block;
- (void)performBlockAndWait:(id)wait;
- (void)removeImageSets:(id)sets;
@end

@implementation BICMemoryPersistentStoring

- (BICMemoryPersistentStoring)initWithURL:(id)l
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

- (id)imageSetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageSets = [(BICMemoryPersistentStoring *)self imageSets];
  v6 = [imageSets objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)addNewImageSetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(BICMemoryImageSet);
  [(BICMemoryImageSet *)v5 setIdentifier:identifierCopy];
  imageSets = [(BICMemoryPersistentStoring *)self imageSets];
  [imageSets setObject:v5 forKeyedSubscript:identifierCopy];

  return v5;
}

- (id)addNewImageEntryToSet:(id)set
{
  setCopy = set;
  v4 = objc_alloc_init(BICMemoryImageEntry);
  [setCopy addEntry:v4];

  return v4;
}

- (void)performBlock:(id)block
{
  v3 = objc_retainBlock(block);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)performBlockAndWait:(id)wait
{
  v3 = objc_retainBlock(wait);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)deleteObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v4 = BUDynamicCast();
  if (v4)
  {
    imageSets = [(BICMemoryPersistentStoring *)self imageSets];
    identifier = [v4 identifier];
    [imageSets setObject:0 forKeyedSubscript:identifier];
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
  imageSets = [(BICMemoryPersistentStoring *)self imageSets];
  allValues = [imageSets allValues];

  return allValues;
}

- (id)fetchImageSetsWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = dsCopy;
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
        imageSets = [(BICMemoryPersistentStoring *)self imageSets];
        v13 = [imageSets objectForKeyedSubscript:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (id)fetchImageSetsWithDescribedImages:(id)images
{
  v4 = [images valueForKey:@"identifier"];
  v5 = [(BICMemoryPersistentStoring *)self fetchImageSetsWithIDs:v4];

  return v5;
}

- (void)removeImageSets:(id)sets
{
  setsCopy = sets;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [setsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(setsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        imageSets = [(BICMemoryPersistentStoring *)self imageSets];
        [imageSets setObject:0 forKeyedSubscript:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [setsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)fetchToBeDeletedImageEntriesInLevelID:(signed __int16)d
{
  dCopy = d;
  v5 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  imageSets = [(BICMemoryPersistentStoring *)self imageSets];
  allValues = [imageSets allValues];

  obj = allValues;
  v8 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
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
        imageEntries = [v12 imageEntries];
        v14 = [imageEntries countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(imageEntries);
              }

              v18 = *(*(&v21 + 1) + 8 * j);
              if ([v18 state] == 3 && objc_msgSend(v18, "level") == dCopy)
              {
                [v5 addObject:v18];
              }
            }

            v15 = [imageEntries countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (id)fetchImageEntriesMatchingAddedEntries:(id)entries
{
  v4 = [entries valueForKey:@"entryLocation"];
  v5 = [(BICMemoryPersistentStoring *)self fetchImageEntriesWithLocations:v4];

  return v5;
}

- (id)fetchImageEntriesWithLocations:(id)locations
{
  v4 = [NSSet setWithArray:locations];
  v5 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  imageSets = [(BICMemoryPersistentStoring *)self imageSets];
  allValues = [imageSets allValues];

  obj = allValues;
  v21 = [allValues countByEnumeratingWithState:&v26 objects:v31 count:16];
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
        imageEntries = [v9 imageEntries];
        v11 = [imageEntries countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(imageEntries);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              entryLocation = [v15 entryLocation];
              v17 = [v4 containsObject:entryLocation];

              if (v17)
              {
                [v5 addObject:v15];
              }
            }

            v12 = [imageEntries countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (void)clean:(id)clean
{
  cleanCopy = clean;
  imageSets = [(BICMemoryPersistentStoring *)self imageSets];
  [imageSets removeAllObjects];

  v7 = objc_retainBlock(cleanCopy);
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (int64_t)totalNumberOfImageSets
{
  imageSets = [(BICMemoryPersistentStoring *)self imageSets];
  v3 = [imageSets count];

  return v3;
}

- (int64_t)totalNumberOfImageEntries
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  imageSets = [(BICMemoryPersistentStoring *)self imageSets];
  allValues = [imageSets allValues];

  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        imageEntries = [*(*(&v11 + 1) + 8 * i) imageEntries];
        v6 += [imageEntries count];
      }

      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
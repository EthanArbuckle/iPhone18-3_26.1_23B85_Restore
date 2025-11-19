@interface PHManualFetchResult
+ (id)emptyFetchResultWithPhotoLibrary:(id)a3;
+ (id)emptyFetchResultWithPhotoLibrary:(id)a3 fetchType:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFullyBackedByObjectIDs;
- (NSOrderedSet)objectIDs;
- (PHManualFetchResult)fetchResultWithChangeHandlingValue:(id)a3;
- (PHManualFetchResult)initWithObjects:(id)a3 photoLibrary:(id)a4 fetchType:(id)a5 fetchPropertySets:(id)a6 identifier:(id)a7 registerIfNeeded:(BOOL)a8;
- (PHManualFetchResult)initWithOids:(id)a3 photoLibrary:(id)a4 fetchType:(id)a5 fetchPropertySets:(id)a6 identifier:(id)a7 registerIfNeeded:(BOOL)a8 graphQuery:(id)a9 batchSize:(unint64_t)a10;
- (PHManualFetchResult)initWithOids:(id)a3 photoLibrary:(id)a4 fetchType:(id)a5 fetchPropertySets:(id)a6 identifier:(id)a7 registerIfNeeded:(BOOL)a8 graphQuery:(id)obj;
- (PHManualFetchResult)initWithOids:(id)a3 photoLibrary:(id)a4 fetchType:(id)a5 fetchPropertySets:(id)a6 identifier:(id)a7 registerIfNeeded:(BOOL)a8 photosCount:(unint64_t)a9 videosCount:(unint64_t)a10 audiosCount:(unint64_t)a11 batchSize:(unint64_t)a12;
- (id)calculateMediaTypeCounts;
- (id)changeHandlingValueUsingSeedOids:(id)a3 withChange:(id)a4 usingManagedObjectContext:(id)a5;
- (id)copyWithOptions:(id)a3;
- (id)description;
- (id)fetchUpdatedObjects;
- (id)fetchedObjectIDs;
- (id)fetchedObjectIDsSet;
- (id)objectIDAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)possibleChangesForChange:(id)a3 propertiesFetchResult:(id)a4;
- (void)prefetchObjectsAtIndexes:(id)a3;
@end

@implementation PHManualFetchResult

- (unint64_t)hash
{
  v3 = [(PHManualFetchResult *)self identifier];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PHManualFetchResult;
    v5 = [(PHManualFetchResult *)&v8 hash];
  }

  v6 = v5;

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PHManualFetchResult;
  v2 = [(PHFetchResult *)&v4 description];

  return v2;
}

- (PHManualFetchResult)fetchResultWithChangeHandlingValue:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(PHManualFetchResult *)self fetchUpdatedObjects];
  }

  v6 = v5;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 objectID];
        [v7 setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  v15 = MEMORY[0x1E695DF70];
  v16 = [(PHManualFetchResult *)self objects];
  v17 = [v15 arrayWithCapacity:{objc_msgSend(v16, "count")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = [(PHManualFetchResult *)self objects];
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v34 + 1) + 8 * j);
        if ([v23 isTransient])
        {
          [v17 addObject:v23];
        }

        else
        {
          v24 = [v23 objectID];
          v25 = [v7 objectForKeyedSubscript:v24];

          if (v25)
          {
            [v17 addObject:v25];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v20);
  }

  v26 = [PHManualFetchResult alloc];
  v27 = [(PHManualFetchResult *)self photoLibrary];
  v28 = [(PHFetchResult *)self fetchType];
  v29 = [(PHFetchResult *)self fetchPropertySets];
  v30 = [(PHManualFetchResult *)self identifier];
  v31 = [(PHManualFetchResult *)v26 initWithObjects:v17 photoLibrary:v27 fetchType:v28 fetchPropertySets:v29 identifier:v30 registerIfNeeded:0];

  return v31;
}

- (id)fetchUpdatedObjects
{
  v3 = [(PHFetchResult *)self fetchPropertySets];
  v4 = [(PHFetchResult *)self fetchType];
  v5 = [PHPhotoLibrary classForFetchType:v4];

  v6 = 2;
  if ([v3 count] && v5)
  {
    v7 = [(PHFetchResult *)self fetchPropertySets];
    v6 = [(objc_class *)v5 propertyFetchHintsForPropertySets:v7];
  }

  v8 = [(PHManualFetchResult *)self photoLibrary];
  v9 = [(PHManualFetchResult *)self objectIDs];
  v10 = [v9 array];
  v11 = [v8 fetchPHObjectsForOIDs:v10 propertyHint:v6 includeTrash:0 overrideResultsWithClass:0];

  return v11;
}

- (unint64_t)possibleChangesForChange:(id)a3 propertiesFetchResult:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  graphQuery = self->_graphQuery;
  if (graphQuery)
  {
    v9 = [(PHGraphQuery *)graphQuery possibleChangesForChange:v6];
    if (v9 == 15)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v9 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v6 deletedObjectIDs];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [(PHManualFetchResult *)self objectIDs];
        LODWORD(v15) = [v16 containsObject:v15];

        if (v15)
        {
          v9 |= 2uLL;
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [v6 updatedObjectIDs];
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * j);
        v23 = [(PHManualFetchResult *)self objectIDs];
        LODWORD(v22) = [v23 containsObject:v22];

        if (v22)
        {
          v9 |= 8uLL;
          goto LABEL_25;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

LABEL_26:
  return v9;
}

- (id)objectIDAtIndex:(unint64_t)a3
{
  v4 = [(PHManualFetchResult *)self objects];
  v5 = [v4 objectAtIndex:a3];
  v6 = [v5 objectID];

  return v6;
}

- (id)fetchedObjectIDsSet
{
  v3 = [(PHManualFetchResult *)self objects];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(PHManualFetchResult *)self objects];
    v6 = [v5 oidsSet];
  }

  else if ([(PHManualFetchResult *)self isFullyBackedByObjectIDs])
  {
    v6 = [(NSOrderedSet *)self->_objectIDs set];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fetchedObjectIDs
{
  v3 = [(PHManualFetchResult *)self objects];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(PHManualFetchResult *)self objects];
    v6 = [v5 oids];
  }

  else if ([(PHManualFetchResult *)self isFullyBackedByObjectIDs])
  {
    v6 = [(NSOrderedSet *)self->_objectIDs array];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)prefetchObjectsAtIndexes:(id)a3
{
  v5 = a3;
  v4 = [(PHManualFetchResult *)self objects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 prefetchObjectsAtIndexes:v5];
  }
}

- (id)changeHandlingValueUsingSeedOids:(id)a3 withChange:(id)a4 usingManagedObjectContext:(id)a5
{
  if (self->_graphQuery)
  {
    v5 = [(PHGraphQuery *)self->_graphQuery updatedQueryWithChange:a4];
    v6 = [v5 executeQuery];
  }

  else
  {
    v6 = [(PHManualFetchResult *)self fetchResultWithChangeHandlingValue:0, a4, a5];
  }

  return v6;
}

- (BOOL)isFullyBackedByObjectIDs
{
  v3 = [(NSArray *)self->_objects count];
  v4 = [(PHManualFetchResult *)self objectIDs];
  LOBYTE(v3) = v3 == [v4 count];

  return v3;
}

- (id)copyWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(PHManualFetchResult *)self objects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:@"invalidateCache"];

  if (v7 && [v8 BOOLValue])
  {
    v9 = [v7 oids];
    v10 = [(PHFetchResult *)self isRegisteredForChangeNotificationDeltas];
    v11 = [PHManualFetchResult alloc];
    v12 = [(PHManualFetchResult *)self photoLibrary];
    v13 = [(PHManualFetchResult *)v11 initWithOids:v9 photoLibrary:v12 fetchType:self->super._fetchType fetchPropertySets:self->super._fetchPropertySets identifier:0 registerIfNeeded:v10 batchSize:0];

    objc_storeStrong(v13 + 21, self->_graphQuery);
  }

  else
  {
    v13 = [(PHManualFetchResult *)self copy];
  }

  return v13;
}

- (id)calculateMediaTypeCounts
{
  if ([(NSArray *)self->_objects count])
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      objc_opt_class();
      v8 = [(NSArray *)self->_objects objectAtIndexedSubscript:v6];
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v10)
      {
        v11 = [v10 mediaType];
        switch(v11)
        {
          case 3:
            ++v5;
            break;
          case 2:
            ++v4;
            break;
          case 1:
            ++v3;
            break;
        }
      }

      objc_autoreleasePoolPop(v7);
      ++v6;
    }

    while (v6 < [(NSArray *)self->_objects count]);
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  v12 = [[PHFetchResultMediaTypeCounts alloc] initWithPhotosCount:v3 videosCount:v4 audiosCount:v5];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PHManualFetchResult;
  if ([(PHManualFetchResult *)&v9 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PHManualFetchResult *)self identifier];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v4 identifier];
      v5 = [v6 isEqualToString:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSOrderedSet)objectIDs
{
  objectIDs = self->_objectIDs;
  if (!objectIDs)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PHManualFetchResult.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"[_objects isKindOfClass:[PHBatchFetchingArray class]]"}];
    }

    v5 = self->_objects;
    v6 = [(NSArray *)v5 oids];
    v7 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v6];
    v8 = self->_objectIDs;
    self->_objectIDs = v7;

    objectIDs = self->_objectIDs;
  }

  return objectIDs;
}

- (PHManualFetchResult)initWithOids:(id)a3 photoLibrary:(id)a4 fetchType:(id)a5 fetchPropertySets:(id)a6 identifier:(id)a7 registerIfNeeded:(BOOL)a8 graphQuery:(id)a9 batchSize:(unint64_t)a10
{
  v10 = a8;
  objc_storeStrong(&self->_graphQuery, a9);
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [(PHManualFetchResult *)self initWithOids:v21 photoLibrary:v20 fetchType:v19 fetchPropertySets:v18 identifier:v17 registerIfNeeded:v10 batchSize:a10];

  return v22;
}

- (PHManualFetchResult)initWithOids:(id)a3 photoLibrary:(id)a4 fetchType:(id)a5 fetchPropertySets:(id)a6 identifier:(id)a7 registerIfNeeded:(BOOL)a8 graphQuery:(id)obj
{
  v9 = a8;
  objc_storeStrong(&self->_graphQuery, obj);
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(PHManualFetchResult *)self initWithOids:v20 photoLibrary:v19 fetchType:v18 fetchPropertySets:v17 identifier:v16 registerIfNeeded:v9 batchSize:0];

  return v21;
}

- (PHManualFetchResult)initWithOids:(id)a3 photoLibrary:(id)a4 fetchType:(id)a5 fetchPropertySets:(id)a6 identifier:(id)a7 registerIfNeeded:(BOOL)a8 photosCount:(unint64_t)a9 videosCount:(unint64_t)a10 audiosCount:(unint64_t)a11 batchSize:(unint64_t)a12
{
  v39 = a8;
  v41 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = [PHFetchResultMediaTypeCounts mediaTypeCountsWithPhotosCount:a9 videosCount:a10 audiosCount:a11];
  v42.receiver = self;
  v42.super_class = PHManualFetchResult;
  v22 = [(PHFetchResult *)&v42 initWithMediaTypeCounts:v21 library:v17];
  v40 = v18;
  if (v22)
  {
    v23 = [v18 copy];
    fetchType = v22->super._fetchType;
    v22->super._fetchType = v23;

    v25 = [v19 copy];
    fetchPropertySets = v22->super._fetchPropertySets;
    v22->super._fetchPropertySets = v25;

    objc_storeStrong(&v22->_photoLibrary, a4);
    if (v22->super._fetchType && [(NSSet *)v22->super._fetchPropertySets count])
    {
      v27 = [(objc_class *)[PHPhotoLibrary classForFetchType:?], "propertyFetchHintsForPropertySets:", v22->super._fetchPropertySets];
    }

    else
    {
      v27 = 2;
    }

    v28 = [MEMORY[0x1E695DF90] dictionary];
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
    [v28 setObject:v29 forKeyedSubscript:@"propertyHint"];

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a12];
    [v28 setObject:v30 forKeyedSubscript:@"batchSize"];

    graphQuery = v22->_graphQuery;
    if (graphQuery)
    {
      v32 = [(PHGraphQuery *)graphQuery extraBatchFetchingArrayOptions];
      [v28 addEntriesFromDictionary:v32];
    }

    v33 = v41;
    v34 = [[PHBatchFetchingArray alloc] initWithOIDs:v41 options:v28 photoLibrary:v22->_photoLibrary];
    objects = v22->_objects;
    v22->_objects = &v34->super;

    if (!v20)
    {
      v36 = [MEMORY[0x1E696AFB0] UUID];
      v20 = [v36 UUIDString];
    }

    objc_storeStrong(&v22->_identifier, v20);
    v19 = v38;
    if (v39)
    {
      [(PHFetchResult *)v22 setRegisteredForChangeNotificationDeltas:1];
    }
  }

  else
  {
    v33 = v41;
  }

  return v22;
}

- (PHManualFetchResult)initWithObjects:(id)a3 photoLibrary:(id)a4 fetchType:(id)a5 fetchPropertySets:(id)a6 identifier:(id)a7 registerIfNeeded:(BOOL)a8
{
  v8 = a8;
  v65 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v63.receiver = self;
  v63.super_class = PHManualFetchResult;
  v20 = [(PHFetchResult *)&v63 init];
  if (!v20)
  {
    goto LABEL_30;
  }

  v53 = a2;
  v57 = v8;
  v21 = [v15 copy];
  objects = v20->_objects;
  v20->_objects = v21;

  v58 = v17;
  v23 = [v17 copy];
  fetchType = v20->super._fetchType;
  v20->super._fetchType = v23;

  v56 = v18;
  v25 = [v18 copy];
  fetchPropertySets = v20->super._fetchPropertySets;
  v20->super._fetchPropertySets = v25;

  v27 = v16;
  v28 = v27;
  if (!v27)
  {
    v29 = [v15 firstObject];
    v28 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:0 object:v29];
  }

  v55 = v28;
  objc_storeStrong(&v20->_photoLibrary, v28);
  v30 = [v15 firstObject];
  v31 = v30;
  v54 = v16;
  if (v30)
  {
    v32 = [v30 photoLibrary];
    if (v32 != v27)
    {
      v33 = [v31 photoLibrary];
      v34 = [v33 description];
      if ([v34 containsString:@"Mock"])
      {
        v52 = [v31 photoLibrary];
        v50 = [v52 photoLibraryURL];
        v35 = [v50 path];
        v36 = [v27 photoLibraryURL];
        [v36 path];
        v51 = v33;
        v38 = v37 = v15;
        v49 = [v35 compare:v38];

        v15 = v37;
        v16 = v54;

        if (!v49)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:v53 object:v20 file:@"PHManualFetchResult.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"firstObject == nil || firstObject.photoLibrary == photoLibrary || ([firstObject.photoLibrary.description containsString:@Mock] && [firstObject.photoLibrary.photoLibraryURL.path compare:photoLibrary.photoLibraryURL.path] == NSOrderedSame)"}];
    }
  }

LABEL_12:
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(NSArray *)v20->_objects isFullyBackedByObjectIDs])
  {
    v39 = [(NSArray *)v20->_objects objectIDs];
  }

  else
  {
    v39 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{-[NSArray count](v20->_objects, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v40 = v20->_objects;
    v41 = [(NSArray *)v40 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v60;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v60 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v59 + 1) + 8 * i) objectID];
          if (v45)
          {
            [(NSOrderedSet *)v39 addObject:v45];
          }
        }

        v42 = [(NSArray *)v40 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v42);
    }

    v16 = v54;
  }

  objectIDs = v20->_objectIDs;
  v20->_objectIDs = v39;

  v18 = v56;
  if (!v19)
  {
    v47 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v47 UUIDString];
  }

  objc_storeStrong(&v20->_identifier, v19);
  v17 = v58;
  if (v57)
  {
    [(PHFetchResult *)v20 setRegisteredForChangeNotificationDeltas:1];
  }

LABEL_30:
  return v20;
}

+ (id)emptyFetchResultWithPhotoLibrary:(id)a3 fetchType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = [v8 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v7 fetchType:v6 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v9;
}

+ (id)emptyFetchResultWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v5 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:v4 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v6;
}

@end
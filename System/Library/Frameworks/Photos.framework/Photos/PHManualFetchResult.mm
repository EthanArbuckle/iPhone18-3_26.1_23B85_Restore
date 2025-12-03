@interface PHManualFetchResult
+ (id)emptyFetchResultWithPhotoLibrary:(id)library;
+ (id)emptyFetchResultWithPhotoLibrary:(id)library fetchType:(id)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFullyBackedByObjectIDs;
- (NSOrderedSet)objectIDs;
- (PHManualFetchResult)fetchResultWithChangeHandlingValue:(id)value;
- (PHManualFetchResult)initWithObjects:(id)objects photoLibrary:(id)library fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)identifier registerIfNeeded:(BOOL)needed;
- (PHManualFetchResult)initWithOids:(id)oids photoLibrary:(id)library fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)identifier registerIfNeeded:(BOOL)needed graphQuery:(id)obj;
- (PHManualFetchResult)initWithOids:(id)oids photoLibrary:(id)library fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)identifier registerIfNeeded:(BOOL)needed graphQuery:(id)query batchSize:(unint64_t)self0;
- (PHManualFetchResult)initWithOids:(id)oids photoLibrary:(id)library fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)identifier registerIfNeeded:(BOOL)needed photosCount:(unint64_t)count videosCount:(unint64_t)self0 audiosCount:(unint64_t)self1 batchSize:(unint64_t)self2;
- (id)calculateMediaTypeCounts;
- (id)changeHandlingValueUsingSeedOids:(id)oids withChange:(id)change usingManagedObjectContext:(id)context;
- (id)copyWithOptions:(id)options;
- (id)description;
- (id)fetchUpdatedObjects;
- (id)fetchedObjectIDs;
- (id)fetchedObjectIDsSet;
- (id)objectIDAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (unint64_t)possibleChangesForChange:(id)change propertiesFetchResult:(id)result;
- (void)prefetchObjectsAtIndexes:(id)indexes;
@end

@implementation PHManualFetchResult

- (unint64_t)hash
{
  identifier = [(PHManualFetchResult *)self identifier];
  v4 = identifier;
  if (identifier)
  {
    v5 = [identifier hash];
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

- (PHManualFetchResult)fetchResultWithChangeHandlingValue:(id)value
{
  v44 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v33 = valueCopy;
  if (valueCopy)
  {
    fetchUpdatedObjects = valueCopy;
  }

  else
  {
    fetchUpdatedObjects = [(PHManualFetchResult *)self fetchUpdatedObjects];
  }

  v6 = fetchUpdatedObjects;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
        objectID = [v13 objectID];
        [dictionary setObject:v13 forKeyedSubscript:objectID];
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  v15 = MEMORY[0x1E695DF70];
  objects = [(PHManualFetchResult *)self objects];
  v17 = [v15 arrayWithCapacity:{objc_msgSend(objects, "count")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  objects2 = [(PHManualFetchResult *)self objects];
  v19 = [objects2 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(objects2);
        }

        v23 = *(*(&v34 + 1) + 8 * j);
        if ([v23 isTransient])
        {
          [v17 addObject:v23];
        }

        else
        {
          objectID2 = [v23 objectID];
          v25 = [dictionary objectForKeyedSubscript:objectID2];

          if (v25)
          {
            [v17 addObject:v25];
          }
        }
      }

      v20 = [objects2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v20);
  }

  v26 = [PHManualFetchResult alloc];
  photoLibrary = [(PHManualFetchResult *)self photoLibrary];
  fetchType = [(PHFetchResult *)self fetchType];
  fetchPropertySets = [(PHFetchResult *)self fetchPropertySets];
  identifier = [(PHManualFetchResult *)self identifier];
  v31 = [(PHManualFetchResult *)v26 initWithObjects:v17 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:identifier registerIfNeeded:0];

  return v31;
}

- (id)fetchUpdatedObjects
{
  fetchPropertySets = [(PHFetchResult *)self fetchPropertySets];
  fetchType = [(PHFetchResult *)self fetchType];
  v5 = [PHPhotoLibrary classForFetchType:fetchType];

  v6 = 2;
  if ([fetchPropertySets count] && v5)
  {
    fetchPropertySets2 = [(PHFetchResult *)self fetchPropertySets];
    v6 = [(objc_class *)v5 propertyFetchHintsForPropertySets:fetchPropertySets2];
  }

  photoLibrary = [(PHManualFetchResult *)self photoLibrary];
  objectIDs = [(PHManualFetchResult *)self objectIDs];
  array = [objectIDs array];
  v11 = [photoLibrary fetchPHObjectsForOIDs:array propertyHint:v6 includeTrash:0 overrideResultsWithClass:0];

  return v11;
}

- (unint64_t)possibleChangesForChange:(id)change propertiesFetchResult:(id)result
{
  v35 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  resultCopy = result;
  graphQuery = self->_graphQuery;
  if (graphQuery)
  {
    v9 = [(PHGraphQuery *)graphQuery possibleChangesForChange:changeCopy];
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
  deletedObjectIDs = [changeCopy deletedObjectIDs];
  v11 = [deletedObjectIDs countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(deletedObjectIDs);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        objectIDs = [(PHManualFetchResult *)self objectIDs];
        LODWORD(v15) = [objectIDs containsObject:v15];

        if (v15)
        {
          v9 |= 2uLL;
          goto LABEL_15;
        }
      }

      v12 = [deletedObjectIDs countByEnumeratingWithState:&v29 objects:v34 count:16];
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
  updatedObjectIDs = [changeCopy updatedObjectIDs];
  v18 = [updatedObjectIDs countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(updatedObjectIDs);
        }

        v22 = *(*(&v25 + 1) + 8 * j);
        objectIDs2 = [(PHManualFetchResult *)self objectIDs];
        LODWORD(v22) = [objectIDs2 containsObject:v22];

        if (v22)
        {
          v9 |= 8uLL;
          goto LABEL_25;
        }
      }

      v19 = [updatedObjectIDs countByEnumeratingWithState:&v25 objects:v33 count:16];
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

- (id)objectIDAtIndex:(unint64_t)index
{
  objects = [(PHManualFetchResult *)self objects];
  v5 = [objects objectAtIndex:index];
  objectID = [v5 objectID];

  return objectID;
}

- (id)fetchedObjectIDsSet
{
  objects = [(PHManualFetchResult *)self objects];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objects2 = [(PHManualFetchResult *)self objects];
    oidsSet = [objects2 oidsSet];
  }

  else if ([(PHManualFetchResult *)self isFullyBackedByObjectIDs])
  {
    oidsSet = [(NSOrderedSet *)self->_objectIDs set];
  }

  else
  {
    oidsSet = 0;
  }

  return oidsSet;
}

- (id)fetchedObjectIDs
{
  objects = [(PHManualFetchResult *)self objects];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objects2 = [(PHManualFetchResult *)self objects];
    oids = [objects2 oids];
  }

  else if ([(PHManualFetchResult *)self isFullyBackedByObjectIDs])
  {
    oids = [(NSOrderedSet *)self->_objectIDs array];
  }

  else
  {
    oids = 0;
  }

  return oids;
}

- (void)prefetchObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  objects = [(PHManualFetchResult *)self objects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objects prefetchObjectsAtIndexes:indexesCopy];
  }
}

- (id)changeHandlingValueUsingSeedOids:(id)oids withChange:(id)change usingManagedObjectContext:(id)context
{
  if (self->_graphQuery)
  {
    v5 = [(PHGraphQuery *)self->_graphQuery updatedQueryWithChange:change];
    executeQuery = [v5 executeQuery];
  }

  else
  {
    executeQuery = [(PHManualFetchResult *)self fetchResultWithChangeHandlingValue:0, change, context];
  }

  return executeQuery;
}

- (BOOL)isFullyBackedByObjectIDs
{
  v3 = [(NSArray *)self->_objects count];
  objectIDs = [(PHManualFetchResult *)self objectIDs];
  LOBYTE(v3) = v3 == [objectIDs count];

  return v3;
}

- (id)copyWithOptions:(id)options
{
  optionsCopy = options;
  objects = [(PHManualFetchResult *)self objects];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objects;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [optionsCopy objectForKeyedSubscript:@"invalidateCache"];

  if (v7 && [v8 BOOLValue])
  {
    oids = [v7 oids];
    isRegisteredForChangeNotificationDeltas = [(PHFetchResult *)self isRegisteredForChangeNotificationDeltas];
    v11 = [PHManualFetchResult alloc];
    photoLibrary = [(PHManualFetchResult *)self photoLibrary];
    v13 = [(PHManualFetchResult *)v11 initWithOids:oids photoLibrary:photoLibrary fetchType:self->super._fetchType fetchPropertySets:self->super._fetchPropertySets identifier:0 registerIfNeeded:isRegisteredForChangeNotificationDeltas batchSize:0];

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
        mediaType = [v10 mediaType];
        switch(mediaType)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = PHManualFetchResult;
  if ([(PHManualFetchResult *)&v9 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    identifier = [(PHManualFetchResult *)self identifier];
    if (identifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identifier2 = [equalCopy identifier];
      v5 = [identifier isEqualToString:identifier2];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHManualFetchResult.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"[_objects isKindOfClass:[PHBatchFetchingArray class]]"}];
    }

    v5 = self->_objects;
    oids = [(NSArray *)v5 oids];
    v7 = [MEMORY[0x1E695DFB8] orderedSetWithArray:oids];
    v8 = self->_objectIDs;
    self->_objectIDs = v7;

    objectIDs = self->_objectIDs;
  }

  return objectIDs;
}

- (PHManualFetchResult)initWithOids:(id)oids photoLibrary:(id)library fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)identifier registerIfNeeded:(BOOL)needed graphQuery:(id)query batchSize:(unint64_t)self0
{
  neededCopy = needed;
  objc_storeStrong(&self->_graphQuery, query);
  identifierCopy = identifier;
  setsCopy = sets;
  typeCopy = type;
  libraryCopy = library;
  oidsCopy = oids;
  v22 = [(PHManualFetchResult *)self initWithOids:oidsCopy photoLibrary:libraryCopy fetchType:typeCopy fetchPropertySets:setsCopy identifier:identifierCopy registerIfNeeded:neededCopy batchSize:size];

  return v22;
}

- (PHManualFetchResult)initWithOids:(id)oids photoLibrary:(id)library fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)identifier registerIfNeeded:(BOOL)needed graphQuery:(id)obj
{
  neededCopy = needed;
  objc_storeStrong(&self->_graphQuery, obj);
  identifierCopy = identifier;
  setsCopy = sets;
  typeCopy = type;
  libraryCopy = library;
  oidsCopy = oids;
  v21 = [(PHManualFetchResult *)self initWithOids:oidsCopy photoLibrary:libraryCopy fetchType:typeCopy fetchPropertySets:setsCopy identifier:identifierCopy registerIfNeeded:neededCopy batchSize:0];

  return v21;
}

- (PHManualFetchResult)initWithOids:(id)oids photoLibrary:(id)library fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)identifier registerIfNeeded:(BOOL)needed photosCount:(unint64_t)count videosCount:(unint64_t)self0 audiosCount:(unint64_t)self1 batchSize:(unint64_t)self2
{
  neededCopy = needed;
  oidsCopy = oids;
  libraryCopy = library;
  typeCopy = type;
  setsCopy = sets;
  identifierCopy = identifier;
  v21 = [PHFetchResultMediaTypeCounts mediaTypeCountsWithPhotosCount:count videosCount:videosCount audiosCount:audiosCount];
  v42.receiver = self;
  v42.super_class = PHManualFetchResult;
  v22 = [(PHFetchResult *)&v42 initWithMediaTypeCounts:v21 library:libraryCopy];
  v40 = typeCopy;
  if (v22)
  {
    v23 = [typeCopy copy];
    fetchType = v22->super._fetchType;
    v22->super._fetchType = v23;

    v25 = [setsCopy copy];
    fetchPropertySets = v22->super._fetchPropertySets;
    v22->super._fetchPropertySets = v25;

    objc_storeStrong(&v22->_photoLibrary, library);
    if (v22->super._fetchType && [(NSSet *)v22->super._fetchPropertySets count])
    {
      v27 = [(objc_class *)[PHPhotoLibrary classForFetchType:?], "propertyFetchHintsForPropertySets:", v22->super._fetchPropertySets];
    }

    else
    {
      v27 = 2;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
    [dictionary setObject:v29 forKeyedSubscript:@"propertyHint"];

    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
    [dictionary setObject:v30 forKeyedSubscript:@"batchSize"];

    graphQuery = v22->_graphQuery;
    if (graphQuery)
    {
      extraBatchFetchingArrayOptions = [(PHGraphQuery *)graphQuery extraBatchFetchingArrayOptions];
      [dictionary addEntriesFromDictionary:extraBatchFetchingArrayOptions];
    }

    v33 = oidsCopy;
    v34 = [[PHBatchFetchingArray alloc] initWithOIDs:oidsCopy options:dictionary photoLibrary:v22->_photoLibrary];
    objects = v22->_objects;
    v22->_objects = &v34->super;

    if (!identifierCopy)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      identifierCopy = [uUID UUIDString];
    }

    objc_storeStrong(&v22->_identifier, identifierCopy);
    setsCopy = v38;
    if (neededCopy)
    {
      [(PHFetchResult *)v22 setRegisteredForChangeNotificationDeltas:1];
    }
  }

  else
  {
    v33 = oidsCopy;
  }

  return v22;
}

- (PHManualFetchResult)initWithObjects:(id)objects photoLibrary:(id)library fetchType:(id)type fetchPropertySets:(id)sets identifier:(id)identifier registerIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v65 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  libraryCopy = library;
  typeCopy = type;
  setsCopy = sets;
  identifierCopy = identifier;
  v63.receiver = self;
  v63.super_class = PHManualFetchResult;
  v20 = [(PHFetchResult *)&v63 init];
  if (!v20)
  {
    goto LABEL_30;
  }

  v53 = a2;
  v57 = neededCopy;
  v21 = [objectsCopy copy];
  objects = v20->_objects;
  v20->_objects = v21;

  v58 = typeCopy;
  v23 = [typeCopy copy];
  fetchType = v20->super._fetchType;
  v20->super._fetchType = v23;

  v56 = setsCopy;
  v25 = [setsCopy copy];
  fetchPropertySets = v20->super._fetchPropertySets;
  v20->super._fetchPropertySets = v25;

  v27 = libraryCopy;
  v28 = v27;
  if (!v27)
  {
    firstObject = [objectsCopy firstObject];
    v28 = [PHFetchOptions effectivePhotoLibraryForFetchOptions:0 object:firstObject];
  }

  v55 = v28;
  objc_storeStrong(&v20->_photoLibrary, v28);
  firstObject2 = [objectsCopy firstObject];
  v31 = firstObject2;
  v54 = libraryCopy;
  if (firstObject2)
  {
    photoLibrary = [firstObject2 photoLibrary];
    if (photoLibrary != v27)
    {
      photoLibrary2 = [v31 photoLibrary];
      v34 = [photoLibrary2 description];
      if ([v34 containsString:@"Mock"])
      {
        photoLibrary3 = [v31 photoLibrary];
        photoLibraryURL = [photoLibrary3 photoLibraryURL];
        path = [photoLibraryURL path];
        photoLibraryURL2 = [v27 photoLibraryURL];
        [photoLibraryURL2 path];
        v51 = photoLibrary2;
        v38 = v37 = objectsCopy;
        v49 = [path compare:v38];

        objectsCopy = v37;
        libraryCopy = v54;

        if (!v49)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      photoLibrary = [MEMORY[0x1E696AAA8] currentHandler];
      [photoLibrary handleFailureInMethod:v53 object:v20 file:@"PHManualFetchResult.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"firstObject == nil || firstObject.photoLibrary == photoLibrary || ([firstObject.photoLibrary.description containsString:@Mock] && [firstObject.photoLibrary.photoLibraryURL.path compare:photoLibrary.photoLibraryURL.path] == NSOrderedSame)"}];
    }
  }

LABEL_12:
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(NSArray *)v20->_objects isFullyBackedByObjectIDs])
  {
    objectIDs = [(NSArray *)v20->_objects objectIDs];
  }

  else
  {
    objectIDs = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{-[NSArray count](v20->_objects, "count")}];
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

          objectID = [*(*(&v59 + 1) + 8 * i) objectID];
          if (objectID)
          {
            [(NSOrderedSet *)objectIDs addObject:objectID];
          }
        }

        v42 = [(NSArray *)v40 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v42);
    }

    libraryCopy = v54;
  }

  objectIDs = v20->_objectIDs;
  v20->_objectIDs = objectIDs;

  setsCopy = v56;
  if (!identifierCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifierCopy = [uUID UUIDString];
  }

  objc_storeStrong(&v20->_identifier, identifierCopy);
  typeCopy = v58;
  if (v57)
  {
    [(PHFetchResult *)v20 setRegisteredForChangeNotificationDeltas:1];
  }

LABEL_30:
  return v20;
}

+ (id)emptyFetchResultWithPhotoLibrary:(id)library fetchType:(id)type
{
  typeCopy = type;
  libraryCopy = library;
  v8 = [self alloc];
  v9 = [v8 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:libraryCopy fetchType:typeCopy fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v9;
}

+ (id)emptyFetchResultWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v5 = [self alloc];
  v6 = [v5 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:libraryCopy fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v6;
}

@end
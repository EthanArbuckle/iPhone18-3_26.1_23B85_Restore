@interface NSDictionaryStoreMap
- (NSDictionaryStoreMap)initWithStore:(id)store fromArchivedData:(id)data;
- (NSDictionaryStoreMap)initWithStore:(id)store fromPath:(id)path;
- (id)handleFetchRequest:(id)request;
- (id)retainedObjectIDsForRelationship:(id)relationship forObjectID:(id)d;
- (uint64_t)_archivedData;
- (void)addObject:(id)object objectIDMap:(id)map;
- (void)dealloc;
- (void)removeObject:(id)object objectIDMap:(id)map;
- (void)saveToPath:(uint64_t)path;
- (void)updateObject:(id)object objectIDMap:(id)map;
@end

@implementation NSDictionaryStoreMap

- (NSDictionaryStoreMap)initWithStore:(id)store fromPath:(id)path
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = NSDictionaryStoreMap;
  v6 = [(NSPersistentStoreMap *)&v24 initWithStore:?];
  if (v6)
  {
    if (path)
    {
      v7 = objc_alloc_init(NSBinaryObjectStoreFile);
      v7->_storeOptions = [objc_msgSend(store "options")];
      v23 = 0;
      if (![(NSBinaryObjectStoreFile *)v7 readFromFile:path error:&v23])
      {

        v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:v23 forKey:*MEMORY[0x1E696AA08]];
        v18 = [_NSCoreDataException exceptionWithName:259 code:@"Can't read binary data from file" reason:v17 userInfo:?];
        objc_exception_throw(v18);
      }

      if (v7->_databaseVersion != 134481920)
      {

        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't load binary data from file (file was created by an incompatible version of CoreData)" userInfo:0]);
      }

      [(NSPersistentStoreMap *)v6 _setMetadata:?];
      v6->super._nextPK64 = v7->_primaryKeyGeneration;
      v8 = v7->_mapData;
      v6->_theMap = v8;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      allValues = [(NSMutableDictionary *)v8 allValues];
      v10 = [allValues countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v10)
      {
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(allValues);
            }

            [(NSStoreMapNode *)*(*(&v19 + 1) + 8 * v12++) _setMap:v6];
          }

          while (v10 != v12);
          v10 = [allValues countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v6->_theMap = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1024];
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{+[_PFRoutines _getUUID](), @"NSStoreUUID", @"Binary", @"NSStoreType", 0}];
      v14 = [(NSPersistentStoreMap *)v6 _updatedMetadataWithSeed:v13 includeVersioning:1];
      [(NSPersistentStoreMap *)v6 _setMetadata:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSDictionaryStoreMap)initWithStore:(id)store fromArchivedData:(id)data
{
  v41[1] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = NSDictionaryStoreMap;
  v6 = [(NSPersistentStoreMap *)&v36 initWithStore:?];
  if (v6)
  {
    if (data)
    {
      options = [store options];
      v8 = options;
      if (byte_1ED4BEEC4 == 1)
      {
        v9 = [options objectForKey:@"_NSBinaryStoreInsecureDecodingCompatibilityOption"];
        if (v9)
        {
          v10 = [v9 BOOLValue] ^ 1;
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }

      error = 0;
      v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:data error:&error];
      if (error)
      {
        code = [error code];
        v40 = *MEMORY[0x1E696AA08];
        v41[0] = error;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
        v26 = [_NSCoreDataException exceptionWithName:code code:@"Keyed archiver failure" reason:v25 userInfo:?];
        objc_exception_throw(v26);
      }

      v12 = +[NSBinaryObjectStore _classesForPropertyValues];
      if (v10)
      {
        [v11 setRequiresSecureCoding:1];
        [v11 _allowDecodingCyclesInSecureMode];
        v13 = [v8 objectForKey:@"NSBinaryStoreSecureDecodingClasses"];
        if (v13)
        {
          v12 = [v12 mutableCopy];
          [v12 unionSet:v13];
        }
      }

      else
      {
        [v11 setRequiresSecureCoding:0];
      }

      [v11 setDecodingFailurePolicy:1];
      if ([v11 decodeIntForKey:@"_NSStoreMapArchiveVersion"] != 134481920)
      {
        v27 = [_NSCoreDataException exceptionWithName:262 code:@"Can't load data from archived data (archived data was created by an incompatible version of CoreData)" reason:0 userInfo:?];
        objc_exception_throw(v27);
      }

      v14 = [v11 decodeObjectOfClasses:v12 forKey:@"_NSStoreMapArchiveMetadata"];
      if (v14)
      {
        v15 = [(NSPersistentStoreMap *)v6 _updatedMetadataWithSeed:v14 includeVersioning:1];
        [(NSPersistentStoreMap *)v6 _setMetadata:v15];
      }

      unsignedLongLongValue = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"_NSStoreMapArchiveNextPK"];
      if (unsignedLongLongValue)
      {
        unsignedLongLongValue = [unsignedLongLongValue unsignedLongLongValue];
      }

      v6->super._nextPK64 = unsignedLongLongValue;
      v17 = [v11 decodeObjectOfClasses:v12 forKey:@"_NSStoreMapArchiveData"];
      v6->_theMap = v17;
      if (v17)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        allValues = [(NSMutableDictionary *)v17 allValues];
        v19 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v19)
        {
          v20 = *v32;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v32 != v20)
              {
                objc_enumerationMutation(allValues);
              }

              [(NSStoreMapNode *)*(*(&v31 + 1) + 8 * i) _setMap:v6];
            }

            v19 = [allValues countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v19);
        }
      }

      if ([v11 error])
      {
        error = [v11 error];
        code2 = [error code];
        v37 = *MEMORY[0x1E696AA08];
        v38 = error;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v30 = [_NSCoreDataException exceptionWithName:code2 code:@"Keyed archiver failure" reason:v29 userInfo:?];
        objc_exception_throw(v30);
      }

      [v11 finishDecoding];

      if (error)
      {

        v6 = 0;
      }
    }

    else
    {
      v6->_theMap = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1024];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)saveToPath:(uint64_t)path
{
  if (!path)
  {
    return;
  }

  v25 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringByDeletingLastPathComponent = [a2 stringByDeletingLastPathComponent];
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v25] & 1) == 0)
  {
    v10 = [_NSCoreDataException alloc];
    v11 = *MEMORY[0x1E695D940];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Directory does not exist : %@", stringByDeletingLastPathComponent];
LABEL_10:
    v13 = v12;
    v14 = v10;
    v15 = v11;
    v16 = 514;
    v17 = 0;
    goto LABEL_11;
  }

  if ((v25 & 1) == 0)
  {
    v10 = [_NSCoreDataException alloc];
    v11 = *MEMORY[0x1E695D940];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not a directory : %@", stringByDeletingLastPathComponent];
    goto LABEL_10;
  }

  v6 = objc_alloc_init(NSBinaryObjectStoreFile);
  v6->_storeOptions = [objc_msgSend(*(path + 8) "options")];
  v6->_databaseVersion = 134481920;
  v7 = *(path + 24);
  if (v6->_fullMetadata != v7)
  {
    v8 = [(NSDictionary *)v7 copy];

    v6->_fullMetadata = v8;
  }

  v6->_primaryKeyGeneration = *(path + 32);
  [(NSXPCStoreServerConnectionContext *)v6 setActiveStore:?];
  v24 = 0;
  v9 = [(NSBinaryObjectStoreFile *)v6 writeToFile:a2 error:&v24];

  if ((v9 & 1) == 0)
  {
    if (v24)
    {
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:v24 forKey:*MEMORY[0x1E696AA08]];
      v20 = v24;
      if (v24)
      {
LABEL_16:
        if ([v20 code] != 513)
        {
          v23 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D940], [v24 code], @"Binary store save failed.", v19);
          -[_NSCoreDataException _setDomain:](v23, [v24 domain]);
          objc_exception_throw(v23);
        }

        v21 = [_NSCoreDataException alloc];
        v22 = *MEMORY[0x1E695D940];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Directory is not writable : %@", stringByDeletingLastPathComponent];
        v14 = v21;
        v15 = v22;
        v16 = 513;
        v17 = v19;
LABEL_11:
        v18 = [(_NSCoreDataException *)v14 initWithName:v15 code:v16 reason:v13 userInfo:v17];
        objc_exception_throw(v18);
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
    v24 = v20;
    goto LABEL_16;
  }
}

- (void)dealloc
{
  self->_theMap = 0;
  v3.receiver = self;
  v3.super_class = NSDictionaryStoreMap;
  [(NSPersistentStoreMap *)&v3 dealloc];
}

- (void)addObject:(id)object objectIDMap:(id)map
{
  objectCopy = object;
  v53 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v46 = 0;
    goto LABEL_41;
  }

  entity = [object entity];
  objectID = [object objectID];
  objectCopy2 = object;
  if (!object)
  {
    v39 = MEMORY[0x1E695DF30];
    v40 = *MEMORY[0x1E695D940];
    v41 = @"Can't construct a node from nil.";
    goto LABEL_50;
  }

  v10 = objectID;
  if ([objectID isTemporaryID])
  {
    v10 = [map objectForKey:v10];
  }

  if (!entity)
  {
    v39 = MEMORY[0x1E695DF30];
    v40 = *MEMORY[0x1E695D930];
    v41 = @"Can't find entity for object";
LABEL_50:
    objc_exception_throw([v39 exceptionWithName:v40 reason:v41 userInfo:0]);
  }

  v11 = *(entity + 112);
  v45 = [objc_msgSend(entity "propertiesByName")];
  v12 = PF_CALLOC_OBJECT_ARRAY([*(entity + 104) length]);
  if ([object isFault])
  {
    [object willAccessValueForKey:0];
  }

  v47 = _kvcPropertysPrimitiveGetters(entity);
  v46 = [[NSDictionaryMapNode alloc] initWithValues:v12 objectID:v10];
  [(NSStoreMapNode *)v46 _setMap:?];
  v14 = v11[6];
  v13 = v11[7];
  objectCopy = objectCopy2;
  if (v14 < v13 + v14)
  {
    do
    {
      _PF_Handler_Primitive_GetProperty(objectCopy2, v14, 0, *(v47 + 8 * v14));
      if (v15)
      {
        v12[v14] = v15;
      }

      ++v14;
      --v13;
    }

    while (v13);
  }

  v16 = v11[12];
  v17 = v11[13];
  v18 = v45;
  if (v16 < v17 + v16)
  {
    do
    {
      name = [*(v18 + 8 * v16) name];
      _PF_Handler_Primitive_GetProperty(objectCopy2, v16, name, *(v47 + 8 * v16));
      if (v20)
      {
        v21 = v20;
        if ([(NSManagedObject *)v20 _isValidRelationshipDestination__])
        {
          objectID2 = [v21 objectID];
          if ([objectID2 isTemporaryID])
          {
            objectID2 = [map objectForKey:objectID2];
          }

          if ([objectID2 persistentStore] != self->super._store)
          {
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objectCopy2, @"Source object", v21, @"Destination Object", *(v45 + 8 * v16), @"Relationship", 0}];

LABEL_45:
            v38 = [_NSCoreDataException exceptionWithName:133010 code:@"CoreData does not support persistent cross-store relationships" reason:v37 userInfo:?];
            objc_exception_throw(v38);
          }

          v23 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{objc_msgSend(objectID2, "_referenceData"), 0}];
          if (v46)
          {
            [(NSMutableDictionary *)v46->super._relatedNodes setObject:v23 forKey:name];
          }

          v18 = v45;
        }
      }

      ++v16;
      --v17;
    }

    while (v17);
  }

  v24 = v11[18];
  v44 = v11[19] + v24;
  if (v24 < v44)
  {
    do
    {
      name2 = [*(v18 + 8 * v24) name];
      _PF_Handler_Primitive_GetProperty(objectCopy, v24, name2, *(v47 + 8 * v24));
      if (v26)
      {
        v27 = v26;
        v43 = name2;
        v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v26, "count")}];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v29 = [v27 countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v49;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v49 != v31)
              {
                objc_enumerationMutation(v27);
              }

              v33 = *(*(&v48 + 1) + 8 * i);
              if ([(NSManagedObject *)v33 _isValidRelationshipDestination__])
              {
                objectID3 = [v33 objectID];
                if ([objectID3 isTemporaryID])
                {
                  objectID3 = [map objectForKey:objectID3];
                }

                if ([objectID3 persistentStore] != self->super._store)
                {
                  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objectCopy2, @"Source object", v33, @"Destination Object", *(v45 + 8 * v24), @"Relationship", 0}];

                  goto LABEL_45;
                }

                [v28 addObject:{objc_msgSend(objectID3, "_referenceData")}];
              }
            }

            v30 = [v27 countByEnumeratingWithState:&v48 objects:v52 count:16];
          }

          while (v30);
        }

        v35 = [v28 count];
        if (v46 && v35)
        {
          [(NSMutableDictionary *)v46->super._relatedNodes setObject:v28 forKey:v43];
        }

        objectCopy = objectCopy2;
        v18 = v45;
      }

      ++v24;
    }

    while (v24 != v44);
  }

LABEL_41:
  -[NSMutableDictionary setObject:forKey:](self->_theMap, "setObject:forKey:", v46, [objc_msgSend(objectCopy "objectID")]);
  [(NSStoreMapNode *)v46 _setVersionNumber:1];
  v36 = *MEMORY[0x1E69E9840];
}

- (void)removeObject:(id)object objectIDMap:(id)map
{
  v5 = [objc_msgSend(object "objectID")];
  theMap = self->_theMap;

  [(NSMutableDictionary *)theMap removeObjectForKey:v5];
}

- (void)updateObject:(id)object objectIDMap:(id)map
{
  entity = [object entity];
  if (entity)
  {
    v8 = entity[14];
  }

  else
  {
    v8 = 0;
  }

  v9 = _kvcPropertysPrimitiveGetters(entity);
  v10 = v8[18];
  v11 = v8[19];
  if (v10 < v11 + v10)
  {
    do
    {
      _PF_Handler_Primitive_GetProperty(object, v10, 0, *(v9 + 8 * v10));
      [v12 count];
      ++v10;
      --v11;
    }

    while (v11);
  }

  v13 = v8[26];
  v14 = v8[27];
  if (v13 < v14 + v13)
  {
    do
    {
      _PF_Handler_Primitive_GetProperty(object, v13, 0, *(v9 + 8 * v13));
      [v15 count];
      ++v13;
      --v14;
    }

    while (v14);
  }

  v16 = [objc_msgSend(object "objectID")];
  v17 = [-[NSMutableDictionary objectForKey:](self->_theMap objectForKey:{v16), "_versionNumber"}];
  [(NSDictionaryStoreMap *)self removeObject:object objectIDMap:map];
  [(NSDictionaryStoreMap *)self addObject:object objectIDMap:map];
  v18 = [(NSMutableDictionary *)self->_theMap objectForKey:v16];

  [v18 _setVersionNumber:(v17 + 1)];
}

- (id)retainedObjectIDsForRelationship:(id)relationship forObjectID:(id)d
{
  v5 = [-[NSMutableDictionary objectForKey:](self->_theMap objectForKey:{objc_msgSend(d, "_referenceData")), "destinationsForRelationship:", objc_msgSend(relationship, "name")}];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 count];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = -[NSMutableDictionary objectForKey:](self->_theMap, "objectForKey:", [v6 objectAtIndex:i]);
      if (v10)
      {
        [v8 addObject:{objc_msgSend(v10, "objectID")}];
      }
    }
  }

  return v8;
}

- (id)handleFetchRequest:(id)request
{
  v32 = *MEMORY[0x1E69E9840];
  allValues = [(NSMutableDictionary *)self->_theMap allValues];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allValues, "count")}];
  entity = [request entity];
  predicate = [request predicate];
  fetchLimit = [request fetchLimit];
  v26 = fetchLimit;
  if ([request sortDescriptors])
  {
    v9 = 1;
  }

  else
  {
    v9 = fetchLimit == 0;
  }

  v10 = !v9;
  includesSubentities = [request includesSubentities];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = allValues;
  v13 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
LABEL_9:
    v16 = 0;
    while (1)
    {
      if (*v28 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v27 + 1) + 8 * v16);
      entity2 = [v17 entity];
      if ((entity == entity2 || includesSubentities && [entity _subentitiesIncludes:entity2]) && (!predicate || objc_msgSend(predicate, "evaluateWithObject:", v17)))
      {
        [v5 addObject:v17];
      }

      if (v10 && [v5 count] > v26)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v14)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  sortDescriptors = [v25 sortDescriptors];
  if (sortDescriptors)
  {
    [v5 sortUsingDescriptors:sortDescriptors];
  }

  v20 = [v5 count];
  if (v20)
  {
    v21 = v20;
    for (i = 0; i != v21; ++i)
    {
      [v5 replaceObjectAtIndex:i withObject:{objc_msgSend(objc_msgSend(v5, "objectAtIndex:", i), "objectID")}];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)_archivedData
{
  if (!self)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DF88] dataWithCapacity:1024];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initForWritingWithMutableData:v2];
  [v3 encodeInt:134481920 forKey:@"_NSStoreMapArchiveVersion"];
  [v3 encodeObject:self[3] forKey:@"_NSStoreMapArchiveMetadata"];
  [v3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self[4]), @"_NSStoreMapArchiveNextPK"}];
  [v3 encodeObject:self[6] forKey:@"_NSStoreMapArchiveData"];
  [v3 finishEncoding];

  return v2;
}

@end
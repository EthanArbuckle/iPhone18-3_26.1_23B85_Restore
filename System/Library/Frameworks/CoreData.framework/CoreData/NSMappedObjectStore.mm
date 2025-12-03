@interface NSMappedObjectStore
+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
+ (id)metadataForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
- (NSMappedObjectStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options;
- (id)_rawMetadata__;
- (id)executeRequest:(id)request withContext:(id)context error:(id *)error;
- (id)getNewIDForObject:(id *)result;
- (id)metadata;
- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)obtainPermanentIDsForObjects:(id)objects error:(id *)error;
- (void)_setMap:(void *)result;
- (void)dealloc;
- (void)executeFetchRequest:(void *)request withContext:;
- (void)saveDocumentToPath:(id)path;
- (void)setMetadata:(id)metadata;
@end

@implementation NSMappedObjectStore

+ (id)metadataForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSMappedObjectStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  managedObjectModel = [coordinator managedObjectModel];
  v8 = [managedObjectModel countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(managedObjectModel);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v46;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v46 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v45 + 1) + 8 * j);
              _propertyType = [v17 _propertyType];
              switch(_propertyType)
              {
                case 2:
                  if ([v17 attributeType] == 1000 && objc_msgSend(v17, "isFileBackedFuture"))
                  {

                    v32 = MEMORY[0x1E695DF30];
                    v33 = *MEMORY[0x1E695D940];
                    v34 = @"Core Data provided atomic stores do not support file backed futures";
LABEL_35:
                    objc_exception_throw([v32 exceptionWithName:v33 reason:v34 userInfo:0]);
                  }

                  break;
                case 6:

                  v32 = MEMORY[0x1E695DF30];
                  v33 = *MEMORY[0x1E695D940];
                  v34 = @"Core Data provided atomic stores do not support derived properties";
                  goto LABEL_35;
                case 7:

                  v32 = MEMORY[0x1E695DF30];
                  v33 = *MEMORY[0x1E695D940];
                  v34 = @"Core Data provided atomic stores do not support composite attributes";
                  goto LABEL_35;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v14);
        }
      }

      v9 = [managedObjectModel countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v9);
  }

  v44.receiver = self;
  v44.super_class = NSMappedObjectStore;
  v19 = [(NSPersistentStore *)&v44 initWithPersistentStoreCoordinator:coordinator configurationName:name URL:l options:options];
  v20 = v19;
  if (v19)
  {
    v21 = [objc_msgSend(-[NSPersistentStore _persistentStoreCoordinator](v19 "_persistentStoreCoordinator")];
    v22 = *MEMORY[0x1E695E9F8];
    callBacks.retain = 0;
    callBacks.release = 0;
    callBacks.version = v22;
    *&callBacks.copyDescription = *(MEMORY[0x1E695E9F8] + 24);
    callBacks.hash = *(MEMORY[0x1E695E9F8] + 40);
    v20->_entitiesToFetch = CFSetCreateMutable(0, [v21 count], &callBacks);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = [v21 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v39 + 1) + 8 * k);
          [(NSSet *)v20->_entitiesToFetch addObject:v27];
          -[NSSet addObjectsFromArray:](v20->_entitiesToFetch, "addObjectsFromArray:", [v27 subentities]);
          superentity = [v27 superentity];
          if (superentity)
          {
            superentity2 = superentity;
            do
            {
              [(NSSet *)v20->_entitiesToFetch addObject:superentity2];
              superentity2 = [superentity2 superentity];
            }

            while (superentity2);
          }
        }

        v24 = [v21 countByEnumeratingWithState:&v39 objects:v53 count:16];
      }

      while (v24);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)dealloc
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);

  self->_theMap = 0;
  entitiesToFetch = self->_entitiesToFetch;
  if (entitiesToFetch)
  {
    CFRelease(entitiesToFetch);
  }

  [v3 drain];
  v5.receiver = self;
  v5.super_class = NSMappedObjectStore;
  [(NSPersistentStore *)&v5 dealloc];
}

- (void)_setMap:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[13];
    if (v4 != a2)
    {

      result = a2;
      v3[13] = result;
    }
  }

  return result;
}

- (void)saveDocumentToPath:(id)path
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)executeRequest:(id)request withContext:(id)context error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  if (!request)
  {
    goto LABEL_71;
  }

  requestType = [request requestType];
  if (requestType > 2)
  {
    if (requestType != 3)
    {
      if (requestType == 8)
      {
        if (error)
        {
          v10 = MEMORY[0x1E696ABC0];
          v11 = *MEMORY[0x1E696A250];
          v12 = &unk_1EF4351C0;
          goto LABEL_58;
        }

LABEL_64:
        result = 0;
        goto LABEL_70;
      }

      if (requestType == 10)
      {
        if (error)
        {
          v10 = MEMORY[0x1E696ABC0];
          v11 = *MEMORY[0x1E696A250];
          v12 = &unk_1EF4351E8;
LABEL_58:
          v39 = [v10 errorWithDomain:v11 code:134091 userInfo:v12];
          result = 0;
          *error = v39;
LABEL_70:
          v47 = *MEMORY[0x1E69E9840];
          return result;
        }

        goto LABEL_64;
      }

LABEL_71:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Unknown command type %@", context, error, request), 0}]);
    }

    goto LABEL_60;
  }

  if (requestType != 1)
  {
    if (requestType != 2)
    {
      goto LABEL_71;
    }

    if (!self)
    {
      goto LABEL_64;
    }

    if ([(NSSaveChangesRequest *)request hasChanges]|| (v13 = atomic_load(&self->super._isMetadataDirty), (v13 & 1) != 0))
    {
      contextCopy = context;
      requestCopy = request;
      insertedObjects = [request insertedObjects];
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(insertedObjects, "count")}];
      v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(insertedObjects, "count")}];
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(insertedObjects, "count")}];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v17 = [insertedObjects countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v17)
      {
        v18 = *v64;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v64 != v18)
            {
              objc_enumerationMutation(insertedObjects);
            }

            v20 = *(*(&v63 + 1) + 8 * i);
            objectID = [v20 objectID];
            if ([objectID isTemporaryID])
            {
              v22 = [(NSMappedObjectStore *)&self->super.super.isa getNewIDForObject:v20];
              [v15 setObject:v22 forKey:objectID];
              [v50 addObject:v20];
              [v16 addObject:v22];
            }
          }

          v17 = [insertedObjects countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v17);
      }

      if ([v50 count])
      {
        v23 = [(NSManagedObjectContext *)contextCopy _changeIDsForManagedObjects:v50 toIDs:v16];
        if (v23)
        {
          [(NSSaveChangesRequest *)requestCopy _addChangedObjectIDsNotification:v23];
        }
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v24 = [insertedObjects countByEnumeratingWithState:&v59 objects:v69 count:16];
      if (v24)
      {
        v25 = *v60;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v60 != v25)
            {
              objc_enumerationMutation(insertedObjects);
            }

            v27 = *(*(&v59 + 1) + 8 * j);
            if (v27)
            {
              [(NSPersistentStoreMap *)self->_theMap addObject:v27 objectIDMap:v15];
            }
          }

          v24 = [insertedObjects countByEnumeratingWithState:&v59 objects:v69 count:16];
        }

        while (v24);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      deletedObjects = [requestCopy deletedObjects];
      v29 = [deletedObjects countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v29)
      {
        v30 = *v56;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v56 != v30)
            {
              objc_enumerationMutation(deletedObjects);
            }

            v32 = *(*(&v55 + 1) + 8 * k);
            if (v32)
            {
              [(NSPersistentStoreMap *)self->_theMap removeObject:v32 objectIDMap:v15];
            }
          }

          v29 = [deletedObjects countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v29);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      updatedObjects = [requestCopy updatedObjects];
      v34 = [updatedObjects countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (v34)
      {
        v35 = *v52;
        do
        {
          for (m = 0; m != v34; ++m)
          {
            if (*v52 != v35)
            {
              objc_enumerationMutation(updatedObjects);
            }

            v37 = *(*(&v51 + 1) + 8 * m);
            if (v37)
            {
              [(NSPersistentStoreMap *)self->_theMap updateObject:v37 objectIDMap:v15];
            }
          }

          v34 = [updatedObjects countByEnumeratingWithState:&v51 objects:v67 count:16];
        }

        while (v34);
      }

      v38 = [(NSPersistentStore *)self URL];
      if (v38)
      {
        [(NSMappedObjectStore *)self saveDocumentToPath:[(NSURL *)v38 path]];
      }

      [(NSPersistentStore *)self _setMetadataDirty:0];
    }

    goto LABEL_69;
  }

  if ([request resultType] != 4)
  {
    if (-[NSSet containsObject:](self->_entitiesToFetch, "containsObject:", [request entity]))
    {
      v46 = *MEMORY[0x1E69E9840];

      return [(NSMappedObjectStore *)self executeFetchRequest:request withContext:context];
    }

LABEL_69:
    result = NSArray_EmptyArray;
    goto LABEL_70;
  }

LABEL_60:
  if (!self)
  {
    goto LABEL_64;
  }

  v41 = [request copy];
  [v41 setPredicate:{-[_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:](+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper, "defaultInstance"), "createPredicateForFetchFromPredicate:", objc_msgSend(v41, "predicate"))}];
  v42 = [-[NSPersistentStoreMap handleFetchRequest:](self->_theMap handleFetchRequest:{v41), "count"}];
  v43 = MEMORY[0x1E695DEC8];
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v42];
  v45 = *MEMORY[0x1E69E9840];

  return [v43 arrayWithObject:v44];
}

- (void)executeFetchRequest:(void *)request withContext:
{
  v78 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (self)
  {
    v4 = a2;
    if ([a2 propertiesToGroupBy])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Unsupported fetch request: store %@ does not support GROUP BY", selfCopy), 0}]);
    }

    v5 = -[_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:](+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper, "defaultInstance"), "createPredicateForFetchFromPredicate:", [v4 predicate]);
    v6 = *(selfCopy + 48);
    v7 = [v4 copy];
    [v7 setPredicate:v5];
    v8 = [*(selfCopy + 104) handleFetchRequest:v7];
    resultType = [v4 resultType];
    resultType2 = [v4 resultType];
    includesPropertyValues = [v4 includesPropertyValues];
    returnsObjectsAsFaults = [v4 returnsObjectsAsFaults];
    v13 = [v8 count];
    v64 = v13;
    if (resultType)
    {
      if (resultType2 != 2)
      {
        v14 = v64;
        goto LABEL_71;
      }

      v63 = &v61;
      v14 = v64;
      MEMORY[0x1EEE9AC00](v13);
      v17 = &v61 - v16;
      if (v14 > 0x200)
      {
        v17 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v61 - v16, 8 * v15);
      }

      [v8 getObjects:v17 range:{0, v14}];
      propertiesToFetch = [v4 propertiesToFetch];
      if (!propertiesToFetch)
      {
        entity = [v4 entity];
        if (entity)
        {
          v31 = entity[14];
        }

        else
        {
          v31 = 0;
        }

        v32 = [objc_msgSend(entity "propertiesByName")];
        propertiesToFetch = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v32 + 8 * *(v31 + 48) count:*(v31 + 56) + *(v31 + 48)];
      }

      v33 = [propertiesToFetch count];
      v34 = MEMORY[0x1EEE9AC00](v33);
      v37 = 8 * v36;
      v62 = v34;
      if (v34 > 0x200)
      {
        v67 = NSAllocateScannedUncollectable();
        v70 = NSAllocateScannedUncollectable();
      }

      else
      {
        v67 = (&v61 - v35);
        bzero(&v61 - v35, v37);
        MEMORY[0x1EEE9AC00](v38);
        v70 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v70, v37);
      }

      v66 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v65 = objc_opt_class();
      if (!v14)
      {
        v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v17 count:0];
        goto LABEL_68;
      }

      v61 = v4;
      v72 = 0;
      v39 = 0;
      v68 = propertiesToFetch;
      while (1)
      {
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        v73 = 0u;
        v40 = [propertiesToFetch countByEnumeratingWithState:&v73 objects:v77 count:{16, v61}];
        if (!v40)
        {
          goto LABEL_60;
        }

        v41 = 0;
        v69 = *v74;
        do
        {
          v42 = 0;
          v43 = v41 << 32;
          v41 = v41;
          do
          {
            if (*v74 != v69)
            {
              objc_enumerationMutation(v68);
            }

            v44 = *(*(&v73 + 1) + 8 * v42);
            v45 = v17;
            v46 = [*(selfCopy + 104) dataForKey:{objc_msgSend(*&v17[8 * v72], "_referenceData")}];
            _propertyType = [v44 _propertyType];
            name = [v44 name];
            if (_propertyType != 5)
            {
              if (_propertyType == 4)
              {
                v49 = [objc_msgSend(v46 valueForKey:{name), "objectID"}];
LABEL_44:
                lastObject = v49;
              }

              else
              {
                if (_propertyType == 2)
                {
                  v49 = [v46 valueForKey:name];
                  goto LABEL_44;
                }

                lastObject = 0;
              }

              v17 = v45;
              goto LABEL_51;
            }

            expression = [v44 expression];
            lastObject = [expression expressionValueWithObject:v46 context:v66];
            if ([expression expressionType] == 50)
            {
              v17 = v45;
              if (([expression isCountOnlyRequest] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(expression, "requestExpression"), "expressionValueWithObject:context:", 0, 0), "resultType") == 4)
              {
                lastObject = [lastObject lastObject];
              }
            }

            else
            {
              v17 = v45;
            }

            if (objc_opt_isKindOfClass())
            {
              lastObject = [lastObject objectID];
            }

LABEL_51:
            if (!v39)
            {
              v67[v41] = name;
            }

            *&v70[8 * v41++] = lastObject;
            ++v42;
            v43 += 0x100000000;
          }

          while (v40 != v42);
          propertiesToFetch = v68;
          v52 = [v68 countByEnumeratingWithState:&v73 objects:v77 count:16];
          v40 = v52;
        }

        while (v52);
        v40 = v43 >> 32;
        v14 = v64;
LABEL_60:
        if (!v39)
        {
          v53 = [NSKnownKeysMappingStrategy alloc];
          v39 = [(NSKnownKeysMappingStrategy *)v53 initForKeys:v67 count:v40];
        }

        v54 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v39];
        v55 = v72;
        *&v17[8 * v72] = v54;
        [(NSKnownKeysDictionary *)v54 setValues:v70];
        v72 = v55 + 1;
        if (v55 + 1 == v14)
        {
          v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v17 count:v14];
          v56 = 0;
          do
          {
          }

          while (v14 != v56);

          v4 = v61;
          if (v14 >= 0x201)
          {
            NSZoneFree(0, v17);
          }

LABEL_68:
          if (v62 >= 0x201)
          {
            NSZoneFree(0, v67);
            NSZoneFree(0, v70);
          }

          goto LABEL_71;
        }
      }
    }

    v63 = &v61;
    v18 = MEMORY[0x1EEE9AC00](v13);
    v21 = &v61 - v20;
    v14 = v18;
    if (v18 >= 0x201)
    {
      v22 = v4;
      v21 = NSAllocateScannedUncollectable();
      [v8 getObjects:v21 range:{0, v14}];
    }

    else
    {
      bzero(&v61 - v20, 8 * v19);
      [v8 getObjects:v21 range:{0, v14}];
      if (!v14)
      {
        v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v21 count:0];
        goto LABEL_71;
      }

      v22 = v4;
    }

    v23 = 0;
    v24 = includesPropertyValues ^ 1 | returnsObjectsAsFaults;
    do
    {
      v25 = *&v21[8 * v23];
      v26 = [NSManagedObjectContext _retainedObjectWithID:request optionalHandler:v25 withInlineStorage:v6];
      if ((v24 & 1) == 0)
      {
        v27 = [*(selfCopy + 104) dataForKey:{objc_msgSend(v25, "_referenceData")}];
        if (v26)
        {
          v26[4] |= 0x200u;
        }

        _PFFaultHandlerFulfillFault(v6, v26, request, v27, 1);
        v14 = v64;
      }

      *&v21[8 * v23++] = v26;
    }

    while (v14 != v23);
    v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v21 count:v14];
    v28 = 0;
    do
    {
    }

    while (v14 != v28);
    v4 = v22;
    if (v14 >= 0x201)
    {
      NSZoneFree(0, v21);
    }

LABEL_71:
    fetchOffset = [v4 fetchOffset];
    if (fetchOffset)
    {
      if (fetchOffset <= v14)
      {
        [v8 removeObjectsInRange:0];
      }

      else
      {
        [v8 removeAllObjects];
      }

      v14 = [v8 count];
    }

    fetchLimit = [v4 fetchLimit];
    if (fetchLimit && v14 > fetchLimit)
    {
      [v8 removeObjectsInRange:{fetchLimit, v14 - fetchLimit}];
    }
  }

  else
  {
    v8 = 0;
  }

  v59 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)getNewIDForObject:(id *)result
{
  if (result)
  {
    v3 = result;
    nextPK64 = [result[13] nextPK64];
    v5 = [v3 objectIDFactoryForEntity:{objc_msgSend(a2, "entity")}];
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:nextPK64];
    v7 = [[v5 alloc] initWithObject:v6];

    return v7;
  }

  return result;
}

- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v5 = -[NSPersistentStoreMap dataForKey:](self->_theMap, "dataForKey:", [d _referenceData]);

  return v5;
}

- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  error = [(NSPersistentStoreMap *)self->_theMap retainedObjectIDsForRelationship:relationship forObjectID:d, context, error];
  if (([relationship isToMany] & 1) == 0)
  {
    lastObject = [error lastObject];
    v9 = lastObject;

    return lastObject;
  }

  return error;
}

- (id)obtainPermanentIDsForObjects:(id)objects error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [objects countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(objects);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objectID = [v11 objectID];
        if ([objectID isTemporaryID])
        {
          v13 = [(NSMappedObjectStore *)&self->super.super.isa getNewIDForObject:v11];
        }

        else
        {
          v13 = objectID;
        }

        v14 = v13;
        [array addObject:v13];
      }

      v8 = [objects countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
  return array;
}

- (id)_rawMetadata__
{
  theMap = self->_theMap;
  if (theMap)
  {
    return theMap->_storeMetadata;
  }

  else
  {
    return 0;
  }
}

- (id)metadata
{
  theMap = self->_theMap;
  if (theMap)
  {
    return theMap->_storeMetadata;
  }

  else
  {
    return 0;
  }
}

- (void)setMetadata:(id)metadata
{
  v5.receiver = self;
  v5.super_class = NSMappedObjectStore;
  [(NSPersistentStore *)&v5 setMetadata:?];
  [(NSPersistentStoreMap *)self->_theMap setMetadata:metadata];
}

@end
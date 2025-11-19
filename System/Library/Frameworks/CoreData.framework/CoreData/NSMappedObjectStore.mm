@interface NSMappedObjectStore
+ (BOOL)setMetadata:(id)a3 forPersistentStoreWithURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)metadataForPersistentStoreWithURL:(id)a3 options:(id)a4 error:(id *)a5;
- (NSMappedObjectStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6;
- (id)_rawMetadata__;
- (id)executeRequest:(id)a3 withContext:(id)a4 error:(id *)a5;
- (id)getNewIDForObject:(id *)result;
- (id)metadata;
- (id)newValueForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6;
- (id)newValuesForObjectWithID:(id)a3 withContext:(id)a4 error:(id *)a5;
- (id)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4;
- (void)_setMap:(void *)result;
- (void)dealloc;
- (void)executeFetchRequest:(void *)a3 withContext:;
- (void)saveDocumentToPath:(id)a3;
- (void)setMetadata:(id)a3;
@end

@implementation NSMappedObjectStore

+ (id)metadataForPersistentStoreWithURL:(id)a3 options:(id)a4 error:(id *)a5
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)setMetadata:(id)a3 forPersistentStoreWithURL:(id)a4 options:(id)a5 error:(id *)a6
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSMappedObjectStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = [a3 managedObjectModel];
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
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
          objc_enumerationMutation(v7);
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
              v18 = [v17 _propertyType];
              switch(v18)
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

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v9);
  }

  v44.receiver = self;
  v44.super_class = NSMappedObjectStore;
  v19 = [(NSPersistentStore *)&v44 initWithPersistentStoreCoordinator:a3 configurationName:a4 URL:a5 options:a6];
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
          v28 = [v27 superentity];
          if (v28)
          {
            v29 = v28;
            do
            {
              [(NSSet *)v20->_entitiesToFetch addObject:v29];
              v29 = [v29 superentity];
            }

            while (v29);
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

- (void)saveDocumentToPath:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (id)executeRequest:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v71 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_71;
  }

  v9 = [a3 requestType];
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 8)
      {
        if (a5)
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

      if (v9 == 10)
      {
        if (a5)
        {
          v10 = MEMORY[0x1E696ABC0];
          v11 = *MEMORY[0x1E696A250];
          v12 = &unk_1EF4351E8;
LABEL_58:
          v39 = [v10 errorWithDomain:v11 code:134091 userInfo:v12];
          result = 0;
          *a5 = v39;
LABEL_70:
          v47 = *MEMORY[0x1E69E9840];
          return result;
        }

        goto LABEL_64;
      }

LABEL_71:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Unknown command type %@", a4, a5, a3), 0}]);
    }

    goto LABEL_60;
  }

  if (v9 != 1)
  {
    if (v9 != 2)
    {
      goto LABEL_71;
    }

    if (!self)
    {
      goto LABEL_64;
    }

    if ([(NSSaveChangesRequest *)a3 hasChanges]|| (v13 = atomic_load(&self->super._isMetadataDirty), (v13 & 1) != 0))
    {
      v48 = a4;
      v49 = a3;
      v14 = [a3 insertedObjects];
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v17 = [v14 countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v17)
      {
        v18 = *v64;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v64 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v63 + 1) + 8 * i);
            v21 = [v20 objectID];
            if ([v21 isTemporaryID])
            {
              v22 = [(NSMappedObjectStore *)&self->super.super.isa getNewIDForObject:v20];
              [v15 setObject:v22 forKey:v21];
              [v50 addObject:v20];
              [v16 addObject:v22];
            }
          }

          v17 = [v14 countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v17);
      }

      if ([v50 count])
      {
        v23 = [(NSManagedObjectContext *)v48 _changeIDsForManagedObjects:v50 toIDs:v16];
        if (v23)
        {
          [(NSSaveChangesRequest *)v49 _addChangedObjectIDsNotification:v23];
        }
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v24 = [v14 countByEnumeratingWithState:&v59 objects:v69 count:16];
      if (v24)
      {
        v25 = *v60;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v60 != v25)
            {
              objc_enumerationMutation(v14);
            }

            v27 = *(*(&v59 + 1) + 8 * j);
            if (v27)
            {
              [(NSPersistentStoreMap *)self->_theMap addObject:v27 objectIDMap:v15];
            }
          }

          v24 = [v14 countByEnumeratingWithState:&v59 objects:v69 count:16];
        }

        while (v24);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v28 = [v49 deletedObjects];
      v29 = [v28 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v29)
      {
        v30 = *v56;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v56 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v55 + 1) + 8 * k);
            if (v32)
            {
              [(NSPersistentStoreMap *)self->_theMap removeObject:v32 objectIDMap:v15];
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v29);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v33 = [v49 updatedObjects];
      v34 = [v33 countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (v34)
      {
        v35 = *v52;
        do
        {
          for (m = 0; m != v34; ++m)
          {
            if (*v52 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v51 + 1) + 8 * m);
            if (v37)
            {
              [(NSPersistentStoreMap *)self->_theMap updateObject:v37 objectIDMap:v15];
            }
          }

          v34 = [v33 countByEnumeratingWithState:&v51 objects:v67 count:16];
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

  if ([a3 resultType] != 4)
  {
    if (-[NSSet containsObject:](self->_entitiesToFetch, "containsObject:", [a3 entity]))
    {
      v46 = *MEMORY[0x1E69E9840];

      return [(NSMappedObjectStore *)self executeFetchRequest:a3 withContext:a4];
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

  v41 = [a3 copy];
  [v41 setPredicate:{-[_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:](+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper, "defaultInstance"), "createPredicateForFetchFromPredicate:", objc_msgSend(v41, "predicate"))}];
  v42 = [-[NSPersistentStoreMap handleFetchRequest:](self->_theMap handleFetchRequest:{v41), "count"}];
  v43 = MEMORY[0x1E695DEC8];
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v42];
  v45 = *MEMORY[0x1E69E9840];

  return [v43 arrayWithObject:v44];
}

- (void)executeFetchRequest:(void *)a3 withContext:
{
  v78 = *MEMORY[0x1E69E9840];
  v71 = a1;
  if (a1)
  {
    v4 = a2;
    if ([a2 propertiesToGroupBy])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Unsupported fetch request: store %@ does not support GROUP BY", v71), 0}]);
    }

    v5 = -[_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:](+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper, "defaultInstance"), "createPredicateForFetchFromPredicate:", [v4 predicate]);
    v6 = *(v71 + 48);
    v7 = [v4 copy];
    [v7 setPredicate:v5];
    v8 = [*(v71 + 104) handleFetchRequest:v7];
    v9 = [v4 resultType];
    v10 = [v4 resultType];
    v11 = [v4 includesPropertyValues];
    v12 = [v4 returnsObjectsAsFaults];
    v13 = [v8 count];
    v64 = v13;
    if (v9)
    {
      if (v10 != 2)
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
      v29 = [v4 propertiesToFetch];
      if (!v29)
      {
        v30 = [v4 entity];
        if (v30)
        {
          v31 = v30[14];
        }

        else
        {
          v31 = 0;
        }

        v32 = [objc_msgSend(v30 "propertiesByName")];
        v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v32 + 8 * *(v31 + 48) count:*(v31 + 56) + *(v31 + 48)];
      }

      v33 = [v29 count];
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
      v68 = v29;
      while (1)
      {
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        v73 = 0u;
        v40 = [v29 countByEnumeratingWithState:&v73 objects:v77 count:{16, v61}];
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
            v46 = [*(v71 + 104) dataForKey:{objc_msgSend(*&v17[8 * v72], "_referenceData")}];
            v47 = [v44 _propertyType];
            v48 = [v44 name];
            if (v47 != 5)
            {
              if (v47 == 4)
              {
                v49 = [objc_msgSend(v46 valueForKey:{v48), "objectID"}];
LABEL_44:
                v50 = v49;
              }

              else
              {
                if (v47 == 2)
                {
                  v49 = [v46 valueForKey:v48];
                  goto LABEL_44;
                }

                v50 = 0;
              }

              v17 = v45;
              goto LABEL_51;
            }

            v51 = [v44 expression];
            v50 = [v51 expressionValueWithObject:v46 context:v66];
            if ([v51 expressionType] == 50)
            {
              v17 = v45;
              if (([v51 isCountOnlyRequest] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(v51, "requestExpression"), "expressionValueWithObject:context:", 0, 0), "resultType") == 4)
              {
                v50 = [v50 lastObject];
              }
            }

            else
            {
              v17 = v45;
            }

            if (objc_opt_isKindOfClass())
            {
              v50 = [v50 objectID];
            }

LABEL_51:
            if (!v39)
            {
              v67[v41] = v48;
            }

            *&v70[8 * v41++] = v50;
            ++v42;
            v43 += 0x100000000;
          }

          while (v40 != v42);
          v29 = v68;
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
    v24 = v11 ^ 1 | v12;
    do
    {
      v25 = *&v21[8 * v23];
      v26 = [NSManagedObjectContext _retainedObjectWithID:a3 optionalHandler:v25 withInlineStorage:v6];
      if ((v24 & 1) == 0)
      {
        v27 = [*(v71 + 104) dataForKey:{objc_msgSend(v25, "_referenceData")}];
        if (v26)
        {
          v26[4] |= 0x200u;
        }

        _PFFaultHandlerFulfillFault(v6, v26, a3, v27, 1);
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
    v57 = [v4 fetchOffset];
    if (v57)
    {
      if (v57 <= v14)
      {
        [v8 removeObjectsInRange:0];
      }

      else
      {
        [v8 removeAllObjects];
      }

      v14 = [v8 count];
    }

    v58 = [v4 fetchLimit];
    if (v58 && v14 > v58)
    {
      [v8 removeObjectsInRange:{v58, v14 - v58}];
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
    v4 = [result[13] nextPK64];
    v5 = [v3 objectIDFactoryForEntity:{objc_msgSend(a2, "entity")}];
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v4];
    v7 = [[v5 alloc] initWithObject:v6];

    return v7;
  }

  return result;
}

- (id)newValuesForObjectWithID:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v5 = -[NSPersistentStoreMap dataForKey:](self->_theMap, "dataForKey:", [a3 _referenceData]);

  return v5;
}

- (id)newValueForRelationship:(id)a3 forObjectWithID:(id)a4 withContext:(id)a5 error:(id *)a6
{
  v7 = [(NSPersistentStoreMap *)self->_theMap retainedObjectIDsForRelationship:a3 forObjectID:a4, a5, a6];
  if (([a3 isToMany] & 1) == 0)
  {
    v8 = [v7 lastObject];
    v9 = v8;

    return v8;
  }

  return v7;
}

- (id)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 objectID];
        if ([v12 isTemporaryID])
        {
          v13 = [(NSMappedObjectStore *)&self->super.super.isa getNewIDForObject:v11];
        }

        else
        {
          v13 = v12;
        }

        v14 = v13;
        [v6 addObject:v13];
      }

      v8 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
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

- (void)setMetadata:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSMappedObjectStore;
  [(NSPersistentStore *)&v5 setMetadata:?];
  [(NSPersistentStoreMap *)self->_theMap setMetadata:a3];
}

@end
@interface NSXPCSaveRequestContext
- (id)initForStore:(id)a3 request:(id)a4 metadata:(id)a5 forceInsertsToUpdates:(BOOL)a6 context:(id)a7;
- (id)newEncodedSaveRequest;
- (void)_encodeObjectsForSave:(char)a3 forDelete:;
- (void)_updateRollbackCacheForObjectWithID:(void *)a3 relationship:(void *)a4 withValuesFrom:;
- (void)dealloc;
@end

@implementation NSXPCSaveRequestContext

- (id)initForStore:(id)a3 request:(id)a4 metadata:(id)a5 forceInsertsToUpdates:(BOOL)a6 context:(id)a7
{
  v15.receiver = self;
  v15.super_class = NSXPCSaveRequestContext;
  v12 = [(NSXPCSaveRequestContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_store = a3;
    v12->_request = a4;
    v12->_context = a7;
    v12->_metadata = a5;
    v13->_changeCache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(objc_msgSend(a4, "updatedObjects"), "count") + objc_msgSend(objc_msgSend(a4, "insertedObjects"), "count")}];
    v13->_interrupts = 0;
    v13->_forceUpdates = a6;
  }

  return v13;
}

- (void)dealloc
{
  self->_request = 0;
  self->_context = 0;

  self->_metadata = 0;
  self->_changeCache = 0;
  v3.receiver = self;
  v3.super_class = NSXPCSaveRequestContext;
  [(NSXPCSaveRequestContext *)&v3 dealloc];
}

- (void)_updateRollbackCacheForObjectWithID:(void *)a3 relationship:(void *)a4 withValuesFrom:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = [a1 objectForKey:a2];
  if (v6)
  {
    v7 = v6;
    v8 = [a4 count];
    v9 = v8;
    if (v8 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v8;
    }

    if (v8 >= 0x201)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v23 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23[1] = v23;
    if (v8 > 0x200)
    {
      v12 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v23 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v10);
    }

    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v24 = 0u;
    v13 = [a4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v25;
      do
      {
        v17 = 0;
        v18 = v15;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(a4);
          }

          v15 = v18 + 1;
          *&v12[8 * v18++] = [*(*(&v24 + 1) + 8 * v17++) objectID];
        }

        while (v14 != v17);
        v14 = [a4 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v19 = [a3 isOrdered];
    v20 = 0x1E695DFB8;
    if (!v19)
    {
      v20 = 0x1E695DFD8;
    }

    v21 = [objc_alloc(*v20) initWithObjects:v12 count:v9];
    [NSPersistentCacheRow setRelatedObjectIDs:v7 forProperty:v21 options:a3 andTimestamp:*(v7 + 32)];

    if (v9 >= 0x201)
    {
      NSZoneFree(0, v12);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_encodeObjectsForSave:(char)a3 forDelete:
{
  v81 = *MEMORY[0x1E69E9840];
  v68 = [MEMORY[0x1E695DF70] array];
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v5 = v4;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = a2;
  v69 = [a2 countByEnumeratingWithState:&v76 objects:v80 count:16];
  if (v69)
  {
    v66 = *v77;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v77 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v76 + 1) + 8 * i);
        v8 = [v7 objectID];
        v72 = i;
        if ((a3 & 1) == 0)
        {
          v9 = v8;
          v73 = [NSIncrementalStoreNode alloc];
          v10 = [MEMORY[0x1E695DF90] dictionary];
          v11 = [v7 entity];
          v12 = v11;
          if (v11)
          {
            v13 = v11[14];
          }

          else
          {
            v13 = 0;
          }

          v14 = [objc_msgSend(v11 "propertiesByName")];
          v15 = _kvcPropertysPrimitiveGetters(v12);
          v16 = v13[7] + v13[6];
          if (v16)
          {
            for (j = 0; j != v16; ++j)
            {
              v18 = *(v14 + 8 * j);
              _PF_Handler_Primitive_GetProperty(v7, j, 0, *(v15 + 8 * j));
              if (v19)
              {
                [v10 setValue:v19 forKey:{objc_msgSend(v18, "name")}];
              }
            }
          }

          v21 = v13[12];
          v20 = v13[13];
          if (v21 < v20 + v21)
          {
            do
            {
              v22 = *(v14 + 8 * v21);
              _PF_Handler_Primitive_GetProperty(v7, v21, 0, *(v15 + 8 * v21));
              if (v23)
              {
                v24 = [v23 objectID];
              }

              else
              {
                v24 = NSKeyValueCoding_NullValue;
              }

              [v10 setValue:v24 forKey:{objc_msgSend(v22, "name")}];
              ++v21;
              --v20;
            }

            while (v20);
          }

          v25 = -[NSIncrementalStoreNode initWithObjectID:withValues:version:](v73, "initWithObjectID:withValues:version:", v9, v10, [v7 _versionReference] + 1);
          v26 = [[NSXPCRow alloc] initWithNode:v25];

          if (v26)
          {
            v26->super._birth = v5;
          }

          [*(a1 + 40) setObject:v26 forKey:{-[NSXPCRow objectID](v26, "objectID")}];

          i = v72;
        }

        if (v7)
        {
          v27 = [MEMORY[0x1E695DF70] array];
          v28 = [v7 entity];
          v29 = [v7 objectID];
          [v27 addObject:v29];
          v74 = -[_NSQueryGenerationToken _generationalComponentForStore:]([objc_msgSend(v7 "managedObjectContext")], *(a1 + 8));
          v30 = [(NSXPCStore *)*(a1 + 8) _cachedRowForObjectWithID:v29 generation:v74];
          v31 = [v7 _versionReference];
          [v27 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", v31)}];
          if (v28)
          {
            v32 = v28[14];
          }

          else
          {
            v32 = 0;
          }

          v70 = [objc_msgSend(v28 "propertiesByName")];
          v71 = v32;
          v33 = v32[6];
          v34 = v32[7];
          v35 = objc_alloc_init(_NSNoChangeToken);
          [v27 addObject:v35];
          v36 = [MEMORY[0x1E695DFB0] null];
          if (v33 < v34 + v33)
          {
            v37 = (v70 + 8 * v33);
            do
            {
              v38 = *v37;
              v39 = [v7 primitiveValueForKey:{objc_msgSend(*v37, "name")}];
              v40 = [v30 valueForPropertyDescription:v38];
              if (v30 && (!v39 ? (v41 = v36 == v40) : (v41 = 0), v41 || [v39 isEqual:v40]))
              {
                v42 = v27;
                v43 = v35;
              }

              else
              {
                v42 = v27;
                if (v39)
                {
                  v43 = v39;
                }

                else
                {
                  v43 = v36;
                }
              }

              [v42 addObject:v43];
              ++v37;
              --v34;
            }

            while (v34);
          }

          v44 = v71[12];
          v45 = v71[13];
          if (v44 < v45 + v44)
          {
            v46 = (v70 + 8 * v44);
            do
            {
              v47 = *v46;
              v48 = [objc_msgSend(v7 primitiveValueForKey:{objc_msgSend(*v46, "name")), "objectID"}];
              v49 = [v30 valueForPropertyDescription:v47];
              if (v30 && (!v48 ? (v50 = v36 == v49) : (v50 = 0), v50 || [v48 isEqual:v49]))
              {
                v51 = v27;
                v52 = v35;
              }

              else
              {
                v51 = v27;
                if (v48)
                {
                  v52 = v48;
                }

                else
                {
                  v52 = v36;
                }
              }

              [v51 addObject:v52];
              ++v46;
              --v45;
            }

            while (v45);
          }

          v53 = v71[14];
          v54 = v71[15];
          if (v53 < v54 + v53)
          {
            v55 = (v70 + 8 * v53);
            do
            {
              v56 = *v55;
              v57 = [v7 primitiveValueForKey:{objc_msgSend(*v55, "name")}];
              v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
              [v27 addObject:v58];

              if ([v57 isFault])
              {
                goto LABEL_65;
              }

              if (!v57)
              {
                v57 = [MEMORY[0x1E695DFD8] set];
              }

              v59 = [(NSXPCStore *)*(a1 + 8) _cachedRowForRelationship:v56 onObjectWithID:v29 generation:v74];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v59 count])
                {
                  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Array with content where there should be a set." userInfo:0]);
                }

                v59 = [MEMORY[0x1E695DFD8] setWithArray:v59];
              }

              if (!v59)
              {
                v59 = [MEMORY[0x1E695DFD8] set];
              }

              if ([v59 isEqual:v57])
              {
LABEL_65:
                [v58 addObject:v35];
              }

              else
              {
                [(NSXPCSaveRequestContext *)*(a1 + 40) _updateRollbackCacheForObjectWithID:v29 relationship:v56 withValuesFrom:v57];
                v60 = [_PFRoutines newSetOfObjectIDsFromCollection:v57];
                v61 = [v60 mutableCopy];
                [v61 minusSet:v59];
                v62 = [v59 mutableCopy];
                [v62 minusSet:v60];

                [v58 addObject:{objc_msgSend(v61, "allObjects")}];
                [v58 addObject:{objc_msgSend(v62, "allObjects")}];
              }

              ++v55;
              --v54;
            }

            while (v54);
          }

          i = v72;
        }

        else
        {
          v27 = 0;
        }

        [v68 addObject:v27];
      }

      v69 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
    }

    while (v69);
  }

  v63 = *MEMORY[0x1E69E9840];
  return v68;
}

- (id)newEncodedSaveRequest
{
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = v2;
    v4 = *(v1 + 24);
    if (v4)
    {
      [v2 setValue:v4 forKey:@"NSMetadata"];
    }

    v5 = [*(v1 + 16) insertedObjects];
    if ([v5 count])
    {
      [v3 setObject:-[NSXPCSaveRequestContext _encodeObjectsForSave:forDelete:](v1 forKey:{v5, 0), @"inserted"}];
    }

    v6 = [*(v1 + 16) deletedObjects];
    if ([v6 count])
    {
      [v3 setObject:-[NSXPCSaveRequestContext _encodeObjectsForSave:forDelete:](v1 forKey:{v6, 1), @"deleted"}];
    }

    v7 = [*(v1 + 16) updatedObjects];
    if ([v7 count])
    {
      [v3 setObject:-[NSXPCSaveRequestContext _encodeObjectsForSave:forDelete:](v1 forKey:{v7, 0), @"updated"}];
    }

    v8 = [*(v1 + 16) lockedObjects];
    if ([v8 count])
    {
      [v3 setObject:-[NSXPCSaveRequestContext _encodeObjectsForSave:forDelete:](v1 forKey:{v8, 0), @"locked"}];
    }

    if (*(v1 + 56) == 1)
    {
      v9 = [v3 objectForKey:@"inserted"];
      [v3 removeObjectForKey:@"inserted"];
      v10 = [v3 objectForKey:@"updated"];
      if (v10)
      {
        [v10 addObjectsFromArray:v9];
      }

      else
      {
        [v3 setObject:v9 forKey:@"updated"];
      }
    }

    return [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v3];
  }

  return result;
}

@end
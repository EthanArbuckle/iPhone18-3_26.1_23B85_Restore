@interface NSSQLSaveChangesRequestContext
- (BOOL)executeRequestCore:(id *)a3;
- (NSSQLSaveChangesRequestContext)initWithRequest:(id)a3 context:(id)a4 sqlCore:(id)a5;
- (double)originalRowForObjectID:(uint64_t)a1;
- (void)addDataMask:(uint64_t)a3 forEntityKey:;
- (void)dealloc;
- (void)executeEpilogue;
- (void)executePrologue;
@end

@implementation NSSQLSaveChangesRequestContext

- (void)executePrologue
{
  savePlan = self->_savePlan;
  if (savePlan)
  {
    [(NSSQLSavePlan *)self->_savePlan _createRowsForSave];
    [(NSSQLSavePlan *)savePlan _computeUpdatedRowSplit];
  }
}

- (void)executeEpilogue
{
  v120 = *MEMORY[0x1E69E9840];
  v3 = [(NSSQLSaveChangesRequestContext *)self rowCache];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = self->_objectIDsInsertUpdatedToPruneDATrigger;
  v104 = self;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v113 objects:v119 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v114;
    do
    {
      v7 = 0;
      do
      {
        if (*v114 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v113 + 1) + 8 * v7);
        v9 = [v8 firstObject];
        if (v3)
        {
          v10 = v9;
          v11 = [(NSPersistentStoreCache *)v3 rowForObjectID:v9 afterTimestamp:*&NSSQLDistantPastTimeInterval];
          if (v11)
          {
            v12 = v11;
            v13 = [(NSSQLCore *)v104->super._sqlCore entityForObjectID:v10];
            v14 = [v8 objectAtIndex:1];
            if (v13)
            {
              v15 = [*(v13 + 40) objectForKey:v14];
            }

            else
            {
              v15 = 0;
            }

            v16 = [v15 slot];
            v17 = [v8 lastObject];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              snapshot_set_null([v12 _snapshot], v16);
              goto LABEL_33;
            }

            if ([v17 isNSDate])
            {
              v18 = [v12 _snapshot];
              goto LABEL_14;
            }

            if ([v17 isNSString])
            {
              v23 = [v12 _snapshot];
              v24 = CFStringCreateWithCString(0, [v17 UTF8String], 0x8000100u);
              snapshot_set_object(v23, v16, v24);
            }

            else if ([v17 isNSNumber])
            {
              type = snapshot_get_type([v12 _snapshot], v16);
              if (type > 0x68)
              {
                switch(type)
                {
                  case 'i':
                    v39 = [v12 _snapshot];
                    v40 = [v17 intValue];
                    Class = object_getClass(v39);
                    IndexedIvars = object_getIndexedIvars(Class);
                    v39[(v16 >> 3) + 28] &= ~(1 << (v16 & 7));
                    *&v39[IndexedIvars[v16 + 19]] = v40;
                    break;
                  case 'q':
                    v43 = [v12 _snapshot];
                    v44 = [v17 longLongValue];
                    v45 = object_getClass(v43);
                    v46 = object_getIndexedIvars(v45);
                    v43[(v16 >> 3) + 28] &= ~(1 << (v16 & 7));
                    *&v43[v46[v16 + 19]] = v44;
                    break;
                  case 's':
                    v31 = [v12 _snapshot];
                    v32 = [v17 shortValue];
                    v33 = object_getClass(v31);
                    v34 = object_getIndexedIvars(v33);
                    v31[(v16 >> 3) + 28] &= ~(1 << (v16 & 7));
                    *&v31[v34[v16 + 19]] = v32;
                    break;
                }

                goto LABEL_33;
              }

              if (type == 99)
              {
                v35 = [v12 _snapshot];
                v36 = [v17 charValue];
                v37 = object_getClass(v35);
                v38 = object_getIndexedIvars(v37);
                *(v35 + (v16 >> 3) + 28) &= ~(1 << (v16 & 7));
                *(v35 + v38[v16 + 19]) = v36;
              }

              else
              {
                if (type != 100)
                {
                  if (type == 102)
                  {
                    v26 = [v12 _snapshot];
                    [v17 floatValue];
                    v28 = v27;
                    v29 = object_getClass(v26);
                    v30 = object_getIndexedIvars(v29);
                    v26[(v16 >> 3) + 28] &= ~(1 << (v16 & 7));
                    *&v26[v30[v16 + 19]] = v28;
                  }

                  goto LABEL_33;
                }

                v18 = [v12 _snapshot];
                if ([v17 isNSNumber])
                {
                  [v17 doubleValue];
                }

                else
                {
LABEL_14:
                  [v17 timeIntervalSinceReferenceDate];
                }

                v20 = v19;
                v21 = object_getClass(v18);
                v22 = object_getIndexedIvars(v21);
                v18[(v16 >> 3) + 28] &= ~(1 << (v16 & 7));
                *&v18[v22[v16 + 19]] = v20;
              }
            }

LABEL_33:
            if (v10 != NSKeyValueCoding_NullValue)
            {
              [v101 addObject:v8];
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v47 = [(NSArray *)obj countByEnumeratingWithState:&v113 objects:v119 count:16];
      v5 = v47;
    }

    while (v47);
  }

  [(NSManagedObjectContext *)v104->super._context _addObjectIDsInsertUpdatedByDATriggers:v101];
  obja = objc_alloc_init(MEMORY[0x1E695DF70]);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  objectIDsUpdatedToPruneDATrigger = v104->_objectIDsUpdatedToPruneDATrigger;
  v49 = [(NSArray *)objectIDsUpdatedToPruneDATrigger countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (!v49)
  {
    goto LABEL_77;
  }

  v50 = v49;
  v51 = *v110;
  do
  {
    v52 = 0;
    do
    {
      if (*v110 != v51)
      {
        objc_enumerationMutation(objectIDsUpdatedToPruneDATrigger);
      }

      v53 = *(*(&v109 + 1) + 8 * v52);
      v54 = [v53 firstObject];
      if (v3)
      {
        v55 = v54;
        v56 = [(NSPersistentStoreCache *)v3 rowForObjectID:v54 afterTimestamp:*&NSSQLDistantPastTimeInterval];
        if (v56)
        {
          v57 = v56;
          v58 = [(NSSQLCore *)v104->super._sqlCore entityForObjectID:v55];
          v59 = [v53 objectAtIndex:1];
          if (v58)
          {
            v60 = [*(v58 + 40) objectForKey:v59];
          }

          else
          {
            v60 = 0;
          }

          v61 = [v60 slot];
          v62 = [v53 lastObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            snapshot_set_null([v57 _snapshot], v61);
            goto LABEL_71;
          }

          if ([v62 isNSDate])
          {
            v63 = [v57 _snapshot];
            goto LABEL_52;
          }

          if ([v62 isNSString])
          {
            v68 = [v57 _snapshot];
            v69 = CFStringCreateWithCString(0, [v62 UTF8String], 0x8000100u);
            snapshot_set_object(v68, v61, v69);
          }

          else if ([v62 isNSNumber])
          {
            v70 = snapshot_get_type([v57 _snapshot], v61);
            if (v70 > 0x68)
            {
              switch(v70)
              {
                case 'i':
                  v84 = [v57 _snapshot];
                  v85 = [v62 intValue];
                  v86 = object_getClass(v84);
                  v87 = object_getIndexedIvars(v86);
                  v84[(v61 >> 3) + 28] &= ~(1 << (v61 & 7));
                  *&v84[v87[v61 + 19]] = v85;
                  break;
                case 'q':
                  v88 = [v57 _snapshot];
                  v89 = [v62 longLongValue];
                  v90 = object_getClass(v88);
                  v91 = object_getIndexedIvars(v90);
                  v88[(v61 >> 3) + 28] &= ~(1 << (v61 & 7));
                  *&v88[v91[v61 + 19]] = v89;
                  break;
                case 's':
                  v76 = [v57 _snapshot];
                  v77 = [v62 shortValue];
                  v78 = object_getClass(v76);
                  v79 = object_getIndexedIvars(v78);
                  v76[(v61 >> 3) + 28] &= ~(1 << (v61 & 7));
                  *&v76[v79[v61 + 19]] = v77;
                  break;
              }

              goto LABEL_71;
            }

            if (v70 == 99)
            {
              v80 = [v57 _snapshot];
              v81 = [v62 charValue];
              v82 = object_getClass(v80);
              v83 = object_getIndexedIvars(v82);
              *(v80 + (v61 >> 3) + 28) &= ~(1 << (v61 & 7));
              *(v80 + v83[v61 + 19]) = v81;
            }

            else
            {
              if (v70 != 100)
              {
                if (v70 == 102)
                {
                  v71 = [v57 _snapshot];
                  [v62 floatValue];
                  v73 = v72;
                  v74 = object_getClass(v71);
                  v75 = object_getIndexedIvars(v74);
                  v71[(v61 >> 3) + 28] &= ~(1 << (v61 & 7));
                  *&v71[v75[v61 + 19]] = v73;
                }

                goto LABEL_71;
              }

              v63 = [v57 _snapshot];
              if ([v62 isNSNumber])
              {
                [v62 doubleValue];
              }

              else
              {
LABEL_52:
                [v62 timeIntervalSinceReferenceDate];
              }

              v65 = v64;
              v66 = object_getClass(v63);
              v67 = object_getIndexedIvars(v66);
              v63[(v61 >> 3) + 28] &= ~(1 << (v61 & 7));
              *&v63[v67[v61 + 19]] = v65;
            }
          }

LABEL_71:
          if (v55 != NSKeyValueCoding_NullValue)
          {
            [obja addObject:v53];
          }
        }
      }

      ++v52;
    }

    while (v50 != v52);
    v92 = [(NSArray *)objectIDsUpdatedToPruneDATrigger countByEnumeratingWithState:&v109 objects:v118 count:16];
    v50 = v92;
  }

  while (v92);
LABEL_77:
  [(NSManagedObjectContext *)v104->super._context _addObjectIDsUpdatedByDATriggers:?];
  v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  objectIDsToPruneTrigger = v104->_objectIDsToPruneTrigger;
  v95 = [(NSSet *)objectIDsToPruneTrigger countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v95)
  {
    v96 = v95;
    v97 = *v106;
    do
    {
      for (i = 0; i != v96; ++i)
      {
        if (*v106 != v97)
        {
          objc_enumerationMutation(objectIDsToPruneTrigger);
        }

        v99 = *(*(&v105 + 1) + 8 * i);
        if (v99 != NSKeyValueCoding_NullValue)
        {
          [(NSPersistentStoreCache *)v3 forgetRowForObjectID:?];
          [v93 addObject:v99];
        }
      }

      v96 = [(NSSet *)objectIDsToPruneTrigger countByEnumeratingWithState:&v105 objects:v117 count:16];
    }

    while (v96);
  }

  [(NSManagedObjectContext *)v104->super._context _addObjectIDsUpdatedByTriggers:v93];

  v104->_objectIDsInsertUpdatedToPruneDATrigger = 0;
  v104->_objectIDsToPruneTrigger = 0;
  [(NSMutableDictionary *)v104->_originalCachedRows removeAllObjects];
  v100 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  self->_metadataToWrite = 0;

  self->_faultHandler = 0;
  self->_savePlan = 0;

  self->_objectIDsInsertUpdatedToPruneDATrigger = 0;
  self->_objectIDsUpdatedToPruneDATrigger = 0;

  self->_objectIDsToPruneTrigger = 0;
  self->_originalCachedRows = 0;

  self->_updateMasksForHistoryTracking = 0;
  self->_externalDataReferencesDirectory = 0;

  self->_externalDataLinksDirectory = 0;
  self->_fileBackedFuturesDirectory = 0;
  v3.receiver = self;
  v3.super_class = NSSQLSaveChangesRequestContext;
  [(NSSQLStoreRequestContext *)&v3 dealloc];
}

- (NSSQLSaveChangesRequestContext)initWithRequest:(id)a3 context:(id)a4 sqlCore:(id)a5
{
  v18.receiver = self;
  v18.super_class = NSSQLSaveChangesRequestContext;
  v7 = [NSSQLStoreRequestContext initWithRequest:sel_initWithRequest_context_sqlCore_ context:a3 sqlCore:?];
  if (!v7)
  {
    return v7;
  }

  v7->_metadataToWrite = [(NSSQLCore *)a5 metadataToWrite];
  v7->_savePlan = [[NSSQLSavePlan alloc] initForRequestContext:v7];
  if (a5)
  {
    v8 = *(a5 + 6);
  }

  else
  {
    v8 = 0;
  }

  v7->_faultHandler = v8;
  v7->_objectIDsInsertUpdatedToPruneDATrigger = 0;
  v7->_objectIDsUpdatedToPruneDATrigger = 0;
  v7->_objectIDsToPruneTrigger = 0;
  v7->_originalCachedRows = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7->_updateMasksForHistoryTracking = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!a5)
  {
    v17 = [0 externalDataReferencesDirectory];
    v10 = 0;
    v7->_externalDataReferencesDirectory = v17;
LABEL_9:
    v7->_externalDataLinksDirectory = v10;
    goto LABEL_10;
  }

  if ((*(a5 + 201) & 0x40) == 0)
  {
    v7->_externalDataReferencesDirectory = [a5 externalDataReferencesDirectory];
    if (!atomic_load(a5 + 21))
    {
      [a5 externalDataReferencesDirectory];
    }

    v10 = atomic_load(a5 + 22);
    goto LABEL_9;
  }

LABEL_10:
  v7->_fileBackedFuturesDirectory = [a5 fileBackedFuturesDirectory];
  sqlCore = v7->super._sqlCore;
  if (sqlCore)
  {
    v12 = -[NSSQLCore rowCacheForGeneration:](sqlCore, [0 _queryGenerationToken]);
  }

  else
  {
    v12 = 0;
  }

  primaryRowCache = v12;
  v7->_primaryRowCache = primaryRowCache;
  v14 = v7->super._sqlCore;
  if (v14)
  {
    v15 = -[NSSQLCore rowCacheForGeneration:](v14, [a4 _queryGenerationToken]);
    primaryRowCache = v7->_primaryRowCache;
  }

  else
  {
    v15 = 0;
  }

  if (v15 != primaryRowCache)
  {
    v7->_contextGenerationRowCache = v15;
  }

  return v7;
}

- (BOOL)executeRequestCore:(id *)a3
{
  [(NSSQLStoreRequestContext *)self setResult:_executeSaveChangesRequest(self)];
  if (!self)
  {
    goto LABEL_23;
  }

  if (self->super._exception)
  {
    goto LABEL_10;
  }

  connection = self->super._connection;
  if (connection)
  {
    v6 = [(NSMutableArray *)connection->_mObjectIDsInsertedByDATriggers copy];
  }

  else
  {
LABEL_23:
    v6 = 0;
  }

  self->_objectIDsInsertUpdatedToPruneDATrigger = v6;
  v7 = self->super._connection;
  if (v7)
  {
    v8 = [(NSMutableArray *)v7->_mObjectIDsUpdatededByDATriggers copy];
  }

  else
  {
    v8 = 0;
  }

  self->_objectIDsUpdatedToPruneDATrigger = v8;
  v9 = self->super._connection;
  if (v9)
  {
    v10 = [(NSMutableSet *)v9->_mObjectIDsUpdatedByTriggers copy];
  }

  else
  {
    v10 = 0;
  }

  self->_objectIDsToPruneTrigger = v10;
LABEL_10:
  v11 = self->super._connection;
  if (v11)
  {
    [(NSMutableArray *)v11->_mObjectIDsInsertedByDATriggers removeAllObjects];
    v12 = self->super._connection;
    if (v12)
    {
      [(NSMutableArray *)v12->_mObjectIDsUpdatededByDATriggers removeAllObjects];
      v13 = self->super._connection;
      if (v13)
      {
        [(NSMutableSet *)v13->_mObjectIDsUpdatedByTriggers removeAllObjects];
      }
    }
  }

  [(NSSQLStoreRequestContext *)self setConnection:?];
  if (a3 && *a3)
  {
    objc_setProperty_nonatomic(self, v14, *a3, 40);
  }

  return !self->super._exception && !self->super._error && [(NSSQLStoreRequestContext *)self result]!= 0;
}

- (double)originalRowForObjectID:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [*(a1 + 136) objectForKey:a2];
  if (v4)
  {
    return v4;
  }

  v5 = [a1 rowCache];
  if (v5)
  {
    v6 = [(NSPersistentStoreCache *)v5 rowForObjectID:a2 afterTimestamp:*&NSSQLDistantPastTimeInterval];
    if (v6)
    {
      v4 = v6;
LABEL_8:
      [*(a1 + 136) setObject:v4 forKey:a2];
      return v4;
    }
  }

  v7 = *(a1 + 184);
  if (!v7)
  {
    return 0;
  }

  v4 = [(NSPersistentStoreCache *)v7 rowForObjectID:a2 afterTimestamp:*&NSSQLDistantPastTimeInterval];
  if (v4)
  {
    goto LABEL_8;
  }

  return v4;
}

- (void)addDataMask:(uint64_t)a3 forEntityKey:
{
  if (a1)
  {
    v6 = [*(a1 + 144) objectForKey:?];
    if (v6)
    {
      v8 = [_NSPersistentHistoryChange _mergeOldMask:v6 andNewMask:a2];
      [*(a1 + 144) setObject:v8 forKey:a3];
    }

    else
    {
      v7 = *(a1 + 144);

      [v7 setObject:a2 forKey:a3];
    }
  }
}

@end
@interface NSSQLSaveChangesRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (NSSQLSaveChangesRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core;
- (double)originalRowForObjectID:(uint64_t)d;
- (void)addDataMask:(uint64_t)mask forEntityKey:;
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
  rowCache = [(NSSQLSaveChangesRequestContext *)self rowCache];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = self->_objectIDsInsertUpdatedToPruneDATrigger;
  selfCopy = self;
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
        firstObject = [v8 firstObject];
        if (rowCache)
        {
          v10 = firstObject;
          v11 = [(NSPersistentStoreCache *)rowCache rowForObjectID:firstObject afterTimestamp:*&NSSQLDistantPastTimeInterval];
          if (v11)
          {
            v12 = v11;
            v13 = [(NSSQLCore *)selfCopy->super._sqlCore entityForObjectID:v10];
            v14 = [v8 objectAtIndex:1];
            if (v13)
            {
              v15 = [*(v13 + 40) objectForKey:v14];
            }

            else
            {
              v15 = 0;
            }

            slot = [v15 slot];
            lastObject = [v8 lastObject];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              snapshot_set_null([v12 _snapshot], slot);
              goto LABEL_33;
            }

            if ([lastObject isNSDate])
            {
              _snapshot = [v12 _snapshot];
              goto LABEL_14;
            }

            if ([lastObject isNSString])
            {
              _snapshot2 = [v12 _snapshot];
              v24 = CFStringCreateWithCString(0, [lastObject UTF8String], 0x8000100u);
              snapshot_set_object(_snapshot2, slot, v24);
            }

            else if ([lastObject isNSNumber])
            {
              type = snapshot_get_type([v12 _snapshot], slot);
              if (type > 0x68)
              {
                switch(type)
                {
                  case 'i':
                    _snapshot3 = [v12 _snapshot];
                    intValue = [lastObject intValue];
                    Class = object_getClass(_snapshot3);
                    IndexedIvars = object_getIndexedIvars(Class);
                    _snapshot3[(slot >> 3) + 28] &= ~(1 << (slot & 7));
                    *&_snapshot3[IndexedIvars[slot + 19]] = intValue;
                    break;
                  case 'q':
                    _snapshot4 = [v12 _snapshot];
                    longLongValue = [lastObject longLongValue];
                    v45 = object_getClass(_snapshot4);
                    v46 = object_getIndexedIvars(v45);
                    _snapshot4[(slot >> 3) + 28] &= ~(1 << (slot & 7));
                    *&_snapshot4[v46[slot + 19]] = longLongValue;
                    break;
                  case 's':
                    _snapshot5 = [v12 _snapshot];
                    shortValue = [lastObject shortValue];
                    v33 = object_getClass(_snapshot5);
                    v34 = object_getIndexedIvars(v33);
                    _snapshot5[(slot >> 3) + 28] &= ~(1 << (slot & 7));
                    *&_snapshot5[v34[slot + 19]] = shortValue;
                    break;
                }

                goto LABEL_33;
              }

              if (type == 99)
              {
                _snapshot6 = [v12 _snapshot];
                charValue = [lastObject charValue];
                v37 = object_getClass(_snapshot6);
                v38 = object_getIndexedIvars(v37);
                *(_snapshot6 + (slot >> 3) + 28) &= ~(1 << (slot & 7));
                *(_snapshot6 + v38[slot + 19]) = charValue;
              }

              else
              {
                if (type != 100)
                {
                  if (type == 102)
                  {
                    _snapshot7 = [v12 _snapshot];
                    [lastObject floatValue];
                    v28 = v27;
                    v29 = object_getClass(_snapshot7);
                    v30 = object_getIndexedIvars(v29);
                    _snapshot7[(slot >> 3) + 28] &= ~(1 << (slot & 7));
                    *&_snapshot7[v30[slot + 19]] = v28;
                  }

                  goto LABEL_33;
                }

                _snapshot = [v12 _snapshot];
                if ([lastObject isNSNumber])
                {
                  [lastObject doubleValue];
                }

                else
                {
LABEL_14:
                  [lastObject timeIntervalSinceReferenceDate];
                }

                v20 = v19;
                v21 = object_getClass(_snapshot);
                v22 = object_getIndexedIvars(v21);
                _snapshot[(slot >> 3) + 28] &= ~(1 << (slot & 7));
                *&_snapshot[v22[slot + 19]] = v20;
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

  [(NSManagedObjectContext *)selfCopy->super._context _addObjectIDsInsertUpdatedByDATriggers:v101];
  obja = objc_alloc_init(MEMORY[0x1E695DF70]);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  objectIDsUpdatedToPruneDATrigger = selfCopy->_objectIDsUpdatedToPruneDATrigger;
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
      firstObject2 = [v53 firstObject];
      if (rowCache)
      {
        v55 = firstObject2;
        v56 = [(NSPersistentStoreCache *)rowCache rowForObjectID:firstObject2 afterTimestamp:*&NSSQLDistantPastTimeInterval];
        if (v56)
        {
          v57 = v56;
          v58 = [(NSSQLCore *)selfCopy->super._sqlCore entityForObjectID:v55];
          v59 = [v53 objectAtIndex:1];
          if (v58)
          {
            v60 = [*(v58 + 40) objectForKey:v59];
          }

          else
          {
            v60 = 0;
          }

          slot2 = [v60 slot];
          lastObject2 = [v53 lastObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            snapshot_set_null([v57 _snapshot], slot2);
            goto LABEL_71;
          }

          if ([lastObject2 isNSDate])
          {
            _snapshot8 = [v57 _snapshot];
            goto LABEL_52;
          }

          if ([lastObject2 isNSString])
          {
            _snapshot9 = [v57 _snapshot];
            v69 = CFStringCreateWithCString(0, [lastObject2 UTF8String], 0x8000100u);
            snapshot_set_object(_snapshot9, slot2, v69);
          }

          else if ([lastObject2 isNSNumber])
          {
            v70 = snapshot_get_type([v57 _snapshot], slot2);
            if (v70 > 0x68)
            {
              switch(v70)
              {
                case 'i':
                  _snapshot10 = [v57 _snapshot];
                  intValue2 = [lastObject2 intValue];
                  v86 = object_getClass(_snapshot10);
                  v87 = object_getIndexedIvars(v86);
                  _snapshot10[(slot2 >> 3) + 28] &= ~(1 << (slot2 & 7));
                  *&_snapshot10[v87[slot2 + 19]] = intValue2;
                  break;
                case 'q':
                  _snapshot11 = [v57 _snapshot];
                  longLongValue2 = [lastObject2 longLongValue];
                  v90 = object_getClass(_snapshot11);
                  v91 = object_getIndexedIvars(v90);
                  _snapshot11[(slot2 >> 3) + 28] &= ~(1 << (slot2 & 7));
                  *&_snapshot11[v91[slot2 + 19]] = longLongValue2;
                  break;
                case 's':
                  _snapshot12 = [v57 _snapshot];
                  shortValue2 = [lastObject2 shortValue];
                  v78 = object_getClass(_snapshot12);
                  v79 = object_getIndexedIvars(v78);
                  _snapshot12[(slot2 >> 3) + 28] &= ~(1 << (slot2 & 7));
                  *&_snapshot12[v79[slot2 + 19]] = shortValue2;
                  break;
              }

              goto LABEL_71;
            }

            if (v70 == 99)
            {
              _snapshot13 = [v57 _snapshot];
              charValue2 = [lastObject2 charValue];
              v82 = object_getClass(_snapshot13);
              v83 = object_getIndexedIvars(v82);
              *(_snapshot13 + (slot2 >> 3) + 28) &= ~(1 << (slot2 & 7));
              *(_snapshot13 + v83[slot2 + 19]) = charValue2;
            }

            else
            {
              if (v70 != 100)
              {
                if (v70 == 102)
                {
                  _snapshot14 = [v57 _snapshot];
                  [lastObject2 floatValue];
                  v73 = v72;
                  v74 = object_getClass(_snapshot14);
                  v75 = object_getIndexedIvars(v74);
                  _snapshot14[(slot2 >> 3) + 28] &= ~(1 << (slot2 & 7));
                  *&_snapshot14[v75[slot2 + 19]] = v73;
                }

                goto LABEL_71;
              }

              _snapshot8 = [v57 _snapshot];
              if ([lastObject2 isNSNumber])
              {
                [lastObject2 doubleValue];
              }

              else
              {
LABEL_52:
                [lastObject2 timeIntervalSinceReferenceDate];
              }

              v65 = v64;
              v66 = object_getClass(_snapshot8);
              v67 = object_getIndexedIvars(v66);
              _snapshot8[(slot2 >> 3) + 28] &= ~(1 << (slot2 & 7));
              *&_snapshot8[v67[slot2 + 19]] = v65;
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
  [(NSManagedObjectContext *)selfCopy->super._context _addObjectIDsUpdatedByDATriggers:?];
  v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  objectIDsToPruneTrigger = selfCopy->_objectIDsToPruneTrigger;
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
          [(NSPersistentStoreCache *)rowCache forgetRowForObjectID:?];
          [v93 addObject:v99];
        }
      }

      v96 = [(NSSet *)objectIDsToPruneTrigger countByEnumeratingWithState:&v105 objects:v117 count:16];
    }

    while (v96);
  }

  [(NSManagedObjectContext *)selfCopy->super._context _addObjectIDsUpdatedByTriggers:v93];

  selfCopy->_objectIDsInsertUpdatedToPruneDATrigger = 0;
  selfCopy->_objectIDsToPruneTrigger = 0;
  [(NSMutableDictionary *)selfCopy->_originalCachedRows removeAllObjects];
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

- (NSSQLSaveChangesRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core
{
  v18.receiver = self;
  v18.super_class = NSSQLSaveChangesRequestContext;
  v7 = [NSSQLStoreRequestContext initWithRequest:sel_initWithRequest_context_sqlCore_ context:request sqlCore:?];
  if (!v7)
  {
    return v7;
  }

  v7->_metadataToWrite = [(NSSQLCore *)core metadataToWrite];
  v7->_savePlan = [[NSSQLSavePlan alloc] initForRequestContext:v7];
  if (core)
  {
    v8 = *(core + 6);
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
  if (!core)
  {
    externalDataReferencesDirectory = [0 externalDataReferencesDirectory];
    v10 = 0;
    v7->_externalDataReferencesDirectory = externalDataReferencesDirectory;
LABEL_9:
    v7->_externalDataLinksDirectory = v10;
    goto LABEL_10;
  }

  if ((*(core + 201) & 0x40) == 0)
  {
    v7->_externalDataReferencesDirectory = [core externalDataReferencesDirectory];
    if (!atomic_load(core + 21))
    {
      [core externalDataReferencesDirectory];
    }

    v10 = atomic_load(core + 22);
    goto LABEL_9;
  }

LABEL_10:
  v7->_fileBackedFuturesDirectory = [core fileBackedFuturesDirectory];
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
    v15 = -[NSSQLCore rowCacheForGeneration:](v14, [context _queryGenerationToken]);
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

- (BOOL)executeRequestCore:(id *)core
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
  if (core && *core)
  {
    objc_setProperty_nonatomic(self, v14, *core, 40);
  }

  return !self->super._exception && !self->super._error && [(NSSQLStoreRequestContext *)self result]!= 0;
}

- (double)originalRowForObjectID:(uint64_t)d
{
  if (!d)
  {
    return 0;
  }

  v4 = [*(d + 136) objectForKey:a2];
  if (v4)
  {
    return v4;
  }

  rowCache = [d rowCache];
  if (rowCache)
  {
    v6 = [(NSPersistentStoreCache *)rowCache rowForObjectID:a2 afterTimestamp:*&NSSQLDistantPastTimeInterval];
    if (v6)
    {
      v4 = v6;
LABEL_8:
      [*(d + 136) setObject:v4 forKey:a2];
      return v4;
    }
  }

  v7 = *(d + 184);
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

- (void)addDataMask:(uint64_t)mask forEntityKey:
{
  if (self)
  {
    v6 = [*(self + 144) objectForKey:?];
    if (v6)
    {
      v8 = [_NSPersistentHistoryChange _mergeOldMask:v6 andNewMask:a2];
      [*(self + 144) setObject:v8 forKey:mask];
    }

    else
    {
      v7 = *(self + 144);

      [v7 setObject:a2 forKey:mask];
    }
  }
}

@end
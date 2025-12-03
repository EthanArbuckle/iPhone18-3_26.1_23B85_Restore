@interface NSMergePolicy
+ (void)initialize;
- (BOOL)resolveConflicts:(NSArray *)list error:(NSError *)error;
- (BOOL)resolveConstraintConflicts:(NSArray *)list error:(NSError *)error;
- (BOOL)resolveOptimisticLockingVersionConflicts:(NSArray *)list error:(NSError *)error;
- (NSMergePolicy)init;
- (NSMergePolicy)initWithCoder:(id)coder;
- (id)initWithMergeType:(NSMergePolicyType)ty;
- (uint64_t)_byPropertyObjectTrumpResolveConstraintConflict:(void *)conflict;
- (uint64_t)_byPropertyStoreTrumpResolveConstraintConflict:(void *)conflict;
- (uint64_t)_mergeToManyUnionRelationshipsForObject:(void *)object andObject:(void *)andObject;
- (uint64_t)_overwriteResolveConstraintConflict:(void *)conflict;
- (uint64_t)_rollbackResolveConstraintConflict:(void *)conflict;
- (uint64_t)_valuesOnObject:(uint64_t)object matchAgainstValues:(void *)values;
- (void)_mergeChangesObjectUpdatesTrumpForObject:(id)object withRecord:(id)record;
- (void)_mergeChangesStoreUpdatesTrumpForObject:(id)object withRecord:(id)record;
- (void)_mergeToManyRelationshipsForObject:(void *)object ontoObject:(void *)ontoObject;
- (void)dealloc;
@end

@implementation NSMergePolicy

+ (void)initialize
{
  if ((_MergedGlobals_76 & 1) == 0)
  {
    _MergedGlobals_76 = 1;
    objc_opt_self();
    dword_1ED4BEA64 = _CFExecutableLinkedOnOrAfter() == 0;
    NSErrorMergePolicy = [[NSMergePolicy alloc] initWithMergeType:0];
    NSMergeByPropertyStoreTrumpMergePolicy = [[NSMergePolicy alloc] initWithMergeType:1];
    NSMergeByPropertyObjectTrumpMergePolicy = [[NSMergePolicy alloc] initWithMergeType:2];
    NSOverwriteMergePolicy = [[NSMergePolicy alloc] initWithMergeType:3];
    NSRollbackMergePolicy = [[NSMergePolicy alloc] initWithMergeType:4];
  }
}

- (void)dealloc
{
  if (NSMergeByPropertyStoreTrumpMergePolicy == self || NSMergeByPropertyObjectTrumpMergePolicy == self || NSOverwriteMergePolicy == self || NSRollbackMergePolicy == self || NSErrorMergePolicy == self)
  {

    selfCopy = self;
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v9.receiver = self;
    v9.super_class = NSMergePolicy;
    [(NSMergePolicy *)&v9 dealloc];
  }
}

- (id)initWithMergeType:(NSMergePolicyType)ty
{
  v5.receiver = self;
  v5.super_class = NSMergePolicy;
  result = [(NSMergePolicy *)&v5 init];
  if (result)
  {
    *(result + 1) = ty;
  }

  return result;
}

- (NSMergePolicy)init
{
  v3.receiver = self;
  v3.super_class = NSMergePolicy;
  return [(NSMergePolicy *)&v3 init];
}

- (NSMergePolicy)initWithCoder:(id)coder
{
  v4 = [coder decodeIntForKey:@"NSTypeCode"] - 1;
  if (v4 > 3)
  {
    v5 = &NSErrorMergePolicy;
  }

  else
  {
    v5 = off_1E6EC28D0[v4];
  }

  v7 = *v5;

  return v7;
}

- (uint64_t)_valuesOnObject:(uint64_t)object matchAgainstValues:(void *)values
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__NSMergePolicy__valuesOnObject_matchAgainstValues___block_invoke;
  v4[3] = &unk_1E6EC1CD8;
  v4[4] = object;
  v4[5] = &v5;
  [values enumerateKeysAndObjectsUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __52__NSMergePolicy__valuesOnObject_matchAgainstValues___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = a3;
  if ([MEMORY[0x1E695DFB0] null] == a3)
  {
    v5 = 0;
  }

  result = [*(a1 + 32) valueForKey:a2];
  if (v5 | result)
  {
    v9 = result;
    result = [v5 isEqual:result];
    if ((result & 1) == 0)
    {
      result = [v9 isNSString];
      if (!result || (result = [_PFRoutines isSanitizedVersionOf:v9 equalTo:v5], (result & 1) == 0))
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
        *a4 = 1;
      }
    }
  }

  return result;
}

- (uint64_t)_rollbackResolveConstraintConflict:(void *)conflict
{
  v1 = [objc_msgSend(conflict "conflictingObjects")];
  isInserted = [v1 isInserted];
  managedObjectContext = [v1 managedObjectContext];
  if (isInserted)
  {

    return [managedObjectContext deleteObject:v1];
  }

  else
  {

    return [managedObjectContext refreshObject:v1 mergeChanges:0];
  }
}

- (uint64_t)_mergeToManyUnionRelationshipsForObject:(void *)object andObject:(void *)andObject
{
  v56 = *MEMORY[0x1E69E9840];
  entity = [andObject entity];
  if (entity)
  {
    v3 = entity;
    result = [*(entity + 104) keys];
    v5 = v3[14];
    v6 = *(v5 + 144);
    v40 = *(v5 + 152) + v6;
    if (v6 < v40)
    {
      v7 = result;
      v37 = result;
      v38 = v3;
      while (1)
      {
        v8 = *(v3[12] + 24 + 8 * v6);
        inverseRelationship = [v8 inverseRelationship];
        name = [inverseRelationship name];
        isToMany = [inverseRelationship isToMany];
        isOrdered = [inverseRelationship isOrdered];
        isOrdered2 = [v8 isOrdered];
        v13 = *(v7 + 8 * v6);
        v41 = v6;
        v39 = v8;
        if (isOrdered2)
        {
          break;
        }

        v17 = [object mutableSetValueForKey:v13];
        v15 = [andObject mutableSetValueForKey:*(v7 + 8 * v6)];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        allObjects = [v15 allObjects];
        v19 = [allObjects countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v47;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              v23 = v15;
              if (*v47 != v21)
              {
                objc_enumerationMutation(allObjects);
              }

              v24 = *(*(&v46 + 1) + 8 * i);
              [v17 addObject:v24];
              if (!inverseRelationship)
              {
LABEL_40:
                [NSMergePolicy _cannotResolveConflictOnEntity:v38 relationshipWithNoInverse:v39];
              }

              if (isToMany)
              {
                if (isOrdered)
                {
                  v25 = [v24 mutableOrderedSetValueForKey:name];
                }

                else
                {
                  v25 = [v24 mutableSetValueForKey:name];
                }

                v26 = v25;
                [v25 removeObject:andObject];
                [v26 addObject:object];
              }

              else
              {
                [v24 setValue:object forKey:name];
              }

              v15 = v23;
            }

            v20 = [allObjects countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v20);
LABEL_37:
          v7 = v37;
          v3 = v38;
        }

LABEL_38:
        result = [v15 removeAllObjects];
        v6 = v41 + 1;
        if (v41 + 1 == v40)
        {
          goto LABEL_39;
        }
      }

      v14 = [object mutableOrderedSetValueForKey:v13];
      v15 = [andObject mutableOrderedSetValueForKey:*(v7 + 8 * v6)];
      if ([v15 count])
      {
        array = [v15 objectsAtIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", 0, objc_msgSend(v15, "count"))}];
      }

      else
      {
        array = [MEMORY[0x1E695DEC8] array];
      }

      v27 = array;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = [array countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (!v28)
      {
        goto LABEL_38;
      }

      v29 = v28;
      v30 = *v51;
      obj = v27;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          v32 = v15;
          if (*v51 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v50 + 1) + 8 * j);
          [v14 addObject:v33];
          if (!inverseRelationship)
          {
            goto LABEL_40;
          }

          if (isToMany)
          {
            if (isOrdered)
            {
              v34 = [v33 mutableOrderedSetValueForKey:name];
            }

            else
            {
              v34 = [v33 mutableSetValueForKey:name];
            }

            v35 = v34;
            [v34 removeObject:andObject];
            [v35 addObject:object];
          }

          else
          {
            [v33 setValue:object forKey:name];
          }

          v15 = v32;
        }

        v29 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v29);
      goto LABEL_37;
    }

LABEL_39:
    v36 = *MEMORY[0x1E69E9840];
  }

  else
  {
    result = [0 keys];
    __break(1u);
  }

  return result;
}

- (uint64_t)_overwriteResolveConstraintConflict:(void *)conflict
{
  databaseObject = [conflict databaseObject];
  -[NSMergePolicy _mergeToManyUnionRelationshipsForObject:andObject:]([objc_msgSend(conflict "conflictingObjects")], objc_msgSend(conflict, "databaseObject"));
  managedObjectContext = [databaseObject managedObjectContext];

  return [managedObjectContext deleteObject:databaseObject];
}

- (void)_mergeToManyRelationshipsForObject:(void *)object ontoObject:(void *)ontoObject
{
  objectCopy = object;
  v105 = *MEMORY[0x1E69E9840];
  entity = [object entity];
  v4 = entity;
  if (entity)
  {
    keys = [*(entity + 104) keys];
    v6 = v4[14];
    if (!objectCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    keys = [0 keys];
    v6 = 0;
    if (!objectCopy)
    {
      goto LABEL_7;
    }
  }

  v7 = objectCopy[6];
  if (v7)
  {
    v67 = *(v7 + 8);
    goto LABEL_8;
  }

LABEL_7:
  v67 = 0;
LABEL_8:
  v8 = *(v6 + 144);
  v66 = *(v6 + 152) + v8;
  if (v8 < v66)
  {
    v72 = objectCopy;
    v68 = keys;
    v65 = v4;
    do
    {
      v9 = *(v4[12] + 24 + 8 * v8);
      inverseRelationship = [v9 inverseRelationship];
      name = [inverseRelationship name];
      isToMany = [inverseRelationship isToMany];
      isOrdered = [inverseRelationship isOrdered];
      v64 = v9;
      isOrdered2 = [v9 isOrdered];
      v14 = *(keys + 8 * v8);
      v69 = v8;
      if (isOrdered2)
      {
        v15 = [objectCopy mutableOrderedSetValueForKey:v14];
        v16 = [v67 objectForKey:*(keys + 8 * v8)];
        v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v18 = [v16 countByEnumeratingWithState:&v95 objects:v104 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v96;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v96 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v95 + 1) + 8 * i);
              if (([v15 containsObject:v22] & 1) == 0)
              {
                [v17 addObject:v22];
              }
            }

            v19 = [v16 countByEnumeratingWithState:&v95 objects:v104 count:16];
          }

          while (v19);
        }

        v23 = [ontoObject mutableOrderedSetValueForKey:*(v68 + 8 * v69)];
        if ([v15 count])
        {
          array = [v15 objectsAtIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", 0, objc_msgSend(v15, "count"))}];
        }

        else
        {
          array = [MEMORY[0x1E695DEC8] array];
        }

        v48 = array;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v49 = [array countByEnumeratingWithState:&v91 objects:v103 count:16];
        obja = v15;
        if (v49)
        {
          v50 = v49;
          v51 = *v92;
          do
          {
            for (j = 0; j != v50; ++j)
            {
              if (*v92 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v91 + 1) + 8 * j);
              [v23 addObject:v53];
              if (!inverseRelationship)
              {

                goto LABEL_96;
              }

              if (isToMany)
              {
                if (isOrdered)
                {
                  v54 = [v53 mutableOrderedSetValueForKey:name];
                }

                else
                {
                  v54 = [v53 mutableSetValueForKey:name];
                }

                v55 = v54;
                [v54 removeObject:v72];
                [v55 addObject:ontoObject];
              }

              else
              {
                [v53 setValue:ontoObject forKey:name];
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v91 objects:v103 count:16];
          }

          while (v50);
        }

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v56 = [v17 countByEnumeratingWithState:&v87 objects:v102 count:16];
        v4 = v65;
        if (v56)
        {
          v57 = v56;
          v58 = *v88;
          do
          {
            for (k = 0; k != v57; ++k)
            {
              if (*v88 != v58)
              {
                objc_enumerationMutation(v17);
              }

              v60 = *(*(&v87 + 1) + 8 * k);
              if ([v23 containsObject:v60])
              {
                [v23 removeObject:v60];
                if (!inverseRelationship)
                {

                  [NSMergePolicy _cannotResolveConflictOnEntity:v65 relationshipWithNoInverse:v64];
                }

                if (isOrdered)
                {
                  v61 = [v60 mutableOrderedSetValueForKey:name];
                }

                else
                {
                  v61 = [v60 mutableSetValueForKey:name];
                }

                [v61 removeObject:ontoObject];
              }
            }

            v57 = [v17 countByEnumeratingWithState:&v87 objects:v102 count:16];
          }

          while (v57);
        }

        [obja removeAllObjects];
      }

      else
      {
        v25 = [objectCopy mutableSetValueForKey:v14];
        v26 = [v67 objectForKey:*(keys + 8 * v8)];
        v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v28 = [v26 countByEnumeratingWithState:&v83 objects:v101 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v84;
          do
          {
            for (m = 0; m != v29; ++m)
            {
              if (*v84 != v30)
              {
                objc_enumerationMutation(v26);
              }

              v32 = *(*(&v83 + 1) + 8 * m);
              if (([v25 containsObject:v32] & 1) == 0)
              {
                [v27 addObject:v32];
              }
            }

            v29 = [v26 countByEnumeratingWithState:&v83 objects:v101 count:16];
          }

          while (v29);
        }

        v63 = v27;
        v33 = [ontoObject mutableSetValueForKey:*(v68 + 8 * v69)];
        allObjects = [v25 allObjects];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        obj = allObjects;
        v35 = [allObjects countByEnumeratingWithState:&v79 objects:v100 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v80;
          do
          {
            for (n = 0; n != v36; ++n)
            {
              if (*v80 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v79 + 1) + 8 * n);
              [v33 addObject:v39];
              if (!inverseRelationship)
              {
LABEL_95:

LABEL_96:
                [NSMergePolicy _cannotResolveConflictOnEntity:v65 relationshipWithNoInverse:v64];
              }

              if (isToMany)
              {
                if (isOrdered)
                {
                  v40 = [v39 mutableOrderedSetValueForKey:name];
                }

                else
                {
                  v40 = [v39 mutableSetValueForKey:name];
                }

                v41 = v40;
                [v40 removeObject:v72];
                [v41 addObject:ontoObject];
              }

              else
              {
                [v39 setValue:ontoObject forKey:name];
              }

              [v25 removeObject:v39];
            }

            v36 = [obj countByEnumeratingWithState:&v79 objects:v100 count:16];
          }

          while (v36);
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v42 = [v63 countByEnumeratingWithState:&v75 objects:v99 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v76;
          do
          {
            for (ii = 0; ii != v43; ++ii)
            {
              if (*v76 != v44)
              {
                objc_enumerationMutation(v63);
              }

              v46 = *(*(&v75 + 1) + 8 * ii);
              if ([v33 containsObject:v46])
              {
                [v33 removeObject:v46];
                if (!inverseRelationship)
                {
                  goto LABEL_95;
                }

                if (isToMany)
                {
                  if (isOrdered)
                  {
                    v47 = [v46 mutableOrderedSetValueForKey:name];
                  }

                  else
                  {
                    v47 = [v46 mutableSetValueForKey:name];
                  }

                  [v47 removeObject:ontoObject];
                }

                else
                {
                  [v46 setValue:0 forKey:name];
                }
              }
            }

            v43 = [v63 countByEnumeratingWithState:&v75 objects:v99 count:16];
          }

          while (v43);
        }

        v4 = v65;
      }

      keys = v68;
      v8 = v69 + 1;
      objectCopy = v72;
    }

    while (v69 + 1 != v66);
  }

  v62 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_byPropertyStoreTrumpResolveConstraintConflict:(void *)conflict
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(conflict "conflictingObjects")];
  conflictingObjects = [conflict conflictingObjects];
  if ([conflict _isDBConflict])
  {
    databaseObject = [conflict databaseObject];
  }

  else
  {
    databaseObject = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [conflictingObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(conflictingObjects);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (databaseObject != v9)
        {
          [NSMergePolicy _mergeToManyRelationshipsForObject:v9 ontoObject:databaseObject];
        }
      }

      v6 = [conflictingObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  managedObjectContext = [v2 managedObjectContext];
  v11 = *MEMORY[0x1E69E9840];

  return [managedObjectContext deleteObject:v2];
}

- (uint64_t)_byPropertyObjectTrumpResolveConstraintConflict:(void *)conflict
{
  v2 = [objc_msgSend(conflict "conflictingObjects")];
  databaseObject = [conflict databaseObject];
  isInserted = [v2 isInserted];
  managedObjectContext = [v2 managedObjectContext];
  entity = [v2 entity];
  v5 = entity;
  v45 = entity;
  if (entity)
  {
    keys = [*(entity + 104) keys];
    v5 = v5[14];
  }

  else
  {
    keys = [0 keys];
  }

  null = [MEMORY[0x1E695DFB0] null];
  if (v2 && (v8 = v2[6]) != 0)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v5[6];
  v11 = v5[7];
  if (v10 < v11 + v10)
  {
    v12 = (keys + 8 * v10);
    do
    {
      v13 = [v9 valueForKey:*v12];
      v14 = [v2 valueForKey:*v12];
      if (null == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      if ((isInserted & 1) != 0 || (null != v13 ? (v16 = v13) : (v16 = 0), ([v16 isEqual:v15] & 1) == 0))
      {
        [databaseObject setValue:v15 forKey:*v12];
      }

      ++v12;
      --v11;
    }

    while (v11);
  }

  v17 = v5[12];
  v18 = v5[13];
  if (v17 < v18 + v17)
  {
    v19 = 8 * v17;
    v46 = v2;
    v47 = v9;
    v42 = databaseObject;
    while (1)
    {
      v20 = [v9 valueForKey:*(keys + v19)];
      if (null == v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      v22 = [v2 valueForKey:*(keys + v19)];
      v23 = v22;
      if (null == v22)
      {
        objectID = 0;
      }

      else
      {
        objectID = [v22 objectID];
      }

      if (isInserted & 1) == 0 && ([v21 isEqual:objectID])
      {
        goto LABEL_52;
      }

      v25 = databaseObject;
      v26 = [databaseObject valueForKey:*(keys + v19)];
      v27 = *(*(v45 + 96) + 24 + v19);
      inverseRelationship = [v27 inverseRelationship];
      name = [inverseRelationship name];
      isToMany = [inverseRelationship isToMany];
      if (!v26)
      {
        if (inverseRelationship)
        {
          if (isToMany)
          {
            isOrdered = [inverseRelationship isOrdered];
            name2 = [inverseRelationship name];
            if (isOrdered)
            {
              v39 = [v23 mutableOrderedSetValueForKey:name2];
            }

            else
            {
              v39 = [v23 mutableSetValueForKey:name2];
            }

            v40 = v39;
            [v39 addObject:v25];
            [v40 removeObject:v46];
          }

          else
          {
            [v23 setValue:v25 forKey:name];
          }
        }

        goto LABEL_51;
      }

      if (inverseRelationship)
      {
        break;
      }

LABEL_47:
      if ([v27 deleteRule] == 2)
      {
        [managedObjectContext deleteObject:v26];
      }

LABEL_51:
      [v46 setValue:0 forKey:*(keys + v19)];
      databaseObject = v25;
      v2 = v46;
      [databaseObject setValue:v23 forKey:*(keys + v19)];
LABEL_52:
      v19 += 8;
      --v18;
      v9 = v47;
      if (!v18)
      {
        goto LABEL_53;
      }
    }

    if (!isToMany)
    {
      [v23 setValue:v25 forKey:name];
      [v26 setValue:0 forKey:name];
      goto LABEL_47;
    }

    isOrdered2 = [inverseRelationship isOrdered];
    name3 = [inverseRelationship name];
    if (isOrdered2)
    {
      v43 = [v26 mutableOrderedSetValueForKey:name3];
      v33 = [v23 mutableOrderedSetValueForKey:{objc_msgSend(inverseRelationship, "name")}];
      if (([v33 containsObject:v25] & 1) == 0)
      {
        v34 = [v33 indexOfObject:v46];
        if (v34 < [v33 count])
        {
          [v33 replaceObjectAtIndex:v34 withObject:v25];
        }

        v35 = v43;
        v36 = v25;
        goto LABEL_46;
      }
    }

    else
    {
      [objc_msgSend(v26 mutableSetValueForKey:{name3), "removeObject:", v25}];
      v33 = [v23 mutableSetValueForKey:{objc_msgSend(inverseRelationship, "name")}];
      [v33 addObject:v42];
    }

    v35 = v33;
    v36 = v46;
LABEL_46:
    [v35 removeObject:v36];
    goto LABEL_47;
  }

LABEL_53:
  [NSMergePolicy _mergeToManyRelationshipsForObject:v2 ontoObject:databaseObject];

  return [managedObjectContext deleteObject:v2];
}

void __33__NSMergePolicy_resolveConflict___block_invoke(uint64_t a1)
{
  v2 = -[_NSQueryGenerationToken _generationalComponentForStore:]([*(a1 + 32) _queryGenerationToken], *(a1 + 40));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  [(NSXPCStore *)v3 _clearCachedRowForObjectWithID:v4 generation:v2];
}

- (void)_mergeChangesStoreUpdatesTrumpForObject:(id)object withRecord:(id)record
{
  v44 = *MEMORY[0x1E69E9840];
  managedObjectContext = [object managedObjectContext];
  objectCopy = object;
  if ([object isInserted])
  {
    [(NSManagedObjectContext *)managedObjectContext _forceMoveInsertToUpdatedList:object];
  }

  ancestorSnapshot = [record ancestorSnapshot];
  v6 = [record objectForKey:@"snapshot"];
  v7 = [record objectForKey:@"cachedRow"];
  v8 = v7;
  if (v6)
  {
    v9 = v7;
    v8 = v6;
  }

  else
  {
    v9 = [record objectForKey:@"databaseRow"];
  }

  if (v6)
  {
    v10 = dword_1ED4BEA64 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v43 = v11;
  entity = [objectCopy entity];
  v13 = entity;
  if (entity)
  {
    keys = [*(entity + 104) keys];
    v15 = *(v13 + 112);
  }

  else
  {
    keys = [0 keys];
    v15 = 0;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v40 = [-[NSManagedObjectContext _committedSnapshotForObject:](managedObjectContext objectCopy)];
  v17 = *(v15 + 48);
  v18 = *(v15 + 56);
  v38 = v15;
  if (v17 < v18 + v17)
  {
    v36 = *MEMORY[0x1E696AA08];
    v35 = *MEMORY[0x1E696A250];
    do
    {
      v19 = [v8 objectForKey:*(keys + 8 * v17)];
      if (v19 == null)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      v21 = [v9 objectForKey:*(keys + 8 * v17)];
      if (v21 == null)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      if (v20 != v22 && ([*(*(v13 + 96) + 24 + 8 * v17) _epsilonEquals:v22 rhs:v20 withFlags:1] & 1) == 0)
      {
        if (!ancestorSnapshot || (v23 = [ancestorSnapshot objectForKey:*(keys + 8 * v17)], v24 = v23, v23 == v20) || (objc_msgSend(v23, "isEqual:", v20) & 1) != 0)
        {
          v20 = v22;
        }

        else if (v24 != v22 && ![v24 isEqual:v22])
        {
          v20 = v22;
        }

        [objectCopy setValue:v20 forKey:*(keys + 8 * v17)];
        [v40 setValue:v20 atIndex:v17];
      }

      ++v17;
      --v18;
    }

    while (v18);
  }

  v25 = *(v38 + 96);
  v26 = *(v38 + 104);
  if (v25 < v26 + v25)
  {
    while (1)
    {
      v27 = [v8 objectForKey:*(keys + 8 * v25)];
      if (v27 == null)
      {
        objectID = 0;
      }

      else
      {
        objectID = v27;
      }

      if (v43)
      {
        objectID = [objectID objectID];
      }

      v29 = [v9 objectForKey:*(keys + 8 * v25)];
      if (v29 == null)
      {
        objectID2 = 0;
      }

      else
      {
        objectID2 = v29;
      }

      if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 1) == 0)
      {
        objectID2 = [objectID2 objectID];
      }

      if (objectID == objectID2 || ([objectID2 isEqual:objectID] & 1) != 0)
      {
        goto LABEL_60;
      }

      if (!ancestorSnapshot)
      {
        goto LABEL_55;
      }

      v31 = [ancestorSnapshot objectForKey:*(keys + 8 * v25)];
      v32 = v31;
      if (v31 == objectID || ([v31 isEqual:objectID] & 1) != 0)
      {
        goto LABEL_55;
      }

      if (v32 != objectID2)
      {
        break;
      }

      objectID2 = objectID;
      if (!objectID)
      {
LABEL_58:
        v33 = 0;
        goto LABEL_59;
      }

LABEL_56:
      v33 = [NSManagedObjectContext _retainedObjectWithID:managedObjectContext optionalHandler:objectID2 withInlineStorage:0];
LABEL_59:
      [objectCopy setValue:v33 forKey:*(keys + 8 * v25)];
      [v40 setValue:v33 atIndex:v25];

LABEL_60:
      ++v25;
      if (!--v26)
      {
        goto LABEL_61;
      }
    }

    if ([v32 isEqual:objectID2])
    {
      objectID2 = objectID;
    }

LABEL_55:
    if (!objectID2)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

LABEL_61:

  if (ancestorSnapshot)
  {
    [(NSMergePolicy *)self mergeToManyRelationshipForSourceObject:objectCopy withOldSnapshot:v8 newSnapshot:v9 andAncestor:ancestorSnapshot andLegacyPath:v43];
  }

  if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1 && [objectCopy isDeleted])
  {
    -[NSManagedObjectContext _insertObjectWithGlobalID:globalID:]([objectCopy managedObjectContext], objectCopy, objc_msgSend(objectCopy, "objectID"));
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __68__NSMergePolicy__mergeDeletionWithStoreChangesForObject_withRecord___block_invoke(uint64_t a1)
{
  v127 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) entity];
  v3 = v2;
  if (v2)
  {
    v78 = [*(v2 + 104) keys];
    v4 = v3[14];
  }

  else
  {
    v78 = [0 keys];
    v4 = 0;
  }

  v72 = v3;
  v68 = _kvcPropertysPrimitiveGetters(v3);
  v5 = [MEMORY[0x1E695DFB0] null];
  v75 = [*(a1 + 32) objectID];
  v6 = *(v4 + 96);
  v7 = *(v4 + 104);
  v73 = v4;
  if (v6 < v7 + v6)
  {
    v8 = 8 * v6;
    while (1)
    {
      v9 = *(v78 + v8);
      v10 = [*(a1 + 40) objectForKey:v9];
      if (v10 == v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      if (*(a1 + 72))
      {
        v11 = [v11 objectID];
      }

      v12 = [*(a1 + 48) objectForKey:v9];
      if (v12 == v5)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 1) == 0)
      {
        v13 = [v13 objectID];
      }

      if (v11 == v13)
      {
        goto LABEL_61;
      }

      if ([*(v72[12] + 24 + v8) _epsilonEquals:v13 rhs:v11 withFlags:1])
      {
        goto LABEL_61;
      }

      v14 = *(v72[12] + 24 + v8);
      v15 = [v14 deleteRule];
      if ((v15 - 1) > 1)
      {
        goto LABEL_61;
      }

      v16 = [v14 inverseRelationship];
      if (!v16)
      {
        goto LABEL_61;
      }

      if (v13)
      {
        v13 = [NSManagedObjectContext _retainedObjectWithID:v13 optionalHandler:0 withInlineStorage:?];
      }

      v17 = [v16 name];
      v76 = [v13 primitiveValueForKey:?];
      if (![v16 isToMany])
      {
        v70 = v17;
        if (v11)
        {
          v19 = [*(a1 + 64) newValuesForObjectWithID:v11 withContext:*(a1 + 56) error:0];
          if (v19)
          {
            v20 = v19;
            v21 = objc_opt_class();
            if (v21 != objc_opt_class())
            {
              v22 = [v20 valueForPropertyDescription:v16];
              *&v95 = 0;
              if (!v22)
              {
                v22 = [*(a1 + 64) newValueForRelationship:v16 forObjectWithID:v75 withContext:*(a1 + 56) error:&v95];
                if (!v22)
                {
                  NSLog(@"That was unexpected. Error trying to get %@ from %@ (%@)", v14, v75, v95);
                  v22 = 0;
                }
              }

              if ([MEMORY[0x1E695DFB0] null] == v22)
              {
                v23 = 0;
              }

              else
              {
                v23 = v22;
              }

              goto LABEL_50;
            }

            v19 = v20;
          }

          v26 = v70;
        }

        else
        {
          v19 = 0;
          v26 = v17;
        }

        v20 = v19;
        v23 = [v19 valueForKey:v26];
LABEL_50:
        if ((([v75 isEqual:v23] & 1) != 0 || v76 == *(a1 + 32)) && v13)
        {
          [*(a1 + 56) refreshObject:v13 mergeChanges:1];
          if (v15 == 2)
          {
            [*(a1 + 56) deleteObject:v13];
          }

          else
          {
            [v13 setValue:0 forKey:v70];
          }
        }

        goto LABEL_60;
      }

      v18 = v11 ? [*(a1 + 64) newValueForRelationship:v16 forObjectWithID:v11 withContext:*(a1 + 56) error:0] : 0;
      if (([v18 containsObject:v75] & 1) == 0)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_42;
      }

LABEL_59:

LABEL_60:
LABEL_61:
      v8 += 8;
      if (!--v7)
      {
        goto LABEL_62;
      }
    }

    v24 = [v76 containsObject:*(a1 + 32)];
    if (v13)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_42:
    [*(a1 + 56) refreshObject:v13 mergeChanges:1];
    if (v15 == 2)
    {
      [*(a1 + 56) deleteObject:v13];
    }

    else
    {
      if ([v16 isOrdered])
      {
        v27 = [v13 mutableOrderedSetValueForKey:v17];
      }

      else
      {
        v27 = [v13 mutableSetValueForKey:v17];
      }

      [v27 removeObject:*(a1 + 32)];
    }

    goto LABEL_59;
  }

LABEL_62:
  v28 = *(a1 + 32);
  if ((v28[17] & 0x80) != 0)
  {
    [v28 willAccessValueForKey:0];
  }

  v29 = *MEMORY[0x1E695E9F8];
  v92[1] = 0;
  v92[2] = 0;
  v92[4] = _PFObjectIDFastEquals64;
  v92[5] = _PFObjectIDFastHash64;
  v89[0] = v29;
  v89[1] = 0;
  v30 = *(MEMORY[0x1E695E9F8] + 24);
  v92[3] = *(MEMORY[0x1E695E9F8] + 24);
  v90 = v30;
  v31 = *(MEMORY[0x1E695E9F8] + 40);
  v89[2] = 0;
  v91 = v31;
  v92[0] = v29;
  objc_opt_class();
  v32 = v72;
  isKindOfClass = objc_opt_isKindOfClass();
  v34 = v89;
  v125 = 0u;
  v126 = 0u;
  if (isKindOfClass)
  {
    v34 = v92;
  }

  callBacks = v34;
  v123 = 0uLL;
  v124 = 0uLL;
  v121 = 0uLL;
  v122 = 0uLL;
  v119 = 0uLL;
  v120 = 0uLL;
  v117 = 0uLL;
  v118 = 0uLL;
  v115 = 0uLL;
  v116 = 0uLL;
  v113 = 0uLL;
  v114 = 0uLL;
  v111 = 0uLL;
  v112 = 0uLL;
  v109 = 0uLL;
  v110 = 0uLL;
  v107 = 0uLL;
  v108 = 0uLL;
  v105 = 0uLL;
  v106 = 0uLL;
  v103 = 0uLL;
  v104 = 0uLL;
  v101 = 0uLL;
  v102 = 0uLL;
  v99 = 0uLL;
  v100 = 0uLL;
  v97 = 0uLL;
  v98 = 0uLL;
  v36 = *(v73 + 144);
  v35 = *(v73 + 152);
  v37 = v35 + v36;
  v95 = 0uLL;
  v96 = 0uLL;
  if (v36 < v35 + v36)
  {
    v38 = 0x1EA8C5000uLL;
    v66 = v35 + v36;
    do
    {
      v39 = *(v32[12] + *(v38 + 1820) + 8 * v36);
      v40 = [v39 deleteRule];
      if ((v40 - 1) <= 1)
      {
        v79 = [v39 inverseRelationship];
        if (v79)
        {
          v77 = [v79 name];
          v41 = [*(a1 + 64) newValueForRelationship:v39 forObjectWithID:v75 withContext:*(a1 + 56) error:0];
          v42 = v41;
          if (v41 && [v41 count])
          {
            _PF_Handler_Primitive_GetProperty(*(a1 + 32), v36, 0, *(v68 + 8 * v36));
            v44 = v43;
            v45 = _PFStackAllocatorCreate(&v95, 1024);
            Mutable = CFSetCreateMutable(v45, 0, callBacks);
            v74 = v40;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v47 = [v44 countByEnumeratingWithState:&v85 objects:v94 count:16];
            if (v47)
            {
              v48 = *v86;
              do
              {
                for (i = 0; i != v47; ++i)
                {
                  if (*v86 != v48)
                  {
                    objc_enumerationMutation(v44);
                  }

                  CFSetAddValue(Mutable, *(*(*(&v85 + 1) + 8 * i) + 40));
                }

                v47 = [v44 countByEnumeratingWithState:&v85 objects:v94 count:16];
              }

              while (v47);
            }

            v69 = v36;
            v71 = v39;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v50 = [v42 countByEnumeratingWithState:&v81 objects:v93 count:16];
            if (v50)
            {
              v51 = *v82;
              do
              {
                for (j = 0; j != v50; ++j)
                {
                  if (*v82 != v51)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v53 = *(*(&v81 + 1) + 8 * j);
                  if (!CFSetContainsValue(Mutable, v53))
                  {
                    v54 = [NSManagedObjectContext _retainedObjectWithID:v53 optionalHandler:0 withInlineStorage:?];
                    v55 = v54;
                    if (v54)
                    {
                      v56 = [v54 primitiveValueForKey:v77];
                      v57 = [v79 isToMany];
                      v58 = *(a1 + 64);
                      if (v57)
                      {
                        v59 = [v58 newValueForRelationship:v79 forObjectWithID:v53 withContext:*(a1 + 56) error:0];
                        if (([v59 containsObject:v75] & 1) != 0 || objc_msgSend(v56, "containsObject:", *(a1 + 32)))
                        {
                          [*(a1 + 56) refreshObject:v55 mergeChanges:1];
                          if (v74 == 2)
                          {
                            [*(a1 + 56) deleteObject:v55];
                          }

                          else
                          {
                            if ([v79 isOrdered])
                            {
                              v64 = [v55 mutableOrderedSetValueForKey:v77];
                            }

                            else
                            {
                              v64 = [v55 mutableSetValueForKey:v77];
                            }

                            [v64 removeObject:*(a1 + 32)];
                          }
                        }
                      }

                      else
                      {
                        v60 = [v58 newValuesForObjectWithID:v53 withContext:*(a1 + 56) error:0];
                        if (!v60 || (v61 = objc_opt_class(), v61 == objc_opt_class()))
                        {
                          v62 = [v60 valueForKey:v77];
                        }

                        else
                        {
                          v62 = [v60 valueForPropertyDescription:v79];
                          v80 = 0;
                          v63 = v79;
                          if (!v62)
                          {
                            v62 = [*(a1 + 64) newValueForRelationship:v79 forObjectWithID:v75 withContext:*(a1 + 56) error:&v80];
                            if (!v62)
                            {
                              NSLog(@"That was unexpected. Error trying to get %@ from %@ (%@)", v71, v75, v80);
                              v62 = 0;
                            }
                          }

                          if ([MEMORY[0x1E695DFB0] null] == v62)
                          {
                            v62 = 0;
                          }
                        }

                        if ([v75 isEqual:v62])
                        {
                          [*(a1 + 56) refreshObject:v55 mergeChanges:1];
                          if ([v55 primitiveValueForKey:v77] == *(a1 + 32))
                          {
                            if (v74 == 2)
                            {
                              [*(a1 + 56) deleteObject:v55];
                            }

                            else
                            {
                              [v55 setValue:0 forKey:v77];
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v50 = [v42 countByEnumeratingWithState:&v81 objects:v93 count:16];
              }

              while (v50);
            }

            if (*(&v96 + 1))
            {
              v32 = v72;
              v36 = v69;
              v37 = v66;
              v38 = 0x1EA8C5000;
              if (Mutable)
              {
                CFRelease(Mutable);
              }
            }

            else
            {
              *(&v95 + 1) = v95;
              v32 = v72;
              v36 = v69;
              v37 = v66;
              v38 = 0x1EA8C5000;
            }
          }
        }
      }

      ++v36;
    }

    while (v36 != v37);
  }

  v65 = *MEMORY[0x1E69E9840];
}

- (void)_mergeChangesObjectUpdatesTrumpForObject:(id)object withRecord:(id)record
{
  v79 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  managedObjectContext = [object managedObjectContext];
  v7 = [(NSManagedObjectContext *)managedObjectContext _committedSnapshotForObject:object];
  if ([object isDeleted])
  {
    if (self)
    {
      v8 = [record objectForKey:@"snapshot"];
      v9 = [record objectForKey:@"cachedRow"];
      v10 = v9;
      if (v8)
      {
        v11 = v9;
        v10 = v8;
      }

      else
      {
        v11 = [record objectForKey:@"databaseRow"];
      }

      if (v8)
      {
        v12 = dword_1ED4BEA64 == 0;
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      managedObjectContext2 = [object managedObjectContext];
      v15 = managedObjectContext2;
      if (managedObjectContext2)
      {
        v16 = *(managedObjectContext2 + 32);
      }

      else
      {
        v16 = 0;
      }

      *buf = MEMORY[0x1E69E9820];
      v70 = 3221225472;
      v71 = __68__NSMergePolicy__mergeDeletionWithStoreChangesForObject_withRecord___block_invoke;
      v72 = &unk_1E6EC2860;
      objectCopy = object;
      v74 = v10;
      v78 = v13;
      v75 = v11;
      v76 = managedObjectContext2;
      v77 = v16;
      [(NSManagedObjectContext *)managedObjectContext2 lockObjectStore];
      if (v16 == [v15 persistentStoreCoordinator])
      {
        [v16 performBlockAndWait:buf];
      }

      else
      {
        v71(buf);
      }

      [(NSManagedObjectContext *)v15 unlockObjectStore];
    }
  }

  else if ([object isInserted])
  {
    [(NSManagedObjectContext *)managedObjectContext _forceMoveInsertToUpdatedList:object];
  }

  v17 = [record objectForKey:@"snapshot"];
  v18 = [record objectForKey:@"cachedRow"];
  if (v17)
  {
    v57 = v18;
    v58 = v17;
  }

  else
  {
    v58 = v18;
    v57 = [record objectForKey:@"databaseRow"];
  }

  if (v17)
  {
    v19 = dword_1ED4BEA64 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  v56 = v20;
  _newChangedValuesForRefresh__ = [(NSManagedObject *)object _newChangedValuesForRefresh__];
  v55 = [v7 copy];
  entity = [object entity];
  v54 = entity;
  if (entity)
  {
    v23 = entity;
    keys = [*(entity + 104) keys];
    v25 = *(v23 + 112);
  }

  else
  {
    keys = [0 keys];
    v25 = 0;
  }

  null = [MEMORY[0x1E695DFB0] null];
  v27 = *(v25 + 48);
  v28 = *(v25 + 56);
  v52 = v25;
  if (v27 < v28 + v27)
  {
    v50 = *MEMORY[0x1E696AA08];
    v49 = *MEMORY[0x1E696A250];
    do
    {
      v29 = objc_autoreleasePoolPush();
      v30 = [v58 objectForKey:*(keys + 8 * v27)];
      if (v30 == null)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      v32 = [v57 objectForKey:*(keys + 8 * v27)];
      if (v32 == null)
      {
        v33 = 0;
      }

      else
      {
        v33 = v32;
      }

      if (v31 != v33)
      {
        v34 = *(*(v54 + 96) + 24 + 8 * v27);
        if (([v34 _epsilonEquals:v33 rhs:v31 withFlags:1] & 1) == 0)
        {
          if ([v34 usesMergeableStorage])
          {
            [v33 merge:v31];
            v33 = [v33 copy];
          }

          [object setValue:v33 forKey:*(keys + 8 * v27)];
          [v55 setValue:v33 atIndex:v27];
        }
      }

      objc_autoreleasePoolPop(v29);
      ++v27;
      --v28;
    }

    while (v28);
  }

  v35 = *(v52 + 96);
  v36 = *(v52 + 104);
  if (v35 < v36 + v35)
  {
    do
    {
      v37 = [v58 objectForKey:*(keys + 8 * v35)];
      if (v37 == null)
      {
        objectID = 0;
      }

      else
      {
        objectID = v37;
      }

      if (v56)
      {
        objectID = [objectID objectID];
      }

      v39 = [v57 objectForKey:*(keys + 8 * v35)];
      if (v39 == null)
      {
        objectID2 = 0;
      }

      else
      {
        objectID2 = v39;
      }

      if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 1) == 0)
      {
        objectID2 = [objectID2 objectID];
      }

      if (objectID != objectID2 && ([objectID2 isEqual:objectID] & 1) == 0)
      {
        if (objectID2)
        {
          v41 = [NSManagedObjectContext _retainedObjectWithID:managedObjectContext optionalHandler:objectID2 withInlineStorage:0];
        }

        else
        {
          v41 = 0;
        }

        [object setValue:v41 forKey:*(keys + 8 * v35)];
        [v55 setValue:v41 atIndex:v35];
      }

      ++v35;
      --v36;
    }

    while (v36);
  }

  [(NSManagedObject *)object _setOriginalSnapshot__:v55];
  if ([(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ count])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v42 = [(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v42)
    {
      v43 = *v64;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v64 != v43)
          {
            objc_enumerationMutation(_newChangedValuesForRefresh__);
          }

          [object willChangeValueForKey:*(*(&v63 + 1) + 8 * i)];
        }

        v42 = [(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v42);
    }

    [(NSManagedObject *)object _updateFromRefreshSnapshot:_newChangedValuesForRefresh__ includingTransients:0];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v45 = [(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v45)
    {
      v46 = *v60;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v60 != v46)
          {
            objc_enumerationMutation(_newChangedValuesForRefresh__);
          }

          [object didChangeValueForKey:*(*(&v59 + 1) + 8 * j)];
        }

        v45 = [(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v45);
    }
  }

  objc_autoreleasePoolPop(context);
  v48 = *MEMORY[0x1E69E9840];
}

- (BOOL)resolveConflicts:(NSArray *)list error:(NSError *)error
{
  v7 = -[NSArray filteredArrayUsingPredicate:](list, "filteredArrayUsingPredicate:", [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_9]);
  v8 = -[NSArray filteredArrayUsingPredicate:](list, "filteredArrayUsingPredicate:", [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_243]);
  if ((![(NSArray *)v7 count]|| (v9 = [(NSMergePolicy *)self resolveOptimisticLockingVersionConflicts:v7 error:error])) && (![(NSArray *)v8 count]|| (v9 = [(NSMergePolicy *)self resolveConstraintConflicts:v8 error:error])))
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)resolveConstraintConflicts:(NSArray *)list error:(NSError *)error
{
  v203[16] = *MEMORY[0x1E69E9840];
  v178 = 0;
  if (![(NSArray *)list count])
  {
    goto LABEL_254;
  }

  selfCopy = self;
  if (!self->_type)
  {
    goto LABEL_257;
  }

  v145 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([-[NSArray firstObject](list "firstObject")])
  {
    array = [MEMORY[0x1E695DF70] array];
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v6 = [(NSArray *)list countByEnumeratingWithState:&v174 objects:v195 count:16];
    if (v6)
    {
      managedObjectContext = 0;
      v8 = *v175;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v175 != v8)
          {
            objc_enumerationMutation(list);
          }

          v10 = *(*(&v174 + 1) + 8 * i);
          v170 = 0u;
          v171 = 0u;
          v172 = 0u;
          v173 = 0u;
          conflictingObjects = [v10 conflictingObjects];
          v12 = [conflictingObjects countByEnumeratingWithState:&v170 objects:v194 count:16];
          if (v12)
          {
            v13 = *v171;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v171 != v13)
                {
                  objc_enumerationMutation(conflictingObjects);
                }

                v15 = *(*(&v170 + 1) + 8 * j);
                [array addObject:{objc_msgSend(v15, "objectID")}];
                if (!managedObjectContext)
                {
                  managedObjectContext = [v15 managedObjectContext];
                }
              }

              v12 = [conflictingObjects countByEnumeratingWithState:&v170 objects:v194 count:16];
            }

            while (v12);
          }
        }

        v6 = [(NSArray *)list countByEnumeratingWithState:&v174 objects:v195 count:16];
      }

      while (v6);
      if (managedObjectContext)
      {
        v16 = [_PFRoutines createDictionaryPartitioningObjectsIDByRootEntity:array];
        v203[0] = 0;
        v203[1] = v203;
        v203[2] = 0x3052000000;
        v203[3] = __Block_byref_object_copy__16;
        v203[4] = __Block_byref_object_dispose__16;
        v203[5] = [MEMORY[0x1E695DF70] array];
        v169[0] = MEMORY[0x1E69E9820];
        v169[1] = 3221225472;
        v169[2] = __50__NSMergePolicy_resolveConstraintConflicts_error___block_invoke;
        v169[3] = &unk_1E6EC1CD8;
        v169[4] = managedObjectContext;
        v169[5] = v203;
        [(__CFDictionary *)v16 enumerateKeysAndObjectsUsingBlock:v169];

        _Block_object_dispose(v203, 8);
      }
    }
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v17 = [(NSArray *)list countByEnumeratingWithState:&v165 objects:v193 count:16];
  if (!v17)
  {
    goto LABEL_251;
  }

  v18 = *MEMORY[0x1E696A250];
  v147 = *MEMORY[0x1E696A250];
  v148 = *v166;
LABEL_24:
  v158 = 0;
  v149 = v17;
  while (1)
  {
    if (*v166 != v148)
    {
      objc_enumerationMutation(list);
    }

    if (!selfCopy)
    {
      break;
    }

    v19 = *(*(&v165 + 1) + 8 * v158);
    if ([v19 _isDBConflict])
    {
      databaseObject = [v19 databaseObject];
      v21 = [objc_msgSend(v19 "conflictingObjects")];
      if ([v21 isDeleted] & 1) != 0 || (objc_msgSend(databaseObject, "isDeleted"))
      {
        goto LABEL_76;
      }

      constraint = [v19 constraint];
      databaseSnapshot = [v19 databaseSnapshot];
      if (databaseObject && (v23 = databaseObject[6]) != 0)
      {
        v161 = *(v23 + 8);
      }

      else
      {
        v161 = 0;
      }

      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v50 = [constraint countByEnumeratingWithState:&v187 objects:v203 count:16];
      if (v50)
      {
        v51 = *v188;
        do
        {
          for (k = 0; k != v50; ++k)
          {
            if (*v188 != v51)
            {
              objc_enumerationMutation(constraint);
            }

            v53 = *(*(&v187 + 1) + 8 * k);
            v54 = [v21 valueForKey:v53];
            v55 = [databaseSnapshot valueForKey:v53];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (([objc_msgSend(v54 "objectID")] & 1) == 0)
                {
                  goto LABEL_76;
                }
              }

              else
              {
                LogStream = _PFLogGetLogStream(17);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v198 = v53;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Got non-object value back for property '%@' which returned an objectID from the snapshot.\n", buf, 0xCu);
                }

                v57 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v198 = v53;
                  _os_log_fault_impl(&dword_18565F000, v57, OS_LOG_TYPE_FAULT, "CoreData: Got non-object value back for property '%@' which returned an objectID from the snapshot.", buf, 0xCu);
                }
              }
            }

            else if (([v54 isEqual:v55] & 1) == 0 && (!objc_msgSend(v54, "isNSString") || !+[_PFRoutines isSanitizedVersionOf:equalTo:](_PFRoutines, v54, v55)))
            {
              goto LABEL_76;
            }

            if ([databaseObject hasChanges])
            {
              v58 = [databaseObject valueForKey:v53];
              if (([v58 isEqual:{objc_msgSend(v161, "valueForKey:", v53)}] & 1) == 0 && (objc_msgSend(v58, "isEqual:", v54) & 1) == 0 && (!objc_msgSend(v58, "isNSString") || !+[_PFRoutines isSanitizedVersionOf:equalTo:](_PFRoutines, v54, v58)))
              {
                goto LABEL_76;
              }
            }
          }

          v50 = [constraint countByEnumeratingWithState:&v187 objects:v203 count:16];
        }

        while (v50);
      }

      v152 = v19;
    }

    else
    {
      array2 = [MEMORY[0x1E695DF70] array];
      constraintValues = [v19 constraintValues];
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      conflictingObjects2 = [v19 conflictingObjects];
      v27 = [conflictingObjects2 countByEnumeratingWithState:&v187 objects:v203 count:16];
      if (v27)
      {
        v28 = *v188;
        do
        {
          for (m = 0; m != v27; ++m)
          {
            if (*v188 != v28)
            {
              objc_enumerationMutation(conflictingObjects2);
            }

            v30 = *(*(&v187 + 1) + 8 * m);
            if (([v30 isDeleted] & 1) == 0 && -[NSMergePolicy _valuesOnObject:matchAgainstValues:](v30, constraintValues))
            {
              [array2 addObject:v30];
            }
          }

          v27 = [conflictingObjects2 countByEnumeratingWithState:&v187 objects:v203 count:16];
        }

        while (v27);
      }

      if ([array2 count] < 2)
      {
        goto LABEL_76;
      }

      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v32 = [array2 countByEnumeratingWithState:&v183 objects:&v199 count:16];
      if (v32)
      {
        v33 = *v184;
        do
        {
          for (n = 0; n != v32; ++n)
          {
            if (*v184 != v33)
            {
              objc_enumerationMutation(array2);
            }

            v35 = *(*(&v183 + 1) + 8 * n);
            if (!v35 || (v36 = *(v35 + 48)) == 0 || (null = *(v36 + 8)) == 0)
            {
              null = [MEMORY[0x1E695DFB0] null];
            }

            [v31 addObject:null];
          }

          v32 = [array2 countByEnumeratingWithState:&v183 objects:&v199 count:16];
        }

        while (v32);
      }

      v152 = -[NSConstraintConflict initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:]([NSConstraintConflict alloc], "initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:", [v19 constraint], 0, 0, array2, v31);
    }

    if (!v152)
    {
      goto LABEL_76;
    }

    v38 = [MEMORY[0x1E695DFA8] set];
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    conflictingObjects3 = [(NSConstraintConflict *)v152 conflictingObjects];
    v40 = [(NSArray *)conflictingObjects3 countByEnumeratingWithState:&v179 objects:v196 count:16];
    if (!v40)
    {
      goto LABEL_73;
    }

    managedObjectContext2 = 0;
    v42 = *v180;
    do
    {
      for (ii = 0; ii != v40; ++ii)
      {
        if (*v180 != v42)
        {
          objc_enumerationMutation(conflictingObjects3);
        }

        v44 = *(*(&v179 + 1) + 8 * ii);
        if (!managedObjectContext2)
        {
          managedObjectContext2 = [*(*(&v179 + 1) + 8 * ii) managedObjectContext];
        }

        [v38 addObject:{objc_msgSend(v44, "entity")}];
      }

      v40 = [(NSArray *)conflictingObjects3 countByEnumeratingWithState:&v179 objects:v196 count:16];
    }

    while (v40);
    if (!managedObjectContext2)
    {
LABEL_73:
      v48 = &unk_1EF4352D8;
      goto LABEL_74;
    }

    databaseObject2 = [(NSConstraintConflict *)v152 databaseObject];
    p_isa = &databaseObject2->super.isa;
    if (databaseObject2)
    {
      [v38 addObject:{-[NSManagedObject entity](databaseObject2, "entity")}];
    }

    v47 = [v38 count];
    v48 = &unk_1EF435300;
    if (v47 > 1)
    {
      goto LABEL_74;
    }

    if ((-[NSEntityDescription _isPathologicalForConstraintMerging:]([v38 anyObject], &v178) & 1) == 0)
    {
      if (![(NSConstraintConflict *)v152 _isDBConflict])
      {
        conflictingObjects4 = [(NSConstraintConflict *)v152 conflictingObjects];
        conflictingSnapshots = [(NSConstraintConflict *)v152 conflictingSnapshots];
        constraintValues2 = [(NSConstraintConflict *)v152 constraintValues];
        v64 = [(NSArray *)[(NSConstraintConflict *)v152 conflictingSnapshots] count];
        if (!v64)
        {
          goto LABEL_122;
        }

        p_isa = 0;
        v65 = 0;
        while (1)
        {
          v66 = [(NSArray *)conflictingSnapshots objectAtIndex:v65];
          if ([MEMORY[0x1E695DFB0] null] == v66 && (objc_msgSend(-[NSArray objectAtIndex:](conflictingObjects4, "objectAtIndex:", v65), "hasChanges") & 1) == 0)
          {
            p_isa = [(NSArray *)conflictingObjects4 objectAtIndex:v65];
          }

          else if ([NSMergePolicy _valuesOnObject:v66 matchAgainstValues:constraintValues2])
          {
            p_isa = [(NSArray *)conflictingObjects4 objectAtIndex:v65];
LABEL_121:
            if (p_isa)
            {
              goto LABEL_171;
            }

LABEL_122:
            v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v185 = 0u;
            v186 = 0u;
            v183 = 0u;
            v184 = 0u;
            v69 = [(NSArray *)conflictingObjects4 countByEnumeratingWithState:&v183 objects:&v199 count:16];
            if (v69)
            {
              v70 = *v184;
              do
              {
                for (jj = 0; jj != v69; ++jj)
                {
                  if (*v184 != v70)
                  {
                    objc_enumerationMutation(conflictingObjects4);
                  }

                  v72 = *(*(&v183 + 1) + 8 * jj);
                  if ([v72 isInserted])
                  {
                    v73 = v68;
                  }

                  else
                  {
                    v73 = v67;
                  }

                  [v73 addObject:v72];
                }

                v69 = [(NSArray *)conflictingObjects4 countByEnumeratingWithState:&v183 objects:&v199 count:16];
              }

              while (v69);
            }

            v74 = [v67 count];
            if (!v74)
            {
              firstObject = [v68 firstObject];
LABEL_169:
              p_isa = firstObject;
              goto LABEL_170;
            }

            if (v74 == 1)
            {
              firstObject = [v67 lastObject];
              goto LABEL_169;
            }

            v76 = [objc_msgSend(v67 "firstObject")];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v189 = 0u;
              v190 = 0u;
              v187 = 0u;
              v188 = 0u;
              v77 = [v67 countByEnumeratingWithState:&v187 objects:v203 count:16];
              if (v77)
              {
                p_isa = 0;
                v78 = *v188;
                v79 = 0x7FFFFFFFFFFFFFFFLL;
                do
                {
                  for (kk = 0; kk != v77; ++kk)
                  {
                    if (*v188 != v78)
                    {
                      objc_enumerationMutation(v67);
                    }

                    v81 = *(*(&v187 + 1) + 8 * kk);
                    v82 = [objc_msgSend(v81 "objectID")];
                    v83 = v79 <= v82;
                    if (v79 >= v82)
                    {
                      v79 = v82;
                    }

                    if (!v83)
                    {
                      p_isa = v81;
                    }
                  }

                  v77 = [v67 countByEnumeratingWithState:&v187 objects:v203 count:16];
                }

                while (v77);
                goto LABEL_170;
              }

LABEL_247:
              p_isa = 0;
              goto LABEL_170;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v76 _referenceData], (objc_opt_respondsToSelector() & 1) == 0))
            {
              firstObject = [v67 firstObject];
              goto LABEL_169;
            }

            v189 = 0u;
            v190 = 0u;
            v187 = 0u;
            v188 = 0u;
            v84 = [v67 countByEnumeratingWithState:&v187 objects:v203 count:16];
            if (!v84)
            {
              goto LABEL_247;
            }

            p_isa = 0;
            v85 = 0;
            v86 = *v188;
            do
            {
              for (mm = 0; mm != v84; ++mm)
              {
                if (*v188 != v86)
                {
                  objc_enumerationMutation(v67);
                }

                v88 = *(*(&v187 + 1) + 8 * mm);
                v89 = [objc_msgSend(v88 "objectID")];
                if (v85)
                {
                  v90 = v89;
                  if ([v85 compare:v89] != -1)
                  {
                    p_isa = v88;
                    v85 = v90;
                  }
                }

                else
                {
                  v85 = [objc_msgSend(v88 "objectID")];
                }
              }

              v84 = [v67 countByEnumeratingWithState:&v187 objects:v203 count:16];
            }

            while (v84);
LABEL_170:

LABEL_171:
            type = selfCopy->_type;
            if (type - 3 < 2)
            {
              v199 = 0u;
              v200 = 0u;
              v201 = 0u;
              v202 = 0u;
              conflictingObjects5 = [(NSConstraintConflict *)v152 conflictingObjects];
              v132 = [(NSArray *)conflictingObjects5 countByEnumeratingWithState:&v199 objects:v203 count:16];
              if (v132)
              {
                v133 = *v200;
                do
                {
                  for (nn = 0; nn != v132; ++nn)
                  {
                    if (*v200 != v133)
                    {
                      objc_enumerationMutation(conflictingObjects5);
                    }

                    v135 = *(*(&v199 + 1) + 8 * nn);
                    if (v135 != p_isa)
                    {
                      [objc_msgSend(*(*(&v199 + 1) + 8 * nn) "managedObjectContext")];
                    }
                  }

                  v132 = [(NSArray *)conflictingObjects5 countByEnumeratingWithState:&v199 objects:v203 count:16];
                }

                while (v132);
              }

LABEL_243:
              v59 = 1;
              goto LABEL_245;
            }

            if (type - 1 > 1)
            {
              v59 = 0;
              goto LABEL_245;
            }

            conflictingObjects6 = [(NSConstraintConflict *)v152 conflictingObjects];
            v202 = 0u;
            v201 = 0u;
            v200 = 0u;
            v199 = 0u;
            v93 = [(NSArray *)conflictingObjects6 countByEnumeratingWithState:&v199 objects:v203 count:16];
            if (!v93)
            {
              goto LABEL_243;
            }

            v156 = *v200;
            v153 = conflictingObjects6;
            while (2)
            {
              v94 = 0;
              v154 = v93;
LABEL_176:
              if (*v200 != v156)
              {
                objc_enumerationMutation(v153);
              }

              v95 = *(*(&v199 + 1) + 8 * v94);
              if (v95 != p_isa)
              {
                if (p_isa && (v96 = p_isa[6]) != 0)
                {
                  v97 = *(v96 + 8);
                  if (!v95)
                  {
LABEL_186:
                    v160 = 0;
                    goto LABEL_187;
                  }
                }

                else
                {
                  v97 = 0;
                  if (!v95)
                  {
                    goto LABEL_186;
                  }
                }

                v98 = v95[6];
                if (!v98)
                {
                  goto LABEL_186;
                }

                v160 = *(v98 + 8);
LABEL_187:
                entity = [p_isa entity];
                v100 = entity;
                if (entity)
                {
                  keys = [*(entity + 104) keys];
                  v102 = v100[14];
                }

                else
                {
                  keys = [0 keys];
                  v102 = 0;
                }

                null2 = [MEMORY[0x1E695DFB0] null];
                v159 = v100;
                v162 = v95;
                v103 = v102[6];
                v104 = v102[7];
                if (v103 < v104 + v103)
                {
                  v105 = (keys + 8 * v103);
                  do
                  {
                    if (!v97 || ((v106 = [v97 valueForKey:*v105], null2 != v106) ? (v107 = v106) : (v107 = 0), (v108 = objc_msgSend(p_isa, "valueForKey:", *v105), v107 | v108) && objc_msgSend(v107, "isEqual:", v108)))
                    {
                      v109 = [v160 valueForKey:*v105];
                      v110 = null2 == v109 ? 0 : v109;
                      v111 = [v162 valueForKey:*v105];
                      v112 = v111;
                      if (v111 | v110)
                      {
                        if (([v111 isEqual:v110] & 1) == 0)
                        {
                          [p_isa setValue:v112 forKey:*v105];
                        }
                      }
                    }

                    ++v105;
                    --v104;
                  }

                  while (v104);
                }

                v157 = v94;
                v113 = v102[12];
                v114 = v102[13];
                if (v113 < v114 + v113)
                {
                  v115 = 8 * v113;
                  do
                  {
                    v116 = p_isa;
                    v117 = [p_isa valueForKey:*(keys + v115)];
                    if (!v97 || ((v118 = [v97 valueForKey:*(keys + v115)], null2 != v118) ? (v119 = v118) : (v119 = 0), v119 | v117 && objc_msgSend(v119, "isEqual:", objc_msgSend(v117, "objectID"))))
                    {
                      v120 = [v160 valueForKey:*(keys + v115)];
                      v121 = null2 == v120 ? 0 : v120;
                      v122 = [v162 valueForKey:*(keys + v115)];
                      v123 = v122;
                      if (v122 | v121)
                      {
                        if (([v122 isEqual:v121] & 1) == 0)
                        {
                          v124 = *(v159[12] + 24 + v115);
                          inverseRelationship = [v124 inverseRelationship];
                          name = [inverseRelationship name];
                          isToMany = [inverseRelationship isToMany];
                          if (v117)
                          {
                            if (!inverseRelationship)
                            {
                              [NSMergePolicy _cannotResolveConflictOnEntity:v159 relationshipWithNoInverse:v124];
                            }

                            if (isToMany)
                            {
                              isOrdered = [inverseRelationship isOrdered];
                              name2 = [inverseRelationship name];
                              if (isOrdered)
                              {
                                [objc_msgSend(v117 mutableOrderedSetValueForKey:{name2), "removeObject:", v116}];
                                v130 = [v123 mutableOrderedSetValueForKey:{objc_msgSend(inverseRelationship, "name")}];
                              }

                              else
                              {
                                [objc_msgSend(v117 mutableSetValueForKey:{name2), "removeObject:", v116}];
                                v130 = [v123 mutableSetValueForKey:{objc_msgSend(inverseRelationship, "name")}];
                              }

                              [v130 addObject:v116];
                              [v130 removeObject:v162];
                            }

                            else
                            {
                              [v123 setValue:v116 forKey:name];
                              [v117 setValue:0 forKey:name];
                            }

                            if ([v124 deleteRule] == 2)
                            {
                              [objc_msgSend(v116 "managedObjectContext")];
                            }
                          }

                          [v162 setValue:0 forKey:*(keys + v115)];
                          [v116 setValue:v123 forKey:*(keys + v115)];
                        }
                      }
                    }

                    v115 += 8;
                    --v114;
                    p_isa = v116;
                  }

                  while (v114);
                }

                [NSMergePolicy _mergeToManyUnionRelationshipsForObject:v162 andObject:?];
                v93 = v154;
                v94 = v157;
                [objc_msgSend(v162 "managedObjectContext")];
              }

              if (++v94 == v93)
              {
                v93 = [(NSArray *)v153 countByEnumeratingWithState:&v199 objects:v203 count:16];
                if (!v93)
                {
                  goto LABEL_243;
                }

                continue;
              }

              goto LABEL_176;
            }
          }

          if (v64 == ++v65)
          {
            goto LABEL_121;
          }
        }
      }

      v59 = 0;
      v60 = selfCopy->_type;
      if (v60 > 2)
      {
        if (v60 == 3)
        {
          [NSMergePolicy _overwriteResolveConstraintConflict:v152];
        }

        else
        {
          if (v60 != 4)
          {
            goto LABEL_245;
          }

          [NSMergePolicy _rollbackResolveConstraintConflict:v152];
        }
      }

      else
      {
        if (v60 != 1)
        {
          if (v60 == 2)
          {
            [NSMergePolicy _byPropertyObjectTrumpResolveConstraintConflict:v152];
            goto LABEL_151;
          }

LABEL_245:
          [objc_msgSend(p_isa "managedObjectContext")];
          v48 = &unk_1EF435328;
          if (v59)
          {
            v49 = 1;
            goto LABEL_75;
          }

LABEL_74:
          v49 = 0;
          v178 = [MEMORY[0x1E696ABC0] errorWithDomain:v147 code:133020 userInfo:v48];
          goto LABEL_75;
        }

        [NSMergePolicy _byPropertyStoreTrumpResolveConstraintConflict:v152];
      }

LABEL_151:
      v59 = 1;
      goto LABEL_245;
    }

    v49 = 0;
LABEL_75:

    if ((v49 & 1) == 0)
    {
      break;
    }

LABEL_76:
    if (++v158 == v149)
    {
      v17 = [(NSArray *)list countByEnumeratingWithState:&v165 objects:v193 count:16];
      v151 = 1;
      if (!v17)
      {
        goto LABEL_253;
      }

      goto LABEL_24;
    }
  }

  v136 = v178;
LABEL_251:
  v151 = 0;
LABEL_253:
  [v145 drain];
  v137 = 0;
  if ((v151 & 1) == 0)
  {
    v139 = v178;
    if (v178)
    {
      *error = v178;
      v140 = v139;
      result = 0;
      goto LABEL_258;
    }

LABEL_257:
    v141 = MEMORY[0x1E696ABC0];
    v191 = @"conflictList";
    v192 = list;
    v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
    v143 = [v141 errorWithDomain:*MEMORY[0x1E696A250] code:133021 userInfo:v142];
    result = 0;
    *error = v143;
    goto LABEL_258;
  }

LABEL_254:
  result = 1;
LABEL_258:
  v144 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __50__NSMergePolicy_resolveConstraintConflicts_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __50__NSMergePolicy_resolveConstraintConflicts_error___block_invoke_2;
  v7 = &unk_1E6EC28A8;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  if ([v10 concurrencyType])
  {
    return [*(a1 + 32) performBlockAndWait:v5];
  }

  else
  {
    return v6(v5);
  }
}

uint64_t __50__NSMergePolicy_resolveConstraintConflicts_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(NSFetchRequest);
  [(NSFetchRequest *)v4 setEntity:v3];
  [(NSFetchRequest *)v4 setIncludesSubentities:1];
  [(NSFetchRequest *)v4 setIncludesPendingChanges:0];
  [(NSFetchRequest *)v4 setRelationshipKeyPathsForPrefetching:[(NSEntityDescription *)v3 _keypathsForDeletions]];
  -[NSFetchRequest setPredicate:](v4, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 40)]);
  v7 = 0;
  v5 = [*(a1 + 48) executeFetchRequest:v4 error:&v7];
  if (v5)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
  }

  return [v2 drain];
}

- (BOOL)resolveOptimisticLockingVersionConflicts:(NSArray *)list error:(NSError *)error
{
  v4 = list;
  v55 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)list count])
  {
    v22 = 1;
    goto LABEL_54;
  }

  if (!self->_type)
  {
    v22 = 0;
    goto LABEL_51;
  }

  v34 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  array = [MEMORY[0x1E695DF70] array];
  obj = v4;
  if ([-[NSArray objectAtIndex:](v4 objectAtIndex:{0), "objectForKey:", @"snapshot"}])
  {
    goto LABEL_4;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = [(NSArray *)v4 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (!v25)
  {
    goto LABEL_4;
  }

  managedObjectContext = 0;
  v27 = *v43;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v43 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v42 + 1) + 8 * i);
      v30 = [objc_msgSend(v29 objectForKey:{@"newVersion", "unsignedIntValue"}];
      v31 = [v29 objectForKey:@"object"];
      v32 = v31;
      if (managedObjectContext)
      {
        if (!v31)
        {
          continue;
        }
      }

      else
      {
        managedObjectContext = [v31 managedObjectContext];
        if (!v32)
        {
          continue;
        }
      }

      if (!v30 || [v32 isDeleted])
      {
        [array addObject:{objc_msgSend(v32, "objectID")}];
      }
    }

    v25 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  }

  while (v25);
  v4 = obj;
  if (managedObjectContext)
  {
    v33 = [_PFRoutines createDictionaryPartitioningObjectsIDByRootEntity:array];
    v46 = 0;
    v47 = &v46;
    v48 = 0x3052000000;
    v49 = __Block_byref_object_copy__16;
    v50 = __Block_byref_object_dispose__16;
    array2 = [MEMORY[0x1E695DF70] array];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __64__NSMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke;
    v41[3] = &unk_1E6EC1CD8;
    v41[4] = managedObjectContext;
    v41[5] = &v46;
    [(__CFDictionary *)v33 enumerateKeysAndObjectsUsingBlock:v41];

    _Block_object_dispose(&v46, 8);
    v4 = obj;
  }

LABEL_4:
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [(NSArray *)v4 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v7)
  {
    v8 = *v38;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v38 != v8)
      {
        objc_enumerationMutation(obj);
      }

      if (!self)
      {
        v22 = 0;
        goto LABEL_47;
      }

      v10 = *(*(&v37 + 1) + 8 * v9);
      v11 = [objc_msgSend(v10 objectForKey:{@"newVersion", "unsignedIntValue"}];
      v12 = [v10 objectForKey:@"object"];
      managedObjectContext2 = [v12 managedObjectContext];
      v14 = managedObjectContext2;
      if (v12)
      {
        v15 = managedObjectContext2 == 0;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v14 = *(v12 + 32);
        if (v14)
        {
          objectID = [v12 objectID];
          v17 = [v14 objectRegisteredForID:objectID];
          if (v17 == v12)
          {
            *(v12 + 16) &= ~0x80u;
          }

          else if (!v17)
          {
            [(NSManagedObjectContext *)v14 _registerObject:v12 withID:objectID];
          }
        }
      }

      type = self->_type;
      if (v11)
      {
        if (type > 2)
        {
          if (type == 3)
          {
            if (([v12 hasChanges] & 1) == 0)
            {
              _PFFastMOCObjectWillChange(v14, v12);
            }

            [v12 _setVersionReference__:v11];
          }

          else if (type == 4)
          {
            [v14 refreshObject:v12 mergeChanges:0];
            objectID2 = [v12 objectID];
            persistentStore = [objectID2 persistentStore];
            if (@"NSXPCStore" == [persistentStore type])
            {
              _persistentStoreCoordinator = [persistentStore _persistentStoreCoordinator];
              v46 = MEMORY[0x1E69E9820];
              v47 = 3221225472;
              v48 = __33__NSMergePolicy_resolveConflict___block_invoke;
              v49 = &unk_1E6EC19D8;
              v50 = v14;
              array2 = persistentStore;
              v52 = objectID2;
              [_persistentStoreCoordinator performBlockAndWait:&v46];
            }
          }
        }

        else if (type == 1)
        {
          [(NSMergePolicy *)self _mergeChangesStoreUpdatesTrumpForObject:v12 withRecord:v10];
          [v12 _setVersionReference__:v11];
        }

        else if (type == 2)
        {
          if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
          {
            [(NSMergePolicy *)self _mergeChangesObjectUpdatesTrumpForObject:v12 withRecord:v10];
            [v12 _setVersionReference__:v11];
          }

          else
          {
            [v14 refreshObject:v12 mergeChanges:1];
          }
        }
      }

      else
      {
        if (!(z9dsptsiQ80etb9782fsrs98bfdle88 & 1 | (type != 2)))
        {
          type = 3;
        }

        if ((type - 1) < 2)
        {
          goto LABEL_31;
        }

        if (type == 3)
        {
          if (([v12 isDeleted] & 1) == 0 && (objc_msgSend(v12, "isInserted") & 1) == 0)
          {
            [v14 _forceInsertionForObject:v12];
          }

          goto LABEL_44;
        }

        if (type == 4)
        {
LABEL_31:
          [v14 deleteObject:v12];
        }
      }

LABEL_44:
      [v12 awakeFromSnapshotEvents:64];
      if (v7 == ++v9)
      {
        v7 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v53 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v22 = 1;
LABEL_47:
  if (v34)
  {
    [v34 drain];
  }

LABEL_51:
  if (error && !v22)
  {
    v22 = 0;
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:133020 userInfo:0];
  }

LABEL_54:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __64__NSMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __64__NSMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke_2;
  v7 = &unk_1E6EC28A8;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  if ([v10 concurrencyType])
  {
    return [*(a1 + 32) performBlockAndWait:v5];
  }

  else
  {
    return v6(v5);
  }
}

uint64_t __64__NSMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(NSFetchRequest);
  [(NSFetchRequest *)v4 setEntity:v3];
  [(NSFetchRequest *)v4 setIncludesSubentities:1];
  [(NSFetchRequest *)v4 setIncludesPendingChanges:0];
  [(NSFetchRequest *)v4 setRelationshipKeyPathsForPrefetching:[(NSEntityDescription *)v3 _keypathsForDeletions]];
  -[NSFetchRequest setPredicate:](v4, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 40)]);
  v7 = 0;
  v5 = [*(a1 + 48) executeFetchRequest:v4 error:&v7];
  if (v5)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
  }

  return [v2 drain];
}

@end
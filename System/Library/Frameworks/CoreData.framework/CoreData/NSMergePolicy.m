@interface NSMergePolicy
+ (void)initialize;
- (BOOL)resolveConflicts:(NSArray *)list error:(NSError *)error;
- (BOOL)resolveConstraintConflicts:(NSArray *)list error:(NSError *)error;
- (BOOL)resolveOptimisticLockingVersionConflicts:(NSArray *)list error:(NSError *)error;
- (NSMergePolicy)init;
- (NSMergePolicy)initWithCoder:(id)a3;
- (id)initWithMergeType:(NSMergePolicyType)ty;
- (uint64_t)_byPropertyObjectTrumpResolveConstraintConflict:(void *)a1;
- (uint64_t)_byPropertyStoreTrumpResolveConstraintConflict:(void *)a1;
- (uint64_t)_mergeToManyUnionRelationshipsForObject:(void *)a1 andObject:(void *)a2;
- (uint64_t)_overwriteResolveConstraintConflict:(void *)a1;
- (uint64_t)_rollbackResolveConstraintConflict:(void *)a1;
- (uint64_t)_valuesOnObject:(uint64_t)a1 matchAgainstValues:(void *)a2;
- (void)_mergeChangesObjectUpdatesTrumpForObject:(id)a3 withRecord:(id)a4;
- (void)_mergeChangesStoreUpdatesTrumpForObject:(id)a3 withRecord:(id)a4;
- (void)_mergeToManyRelationshipsForObject:(void *)a1 ontoObject:(void *)a2;
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

    v8 = self;
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

- (NSMergePolicy)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntForKey:@"NSTypeCode"] - 1;
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

- (uint64_t)_valuesOnObject:(uint64_t)a1 matchAgainstValues:(void *)a2
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__NSMergePolicy__valuesOnObject_matchAgainstValues___block_invoke;
  v4[3] = &unk_1E6EC1CD8;
  v4[4] = a1;
  v4[5] = &v5;
  [a2 enumerateKeysAndObjectsUsingBlock:v4];
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

- (uint64_t)_rollbackResolveConstraintConflict:(void *)a1
{
  v1 = [objc_msgSend(a1 "conflictingObjects")];
  v2 = [v1 isInserted];
  v3 = [v1 managedObjectContext];
  if (v2)
  {

    return [v3 deleteObject:v1];
  }

  else
  {

    return [v3 refreshObject:v1 mergeChanges:0];
  }
}

- (uint64_t)_mergeToManyUnionRelationshipsForObject:(void *)a1 andObject:(void *)a2
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = [a2 entity];
  if (v2)
  {
    v3 = v2;
    result = [*(v2 + 104) keys];
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
        v9 = [v8 inverseRelationship];
        v10 = [v9 name];
        v11 = [v9 isToMany];
        v43 = [v9 isOrdered];
        v12 = [v8 isOrdered];
        v13 = *(v7 + 8 * v6);
        v41 = v6;
        v39 = v8;
        if (v12)
        {
          break;
        }

        v17 = [a1 mutableSetValueForKey:v13];
        v15 = [a2 mutableSetValueForKey:*(v7 + 8 * v6)];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v18 = [v15 allObjects];
        v19 = [v18 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v46 + 1) + 8 * i);
              [v17 addObject:v24];
              if (!v9)
              {
LABEL_40:
                [NSMergePolicy _cannotResolveConflictOnEntity:v38 relationshipWithNoInverse:v39];
              }

              if (v11)
              {
                if (v43)
                {
                  v25 = [v24 mutableOrderedSetValueForKey:v10];
                }

                else
                {
                  v25 = [v24 mutableSetValueForKey:v10];
                }

                v26 = v25;
                [v25 removeObject:a2];
                [v26 addObject:a1];
              }

              else
              {
                [v24 setValue:a1 forKey:v10];
              }

              v15 = v23;
            }

            v20 = [v18 countByEnumeratingWithState:&v46 objects:v54 count:16];
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

      v14 = [a1 mutableOrderedSetValueForKey:v13];
      v15 = [a2 mutableOrderedSetValueForKey:*(v7 + 8 * v6)];
      if ([v15 count])
      {
        v16 = [v15 objectsAtIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", 0, objc_msgSend(v15, "count"))}];
      }

      else
      {
        v16 = [MEMORY[0x1E695DEC8] array];
      }

      v27 = v16;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = [v16 countByEnumeratingWithState:&v50 objects:v55 count:16];
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
          if (!v9)
          {
            goto LABEL_40;
          }

          if (v11)
          {
            if (v43)
            {
              v34 = [v33 mutableOrderedSetValueForKey:v10];
            }

            else
            {
              v34 = [v33 mutableSetValueForKey:v10];
            }

            v35 = v34;
            [v34 removeObject:a2];
            [v35 addObject:a1];
          }

          else
          {
            [v33 setValue:a1 forKey:v10];
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

- (uint64_t)_overwriteResolveConstraintConflict:(void *)a1
{
  v2 = [a1 databaseObject];
  -[NSMergePolicy _mergeToManyUnionRelationshipsForObject:andObject:]([objc_msgSend(a1 "conflictingObjects")], objc_msgSend(a1, "databaseObject"));
  v3 = [v2 managedObjectContext];

  return [v3 deleteObject:v2];
}

- (void)_mergeToManyRelationshipsForObject:(void *)a1 ontoObject:(void *)a2
{
  v2 = a1;
  v105 = *MEMORY[0x1E69E9840];
  v3 = [a1 entity];
  v4 = v3;
  if (v3)
  {
    v5 = [*(v3 + 104) keys];
    v6 = v4[14];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = [0 keys];
    v6 = 0;
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v7 = v2[6];
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
    v72 = v2;
    v68 = v5;
    v65 = v4;
    do
    {
      v9 = *(v4[12] + 24 + 8 * v8);
      v10 = [v9 inverseRelationship];
      v11 = [v10 name];
      v12 = [v10 isToMany];
      v73 = [v10 isOrdered];
      v64 = v9;
      v13 = [v9 isOrdered];
      v14 = *(v5 + 8 * v8);
      v69 = v8;
      if (v13)
      {
        v15 = [v2 mutableOrderedSetValueForKey:v14];
        v16 = [v67 objectForKey:*(v5 + 8 * v8)];
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

        v23 = [a2 mutableOrderedSetValueForKey:*(v68 + 8 * v69)];
        if ([v15 count])
        {
          v24 = [v15 objectsAtIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", 0, objc_msgSend(v15, "count"))}];
        }

        else
        {
          v24 = [MEMORY[0x1E695DEC8] array];
        }

        v48 = v24;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v49 = [v24 countByEnumeratingWithState:&v91 objects:v103 count:16];
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
              if (!v10)
              {

                goto LABEL_96;
              }

              if (v12)
              {
                if (v73)
                {
                  v54 = [v53 mutableOrderedSetValueForKey:v11];
                }

                else
                {
                  v54 = [v53 mutableSetValueForKey:v11];
                }

                v55 = v54;
                [v54 removeObject:v72];
                [v55 addObject:a2];
              }

              else
              {
                [v53 setValue:a2 forKey:v11];
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
                if (!v10)
                {

                  [NSMergePolicy _cannotResolveConflictOnEntity:v65 relationshipWithNoInverse:v64];
                }

                if (v73)
                {
                  v61 = [v60 mutableOrderedSetValueForKey:v11];
                }

                else
                {
                  v61 = [v60 mutableSetValueForKey:v11];
                }

                [v61 removeObject:a2];
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
        v25 = [v2 mutableSetValueForKey:v14];
        v26 = [v67 objectForKey:*(v5 + 8 * v8)];
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
        v33 = [a2 mutableSetValueForKey:*(v68 + 8 * v69)];
        v34 = [v25 allObjects];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        obj = v34;
        v35 = [v34 countByEnumeratingWithState:&v79 objects:v100 count:16];
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
              if (!v10)
              {
LABEL_95:

LABEL_96:
                [NSMergePolicy _cannotResolveConflictOnEntity:v65 relationshipWithNoInverse:v64];
              }

              if (v12)
              {
                if (v73)
                {
                  v40 = [v39 mutableOrderedSetValueForKey:v11];
                }

                else
                {
                  v40 = [v39 mutableSetValueForKey:v11];
                }

                v41 = v40;
                [v40 removeObject:v72];
                [v41 addObject:a2];
              }

              else
              {
                [v39 setValue:a2 forKey:v11];
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
                if (!v10)
                {
                  goto LABEL_95;
                }

                if (v12)
                {
                  if (v73)
                  {
                    v47 = [v46 mutableOrderedSetValueForKey:v11];
                  }

                  else
                  {
                    v47 = [v46 mutableSetValueForKey:v11];
                  }

                  [v47 removeObject:a2];
                }

                else
                {
                  [v46 setValue:0 forKey:v11];
                }
              }
            }

            v43 = [v63 countByEnumeratingWithState:&v75 objects:v99 count:16];
          }

          while (v43);
        }

        v4 = v65;
      }

      v5 = v68;
      v8 = v69 + 1;
      v2 = v72;
    }

    while (v69 + 1 != v66);
  }

  v62 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_byPropertyStoreTrumpResolveConstraintConflict:(void *)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(a1 "conflictingObjects")];
  v3 = [a1 conflictingObjects];
  if ([a1 _isDBConflict])
  {
    v4 = [a1 databaseObject];
  }

  else
  {
    v4 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v4 != v9)
        {
          [NSMergePolicy _mergeToManyRelationshipsForObject:v9 ontoObject:v4];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v2 managedObjectContext];
  v11 = *MEMORY[0x1E69E9840];

  return [v10 deleteObject:v2];
}

- (uint64_t)_byPropertyObjectTrumpResolveConstraintConflict:(void *)a1
{
  v2 = [objc_msgSend(a1 "conflictingObjects")];
  v3 = [a1 databaseObject];
  v48 = [v2 isInserted];
  v44 = [v2 managedObjectContext];
  v4 = [v2 entity];
  v5 = v4;
  v45 = v4;
  if (v4)
  {
    v6 = [*(v4 + 104) keys];
    v5 = v5[14];
  }

  else
  {
    v6 = [0 keys];
  }

  v7 = [MEMORY[0x1E695DFB0] null];
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
    v12 = (v6 + 8 * v10);
    do
    {
      v13 = [v9 valueForKey:*v12];
      v14 = [v2 valueForKey:*v12];
      if (v7 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      if ((v48 & 1) != 0 || (v7 != v13 ? (v16 = v13) : (v16 = 0), ([v16 isEqual:v15] & 1) == 0))
      {
        [v3 setValue:v15 forKey:*v12];
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
    v42 = v3;
    while (1)
    {
      v20 = [v9 valueForKey:*(v6 + v19)];
      if (v7 == v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      v22 = [v2 valueForKey:*(v6 + v19)];
      v23 = v22;
      if (v7 == v22)
      {
        v24 = 0;
      }

      else
      {
        v24 = [v22 objectID];
      }

      if (v48 & 1) == 0 && ([v21 isEqual:v24])
      {
        goto LABEL_52;
      }

      v25 = v3;
      v26 = [v3 valueForKey:*(v6 + v19)];
      v27 = *(*(v45 + 96) + 24 + v19);
      v28 = [v27 inverseRelationship];
      v29 = [v28 name];
      v30 = [v28 isToMany];
      if (!v26)
      {
        if (v28)
        {
          if (v30)
          {
            v37 = [v28 isOrdered];
            v38 = [v28 name];
            if (v37)
            {
              v39 = [v23 mutableOrderedSetValueForKey:v38];
            }

            else
            {
              v39 = [v23 mutableSetValueForKey:v38];
            }

            v40 = v39;
            [v39 addObject:v25];
            [v40 removeObject:v46];
          }

          else
          {
            [v23 setValue:v25 forKey:v29];
          }
        }

        goto LABEL_51;
      }

      if (v28)
      {
        break;
      }

LABEL_47:
      if ([v27 deleteRule] == 2)
      {
        [v44 deleteObject:v26];
      }

LABEL_51:
      [v46 setValue:0 forKey:*(v6 + v19)];
      v3 = v25;
      v2 = v46;
      [v3 setValue:v23 forKey:*(v6 + v19)];
LABEL_52:
      v19 += 8;
      --v18;
      v9 = v47;
      if (!v18)
      {
        goto LABEL_53;
      }
    }

    if (!v30)
    {
      [v23 setValue:v25 forKey:v29];
      [v26 setValue:0 forKey:v29];
      goto LABEL_47;
    }

    v31 = [v28 isOrdered];
    v32 = [v28 name];
    if (v31)
    {
      v43 = [v26 mutableOrderedSetValueForKey:v32];
      v33 = [v23 mutableOrderedSetValueForKey:{objc_msgSend(v28, "name")}];
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
      [objc_msgSend(v26 mutableSetValueForKey:{v32), "removeObject:", v25}];
      v33 = [v23 mutableSetValueForKey:{objc_msgSend(v28, "name")}];
      [v33 addObject:v42];
    }

    v35 = v33;
    v36 = v46;
LABEL_46:
    [v35 removeObject:v36];
    goto LABEL_47;
  }

LABEL_53:
  [NSMergePolicy _mergeToManyRelationshipsForObject:v2 ontoObject:v3];

  return [v44 deleteObject:v2];
}

void __33__NSMergePolicy_resolveConflict___block_invoke(uint64_t a1)
{
  v2 = -[_NSQueryGenerationToken _generationalComponentForStore:]([*(a1 + 32) _queryGenerationToken], *(a1 + 40));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  [(NSXPCStore *)v3 _clearCachedRowForObjectWithID:v4 generation:v2];
}

- (void)_mergeChangesStoreUpdatesTrumpForObject:(id)a3 withRecord:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v39 = [a3 managedObjectContext];
  v42 = a3;
  if ([a3 isInserted])
  {
    [(NSManagedObjectContext *)v39 _forceMoveInsertToUpdatedList:a3];
  }

  v41 = [a4 ancestorSnapshot];
  v6 = [a4 objectForKey:@"snapshot"];
  v7 = [a4 objectForKey:@"cachedRow"];
  v8 = v7;
  if (v6)
  {
    v9 = v7;
    v8 = v6;
  }

  else
  {
    v9 = [a4 objectForKey:@"databaseRow"];
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
  v12 = [v42 entity];
  v13 = v12;
  if (v12)
  {
    v14 = [*(v12 + 104) keys];
    v15 = *(v13 + 112);
  }

  else
  {
    v14 = [0 keys];
    v15 = 0;
  }

  v16 = [MEMORY[0x1E695DFB0] null];
  v40 = [-[NSManagedObjectContext _committedSnapshotForObject:](v39 v42)];
  v17 = *(v15 + 48);
  v18 = *(v15 + 56);
  v38 = v15;
  if (v17 < v18 + v17)
  {
    v36 = *MEMORY[0x1E696AA08];
    v35 = *MEMORY[0x1E696A250];
    do
    {
      v19 = [v8 objectForKey:*(v14 + 8 * v17)];
      if (v19 == v16)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      v21 = [v9 objectForKey:*(v14 + 8 * v17)];
      if (v21 == v16)
      {
        v22 = 0;
      }

      else
      {
        v22 = v21;
      }

      if (v20 != v22 && ([*(*(v13 + 96) + 24 + 8 * v17) _epsilonEquals:v22 rhs:v20 withFlags:1] & 1) == 0)
      {
        if (!v41 || (v23 = [v41 objectForKey:*(v14 + 8 * v17)], v24 = v23, v23 == v20) || (objc_msgSend(v23, "isEqual:", v20) & 1) != 0)
        {
          v20 = v22;
        }

        else if (v24 != v22 && ![v24 isEqual:v22])
        {
          v20 = v22;
        }

        [v42 setValue:v20 forKey:*(v14 + 8 * v17)];
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
      v27 = [v8 objectForKey:*(v14 + 8 * v25)];
      if (v27 == v16)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      if (v43)
      {
        v28 = [v28 objectID];
      }

      v29 = [v9 objectForKey:*(v14 + 8 * v25)];
      if (v29 == v16)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29;
      }

      if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 1) == 0)
      {
        v30 = [v30 objectID];
      }

      if (v28 == v30 || ([v30 isEqual:v28] & 1) != 0)
      {
        goto LABEL_60;
      }

      if (!v41)
      {
        goto LABEL_55;
      }

      v31 = [v41 objectForKey:*(v14 + 8 * v25)];
      v32 = v31;
      if (v31 == v28 || ([v31 isEqual:v28] & 1) != 0)
      {
        goto LABEL_55;
      }

      if (v32 != v30)
      {
        break;
      }

      v30 = v28;
      if (!v28)
      {
LABEL_58:
        v33 = 0;
        goto LABEL_59;
      }

LABEL_56:
      v33 = [NSManagedObjectContext _retainedObjectWithID:v39 optionalHandler:v30 withInlineStorage:0];
LABEL_59:
      [v42 setValue:v33 forKey:*(v14 + 8 * v25)];
      [v40 setValue:v33 atIndex:v25];

LABEL_60:
      ++v25;
      if (!--v26)
      {
        goto LABEL_61;
      }
    }

    if ([v32 isEqual:v30])
    {
      v30 = v28;
    }

LABEL_55:
    if (!v30)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

LABEL_61:

  if (v41)
  {
    [(NSMergePolicy *)self mergeToManyRelationshipForSourceObject:v42 withOldSnapshot:v8 newSnapshot:v9 andAncestor:v41 andLegacyPath:v43];
  }

  if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1 && [v42 isDeleted])
  {
    -[NSManagedObjectContext _insertObjectWithGlobalID:globalID:]([v42 managedObjectContext], v42, objc_msgSend(v42, "objectID"));
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

- (void)_mergeChangesObjectUpdatesTrumpForObject:(id)a3 withRecord:(id)a4
{
  v79 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v53 = [a3 managedObjectContext];
  v7 = [(NSManagedObjectContext *)v53 _committedSnapshotForObject:a3];
  if ([a3 isDeleted])
  {
    if (self)
    {
      v8 = [a4 objectForKey:@"snapshot"];
      v9 = [a4 objectForKey:@"cachedRow"];
      v10 = v9;
      if (v8)
      {
        v11 = v9;
        v10 = v8;
      }

      else
      {
        v11 = [a4 objectForKey:@"databaseRow"];
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
      v14 = [a3 managedObjectContext];
      v15 = v14;
      if (v14)
      {
        v16 = *(v14 + 32);
      }

      else
      {
        v16 = 0;
      }

      *buf = MEMORY[0x1E69E9820];
      v70 = 3221225472;
      v71 = __68__NSMergePolicy__mergeDeletionWithStoreChangesForObject_withRecord___block_invoke;
      v72 = &unk_1E6EC2860;
      v73 = a3;
      v74 = v10;
      v78 = v13;
      v75 = v11;
      v76 = v14;
      v77 = v16;
      [(NSManagedObjectContext *)v14 lockObjectStore];
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

  else if ([a3 isInserted])
  {
    [(NSManagedObjectContext *)v53 _forceMoveInsertToUpdatedList:a3];
  }

  v17 = [a4 objectForKey:@"snapshot"];
  v18 = [a4 objectForKey:@"cachedRow"];
  if (v17)
  {
    v57 = v18;
    v58 = v17;
  }

  else
  {
    v58 = v18;
    v57 = [a4 objectForKey:@"databaseRow"];
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
  v21 = [(NSManagedObject *)a3 _newChangedValuesForRefresh__];
  v55 = [v7 copy];
  v22 = [a3 entity];
  v54 = v22;
  if (v22)
  {
    v23 = v22;
    v24 = [*(v22 + 104) keys];
    v25 = *(v23 + 112);
  }

  else
  {
    v24 = [0 keys];
    v25 = 0;
  }

  v26 = [MEMORY[0x1E695DFB0] null];
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
      v30 = [v58 objectForKey:*(v24 + 8 * v27)];
      if (v30 == v26)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      v32 = [v57 objectForKey:*(v24 + 8 * v27)];
      if (v32 == v26)
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

          [a3 setValue:v33 forKey:*(v24 + 8 * v27)];
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
      v37 = [v58 objectForKey:*(v24 + 8 * v35)];
      if (v37 == v26)
      {
        v38 = 0;
      }

      else
      {
        v38 = v37;
      }

      if (v56)
      {
        v38 = [v38 objectID];
      }

      v39 = [v57 objectForKey:*(v24 + 8 * v35)];
      if (v39 == v26)
      {
        v40 = 0;
      }

      else
      {
        v40 = v39;
      }

      if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 1) == 0)
      {
        v40 = [v40 objectID];
      }

      if (v38 != v40 && ([v40 isEqual:v38] & 1) == 0)
      {
        if (v40)
        {
          v41 = [NSManagedObjectContext _retainedObjectWithID:v53 optionalHandler:v40 withInlineStorage:0];
        }

        else
        {
          v41 = 0;
        }

        [a3 setValue:v41 forKey:*(v24 + 8 * v35)];
        [v55 setValue:v41 atIndex:v35];
      }

      ++v35;
      --v36;
    }

    while (v36);
  }

  [(NSManagedObject *)a3 _setOriginalSnapshot__:v55];
  if ([(NSKnownKeysDictionary *)v21 count])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v42 = [(NSKnownKeysDictionary *)v21 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v42)
    {
      v43 = *v64;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v64 != v43)
          {
            objc_enumerationMutation(v21);
          }

          [a3 willChangeValueForKey:*(*(&v63 + 1) + 8 * i)];
        }

        v42 = [(NSKnownKeysDictionary *)v21 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v42);
    }

    [(NSManagedObject *)a3 _updateFromRefreshSnapshot:v21 includingTransients:0];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v45 = [(NSKnownKeysDictionary *)v21 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v45)
    {
      v46 = *v60;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v60 != v46)
          {
            objc_enumerationMutation(v21);
          }

          [a3 didChangeValueForKey:*(*(&v59 + 1) + 8 * j)];
        }

        v45 = [(NSKnownKeysDictionary *)v21 countByEnumeratingWithState:&v59 objects:v67 count:16];
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

  v150 = self;
  if (!self->_type)
  {
    goto LABEL_257;
  }

  v145 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([-[NSArray firstObject](list "firstObject")])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v6 = [(NSArray *)list countByEnumeratingWithState:&v174 objects:v195 count:16];
    if (v6)
    {
      v7 = 0;
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
          v11 = [v10 conflictingObjects];
          v12 = [v11 countByEnumeratingWithState:&v170 objects:v194 count:16];
          if (v12)
          {
            v13 = *v171;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v171 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v170 + 1) + 8 * j);
                [v5 addObject:{objc_msgSend(v15, "objectID")}];
                if (!v7)
                {
                  v7 = [v15 managedObjectContext];
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v170 objects:v194 count:16];
            }

            while (v12);
          }
        }

        v6 = [(NSArray *)list countByEnumeratingWithState:&v174 objects:v195 count:16];
      }

      while (v6);
      if (v7)
      {
        v16 = [_PFRoutines createDictionaryPartitioningObjectsIDByRootEntity:v5];
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
        v169[4] = v7;
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

    if (!v150)
    {
      break;
    }

    v19 = *(*(&v165 + 1) + 8 * v158);
    if ([v19 _isDBConflict])
    {
      v20 = [v19 databaseObject];
      v21 = [objc_msgSend(v19 "conflictingObjects")];
      if ([v21 isDeleted] & 1) != 0 || (objc_msgSend(v20, "isDeleted"))
      {
        goto LABEL_76;
      }

      v163 = [v19 constraint];
      v22 = [v19 databaseSnapshot];
      if (v20 && (v23 = v20[6]) != 0)
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
      v50 = [v163 countByEnumeratingWithState:&v187 objects:v203 count:16];
      if (v50)
      {
        v51 = *v188;
        do
        {
          for (k = 0; k != v50; ++k)
          {
            if (*v188 != v51)
            {
              objc_enumerationMutation(v163);
            }

            v53 = *(*(&v187 + 1) + 8 * k);
            v54 = [v21 valueForKey:v53];
            v55 = [v22 valueForKey:v53];
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

            if ([v20 hasChanges])
            {
              v58 = [v20 valueForKey:v53];
              if (([v58 isEqual:{objc_msgSend(v161, "valueForKey:", v53)}] & 1) == 0 && (objc_msgSend(v58, "isEqual:", v54) & 1) == 0 && (!objc_msgSend(v58, "isNSString") || !+[_PFRoutines isSanitizedVersionOf:equalTo:](_PFRoutines, v54, v58)))
              {
                goto LABEL_76;
              }
            }
          }

          v50 = [v163 countByEnumeratingWithState:&v187 objects:v203 count:16];
        }

        while (v50);
      }

      v152 = v19;
    }

    else
    {
      v24 = [MEMORY[0x1E695DF70] array];
      v25 = [v19 constraintValues];
      v189 = 0u;
      v190 = 0u;
      v187 = 0u;
      v188 = 0u;
      v26 = [v19 conflictingObjects];
      v27 = [v26 countByEnumeratingWithState:&v187 objects:v203 count:16];
      if (v27)
      {
        v28 = *v188;
        do
        {
          for (m = 0; m != v27; ++m)
          {
            if (*v188 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v187 + 1) + 8 * m);
            if (([v30 isDeleted] & 1) == 0 && -[NSMergePolicy _valuesOnObject:matchAgainstValues:](v30, v25))
            {
              [v24 addObject:v30];
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v187 objects:v203 count:16];
        }

        while (v27);
      }

      if ([v24 count] < 2)
      {
        goto LABEL_76;
      }

      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v32 = [v24 countByEnumeratingWithState:&v183 objects:&v199 count:16];
      if (v32)
      {
        v33 = *v184;
        do
        {
          for (n = 0; n != v32; ++n)
          {
            if (*v184 != v33)
            {
              objc_enumerationMutation(v24);
            }

            v35 = *(*(&v183 + 1) + 8 * n);
            if (!v35 || (v36 = *(v35 + 48)) == 0 || (v37 = *(v36 + 8)) == 0)
            {
              v37 = [MEMORY[0x1E695DFB0] null];
            }

            [v31 addObject:v37];
          }

          v32 = [v24 countByEnumeratingWithState:&v183 objects:&v199 count:16];
        }

        while (v32);
      }

      v152 = -[NSConstraintConflict initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:]([NSConstraintConflict alloc], "initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:", [v19 constraint], 0, 0, v24, v31);
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
    v39 = [(NSConstraintConflict *)v152 conflictingObjects];
    v40 = [(NSArray *)v39 countByEnumeratingWithState:&v179 objects:v196 count:16];
    if (!v40)
    {
      goto LABEL_73;
    }

    v41 = 0;
    v42 = *v180;
    do
    {
      for (ii = 0; ii != v40; ++ii)
      {
        if (*v180 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v179 + 1) + 8 * ii);
        if (!v41)
        {
          v41 = [*(*(&v179 + 1) + 8 * ii) managedObjectContext];
        }

        [v38 addObject:{objc_msgSend(v44, "entity")}];
      }

      v40 = [(NSArray *)v39 countByEnumeratingWithState:&v179 objects:v196 count:16];
    }

    while (v40);
    if (!v41)
    {
LABEL_73:
      v48 = &unk_1EF4352D8;
      goto LABEL_74;
    }

    v45 = [(NSConstraintConflict *)v152 databaseObject];
    p_isa = &v45->super.isa;
    if (v45)
    {
      [v38 addObject:{-[NSManagedObject entity](v45, "entity")}];
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
        v61 = [(NSConstraintConflict *)v152 conflictingObjects];
        v62 = [(NSConstraintConflict *)v152 conflictingSnapshots];
        v63 = [(NSConstraintConflict *)v152 constraintValues];
        v64 = [(NSArray *)[(NSConstraintConflict *)v152 conflictingSnapshots] count];
        if (!v64)
        {
          goto LABEL_122;
        }

        p_isa = 0;
        v65 = 0;
        while (1)
        {
          v66 = [(NSArray *)v62 objectAtIndex:v65];
          if ([MEMORY[0x1E695DFB0] null] == v66 && (objc_msgSend(-[NSArray objectAtIndex:](v61, "objectAtIndex:", v65), "hasChanges") & 1) == 0)
          {
            p_isa = [(NSArray *)v61 objectAtIndex:v65];
          }

          else if ([NSMergePolicy _valuesOnObject:v66 matchAgainstValues:v63])
          {
            p_isa = [(NSArray *)v61 objectAtIndex:v65];
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
            v69 = [(NSArray *)v61 countByEnumeratingWithState:&v183 objects:&v199 count:16];
            if (v69)
            {
              v70 = *v184;
              do
              {
                for (jj = 0; jj != v69; ++jj)
                {
                  if (*v184 != v70)
                  {
                    objc_enumerationMutation(v61);
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

                v69 = [(NSArray *)v61 countByEnumeratingWithState:&v183 objects:&v199 count:16];
              }

              while (v69);
            }

            v74 = [v67 count];
            if (!v74)
            {
              v75 = [v68 firstObject];
LABEL_169:
              p_isa = v75;
              goto LABEL_170;
            }

            if (v74 == 1)
            {
              v75 = [v67 lastObject];
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
              v75 = [v67 firstObject];
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
            type = v150->_type;
            if (type - 3 < 2)
            {
              v199 = 0u;
              v200 = 0u;
              v201 = 0u;
              v202 = 0u;
              v131 = [(NSConstraintConflict *)v152 conflictingObjects];
              v132 = [(NSArray *)v131 countByEnumeratingWithState:&v199 objects:v203 count:16];
              if (v132)
              {
                v133 = *v200;
                do
                {
                  for (nn = 0; nn != v132; ++nn)
                  {
                    if (*v200 != v133)
                    {
                      objc_enumerationMutation(v131);
                    }

                    v135 = *(*(&v199 + 1) + 8 * nn);
                    if (v135 != p_isa)
                    {
                      [objc_msgSend(*(*(&v199 + 1) + 8 * nn) "managedObjectContext")];
                    }
                  }

                  v132 = [(NSArray *)v131 countByEnumeratingWithState:&v199 objects:v203 count:16];
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

            v92 = [(NSConstraintConflict *)v152 conflictingObjects];
            v202 = 0u;
            v201 = 0u;
            v200 = 0u;
            v199 = 0u;
            v93 = [(NSArray *)v92 countByEnumeratingWithState:&v199 objects:v203 count:16];
            if (!v93)
            {
              goto LABEL_243;
            }

            v156 = *v200;
            v153 = v92;
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
                v99 = [p_isa entity];
                v100 = v99;
                if (v99)
                {
                  v101 = [*(v99 + 104) keys];
                  v102 = v100[14];
                }

                else
                {
                  v101 = [0 keys];
                  v102 = 0;
                }

                v164 = [MEMORY[0x1E695DFB0] null];
                v159 = v100;
                v162 = v95;
                v103 = v102[6];
                v104 = v102[7];
                if (v103 < v104 + v103)
                {
                  v105 = (v101 + 8 * v103);
                  do
                  {
                    if (!v97 || ((v106 = [v97 valueForKey:*v105], v164 != v106) ? (v107 = v106) : (v107 = 0), (v108 = objc_msgSend(p_isa, "valueForKey:", *v105), v107 | v108) && objc_msgSend(v107, "isEqual:", v108)))
                    {
                      v109 = [v160 valueForKey:*v105];
                      v110 = v164 == v109 ? 0 : v109;
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
                    v117 = [p_isa valueForKey:*(v101 + v115)];
                    if (!v97 || ((v118 = [v97 valueForKey:*(v101 + v115)], v164 != v118) ? (v119 = v118) : (v119 = 0), v119 | v117 && objc_msgSend(v119, "isEqual:", objc_msgSend(v117, "objectID"))))
                    {
                      v120 = [v160 valueForKey:*(v101 + v115)];
                      v121 = v164 == v120 ? 0 : v120;
                      v122 = [v162 valueForKey:*(v101 + v115)];
                      v123 = v122;
                      if (v122 | v121)
                      {
                        if (([v122 isEqual:v121] & 1) == 0)
                        {
                          v124 = *(v159[12] + 24 + v115);
                          v125 = [v124 inverseRelationship];
                          v126 = [v125 name];
                          v127 = [v125 isToMany];
                          if (v117)
                          {
                            if (!v125)
                            {
                              [NSMergePolicy _cannotResolveConflictOnEntity:v159 relationshipWithNoInverse:v124];
                            }

                            if (v127)
                            {
                              v128 = [v125 isOrdered];
                              v129 = [v125 name];
                              if (v128)
                              {
                                [objc_msgSend(v117 mutableOrderedSetValueForKey:{v129), "removeObject:", v116}];
                                v130 = [v123 mutableOrderedSetValueForKey:{objc_msgSend(v125, "name")}];
                              }

                              else
                              {
                                [objc_msgSend(v117 mutableSetValueForKey:{v129), "removeObject:", v116}];
                                v130 = [v123 mutableSetValueForKey:{objc_msgSend(v125, "name")}];
                              }

                              [v130 addObject:v116];
                              [v130 removeObject:v162];
                            }

                            else
                            {
                              [v123 setValue:v116 forKey:v126];
                              [v117 setValue:0 forKey:v126];
                            }

                            if ([v124 deleteRule] == 2)
                            {
                              [objc_msgSend(v116 "managedObjectContext")];
                            }
                          }

                          [v162 setValue:0 forKey:*(v101 + v115)];
                          [v116 setValue:v123 forKey:*(v101 + v115)];
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
      v60 = v150->_type;
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
  v6 = [MEMORY[0x1E695DF70] array];
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

  v26 = 0;
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
      if (v26)
      {
        if (!v31)
        {
          continue;
        }
      }

      else
      {
        v26 = [v31 managedObjectContext];
        if (!v32)
        {
          continue;
        }
      }

      if (!v30 || [v32 isDeleted])
      {
        [v6 addObject:{objc_msgSend(v32, "objectID")}];
      }
    }

    v25 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  }

  while (v25);
  v4 = obj;
  if (v26)
  {
    v33 = [_PFRoutines createDictionaryPartitioningObjectsIDByRootEntity:v6];
    v46 = 0;
    v47 = &v46;
    v48 = 0x3052000000;
    v49 = __Block_byref_object_copy__16;
    v50 = __Block_byref_object_dispose__16;
    v51 = [MEMORY[0x1E695DF70] array];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __64__NSMergePolicy_resolveOptimisticLockingVersionConflicts_error___block_invoke;
    v41[3] = &unk_1E6EC1CD8;
    v41[4] = v26;
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
      v13 = [v12 managedObjectContext];
      v14 = v13;
      if (v12)
      {
        v15 = v13 == 0;
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
          v16 = [v12 objectID];
          v17 = [v14 objectRegisteredForID:v16];
          if (v17 == v12)
          {
            *(v12 + 16) &= ~0x80u;
          }

          else if (!v17)
          {
            [(NSManagedObjectContext *)v14 _registerObject:v12 withID:v16];
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
            v19 = [v12 objectID];
            v20 = [v19 persistentStore];
            if (@"NSXPCStore" == [v20 type])
            {
              v21 = [v20 _persistentStoreCoordinator];
              v46 = MEMORY[0x1E69E9820];
              v47 = 3221225472;
              v48 = __33__NSMergePolicy_resolveConflict___block_invoke;
              v49 = &unk_1E6EC19D8;
              v50 = v14;
              v51 = v20;
              v52 = v19;
              [v21 performBlockAndWait:&v46];
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
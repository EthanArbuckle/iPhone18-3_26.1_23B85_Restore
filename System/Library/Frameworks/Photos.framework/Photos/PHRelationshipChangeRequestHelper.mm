@interface PHRelationshipChangeRequestHelper
+ (id)_offsetsFromSourceOIDs:(id)ds toManagedObjects:(id)objects;
+ (id)existentObjectIDsUsingQuery:(id)query;
+ (id)objectIDsOrUUIDsFromPHObjects:(id)objects;
- (BOOL)_applyMutationsToManagedObject:(id)object orderedMutableChildren:(id)children oldSet:(id)set newSet:(id)newSet error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object orderedMutableChildren:(id)children error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object unorderedMutableChildren:(id)children inserts:(id *)inserts deletes:(id *)deletes error:(id *)error;
- (BOOL)applyMutationsToManagedObjectToOneRelationship:(id)relationship error:(id *)error;
- (NSString)destinationUUIDKeyPath;
- (PHRelationshipChangeRequestHelper)initWithCoder:(id)coder;
- (PHRelationshipChangeRequestHelper)initWithRelationshipName:(id)name changeRequestHelper:(id)helper;
- (PHRelationshipChangeRequestHelper)initWithRelationshipName:(id)name xpcDict:(id)dict changeRequestHelper:(id)helper;
- (void)_addObjectIDsAndUUIDs:(id)ds toMutableArray:(id)array;
- (void)_addObjectIDsAndUUIDs:(id)ds toMutableArray:(id)array coordinator:(id)coordinator;
- (void)_addObjectIDsAndUUIDsFrom:(id)from toXpcArray:(id)array;
- (void)_addObjectIDsAndUUIDsFromXpcArray:(id)array toMutableArray:(id)mutableArray coordinator:(id)coordinator;
- (void)encodeToXPCDict:(id)dict;
- (void)encodeWithCoder:(id)coder;
- (void)prepareIfNeededWithExistentObjectIDs:(id)ds;
@end

@implementation PHRelationshipChangeRequestHelper

- (PHRelationshipChangeRequestHelper)initWithCoder:(id)coder
{
  v50 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v48.receiver = self;
  v48.super_class = PHRelationshipChangeRequestHelper;
  v5 = [(PHRelationshipChangeRequestHelper *)&v48 init];
  if (v5)
  {
    v6 = coderCopy;
    if (v6)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertRespondsToSelector(id  _Nullable __strong, SEL _Nonnull)"}];
        v40 = NSStringFromSelector(sel_userInfo);
        [currentHandler handleFailureInFunction:v39 file:@"PLHelperExtension.h" lineNumber:91 description:{@"Object does not respond to selector %@: %@", v40, v6}];
      }

      v7 = v6;
    }

    v43 = coderCopy;

    userInfo = [v6 userInfo];
    persistentStoreCoordinator = [userInfo persistentStoreCoordinator];
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"relationshipName"];
    relationshipName = v5->_relationshipName;
    v5->_relationshipName = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableObjectIDsAndUUIDs = v5->_mutableObjectIDsAndUUIDs;
    v5->_mutableObjectIDsAndUUIDs = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v6 decodeObjectOfClasses:v15 forKey:@"mutableObjectIDsAndUUIDs"];

    [(PHRelationshipChangeRequestHelper *)v5 _addObjectIDsAndUUIDs:v16 toMutableArray:v5->_mutableObjectIDsAndUUIDs coordinator:persistentStoreCoordinator];
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    originalObjectIDs = v5->_originalObjectIDs;
    v5->_originalObjectIDs = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableAppendedObjectIDsAndUUIDs = v5->_mutableAppendedObjectIDsAndUUIDs;
    v5->_mutableAppendedObjectIDsAndUUIDs = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v6 decodeObjectOfClasses:v23 forKey:@"mutableAppendedObjectIDsAndUUIDsKey"];

    v41 = v24;
    [(PHRelationshipChangeRequestHelper *)v5 _addObjectIDsAndUUIDs:v24 toMutableArray:v5->_mutableAppendedObjectIDsAndUUIDs coordinator:persistentStoreCoordinator];
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v6 decodeObjectOfClasses:v27 forKey:@"originalObjectIDs"];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v45;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v45 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = PLManagedObjectIDFromData();
          if (v34)
          {
            v35 = v34;
            v36 = [PHPhotoLibrary uniquedOID:v34];

            if (v36)
            {
              [(NSArray *)v5->_originalObjectIDs addObject:v36];
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v31);
    }

    coderCopy = v43;
  }

  return v5;
}

- (void)_addObjectIDsAndUUIDs:(id)ds toMutableArray:(id)array coordinator:(id)coordinator
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  arrayCopy = array;
  coordinatorCopy = coordinator;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [dsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(dsCopy);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = PLManagedObjectIDFromData();
          if (v15)
          {
            v16 = v15;
            v17 = [PHPhotoLibrary uniquedOID:v15];

            if (v17)
            {
              [arrayCopy addObject:v17];
            }
          }
        }

        else
        {
          [arrayCopy addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [dsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (self->_mutableObjectIDsAndUUIDs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_originalObjectIDs;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = PLDataFromManagedObjectID();
          [array addObject:{v11, v14}];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [coderCopy encodeObject:array forKey:@"originalObjectIDs"];
    array2 = [MEMORY[0x1E695DF70] array];
    [(PHRelationshipChangeRequestHelper *)self _addObjectIDsAndUUIDs:self->_mutableObjectIDsAndUUIDs toMutableArray:array2];
    [coderCopy encodeObject:array2 forKey:@"mutableObjectIDsAndUUIDs"];
  }

  if (self->_mutableAppendedObjectIDsAndUUIDs)
  {
    array3 = [MEMORY[0x1E695DF70] array];
    [(PHRelationshipChangeRequestHelper *)self _addObjectIDsAndUUIDs:self->_mutableAppendedObjectIDsAndUUIDs toMutableArray:array3];
    [coderCopy encodeObject:array3 forKey:@"mutableAppendedObjectIDsAndUUIDsKey"];
  }

  [coderCopy encodeObject:self->_relationshipName forKey:{@"relationshipName", v14}];
}

- (void)_addObjectIDsAndUUIDs:(id)ds toMutableArray:(id)array
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  arrayCopy = array;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(dsCopy);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = PLDataFromManagedObjectID();
          [arrayCopy addObject:v12];
        }

        else
        {
          [arrayCopy addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [dsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (BOOL)applyMutationsToManagedObjectToOneRelationship:(id)relationship error:(id *)error
{
  v85[1] = *MEMORY[0x1E69E9840];
  relationshipCopy = relationship;
  changeRequestHelper = [(PHRelationshipChangeRequestHelper *)self changeRequestHelper];
  if (([changeRequestHelper isMutated] & 1) == 0)
  {

    goto LABEL_6;
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
LABEL_6:
    v23 = 0;
    v24 = 1;
    goto LABEL_7;
  }

  v9 = MEMORY[0x1E695DFA8];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];
  v11 = [v9 setWithArray:originalObjectIDs];

  v12 = MEMORY[0x1E695DFD8];
  mutableObjectIDsAndUUIDs2 = [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];
  v14 = [v12 setWithArray:mutableObjectIDsAndUUIDs2];

  v15 = [MEMORY[0x1E695DFA8] setWithSet:v11];
  [v15 intersectSet:v14];
  v16 = [MEMORY[0x1E695DFA8] setWithSet:v11];
  [v16 minusSet:v15];
  v17 = [MEMORY[0x1E695DFA8] setWithSet:v14];
  [v17 minusSet:v15];
  v71 = v17;
  if ([v16 count] < 2)
  {
    v70 = v16;
    if ([v17 count] >= 2)
    {
      v26 = MEMORY[0x1E696ABC0];
      v82 = *MEMORY[0x1E696A578];
      v27 = MEMORY[0x1E696AEC0];
      relationshipName = [(PHRelationshipChangeRequestHelper *)self relationshipName];
      v29 = v17;
      relationshipName4 = relationshipName;
      v21 = [v27 stringWithFormat:@"Invalid change to %@, cannot add %d objects", relationshipName, objc_msgSend(v29, "count")];
      v83 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v23 = [v26 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v22];
      goto LABEL_10;
    }

    managedObjectContext = [relationshipCopy managedObjectContext];
    v33 = [MEMORY[0x1E695DFA8] set];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __90__PHRelationshipChangeRequestHelper_applyMutationsToManagedObjectToOneRelationship_error___block_invoke;
    v77[3] = &unk_1E75A4A88;
    v34 = v33;
    v78 = v34;
    [v17 enumerateObjectsUsingBlock:v77];
    v69 = managedObjectContext;
    if ([v34 count])
    {
      v67 = v11;
      v35 = MEMORY[0x1E695D5E0];
      destinationEntityName = [(PHRelationshipChangeRequestHelper *)self destinationEntityName];
      [v35 fetchRequestWithEntityName:destinationEntityName];
      v38 = v37 = managedObjectContext;

      v39 = MEMORY[0x1E696AE18];
      destinationUUIDKeyPath = [(PHRelationshipChangeRequestHelper *)self destinationUUIDKeyPath];
      v66 = v34;
      v41 = [v39 predicateWithFormat:@"%K in %@", destinationUUIDKeyPath, v34];
      [v38 setPredicate:v41];

      v76 = 0;
      v65 = v38;
      v42 = [v37 executeFetchRequest:v38 error:&v76];
      v43 = v76;
      v16 = v70;
      v63 = v43;
      v64 = v42;
      if (v42)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v44 = v42;
        v23 = [v44 countByEnumeratingWithState:&v72 objects:v81 count:16];
        v11 = v67;
        if (v23)
        {
          v60 = v15;
          v61 = v14;
          errorCopy = error;
          v45 = *v73;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v73 != v45)
              {
                objc_enumerationMutation(v44);
              }

              v47 = *(*(&v72 + 1) + 8 * i);
              destinationUUIDKeyPath2 = [(PHRelationshipChangeRequestHelper *)self destinationUUIDKeyPath];
              v49 = [v47 valueForKey:destinationUUIDKeyPath2];
              [dictionary setObject:v47 forKey:v49];
            }

            v23 = [v44 countByEnumeratingWithState:&v72 objects:v81 count:16];
          }

          while (v23);
          v14 = v61;
          error = errorCopy;
          v11 = v67;
          v15 = v60;
          v16 = v70;
        }
      }

      else
      {
        v50 = MEMORY[0x1E696ABC0];
        v79 = *MEMORY[0x1E696A578];
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to fetch %@", v43];
        v80 = v44;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v51 = v15;
        v53 = v52 = v14;
        v54 = v50;
        v16 = v70;
        v23 = [v54 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v53];

        v14 = v52;
        v15 = v51;
        dictionary = 0;
        v11 = v67;
      }

      v24 = v64;
      if (!v64)
      {
        goto LABEL_34;
      }

      v17 = v71;
    }

    else
    {

      v23 = 0;
      dictionary = 0;
      v16 = v70;
    }

    if ([v16 count] == 1 && !objc_msgSend(v17, "count"))
    {
      relationshipName2 = [(PHRelationshipChangeRequestHelper *)self relationshipName];
      [relationshipCopy setValue:0 forKey:relationshipName2];

      v16 = v70;
    }

    if ([v17 count] == 1)
    {
      anyObject = [v17 anyObject];
      objc_opt_class();
      v68 = anyObject;
      if (objc_opt_isKindOfClass())
      {
        [v69 objectWithID:anyObject];
      }

      else
      {
        [dictionary objectForKey:anyObject];
      }
      v57 = ;
      relationshipName3 = [(PHRelationshipChangeRequestHelper *)self relationshipName];
      [relationshipCopy setValue:v57 forKey:relationshipName3];

      v24 = 1;
      v16 = v70;
    }

    else
    {
      v24 = 1;
    }

LABEL_34:
    managedObjectContext2 = v69;
    goto LABEL_35;
  }

  v18 = MEMORY[0x1E696ABC0];
  v84 = *MEMORY[0x1E696A578];
  v19 = MEMORY[0x1E696AEC0];
  relationshipName4 = [(PHRelationshipChangeRequestHelper *)self relationshipName];
  v21 = [v19 stringWithFormat:@"Invalid change to %@, cannot remove %d objects", relationshipName4, objc_msgSend(v16, "count")];
  v85[0] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:&v84 count:1];
  v23 = [v18 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v22];
LABEL_10:

  managedObjectContext2 = [relationshipCopy managedObjectContext];
  v24 = 0;
  dictionary = 0;
LABEL_35:

  if (error && !v24)
  {
    v59 = v23;
    v24 = 0;
    *error = v23;
  }

LABEL_7:

  return v24;
}

void __90__PHRelationshipChangeRequestHelper_applyMutationsToManagedObjectToOneRelationship_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)applyMutationsToManagedObject:(id)object unorderedMutableChildren:(id)children inserts:(id *)inserts deletes:(id *)deletes error:(id *)error
{
  v116 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  childrenCopy = children;
  changeRequestHelper = [(PHRelationshipChangeRequestHelper *)self changeRequestHelper];
  if (([changeRequestHelper isMutated] & 1) == 0)
  {

    goto LABEL_14;
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
LABEL_14:
    v53 = 0;
    v54 = 1;
    goto LABEL_15;
  }

  v81 = a2;
  v95 = childrenCopy;
  v17 = MEMORY[0x1E695DFD8];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];
  v19 = [v17 setWithArray:originalObjectIDs];

  v20 = MEMORY[0x1E695DFD8];
  mutableObjectIDsAndUUIDs2 = [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];
  v22 = [v20 setWithArray:mutableObjectIDsAndUUIDs2];

  v23 = MEMORY[0x1E695DFA8];
  v24 = v22;
  v25 = [v23 setWithSet:v19];
  [v25 intersectSet:v24];

  v26 = MEMORY[0x1E695DFA8];
  v27 = v25;
  v88 = v19;
  v94 = [v26 setWithSet:v19];
  [v94 minusSet:v27];

  v28 = MEMORY[0x1E695DFA8];
  v29 = v27;
  v87 = v24;
  v30 = [v28 setWithSet:v24];
  [v30 minusSet:v29];
  v86 = v29;

  managedObjectContext = [objectCopy managedObjectContext];
  v32 = [MEMORY[0x1E695DFA8] set];
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = __114__PHRelationshipChangeRequestHelper_applyMutationsToManagedObject_unorderedMutableChildren_inserts_deletes_error___block_invoke;
  v109[3] = &unk_1E75A4A88;
  v33 = v32;
  v110 = v33;
  v93 = v30;
  [v30 enumerateObjectsUsingBlock:v109];
  deletesCopy = deletes;
  insertsCopy = inserts;
  errorCopy = error;
  v90 = objectCopy;
  v85 = v33;
  if ([v33 count])
  {
    v34 = MEMORY[0x1E695D5E0];
    destinationEntityName = [(PHRelationshipChangeRequestHelper *)self destinationEntityName];
    v36 = [v34 fetchRequestWithEntityName:destinationEntityName];

    v37 = MEMORY[0x1E696AE18];
    selfCopy = self;
    destinationUUIDKeyPath = [(PHRelationshipChangeRequestHelper *)self destinationUUIDKeyPath];
    v40 = [v37 predicateWithFormat:@"%K in %@", destinationUUIDKeyPath, v33];
    [v36 setPredicate:v40];

    v108 = 0;
    v41 = [managedObjectContext executeFetchRequest:v36 error:&v108];
    v42 = v108;
    v43 = v42;
    v84 = v41 != 0;
    if (v41)
    {
      v79 = v42;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v45 = v41;
      v46 = [v45 countByEnumeratingWithState:&v104 objects:v115 count:16];
      if (v46)
      {
        v47 = v46;
        v76 = v41;
        v77 = v36;
        v48 = *v105;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v105 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v104 + 1) + 8 * i);
            destinationUUIDKeyPath2 = [(PHRelationshipChangeRequestHelper *)selfCopy destinationUUIDKeyPath];
            v52 = [v50 valueForKey:destinationUUIDKeyPath2];
            [dictionary setObject:v50 forKey:v52];
          }

          v47 = [v45 countByEnumeratingWithState:&v104 objects:v115 count:16];
        }

        while (v47);
        v82 = 0;
        deletes = deletesCopy;
        inserts = insertsCopy;
        v41 = v76;
        v36 = v77;
      }

      else
      {
        v82 = 0;
      }

      v43 = v79;
    }

    else
    {
      v83 = MEMORY[0x1E696ABC0];
      v113 = *MEMORY[0x1E696A578];
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to fetch %@", v42];
      v114 = v45;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v82 = [v83 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v56];

      dictionary = 0;
    }

    childrenCopy = v95;
    self = selfCopy;
  }

  else
  {
    dictionary = 0;
    v82 = 0;
    v84 = 1;
    childrenCopy = v95;
  }

  v57 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v94 count])
  {
    selfCopy2 = self;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v58 = v94;
    v59 = [v58 countByEnumeratingWithState:&v100 objects:v112 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v101;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v101 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v100 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:v81 object:selfCopy2 file:@"PHChangeRequestHelper.m" lineNumber:977 description:{@"Expected delete oid (%@) to be ManagedObjectID", v63}];
          }

          v64 = [managedObjectContext objectWithID:v63];
          if (v64)
          {
            [childrenCopy removeObject:v64];
            [v57 addObject:v64];
          }
        }

        v60 = [v58 countByEnumeratingWithState:&v100 objects:v112 count:16];
      }

      while (v60);
    }

    deletes = deletesCopy;
    inserts = insertsCopy;
  }

  v65 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v93 count])
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v66 = v93;
    v67 = [v66 countByEnumeratingWithState:&v96 objects:v111 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v97;
      do
      {
        for (k = 0; k != v68; ++k)
        {
          if (*v97 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v96 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [managedObjectContext objectWithID:v71];
          }

          else
          {
            [dictionary objectForKey:v71];
          }
          v72 = ;
          if (v72)
          {
            [v95 addObject:v72];
            [v65 addObject:v72];
          }
        }

        v68 = [v66 countByEnumeratingWithState:&v96 objects:v111 count:16];
      }

      while (v68);
    }

    childrenCopy = v95;
    deletes = deletesCopy;
    inserts = insertsCopy;
  }

  if (inserts)
  {
    v73 = v65;
    *inserts = v65;
  }

  if (deletes)
  {
    v74 = v57;
    *deletes = v57;
  }

  v54 = v84;
  if (errorCopy)
  {
    v75 = v84;
  }

  else
  {
    v75 = 1;
  }

  if (v75)
  {
    objectCopy = v90;
    v53 = v82;
  }

  else
  {
    v53 = v82;
    v54 = 0;
    *errorCopy = v53;
    objectCopy = v90;
  }

LABEL_15:

  return v54;
}

void __114__PHRelationshipChangeRequestHelper_applyMutationsToManagedObject_unorderedMutableChildren_inserts_deletes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (BOOL)applyMutationsToManagedObject:(id)object orderedMutableChildren:(id)children error:(id *)error
{
  objectCopy = object;
  childrenCopy = children;
  if ([(PHChangeRequestHelper *)self->_changeRequestHelper isMutated])
  {
    if (self->_mutableObjectIDsAndUUIDs)
    {
      v10 = [MEMORY[0x1E695DFB8] orderedSetWithArray:?];
      v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:self->_originalObjectIDs];
      v12 = [(PHRelationshipChangeRequestHelper *)self _applyMutationsToManagedObject:objectCopy orderedMutableChildren:childrenCopy oldSet:v11 newSet:v10 error:error];
    }

    else
    {
      v12 = 1;
    }

    if (self->_mutableAppendedObjectIDsAndUUIDs)
    {
      v13 = MEMORY[0x1E695DFB8];
      array = [childrenCopy array];
      v15 = [array arrayByAddingObjectsFromArray:self->_mutableAppendedObjectIDsAndUUIDs];
      v16 = [v13 orderedSetWithArray:v15];

      v12 = [(PHRelationshipChangeRequestHelper *)self _applyMutationsToManagedObject:objectCopy orderedMutableChildren:childrenCopy oldSet:childrenCopy newSet:v16 error:error];
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)_applyMutationsToManagedObject:(id)object orderedMutableChildren:(id)children oldSet:(id)set newSet:(id)newSet error:(id *)error
{
  v207 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  childrenCopy = children;
  setCopy = set;
  v188 = 0;
  v189 = &v188;
  v190 = 0x2020000000;
  v191 = 1;
  v182 = 0;
  v183 = &v182;
  v184 = 0x3032000000;
  v185 = __Block_byref_object_copy__9146;
  v186 = __Block_byref_object_dispose__9147;
  v187 = 0;
  newSetCopy = newSet;
  array = [newSetCopy array];
  v109 = setCopy;
  v117 = [setCopy mutableCopy];
  v181 = 0;
  array2 = [MEMORY[0x1E695DEC8] array];
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v177 = 0;
  diffOrderedSets();
  v116 = 0;
  v120 = 0;
  v114 = 0;
  v110 = 0;

  if ([v114 count])
  {
    v12 = v181 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v118 = v13;
  v113 = [v120 count];
  managedObjectContext = [objectCopy managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & v118)
  {
    v14 = objectCopy;
    if ([v14 customSortKey])
    {
      v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(childrenCopy, "count")}];
      v107 = v14;
      v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(childrenCopy, "count")}];
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v17 = childrenCopy;
      v18 = [v17 countByEnumeratingWithState:&v173 objects:v206 count:16];
      if (v18)
      {
        v19 = 0;
        v20 = *v174;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v174 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v173 + 1) + 8 * i);
            v23 = [MEMORY[0x1E696AD98] numberWithInt:v19];
            objectID = [v22 objectID];
            [v15 setObject:v23 forKey:objectID];

            objectID2 = [v22 objectID];
            v26 = [MEMORY[0x1E696AD98] numberWithInt:v19];
            [v16 setObject:objectID2 forKey:v26];

            v19 = (v19 + 1);
          }

          v18 = [v17 countByEnumeratingWithState:&v173 objects:v206 count:16];
        }

        while (v18);
      }

      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v27 = array;
      v28 = [v27 countByEnumeratingWithState:&v169 objects:v205 count:16];
      if (v28)
      {
        v29 = *v170;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v170 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v169 + 1) + 8 * j);
            v32 = [v15 objectForKey:v31];
            [v15 removeObjectForKey:v31];
            [v16 removeObjectForKey:v32];
          }

          v28 = [v27 countByEnumeratingWithState:&v169 objects:v205 count:16];
        }

        while (v28);
      }

      [v107 setCustomSortKey:0];
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v33 = self->_originalObjectIDs;
      v34 = [(NSArray *)v33 countByEnumeratingWithState:&v165 objects:v204 count:16];
      if (v34)
      {
        v35 = 0;
        v36 = *v166;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v166 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [managedObjectContext objectWithID:*(*(&v165 + 1) + 8 * k)];
            v39 = [v17 indexOfObject:v38];

            v40 = [MEMORY[0x1E696AC90] indexSetWithIndex:v39];
            [v17 moveObjectsAtIndexes:v40 toIndex:v35];

            ++v35;
          }

          v34 = [(NSArray *)v33 countByEnumeratingWithState:&v165 objects:v204 count:16];
        }

        while (v34);
      }

      for (m = 0; [v17 count] > m; ++m)
      {
        v42 = [MEMORY[0x1E696AD98] numberWithInt:m];
        v43 = [v16 objectForKey:v42];

        if (v43)
        {
          v44 = [managedObjectContext objectWithID:v43];
          v45 = [v17 indexOfObject:v44];

          v46 = [MEMORY[0x1E696AC90] indexSetWithIndex:v45];
          [v17 moveObjectsAtIndexes:v46 toIndex:m];
        }
      }

      v14 = v107;
    }
  }

  if ([v116 count])
  {
    v47 = [(PHRelationshipChangeRequestHelper *)self allowsRemove]^ 1;
  }

  else
  {
    v47 = 0;
  }

  if ([v120 count])
  {
    v48 = [(PHRelationshipChangeRequestHelper *)self allowsInsert]^ 1;
  }

  else
  {
    v48 = 0;
  }

  v49 = v118;
  if (v118)
  {
    v49 = [(PHRelationshipChangeRequestHelper *)self allowsMove]^ 1;
  }

  if (v47)
  {
    *(v189 + 24) = 0;
  }

  else
  {
    *(v189 + 24) = ((v48 | v49) & 1) == 0;
    if (((v48 | v49) & 1) == 0)
    {
      if (!v113)
      {
        v55 = 0;
        v56 = 0;
        goto LABEL_68;
      }

      goto LABEL_52;
    }
  }

  v50 = MEMORY[0x1E696ABC0];
  v202 = *MEMORY[0x1E696A578];
  v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation (insert %d delete %d move %d)", v48, v47, v49];
  v203 = v51;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
  v53 = [v50 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v52];
  v54 = v183[5];
  v183[5] = v53;

  if ((v189[3] & (v113 != 0)) == 0)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    if ((v189[3] & 1) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_68;
  }

LABEL_52:
  v58 = [MEMORY[0x1E695DFA8] set];
  v162[0] = MEMORY[0x1E69E9820];
  v162[1] = 3221225472;
  v162[2] = __111__PHRelationshipChangeRequestHelper__applyMutationsToManagedObject_orderedMutableChildren_oldSet_newSet_error___block_invoke;
  v162[3] = &unk_1E75A49E8;
  v106 = newSetCopy;
  v163 = v106;
  v59 = v58;
  v164 = v59;
  [v120 enumerateIndexesUsingBlock:v162];
  if ([v59 count])
  {
    v60 = MEMORY[0x1E695D5E0];
    destinationEntityName = [(PHRelationshipChangeRequestHelper *)self destinationEntityName];
    v108 = [v60 fetchRequestWithEntityName:destinationEntityName];

    v62 = MEMORY[0x1E696AE18];
    destinationUUIDKeyPath = [(PHRelationshipChangeRequestHelper *)self destinationUUIDKeyPath];
    v64 = [v62 predicateWithFormat:@"%K in %@", destinationUUIDKeyPath, v59];
    [v108 setPredicate:v64];

    v161 = 0;
    v65 = [managedObjectContext executeFetchRequest:v108 error:&v161];
    v66 = v161;
    v105 = v66;
    if (v65)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v68 = v65;
      v69 = [v68 countByEnumeratingWithState:&v157 objects:v201 count:16];
      if (v69)
      {
        v70 = *v158;
        do
        {
          for (n = 0; n != v69; ++n)
          {
            if (*v158 != v70)
            {
              objc_enumerationMutation(v68);
            }

            v72 = *(*(&v157 + 1) + 8 * n);
            destinationUUIDKeyPath2 = [(PHRelationshipChangeRequestHelper *)self destinationUUIDKeyPath];
            v74 = [v72 valueForKey:destinationUUIDKeyPath2];
            [dictionary setObject:v72 forKey:v74];
          }

          v69 = [v68 countByEnumeratingWithState:&v157 objects:v201 count:16];
        }

        while (v69);
      }
    }

    else
    {
      v75 = MEMORY[0x1E696ABC0];
      v199 = *MEMORY[0x1E696A578];
      v76 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to fetch %@", v66];
      v200 = v76;
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
      v78 = [v75 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v77];
      v79 = v183[5];
      v183[5] = v78;

      dictionary = 0;
      *(v189 + 24) = 0;
    }
  }

  else
  {
    dictionary = 0;
  }

  v80 = objc_opt_new();
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v148[0] = MEMORY[0x1E69E9820];
  v148[1] = 3221225472;
  v148[2] = __111__PHRelationshipChangeRequestHelper__applyMutationsToManagedObject_orderedMutableChildren_oldSet_newSet_error___block_invoke_2;
  v148[3] = &unk_1E75A4A10;
  v149 = v106;
  v150 = managedObjectContext;
  v82 = dictionary;
  v151 = v82;
  selfCopy = self;
  v55 = v80;
  v153 = v55;
  v56 = indexSet;
  v154 = v56;
  v155 = &v182;
  v156 = &v188;
  [v120 enumerateIndexesUsingBlock:v148];

  if ((v189[3] & 1) == 0)
  {
    v57 = 0;
    goto LABEL_104;
  }

LABEL_68:
  if ([v116 count])
  {
    [v117 objectsAtIndexes:v116];
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v83 = v145 = 0u;
    v84 = [v83 countByEnumeratingWithState:&v144 objects:v198 count:16];
    if (v84)
    {
      v85 = *v145;
      do
      {
        for (ii = 0; ii != v84; ++ii)
        {
          if (*v145 != v85)
          {
            objc_enumerationMutation(v83);
          }

          v87 = [managedObjectContext objectWithID:*(*(&v144 + 1) + 8 * ii)];
          if (v87)
          {
            [childrenCopy removeObject:v87];
          }
        }

        v84 = [v83 countByEnumeratingWithState:&v144 objects:v198 count:16];
      }

      while (v84);
    }

    if (!(v118 & 1 | (v113 != 0)))
    {
      v57 = 0;
      goto LABEL_98;
    }

    [v117 removeObjectsAtIndexes:v116];
  }

  else if ((v118 & 1) == 0 && !v113)
  {
    v57 = 0;
    goto LABEL_99;
  }

  v57 = [objc_opt_class() _offsetsFromSourceOIDs:v117 toManagedObjects:childrenCopy];
  if (!v113)
  {
    goto LABEL_99;
  }

  indexSet2 = [MEMORY[0x1E696AD50] indexSet];
  v89 = [v57 count];
  v140 = 0;
  v141 = &v140;
  v142 = 0x2020000000;
  v143 = [childrenCopy count];
  if (v89)
  {
    v90 = [v57 objectAtIndex:v89 - 1];
    unsignedIntegerValue = [v90 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [childrenCopy count];
  }

  if (v118)
  {
    objectEnumerator = [v55 objectEnumerator];
  }

  else
  {
    objectEnumerator = 0;
  }

  v132[0] = MEMORY[0x1E69E9820];
  v132[1] = 3221225472;
  v132[2] = __111__PHRelationshipChangeRequestHelper__applyMutationsToManagedObject_orderedMutableChildren_oldSet_newSet_error___block_invoke_3;
  v132[3] = &unk_1E75A4A38;
  v57 = v57;
  v133 = v57;
  v137 = &v140;
  v138 = unsignedIntegerValue;
  v83 = indexSet2;
  v134 = v83;
  v139 = v118;
  v93 = objectEnumerator;
  v135 = v93;
  v136 = v117;
  [v56 enumerateIndexesUsingBlock:v132];
  v94 = [childrenCopy count];
  if ([v55 count])
  {
    [childrenCopy insertObjects:v55 atIndexes:v83];
  }

  v95 = [childrenCopy count] - v94;
  if (v95 != [v55 count])
  {
    v96 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      v97 = [v55 count];
      *buf = 136315650;
      v193 = "[PHRelationshipChangeRequestHelper _applyMutationsToManagedObject:orderedMutableChildren:oldSet:newSet:error:]";
      v194 = 1024;
      v195 = v97;
      v196 = 1024;
      v197 = v95;
      _os_log_impl(&dword_19C86F000, v96, OS_LOG_TYPE_ERROR, "Unreported error from %s, attempted to insert %d, only %d inserted", buf, 0x18u);
    }
  }

  _Block_object_dispose(&v140, 8);
LABEL_98:

LABEL_99:
  if (v118)
  {
    v140 = 0;
    v141 = &v140;
    v142 = 0x2020000000;
    v143 = 0;
    v98 = [v57 count];
    if (v98)
    {
      v99 = [v57 objectAtIndex:v98 - 1];
      unsignedIntegerValue2 = [v99 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = [childrenCopy count];
    }

    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __111__PHRelationshipChangeRequestHelper__applyMutationsToManagedObject_orderedMutableChildren_oldSet_newSet_error___block_invoke_285;
    v124[3] = &unk_1E75A4A60;
    v129 = &v140;
    v130 = v181;
    v125 = v117;
    v126 = managedObjectContext;
    v127 = childrenCopy;
    v57 = v57;
    v128 = v57;
    v131 = unsignedIntegerValue2;
    [v114 enumerateIndexesUsingBlock:v124];

    _Block_object_dispose(&v140, 8);
  }

LABEL_104:
  v101 = *(v189 + 24);
  v102 = v183[5];
  if (error && (v101 & 1) == 0)
  {
    v102 = v102;
    *error = v102;
  }

  v103 = *(v189 + 24);
  _Block_object_dispose(&v182, 8);

  _Block_object_dispose(&v188, 8);
  return v103 & 1;
}

void __111__PHRelationshipChangeRequestHelper__applyMutationsToManagedObject_orderedMutableChildren_oldSet_newSet_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __111__PHRelationshipChangeRequestHelper__applyMutationsToManagedObject_orderedMutableChildren_oldSet_newSet_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectAtIndex:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) objectWithID:v4];
  }

  else
  {
    [*(a1 + 48) objectForKey:v4];
  }
  v5 = ;
  if (v5 && (([*(a1 + 56) isDestinationObjectValid], (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, objc_msgSend(*(a1 + 56), "isDestinationObjectValid"), v8 = objc_claimAutoreleasedReturnValue(), v9 = (v8)[2](v8, v5), v8, v7, v9)))
  {
    [*(a1 + 64) addObject:v5];
    [*(a1 + 72) addIndex:a2];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Added object failed validation"];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v12];
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *(*(*(a1 + 88) + 8) + 24) = 0;
  }
}

void __111__PHRelationshipChangeRequestHelper__applyMutationsToManagedObject_orderedMutableChildren_oldSet_newSet_error___block_invoke_3(uint64_t a1, unint64_t a2)
{
  if ([*(a1 + 32) count] <= a2)
  {
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = [*(a1 + 32) objectAtIndex:a2];
    v5 = [v4 unsignedIntegerValue];
  }

  if (v5 + a2 >= *(*(*(a1 + 64) + 8) + 24))
  {
    v6 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v6 = v5 + a2;
  }

  [*(a1 + 40) addIndex:v6];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
  [v7 insertObject:v8 atIndex:a2];

  if (*(a1 + 80) == 1)
  {
    v9 = [*(a1 + 48) nextObject];
    v10 = *(a1 + 56);
    v11 = [v9 objectID];
    [v10 insertObject:v11 atIndex:a2];
  }

  ++*(*(*(a1 + 64) + 8) + 24);
}

void __111__PHRelationshipChangeRequestHelper__applyMutationsToManagedObject_orderedMutableChildren_oldSet_newSet_error___block_invoke_285(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  ValueAtIndex = CFArrayGetValueAtIndex(v4, v6);
  if ([*(a1 + 32) count] <= ValueAtIndex)
  {
    v8 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) objectAtIndex:ValueAtIndex];
    if (v8)
    {
      v16 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [*(a1 + 40) objectWithID:v16];
        v10 = [*(a1 + 48) indexOfObject:v9];
        if ([*(a1 + 56) count] <= a2)
        {
          v12 = *(a1 + 80);
        }

        else
        {
          v11 = [*(a1 + 56) objectAtIndex:a2];
          v12 = [v11 unsignedIntegerValue];
        }

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = v12 + a2;
          if (v13 < [*(a1 + 48) count] && v13 != v10)
          {
            v14 = *(a1 + 48);
            v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:v10];
            [v14 moveObjectsAtIndexes:v15 toIndex:v13];
          }
        }
      }

      v8 = v16;
    }
  }
}

- (NSString)destinationUUIDKeyPath
{
  destinationUUIDKeyPath = self->_destinationUUIDKeyPath;
  if (!destinationUUIDKeyPath)
  {
    self->_destinationUUIDKeyPath = @"uuid";
    destinationUUIDKeyPath = @"uuid";
  }

  return destinationUUIDKeyPath;
}

- (void)prepareIfNeededWithExistentObjectIDs:(id)ds
{
  dsCopy = ds;
  +[PHPhotoLibrary assertTransaction];
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];

  if (!originalObjectIDs)
  {
    if (dsCopy)
    {
      v5 = dsCopy;
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    [(PHRelationshipChangeRequestHelper *)self setOriginalObjectIDs:v5];
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self originalObjectIDs];
    v8 = [originalObjectIDs2 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)self setMutableObjectIDsAndUUIDs:v8];
  }
}

- (void)encodeToXPCDict:(id)dict
{
  v19 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  if (!self->_mutableObjectIDsAndUUIDs)
  {
    if (!self->_mutableAppendedObjectIDsAndUUIDs)
    {
      goto LABEL_17;
    }

LABEL_13:
    v5 = xpc_dictionary_create(0, 0, 0);
    goto LABEL_14;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = xpc_array_create(0, 0);
  xpc_dictionary_set_value(v5, "originalObjectIDs", v6);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_originalObjectIDs;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PLXPCArrayAppendManagedObjectID();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = xpc_array_create(0, 0);
  xpc_dictionary_set_value(v5, "mutableObjectIDsAndUUIDs", v12);
  [(PHRelationshipChangeRequestHelper *)self _addObjectIDsAndUUIDsFrom:self->_mutableObjectIDsAndUUIDs toXpcArray:v12, v14];

  if (!self->_mutableAppendedObjectIDsAndUUIDs)
  {
    goto LABEL_15;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_14:
  v13 = xpc_array_create(0, 0);
  xpc_dictionary_set_value(v5, "mutableAppendedObjectIDsAndUUIDs", v13);
  [(PHRelationshipChangeRequestHelper *)self _addObjectIDsAndUUIDsFrom:self->_mutableAppendedObjectIDsAndUUIDs toXpcArray:v13];

LABEL_15:
  if (v5)
  {
    xpc_dictionary_set_value(dictCopy, [(NSString *)self->_relationshipName UTF8String], v5);
  }

LABEL_17:
}

- (void)_addObjectIDsAndUUIDsFrom:(id)from toXpcArray:(id)array
{
  v21 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  arrayCopy = array;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [fromCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(fromCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          PLXPCArrayAppendManagedObjectID();
        }

        else
        {
          *uu = 0;
          v19 = 0;
          v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v11];
          v13 = v12;
          if (v12)
          {
            [v12 getUUIDBytes:uu];
            if (!uuid_is_null(uu))
            {
              xpc_array_set_uuid(arrayCopy, 0xFFFFFFFFFFFFFFFFLL, uu);
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [fromCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }
}

- (PHRelationshipChangeRequestHelper)initWithRelationshipName:(id)name xpcDict:(id)dict changeRequestHelper:(id)helper
{
  nameCopy = name;
  dictCopy = dict;
  helperCopy = helper;
  v11 = [(PHRelationshipChangeRequestHelper *)self initWithRelationshipName:nameCopy changeRequestHelper:helperCopy];
  if (v11)
  {
    v12 = xpc_dictionary_get_value(dictCopy, [nameCopy UTF8String]);
    v13 = v12;
    if (v12)
    {
      v14 = xpc_dictionary_get_value(v12, "mutableObjectIDsAndUUIDs");
      if (v14)
      {
        request = [helperCopy request];
        persistentStoreCoordinator = [request persistentStoreCoordinator];
        changeRequest = [(PHChangeRequestHelper *)v11->_changeRequestHelper changeRequest];
        [request recordUpdateRequest:changeRequest];

        [(PHChangeRequestHelper *)v11->_changeRequestHelper setMutated:1];
        v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:xpc_array_get_count(v14)];
        mutableObjectIDsAndUUIDs = v11->_mutableObjectIDsAndUUIDs;
        v11->_mutableObjectIDsAndUUIDs = v18;

        [(PHRelationshipChangeRequestHelper *)v11 _addObjectIDsAndUUIDsFromXpcArray:v14 toMutableArray:v11->_mutableObjectIDsAndUUIDs coordinator:persistentStoreCoordinator];
        v20 = xpc_dictionary_get_value(v13, "originalObjectIDs");
        v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:xpc_array_get_count(v20)];
        originalObjectIDs = v11->_originalObjectIDs;
        v11->_originalObjectIDs = v21;

        if (v20)
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __90__PHRelationshipChangeRequestHelper_initWithRelationshipName_xpcDict_changeRequestHelper___block_invoke;
          v30[3] = &unk_1E75AA628;
          v31 = persistentStoreCoordinator;
          v32 = v11;
          xpc_array_apply(v20, v30);
        }
      }

      v23 = xpc_dictionary_get_value(v13, "mutableAppendedObjectIDsAndUUIDs");
      if (v23)
      {
        request2 = [helperCopy request];
        persistentStoreCoordinator2 = [request2 persistentStoreCoordinator];
        changeRequest2 = [(PHChangeRequestHelper *)v11->_changeRequestHelper changeRequest];
        [request2 recordUpdateRequest:changeRequest2];

        [(PHChangeRequestHelper *)v11->_changeRequestHelper setMutated:1];
        v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:xpc_array_get_count(v23)];
        mutableAppendedObjectIDsAndUUIDs = v11->_mutableAppendedObjectIDsAndUUIDs;
        v11->_mutableAppendedObjectIDsAndUUIDs = v27;

        [(PHRelationshipChangeRequestHelper *)v11 _addObjectIDsAndUUIDsFromXpcArray:v23 toMutableArray:v11->_mutableAppendedObjectIDsAndUUIDs coordinator:persistentStoreCoordinator2];
      }
    }
  }

  return v11;
}

uint64_t __90__PHRelationshipChangeRequestHelper_initWithRelationshipName_xpcDict_changeRequestHelper___block_invoke(uint64_t a1)
{
  v2 = PLManagedObjectIDFromXPCValue();
  if (v2)
  {
    v3 = v2;
    v4 = [PHPhotoLibrary uniquedOID:v2];

    if (v4)
    {
      [*(*(a1 + 40) + 40) addObject:v4];
    }
  }

  return 1;
}

- (void)_addObjectIDsAndUUIDsFromXpcArray:(id)array toMutableArray:(id)mutableArray coordinator:(id)coordinator
{
  mutableArrayCopy = mutableArray;
  coordinatorCopy = coordinator;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__PHRelationshipChangeRequestHelper__addObjectIDsAndUUIDsFromXpcArray_toMutableArray_coordinator___block_invoke;
  v11[3] = &unk_1E75AA628;
  v12 = mutableArrayCopy;
  v13 = coordinatorCopy;
  v9 = coordinatorCopy;
  v10 = mutableArrayCopy;
  xpc_array_apply(array, v11);
}

uint64_t __98__PHRelationshipChangeRequestHelper__addObjectIDsAndUUIDsFromXpcArray_toMutableArray_coordinator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (MEMORY[0x19EAF3810]() == MEMORY[0x1E69E9F20])
  {
    memset(v9, 0, 37);
    bytes = xpc_uuid_get_bytes(v4);

    uuid_unparse(bytes, v9);
    if (!v9[0])
    {
      return 1;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
LABEL_7:
    [*(a1 + 32) addObject:{v6, *v9, *&v9[16], *&v9[24], v10}];

    return 1;
  }

  v5 = PLManagedObjectIDFromXPCValue();

  if (v5)
  {
    v6 = [PHPhotoLibrary uniquedOID:v5];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  return 1;
}

- (PHRelationshipChangeRequestHelper)initWithRelationshipName:(id)name changeRequestHelper:(id)helper
{
  nameCopy = name;
  helperCopy = helper;
  if ([nameCopy length])
  {
    v13.receiver = self;
    v13.super_class = PHRelationshipChangeRequestHelper;
    v9 = [(PHRelationshipChangeRequestHelper *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_relationshipName, name);
      objc_storeStrong(p_isa + 9, helper);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)existentObjectIDsUsingQuery:(id)query
{
  if (query)
  {
    executeQuery = [query executeQuery];
    fetchedObjectIDs = [executeQuery fetchedObjectIDs];
  }

  else
  {
    fetchedObjectIDs = [MEMORY[0x1E695DEC8] array];
  }

  return fetchedObjectIDs;
}

+ (id)objectIDsOrUUIDsFromPHObjects:(id)objects
{
  v17 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    array = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v10 = PLObjectIDOrUUIDFromPHObject(v9);
        [array addObject:v10];
      }

      v5 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    array = 0;
  }

  return array;
}

+ (id)_offsetsFromSourceOIDs:(id)ds toManagedObjects:(id)objects
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v6 = [PHPhotoLibrary uniquedOIDsFromObjects:objects];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = dsCopy;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v21;
    do
    {
      v13 = 0;
      v14 = -v10;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [v6 indexOfObject:*(*(&v20 + 1) + 8 * v13)];
        if (v15 >= v11 + v10 && v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v15 + v14;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        [v7 addObject:v17];

        ++v10;
        ++v13;
        --v14;
      }

      while (v9 != v13);
      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v7;
}

@end
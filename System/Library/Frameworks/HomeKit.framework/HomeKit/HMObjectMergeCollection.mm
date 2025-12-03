@interface HMObjectMergeCollection
- (BOOL)isModified;
- (HMObjectMergeCollection)initWithCurrentObjects:(id)objects newObjects:(id)newObjects commonObjectPredicate:(id)predicate;
- (NSArray)finalObjects;
- (void)mergeCommonObjects;
- (void)replaceAddedObjectsWithObjects:(id)objects;
@end

@implementation HMObjectMergeCollection

- (void)mergeCommonObjects
{
  commonObjectPairs = [(HMObjectMergeCollection *)self commonObjectPairs];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__HMObjectMergeCollection_mergeCommonObjects__block_invoke;
  v4[3] = &unk_1E75477E8;
  v4[4] = self;
  [commonObjectPairs hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
}

void __45__HMObjectMergeCollection_mergeCommonObjects__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 oldObject];
  v4 = [v8 updatedObject];
  v5 = [v3 mergeFromNewObject:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) currentUpdatedObjects];
    v7 = [v8 oldObject];
    [v6 addObject:v7];
  }
}

- (void)replaceAddedObjectsWithObjects:(id)objects
{
  v19 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  addedObjects = [(HMObjectMergeCollection *)self addedObjects];
  v7 = [addedObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(addedObjects);
        }

        uniqueIdentifier = [*(*(&v14 + 1) + 8 * v10) uniqueIdentifier];
        v12 = [objectsCopy hmf_firstObjectWithValue:uniqueIdentifier forKeyPath:@"uniqueIdentifier"];

        if (v12)
        {
          [array addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [addedObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(HMObjectMergeCollection *)self setAddedObjects:array];
  v13 = *MEMORY[0x1E69E9840];
}

- (NSArray)finalObjects
{
  commonObjectPairs = [(HMObjectMergeCollection *)self commonObjectPairs];
  v4 = [commonObjectPairs na_map:&__block_literal_global_7];
  addedObjects = [(HMObjectMergeCollection *)self addedObjects];
  v6 = [v4 arrayByAddingObjectsFromArray:addedObjects];

  return v6;
}

- (BOOL)isModified
{
  addedObjects = [(HMObjectMergeCollection *)self addedObjects];
  v4 = [addedObjects count];
  removedObjects = [(HMObjectMergeCollection *)self removedObjects];
  v6 = [removedObjects count] + v4;
  currentUpdatedObjects = [(HMObjectMergeCollection *)self currentUpdatedObjects];
  LOBYTE(v6) = v6 + [currentUpdatedObjects count] != 0;

  return v6;
}

- (HMObjectMergeCollection)initWithCurrentObjects:(id)objects newObjects:(id)newObjects commonObjectPredicate:(id)predicate
{
  objectsCopy = objects;
  newObjectsCopy = newObjects;
  predicateCopy = predicate;
  v35.receiver = self;
  v35.super_class = HMObjectMergeCollection;
  v11 = [(HMObjectMergeCollection *)&v35 init];
  if (v11)
  {
    array = [MEMORY[0x1E695DF70] array];
    currentUpdatedObjects = v11->_currentUpdatedObjects;
    v11->_currentUpdatedObjects = array;

    array2 = [MEMORY[0x1E695DF70] array];
    v15 = [MEMORY[0x1E695DF70] arrayWithArray:objectsCopy];
    array3 = [MEMORY[0x1E695DF70] array];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __83__HMObjectMergeCollection_initWithCurrentObjects_newObjects_commonObjectPredicate___block_invoke;
    v30 = &unk_1E75477A0;
    v31 = v15;
    v33 = array2;
    v34 = predicateCopy;
    v32 = array3;
    v17 = array2;
    v18 = array3;
    v19 = v15;
    [newObjectsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:&v27];
    v20 = [v17 copy];
    addedObjects = v11->_addedObjects;
    v11->_addedObjects = v20;

    v22 = [v19 copy];
    removedObjects = v11->_removedObjects;
    v11->_removedObjects = v22;

    v24 = [v18 copy];
    commonObjectPairs = v11->_commonObjectPairs;
    v11->_commonObjectPairs = v24;
  }

  return v11;
}

void __83__HMObjectMergeCollection_initWithCurrentObjects_newObjects_commonObjectPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __83__HMObjectMergeCollection_initWithCurrentObjects_newObjects_commonObjectPredicate___block_invoke_2;
  v13 = &unk_1E7547778;
  v15 = *(a1 + 56);
  v5 = v3;
  v14 = v5;
  v6 = [v4 na_firstObjectPassingTest:&v10];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [HMObjectMergePair alloc];
    v9 = [(HMObjectMergePair *)v8 initWithOldObject:v6 updatedObject:v5, v10, v11, v12, v13];
    [v7 addObject:v9];

    [*(a1 + 32) removeObject:v6];
  }

  else
  {
    [*(a1 + 48) addObject:{v5, v10, v11, v12, v13}];
  }
}

uint64_t __61__HMObjectMergeCollection_initWithCurrentObjects_newObjects___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];

  v7 = [v5 hmf_isEqualToUUID:v6];
  return v7;
}

@end
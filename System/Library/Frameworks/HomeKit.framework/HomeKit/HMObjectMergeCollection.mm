@interface HMObjectMergeCollection
- (BOOL)isModified;
- (HMObjectMergeCollection)initWithCurrentObjects:(id)a3 newObjects:(id)a4 commonObjectPredicate:(id)a5;
- (NSArray)finalObjects;
- (void)mergeCommonObjects;
- (void)replaceAddedObjectsWithObjects:(id)a3;
@end

@implementation HMObjectMergeCollection

- (void)mergeCommonObjects
{
  v3 = [(HMObjectMergeCollection *)self commonObjectPairs];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__HMObjectMergeCollection_mergeCommonObjects__block_invoke;
  v4[3] = &unk_1E75477E8;
  v4[4] = self;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];
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

- (void)replaceAddedObjectsWithObjects:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(HMObjectMergeCollection *)self addedObjects];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

        v11 = [*(*(&v14 + 1) + 8 * v10) uniqueIdentifier];
        v12 = [v4 hmf_firstObjectWithValue:v11 forKeyPath:@"uniqueIdentifier"];

        if (v12)
        {
          [v5 addObject:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(HMObjectMergeCollection *)self setAddedObjects:v5];
  v13 = *MEMORY[0x1E69E9840];
}

- (NSArray)finalObjects
{
  v3 = [(HMObjectMergeCollection *)self commonObjectPairs];
  v4 = [v3 na_map:&__block_literal_global_7];
  v5 = [(HMObjectMergeCollection *)self addedObjects];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (BOOL)isModified
{
  v3 = [(HMObjectMergeCollection *)self addedObjects];
  v4 = [v3 count];
  v5 = [(HMObjectMergeCollection *)self removedObjects];
  v6 = [v5 count] + v4;
  v7 = [(HMObjectMergeCollection *)self currentUpdatedObjects];
  LOBYTE(v6) = v6 + [v7 count] != 0;

  return v6;
}

- (HMObjectMergeCollection)initWithCurrentObjects:(id)a3 newObjects:(id)a4 commonObjectPredicate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = HMObjectMergeCollection;
  v11 = [(HMObjectMergeCollection *)&v35 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF70] array];
    currentUpdatedObjects = v11->_currentUpdatedObjects;
    v11->_currentUpdatedObjects = v12;

    v14 = [MEMORY[0x1E695DF70] array];
    v15 = [MEMORY[0x1E695DF70] arrayWithArray:v8];
    v16 = [MEMORY[0x1E695DF70] array];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __83__HMObjectMergeCollection_initWithCurrentObjects_newObjects_commonObjectPredicate___block_invoke;
    v30 = &unk_1E75477A0;
    v31 = v15;
    v33 = v14;
    v34 = v10;
    v32 = v16;
    v17 = v14;
    v18 = v16;
    v19 = v15;
    [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:&v27];
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
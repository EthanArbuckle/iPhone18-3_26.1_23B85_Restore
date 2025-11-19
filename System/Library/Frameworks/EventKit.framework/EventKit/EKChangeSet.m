@interface EKChangeSet
- (BOOL)_isNewAndUnsaved;
- (BOOL)hasChanges;
- (BOOL)hasUnsavedChangeForKey:(id)a3;
- (BOOL)hasUnsavedMultiValueAdditionForKey:(id)a3;
- (BOOL)hasUnsavedMultiValueRemovalForKey:(id)a3;
- (BOOL)isEffectivelyEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUniqueAddedObject:(id)a3 forKey:(id)a4;
- (EKChangeSet)initWithChangeSet:(id)a3;
- (EKChangeSet)initWithChangeSet:(id)a3 changesToKeep:(id)a4;
- (EKChangeSet)initWithChangeSet:(id)a3 changesToSkip:(id)a4;
- (EKChangeSet)initWithChangeSet:(id)a3 filter:(id)a4;
- (EKChangeSet)initWithSingleValueChanges:(id)a3 multiValueAdditions:(id)a4 multiValueRemovals:(id)a5;
- (id)_initWithChangeSet:(id)a3 filter:(id)a4;
- (id)_uniqueIdentifierToObjectMapForObjects:(id)a3 identifierBlock:(id)a4;
- (id)changedKeys;
- (id)changedMultiValueKeys;
- (id)changedSingleValueKeys;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)summary;
- (id)unsavedMultiValueAddedObjectsForKey:(id)a3;
- (id)unsavedMultiValueRemovedObjectsForKey:(id)a3;
- (id)valueForSingleValueKey:(id)a3 basedOn:(id)a4 and:(id)a5;
- (id)valuesForMultiValueKey:(id)a3 basedOn:(id)a4 and:(id)a5;
- (id)valuesForMultiValueKey:(id)a3 basedOnSet:(id)a4;
- (void)_cleanupEmptySetsForMultiValueKey:(id)a3;
- (void)addChanges:(id)a3 shouldCopyKeyCallback:(id)a4 objectIdentifierBlock:(id)a5;
- (void)addChangesAndUpdateUniqueMultiValueObjects:(id)a3;
- (void)addToChanges:(id)a3 forMultiValueKey:(id)a4 basedOn:(id)a5 and:(id)a6 shouldCopyKeyCallback:(id)a7 objectIdentifierBlock:(id)a8;
- (void)changeSingleValue:(id)a3 forKey:(id)a4 basedOn:(id)a5 and:(id)a6;
- (void)forceChangeValue:(id)a3 forKey:(id)a4;
- (void)markChangesAsSaved;
- (void)removeAllChangesExceptRemovals;
- (void)removeFromChanges:(id)a3 forMultiValueKey:(id)a4 basedOn:(id)a5 and:(id)a6 objectIdentifierBlock:(id)a7;
- (void)replaceMultiChangeAddedObject:(id)a3 withObject:(id)a4 forKey:(id)a5;
- (void)replaceUniqueMultiValueObjectsWithUpdatedObjects:(id)a3;
- (void)rollbackChanges;
- (void)rollbackChangesForKeys:(id)a3;
@end

@implementation EKChangeSet

- (EKChangeSet)initWithChangeSet:(id)a3
{
  v4 = a3;
  v5 = [v4 singleValueChanges];
  v6 = [v4 multiValueAdditions];
  v7 = [v4 multiValueRemovals];

  v8 = [(EKChangeSet *)self initWithSingleValueChanges:v5 multiValueAdditions:v6 multiValueRemovals:v7];
  return v8;
}

- (EKChangeSet)initWithChangeSet:(id)a3 changesToSkip:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EKChangeSet_initWithChangeSet_changesToSkip___block_invoke;
  aBlock[3] = &unk_1E77FE600;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [(EKChangeSet *)self _initWithChangeSet:v8 filter:v9];

  return v10;
}

- (EKChangeSet)initWithChangeSet:(id)a3 changesToKeep:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EKChangeSet_initWithChangeSet_changesToKeep___block_invoke;
  aBlock[3] = &unk_1E77FE600;
  v13 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  v10 = [(EKChangeSet *)self _initWithChangeSet:v8 filter:v9];

  return v10;
}

- (EKChangeSet)initWithChangeSet:(id)a3 filter:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__EKChangeSet_initWithChangeSet_filter___block_invoke;
  v10[3] = &unk_1E77FE628;
  v11 = v6;
  v7 = v6;
  v8 = [(EKChangeSet *)self _initWithChangeSet:a3 filter:v10];

  return v8;
}

- (id)_initWithChangeSet:(id)a3 filter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [EKChangeSet alloc];
  v9 = [v7 singleValueChanges];
  v10 = [v9 filteredDictionaryPassingTest:v6];
  v11 = [v7 multiValueAdditions];
  v12 = [v11 filteredDictionaryPassingTest:v6];
  v13 = [v7 multiValueRemovals];
  v14 = [v13 filteredDictionaryPassingTest:v6];

  v15 = [(EKChangeSet *)v8 initWithSingleValueChanges:v10 multiValueAdditions:v12 multiValueRemovals:v14];
  -[EKChangeSet setIsNew:](v15, "setIsNew:", [v7 isNew]);
  -[EKChangeSet setIsModified:](v15, "setIsModified:", [v7 isModified]);
  -[EKChangeSet setIsSaved:](v15, "setIsSaved:", [v7 isSaved]);
  -[EKChangeSet setIsDeleted:](v15, "setIsDeleted:", [v7 isDeleted]);
  -[EKChangeSet setIsUndeleted:](v15, "setIsUndeleted:", [v7 isUndeleted]);
  v16 = [v7 isUndetached];

  [(EKChangeSet *)v15 setIsUndetached:v16];
  return v15;
}

- (EKChangeSet)initWithSingleValueChanges:(id)a3 multiValueAdditions:(id)a4 multiValueRemovals:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v44 = a5;
  v53.receiver = self;
  v53.super_class = EKChangeSet;
  v10 = [(EKChangeSet *)&v53 init];
  v11 = v10;
  if (v10)
  {
    [(EKChangeSet *)v10 setIsNew:0];
    v41 = v8;
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v8];
    [(EKChangeSet *)v11 setSingleValueChanges:v12];

    v13 = objc_opt_new();
    [(EKChangeSet *)v11 setMultiValueAdditions:v13];

    if (v9)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = [v9 allKeys];
      v14 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v50;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v50 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v49 + 1) + 8 * i);
            [v9 valueForKey:v18];
            v20 = v19 = v9;
            v21 = [MEMORY[0x1E695DFA8] setWithSet:v20];
            v22 = [(EKChangeSet *)v11 multiValueAdditions];
            [v22 setObject:v21 forKeyedSubscript:v18];

            v9 = v19;
          }

          v15 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v15);
      }
    }

    v23 = objc_opt_new();
    [(EKChangeSet *)v11 setMultiValueRemovals:v23];

    if (v44)
    {
      obja = v9;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v24 = [v44 allKeys];
      v25 = [v24 countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v46;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v46 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v45 + 1) + 8 * j);
            v30 = [v44 valueForKey:v29];
            v31 = [MEMORY[0x1E695DFA8] setWithSet:v30];
            v32 = [(EKChangeSet *)v11 multiValueRemovals];
            [v32 setObject:v31 forKeyedSubscript:v29];
          }

          v26 = [v24 countByEnumeratingWithState:&v45 objects:v54 count:16];
        }

        while (v26);
      }

      v9 = obja;
    }

    v33 = [(EKChangeSet *)v11 singleValueChanges];
    v34 = [v33 count];

    v35 = [(EKChangeSet *)v11 multiValueAdditions];
    v36 = v34 | [v35 count];

    v37 = [(EKChangeSet *)v11 multiValueRemovals];
    v38 = [v37 count];

    [(EKChangeSet *)v11 setIsModified:(v36 | v38) != 0];
    v8 = v41;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [[EKChangeSet alloc] initWithChangeSet:self];
  [(EKChangeSet *)v4 setIsNew:[(EKChangeSet *)self isNew]];
  [(EKChangeSet *)v4 setIsModified:[(EKChangeSet *)self isModified]];
  [(EKChangeSet *)v4 setIsSaved:[(EKChangeSet *)self isSaved]];
  [(EKChangeSet *)v4 setIsDeleted:[(EKChangeSet *)self isDeleted]];
  [(EKChangeSet *)v4 setIsUndeleted:[(EKChangeSet *)self isUndeleted]];
  [(EKChangeSet *)v4 setIsUndetached:[(EKChangeSet *)self isUndetached]];
  return v4;
}

- (void)rollbackChanges
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [(EKChangeSet *)self setSingleValueChanges:v3];

  v4 = [MEMORY[0x1E695DF90] dictionary];
  [(EKChangeSet *)self setMultiValueAdditions:v4];

  v5 = [MEMORY[0x1E695DF90] dictionary];
  [(EKChangeSet *)self setMultiValueRemovals:v5];

  [(EKChangeSet *)self setIsModified:0];
}

- (void)rollbackChangesForKeys:(id)a3
{
  v4 = a3;
  v5 = [(EKChangeSet *)self singleValueChanges];
  [v5 removeObjectsForKeys:v4];

  v6 = [(EKChangeSet *)self multiValueAdditions];
  [v6 removeObjectsForKeys:v4];

  v7 = [(EKChangeSet *)self multiValueRemovals];
  [v7 removeObjectsForKeys:v4];
}

- (void)markChangesAsSaved
{
  [(EKChangeSet *)self setIsSaved:1];
  [(EKChangeSet *)self setIsNew:0];
  v3 = [(EKChangeSet *)self isModified];
  [(EKChangeSet *)self rollbackChanges];

  [(EKChangeSet *)self setIsModified:v3];
}

- (id)changedKeys
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(EKChangeSet *)self changedSingleValueKeys];
  [v3 unionSet:v4];

  v5 = [(EKChangeSet *)self changedMultiValueKeys];
  [v3 unionSet:v5];

  return v3;
}

- (id)changedSingleValueKeys
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(EKChangeSet *)self singleValueChanges];
  v4 = [v3 allKeys];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)changedMultiValueKeys
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = [(EKChangeSet *)self multiValueAdditions];
  v5 = [v4 allKeys];
  v6 = [v3 setWithArray:v5];

  v7 = MEMORY[0x1E695DFD8];
  v8 = [(EKChangeSet *)self multiValueRemovals];
  v9 = [v8 allKeys];
  v10 = [v7 setWithArray:v9];
  [v6 unionSet:v10];

  return v6;
}

- (BOOL)hasChanges
{
  if ([(EKChangeSet *)self isDeleted])
  {
    return 0;
  }

  if ([(EKChangeSet *)self isModified])
  {
    return 1;
  }

  return [(EKChangeSet *)self isNew];
}

- (BOOL)hasUnsavedChangeForKey:(id)a3
{
  v4 = a3;
  if ([(EKChangeSet *)self isDeleted])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(EKChangeSet *)self _isNewAndUnsaved];
    if (v4 || !v6)
    {
      v7 = [(EKChangeSet *)self singleValueChanges];
      v8 = v7;
      if (v4)
      {
        v9 = [v7 objectForKeyedSubscript:v4];
        v10 = v9 != 0;

        v11 = [(EKChangeSet *)self multiValueAdditions];
        v12 = [v11 objectForKeyedSubscript:v4];
        v13 = [v12 count];

        v14 = [(EKChangeSet *)self multiValueRemovals];
        v15 = [v14 objectForKeyedSubscript:v4];
        v16 = [v15 count];
      }

      else
      {
        v10 = [v7 count] != 0;

        v17 = [(EKChangeSet *)self multiValueAdditions];
        v13 = [v17 count];

        v14 = [(EKChangeSet *)self multiValueRemovals];
        v16 = [v14 count];
      }

      if (v13)
      {
        v18 = 1;
      }

      else
      {
        v18 = v10;
      }

      if (v16)
      {
        v5 = 1;
      }

      else
      {
        v5 = v18;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)_isNewAndUnsaved
{
  v3 = [(EKChangeSet *)self isNew];
  if (v3)
  {
    LOBYTE(v3) = ![(EKChangeSet *)self isSaved];
  }

  return v3;
}

- (BOOL)hasUnsavedMultiValueAdditionForKey:(id)a3
{
  v4 = a3;
  if ([(EKChangeSet *)self isDeleted])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(EKChangeSet *)self multiValueAdditions];
    v7 = [v6 objectForKeyedSubscript:v4];
    v5 = [v7 count] != 0;
  }

  return v5;
}

- (id)unsavedMultiValueAddedObjectsForKey:(id)a3
{
  v4 = a3;
  v5 = [(EKChangeSet *)self multiValueAdditions];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)hasUnsavedMultiValueRemovalForKey:(id)a3
{
  v4 = a3;
  if ([(EKChangeSet *)self isDeleted])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(EKChangeSet *)self multiValueRemovals];
    v7 = [v6 objectForKeyedSubscript:v4];
    v5 = [v7 count] != 0;
  }

  return v5;
}

- (id)unsavedMultiValueRemovedObjectsForKey:(id)a3
{
  v4 = a3;
  v5 = [(EKChangeSet *)self multiValueRemovals];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)valueForSingleValueKey:(id)a3 basedOn:(id)a4 and:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EKChangeSet *)self singleValueChanges];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (!v12)
  {
    v13 = [v10 objectForKeyedSubscript:v8];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v9 valueForKey:v8];
    }

    v12 = v15;
  }

  v16 = [MEMORY[0x1E695DFB0] null];
  if (v12 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  return v17;
}

- (void)changeSingleValue:(id)a3 forKey:(id)a4 basedOn:(id)a5 and:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = [(EKChangeSet *)self valueForSingleValueKey:v10 basedOn:v11 and:v12];
    if (!(v14 | v13) || ([v14 isEqual:v13] & 1) != 0)
    {

      goto LABEL_7;
    }
  }

  [(EKChangeSet *)self forceChangeValue:v14 forKey:v10];
LABEL_7:
}

- (id)valuesForMultiValueKey:(id)a3 basedOn:(id)a4 and:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 objectForKeyedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v9 valueForKey:v8];
  }

  v13 = v12;

  v14 = [(EKChangeSet *)self valuesForMultiValueKey:v8 basedOnSet:v13];

  return v14;
}

- (id)valuesForMultiValueKey:(id)a3 basedOnSet:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        v15 = [v14 uniqueIdentifier];
        if (v15)
        {
          [v8 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v11);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = [(EKChangeSet *)self multiValueRemovals];
  v17 = [v16 objectForKeyedSubscript:v6];

  v18 = [v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v40 + 1) + 8 * j) uniqueIdentifier];
        [v8 removeObjectForKey:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v19);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = [(EKChangeSet *)self multiValueAdditions];
  v24 = [v23 objectForKeyedSubscript:v6];

  v25 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v37;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v36 + 1) + 8 * k);
        v30 = [v29 uniqueIdentifier];
        [v8 setObject:v29 forKeyedSubscript:v30];
      }

      v26 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v26);
  }

  v31 = MEMORY[0x1E695DFD8];
  v32 = [v8 allValues];
  v33 = [v31 setWithArray:v32];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BOOL)isUniqueAddedObject:(id)a3 forKey:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_multiValueAdditions objectForKeyedSubscript:a4];
  if (v7)
  {
    v8 = [v6 uniqueIdentifier];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) uniqueIdentifier];
          v14 = [v13 isEqualToString:v8];

          if (v14)
          {
            LOBYTE(v10) = 1;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)replaceMultiChangeAddedObject:(id)a3 withObject:(id)a4 forKey:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_multiValueAdditions objectForKeyedSubscript:a5];
  if ([v9 containsObject:v10])
  {
    [v9 removeObject:v10];
    [v9 addObject:v8];
  }
}

- (void)addChanges:(id)a3 shouldCopyKeyCallback:(id)a4 objectIdentifierBlock:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v30 = a4;
  v9 = a5;
  if ([v8 isModified])
  {
    [(EKChangeSet *)self setIsModified:1];
    v10 = [v8 singleValueChanges];
    v11 = v10;
    if (!self->_skipsPersistentObjectCopy)
    {
      v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __70__EKChangeSet_addChanges_shouldCopyKeyCallback_objectIdentifierBlock___block_invoke;
      v35[3] = &unk_1E77FE650;
      v37 = v30;
      v13 = v12;
      v36 = v13;
      [v11 enumerateKeysAndObjectsUsingBlock:v35];
      v14 = v13;

      v11 = v14;
    }

    v15 = [(EKChangeSet *)self singleValueChanges];
    v28 = v11;
    [v15 addEntriesFromDictionary:v11];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [v8 changedMultiValueKeys];
    v16 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        v19 = 0;
        do
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v31 + 1) + 8 * v19);
          v21 = [v8 multiValueRemovals];
          v22 = [v21 objectForKeyedSubscript:v20];
          v23 = [v22 copy];
          [(EKChangeSet *)self removeFromChanges:v23 forMultiValueKey:v20 basedOn:0 and:0 objectIdentifierBlock:v9];

          v24 = [v8 multiValueAdditions];
          v25 = [v24 objectForKeyedSubscript:v20];
          v26 = [v25 copy];
          [(EKChangeSet *)self addToChanges:v26 forMultiValueKey:v20 basedOn:0 and:0 shouldCopyKeyCallback:v30 objectIdentifierBlock:v9];

          ++v19;
        }

        while (v17 != v19);
        v17 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v17);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __70__EKChangeSet_addChanges_shouldCopyKeyCallback_objectIdentifierBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 40);
    if (!v6 || (*(v6 + 16))(v6, v8))
    {
      v7 = [v5 copy];

      v5 = v7;
    }
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
}

- (void)addToChanges:(id)a3 forMultiValueKey:(id)a4 basedOn:(id)a5 and:(id)a6 shouldCopyKeyCallback:(id)a7 objectIdentifierBlock:(id)a8
{
  v58 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v48 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if ([v14 count])
  {
    v19 = [(EKChangeSet *)self multiValueAdditions];
    v20 = [v19 objectForKeyedSubscript:v15];

    v47 = v20;
    if (!v20)
    {
      v21 = [MEMORY[0x1E695DFA8] set];
      v22 = [(EKChangeSet *)self multiValueAdditions];
      v47 = v21;
      [v22 setObject:v21 forKeyedSubscript:v15];
    }

    if (!v18)
    {
      v18 = &__block_literal_global_41;
    }

    v23 = [v16 objectForKeyedSubscript:v15];
    v24 = v23;
    v45 = v17;
    v42 = v16;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [v48 valueForKey:v15];
    }

    v26 = v25;

    v49 = v26;
    v52 = [(EKChangeSet *)self _uniqueIdentifierToObjectMapForObjects:v26 identifierBlock:v18];
    v27 = [(EKChangeSet *)self multiValueRemovals];
    v44 = v15;
    v28 = [v27 objectForKeyedSubscript:v15];

    v46 = self;
    v51 = v28;
    v29 = [(EKChangeSet *)self _uniqueIdentifierToObjectMapForObjects:v28 identifierBlock:v18];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v43 = v14;
    obj = v14;
    v30 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v54;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v54 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v53 + 1) + 8 * i);
          v35 = v18[2](v18, v34);
          v36 = [v29 objectForKey:v35];

          v37 = v18[2](v18, v34);
          v38 = [v52 objectForKey:v37];

          if (v36)
          {
            [v51 removeObject:v36];
          }

          else if (!v49 || ([v38 isEqual:v34] & 1) == 0)
          {
            v39 = [v34 frozenObject];
            if (!v48 && !v46->_skipsPersistentObjectCopy)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (!v45 || v45[2]()))
              {
                v40 = [v39 copy];

                v39 = v40;
              }
            }

            [v47 addObject:v39];
          }
        }

        v31 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v31);
    }

    [(EKChangeSet *)v46 setIsModified:1];
    v15 = v44;
    [(EKChangeSet *)v46 _cleanupEmptySetsForMultiValueKey:v44];

    v16 = v42;
    v14 = v43;
    v17 = v45;
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)removeFromChanges:(id)a3 forMultiValueKey:(id)a4 basedOn:(id)a5 and:(id)a6 objectIdentifierBlock:(id)a7
{
  v54 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v12 count])
  {
    v17 = [(EKChangeSet *)self multiValueRemovals];
    v18 = [v17 objectForKeyedSubscript:v13];

    v44 = v18;
    if (!v18)
    {
      v19 = [MEMORY[0x1E695DFA8] set];
      v20 = [(EKChangeSet *)self multiValueRemovals];
      v44 = v19;
      [v20 setObject:v19 forKeyedSubscript:v13];
    }

    if (!v16)
    {
      v16 = &__block_literal_global_10_2;
    }

    v21 = [v15 objectForKeyedSubscript:v13];
    v22 = v21;
    v41 = v15;
    v42 = v14;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [v14 valueForKey:v13];
    }

    v24 = v23;

    v45 = v24;
    v48 = [(EKChangeSet *)self _uniqueIdentifierToObjectMapForObjects:v24 identifierBlock:v16];
    v25 = [(EKChangeSet *)self multiValueAdditions];
    v26 = [v25 objectForKeyedSubscript:v13];

    v40 = self;
    v47 = v26;
    v27 = [(EKChangeSet *)self _uniqueIdentifierToObjectMapForObjects:v26 identifierBlock:v16];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = v12;
    obj = v12;
    v28 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v50;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v49 + 1) + 8 * i);
          v33 = (v16)[2](v16, v32);
          v34 = [v27 objectForKey:v33];

          v35 = (v16)[2](v16, v32);
          v36 = [v48 objectForKey:v35];

          if (v34)
          {
            [v47 removeObject:v34];
            goto LABEL_21;
          }

          if (v45)
          {
            if (!v36)
            {
              goto LABEL_21;
            }

            v37 = v44;
            v38 = v36;
          }

          else
          {
            v37 = v44;
            v38 = v32;
          }

          [v37 addObject:v38];
LABEL_21:
        }

        v29 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v29);
    }

    [(EKChangeSet *)v40 setIsModified:1];
    [(EKChangeSet *)v40 _cleanupEmptySetsForMultiValueKey:v13];

    v12 = v43;
    v15 = v41;
    v14 = v42;
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)replaceUniqueMultiValueObjectsWithUpdatedObjects:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v33 = self;
  obj = [(EKChangeSet *)self multiValueAdditions];
  v5 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v32 = *v47;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        v9 = [(EKChangeSet *)v33 multiValueAdditions];
        v10 = [v9 objectForKeyedSubscript:v8];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v12)
        {
          v13 = *v43;
          while (2)
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v43 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v42 + 1) + 8 * j);
              v16 = [v15 uniqueIdentifier];
              v17 = [v4 objectForKeyedSubscript:v16];
              if (v17)
              {
                v19 = v17;
                v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
                v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
                [v18 addObject:v15];
                [v12 addObject:v19];

                goto LABEL_16;
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v42 objects:v52 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v18 = 0;
LABEL_16:

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v20 = v18;
        v21 = [v20 countByEnumeratingWithState:&v38 objects:v51 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v39;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [v11 removeObject:*(*(&v38 + 1) + 8 * k)];
            }

            v22 = [v20 countByEnumeratingWithState:&v38 objects:v51 count:16];
          }

          while (v22);
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v25 = v12;
        v26 = [v25 countByEnumeratingWithState:&v34 objects:v50 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v35;
          do
          {
            for (m = 0; m != v27; ++m)
            {
              if (*v35 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [v11 addObject:*(*(&v34 + 1) + 8 * m)];
            }

            v27 = [v25 countByEnumeratingWithState:&v34 objects:v50 count:16];
          }

          while (v27);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v6);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)addChangesAndUpdateUniqueMultiValueObjects:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(EKChangeSet *)self addChanges:v4];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = v4;
  obj = [v4 multiValueAdditions];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v21 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v22 multiValueAdditions];
        v11 = [v10 objectForKeyedSubscript:v9];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * j);
              if (!v7)
              {
                v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }

              v18 = [v17 uniqueIdentifier];
              [v7 setObject:v17 forKeyedSubscript:v18];
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v14);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [(EKChangeSet *)self replaceUniqueMultiValueObjectsWithUpdatedObjects:v7];
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupEmptySetsForMultiValueKey:(id)a3
{
  v12 = a3;
  v4 = [(EKChangeSet *)self multiValueAdditions];
  v5 = [v4 objectForKeyedSubscript:v12];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = [(EKChangeSet *)self multiValueAdditions];
    [v7 removeObjectForKey:v12];
  }

  v8 = [(EKChangeSet *)self multiValueRemovals];
  v9 = [v8 objectForKeyedSubscript:v12];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = [(EKChangeSet *)self multiValueRemovals];
    [v11 removeObjectForKey:v12];
  }
}

- (id)_uniqueIdentifierToObjectMapForObjects:(id)a3 identifierBlock:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 anyObject];
    v8 = [objc_msgSend(v7 "frozenClass")];

    if (([v8 isEqualToString:@"uniqueIdentifier"] & 1) == 0)
    {
      v9 = [v5 anyObject];
      v10 = [v9 eventStore];

      v37[0] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
      [v10 ensureLoadedProperties:v11 forObjects:v5];
    }

    v24 = v8;
    v12 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v5;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = v6[2](v6, v18);
          if (v19)
          {
            [v12 setObject:v18 forKey:v19];
          }

          else
          {
            v20 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
            {
              v26 = MEMORY[0x1E696AF00];
              log = v20;
              v21 = [v26 callStackSymbols];
              *buf = 138412546;
              v33 = v18;
              v34 = 2112;
              v35 = v21;
              _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Object %@ has no unique identifier: %@", buf, 0x16u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v15);
    }

    v5 = v25;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)forceChangeValue:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = v10;
    }

    else
    {
      v7 = [v10 copy];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v8 = v7;
  v9 = [(EKChangeSet *)self singleValueChanges];
  [v9 setObject:v8 forKeyedSubscript:v6];

  [(EKChangeSet *)self setIsModified:1];
}

- (void)removeAllChangesExceptRemovals
{
  v19 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_multiValueAdditions removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [(NSMutableDictionary *)self->_singleValueChanges allKeys];
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_singleValueChanges objectForKeyedSubscript:v7];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = [MEMORY[0x1E695DFB0] null];
        v11 = v10;
        if (isKindOfClass)
        {
          [(NSMutableDictionary *)self->_singleValueChanges setObject:v10 forKeyedSubscript:v7];
        }

        else
        {

          if (v8 != v11)
          {
            [(NSMutableDictionary *)self->_singleValueChanges removeObjectForKey:v7];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)summary
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(EKChangeSet *)self singleValueChanges];
  [v3 appendFormat:@"singleValueChanges: %@ \n", v4];

  v5 = [(EKChangeSet *)self multiValueAdditions];
  [v3 appendFormat:@"multiValueAdditions: %@ \n", v5];

  v6 = [(EKChangeSet *)self multiValueRemovals];
  [v3 appendFormat:@"multiValueRemovals: %@ \n", v6];

  [v3 appendString:@"\n"];
  [v3 appendFormat:@"is new: %d is deleted: %d is saved: %d is modified: %d", -[EKChangeSet isNew](self, "isNew"), -[EKChangeSet isDeleted](self, "isDeleted"), -[EKChangeSet isSaved](self, "isSaved"), -[EKChangeSet isModified](self, "isModified")];
  if ([(EKChangeSet *)self isUndeleted])
  {
    [v3 appendString:@"\n"];
    [v3 appendFormat:@"is undeleted: %d", -[EKChangeSet isUndeleted](self, "isUndeleted")];
  }

  if ([(EKChangeSet *)self isUndetached])
  {
    [v3 appendString:@"\n"];
    [v3 appendFormat:@"is undetached: %d", -[EKChangeSet isUndetached](self, "isUndetached")];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v18) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(EKChangeSet *)self singleValueChanges];
    v8 = [(EKChangeSet *)v6 singleValueChanges];
    if ([v7 isEqual:v8])
    {
      v9 = [(EKChangeSet *)self multiValueAdditions];
      v10 = [(EKChangeSet *)v6 multiValueAdditions];
      if ([v9 isEqual:v10])
      {
        v11 = [(EKChangeSet *)self multiValueRemovals];
        v12 = [(EKChangeSet *)v6 multiValueRemovals];
        if ([v11 isEqual:v12] && (v13 = -[EKChangeSet isNew](self, "isNew"), v13 == -[EKChangeSet isNew](v6, "isNew")) && (v14 = -[EKChangeSet isModified](self, "isModified"), v14 == -[EKChangeSet isModified](v6, "isModified")) && (v15 = -[EKChangeSet isSaved](self, "isSaved"), v15 == -[EKChangeSet isSaved](v6, "isSaved")) && (v16 = -[EKChangeSet isDeleted](self, "isDeleted"), v16 == -[EKChangeSet isDeleted](v6, "isDeleted")) && (v17 = -[EKChangeSet isUndeleted](self, "isUndeleted"), v17 == -[EKChangeSet isUndeleted](v6, "isUndeleted")))
        {
          v20 = [(EKChangeSet *)self isUndetached];
          v18 = v20 ^ [(EKChangeSet *)v6 isUndetached]^ 1;
        }

        else
        {
          LOBYTE(v18) = 0;
        }
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)isEffectivelyEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(EKChangeSet *)self isNew];
    if (v5 == [(EKChangeSet *)v4 isNew]&& (v6 = [(EKChangeSet *)self isSaved], v6 == [(EKChangeSet *)v4 isSaved]) && (v7 = [(EKChangeSet *)self isDeleted], v7 == [(EKChangeSet *)v4 isDeleted]) && (v8 = [(EKChangeSet *)self isUndeleted], v8 == [(EKChangeSet *)v4 isUndeleted]) && (v9 = [(EKChangeSet *)self isUndetached], v9 == [(EKChangeSet *)v4 isUndetached]))
    {
      v12 = objc_opt_new();
      v13 = [(EKChangeSet *)self singleValueChanges];
      v14 = [v13 CalDictionaryWithEmptyObjectsRemoved];

      if (v4)
      {
        v15 = [(EKChangeSet *)v4 singleValueChanges];
        v16 = [v15 CalDictionaryWithEmptyObjectsRemoved];
      }

      else
      {
        v16 = v12;
      }

      if ([v14 isEqual:v16])
      {
        v17 = [(EKChangeSet *)self multiValueAdditions];
        v18 = [v17 CalDictionaryWithEmptyObjectsRemoved];

        if (v4)
        {
          v19 = [(EKChangeSet *)v4 multiValueAdditions];
          v20 = [v19 CalDictionaryWithEmptyObjectsRemoved];
        }

        else
        {
          v20 = v12;
        }

        if ([v18 isEqual:v20])
        {
          v21 = [(EKChangeSet *)self multiValueRemovals];
          v22 = [v21 CalDictionaryWithEmptyObjectsRemoved];

          if (v4)
          {
            v23 = [(EKChangeSet *)v4 multiValueRemovals];
            v24 = [v23 CalDictionaryWithEmptyObjectsRemoved];
          }

          else
          {
            v24 = v12;
          }

          v10 = [v22 isEqual:v24];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end
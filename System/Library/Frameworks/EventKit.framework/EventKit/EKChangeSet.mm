@interface EKChangeSet
- (BOOL)_isNewAndUnsaved;
- (BOOL)hasChanges;
- (BOOL)hasUnsavedChangeForKey:(id)key;
- (BOOL)hasUnsavedMultiValueAdditionForKey:(id)key;
- (BOOL)hasUnsavedMultiValueRemovalForKey:(id)key;
- (BOOL)isEffectivelyEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUniqueAddedObject:(id)object forKey:(id)key;
- (EKChangeSet)initWithChangeSet:(id)set;
- (EKChangeSet)initWithChangeSet:(id)set changesToKeep:(id)keep;
- (EKChangeSet)initWithChangeSet:(id)set changesToSkip:(id)skip;
- (EKChangeSet)initWithChangeSet:(id)set filter:(id)filter;
- (EKChangeSet)initWithSingleValueChanges:(id)changes multiValueAdditions:(id)additions multiValueRemovals:(id)removals;
- (id)_initWithChangeSet:(id)set filter:(id)filter;
- (id)_uniqueIdentifierToObjectMapForObjects:(id)objects identifierBlock:(id)block;
- (id)changedKeys;
- (id)changedMultiValueKeys;
- (id)changedSingleValueKeys;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)summary;
- (id)unsavedMultiValueAddedObjectsForKey:(id)key;
- (id)unsavedMultiValueRemovedObjectsForKey:(id)key;
- (id)valueForSingleValueKey:(id)key basedOn:(id)on and:(id)and;
- (id)valuesForMultiValueKey:(id)key basedOn:(id)on and:(id)and;
- (id)valuesForMultiValueKey:(id)key basedOnSet:(id)set;
- (void)_cleanupEmptySetsForMultiValueKey:(id)key;
- (void)addChanges:(id)changes shouldCopyKeyCallback:(id)callback objectIdentifierBlock:(id)block;
- (void)addChangesAndUpdateUniqueMultiValueObjects:(id)objects;
- (void)addToChanges:(id)changes forMultiValueKey:(id)key basedOn:(id)on and:(id)and shouldCopyKeyCallback:(id)callback objectIdentifierBlock:(id)block;
- (void)changeSingleValue:(id)value forKey:(id)key basedOn:(id)on and:(id)and;
- (void)forceChangeValue:(id)value forKey:(id)key;
- (void)markChangesAsSaved;
- (void)removeAllChangesExceptRemovals;
- (void)removeFromChanges:(id)changes forMultiValueKey:(id)key basedOn:(id)on and:(id)and objectIdentifierBlock:(id)block;
- (void)replaceMultiChangeAddedObject:(id)object withObject:(id)withObject forKey:(id)key;
- (void)replaceUniqueMultiValueObjectsWithUpdatedObjects:(id)objects;
- (void)rollbackChanges;
- (void)rollbackChangesForKeys:(id)keys;
@end

@implementation EKChangeSet

- (EKChangeSet)initWithChangeSet:(id)set
{
  setCopy = set;
  singleValueChanges = [setCopy singleValueChanges];
  multiValueAdditions = [setCopy multiValueAdditions];
  multiValueRemovals = [setCopy multiValueRemovals];

  v8 = [(EKChangeSet *)self initWithSingleValueChanges:singleValueChanges multiValueAdditions:multiValueAdditions multiValueRemovals:multiValueRemovals];
  return v8;
}

- (EKChangeSet)initWithChangeSet:(id)set changesToSkip:(id)skip
{
  skipCopy = skip;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EKChangeSet_initWithChangeSet_changesToSkip___block_invoke;
  aBlock[3] = &unk_1E77FE600;
  v13 = skipCopy;
  v7 = skipCopy;
  setCopy = set;
  v9 = _Block_copy(aBlock);
  v10 = [(EKChangeSet *)self _initWithChangeSet:setCopy filter:v9];

  return v10;
}

- (EKChangeSet)initWithChangeSet:(id)set changesToKeep:(id)keep
{
  keepCopy = keep;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__EKChangeSet_initWithChangeSet_changesToKeep___block_invoke;
  aBlock[3] = &unk_1E77FE600;
  v13 = keepCopy;
  v7 = keepCopy;
  setCopy = set;
  v9 = _Block_copy(aBlock);
  v10 = [(EKChangeSet *)self _initWithChangeSet:setCopy filter:v9];

  return v10;
}

- (EKChangeSet)initWithChangeSet:(id)set filter:(id)filter
{
  filterCopy = filter;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__EKChangeSet_initWithChangeSet_filter___block_invoke;
  v10[3] = &unk_1E77FE628;
  v11 = filterCopy;
  v7 = filterCopy;
  v8 = [(EKChangeSet *)self _initWithChangeSet:set filter:v10];

  return v8;
}

- (id)_initWithChangeSet:(id)set filter:(id)filter
{
  filterCopy = filter;
  setCopy = set;
  v8 = [EKChangeSet alloc];
  singleValueChanges = [setCopy singleValueChanges];
  v10 = [singleValueChanges filteredDictionaryPassingTest:filterCopy];
  multiValueAdditions = [setCopy multiValueAdditions];
  v12 = [multiValueAdditions filteredDictionaryPassingTest:filterCopy];
  multiValueRemovals = [setCopy multiValueRemovals];
  v14 = [multiValueRemovals filteredDictionaryPassingTest:filterCopy];

  v15 = [(EKChangeSet *)v8 initWithSingleValueChanges:v10 multiValueAdditions:v12 multiValueRemovals:v14];
  -[EKChangeSet setIsNew:](v15, "setIsNew:", [setCopy isNew]);
  -[EKChangeSet setIsModified:](v15, "setIsModified:", [setCopy isModified]);
  -[EKChangeSet setIsSaved:](v15, "setIsSaved:", [setCopy isSaved]);
  -[EKChangeSet setIsDeleted:](v15, "setIsDeleted:", [setCopy isDeleted]);
  -[EKChangeSet setIsUndeleted:](v15, "setIsUndeleted:", [setCopy isUndeleted]);
  isUndetached = [setCopy isUndetached];

  [(EKChangeSet *)v15 setIsUndetached:isUndetached];
  return v15;
}

- (EKChangeSet)initWithSingleValueChanges:(id)changes multiValueAdditions:(id)additions multiValueRemovals:(id)removals
{
  v56 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  additionsCopy = additions;
  removalsCopy = removals;
  v53.receiver = self;
  v53.super_class = EKChangeSet;
  v10 = [(EKChangeSet *)&v53 init];
  v11 = v10;
  if (v10)
  {
    [(EKChangeSet *)v10 setIsNew:0];
    v41 = changesCopy;
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:changesCopy];
    [(EKChangeSet *)v11 setSingleValueChanges:v12];

    v13 = objc_opt_new();
    [(EKChangeSet *)v11 setMultiValueAdditions:v13];

    if (additionsCopy)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = [additionsCopy allKeys];
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
            [additionsCopy valueForKey:v18];
            v20 = v19 = additionsCopy;
            v21 = [MEMORY[0x1E695DFA8] setWithSet:v20];
            multiValueAdditions = [(EKChangeSet *)v11 multiValueAdditions];
            [multiValueAdditions setObject:v21 forKeyedSubscript:v18];

            additionsCopy = v19;
          }

          v15 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v15);
      }
    }

    v23 = objc_opt_new();
    [(EKChangeSet *)v11 setMultiValueRemovals:v23];

    if (removalsCopy)
    {
      obja = additionsCopy;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      allKeys = [removalsCopy allKeys];
      v25 = [allKeys countByEnumeratingWithState:&v45 objects:v54 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v29 = *(*(&v45 + 1) + 8 * j);
            v30 = [removalsCopy valueForKey:v29];
            v31 = [MEMORY[0x1E695DFA8] setWithSet:v30];
            multiValueRemovals = [(EKChangeSet *)v11 multiValueRemovals];
            [multiValueRemovals setObject:v31 forKeyedSubscript:v29];
          }

          v26 = [allKeys countByEnumeratingWithState:&v45 objects:v54 count:16];
        }

        while (v26);
      }

      additionsCopy = obja;
    }

    singleValueChanges = [(EKChangeSet *)v11 singleValueChanges];
    v34 = [singleValueChanges count];

    multiValueAdditions2 = [(EKChangeSet *)v11 multiValueAdditions];
    v36 = v34 | [multiValueAdditions2 count];

    multiValueRemovals2 = [(EKChangeSet *)v11 multiValueRemovals];
    v38 = [multiValueRemovals2 count];

    [(EKChangeSet *)v11 setIsModified:(v36 | v38) != 0];
    changesCopy = v41;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(EKChangeSet *)self setSingleValueChanges:dictionary];

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [(EKChangeSet *)self setMultiValueAdditions:dictionary2];

  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  [(EKChangeSet *)self setMultiValueRemovals:dictionary3];

  [(EKChangeSet *)self setIsModified:0];
}

- (void)rollbackChangesForKeys:(id)keys
{
  keysCopy = keys;
  singleValueChanges = [(EKChangeSet *)self singleValueChanges];
  [singleValueChanges removeObjectsForKeys:keysCopy];

  multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
  [multiValueAdditions removeObjectsForKeys:keysCopy];

  multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
  [multiValueRemovals removeObjectsForKeys:keysCopy];
}

- (void)markChangesAsSaved
{
  [(EKChangeSet *)self setIsSaved:1];
  [(EKChangeSet *)self setIsNew:0];
  isModified = [(EKChangeSet *)self isModified];
  [(EKChangeSet *)self rollbackChanges];

  [(EKChangeSet *)self setIsModified:isModified];
}

- (id)changedKeys
{
  v3 = [MEMORY[0x1E695DFA8] set];
  changedSingleValueKeys = [(EKChangeSet *)self changedSingleValueKeys];
  [v3 unionSet:changedSingleValueKeys];

  changedMultiValueKeys = [(EKChangeSet *)self changedMultiValueKeys];
  [v3 unionSet:changedMultiValueKeys];

  return v3;
}

- (id)changedSingleValueKeys
{
  v2 = MEMORY[0x1E695DFD8];
  singleValueChanges = [(EKChangeSet *)self singleValueChanges];
  allKeys = [singleValueChanges allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

- (id)changedMultiValueKeys
{
  v3 = MEMORY[0x1E695DFA8];
  multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
  allKeys = [multiValueAdditions allKeys];
  v6 = [v3 setWithArray:allKeys];

  v7 = MEMORY[0x1E695DFD8];
  multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
  allKeys2 = [multiValueRemovals allKeys];
  v10 = [v7 setWithArray:allKeys2];
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

- (BOOL)hasUnsavedChangeForKey:(id)key
{
  keyCopy = key;
  if ([(EKChangeSet *)self isDeleted])
  {
    v5 = 0;
  }

  else
  {
    _isNewAndUnsaved = [(EKChangeSet *)self _isNewAndUnsaved];
    if (keyCopy || !_isNewAndUnsaved)
    {
      singleValueChanges = [(EKChangeSet *)self singleValueChanges];
      v8 = singleValueChanges;
      if (keyCopy)
      {
        v9 = [singleValueChanges objectForKeyedSubscript:keyCopy];
        v10 = v9 != 0;

        multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
        v12 = [multiValueAdditions objectForKeyedSubscript:keyCopy];
        v13 = [v12 count];

        multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
        v15 = [multiValueRemovals objectForKeyedSubscript:keyCopy];
        v16 = [v15 count];
      }

      else
      {
        v10 = [singleValueChanges count] != 0;

        multiValueAdditions2 = [(EKChangeSet *)self multiValueAdditions];
        v13 = [multiValueAdditions2 count];

        multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
        v16 = [multiValueRemovals count];
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
  isNew = [(EKChangeSet *)self isNew];
  if (isNew)
  {
    LOBYTE(isNew) = ![(EKChangeSet *)self isSaved];
  }

  return isNew;
}

- (BOOL)hasUnsavedMultiValueAdditionForKey:(id)key
{
  keyCopy = key;
  if ([(EKChangeSet *)self isDeleted])
  {
    v5 = 0;
  }

  else
  {
    multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
    v7 = [multiValueAdditions objectForKeyedSubscript:keyCopy];
    v5 = [v7 count] != 0;
  }

  return v5;
}

- (id)unsavedMultiValueAddedObjectsForKey:(id)key
{
  keyCopy = key;
  multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
  v6 = [multiValueAdditions objectForKeyedSubscript:keyCopy];

  return v6;
}

- (BOOL)hasUnsavedMultiValueRemovalForKey:(id)key
{
  keyCopy = key;
  if ([(EKChangeSet *)self isDeleted])
  {
    v5 = 0;
  }

  else
  {
    multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
    v7 = [multiValueRemovals objectForKeyedSubscript:keyCopy];
    v5 = [v7 count] != 0;
  }

  return v5;
}

- (id)unsavedMultiValueRemovedObjectsForKey:(id)key
{
  keyCopy = key;
  multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
  v6 = [multiValueRemovals objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)valueForSingleValueKey:(id)key basedOn:(id)on and:(id)and
{
  keyCopy = key;
  onCopy = on;
  andCopy = and;
  singleValueChanges = [(EKChangeSet *)self singleValueChanges];
  v12 = [singleValueChanges objectForKeyedSubscript:keyCopy];

  if (!v12)
  {
    v13 = [andCopy objectForKeyedSubscript:keyCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [onCopy valueForKey:keyCopy];
    }

    v12 = v15;
  }

  null = [MEMORY[0x1E695DFB0] null];
  if (v12 == null)
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

- (void)changeSingleValue:(id)value forKey:(id)key basedOn:(id)on and:(id)and
{
  valueCopy = value;
  keyCopy = key;
  onCopy = on;
  andCopy = and;
  if (onCopy)
  {
    v13 = [(EKChangeSet *)self valueForSingleValueKey:keyCopy basedOn:onCopy and:andCopy];
    if (!(valueCopy | v13) || ([valueCopy isEqual:v13] & 1) != 0)
    {

      goto LABEL_7;
    }
  }

  [(EKChangeSet *)self forceChangeValue:valueCopy forKey:keyCopy];
LABEL_7:
}

- (id)valuesForMultiValueKey:(id)key basedOn:(id)on and:(id)and
{
  keyCopy = key;
  onCopy = on;
  v10 = [and objectForKeyedSubscript:keyCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [onCopy valueForKey:keyCopy];
  }

  v13 = v12;

  v14 = [(EKChangeSet *)self valuesForMultiValueKey:keyCopy basedOnSet:v13];

  return v14;
}

- (id)valuesForMultiValueKey:(id)key basedOnSet:(id)set
{
  v51 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  setCopy = set;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = setCopy;
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
        uniqueIdentifier = [v14 uniqueIdentifier];
        if (uniqueIdentifier)
        {
          [dictionary setObject:v14 forKeyedSubscript:uniqueIdentifier];
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
  multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
  v17 = [multiValueRemovals objectForKeyedSubscript:keyCopy];

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

        uniqueIdentifier2 = [*(*(&v40 + 1) + 8 * j) uniqueIdentifier];
        [dictionary removeObjectForKey:uniqueIdentifier2];
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v19);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
  v24 = [multiValueAdditions objectForKeyedSubscript:keyCopy];

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
        uniqueIdentifier3 = [v29 uniqueIdentifier];
        [dictionary setObject:v29 forKeyedSubscript:uniqueIdentifier3];
      }

      v26 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v26);
  }

  v31 = MEMORY[0x1E695DFD8];
  allValues = [dictionary allValues];
  v33 = [v31 setWithArray:allValues];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BOOL)isUniqueAddedObject:(id)object forKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v7 = [(NSMutableDictionary *)self->_multiValueAdditions objectForKeyedSubscript:key];
  if (v7)
  {
    uniqueIdentifier = [objectCopy uniqueIdentifier];
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

          uniqueIdentifier2 = [*(*(&v17 + 1) + 8 * i) uniqueIdentifier];
          v14 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier];

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

- (void)replaceMultiChangeAddedObject:(id)object withObject:(id)withObject forKey:(id)key
{
  objectCopy = object;
  withObjectCopy = withObject;
  v9 = [(NSMutableDictionary *)self->_multiValueAdditions objectForKeyedSubscript:key];
  if ([v9 containsObject:objectCopy])
  {
    [v9 removeObject:objectCopy];
    [v9 addObject:withObjectCopy];
  }
}

- (void)addChanges:(id)changes shouldCopyKeyCallback:(id)callback objectIdentifierBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  callbackCopy = callback;
  blockCopy = block;
  if ([changesCopy isModified])
  {
    [(EKChangeSet *)self setIsModified:1];
    singleValueChanges = [changesCopy singleValueChanges];
    v11 = singleValueChanges;
    if (!self->_skipsPersistentObjectCopy)
    {
      v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(singleValueChanges, "count")}];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __70__EKChangeSet_addChanges_shouldCopyKeyCallback_objectIdentifierBlock___block_invoke;
      v35[3] = &unk_1E77FE650;
      v37 = callbackCopy;
      v13 = v12;
      v36 = v13;
      [v11 enumerateKeysAndObjectsUsingBlock:v35];
      v14 = v13;

      v11 = v14;
    }

    singleValueChanges2 = [(EKChangeSet *)self singleValueChanges];
    v28 = v11;
    [singleValueChanges2 addEntriesFromDictionary:v11];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [changesCopy changedMultiValueKeys];
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
          multiValueRemovals = [changesCopy multiValueRemovals];
          v22 = [multiValueRemovals objectForKeyedSubscript:v20];
          v23 = [v22 copy];
          [(EKChangeSet *)self removeFromChanges:v23 forMultiValueKey:v20 basedOn:0 and:0 objectIdentifierBlock:blockCopy];

          multiValueAdditions = [changesCopy multiValueAdditions];
          v25 = [multiValueAdditions objectForKeyedSubscript:v20];
          v26 = [v25 copy];
          [(EKChangeSet *)self addToChanges:v26 forMultiValueKey:v20 basedOn:0 and:0 shouldCopyKeyCallback:callbackCopy objectIdentifierBlock:blockCopy];

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

- (void)addToChanges:(id)changes forMultiValueKey:(id)key basedOn:(id)on and:(id)and shouldCopyKeyCallback:(id)callback objectIdentifierBlock:(id)block
{
  v58 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  keyCopy = key;
  onCopy = on;
  andCopy = and;
  callbackCopy = callback;
  blockCopy = block;
  if ([changesCopy count])
  {
    multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
    v20 = [multiValueAdditions objectForKeyedSubscript:keyCopy];

    v47 = v20;
    if (!v20)
    {
      v21 = [MEMORY[0x1E695DFA8] set];
      multiValueAdditions2 = [(EKChangeSet *)self multiValueAdditions];
      v47 = v21;
      [multiValueAdditions2 setObject:v21 forKeyedSubscript:keyCopy];
    }

    if (!blockCopy)
    {
      blockCopy = &__block_literal_global_41;
    }

    v23 = [andCopy objectForKeyedSubscript:keyCopy];
    v24 = v23;
    v45 = callbackCopy;
    v42 = andCopy;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [onCopy valueForKey:keyCopy];
    }

    v26 = v25;

    v49 = v26;
    v52 = [(EKChangeSet *)self _uniqueIdentifierToObjectMapForObjects:v26 identifierBlock:blockCopy];
    multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
    v44 = keyCopy;
    v28 = [multiValueRemovals objectForKeyedSubscript:keyCopy];

    selfCopy = self;
    v51 = v28;
    v29 = [(EKChangeSet *)self _uniqueIdentifierToObjectMapForObjects:v28 identifierBlock:blockCopy];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v43 = changesCopy;
    obj = changesCopy;
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
          v35 = blockCopy[2](blockCopy, v34);
          v36 = [v29 objectForKey:v35];

          v37 = blockCopy[2](blockCopy, v34);
          v38 = [v52 objectForKey:v37];

          if (v36)
          {
            [v51 removeObject:v36];
          }

          else if (!v49 || ([v38 isEqual:v34] & 1) == 0)
          {
            frozenObject = [v34 frozenObject];
            if (!onCopy && !selfCopy->_skipsPersistentObjectCopy)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (!v45 || v45[2]()))
              {
                v40 = [frozenObject copy];

                frozenObject = v40;
              }
            }

            [v47 addObject:frozenObject];
          }
        }

        v31 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v31);
    }

    [(EKChangeSet *)selfCopy setIsModified:1];
    keyCopy = v44;
    [(EKChangeSet *)selfCopy _cleanupEmptySetsForMultiValueKey:v44];

    andCopy = v42;
    changesCopy = v43;
    callbackCopy = v45;
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)removeFromChanges:(id)changes forMultiValueKey:(id)key basedOn:(id)on and:(id)and objectIdentifierBlock:(id)block
{
  v54 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  keyCopy = key;
  onCopy = on;
  andCopy = and;
  blockCopy = block;
  if ([changesCopy count])
  {
    multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
    v18 = [multiValueRemovals objectForKeyedSubscript:keyCopy];

    v44 = v18;
    if (!v18)
    {
      v19 = [MEMORY[0x1E695DFA8] set];
      multiValueRemovals2 = [(EKChangeSet *)self multiValueRemovals];
      v44 = v19;
      [multiValueRemovals2 setObject:v19 forKeyedSubscript:keyCopy];
    }

    if (!blockCopy)
    {
      blockCopy = &__block_literal_global_10_2;
    }

    v21 = [andCopy objectForKeyedSubscript:keyCopy];
    v22 = v21;
    v41 = andCopy;
    v42 = onCopy;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [onCopy valueForKey:keyCopy];
    }

    v24 = v23;

    v45 = v24;
    v48 = [(EKChangeSet *)self _uniqueIdentifierToObjectMapForObjects:v24 identifierBlock:blockCopy];
    multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
    v26 = [multiValueAdditions objectForKeyedSubscript:keyCopy];

    selfCopy = self;
    v47 = v26;
    v27 = [(EKChangeSet *)self _uniqueIdentifierToObjectMapForObjects:v26 identifierBlock:blockCopy];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = changesCopy;
    obj = changesCopy;
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
          v33 = (blockCopy)[2](blockCopy, v32);
          v34 = [v27 objectForKey:v33];

          v35 = (blockCopy)[2](blockCopy, v32);
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

    [(EKChangeSet *)selfCopy setIsModified:1];
    [(EKChangeSet *)selfCopy _cleanupEmptySetsForMultiValueKey:keyCopy];

    changesCopy = v43;
    andCopy = v41;
    onCopy = v42;
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)replaceUniqueMultiValueObjectsWithUpdatedObjects:(id)objects
{
  v54 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  selfCopy = self;
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
        multiValueAdditions = [(EKChangeSet *)selfCopy multiValueAdditions];
        v10 = [multiValueAdditions objectForKeyedSubscript:v8];

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
              uniqueIdentifier = [v15 uniqueIdentifier];
              v17 = [objectsCopy objectForKeyedSubscript:uniqueIdentifier];
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

- (void)addChangesAndUpdateUniqueMultiValueObjects:(id)objects
{
  v33 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  [(EKChangeSet *)self addChanges:objectsCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = objectsCopy;
  obj = [objectsCopy multiValueAdditions];
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
        multiValueAdditions = [v22 multiValueAdditions];
        v11 = [multiValueAdditions objectForKeyedSubscript:v9];

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

              uniqueIdentifier = [v17 uniqueIdentifier];
              [v7 setObject:v17 forKeyedSubscript:uniqueIdentifier];
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

- (void)_cleanupEmptySetsForMultiValueKey:(id)key
{
  keyCopy = key;
  multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
  v5 = [multiValueAdditions objectForKeyedSubscript:keyCopy];
  v6 = [v5 count];

  if (!v6)
  {
    multiValueAdditions2 = [(EKChangeSet *)self multiValueAdditions];
    [multiValueAdditions2 removeObjectForKey:keyCopy];
  }

  multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
  v9 = [multiValueRemovals objectForKeyedSubscript:keyCopy];
  v10 = [v9 count];

  if (!v10)
  {
    multiValueRemovals2 = [(EKChangeSet *)self multiValueRemovals];
    [multiValueRemovals2 removeObjectForKey:keyCopy];
  }
}

- (id)_uniqueIdentifierToObjectMapForObjects:(id)objects identifierBlock:(id)block
{
  v37[1] = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  blockCopy = block;
  if ([objectsCopy count])
  {
    anyObject = [objectsCopy anyObject];
    v8 = [objc_msgSend(anyObject "frozenClass")];

    if (([v8 isEqualToString:@"uniqueIdentifier"] & 1) == 0)
    {
      anyObject2 = [objectsCopy anyObject];
      eventStore = [anyObject2 eventStore];

      v37[0] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
      [eventStore ensureLoadedProperties:v11 forObjects:objectsCopy];
    }

    v24 = v8;
    v12 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = objectsCopy;
    v13 = objectsCopy;
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
          v19 = blockCopy[2](blockCopy, v18);
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
              callStackSymbols = [v26 callStackSymbols];
              *buf = 138412546;
              v33 = v18;
              v34 = 2112;
              v35 = callStackSymbols;
              _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Object %@ has no unique identifier: %@", buf, 0x16u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v15);
    }

    objectsCopy = v25;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)forceChangeValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      null = valueCopy;
    }

    else
    {
      null = [valueCopy copy];
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8 = null;
  singleValueChanges = [(EKChangeSet *)self singleValueChanges];
  [singleValueChanges setObject:v8 forKeyedSubscript:keyCopy];

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
        null = [MEMORY[0x1E695DFB0] null];
        v11 = null;
        if (isKindOfClass)
        {
          [(NSMutableDictionary *)self->_singleValueChanges setObject:null forKeyedSubscript:v7];
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
  string = [MEMORY[0x1E696AD60] string];
  singleValueChanges = [(EKChangeSet *)self singleValueChanges];
  [string appendFormat:@"singleValueChanges: %@ \n", singleValueChanges];

  multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
  [string appendFormat:@"multiValueAdditions: %@ \n", multiValueAdditions];

  multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
  [string appendFormat:@"multiValueRemovals: %@ \n", multiValueRemovals];

  [string appendString:@"\n"];
  [string appendFormat:@"is new: %d is deleted: %d is saved: %d is modified: %d", -[EKChangeSet isNew](self, "isNew"), -[EKChangeSet isDeleted](self, "isDeleted"), -[EKChangeSet isSaved](self, "isSaved"), -[EKChangeSet isModified](self, "isModified")];
  if ([(EKChangeSet *)self isUndeleted])
  {
    [string appendString:@"\n"];
    [string appendFormat:@"is undeleted: %d", -[EKChangeSet isUndeleted](self, "isUndeleted")];
  }

  if ([(EKChangeSet *)self isUndetached])
  {
    [string appendString:@"\n"];
    [string appendFormat:@"is undetached: %d", -[EKChangeSet isUndetached](self, "isUndetached")];
  }

  return string;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v18) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    singleValueChanges = [(EKChangeSet *)self singleValueChanges];
    singleValueChanges2 = [(EKChangeSet *)v6 singleValueChanges];
    if ([singleValueChanges isEqual:singleValueChanges2])
    {
      multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
      multiValueAdditions2 = [(EKChangeSet *)v6 multiValueAdditions];
      if ([multiValueAdditions isEqual:multiValueAdditions2])
      {
        multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
        multiValueRemovals2 = [(EKChangeSet *)v6 multiValueRemovals];
        if ([multiValueRemovals isEqual:multiValueRemovals2] && (v13 = -[EKChangeSet isNew](self, "isNew"), v13 == -[EKChangeSet isNew](v6, "isNew")) && (v14 = -[EKChangeSet isModified](self, "isModified"), v14 == -[EKChangeSet isModified](v6, "isModified")) && (v15 = -[EKChangeSet isSaved](self, "isSaved"), v15 == -[EKChangeSet isSaved](v6, "isSaved")) && (v16 = -[EKChangeSet isDeleted](self, "isDeleted"), v16 == -[EKChangeSet isDeleted](v6, "isDeleted")) && (v17 = -[EKChangeSet isUndeleted](self, "isUndeleted"), v17 == -[EKChangeSet isUndeleted](v6, "isUndeleted")))
        {
          isUndetached = [(EKChangeSet *)self isUndetached];
          v18 = isUndetached ^ [(EKChangeSet *)v6 isUndetached]^ 1;
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

- (BOOL)isEffectivelyEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    isNew = [(EKChangeSet *)self isNew];
    if (isNew == [(EKChangeSet *)equalCopy isNew]&& (v6 = [(EKChangeSet *)self isSaved], v6 == [(EKChangeSet *)equalCopy isSaved]) && (v7 = [(EKChangeSet *)self isDeleted], v7 == [(EKChangeSet *)equalCopy isDeleted]) && (v8 = [(EKChangeSet *)self isUndeleted], v8 == [(EKChangeSet *)equalCopy isUndeleted]) && (v9 = [(EKChangeSet *)self isUndetached], v9 == [(EKChangeSet *)equalCopy isUndetached]))
    {
      v12 = objc_opt_new();
      singleValueChanges = [(EKChangeSet *)self singleValueChanges];
      calDictionaryWithEmptyObjectsRemoved = [singleValueChanges CalDictionaryWithEmptyObjectsRemoved];

      if (equalCopy)
      {
        singleValueChanges2 = [(EKChangeSet *)equalCopy singleValueChanges];
        calDictionaryWithEmptyObjectsRemoved2 = [singleValueChanges2 CalDictionaryWithEmptyObjectsRemoved];
      }

      else
      {
        calDictionaryWithEmptyObjectsRemoved2 = v12;
      }

      if ([calDictionaryWithEmptyObjectsRemoved isEqual:calDictionaryWithEmptyObjectsRemoved2])
      {
        multiValueAdditions = [(EKChangeSet *)self multiValueAdditions];
        calDictionaryWithEmptyObjectsRemoved3 = [multiValueAdditions CalDictionaryWithEmptyObjectsRemoved];

        if (equalCopy)
        {
          multiValueAdditions2 = [(EKChangeSet *)equalCopy multiValueAdditions];
          calDictionaryWithEmptyObjectsRemoved4 = [multiValueAdditions2 CalDictionaryWithEmptyObjectsRemoved];
        }

        else
        {
          calDictionaryWithEmptyObjectsRemoved4 = v12;
        }

        if ([calDictionaryWithEmptyObjectsRemoved3 isEqual:calDictionaryWithEmptyObjectsRemoved4])
        {
          multiValueRemovals = [(EKChangeSet *)self multiValueRemovals];
          calDictionaryWithEmptyObjectsRemoved5 = [multiValueRemovals CalDictionaryWithEmptyObjectsRemoved];

          if (equalCopy)
          {
            multiValueRemovals2 = [(EKChangeSet *)equalCopy multiValueRemovals];
            calDictionaryWithEmptyObjectsRemoved6 = [multiValueRemovals2 CalDictionaryWithEmptyObjectsRemoved];
          }

          else
          {
            calDictionaryWithEmptyObjectsRemoved6 = v12;
          }

          v10 = [calDictionaryWithEmptyObjectsRemoved5 isEqual:calDictionaryWithEmptyObjectsRemoved6];
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
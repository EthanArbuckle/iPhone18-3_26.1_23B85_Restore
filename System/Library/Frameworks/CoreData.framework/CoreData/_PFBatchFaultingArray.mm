@interface _PFBatchFaultingArray
+ (void)initialize;
- (BOOL)isEqualToArray:(id)array;
- (NSString)description;
- (_PFBatchFaultingArray)initWithPFArray:(id)array andRequest:(id)request andContext:(id)context;
- (id)arrayFromObjectIDs;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filteredArrayUsingPredicate:(id)predicate;
- (id)indexesOfObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (id)indexesOfObjectsWithOptions:(unint64_t)options passingTest:(id)test;
- (id)managedObjectIDAtIndex:(unint64_t)index;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newArrayFromObjectIDs;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (id)objectsAtIndexes:(id)indexes;
- (id)retainedObjectAtIndex:(uint64_t)index;
- (id)sortedArrayUsingComparator:(id)comparator;
- (id)sortedArrayUsingDescriptors:(id)descriptors;
- (id)sortedArrayUsingFunction:(void *)function context:(void *)context;
- (id)sortedArrayUsingFunction:(void *)function context:(void *)context hint:(id)hint;
- (id)sortedArrayUsingSelector:(SEL)selector;
- (id)sortedArrayWithOptions:(unint64_t)options usingComparator:(id)comparator;
- (id)subarrayWithRange:(_NSRange)range;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (uint64_t)_newSubArrayInRange:(unint64_t)range asMutable:(int)mutable;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfManagedObjectForObjectID:(id)d;
- (unint64_t)indexOfObject:(id)object;
- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range;
- (unint64_t)indexOfObjectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test;
- (unint64_t)indexOfObjectIdenticalTo:(id)to;
- (unint64_t)indexOfObjectIdenticalTo:(id)to inRange:(_NSRange)range;
- (unint64_t)indexOfObjectWithOptions:(unint64_t)options passingTest:(id)test;
- (void)_turnAllBatchesIntoFaults;
- (void)_turnAllBatchesIntoObjects;
- (void)dealloc;
- (void)enumerateObjectsAtIndexes:(id)indexes options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation _PFBatchFaultingArray

- (void)dealloc
{
  if (self)
  {

    moc = self->_moc;
    if (moc && self->_count)
    {
      [(NSManagedObjectContext *)moc _registerAsyncReferenceCallback];
      moc = self->_moc;
    }

    entryFlags = self->_entryFlags;
    if (entryFlags)
    {
      PF_FREE_OBJECT_ARRAY(entryFlags);
    }

    LRUBatches = self->_LRUBatches;
    if (LRUBatches)
    {
      PF_FREE_OBJECT_ARRAY(LRUBatches);
    }

    _PFDeallocateObject(self);
  }
}

- (unint64_t)count
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  return self->_count;
}

+ (void)initialize
{
  objc_opt_self();
  v2 = getprogname();
  if (v2)
  {
    v3 = v2;
    if (!strncmp("iBooks", v2, 6uLL))
    {
      _MergedGlobals_41 = 1;
    }

    if (!strncmp("Music", v3, 5uLL))
    {
      _MergedGlobals_41 = 1;
    }

    if (!strncmp("homed", v3, 5uLL))
    {
      byte_1EA8C7A0C = 1;
    }
  }
}

- (id)arrayFromObjectIDs
{
  newArrayFromObjectIDs = [(_PFBatchFaultingArray *)self newArrayFromObjectIDs];

  return newArrayFromObjectIDs;
}

- (id)newArrayFromObjectIDs
{
  v28 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  _objectsPointer = [(_PFArray *)self->_array _objectsPointer];
  count = self->_count;
  MEMORY[0x1EEE9AC00](_objectsPointer);
  v7 = &v26[-v6];
  v27 = count;
  if (count > 0x200)
  {
    v7 = NSAllocateScannedUncollectable();
    v8 = self->_count;
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    bzero(&v26[-v6], 8 * v5);
    v8 = count;
    if (!count)
    {
      goto LABEL_20;
    }
  }

  v9 = 0;
  do
  {
    batchSize = self->_batchSize;
    v11 = v9 / batchSize;
    v12 = ~(v9 / batchSize);
    v13 = batchSize + v9;
    if (v13 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v13;
    }

    if ((self->_entryFlags[v11 >> 5] >> v12))
    {
      v15 = v14 - v9;
      if (v14 > v9)
      {
        v16 = &v7[8 * v9];
        v17 = &_objectsPointer[v9];
        do
        {
          v18 = *v17++;
          *v16++ = [v18 objectID];
          --v15;
        }

        while (v15);
      }
    }

    else if (v14 > v9)
    {
      v19 = v14 - v9;
      v20 = &v7[8 * v9];
      v21 = &_objectsPointer[v9];
      do
      {
        v22 = *v21++;
        *v20++ = v22;
        --v19;
      }

      while (v19);
    }

    v8 = self->_count;
    v9 = v14;
  }

  while (v14 < v8);
LABEL_20:
  v23 = [[_PFArray alloc] initWithObjects:v7 count:self->_count andFlags:27];
  if (v27 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (_PFBatchFaultingArray)initWithPFArray:(id)array andRequest:(id)request andContext:(id)context
{
  v26.receiver = self;
  v26.super_class = _PFBatchFaultingArray;
  v8 = [(_PFBatchFaultingArray *)&v26 init];
  if (!v8)
  {
    return v8;
  }

  v8->_count = [array count];
  v9 = objc_alloc_init(NSCachingFetchRequest);
  v8->_request = v9;
  if (byte_1EA8C7A0C == 1)
  {
    [(NSCachingFetchRequest *)v9 _disableSQLStatementCaching];
  }

  [request _resolveEntityWithContext:context];
  -[NSFetchRequest setEntity:](v8->_request, "setEntity:", [request entity]);
  [(NSFetchRequest *)v8->_request setFetchBatchSize:0];
  [(NSFetchRequest *)v8->_request setIncludesPendingChanges:0];
  [(NSFetchRequest *)v8->_request setSortDescriptors:0];
  [(NSFetchRequest *)v8->_request setFetchOffset:0];
  [(NSFetchRequest *)v8->_request setHavingPredicate:0];
  [(NSFetchRequest *)v8->_request setPropertiesToGroupBy:0];
  -[NSFetchRequest setAffectedStores:](v8->_request, "setAffectedStores:", [request affectedStores]);
  -[NSFetchRequest setResultType:](v8->_request, "setResultType:", [request resultType]);
  -[NSFetchRequest setIncludesSubentities:](v8->_request, "setIncludesSubentities:", [request includesSubentities]);
  -[NSFetchRequest setIncludesPropertyValues:](v8->_request, "setIncludesPropertyValues:", [request includesPropertyValues]);
  -[NSFetchRequest setReturnsObjectsAsFaults:](v8->_request, "setReturnsObjectsAsFaults:", [request returnsObjectsAsFaults]);
  -[NSFetchRequest setRelationshipKeyPathsForPrefetching:](v8->_request, "setRelationshipKeyPathsForPrefetching:", [request relationshipKeyPathsForPrefetching]);
  -[NSFetchRequest setReturnsDistinctResults:](v8->_request, "setReturnsDistinctResults:", [request returnsDistinctResults]);
  -[NSFetchRequest setPropertiesToFetch:](v8->_request, "setPropertiesToFetch:", [request propertiesToFetch]);
  -[NSFetchRequest setShouldRefreshRefetchedObjects:](v8->_request, "setShouldRefreshRefetchedObjects:", [request shouldRefreshRefetchedObjects]);
  if ([request _disablePersistentStoreResultCaching])
  {
    [(NSFetchRequest *)v8->_request _setDisablePersistentStoreResultCaching:1];
  }

  v10 = [MEMORY[0x1E696ABC8] expressionForVariable:@"batch"];
  v11 = objc_alloc(MEMORY[0x1E696AB18]);
  v12 = [v11 initWithLeftExpression:objc_msgSend(MEMORY[0x1E696ABC8] rightExpression:"expressionForEvaluatedObject") modifier:v10 type:0 options:{10, 0}];
  [(NSFetchRequest *)v8->_request setPredicate:v12];

  v8->_moc = context;
  arrayCopy = array;
  v8->_array = arrayCopy;
  if (arrayCopy)
  {
    arrayCopy->_flags = (*&arrayCopy->_flags & 0xFFFFFFFFFFFFFFF9 | 2);
    array = v8->_array;
    if (array)
    {
      *&array->_flags &= ~4uLL;
    }
  }

  v8->_batchSize = [request fetchBatchSize];
  _fetchBatchLRUEntriesLimit = [request _fetchBatchLRUEntriesLimit];
  if (_fetchBatchLRUEntriesLimit)
  {
    v16 = _fetchBatchLRUEntriesLimit;
  }

  else
  {
    v16 = 4;
  }

  v8->_flags = (*&v8->_flags & 0xFFF001FF | ((v16 & 0x7FF) << 9));
  batchSize = v8->_batchSize;
  if (!batchSize)
  {
    batchSize = 27;
LABEL_18:
    v8->_batchSize = batchSize;
    goto LABEL_19;
  }

  if (batchSize * v16 <= 0xF)
  {
    if (v16 >= 2)
    {
      batchSize = 8;
    }

    else
    {
      batchSize = 16;
    }

    goto LABEL_18;
  }

LABEL_19:
  [(NSFetchRequest *)v8->_request setFetchLimit:batchSize];
  count = v8->_count;
  v19 = v8->_batchSize;
  v20 = count / v19;
  if (count % v19)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = v20;
  }

  v22 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v22 = malloc_default_zone();
  }

  v8->_entryFlags = malloc_type_zone_calloc(v22, v21, 4uLL, 0x100004052888210uLL);
  *&v8->_flags &= 0xFFFFFF00;
  v23 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v23 = malloc_default_zone();
  }

  v24 = malloc_type_zone_calloc(v23, v16, 4uLL, 0x100004052888210uLL);
  v8->_LRUBatches = v24;
  memset(v24, 255, 4 * v16);
  return v8;
}

- (BOOL)isEqualToArray:(id)array
{
  v59 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
    if (!array)
    {
      goto LABEL_50;
    }
  }

  else if (!array)
  {
LABEL_50:
    v33 = 0;
    goto LABEL_51;
  }

  count = self->_count;
  if ([array count] != count)
  {
    goto LABEL_50;
  }

  _objectsPointer = [(_PFArray *)self->_array _objectsPointer];
  self->_count;
  MEMORY[0x1EEE9AC00](_objectsPointer);
  v8 = &arrayCopy - v7;
  v47 = v9;
  v46 = v10;
  arrayCopy = array;
  if (v10 > 0x200)
  {
    v8 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&arrayCopy - v7, 8 * v6);
  }

  v11 = self->_count;
  if (v11)
  {
    v12 = 0;
    do
    {
      batchSize = self->_batchSize;
      v14 = v12 / batchSize;
      v15 = ~(v12 / batchSize);
      v16 = batchSize + v12;
      if (v16 >= v11)
      {
        v17 = v11;
      }

      else
      {
        v17 = v16;
      }

      if ((self->_entryFlags[v14 >> 5] >> v15))
      {
        v18 = v17 - v12;
        if (v17 > v12)
        {
          v19 = &v8[8 * v12];
          v20 = &_objectsPointer[v12];
          do
          {
            v21 = *v20++;
            *v19 = [v21 objectID];
            v19 += 8;
            --v18;
          }

          while (v18);
        }
      }

      else if (v17 > v12)
      {
        v22 = v17 - v12;
        v23 = &v8[8 * v12];
        v24 = &_objectsPointer[v12];
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v22;
        }

        while (v22);
      }

      v11 = self->_count;
      v12 = v17;
    }

    while (v17 < v11);
  }

  v26 = arrayCopy;
  if (objc_opt_respondsToSelector())
  {
    newArrayFromObjectIDs = [v26 newArrayFromObjectIDs];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v28 = [newArrayFromObjectIDs countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v54;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v54 != v31)
          {
            objc_enumerationMutation(newArrayFromObjectIDs);
          }

          if (![*(*(&v53 + 1) + 8 * i) isEqual:{*&v8[8 * v30], arrayCopy}])
          {
            v33 = 0;
            goto LABEL_43;
          }

          ++v30;
        }

        v29 = [newArrayFromObjectIDs countByEnumeratingWithState:&v53 objects:v58 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v33 = 1;
LABEL_43:
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v50;
      v38 = &selRef_numberWithUnsignedLong_;
      while (2)
      {
        v39 = 0;
        v40 = v38[9];
        do
        {
          if (*v50 != v37)
          {
            objc_enumerationMutation(v26);
          }

          v41 = *(*(&v49 + 1) + 8 * v39);
          v42 = *&v8[8 * v36];
          if (([v41 isEqual:{v42, arrayCopy}] & 1) == 0 && ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend(v42, "isEqual:", objc_msgSend(v41, "objectID"))))
          {
            v33 = 0;
            goto LABEL_46;
          }

          ++v39;
          ++v36;
        }

        while (v35 != v39);
        v35 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
        v33 = 1;
        v38 = &selRef_numberWithUnsignedLong_;
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v33 = 1;
    }
  }

LABEL_46:
  if (v46 >= 0x201)
  {
    NSZoneFree(0, v8);
  }

LABEL_51:
  v43 = *MEMORY[0x1E69E9840];
  return v33;
}

- (uint64_t)_newSubArrayInRange:(unint64_t)range asMutable:(int)mutable
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    if (_PF_Threading_Debugging_level)
    {
      self = _PFAssertSafeMultiThreadedAccess_impl(*(self + 32), sel__newSubArrayInRange_asMutable_);
    }

    v8 = a2 + range;
    v9 = a2;
    while (v9 < v8)
    {
      v10 = *(selfCopy + 48);
      v11 = v9 / v10;
      v12 = ~(v9 / v10);
      v9 += v10;
      if (v9 >= v8)
      {
        v9 = a2 + range;
      }

      if (((*(*(selfCopy + 24) + 4 * (v11 >> 5)) >> v12) & 1) == 0)
      {
        v13 = [_PFMutableProxyArray alloc];
        v14 = *MEMORY[0x1E69E9840];

        return [(_PFMutableProxyArray *)v13 initWithPFArray:selfCopy inRange:a2, range];
      }
    }

    MEMORY[0x1EEE9AC00](self);
    v18 = v22 - v17;
    if (range > 0x200)
    {
      v18 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v22 - v17, 8 * v16);
    }

    [selfCopy getObjects:v18 range:{a2, range}];
    if (mutable)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v18 count:range];
    }

    else
    {
      v19 = [[_PFArray alloc] initWithObjects:v18 count:range andFlags:59];
    }

    v20 = v19;
    if (range >= 0x201)
    {
      NSZoneFree(0, v18);
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (_PF_Threading_Debugging_level)
  {
    selfCopy = self;
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
    self = selfCopy;
  }

  return self;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  count = self->_count;

  return [(_PFBatchFaultingArray *)self _newSubArrayInRange:count asMutable:1];
}

- (void)_turnAllBatchesIntoFaults
{
  if (self)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(*(self + 32), sel__turnAllBatchesIntoFaults);
    }

    v2 = *(self + 12);
    v3 = *(self + 48);
    if (v2 % v3)
    {
      v4 = v2 / v3 + 1;
    }

    else
    {
      v4 = v2 / v3;
    }

    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        _releaseStaleBatch(self, i);
      }
    }

    v6 = *(self + 32);

    [(NSManagedObjectContext *)v6 _processReferenceQueue:?];
  }
}

- (void)_turnAllBatchesIntoObjects
{
  if (self)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(*(self + 32), sel__turnAllBatchesIntoObjects);
    }

    v2 = *(self + 12);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        _faultBatchAtIndex(self, i, 0);
      }
    }
  }
}

- (void)getObjects:(id *)objects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  count = self->_count;

  [(_PFBatchFaultingArray *)self getObjects:objects range:0, count];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  count = self->_count;
  v9 = location + length;
  if (location + length > count)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%lu)", _NSMethodExceptionProem(), v9 - 1, self->_count}];
  }

  if (length)
  {
    if (v9 >= count)
    {
      v10 = count;
    }

    else
    {
      v10 = location + length;
    }

    if (location < v10)
    {
      v11 = location;
      do
      {
        _faultBatchAtIndex(self, v11++, 0);
      }

      while (v10 != v11);
    }

    v12 = [(_PFArray *)self->_array _objectsPointer]+ 8 * location;

    memmove(objects, v12, 8 * length);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  if (!state->var0)
  {
    state->var2 = &self->_count;
  }

  state->var1 = objects;
  count = self->_count;
  _objectsPointer = [(_PFArray *)self->_array _objectsPointer];
  result = 0;
  var0 = state->var0;
  if (count && var0 < count)
  {
    result = 0;
    do
    {
      v13 = result;
      _faultBatchAtIndex(self, var0, 1);
      result = v13 + 1;
      objects[v13] = _objectsPointer[var0++];
    }

    while (var0 < count && result < count);
  }

  state->var0 = var0;
  return result;
}

- (void)enumerateObjectsAtIndexes:(id)indexes options:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  v23 = 0;
  v9 = [(_PFBatchFaultingArray *)self count];
  rangeCount = [indexes rangeCount];
  if (v9)
  {
    v11 = rangeCount;
    if (rangeCount)
    {
      if ((optionsCopy & 2) != 0)
      {
        do
        {
          if (!v11)
          {
            break;
          }

          v19 = [indexes rangeAtIndex:--v11];
          v21 = v19 + v20;
          while (v21 <= v9 && v21 > v19)
          {
            v22 = [(_PFBatchFaultingArray *)self retainedObjectAtIndex:?];
            (*(block + 2))(block, v22, v21, &v23);

            if (v23)
            {
              return;
            }
          }
        }

        while ((v23 & 1) == 0);
      }

      else
      {
        v12 = 0;
        do
        {
          v13 = [indexes rangeAtIndex:v12];
          v15 = v13;
          if (v9 >= v13 + v14)
          {
            v16 = v13 + v14;
          }

          else
          {
            v16 = v9;
          }

          if (v13 >= v16)
          {
            v18 = v23;
          }

          else
          {
            do
            {
              v17 = [(_PFBatchFaultingArray *)self retainedObjectAtIndex:v15];
              (*(block + 2))(block, v17, v15, &v23);

              v18 = v23;
              if (v23)
              {
                break;
              }

              ++v15;
            }

            while (v15 < v16);
          }

          if (v18)
          {
            break;
          }

          ++v12;
        }

        while (v12 != v11);
      }
    }
  }
}

- (id)retainedObjectAtIndex:(uint64_t)index
{
  if (!index)
  {
    return 0;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(*(index + 32), sel_retainedObjectAtIndex_);
  }

  if (*(index + 12) <= a2)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%u)", _NSMethodExceptionProem(), a2, *(index + 12)}];
    return 0;
  }

  _faultBatchAtIndex(index, a2, 1);
  v4 = *([*(index + 16) _objectsPointer] + 8 * a2);

  return v4;
}

- (unint64_t)indexOfObjectAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (-[_PFBatchFaultingArray count](self, "count") && [indexes count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68___PFBatchFaultingArray_indexOfObjectAtIndexes_options_passingTest___block_invoke;
    v11[3] = &unk_1E6EC1C18;
    v11[4] = test;
    v11[5] = &v12;
    [(_PFBatchFaultingArray *)self enumerateObjectsAtIndexes:indexes options:options usingBlock:v11];
  }

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)indexesOfObjectsAtIndexes:(id)indexes options:(unint64_t)options passingTest:(id)test
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  if (-[_PFBatchFaultingArray count](self, "count") && [indexes count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71___PFBatchFaultingArray_indexesOfObjectsAtIndexes_options_passingTest___block_invoke;
    v11[3] = &unk_1E6EC1C18;
    v11[4] = test;
    v11[5] = &v12;
    [(_PFBatchFaultingArray *)self enumerateObjectsAtIndexes:indexes options:options usingBlock:v11];
  }

  indexSet = v13[5];
  if (!indexSet)
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  _Block_object_dispose(&v12, 8);
  return indexSet;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, -[_PFBatchFaultingArray count](self, "count")}];
  [(_PFBatchFaultingArray *)self enumerateObjectsAtIndexes:v7 options:options usingBlock:block];
}

- (unint64_t)indexOfObjectWithOptions:(unint64_t)options passingTest:(id)test
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, -[_PFBatchFaultingArray count](self, "count")}];
  v8 = [(_PFBatchFaultingArray *)self indexOfObjectAtIndexes:v7 options:options passingTest:test];

  return v8;
}

- (id)indexesOfObjectsWithOptions:(unint64_t)options passingTest:(id)test
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, -[_PFBatchFaultingArray count](self, "count")}];
  v8 = [(_PFBatchFaultingArray *)self indexesOfObjectsAtIndexes:v7 options:options passingTest:test];

  return v8;
}

- (id)sortedArrayUsingFunction:(void *)function context:(void *)context
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  [(_PFBatchFaultingArray *)self _turnAllBatchesIntoObjects];
  v8.receiver = self;
  v8.super_class = _PFBatchFaultingArray;
  return [(_PFBatchFaultingArray *)&v8 sortedArrayUsingFunction:function context:context];
}

- (id)sortedArrayUsingFunction:(void *)function context:(void *)context hint:(id)hint
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  [(_PFBatchFaultingArray *)self _turnAllBatchesIntoObjects];
  v10.receiver = self;
  v10.super_class = _PFBatchFaultingArray;
  return [(_PFBatchFaultingArray *)&v10 sortedArrayUsingFunction:function context:context hint:hint];
}

- (id)sortedArrayUsingSelector:(SEL)selector
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  [(_PFBatchFaultingArray *)self _turnAllBatchesIntoObjects];
  v6.receiver = self;
  v6.super_class = _PFBatchFaultingArray;
  return [(_PFBatchFaultingArray *)&v6 sortedArrayUsingSelector:selector];
}

- (id)sortedArrayUsingComparator:(id)comparator
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  [(_PFBatchFaultingArray *)self _turnAllBatchesIntoObjects];
  v6.receiver = self;
  v6.super_class = _PFBatchFaultingArray;
  return [(_PFBatchFaultingArray *)&v6 sortedArrayUsingComparator:comparator];
}

- (id)sortedArrayWithOptions:(unint64_t)options usingComparator:(id)comparator
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  [(_PFBatchFaultingArray *)self _turnAllBatchesIntoObjects];
  v8.receiver = self;
  v8.super_class = _PFBatchFaultingArray;
  return [(_PFBatchFaultingArray *)&v8 sortedArrayWithOptions:options usingComparator:comparator];
}

- (id)filteredArrayUsingPredicate:(id)predicate
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  [(_PFBatchFaultingArray *)self _turnAllBatchesIntoObjects];
  v6.receiver = self;
  v6.super_class = _PFBatchFaultingArray;
  return [(_PFBatchFaultingArray *)&v6 filteredArrayUsingPredicate:predicate];
}

- (id)sortedArrayUsingDescriptors:(id)descriptors
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  [(_PFBatchFaultingArray *)self _turnAllBatchesIntoObjects];
  v6.receiver = self;
  v6.super_class = _PFBatchFaultingArray;
  return [(_PFBatchFaultingArray *)&v6 sortedArrayUsingDescriptors:descriptors];
}

- (id)valueForKey:(id)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  if (![key isEqual:@"objectID"] || -[NSFetchRequest resultType](self->_request, "resultType") || (v5 = -[_PFBatchFaultingArray arrayFromObjectIDs](self, "arrayFromObjectIDs"), objc_msgSend(v5, "count") != self->_count))
  {
    [(_PFBatchFaultingArray *)self _turnAllBatchesIntoObjects];
    v7.receiver = self;
    v7.super_class = _PFBatchFaultingArray;
    return [(_PFBatchFaultingArray *)&v7 valueForKey:key];
  }

  return v5;
}

- (id)valueForKeyPath:(id)path
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  [(_PFBatchFaultingArray *)self _turnAllBatchesIntoObjects];
  v6.receiver = self;
  v6.super_class = _PFBatchFaultingArray;
  return [(_PFBatchFaultingArray *)&v6 valueForKeyPath:path];
}

- (id)objectsAtIndexes:(id)indexes
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  v5 = [indexes count];
  if (self->_count)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = v5;
    if (v5 >= 0x201)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5;
    }

    v10 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = v19 - v10;
    if (v5 > 0x200)
    {
      v11 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v19 - v10, 8 * v5);
    }

    if ([indexes rangeCount])
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = [indexes rangeAtIndex:v12];
        v16 = v15;
        [(_PFBatchFaultingArray *)self getObjects:&v11[8 * v13] range:v14, v15];
        v13 += v16;
        ++v12;
      }

      while (v12 < [indexes rangeCount]);
    }

    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:v8];
    if (v8 >= 0x201)
    {
      NSZoneFree(0, v11);
    }
  }

  if (v7)
  {
    result = v7;
  }

  else
  {
    result = NSArray_EmptyArray;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  if (self->_count <= subscript)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%lu) beyond bounds (%u)", _NSMethodExceptionProem(), subscript, self->_count}];
    return 0;
  }

  else
  {
    _faultBatchAtIndex(self, subscript, 1);
    subscript = [(_PFArray *)self->_array _objectsPointer][8 * subscript];

    return subscript;
  }
}

- (unint64_t)indexOfObject:(id)object
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  count = self->_count;

  return [(_PFBatchFaultingArray *)self indexOfObjectIdenticalTo:object inRange:0, count];
}

- (unint64_t)indexOfObject:(id)object inRange:(_NSRange)range
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  count = self->_count;

  return [(_PFBatchFaultingArray *)self indexOfObjectIdenticalTo:object inRange:0, count];
}

- (unint64_t)indexOfObjectIdenticalTo:(id)to
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  count = self->_count;

  return [(_PFBatchFaultingArray *)self indexOfObjectIdenticalTo:to inRange:0, count];
}

- (unint64_t)indexOfObjectIdenticalTo:(id)to inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  objectID = [to objectID];
  v9 = [objectID methodForSelector:sel_isEqual_];
  _objectsPointer = [(_PFArray *)selfCopy->_array _objectsPointer];
  v11 = location + length;
  if (location + length <= location)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = _objectsPointer;
  v23 = selfCopy;
  while (1)
  {
    batchSize = selfCopy->_batchSize;
    v14 = location / batchSize;
    v15 = ~(location / batchSize);
    v16 = batchSize + location;
    v17 = selfCopy;
    v18 = v16 >= v11 ? v11 : v16;
    if (((v17->_entryFlags[v14 >> 5] >> v15) & 1) == 0)
    {
      break;
    }

    if (location < v18)
    {
      v19 = location;
      do
      {
        v20 = *(v12 + 8 * v19);
        v21 = v20 == to || objectID == v20[5];
        if (v21 || (v9(objectID, sel_isEqual_) & 1) != 0)
        {
          return v19;
        }
      }

      while (v18 != ++v19);
    }

LABEL_24:
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    location = v18;
    selfCopy = v23;
    if (v16 >= v11)
    {
      return v19;
    }
  }

  if (location >= v18)
  {
    goto LABEL_24;
  }

  v19 = location;
  while (objectID != *(v12 + 8 * v19) && (v9(objectID, sel_isEqual_) & 1) == 0)
  {
    if (v18 == ++v19)
    {
      goto LABEL_24;
    }
  }

  return v19;
}

- (unint64_t)indexOfManagedObjectForObjectID:(id)d
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
    if (!d)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (!d)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [d methodForSelector:sel_isEqual_];
  _objectsPointer = [(_PFArray *)self->_array _objectsPointer];
  count = self->_count;
  if (!count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = _objectsPointer;
  v9 = 0;
  v10 = 24;
  while (1)
  {
    batchSize = self->_batchSize;
    v12 = batchSize + v9;
    v13 = batchSize + v9 >= count ? count : v12;
    v14 = v10;
    if ((((*(&self->super.super.isa + v10))[(v9 / batchSize) >> 5] >> ~(v9 / batchSize)) & 1) == 0)
    {
      break;
    }

    if (v9 < v13)
    {
      v15 = v9;
      while (*(v8[v15] + 5) != d && (v5(d, sel_isEqual_) & 1) == 0)
      {
        if (v13 == ++v15)
        {
          goto LABEL_20;
        }
      }

      return v15;
    }

LABEL_20:
    v9 = v13;
    v10 = v14;
    if (v12 >= count)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v9 >= v13)
  {
    goto LABEL_20;
  }

  v15 = v9;
  while (v8[v15] != d && (v5(d, sel_isEqual_) & 1) == 0)
  {
    if (v13 == ++v15)
    {
      goto LABEL_20;
    }
  }

  return v15;
}

- (id)managedObjectIDAtIndex:(unint64_t)index
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  result = [(_PFArray *)self->_array _objectsPointer][8 * index];
  if ((self->_entryFlags[(index / self->_batchSize) >> 5] >> ~(index / self->_batchSize)))
  {
    return *(result + 5);
  }

  return result;
}

- (id)subarrayWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
    if (location)
    {
      goto LABEL_6;
    }
  }

  else if (range.location)
  {
    goto LABEL_6;
  }

  if (length == self->_count)
  {
    selfCopy = self;
    goto LABEL_7;
  }

LABEL_6:
  selfCopy = [(_PFBatchFaultingArray *)self _newSubArrayInRange:length asMutable:0];
LABEL_7:

  return selfCopy;
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"%@ (%p) of %lu items for request %@", NSStringFromClass(v5), self, -[_PFArray count](self->_array, "count"), self->_request];
  objc_autoreleasePoolPop(v3);

  return v6;
}

- (id)objectAtIndex:(unint64_t)index
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_moc, a2);
  }

  v5 = [(_PFBatchFaultingArray *)self retainedObjectAtIndex:index];

  return v5;
}

@end
@interface PHFetchResultChangeDetails
+ (PHFetchResultChangeDetails)changeDetailsFromFetchResult:(PHFetchResult *)fromResult toFetchResult:(PHFetchResult *)toResult changedObjects:(NSArray *)changedObjects;
+ (id)_identifiersForPHObjects:(id)objects;
- (BOOL)hasAnyChanges;
- (BOOL)hasDiffs;
- (NSArray)changedObjects;
- (NSArray)insertedObjects;
- (NSArray)removedObjects;
- (NSIndexSet)changedIndexes;
- (NSIndexSet)insertedIndexes;
- (NSIndexSet)removedIndexes;
- (PHFetchResult)fetchResultAfterChanges;
- (PHFetchResultChangeDetails)initWithFetchResult:(id)result currentFetchResult:(id)fetchResult changedIdentifiers:(id)identifiers unknownMergeEvent:(BOOL)event;
- (PHFetchResultChangeDetails)initWithFetchResult:(id)result currentFetchResult:(id)fetchResult sortedChangedIdentifiers:(id)identifiers unknownMergeEvent:(BOOL)event;
- (PHFetchResultChangeDetails)initWithManualFetchResultAfterChanges:(id)changes;
- (id)_addAdditionalIndexesToChanges:(id)changes withPreviousIdentifiers:(id)identifiers currentIdentifiers:(id)currentIdentifiers;
- (id)description;
- (unint64_t)snapshotIndexForContainedObject:(id)object;
- (void)calculateDiffs;
- (void)calculateDiffsAndAccumulateInsertedCount:(unint64_t *)count updatedCount:(unint64_t *)updatedCount deletedCount:(unint64_t *)deletedCount;
- (void)dealloc;
- (void)enumerateMovesWithBlock:(void *)handler;
@end

@implementation PHFetchResultChangeDetails

- (void)calculateDiffs
{
  if (!self->_skipIncrementalChanges && !self->_currentObjects)
  {
    fetchedObjects = [(PHFetchResult *)self->_fetchResultAfterChanges fetchedObjects];
    currentObjects = self->_currentObjects;
    self->_currentObjects = fetchedObjects;

    v5 = [PHFetchResultChangeDetails _identifiersForPHObjects:self->_previousObjects];
    v6 = [PHFetchResultChangeDetails _identifiersForPHObjects:self->_currentObjects];
    v7 = [objc_opt_class() pointerComparableIdentifiersFromIdentifiers:v5];
    v8 = [objc_opt_class() pointerComparableIdentifiersFromIdentifiers:v6];
    PLDiffArrays();
    v14 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    objc_storeStrong(&self->_removedIndexes, 0);
    objc_storeStrong(&self->_insertedIndexes, 0);
    objc_storeStrong(&self->_movedIndexes, 0);
    self->_movedFromIndexes = 0;
    v12 = [(PHFetchResultChangeDetails *)self _addAdditionalIndexesToChanges:v11 withPreviousIdentifiers:v5 currentIdentifiers:v6];
    changedIndexes = self->_changedIndexes;
    self->_changedIndexes = v12;
  }
}

- (NSIndexSet)changedIndexes
{
  [(PHFetchResultChangeDetails *)self calculateDiffs];
  changedIndexes = self->_changedIndexes;

  return changedIndexes;
}

- (NSIndexSet)removedIndexes
{
  [(PHFetchResultChangeDetails *)self calculateDiffs];
  removedIndexes = self->_removedIndexes;

  return removedIndexes;
}

- (NSIndexSet)insertedIndexes
{
  [(PHFetchResultChangeDetails *)self calculateDiffs];
  insertedIndexes = self->_insertedIndexes;

  return insertedIndexes;
}

- (void)dealloc
{
  movedFromIndexes = self->_movedFromIndexes;
  if (movedFromIndexes)
  {
    CFRelease(movedFromIndexes);
    self->_movedFromIndexes = 0;
  }

  v4.receiver = self;
  v4.super_class = PHFetchResultChangeDetails;
  [(PHFetchResultChangeDetails *)&v4 dealloc];
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = PHFetchResultChangeDetails;
  v3 = [(PHFetchResultChangeDetails *)&v12 description];
  fetchResultBeforeChanges = [(PHFetchResultChangeDetails *)self fetchResultBeforeChanges];
  fetchResultAfterChanges = [(PHFetchResultChangeDetails *)self fetchResultAfterChanges];
  hasIncrementalChanges = [(PHFetchResultChangeDetails *)self hasIncrementalChanges];
  removedIndexes = [(PHFetchResultChangeDetails *)self removedIndexes];
  insertedIndexes = [(PHFetchResultChangeDetails *)self insertedIndexes];
  changedIndexes = [(PHFetchResultChangeDetails *)self changedIndexes];
  v10 = [v3 stringByAppendingFormat:@" before=%@, after=%@, hasIncremental=%d deleted=%@, inserted=%@, changed=%@, hasMoves=%d", fetchResultBeforeChanges, fetchResultAfterChanges, hasIncrementalChanges, removedIndexes, insertedIndexes, changedIndexes, -[PHFetchResultChangeDetails hasMoves](self, "hasMoves")];

  return v10;
}

- (BOOL)hasDiffs
{
  if ([(PHFetchResultChangeDetails *)self shouldReload]|| [(PHFetchResultChangeDetails *)self hasMoves])
  {
    return 1;
  }

  insertedIndexes = [(PHFetchResultChangeDetails *)self insertedIndexes];
  if (insertedIndexes)
  {
    v3 = 1;
  }

  else
  {
    removedIndexes = [(PHFetchResultChangeDetails *)self removedIndexes];
    if (removedIndexes)
    {
      v3 = 1;
    }

    else
    {
      changedIndexes = [(PHFetchResultChangeDetails *)self changedIndexes];
      v3 = changedIndexes != 0;
    }
  }

  return v3;
}

- (void)calculateDiffsAndAccumulateInsertedCount:(unint64_t *)count updatedCount:(unint64_t *)updatedCount deletedCount:(unint64_t *)deletedCount
{
  [(PHFetchResultChangeDetails *)self calculateDiffs];
  *count += [(NSIndexSet *)self->_insertedIndexes count];
  *updatedCount += [(NSIndexSet *)self->_changedIndexes count];
  *deletedCount += [(NSIndexSet *)self->_removedIndexes count];
}

- (id)_addAdditionalIndexesToChanges:(id)changes withPreviousIdentifiers:(id)identifiers currentIdentifiers:(id)currentIdentifiers
{
  v25 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  identifiersCopy = identifiers;
  currentIdentifiersCopy = currentIdentifiers;
  if ([changesCopy count])
  {
    indexSet = [changesCopy mutableCopy];
  }

  else
  {
    indexSet = 0;
  }

  v12 = [(PHFetchResult *)self->_fetchResultAfterChanges additionalChangedIdentifiersFromPreviousIdentifiers:identifiersCopy currentIdentifiers:currentIdentifiersCopy inFetchResultBeforeChanges:self->_fetchResultBeforeChanges];
  if ([v12 count])
  {
    if (!indexSet)
    {
      indexSet = [MEMORY[0x1E696AD50] indexSet];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [currentIdentifiersCopy indexOfObject:{*(*(&v20 + 1) + 8 * i), v20}];
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [indexSet addIndex:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  return indexSet;
}

- (unint64_t)snapshotIndexForContainedObject:(id)object
{
  fetchResultBeforeChanges = self->_fetchResultBeforeChanges;
  if (fetchResultBeforeChanges)
  {
    return [(PHFetchResult *)fetchResultBeforeChanges indexOfObject:object];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)enumerateMovesWithBlock:(void *)handler
{
  v4 = handler;
  [(PHFetchResultChangeDetails *)self calculateDiffs];
  movedIndexes = self->_movedIndexes;
  if (movedIndexes)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__PHFetchResultChangeDetails_enumerateMovesWithBlock___block_invoke;
    v6[3] = &unk_1E75AA388;
    v6[4] = self;
    v8 = v9;
    v7 = v4;
    [(NSIndexSet *)movedIndexes enumerateIndexesUsingBlock:v6];

    _Block_object_dispose(v9, 8);
  }
}

uint64_t __54__PHFetchResultChangeDetails_enumerateMovesWithBlock___block_invoke(void *a1)
{
  v2 = *(a1[4] + 64);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  CFArrayGetValueAtIndex(v2, v4);
  v5 = *(a1[5] + 16);

  return v5();
}

- (NSArray)changedObjects
{
  [(PHFetchResultChangeDetails *)self calculateDiffs];
  if (self->_changedIndexes)
  {
    v3 = [(NSArray *)self->_currentObjects objectsAtIndexes:?];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (NSArray)insertedObjects
{
  [(PHFetchResultChangeDetails *)self calculateDiffs];
  if (self->_insertedIndexes)
  {
    v3 = [(NSArray *)self->_currentObjects objectsAtIndexes:?];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (NSArray)removedObjects
{
  [(PHFetchResultChangeDetails *)self calculateDiffs];
  if (self->_removedIndexes)
  {
    v3 = [(NSArray *)self->_previousObjects objectsAtIndexes:?];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (PHFetchResult)fetchResultAfterChanges
{
  fetchResultAfterChanges = self->_fetchResultAfterChanges;
  if (!fetchResultAfterChanges)
  {
    v4 = [(PHFetchResult *)self->_fetchResultBeforeChanges fetchResultWithChangeHandlingValue:0];
    v5 = self->_fetchResultAfterChanges;
    self->_fetchResultAfterChanges = v4;

    fetchResultAfterChanges = self->_fetchResultAfterChanges;
  }

  [(PHFetchResult *)fetchResultAfterChanges updateRegistrationForChangeNotificationDeltas];
  v6 = self->_fetchResultAfterChanges;

  return v6;
}

- (BOOL)hasAnyChanges
{
  if (![(PHFetchResultChangeDetails *)self hasIncrementalChanges])
  {
    return 1;
  }

  removedIndexes = [(PHFetchResultChangeDetails *)self removedIndexes];
  v4 = [removedIndexes count];

  if (v4)
  {
    return 1;
  }

  insertedIndexes = [(PHFetchResultChangeDetails *)self insertedIndexes];
  v6 = [insertedIndexes count];

  if (v6)
  {
    return 1;
  }

  changedIndexes = [(PHFetchResultChangeDetails *)self changedIndexes];
  v8 = [changedIndexes count];

  if (v8)
  {
    return 1;
  }

  return [(PHFetchResultChangeDetails *)self hasMoves];
}

- (PHFetchResultChangeDetails)initWithManualFetchResultAfterChanges:(id)changes
{
  changesCopy = changes;
  v11.receiver = self;
  v11.super_class = PHFetchResultChangeDetails;
  v6 = [(PHFetchResultChangeDetails *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResultAfterChanges, changes);
    fetchedObjects = [changesCopy fetchedObjects];
    previousObjects = v7->_previousObjects;
    v7->_previousObjects = fetchedObjects;

    v7->_skipIncrementalChanges = 1;
  }

  return v7;
}

- (PHFetchResultChangeDetails)initWithFetchResult:(id)result currentFetchResult:(id)fetchResult sortedChangedIdentifiers:(id)identifiers unknownMergeEvent:(BOOL)event
{
  resultCopy = result;
  fetchResultCopy = fetchResult;
  identifiersCopy = identifiers;
  v19.receiver = self;
  v19.super_class = PHFetchResultChangeDetails;
  v14 = [(PHFetchResultChangeDetails *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fetchResultBeforeChanges, result);
    objc_storeStrong(&v15->_fetchResultAfterChanges, fetchResult);
    fetchedObjects = [resultCopy fetchedObjects];
    previousObjects = v15->_previousObjects;
    v15->_previousObjects = fetchedObjects;

    objc_storeStrong(&v15->_sortedChangedIdentifiers, identifiers);
    v15->_skipIncrementalChanges = event;
  }

  return v15;
}

- (PHFetchResultChangeDetails)initWithFetchResult:(id)result currentFetchResult:(id)fetchResult changedIdentifiers:(id)identifiers unknownMergeEvent:(BOOL)event
{
  eventCopy = event;
  v10 = MEMORY[0x1E69BE808];
  identifiersCopy = identifiers;
  fetchResultCopy = fetchResult;
  resultCopy = result;
  v14 = [[v10 alloc] initWithChangedObjects:identifiersCopy];

  v15 = [(PHFetchResultChangeDetails *)self initWithFetchResult:resultCopy currentFetchResult:fetchResultCopy sortedChangedIdentifiers:v14 unknownMergeEvent:eventCopy];
  return v15;
}

+ (id)_identifiersForPHObjects:(id)objects
{
  v17 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    oids = [objectsCopy oids];
  }

  else
  {
    oids = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = objectsCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          identifier = [*(*(&v12 + 1) + 8 * i) identifier];
          [oids addObject:identifier];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return oids;
}

+ (PHFetchResultChangeDetails)changeDetailsFromFetchResult:(PHFetchResult *)fromResult toFetchResult:(PHFetchResult *)toResult changedObjects:(NSArray *)changedObjects
{
  v5 = 0;
  if (fromResult && toResult)
  {
    v8 = toResult;
    v9 = fromResult;
    v10 = [PHFetchResultChangeDetails _identifiersForPHObjects:changedObjects];
    v5 = [[PHFetchResultChangeDetails alloc] initWithFetchResult:v9 currentFetchResult:v8 changedIdentifiers:v10 unknownMergeEvent:0];

    [(PHFetchResultChangeDetails *)v5 calculateDiffs];
  }

  return v5;
}

@end
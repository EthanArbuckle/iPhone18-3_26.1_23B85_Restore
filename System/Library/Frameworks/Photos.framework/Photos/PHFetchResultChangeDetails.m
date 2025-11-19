@interface PHFetchResultChangeDetails
+ (PHFetchResultChangeDetails)changeDetailsFromFetchResult:(PHFetchResult *)fromResult toFetchResult:(PHFetchResult *)toResult changedObjects:(NSArray *)changedObjects;
+ (id)_identifiersForPHObjects:(id)a3;
- (BOOL)hasAnyChanges;
- (BOOL)hasDiffs;
- (NSArray)changedObjects;
- (NSArray)insertedObjects;
- (NSArray)removedObjects;
- (NSIndexSet)changedIndexes;
- (NSIndexSet)insertedIndexes;
- (NSIndexSet)removedIndexes;
- (PHFetchResult)fetchResultAfterChanges;
- (PHFetchResultChangeDetails)initWithFetchResult:(id)a3 currentFetchResult:(id)a4 changedIdentifiers:(id)a5 unknownMergeEvent:(BOOL)a6;
- (PHFetchResultChangeDetails)initWithFetchResult:(id)a3 currentFetchResult:(id)a4 sortedChangedIdentifiers:(id)a5 unknownMergeEvent:(BOOL)a6;
- (PHFetchResultChangeDetails)initWithManualFetchResultAfterChanges:(id)a3;
- (id)_addAdditionalIndexesToChanges:(id)a3 withPreviousIdentifiers:(id)a4 currentIdentifiers:(id)a5;
- (id)description;
- (unint64_t)snapshotIndexForContainedObject:(id)a3;
- (void)calculateDiffs;
- (void)calculateDiffsAndAccumulateInsertedCount:(unint64_t *)a3 updatedCount:(unint64_t *)a4 deletedCount:(unint64_t *)a5;
- (void)dealloc;
- (void)enumerateMovesWithBlock:(void *)handler;
@end

@implementation PHFetchResultChangeDetails

- (void)calculateDiffs
{
  if (!self->_skipIncrementalChanges && !self->_currentObjects)
  {
    v3 = [(PHFetchResult *)self->_fetchResultAfterChanges fetchedObjects];
    currentObjects = self->_currentObjects;
    self->_currentObjects = v3;

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
  v4 = [(PHFetchResultChangeDetails *)self fetchResultBeforeChanges];
  v5 = [(PHFetchResultChangeDetails *)self fetchResultAfterChanges];
  v6 = [(PHFetchResultChangeDetails *)self hasIncrementalChanges];
  v7 = [(PHFetchResultChangeDetails *)self removedIndexes];
  v8 = [(PHFetchResultChangeDetails *)self insertedIndexes];
  v9 = [(PHFetchResultChangeDetails *)self changedIndexes];
  v10 = [v3 stringByAppendingFormat:@" before=%@, after=%@, hasIncremental=%d deleted=%@, inserted=%@, changed=%@, hasMoves=%d", v4, v5, v6, v7, v8, v9, -[PHFetchResultChangeDetails hasMoves](self, "hasMoves")];

  return v10;
}

- (BOOL)hasDiffs
{
  if ([(PHFetchResultChangeDetails *)self shouldReload]|| [(PHFetchResultChangeDetails *)self hasMoves])
  {
    return 1;
  }

  v4 = [(PHFetchResultChangeDetails *)self insertedIndexes];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(PHFetchResultChangeDetails *)self removedIndexes];
    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v6 = [(PHFetchResultChangeDetails *)self changedIndexes];
      v3 = v6 != 0;
    }
  }

  return v3;
}

- (void)calculateDiffsAndAccumulateInsertedCount:(unint64_t *)a3 updatedCount:(unint64_t *)a4 deletedCount:(unint64_t *)a5
{
  [(PHFetchResultChangeDetails *)self calculateDiffs];
  *a3 += [(NSIndexSet *)self->_insertedIndexes count];
  *a4 += [(NSIndexSet *)self->_changedIndexes count];
  *a5 += [(NSIndexSet *)self->_removedIndexes count];
}

- (id)_addAdditionalIndexesToChanges:(id)a3 withPreviousIdentifiers:(id)a4 currentIdentifiers:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [v8 mutableCopy];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PHFetchResult *)self->_fetchResultAfterChanges additionalChangedIdentifiersFromPreviousIdentifiers:v9 currentIdentifiers:v10 inFetchResultBeforeChanges:self->_fetchResultBeforeChanges];
  if ([v12 count])
  {
    if (!v11)
    {
      v11 = [MEMORY[0x1E696AD50] indexSet];
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

          v18 = [v10 indexOfObject:{*(*(&v20 + 1) + 8 * i), v20}];
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v11 addIndex:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  return v11;
}

- (unint64_t)snapshotIndexForContainedObject:(id)a3
{
  fetchResultBeforeChanges = self->_fetchResultBeforeChanges;
  if (fetchResultBeforeChanges)
  {
    return [(PHFetchResult *)fetchResultBeforeChanges indexOfObject:a3];
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

  v3 = [(PHFetchResultChangeDetails *)self removedIndexes];
  v4 = [v3 count];

  if (v4)
  {
    return 1;
  }

  v5 = [(PHFetchResultChangeDetails *)self insertedIndexes];
  v6 = [v5 count];

  if (v6)
  {
    return 1;
  }

  v7 = [(PHFetchResultChangeDetails *)self changedIndexes];
  v8 = [v7 count];

  if (v8)
  {
    return 1;
  }

  return [(PHFetchResultChangeDetails *)self hasMoves];
}

- (PHFetchResultChangeDetails)initWithManualFetchResultAfterChanges:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PHFetchResultChangeDetails;
  v6 = [(PHFetchResultChangeDetails *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fetchResultAfterChanges, a3);
    v8 = [v5 fetchedObjects];
    previousObjects = v7->_previousObjects;
    v7->_previousObjects = v8;

    v7->_skipIncrementalChanges = 1;
  }

  return v7;
}

- (PHFetchResultChangeDetails)initWithFetchResult:(id)a3 currentFetchResult:(id)a4 sortedChangedIdentifiers:(id)a5 unknownMergeEvent:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = PHFetchResultChangeDetails;
  v14 = [(PHFetchResultChangeDetails *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fetchResultBeforeChanges, a3);
    objc_storeStrong(&v15->_fetchResultAfterChanges, a4);
    v16 = [v11 fetchedObjects];
    previousObjects = v15->_previousObjects;
    v15->_previousObjects = v16;

    objc_storeStrong(&v15->_sortedChangedIdentifiers, a5);
    v15->_skipIncrementalChanges = a6;
  }

  return v15;
}

- (PHFetchResultChangeDetails)initWithFetchResult:(id)a3 currentFetchResult:(id)a4 changedIdentifiers:(id)a5 unknownMergeEvent:(BOOL)a6
{
  v6 = a6;
  v10 = MEMORY[0x1E69BE808];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[v10 alloc] initWithChangedObjects:v11];

  v15 = [(PHFetchResultChangeDetails *)self initWithFetchResult:v13 currentFetchResult:v12 sortedChangedIdentifiers:v14 unknownMergeEvent:v6];
  return v15;
}

+ (id)_identifiersForPHObjects:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 oids];
  }

  else
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
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

          v10 = [*(*(&v12 + 1) + 8 * i) identifier];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
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
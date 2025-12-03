@interface MPChangeDetails
+ (MPChangeDetails)changeDetailsWithPreviousCount:(int64_t)count finalCount:(int64_t)finalCount isEqualBlock:(id)block isUpdatedBlock:(id)updatedBlock;
+ (MPChangeDetails)empty;
- (BOOL)isValidForPreviousCount:(int64_t)count finalCount:(int64_t)finalCount reason:(id *)reason;
- (MPChangeDetails)initWithBlock:(id)block;
- (NSArray)updatedItemIndexPaths;
- (NSIndexSet)updatedSections;
- (id)debugDescription;
- (id)description;
- (void)appendItemMoveFromIndexPath:(id)path toIndexPath:(id)indexPath updated:(BOOL)updated;
- (void)appendItemUpdateForPreviousIndexPath:(id)path finalIndexPath:(id)indexPath;
- (void)appendSectionMoveFromIndex:(int64_t)index toIndex:(int64_t)toIndex updated:(BOOL)updated;
- (void)appendSectionUpdateForPreviousIndex:(int64_t)index finalIndex:(int64_t)finalIndex;
- (void)applyUIKitWorkarounds;
- (void)enumerateItemMovesUsingBlock:(id)block;
- (void)enumerateItemMovesWithBlock:(id)block;
- (void)enumerateItemUpdatesUsingBlock:(id)block;
- (void)enumerateMovesWithBlock:(id)block;
- (void)enumerateSectionMovesUsingBlock:(id)block;
- (void)enumerateSectionMovesWithBlock:(id)block;
- (void)enumerateSectionUpdatesUsingBlock:(id)block;
- (void)removeItemMoveFromIndexPath:(id)path;
- (void)removeItemUpdateForPreviousIndexPath:(id)path;
- (void)removeSectionMoveFromIndex:(int64_t)index;
- (void)removeSectionUpdateForPreviousIndex:(int64_t)index;
- (void)setUpdatedItemIndexPaths:(id)paths;
- (void)setUpdatedSections:(id)sections;
@end

@implementation MPChangeDetails

- (BOOL)isValidForPreviousCount:(int64_t)count finalCount:(int64_t)finalCount reason:(id *)reason
{
  if (!self->_isFlatCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:518 description:@"-isValidForPreviousCount:finalCount:reason: can only be used with a flat collection change details"];
  }

  if ([(NSIndexSet *)self->_deletedSections count]&& [(NSIndexSet *)self->_deletedSections lastIndex]>= count)
  {
    if (reason)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[INVALID CHANGE DETAILS] deletedSections.lastIndex out of bounds: %ld/%ld", -[NSIndexSet lastIndex](self->_deletedSections, "lastIndex"), count];
LABEL_15:
      *reason = v10 = 0;
      return v10 & 1;
    }

LABEL_16:
    v10 = 0;
    return v10 & 1;
  }

  if ([(NSIndexSet *)self->_insertedSections count]&& [(NSIndexSet *)self->_insertedSections lastIndex]>= finalCount)
  {
    if (reason)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"[INVALID CHANGE DETAILS] insertedSections.lastIndex out of bounds: %ld/%ld", -[NSIndexSet lastIndex](self->_insertedSections, "lastIndex"), finalCount];
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__45828;
  v19 = __Block_byref_object_dispose__45829;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__MPChangeDetails_isValidForPreviousCount_finalCount_reason___block_invoke;
  v14[3] = &unk_1E767FA08;
  v14[4] = &v21;
  v14[5] = &v15;
  v14[6] = count;
  v14[7] = finalCount;
  [(MPChangeDetails *)self enumerateSectionMovesUsingBlock:v14];
  if (reason)
  {
    v9 = v16[5];
    if (v9)
    {
      *reason = v9;
    }
  }

  v10 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v10 & 1;
}

void __61__MPChangeDetails_isValidForPreviousCount_finalCount_reason___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v5 = a1[6];
    if (v5 <= a2)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[INVALID CHANGE DETAILS] move.fromIndex out of bounds: %ld/%ld", a2, v5];
      v7 = *(a1[5] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      *(*(a1[4] + 8) + 24) = 0;
    }

    v9 = a1[7];
    if (v9 <= a3)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[INVALID CHANGE DETAILS] move.toIndex out of bounds: %ld/%ld", a3, v9];
      v11 = *(a1[5] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *(*(a1[4] + 8) + 24) = 0;
    }
  }
}

- (void)applyUIKitWorkarounds
{
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:427 description:@"Attempt to mutate immutable change details"];
  }

  v3 = [(NSIndexSet *)self->_deletedSections mutableCopy];
  v4 = [(NSIndexSet *)self->_insertedSections mutableCopy];
  v5 = [(NSMutableDictionary *)self->_sectionMoves copy];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke;
  v32[3] = &unk_1E767F8F0;
  v32[4] = self;
  v6 = v3;
  v33 = v6;
  v7 = v4;
  v34 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v32];
  [(NSMutableIndexSet *)self->_updatedSectionMoveFromIndexes removeAllIndexes];
  if ([(NSMutableDictionary *)self->_sectionMoves count])
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_2;
    v29[3] = &unk_1E767F968;
    v29[4] = self;
    v30 = v6;
    v31 = v7;
    [(MPChangeDetails *)self enumerateSectionUpdatesUsingBlock:v29];
    [(NSMutableDictionary *)self->_sectionUpdates removeAllObjects];
  }

  objc_storeStrong(&self->_deletedSections, v3);
  objc_storeStrong(&self->_insertedSections, v4);
  v8 = [(NSArray *)self->_deletedItemIndexPaths mutableCopy];
  v9 = [(NSArray *)self->_insertedItemIndexPaths mutableCopy];
  v10 = [(NSMutableDictionary *)self->_itemMoves copy];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_6;
  v26[3] = &unk_1E767F990;
  v26[4] = self;
  v11 = v8;
  v27 = v11;
  v12 = v9;
  v28 = v12;
  [v10 enumerateKeysAndObjectsUsingBlock:v26];
  [(NSMutableSet *)self->_updatedItemMoveFromIndexPaths removeAllObjects];
  if ([(NSMutableDictionary *)self->_itemMoves count])
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_7;
    v22 = &unk_1E767F9E0;
    selfCopy = self;
    v24 = v11;
    v25 = v12;
    [(MPChangeDetails *)self enumerateItemUpdatesUsingBlock:&v19];
    [(NSMutableDictionary *)self->_itemUpdates removeAllObjects:v19];
  }

  deletedItemIndexPaths = self->_deletedItemIndexPaths;
  self->_deletedItemIndexPaths = v11;
  v14 = v11;

  insertedItemIndexPaths = self->_insertedItemIndexPaths;
  self->_insertedItemIndexPaths = v12;
  v16 = v12;
}

uint64_t __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 integerValue];

  result = [*(*(a1 + 32) + 24) containsIndex:v6];
  if (result)
  {
    [*(a1 + 32) removeSectionMoveFromIndex:v6];
    [*(a1 + 40) addIndex:v6];
    v9 = *(a1 + 48);

    return [v9 addIndex:v7];
  }

  return result;
}

void __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = a2;
  v4 = *(*(a1 + 32) + 72);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_3;
  v9[3] = &unk_1E767F918;
  v9[4] = &v10;
  [v4 enumerateIndexesUsingBlock:v9];
  v5 = *(*(a1 + 32) + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_4;
  v8[3] = &unk_1E767F918;
  v8[4] = &v10;
  [v5 enumerateIndexesUsingBlock:v8];
  v6 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_5;
  v7[3] = &unk_1E767F940;
  v7[4] = &v10;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
  [*(a1 + 40) removeIndex:a2];
  [*(a1 + 48) addIndex:v11[3]];
  _Block_object_dispose(&v10, 8);
}

void __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_6(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1[4] + 6) containsObject:v6])
  {
    [a1[4] removeItemMoveFromIndexPath:v6];
    [a1[5] addObject:v6];
    [a1[6] addObject:v5];
  }
}

void __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = [v5 item];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = *(*(a1 + 32) + 88);
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v8)
  {
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [v11 section];
        if (v12 == [v5 section])
        {
          v13 = [v11 item];
          v14 = v42[3];
          if (v13 <= v14)
          {
            v42[3] = v14 - 1;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v8);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = *(*(a1 + 32) + 80);
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v16)
  {
    v17 = *v34;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v33 + 1) + 8 * j);
        v20 = [v19 section];
        if (v20 == [v5 section])
        {
          v21 = [v19 item];
          v22 = v42[3];
          if (v21 <= v22)
          {
            v42[3] = v22 + 1;
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v16);
  }

  v23 = *(*(a1 + 32) + 32);
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_8;
  v30 = &unk_1E767F9B8;
  v24 = v5;
  v31 = v24;
  v32 = &v41;
  [v23 enumerateKeysAndObjectsUsingBlock:&v27];
  [*(a1 + 40) addObject:{v24, v27, v28, v29, v30}];
  v25 = *(a1 + 48);
  v26 = [MEMORY[0x1E696AC88] indexPathForItem:v42[3] inSection:{objc_msgSend(v24, "section")}];
  [v25 addObject:v26];

  _Block_object_dispose(&v41, 8);
}

void __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v14 section];
  if (v6 == [*(a1 + 32) section])
  {
    v7 = [v14 item];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 24);
    if (v7 <= v9)
    {
      *(v8 + 24) = v9 - 1;
    }
  }

  v10 = [v5 section];
  if (v10 == [*(a1 + 32) section])
  {
    v11 = [v5 item];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 24);
    if (v11 <= v13)
    {
      *(v12 + 24) = v13 + 1;
    }
  }
}

uint64_t __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_3(uint64_t result, unint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 >= a2)
  {
    *(v2 + 24) = v3 - 1;
  }

  return result;
}

uint64_t __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_4(uint64_t result, unint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 >= a2)
  {
    *(v2 + 24) = v3 + 1;
  }

  return result;
}

void __40__MPChangeDetails_applyUIKitWorkarounds__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 24);
  if (v6 <= v8)
  {
    *(v7 + 24) = v8 - 1;
  }

  v9 = [v5 integerValue];

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 24);
  if (v9 <= v11)
  {
    *(v10 + 24) = v11 + 1;
  }
}

- (void)enumerateMovesWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__MPChangeDetails_enumerateMovesWithBlock___block_invoke;
  v6[3] = &unk_1E767F800;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MPChangeDetails *)self enumerateSectionMovesUsingBlock:v6];
}

- (void)enumerateItemUpdatesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_itemUpdates copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MPChangeDetails_enumerateItemUpdatesUsingBlock___block_invoke;
  v7[3] = &unk_1E767F8C8;
  v8 = blockCopy;
  v6 = blockCopy;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)removeItemUpdateForPreviousIndexPath:(id)path
{
  pathCopy = path;
  v7 = pathCopy;
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:385 description:@"Attempt to mutate immutable change details"];

    pathCopy = v7;
  }

  [(NSMutableDictionary *)self->_itemUpdates removeObjectForKey:pathCopy];
}

- (void)appendItemUpdateForPreviousIndexPath:(id)path finalIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:380 description:@"Attempt to mutate immutable change details"];
  }

  [(NSMutableDictionary *)self->_itemUpdates setObject:indexPathCopy forKey:pathCopy];
}

- (void)enumerateItemMovesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_itemMoves copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MPChangeDetails_enumerateItemMovesUsingBlock___block_invoke;
  v7[3] = &unk_1E767F8A0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __48__MPChangeDetails_enumerateItemMovesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 48);
  v6 = a3;
  v7 = a2;
  [v5 containsObject:v7];
  (*(*(a1 + 40) + 16))();
}

- (void)enumerateItemMovesWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MPChangeDetails_enumerateItemMovesWithBlock___block_invoke;
  v6[3] = &unk_1E767F878;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MPChangeDetails *)self enumerateItemMovesUsingBlock:v6];
}

- (void)removeItemMoveFromIndexPath:(id)path
{
  pathCopy = path;
  v7 = pathCopy;
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:360 description:@"Attempt to mutate immutable change details"];

    pathCopy = v7;
  }

  [(NSMutableDictionary *)self->_itemMoves removeObjectForKey:pathCopy];
  [(NSMutableSet *)self->_updatedItemMoveFromIndexPaths removeObject:v7];
}

- (void)appendItemMoveFromIndexPath:(id)path toIndexPath:(id)indexPath updated:(BOOL)updated
{
  updatedCopy = updated;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:352 description:@"Attempt to mutate immutable change details"];
  }

  [(NSMutableDictionary *)self->_itemMoves setObject:indexPathCopy forKey:pathCopy];
  if (updatedCopy)
  {
    [(NSMutableSet *)self->_updatedItemMoveFromIndexPaths addObject:pathCopy];
  }
}

- (void)enumerateSectionUpdatesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_sectionUpdates copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MPChangeDetails_enumerateSectionUpdatesUsingBlock___block_invoke;
  v7[3] = &unk_1E767F850;
  v8 = blockCopy;
  v6 = blockCopy;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

uint64_t __53__MPChangeDetails_enumerateSectionUpdatesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 integerValue];

  v8 = *(v4 + 16);

  return v8(v4, v6, v7);
}

- (void)removeSectionUpdateForPreviousIndex:(int64_t)index
{
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:340 description:@"Attempt to mutate immutable change details"];
  }

  sectionUpdates = self->_sectionUpdates;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  [(NSMutableDictionary *)sectionUpdates removeObjectForKey:v8];
}

- (void)appendSectionUpdateForPreviousIndex:(int64_t)index finalIndex:(int64_t)finalIndex
{
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:335 description:@"Attempt to mutate immutable change details"];
  }

  sectionUpdates = self->_sectionUpdates;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:finalIndex];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  [(NSMutableDictionary *)sectionUpdates setObject:v11 forKey:v8];
}

- (void)enumerateSectionMovesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_sectionMoves copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MPChangeDetails_enumerateSectionMovesUsingBlock___block_invoke;
  v7[3] = &unk_1E767F828;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

uint64_t __51__MPChangeDetails_enumerateSectionMovesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [*(*(a1 + 32) + 24) containsIndex:v6];
  v8 = *(a1 + 40);
  v9 = [v5 integerValue];

  v10 = *(v8 + 16);

  return v10(v8, v6, v9, v7);
}

- (void)enumerateSectionMovesWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__MPChangeDetails_enumerateSectionMovesWithBlock___block_invoke;
  v6[3] = &unk_1E767F800;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MPChangeDetails *)self enumerateSectionMovesUsingBlock:v6];
}

- (void)removeSectionMoveFromIndex:(int64_t)index
{
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:314 description:@"Attempt to mutate immutable change details"];
  }

  sectionMoves = self->_sectionMoves;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  [(NSMutableDictionary *)sectionMoves removeObjectForKey:v6];

  updatedSectionMoveFromIndexes = self->_updatedSectionMoveFromIndexes;

  [(NSMutableIndexSet *)updatedSectionMoveFromIndexes removeIndex:index];
}

- (void)appendSectionMoveFromIndex:(int64_t)index toIndex:(int64_t)toIndex updated:(BOOL)updated
{
  updatedCopy = updated;
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:306 description:@"Attempt to mutate immutable change details"];
  }

  sectionMoves = self->_sectionMoves;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:toIndex];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  [(NSMutableDictionary *)sectionMoves setObject:v10 forKey:v11];

  if (updatedCopy)
  {
    updatedSectionMoveFromIndexes = self->_updatedSectionMoveFromIndexes;

    [(NSMutableIndexSet *)updatedSectionMoveFromIndexes addIndex:index];
  }
}

- (NSArray)updatedItemIndexPaths
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_itemUpdates, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MPChangeDetails_updatedItemIndexPaths__block_invoke;
  v7[3] = &unk_1E767F7D8;
  v8 = v3;
  v4 = v3;
  [(MPChangeDetails *)self enumerateItemUpdatesUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (void)setUpdatedItemIndexPaths:(id)paths
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:287 description:@"Attempt to mutate immutable change details"];
  }

  [(NSMutableDictionary *)self->_itemUpdates removeAllObjects];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMutableDictionary *)self->_itemUpdates setObject:*(*(&v12 + 1) + 8 * v10) forKey:*(*(&v12 + 1) + 8 * v10), v12];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (NSIndexSet)updatedSections
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__MPChangeDetails_updatedSections__block_invoke;
  v7[3] = &unk_1E767F7B0;
  v8 = indexSet;
  v4 = indexSet;
  [(MPChangeDetails *)self enumerateSectionUpdatesUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (void)setUpdatedSections:(id)sections
{
  sectionsCopy = sections;
  if (self->_isFinalized)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPChangeDetails.m" lineNumber:267 description:@"Attempt to mutate immutable change details"];
  }

  [(NSMutableDictionary *)self->_sectionUpdates removeAllObjects];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MPChangeDetails_setUpdatedSections___block_invoke;
  v7[3] = &unk_1E7680030;
  v7[4] = self;
  [sectionsCopy enumerateIndexesUsingBlock:v7];
}

void __38__MPChangeDetails_setUpdatedSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [*(*(a1 + 32) + 16) setObject:v3 forKey:v3];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_isFlatCollection)
  {
    v7 = @"index";
  }

  else
  {
    v7 = @"section";
  }

  v8 = v7;
  if (self->_isFlatCollection)
  {
    v9 = @"indexes";
  }

  else
  {
    v9 = @"sections";
  }

  v10 = v9;
  if ([(NSIndexSet *)self->_insertedSections count])
  {
    [v6 appendFormat:@"; inserted %@ %@", v10, self->_insertedSections];
  }

  if ([(NSIndexSet *)self->_deletedSections count])
  {
    [v6 appendFormat:@"; deleted %@ %@", v10, self->_deletedSections];
  }

  if ([(NSMutableDictionary *)self->_sectionUpdates count])
  {
    [v6 appendFormat:@"; updated %@ %@", v10, self->_sectionUpdates];
  }

  if ([(NSMutableDictionary *)self->_sectionMoves count])
  {
    [v6 appendFormat:@"; %@ moves %@", v8, self->_sectionMoves];
  }

  if ([(NSMutableIndexSet *)self->_updatedSectionMoveFromIndexes count])
  {
    [v6 appendFormat:@"; %@ updated moves %@", v8, self->_updatedSectionMoveFromIndexes];
  }

  if ([(NSArray *)self->_insertedItemIndexPaths count])
  {
    [v6 appendFormat:@"; inserted items %@", self->_insertedItemIndexPaths];
  }

  if ([(NSArray *)self->_deletedItemIndexPaths count])
  {
    [v6 appendFormat:@"; deleted items %@", self->_deletedItemIndexPaths];
  }

  if ([(NSMutableDictionary *)self->_itemUpdates count])
  {
    [v6 appendFormat:@"; updated items %@", self->_itemUpdates];
  }

  if ([(NSMutableDictionary *)self->_itemMoves count])
  {
    [v6 appendFormat:@"; item moves %@", self->_itemMoves];
  }

  if ([(NSMutableSet *)self->_updatedItemMoveFromIndexPaths count])
  {
    [v6 appendFormat:@"; updated item moves %@", self->_updatedItemMoveFromIndexPaths];
  }

  if (![(MPChangeDetails *)self hasChanges])
  {
    [v6 appendString:@"; none [UNNECESSARY]"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  if (self->_isFlatCollection)
  {
    v7 = @"index";
  }

  else
  {
    v7 = @"section";
  }

  v8 = v7;
  if (self->_isFlatCollection)
  {
    v9 = @"indexes";
  }

  else
  {
    v9 = @"sections";
  }

  v10 = v9;
  v11 = [(NSIndexSet *)self->_insertedSections count];
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = v8;
    }

    else
    {
      v12 = v10;
    }

    [v6 appendFormat:@"; %lu inserted %@", v11, v12];
  }

  v13 = [(NSIndexSet *)self->_deletedSections count];
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = v8;
    }

    else
    {
      v14 = v10;
    }

    [v6 appendFormat:@"; %lu deleted %@", v13, v14];
  }

  v15 = [(NSMutableDictionary *)self->_sectionUpdates count];
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = v8;
    }

    else
    {
      v16 = v10;
    }

    [v6 appendFormat:@"; %lu updated %@", v15, v16];
  }

  v17 = [(NSMutableDictionary *)self->_sectionMoves count];
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = v8;
    }

    else
    {
      v18 = v10;
    }

    [v6 appendFormat:@"; %lu moved %@", v17, v18];
  }

  v19 = [(NSMutableIndexSet *)self->_updatedSectionMoveFromIndexes count];
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = v8;
    }

    else
    {
      v20 = v10;
    }

    [v6 appendFormat:@"; %lu updated moves %@", v19, v20];
  }

  v21 = [(NSArray *)self->_insertedItemIndexPaths count];
  if (v21)
  {
    if (v21 == 1)
    {
      v22 = @"item";
    }

    else
    {
      v22 = @"items";
    }

    [v6 appendFormat:@"; %lu inserted %@", v21, v22];
  }

  v23 = [(NSArray *)self->_deletedItemIndexPaths count];
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = @"item";
    }

    else
    {
      v24 = @"items";
    }

    [v6 appendFormat:@"; %lu deleted %@", v23, v24];
  }

  v25 = [(NSMutableDictionary *)self->_itemUpdates count];
  if (v25)
  {
    if (v25 == 1)
    {
      v26 = @"item";
    }

    else
    {
      v26 = @"items";
    }

    [v6 appendFormat:@"; %lu updated %@", v25, v26];
  }

  v27 = [(NSMutableDictionary *)self->_itemMoves count];
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = @"item";
    }

    else
    {
      v28 = @"items";
    }

    [v6 appendFormat:@"; %lu moved %@", v27, v28];
  }

  v29 = [(NSMutableSet *)self->_updatedItemMoveFromIndexPaths count];
  if (v29)
  {
    if (v29 == 1)
    {
      v30 = @"item";
    }

    else
    {
      v30 = @"items";
    }

    [v6 appendFormat:@"; %lu updated moves %@", v29, v30];
  }

  if (![(MPChangeDetails *)self hasChanges])
  {
    [v6 appendString:@"; none [UNNECESSARY]"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (MPChangeDetails)initWithBlock:(id)block
{
  blockCopy = block;
  v26.receiver = self;
  v26.super_class = MPChangeDetails;
  v5 = [(MPChangeDetails *)&v26 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AC90]);
    deletedSections = v5->_deletedSections;
    v5->_deletedSections = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696AC90]);
    insertedSections = v5->_insertedSections;
    v5->_insertedSections = v8;

    deletedItemIndexPaths = v5->_deletedItemIndexPaths;
    v11 = MEMORY[0x1E695E0F0];
    v5->_deletedItemIndexPaths = MEMORY[0x1E695E0F0];

    insertedItemIndexPaths = v5->_insertedItemIndexPaths;
    v5->_insertedItemIndexPaths = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sectionMoves = v5->_sectionMoves;
    v5->_sectionMoves = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sectionUpdates = v5->_sectionUpdates;
    v5->_sectionUpdates = v15;

    v17 = objc_alloc_init(MEMORY[0x1E696AD50]);
    updatedSectionMoveFromIndexes = v5->_updatedSectionMoveFromIndexes;
    v5->_updatedSectionMoveFromIndexes = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    itemMoves = v5->_itemMoves;
    v5->_itemMoves = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    itemUpdates = v5->_itemUpdates;
    v5->_itemUpdates = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    updatedItemMoveFromIndexPaths = v5->_updatedItemMoveFromIndexPaths;
    v5->_updatedItemMoveFromIndexPaths = v23;

    blockCopy[2](blockCopy, v5);
    v5->_isFinalized = 1;
  }

  return v5;
}

+ (MPChangeDetails)changeDetailsWithPreviousCount:(int64_t)count finalCount:(int64_t)finalCount isEqualBlock:(id)block isUpdatedBlock:(id)updatedBlock
{
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  v12 = [self alloc];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke;
  v22 = &unk_1E767F788;
  countCopy = count;
  finalCountCopy = finalCount;
  v23 = blockCopy;
  v24 = updatedBlockCopy;
  v13 = updatedBlockCopy;
  v14 = blockCopy;
  v15 = [v12 initWithBlock:&v19];
  if ([(MPChangeDetails *)v15 hasChanges:v19])
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v16;
}

void __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AD50] indexSet];
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v30 = 0;
  v6 = MPChangeDetailOperationGenerateEx(*(a1 + 48), *(a1 + 56), &v30, v31, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke_2;
  aBlock[3] = &unk_1E767F760;
  v7 = v5;
  v25 = v7;
  v28 = *(a1 + 32);
  v8 = v4;
  v26 = v8;
  v9 = v3;
  v27 = v9;
  v29 = *(a1 + 40);
  v10 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke_4;
  v18[3] = &unk_1E767F760;
  v17 = v8;
  v19 = v17;
  v22 = *(a1 + 32);
  v16 = v7;
  v20 = v16;
  v11 = v9;
  v21 = v11;
  v23 = *(a1 + 40);
  v12 = _Block_copy(v18);
  if (v30)
  {
    for (i = 0; i < v30; ++i)
    {
      v14 = *&v6[8 * i];
      v15 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v15 == 3)
        {
          goto LABEL_11;
        }

        v12[2](v12, (v14 >> 31) & 0x7FFFFFFF);
      }

      else if (v15)
      {
        if ((*(*(a1 + 32) + 16))())
        {
          if ((*(*(a1 + 40) + 16))())
          {
            [v11 appendSectionUpdateForPreviousIndex:(v14 >> 31) & 0x7FFFFFFF finalIndex:v14 & 0x7FFFFFFF];
          }

          continue;
        }

        v12[2](v12, (v14 >> 31) & 0x7FFFFFFF);
LABEL_11:
        v10[2](v10, v14 & 0x7FFFFFFF);
      }
    }
  }

  free(v6);
  v11[56] = 1;
  [v11 setInsertedSections:v17];
  [v11 setDeletedSections:v16];
}

void __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke_3;
  v6[3] = &unk_1E767F738;
  v5 = *(a1 + 56);
  v8 = &v10;
  v9 = a2;
  v7 = v5;
  [v4 enumerateIndexesUsingBlock:v6];
  if (v11[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addIndex:a2];
  }

  else
  {
    [*(a1 + 32) removeIndex:?];
    [*(a1 + 48) appendSectionMoveFromIndex:v11[3] toIndex:a2 updated:(*(*(a1 + 64) + 16))()];
  }

  _Block_object_dispose(&v10, 8);
}

void __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke_5;
  v6[3] = &unk_1E767F738;
  v5 = *(a1 + 56);
  v8 = &v10;
  v9 = a2;
  v7 = v5;
  [v4 enumerateIndexesUsingBlock:v6];
  if (v11[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addIndex:a2];
  }

  else
  {
    [*(a1 + 32) removeIndex:?];
    [*(a1 + 48) appendSectionMoveFromIndex:a2 toIndex:v11[3] updated:(*(*(a1 + 64) + 16))()];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke_5(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

uint64_t __89__MPChangeDetails_changeDetailsWithPreviousCount_finalCount_isEqualBlock_isUpdatedBlock___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

+ (MPChangeDetails)empty
{
  v2 = [[self alloc] initWithBlock:&__block_literal_global_45975];

  return v2;
}

@end
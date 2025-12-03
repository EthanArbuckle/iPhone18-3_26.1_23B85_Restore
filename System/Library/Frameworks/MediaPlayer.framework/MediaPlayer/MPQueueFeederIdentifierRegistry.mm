@interface MPQueueFeederIdentifierRegistry
- (MPQueueFeederIdentifierRegistry)init;
- (MPQueueFeederIdentifierRegistry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)identifierSetForItem:(id)item;
- (id)itemForIdentifierSet:(id)set;
- (int64_t)indexForItem:(id)item;
- (void)applyChanges:(id)changes identifierSetLookupBlock:(id)block itemIdentifierLookupBlock:(id)lookupBlock;
- (void)encodeWithCoder:(id)coder;
- (void)replaceItemAndIdentifierSet:(id)set atIndex:(int64_t)index;
@end

@implementation MPQueueFeederIdentifierRegistry

- (id)itemForIdentifierSet:(id)set
{
  setCopy = set;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__49047;
  v17 = __Block_byref_object_dispose__49048;
  v18 = 0;
  identifierSets = self->_identifierSets;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__MPQueueFeederIdentifierRegistry_itemForIdentifierSet___block_invoke;
  v9[3] = &unk_1E7680078;
  v6 = setCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v6;
  [(NSMutableArray *)identifierSets enumerateObjectsUsingBlock:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __56__MPQueueFeederIdentifierRegistry_itemForIdentifierSet___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 intersectsSet:*(a1 + 32)])
  {
    v7 = [*(a1 + 40) itemAtIndex:a3];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

- (id)identifierSetForItem:(id)item
{
  itemCopy = item;
  v6 = [(MPQueueFeederIdentifierRegistry *)self indexForItem:itemCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPQueueFeederIdentifierRegistry.m" lineNumber:182 description:{@"Index not found for itemIdentifier: %@", itemCopy}];
  }

  v7 = [(NSMutableArray *)self->_identifierSets objectAtIndexedSubscript:v6];

  return v7;
}

- (int64_t)indexForItem:(id)item
{
  v4 = self->_index;
  v5 = NSMapGet(v4, item);

  if (v5)
  {
    return v5 - 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)applyChanges:(id)changes identifierSetLookupBlock:(id)block itemIdentifierLookupBlock:(id)lookupBlock
{
  v60 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  blockCopy = block;
  lookupBlockCopy = lookupBlock;
  if ([changesCopy hasChanges])
  {
    v40 = lookupBlockCopy;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    indexSet2 = [MEMORY[0x1E696AD50] indexSet];
    v13 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:512];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __99__MPQueueFeederIdentifierRegistry_applyChanges_identifierSetLookupBlock_itemIdentifierLookupBlock___block_invoke;
    v54[3] = &unk_1E767FFB8;
    v54[4] = self;
    v41 = blockCopy;
    v14 = blockCopy;
    v58 = v14;
    v15 = v13;
    v55 = v15;
    v16 = indexSet2;
    v56 = v16;
    v17 = indexSet;
    v57 = v17;
    [changesCopy enumerateMovesUsingBlock:v54];
    firstIndex = [v17 firstIndex];
    firstIndex2 = [v16 firstIndex];
    if (firstIndex >= firstIndex2)
    {
      v20 = firstIndex2;
    }

    else
    {
      v20 = firstIndex;
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __99__MPQueueFeederIdentifierRegistry_applyChanges_identifierSetLookupBlock_itemIdentifierLookupBlock___block_invoke_2;
    v52[3] = &unk_1E767FFE0;
    v52[4] = self;
    v39 = v14;
    v53 = v39;
    [changesCopy enumerateUpdatesUsingBlock:v52];
    deletedIndexes = [changesCopy deletedIndexes];
    firstIndex3 = [deletedIndexes firstIndex];

    if (v20 >= firstIndex3)
    {
      v20 = firstIndex3;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    identifiers = self->_identifiers;
    deletedIndexes2 = [changesCopy deletedIndexes];
    v25 = [(NSMutableArray *)identifiers objectsAtIndexes:deletedIndexes2];

    v26 = [v25 countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      do
      {
        v29 = 0;
        do
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v25);
          }

          NSMapRemove(self->_index, *(*(&v48 + 1) + 8 * v29++));
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v48 objects:v59 count:16];
      }

      while (v27);
    }

    deletedIndexes3 = [changesCopy deletedIndexes];
    [v16 addIndexes:deletedIndexes3];

    [(NSMutableArray *)self->_identifiers removeObjectsAtIndexes:v16];
    [(NSMutableArray *)self->_identifierSets removeObjectsAtIndexes:v16];
    insertedIndexes = [changesCopy insertedIndexes];
    firstIndex4 = [insertedIndexes firstIndex];

    if (v20 >= firstIndex4)
    {
      v33 = firstIndex4;
    }

    else
    {
      v33 = v20;
    }

    if (v33 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v34 = v33;
    }

    insertedIndexes2 = [changesCopy insertedIndexes];
    [v17 addIndexes:insertedIndexes2];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __99__MPQueueFeederIdentifierRegistry_applyChanges_identifierSetLookupBlock_itemIdentifierLookupBlock___block_invoke_3;
    v43[3] = &unk_1E7680008;
    v44 = v15;
    selfCopy = self;
    lookupBlockCopy = v40;
    v46 = v40;
    v47 = v39;
    v36 = v15;
    [v17 enumerateIndexesUsingBlock:v43];
    v37 = [(NSMutableArray *)self->_identifiers count];
    v38 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v34, v37 - v34}];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __99__MPQueueFeederIdentifierRegistry_applyChanges_identifierSetLookupBlock_itemIdentifierLookupBlock___block_invoke_4;
    v42[3] = &unk_1E7680030;
    v42[4] = self;
    [v38 enumerateIndexesUsingBlock:v42];

    blockCopy = v41;
  }
}

void __99__MPQueueFeederIdentifierRegistry_applyChanges_identifierSetLookupBlock_itemIdentifierLookupBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = [*(*(a1 + 32) + 8) objectAtIndex:a2];
  v8 = [*(*(a1 + 32) + 16) objectAtIndex:a2];
  if (a4)
  {
    v9 = (*(*(a1 + 64) + 16))();

    v8 = v9;
  }

  NSMapInsert(*(a1 + 40), (a3 + 1), [MEMORY[0x1E69B1470] pairWithFirst:v10 second:v8]);
  [*(a1 + 48) addIndex:a2];
  [*(a1 + 56) addIndex:a3];
}

void __99__MPQueueFeederIdentifierRegistry_applyChanges_identifierSetLookupBlock_itemIdentifierLookupBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = (*(*(a1 + 40) + 16))();
  [v3 replaceObjectAtIndex:a2 withObject:v4];
}

void __99__MPQueueFeederIdentifierRegistry_applyChanges_identifierSetLookupBlock_itemIdentifierLookupBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = NSMapGet(*(a1 + 32), (a2 + 1));
  v6 = v5;
  v7 = *(*(a1 + 40) + 8);
  if (v5)
  {
    v8 = [v5 first];
    [v7 insertObject:v8 atIndex:a2];

    v9 = *(*(a1 + 40) + 16);
    [v6 second];
  }

  else
  {
    v10 = (*(*(a1 + 48) + 16))();
    [v7 insertObject:v10 atIndex:a2];

    v9 = *(*(a1 + 40) + 16);
    (*(*(a1 + 56) + 16))();
  }
  v11 = ;
  [v9 insertObject:v11 atIndex:a2];

  objc_autoreleasePoolPop(v4);
}

void __99__MPQueueFeederIdentifierRegistry_applyChanges_identifierSetLookupBlock_itemIdentifierLookupBlock___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[3];
  v5 = [v3 itemAtIndex:a2];

  NSMapInsert(v4, v5, (a2 + 1));
}

- (void)replaceItemAndIdentifierSet:(id)set atIndex:(int64_t)index
{
  setCopy = set;
  key = [(MPQueueFeederIdentifierRegistry *)self itemAtIndex:index];
  v7 = MSVNanoIDCreateTaggedPointer();
  [(NSMutableArray *)self->_identifiers replaceObjectAtIndex:index withObject:v7];
  [(NSMutableArray *)self->_identifierSets replaceObjectAtIndex:index withObject:setCopy];
  NSMapRemove(self->_index, key);
  NSMapInsert(self->_index, v7, (index + 1));
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MPQueueFeederIdentifierRegistry);
  v5 = [(NSMutableArray *)self->_identifiers mutableCopy];
  [(MPQueueFeederIdentifierRegistry *)v4 setIdentifiers:v5];

  v6 = [(NSMutableArray *)self->_identifierSets mutableCopy];
  [(MPQueueFeederIdentifierRegistry *)v4 setIdentifierSets:v6];

  v7 = [(NSMapTable *)self->_index copy];
  [(MPQueueFeederIdentifierRegistry *)v4 setIndex:v7];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  identifiers = self->_identifiers;
  coderCopy = coder;
  [coderCopy encodeObject:identifiers forKey:@"i"];
  [coderCopy encodeObject:self->_identifierSets forKey:@"s"];
}

- (MPQueueFeederIdentifierRegistry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MPQueueFeederIdentifierRegistry;
  v5 = [(MPQueueFeederIdentifierRegistry *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"i"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"s"];
    identifierSets = v5->_identifierSets;
    v5->_identifierSets = v14;

    v16 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:1282 capacity:{-[NSMutableArray count](v5->_identifiers, "count")}];
    index = v5->_index;
    v5->_index = v16;

    v18 = v5->_identifiers;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__MPQueueFeederIdentifierRegistry_initWithCoder___block_invoke;
    v20[3] = &unk_1E767FF90;
    v21 = v5;
    [(NSMutableArray *)v18 enumerateObjectsUsingBlock:v20];
  }

  return v5;
}

- (id)description
{
  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"<%@: %p> ("), objc_opt_class(), self;
  if ([(NSMutableArray *)self->_identifiers count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->_identifiers objectAtIndexedSubscript:v4];
      v6 = [(NSMutableArray *)self->_identifierSets objectAtIndexedSubscript:v4];
      humanDescription = [v6 humanDescription];
      [v3 appendFormat:@"\n    [%ld] %@ : %@, ", v4, v5, humanDescription];

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_identifiers count]);
  }

  [v3 appendString:@""]);
  v8 = [v3 copy];

  return v8;
}

- (MPQueueFeederIdentifierRegistry)init
{
  v10.receiver = self;
  v10.super_class = MPQueueFeederIdentifierRegistry;
  v2 = [(MPQueueFeederIdentifierRegistry *)&v10 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    identifiers = v2->_identifiers;
    v2->_identifiers = array;

    array2 = [MEMORY[0x1E695DF70] array];
    identifierSets = v2->_identifierSets;
    v2->_identifierSets = array2;

    v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:1282];
    index = v2->_index;
    v2->_index = v7;
  }

  return v2;
}

@end
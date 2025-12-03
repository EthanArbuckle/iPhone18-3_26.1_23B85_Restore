@interface MPSectionedIdentifierList
+ (void)_performWithoutRequiringExclusivity:(id)exclusivity;
- (BOOL)hasItem:(id)item inSection:(id)section;
- (BOOL)hasSection:(id)section;
- (BOOL)isDeletedItem:(id)item inSection:(id)section;
- (BOOL)performWithExclusiveAccessAndReturnBOOL:(id)l;
- (MPSectionedIdentifierList)initWithCoder:(id)coder;
- (MPSectionedIdentifierList)initWithIdentifier:(id)identifier;
- (MPSectionedIdentifierListAnnotationDelegate)annotationDelegate;
- (MPSectionedIdentifierListDelegate)delegate;
- (NSArray)orderedSectionIdentifiers;
- (NSDictionary)_sectionDataSources;
- (NSSet)allSectionIdentifiers;
- (NSString)debugDescription;
- (NSString)description;
- (id)_dataSourceInsertItems:(id)items fromSection:(id)section afterEntry:(id)entry withExclusiveAccessToken:(id)token;
- (id)_dataSourceMoveItem:(id)item inSection:(id)section afterEntry:(id)entry withExclusiveAccessToken:(id)token;
- (id)_debugDescriptionWithEnumerator:(id)enumerator lengths:(id *)lengths;
- (id)_encodeEntry:(id)entry withExclusiveAccessToken:(id)token;
- (id)_endEntryWithExclusiveAccessToken:(id)token;
- (id)_entryForPosition:(id)position withExclusiveAccessToken:(id)token;
- (id)_firstSectionIDBeforePosition:(id)position withExclusiveAccessToken:(id)token;
- (id)_itemEntry:(id)entry sectionIdentifier:(id)identifier withExclusiveAccessToken:(id)token;
- (id)_sectionHeadEntryMapWithExclusiveAccessToken:(id)token;
- (id)_startEntriesWithExclusiveAccessToken:(id)token;
- (id)_tailEntryForSectionIdentifier:(id)identifier withExclusiveAccessToken:(id)token;
- (id)enumeratorWithOptions:(unint64_t)options startPosition:(id)position endPosition:(id)endPosition;
- (id)enumeratorWithOptions:(unint64_t)options startPosition:(id)position endPosition:(id)endPosition withExclusiveAccessToken:(id)token;
- (id)firstSectionMatching:(id)matching containingItem:(id)item inSection:(id)section;
- (id)performWithExclusiveAccessAndReturnObject:(id)object;
- (int64_t)itemCount;
- (int64_t)performWithExclusiveAccessAndReturnInteger:(id)integer;
- (void)_addBranchToEntry:(id)entry entries:(id)entries withExclusiveAccessToken:(id)token;
- (void)_insertDataSource:(id)source forSection:(id)section afterEntry:(id)entry withExclusiveAccessToken:(id)token;
- (void)_insertDataSourceHead:(id)head afterEntry:(id)entry withExclusiveAccessToken:(id)token;
- (void)_loadDataSource:(id)source forSection:(id)section completion:(id)completion;
- (void)_performDelegateCalloutForSection:(id)section block:(id)block;
- (void)_stitchLastItemEntryToHeadEntry:(id)entry branchList:(id)list;
- (void)_stitchPreviousEntry:(id)entry toEntry:(id)toEntry cloneIndex:(id)index;
- (void)_stitchWithPreviousEntry:(id)entry list:(id)list cloneIndex:(id)index;
- (void)addDataSource:(id)source section:(id)section afterHeadOfSection:(id)ofSection completion:(id)completion;
- (void)addDataSource:(id)source section:(id)section afterItem:(id)item inSection:(id)inSection completion:(id)completion;
- (void)addDataSource:(id)source section:(id)section afterTailOfSection:(id)ofSection completion:(id)completion;
- (void)addDataSource:(id)source section:(id)section beforeTailOfSection:(id)ofSection completion:(id)completion;
- (void)addDataSourceAtEnd:(id)end section:(id)section completion:(id)completion;
- (void)addDataSourceAtStart:(id)start section:(id)section completion:(id)completion;
- (void)dataSourceBeginTransactionForSection:(id)section;
- (void)dataSourceEndTransactionForSection:(id)section;
- (void)dataSourceInsertItems:(id)items afterItem:(id)item inSection:(id)section;
- (void)dataSourceInsertItemsAtHead:(id)head inSection:(id)section;
- (void)dataSourceInsertItemsAtTail:(id)tail inSection:(id)section;
- (void)dataSourceMoveItem:(id)item afterItem:(id)afterItem inSection:(id)section;
- (void)dataSourceMoveItemToHead:(id)head inSection:(id)section;
- (void)dataSourceMoveItemToTail:(id)tail inSection:(id)section;
- (void)dataSourceReloadItems:(id)items inSection:(id)section;
- (void)dataSourceRemoveItems:(id)items fromSection:(id)section;
- (void)dataSourceUpdateSection:(id)section;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder withExclusiveAccessToken:(id)token;
- (void)moveItem:(id)item fromSection:(id)section afterHeadOfSection:(id)ofSection;
- (void)moveItem:(id)item fromSection:(id)section afterItem:(id)afterItem inSection:(id)inSection;
- (void)moveItem:(id)item fromSection:(id)section afterTailOfSection:(id)ofSection;
- (void)moveItemToEnd:(id)end fromSection:(id)section;
- (void)moveItemToStart:(id)start fromSection:(id)section;
- (void)performWithExclusiveAccess:(id)access;
- (void)removeItem:(id)item fromSection:(id)section;
- (void)replaceDataSource:(id)source forSection:(id)section completion:(id)completion;
@end

@implementation MPSectionedIdentifierList

- (NSArray)orderedSectionIdentifiers
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__MPSectionedIdentifierList_orderedSectionIdentifiers__block_invoke;
  v4[3] = &unk_1E76783C0;
  v4[4] = self;
  v2 = [(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnObject:v4];

  return v2;
}

id __54__MPSectionedIdentifierList_orderedSectionIdentifiers__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 56) copy];

  return v1;
}

- (int64_t)itemCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__MPSectionedIdentifierList_itemCount__block_invoke;
  v4[3] = &unk_1E76783E8;
  v4[4] = self;
  v4[5] = &v5;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __38__MPSectionedIdentifierList_itemCount__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _itemCountWithExclusiveAccessToken:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id __50__MPSectionedIdentifierList_allSectionIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:a2];
  v3 = [v2 allKeys];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (NSSet)allSectionIdentifiers
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MPSectionedIdentifierList_allSectionIdentifiers__block_invoke;
  v4[3] = &unk_1E76783C0;
  v4[4] = self;
  v2 = [(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnObject:v4];

  return v2;
}

- (MPSectionedIdentifierListAnnotationDelegate)annotationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationDelegate);

  return WeakRetained;
}

- (MPSectionedIdentifierListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_performDelegateCalloutForSection:(id)section block:(id)block
{
  sectionCopy = section;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__MPSectionedIdentifierList__performDelegateCalloutForSection_block___block_invoke;
  v10[3] = &unk_1E7678320;
  v10[4] = self;
  v11 = sectionCopy;
  v8 = blockCopy;
  v12 = v8;
  v9 = sectionCopy;
  if ([(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v10])
  {
    v8[2](v8);
  }
}

BOOL __69__MPSectionedIdentifierList__performDelegateCalloutForSection_block___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  v3 = _Block_copy(*(a1 + 48));
  [v2 addObject:v3];

  return v2 == 0;
}

- (id)_endEntryWithExclusiveAccessToken:(id)token
{
  [token assertHasExclusiveAccessForOwner:self];
  endEntry = self->_endEntry;

  return endEntry;
}

- (id)_sectionHeadEntryMapWithExclusiveAccessToken:(id)token
{
  [token assertHasExclusiveAccessForOwner:self];
  sectionHeadEntryMap = self->_sectionHeadEntryMap;

  return sectionHeadEntryMap;
}

- (id)_tailEntryForSectionIdentifier:(id)identifier withExclusiveAccessToken:(id)token
{
  identifierCopy = identifier;
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  v9 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];

  v10 = [v9 objectForKeyedSubscript:identifierCopy];
  tailEntry = [v10 tailEntry];

  if (!tailEntry)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:1085 description:{@"No tail exists for %@", identifierCopy}];
  }

  return tailEntry;
}

- (id)_startEntriesWithExclusiveAccessToken:(id)token
{
  [token assertHasExclusiveAccessForOwner:self];
  v4 = [(NSMutableArray *)self->_startEntries copy];

  return v4;
}

- (NSDictionary)_sectionDataSources
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_sectionHeadEntryMap, "count")}];
  sectionHeadEntryMap = self->_sectionHeadEntryMap;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MPSectionedIdentifierList__sectionDataSources__block_invoke;
  v8[3] = &unk_1E76782F8;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)sectionHeadEntryMap enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __48__MPSectionedIdentifierList__sectionDataSources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dataSource];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)_loadDataSource:(id)source forSection:(id)section completion:(id)completion
{
  completionCopy = completion;
  sectionCopy = section;
  sourceCopy = source;
  v11 = [_MPIdentifierListSectionProxy alloc];
  v12 = [(_MPIdentifierListSectionProxy *)v11 initWithSection:sectionCopy sectionedIdentifierList:self existingItemIdentifiers:MEMORY[0x1E695E0F0]];

  [sourceCopy reloadSection:v12 completion:completionCopy];
}

- (id)_itemEntry:(id)entry sectionIdentifier:(id)identifier withExclusiveAccessToken:(id)token
{
  entryCopy = entry;
  identifierCopy = identifier;
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  v12 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];

  v13 = [v12 objectForKeyedSubscript:identifierCopy];
  identifiersItemEntryMap = [v13 identifiersItemEntryMap];
  v15 = [identifiersItemEntryMap objectForKeyedSubscript:entryCopy];

  if (!v15)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:1055 description:{@"No item exists at %@:%@", identifierCopy, entryCopy}];
  }

  return v15;
}

- (void)_insertDataSource:(id)source forSection:(id)section afterEntry:(id)entry withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  entryCopy = entry;
  sectionCopy = section;
  sourceCopy = source;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  v15 = [MPSectionedIdentifierListHeadEntry headEntryWithSectionIdentifier:sectionCopy];
  [v15 setDataSource:sourceCopy];

  v14 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
  [v14 setObject:v15 forKeyedSubscript:sectionCopy];

  [(MPSectionedIdentifierList *)self _insertDataSourceHead:v15 afterEntry:entryCopy withExclusiveAccessToken:tokenCopy];
}

- (void)_insertDataSourceHead:(id)head afterEntry:(id)entry withExclusiveAccessToken:(id)token
{
  v14[1] = *MEMORY[0x1E69E9840];
  headCopy = head;
  entryCopy = entry;
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  if (self->_endEntry == entryCopy)
  {
    tailEntry = [headCopy tailEntry];
    endEntry = self->_endEntry;
    self->_endEntry = tailEntry;
  }

  v14[0] = headCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(MPSectionedIdentifierList *)self _addBranchToEntry:entryCopy entries:v13 withExclusiveAccessToken:tokenCopy];
}

- (id)_entryForPosition:(id)position withExclusiveAccessToken:(id)token
{
  positionCopy = position;
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  if (!positionCopy)
  {
    latestUserClone = 0;
    goto LABEL_15;
  }

  entryType = [positionCopy entryType];
  latestUserClone = 0;
  if (entryType > 2)
  {
    if (entryType == 3)
    {
      itemIdentifier = [positionCopy itemIdentifier];
      sectionIdentifier = [positionCopy sectionIdentifier];
      v14 = [(MPSectionedIdentifierList *)self _itemEntry:itemIdentifier sectionIdentifier:sectionIdentifier withExclusiveAccessToken:tokenCopy];
      latestUserClone = [v14 latestUserClone];

      goto LABEL_14;
    }

    if (entryType == 4)
    {
      itemIdentifier = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
      sectionIdentifier2 = [positionCopy sectionIdentifier];
      v15 = [itemIdentifier objectForKeyedSubscript:sectionIdentifier2];
      latestUserClone = [v15 tailEntry];

LABEL_13:
      goto LABEL_14;
    }

    if (entryType != 5)
    {
      goto LABEL_15;
    }
  }

  else if (entryType >= 2)
  {
    if (entryType != 2)
    {
      goto LABEL_15;
    }

    itemIdentifier = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
    sectionIdentifier2 = [positionCopy sectionIdentifier];
    latestUserClone = [itemIdentifier objectForKeyedSubscript:sectionIdentifier2];
    goto LABEL_13;
  }

  itemIdentifier = [MEMORY[0x1E696AAA8] currentHandler];
  [itemIdentifier handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:1030 description:@"Unsupported position type"];
  latestUserClone = 0;
LABEL_14:

LABEL_15:

  return latestUserClone;
}

- (id)_dataSourceMoveItem:(id)item inSection:(id)section afterEntry:(id)entry withExclusiveAccessToken:(id)token
{
  v21[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  entryCopy = entry;
  sectionCopy = section;
  itemCopy = item;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  v14 = [(MPSectionedIdentifierList *)self _itemEntry:itemCopy sectionIdentifier:sectionCopy withExclusiveAccessToken:tokenCopy];
  newClonedEntry = [v14 newClonedEntry];
  [newClonedEntry setDataSourceCloned];
  v21[0] = newClonedEntry;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(MPSectionedIdentifierList *)self _addBranchToEntry:entryCopy entries:v16 withExclusiveAccessToken:tokenCopy];

  [v14 setDataSourceMoved];
  v17 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];

  v18 = [v17 objectForKeyedSubscript:sectionCopy];

  identifiersItemEntryMap = [v18 identifiersItemEntryMap];
  [identifiersItemEntryMap setObject:newClonedEntry forKeyedSubscript:itemCopy];

  return newClonedEntry;
}

- (id)_dataSourceInsertItems:(id)items fromSection:(id)section afterEntry:(id)entry withExclusiveAccessToken:(id)token
{
  v46 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  sectionCopy = section;
  entryCopy = entry;
  selfCopy = self;
  v32 = entryCopy;
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:selfCopy];
  v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v31 = tokenCopy;
  v15 = [(MPSectionedIdentifierList *)selfCopy _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
  v16 = sectionCopy;
  v17 = [v15 objectForKeyedSubscript:sectionCopy];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = itemsCopy;
  v18 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        v23 = [MPSectionedIdentifierListItemEntry itemEntryWithSectionIdentifier:v16 itemIdentifier:v22];
        v24 = selfCopy;
        if ([(MPSectionedIdentifierList *)selfCopy automaticallyReversesNonDestructiveDataSourceEdits])
        {
          [v23 setUserRemoved];
        }

        [v34 addObject:v23];
        identifiersItemEntryMap = [v17 identifiersItemEntryMap];
        [identifiersItemEntryMap setObject:v23 forKeyedSubscript:v22];

        selfCopy = v24;
      }

      v19 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v19);
  }

  [(MPSectionedIdentifierList *)selfCopy _addBranchToEntry:v32 entries:v34 withExclusiveAccessToken:v31];
  if ([(MPSectionedIdentifierList *)selfCopy automaticallyReversesNonDestructiveDataSourceEdits])
  {
    v26 = os_log_create("com.apple.amp.mediaplayer", "SIL");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = selfCopy;
      v28 = [obj count];
      msv_compactDescription = [obj msv_compactDescription];
      *buf = 138543874;
      v40 = v16;
      v41 = 2048;
      v42 = v28;
      selfCopy = v27;
      v43 = 2114;
      v44 = msv_compactDescription;
      _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] _dataSourceInsertItems:fromSection:afterEntry: | setUserRemoved [auto reversing datasource edits] items=(:%lld)[%{public}@]", buf, 0x20u);
    }
  }

  if (![(MPSectionedIdentifierList *)selfCopy automaticallyReversesNonDestructiveDataSourceEdits])
  {
    selfCopy->_itemCount += [v34 count];
  }

  return v34;
}

- (void)_addBranchToEntry:(id)entry entries:(id)entries withExclusiveAccessToken:(id)token
{
  v41 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  entriesCopy = entries;
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  if ([entriesCopy count])
  {
    if (entryCopy)
    {
LABEL_3:
      v12 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
      sectionIdentifier = [(MPSectionedIdentifierListEntry *)entryCopy sectionIdentifier];
      v14 = [v12 objectForKeyedSubscript:sectionIdentifier];
      tailEntry = [v14 tailEntry];
      previousEntry = [tailEntry previousEntry];
      if (previousEntry == entryCopy)
      {
        sectionIdentifier2 = [(MPSectionedIdentifierListEntry *)entryCopy sectionIdentifier];
        [entriesCopy firstObject];
        v18 = v34 = tokenCopy;
        [v18 sectionIdentifier];
        v19 = v35 = entriesCopy;
        v17 = [sectionIdentifier2 isEqualToString:v19] ^ 1;

        entriesCopy = v35;
        tokenCopy = v34;
      }

      else
      {
        v17 = 0;
      }

      [(MPSectionedIdentifierListEntry *)entryCopy addBranch:entriesCopy forceBranchDepthIncrease:v17];
      goto LABEL_16;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:960 description:@"Cannot add empty branch"];

    if (entryCopy)
    {
      goto LABEL_3;
    }
  }

  v21 = tokenCopy;
  v22 = self->_startEntries;
  v23 = [(NSMutableArray *)v22 count];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = entriesCopy;
  v25 = entriesCopy;
  v26 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v37;
    do
    {
      v29 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v36 + 1) + 8 * v29++) setBranchDepth:v23];
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v27);
  }

  firstObject = [v25 firstObject];
  [(NSMutableArray *)v22 addObject:firstObject];

  entriesCopy = v24;
  tokenCopy = v21;
LABEL_16:
  if (self->_endEntry == entryCopy)
  {
    lastObject = [entriesCopy lastObject];
    endEntry = self->_endEntry;
    self->_endEntry = lastObject;
  }
}

- (void)dataSourceEndTransactionForSection:(id)section
{
  v22 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__MPSectionedIdentifierList_dataSourceEndTransactionForSection___block_invoke;
  v18[3] = &unk_1E76782D0;
  v18[4] = self;
  v6 = sectionCopy;
  v19 = v6;
  v20 = a2;
  v7 = [(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnObject:v18];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:self dataSourceDidBeginTransactionForSection:v6];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v11);
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:self dataSourceDidEndTransactionForSection:{v6, v14}];
  }
}

id __64__MPSectionedIdentifierList_dataSourceEndTransactionForSection___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a1[6] object:a1[4] file:@"MPSectionedIdentifierList.m" lineNumber:937 description:{@"Attempt to end transaction for section without active transaction: %@", a1[5]}];
  }

  v3 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  [*(a1[4] + 48) setObject:0 forKeyedSubscript:a1[5]];

  return v3;
}

- (void)dataSourceBeginTransactionForSection:(id)section
{
  sectionCopy = section;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MPSectionedIdentifierList_dataSourceBeginTransactionForSection___block_invoke;
  v7[3] = &unk_1E76782A8;
  v7[4] = self;
  v8 = sectionCopy;
  v9 = a2;
  v6 = sectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v7];
}

void __66__MPSectionedIdentifierList_dataSourceBeginTransactionForSection___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:a1[6] object:a1[4] file:@"MPSectionedIdentifierList.m" lineNumber:930 description:{@"Attempted to begin transaction for section with active transaction: %@", a1[5]}];
  }

  v4 = [MEMORY[0x1E695DF70] array];
  [*(a1[4] + 48) setObject:v4 forKeyedSubscript:a1[5]];
}

- (void)dataSourceUpdateSection:(id)section
{
  sectionCopy = section;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__MPSectionedIdentifierList_dataSourceUpdateSection___block_invoke;
  v6[3] = &unk_1E76823C0;
  v6[4] = self;
  v7 = sectionCopy;
  v5 = sectionCopy;
  [(MPSectionedIdentifierList *)self _performDelegateCalloutForSection:v5 block:v6];
}

void __53__MPSectionedIdentifierList_dataSourceUpdateSection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:*(a1 + 32) dataSourceDidUpdateSection:*(a1 + 40)];
  }
}

- (void)dataSourceReloadItems:(id)items inSection:(id)section
{
  itemsCopy = items;
  sectionCopy = section;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__MPSectionedIdentifierList_dataSourceReloadItems_inSection___block_invoke;
  v10[3] = &unk_1E76800A0;
  v10[4] = self;
  v11 = itemsCopy;
  v12 = sectionCopy;
  v8 = sectionCopy;
  v9 = itemsCopy;
  [(MPSectionedIdentifierList *)self _performDelegateCalloutForSection:v8 block:v10];
}

void __61__MPSectionedIdentifierList_dataSourceReloadItems_inSection___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidUpdateItems:a1[5] inSection:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidChangeItems:a1[5] inSection:a1[6]];
  }
}

- (void)dataSourceRemoveItems:(id)items fromSection:(id)section
{
  itemsCopy = items;
  sectionCopy = section;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__MPSectionedIdentifierList_dataSourceRemoveItems_fromSection___block_invoke;
  v15[3] = &unk_1E7678168;
  v8 = itemsCopy;
  v16 = v8;
  selfCopy = self;
  v9 = sectionCopy;
  v18 = v9;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__MPSectionedIdentifierList_dataSourceRemoveItems_fromSection___block_invoke_2;
  v12[3] = &unk_1E76800A0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(MPSectionedIdentifierList *)self _performDelegateCalloutForSection:v10 block:v12];
}

void __63__MPSectionedIdentifierList_dataSourceRemoveItems_fromSection___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 40) _itemEntry:*(*(&v12 + 1) + 8 * v8) sectionIdentifier:*(a1 + 48) withExclusiveAccessToken:{v3, v12}];
        v10 = [v9 latestUserClone];
        v11 = [v10 isRemoved];

        if ((v11 & 1) == 0)
        {
          --*(*(a1 + 40) + 8);
        }

        [v9 setDataSourceRemoved];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void __63__MPSectionedIdentifierList_dataSourceRemoveItems_fromSection___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidRemoveItems:a1[5] fromSection:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidChangeItems:a1[5] inSection:a1[6]];
  }
}

- (void)dataSourceMoveItemToTail:(id)tail inSection:(id)section
{
  tailCopy = tail;
  sectionCopy = section;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__MPSectionedIdentifierList_dataSourceMoveItemToTail_inSection___block_invoke;
  v16[3] = &unk_1E7678258;
  v16[4] = self;
  v9 = tailCopy;
  v17 = v9;
  v10 = sectionCopy;
  v18 = v10;
  v19 = a2;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__MPSectionedIdentifierList_dataSourceMoveItemToTail_inSection___block_invoke_2;
  v13[3] = &unk_1E76800A0;
  v13[4] = self;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [(MPSectionedIdentifierList *)self _performDelegateCalloutForSection:v11 block:v13];
}

void __64__MPSectionedIdentifierList_dataSourceMoveItemToTail_inSection___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) automaticallyReversesNonDestructiveDataSourceEdits])
  {
    v4 = [*(a1 + 32) _itemEntry:*(a1 + 40) sectionIdentifier:*(a1 + 48) withExclusiveAccessToken:v3];
  }

  else
  {
    v4 = 0;
  }

  if ([*(a1 + 32) automaticallyReversesNonDestructiveDataSourceEdits])
  {
    v5 = [v4 latestUserClone];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v3];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 48)];
  v8 = [v7 lastItemEntry];

  if (!v8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:855 description:{@"Could not find tail item entry for section identifier: %@", *(a1 + 48)}];
  }

  v9 = [*(a1 + 32) _dataSourceMoveItem:*(a1 + 40) inSection:*(a1 + 48) afterEntry:v8 withExclusiveAccessToken:v3];
  v10 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v3];
  v11 = [v10 objectForKeyedSubscript:*(a1 + 48)];
  [v11 setLastItemEntry:v9];

  if ([*(a1 + 32) automaticallyReversesNonDestructiveDataSourceEdits])
  {
    if (v4)
    {
      if (v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:861 description:@"entryToMove cannot be nil"];

      if (v5)
      {
        goto LABEL_12;
      }
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:862 description:@"entryToMoveLatestUserClone cannot be nil"];

LABEL_12:
    if (v4 == v5)
    {
      v12 = [v9 newClonedEntry];
      [v9 setUserMoved];
      v13 = *(a1 + 32);
      v18[0] = v12;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [v13 _addBranchToEntry:v4 entries:v14 withExclusiveAccessToken:v3];
    }
  }
}

void __64__MPSectionedIdentifierList_dataSourceMoveItemToTail_inSection___block_invoke_2(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v8[0] = a1[5];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [WeakRetained sectionedIdentifierList:v3 dataSourceDidMoveItems:v4 inSection:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = a1[4];
    v7 = a1[5];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    [WeakRetained sectionedIdentifierList:v5 dataSourceDidChangeItems:v6 inSection:a1[6]];
  }
}

- (void)dataSourceMoveItem:(id)item afterItem:(id)afterItem inSection:(id)section
{
  itemCopy = item;
  afterItemCopy = afterItem;
  sectionCopy = section;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __68__MPSectionedIdentifierList_dataSourceMoveItem_afterItem_inSection___block_invoke;
  v20[3] = &unk_1E7678190;
  v20[4] = self;
  v12 = itemCopy;
  v21 = v12;
  v13 = sectionCopy;
  v22 = v13;
  v23 = afterItemCopy;
  v24 = a2;
  v14 = afterItemCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__MPSectionedIdentifierList_dataSourceMoveItem_afterItem_inSection___block_invoke_2;
  v17[3] = &unk_1E76800A0;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  [(MPSectionedIdentifierList *)self _performDelegateCalloutForSection:v15 block:v17];
}

void __68__MPSectionedIdentifierList_dataSourceMoveItem_afterItem_inSection___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) automaticallyReversesNonDestructiveDataSourceEdits])
  {
    v4 = [*(a1 + 32) _itemEntry:*(a1 + 40) sectionIdentifier:*(a1 + 48) withExclusiveAccessToken:v3];
  }

  else
  {
    v4 = 0;
  }

  if ([*(a1 + 32) automaticallyReversesNonDestructiveDataSourceEdits])
  {
    v5 = [v4 latestUserClone];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) _itemEntry:*(a1 + 56) sectionIdentifier:*(a1 + 48) withExclusiveAccessToken:v3];
  v7 = [*(a1 + 32) _dataSourceMoveItem:*(a1 + 40) inSection:*(a1 + 48) afterEntry:v6 withExclusiveAccessToken:v3];
  v8 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v3];
  v9 = [v8 objectForKeyedSubscript:*(a1 + 48)];
  v10 = [v9 lastItemEntry];

  if (v10 == v6)
  {
    v11 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v3];
    v12 = [v11 objectForKeyedSubscript:*(a1 + 48)];
    [v12 setLastItemEntry:v7];
  }

  if ([*(a1 + 32) automaticallyReversesNonDestructiveDataSourceEdits])
  {
    if (v4)
    {
      if (v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:828 description:@"entryToMove cannot be nil"];

      if (v5)
      {
        goto LABEL_12;
      }
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:829 description:@"entryToMoveLatestUserClone cannot be nil"];

LABEL_12:
    if (v4 == v5)
    {
      v13 = [v7 newClonedEntry];
      [v7 setUserMoved];
      v14 = *(a1 + 32);
      v18[0] = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [v14 _addBranchToEntry:v4 entries:v15 withExclusiveAccessToken:v3];
    }
  }
}

void __68__MPSectionedIdentifierList_dataSourceMoveItem_afterItem_inSection___block_invoke_2(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v8[0] = a1[5];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [WeakRetained sectionedIdentifierList:v3 dataSourceDidMoveItems:v4 inSection:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = a1[4];
    v7 = a1[5];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    [WeakRetained sectionedIdentifierList:v5 dataSourceDidChangeItems:v6 inSection:a1[6]];
  }
}

- (void)dataSourceMoveItemToHead:(id)head inSection:(id)section
{
  headCopy = head;
  sectionCopy = section;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__MPSectionedIdentifierList_dataSourceMoveItemToHead_inSection___block_invoke;
  v16[3] = &unk_1E7678258;
  v16[4] = self;
  v9 = headCopy;
  v17 = v9;
  v10 = sectionCopy;
  v18 = v10;
  v19 = a2;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__MPSectionedIdentifierList_dataSourceMoveItemToHead_inSection___block_invoke_2;
  v13[3] = &unk_1E76800A0;
  v13[4] = self;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [(MPSectionedIdentifierList *)self _performDelegateCalloutForSection:v11 block:v13];
}

void __64__MPSectionedIdentifierList_dataSourceMoveItemToHead_inSection___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) automaticallyReversesNonDestructiveDataSourceEdits])
  {
    v4 = [*(a1 + 32) _itemEntry:*(a1 + 40) sectionIdentifier:*(a1 + 48) withExclusiveAccessToken:v3];
  }

  else
  {
    v4 = 0;
  }

  if ([*(a1 + 32) automaticallyReversesNonDestructiveDataSourceEdits])
  {
    v5 = [v4 latestUserClone];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v3];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 48)];

  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:790 description:{@"Could not find head entry for section identifier: %@", *(a1 + 48)}];
  }

  v8 = [*(a1 + 32) _dataSourceMoveItem:*(a1 + 40) inSection:*(a1 + 48) afterEntry:v7 withExclusiveAccessToken:v3];
  if ([*(a1 + 32) automaticallyReversesNonDestructiveDataSourceEdits])
  {
    if (v4)
    {
      if (v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:794 description:@"entryToMove cannot be nil"];

      if (v5)
      {
        goto LABEL_12;
      }
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:795 description:@"entryToMoveLatestUserClone cannot be nil"];

LABEL_12:
    if (v4 == v5)
    {
      v9 = [v8 newClonedEntry];
      [v8 setUserMoved];
      v10 = *(a1 + 32);
      v15[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v10 _addBranchToEntry:v4 entries:v11 withExclusiveAccessToken:v3];
    }
  }
}

void __64__MPSectionedIdentifierList_dataSourceMoveItemToHead_inSection___block_invoke_2(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v8[0] = a1[5];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [WeakRetained sectionedIdentifierList:v3 dataSourceDidMoveItems:v4 inSection:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = a1[4];
    v7 = a1[5];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    [WeakRetained sectionedIdentifierList:v5 dataSourceDidChangeItems:v6 inSection:a1[6]];
  }
}

- (void)dataSourceInsertItemsAtTail:(id)tail inSection:(id)section
{
  tailCopy = tail;
  sectionCopy = section;
  if (![tailCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:765 description:{@"Invalid insertion (no item identifiers) in section: %@", sectionCopy}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__MPSectionedIdentifierList_dataSourceInsertItemsAtTail_inSection___block_invoke;
  v17[3] = &unk_1E7678258;
  v17[4] = self;
  v9 = sectionCopy;
  v18 = v9;
  v20 = a2;
  v10 = tailCopy;
  v19 = v10;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__MPSectionedIdentifierList_dataSourceInsertItemsAtTail_inSection___block_invoke_2;
  v14[3] = &unk_1E76800A0;
  v14[4] = self;
  v15 = v10;
  v16 = v9;
  v11 = v9;
  v12 = v10;
  [(MPSectionedIdentifierList *)self _performDelegateCalloutForSection:v11 block:v14];
}

void __67__MPSectionedIdentifierList_dataSourceInsertItemsAtTail_inSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _sectionHeadEntryMapWithExclusiveAccessToken:v4];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v7 = [v6 tailEntry];
  v14 = [v7 previousEntry];

  v8 = v14;
  if (!v14)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:768 description:{@"Could not find last entry (tailEntry.previous) for section identifier: %@", *(a1 + 40)}];

    v8 = 0;
  }

  v9 = [*(a1 + 32) _dataSourceInsertItems:*(a1 + 48) fromSection:*(a1 + 40) afterEntry:v8 withExclusiveAccessToken:v4];
  v10 = [v9 lastObject];
  v11 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v4];

  v12 = [v11 objectForKeyedSubscript:*(a1 + 40)];
  [v12 setLastItemEntry:v10];
}

void __67__MPSectionedIdentifierList_dataSourceInsertItemsAtTail_inSection___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidAddItems:a1[5] toSection:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidChangeItems:a1[5] inSection:a1[6]];
  }
}

- (void)dataSourceInsertItems:(id)items afterItem:(id)item inSection:(id)section
{
  itemsCopy = items;
  itemCopy = item;
  sectionCopy = section;
  if (![itemsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:744 description:{@"Invalid insertion (no item identifiers) in section: %@", sectionCopy}];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__MPSectionedIdentifierList_dataSourceInsertItems_afterItem_inSection___block_invoke;
  v21[3] = &unk_1E7678280;
  v21[4] = self;
  v22 = itemCopy;
  v12 = sectionCopy;
  v23 = v12;
  v13 = itemsCopy;
  v24 = v13;
  v14 = itemCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__MPSectionedIdentifierList_dataSourceInsertItems_afterItem_inSection___block_invoke_2;
  v18[3] = &unk_1E76800A0;
  v18[4] = self;
  v19 = v13;
  v20 = v12;
  v15 = v12;
  v16 = v13;
  [(MPSectionedIdentifierList *)self _performDelegateCalloutForSection:v15 block:v18];
}

void __71__MPSectionedIdentifierList_dataSourceInsertItems_afterItem_inSection___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) _itemEntry:*(a1 + 40) sectionIdentifier:*(a1 + 48) withExclusiveAccessToken:v11];
  v4 = [*(a1 + 32) _dataSourceInsertItems:*(a1 + 56) fromSection:*(a1 + 48) afterEntry:v3 withExclusiveAccessToken:v11];
  v5 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v11];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 48)];
  v7 = [v6 lastItemEntry];

  if (v7 == v3)
  {
    v8 = [v4 lastObject];
    v9 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v11];
    v10 = [v9 objectForKeyedSubscript:*(a1 + 48)];
    [v10 setLastItemEntry:v8];
  }
}

void __71__MPSectionedIdentifierList_dataSourceInsertItems_afterItem_inSection___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidAddItems:a1[5] toSection:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidChangeItems:a1[5] inSection:a1[6]];
  }
}

- (void)dataSourceInsertItemsAtHead:(id)head inSection:(id)section
{
  headCopy = head;
  sectionCopy = section;
  if (![headCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:723 description:{@"Invalid insertion (no item identifiers) in section: %@", sectionCopy}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__MPSectionedIdentifierList_dataSourceInsertItemsAtHead_inSection___block_invoke;
  v17[3] = &unk_1E7678258;
  v17[4] = self;
  v9 = sectionCopy;
  v18 = v9;
  v20 = a2;
  v10 = headCopy;
  v19 = v10;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__MPSectionedIdentifierList_dataSourceInsertItemsAtHead_inSection___block_invoke_2;
  v14[3] = &unk_1E76800A0;
  v14[4] = self;
  v15 = v10;
  v16 = v9;
  v11 = v9;
  v12 = v10;
  [(MPSectionedIdentifierList *)self _performDelegateCalloutForSection:v11 block:v14];
}

void __67__MPSectionedIdentifierList_dataSourceInsertItemsAtHead_inSection___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:?];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (!v4)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:726 description:{@"Could not find head entry for section identifier: %@", *(a1 + 40)}];
  }

  v5 = [*(a1 + 32) _dataSourceInsertItems:*(a1 + 48) fromSection:*(a1 + 40) afterEntry:v4 withExclusiveAccessToken:v13];
  v6 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v13];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v8 = [v7 lastItemEntry];

  if (!v8)
  {
    v9 = [v5 lastObject];
    v10 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v13];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 40)];
    [v11 setLastItemEntry:v9];
  }
}

void __67__MPSectionedIdentifierList_dataSourceInsertItemsAtHead_inSection___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidAddItems:a1[5] toSection:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sectionedIdentifierList:a1[4] dataSourceDidChangeItems:a1[5] inSection:a1[6]];
  }
}

- (void)removeItem:(id)item fromSection:(id)section
{
  itemCopy = item;
  sectionCopy = section;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__MPSectionedIdentifierList_removeItem_fromSection___block_invoke;
  v10[3] = &unk_1E7678168;
  v10[4] = self;
  v11 = itemCopy;
  v12 = sectionCopy;
  v8 = sectionCopy;
  v9 = itemCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v10];
}

void __52__MPSectionedIdentifierList_removeItem_fromSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) _itemEntry:*(a1 + 40) sectionIdentifier:*(a1 + 48) withExclusiveAccessToken:a2];
  v4 = [v3 latestUserClone];

  if (([v4 isRemoved] & 1) == 0)
  {
    --*(*(a1 + 32) + 8);
  }

  [v4 setUserRemoved];
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 72);
    v7 = [v4 itemIdentifier];
    v8 = [v4 sectionIdentifier];
    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SIL:%{public}@] removeItem:%{public}@ fromSection:%{public}@ | removing [user removed]", &v9, 0x20u);
  }
}

- (void)moveItem:(id)item fromSection:(id)section afterTailOfSection:(id)ofSection
{
  itemCopy = item;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__MPSectionedIdentifierList_moveItem_fromSection_afterTailOfSection___block_invoke;
  v15[3] = &unk_1E7678190;
  v15[4] = self;
  v16 = ofSectionCopy;
  v18 = sectionCopy;
  v19 = a2;
  v17 = itemCopy;
  v12 = sectionCopy;
  v13 = itemCopy;
  v14 = ofSectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v15];
}

void __69__MPSectionedIdentifierList_moveItem_fromSection_afterTailOfSection___block_invoke(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _sectionHeadEntryMapWithExclusiveAccessToken:v4];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

  if (!v6)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:695 description:{@"Could not head entry for section identifier: %@", *(a1 + 40)}];
  }

  v7 = [v6 tailEntry];
  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:697 description:{@"Could not find tail entry for section identifier: %@", *(a1 + 40)}];
  }

  v8 = [*(a1 + 32) _itemEntry:*(a1 + 48) sectionIdentifier:*(a1 + 56) withExclusiveAccessToken:v4];
  v9 = [v8 latestUserClone];

  v10 = [v9 newClonedEntry];
  [v10 setUserCloned];
  [v9 setUserMoved];
  v11 = *(a1 + 32);
  v28[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v11 _addBranchToEntry:v7 entries:v12 withExclusiveAccessToken:v4];

  v13 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(a1 + 32) + 72);
    v15 = [v9 itemIdentifier];
    v16 = [v9 sectionIdentifier];
    v17 = *(a1 + 40);
    *buf = 138544130;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v16;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "[SIL:%{public}@] moveItem:%{public}@ fromSection:%{public}@ afterTailOfSection:%{public}@ | moving [user moved]", buf, 0x2Au);
  }
}

- (void)moveItem:(id)item fromSection:(id)section afterItem:(id)afterItem inSection:(id)inSection
{
  itemCopy = item;
  sectionCopy = section;
  afterItemCopy = afterItem;
  inSectionCopy = inSection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__MPSectionedIdentifierList_moveItem_fromSection_afterItem_inSection___block_invoke;
  v18[3] = &unk_1E7678230;
  v18[4] = self;
  v19 = afterItemCopy;
  v20 = inSectionCopy;
  v21 = itemCopy;
  v22 = sectionCopy;
  v14 = sectionCopy;
  v15 = itemCopy;
  v16 = inSectionCopy;
  v17 = afterItemCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v18];
}

void __70__MPSectionedIdentifierList_moveItem_fromSection_afterItem_inSection___block_invoke(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v3 _itemEntry:v4 sectionIdentifier:v5 withExclusiveAccessToken:v6];
  v8 = [v7 latestUserClone];

  v9 = [*(a1 + 32) _itemEntry:*(a1 + 56) sectionIdentifier:*(a1 + 64) withExclusiveAccessToken:v6];
  v10 = [v9 latestUserClone];

  v11 = [v10 newClonedEntry];
  [v11 setUserCloned];
  [v10 setUserMoved];
  v12 = *(a1 + 32);
  v30[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v12 _addBranchToEntry:v8 entries:v13 withExclusiveAccessToken:v6];

  v14 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(a1 + 32) + 72);
    v16 = [v10 itemIdentifier];
    v17 = [v10 sectionIdentifier];
    v18 = [v8 itemIdentifier];
    v19 = [v8 sectionIdentifier];
    v20 = 138544386;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = v19;
    _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "[SIL:%{public}@] moveItem:%{public}@ fromSection:%{public}@ afterItem:%{public}@ inSection:%{public}@ | moving [user moved]", &v20, 0x34u);
  }
}

- (void)moveItem:(id)item fromSection:(id)section afterHeadOfSection:(id)ofSection
{
  itemCopy = item;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__MPSectionedIdentifierList_moveItem_fromSection_afterHeadOfSection___block_invoke;
  v15[3] = &unk_1E7678190;
  v15[4] = self;
  v16 = ofSectionCopy;
  v18 = sectionCopy;
  v19 = a2;
  v17 = itemCopy;
  v12 = sectionCopy;
  v13 = itemCopy;
  v14 = ofSectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v15];
}

void __69__MPSectionedIdentifierList_moveItem_fromSection_afterHeadOfSection___block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _sectionHeadEntryMapWithExclusiveAccessToken:v4];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

  if (!v6)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:669 description:{@"Could not find head entry for section identifier: %@", *(a1 + 40)}];
  }

  v7 = [*(a1 + 32) _itemEntry:*(a1 + 48) sectionIdentifier:*(a1 + 56) withExclusiveAccessToken:v4];
  v8 = [v7 latestUserClone];

  v9 = [v8 newClonedEntry];
  [v9 setUserCloned];
  [v8 setUserMoved];
  v10 = *(a1 + 32);
  v26[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [v10 _addBranchToEntry:v6 entries:v11 withExclusiveAccessToken:v4];

  v12 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 32) + 72);
    v14 = [v8 itemIdentifier];
    v15 = [v8 sectionIdentifier];
    v16 = *(a1 + 40);
    *buf = 138544130;
    v19 = v13;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "[SIL:%{public}@] moveItem:%{public}@ fromSection:%{public}@ afterHeadOfSection:%{public}@ | moving [user moved]", buf, 0x2Au);
  }
}

- (void)moveItemToEnd:(id)end fromSection:(id)section
{
  endCopy = end;
  sectionCopy = section;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__MPSectionedIdentifierList_moveItemToEnd_fromSection___block_invoke;
  v10[3] = &unk_1E7678168;
  v10[4] = self;
  v11 = endCopy;
  v12 = sectionCopy;
  v8 = sectionCopy;
  v9 = endCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v10];
}

void __55__MPSectionedIdentifierList_moveItemToEnd_fromSection___block_invoke(void *a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v3 _itemEntry:v4 sectionIdentifier:v5 withExclusiveAccessToken:v6];
  v8 = [v7 latestUserClone];

  v9 = [v8 newClonedEntry];
  [v9 setUserCloned];
  [v8 setUserMoved];
  v10 = a1[4];
  v11 = [v10 _endEntryWithExclusiveAccessToken:v6];
  v23[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v10 _addBranchToEntry:v11 entries:v12 withExclusiveAccessToken:v6];

  v13 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1[4] + 72);
    v15 = [v8 itemIdentifier];
    v16 = [v8 sectionIdentifier];
    v17 = 138543874;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    v21 = 2114;
    v22 = v16;
    _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "[SIL:%{public}@] moveItemToEnd:%{public}@ fromSection:%{public}@ | moving [user moved]", &v17, 0x20u);
  }
}

- (void)moveItemToStart:(id)start fromSection:(id)section
{
  startCopy = start;
  sectionCopy = section;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__MPSectionedIdentifierList_moveItemToStart_fromSection___block_invoke;
  v10[3] = &unk_1E7678168;
  v10[4] = self;
  v11 = startCopy;
  v12 = sectionCopy;
  v8 = sectionCopy;
  v9 = startCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v10];
}

void __57__MPSectionedIdentifierList_moveItemToStart_fromSection___block_invoke(void *a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v3 _itemEntry:v4 sectionIdentifier:v5 withExclusiveAccessToken:v6];
  v8 = [v7 latestUserClone];

  v9 = [v8 newClonedEntry];
  [v9 setUserCloned];
  [v8 setUserMoved];
  v10 = a1[4];
  v22[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v10 _addBranchToEntry:0 entries:v11 withExclusiveAccessToken:v6];

  v12 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1[4] + 72);
    v14 = [v8 itemIdentifier];
    v15 = [v8 sectionIdentifier];
    v16 = 138543874;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "[SIL:%{public}@] moveItemToStart:%{public}@ fromSection:%{public}@ | moving [user moved]", &v16, 0x20u);
  }
}

- (BOOL)isDeletedItem:(id)item inSection:(id)section
{
  itemCopy = item;
  sectionCopy = section;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__MPSectionedIdentifierList_isDeletedItem_inSection___block_invoke;
  v11[3] = &unk_1E7678208;
  v14 = &v15;
  v11[4] = self;
  v8 = sectionCopy;
  v12 = v8;
  v9 = itemCopy;
  v13 = v9;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __53__MPSectionedIdentifierList_isDeletedItem_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:a2];
  v3 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 identifiersItemEntryMap];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];
  v6 = [v5 latestUserClone];
  *(*(*(a1 + 56) + 8) + 24) = [v6 isRemoved];
}

- (BOOL)hasSection:(id)section
{
  sectionCopy = section;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MPSectionedIdentifierList_hasSection___block_invoke;
  v7[3] = &unk_1E767BCC0;
  v9 = &v10;
  v7[4] = self;
  v5 = sectionCopy;
  v8 = v5;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __40__MPSectionedIdentifierList_hasSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:a2];
  v3 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
}

- (BOOL)hasItem:(id)item inSection:(id)section
{
  itemCopy = item;
  sectionCopy = section;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__MPSectionedIdentifierList_hasItem_inSection___block_invoke;
  v11[3] = &unk_1E7678208;
  v14 = &v15;
  v11[4] = self;
  v8 = sectionCopy;
  v12 = v8;
  v9 = itemCopy;
  v13 = v9;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __47__MPSectionedIdentifierList_hasItem_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:a2];
  v3 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 identifiersItemEntryMap];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = v5 != 0;
}

- (id)firstSectionMatching:(id)matching containingItem:(id)item inSection:(id)section
{
  matchingCopy = matching;
  itemCopy = item;
  sectionCopy = section;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__MPSectionedIdentifierList_firstSectionMatching_containingItem_inSection___block_invoke;
  v17[3] = &unk_1E76781E0;
  v17[4] = self;
  v18 = itemCopy;
  v20 = matchingCopy;
  v21 = a2;
  v19 = sectionCopy;
  v12 = matchingCopy;
  v13 = sectionCopy;
  v14 = itemCopy;
  v15 = [(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnObject:v17];

  return v15;
}

id __75__MPSectionedIdentifierList_firstSectionMatching_containingItem_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _itemEntry:*(a1 + 40) sectionIdentifier:*(a1 + 48) withExclusiveAccessToken:a2];
  if (!v3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:585 description:{@"No item exists at %@:%@", *(a1 + 48), *(a1 + 40)}];
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  while (1)
  {
    v5 = [v3 entryType];
    if (v5 == 4)
    {
      v6 = [v3 sectionIdentifier];
      [v4 addObject:v6];
LABEL_10:

      goto LABEL_11;
    }

    if (v5 == 2)
    {
      break;
    }

LABEL_11:
    v6 = [v3 previousEntry];

    v3 = v6;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  v6 = [v3 sectionIdentifier];
  if (([v4 containsObject:v6] & 1) != 0 || !(*(*(a1 + 56) + 16))())
  {
    goto LABEL_10;
  }

LABEL_12:

  return v6;
}

- (void)addDataSourceAtEnd:(id)end section:(id)section completion:(id)completion
{
  endCopy = end;
  sectionCopy = section;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__MPSectionedIdentifierList_addDataSourceAtEnd_section_completion___block_invoke;
  v13[3] = &unk_1E7678168;
  v13[4] = self;
  v14 = endCopy;
  v15 = sectionCopy;
  v10 = sectionCopy;
  v11 = endCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v13];
  [(MPSectionedIdentifierList *)self _loadDataSource:v11 forSection:v10 completion:completionCopy];
}

uint64_t __67__MPSectionedIdentifierList_addDataSourceAtEnd_section_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v3 _endEntryWithExclusiveAccessToken:v6];
  [v3 _insertDataSource:v4 forSection:v5 afterEntry:v7 withExclusiveAccessToken:v6];

  v8 = *(a1[4] + 56);
  v9 = a1[6];

  return [v8 addObject:v9];
}

- (void)addDataSource:(id)source section:(id)section beforeTailOfSection:(id)ofSection completion:(id)completion
{
  sourceCopy = source;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__MPSectionedIdentifierList_addDataSource_section_beforeTailOfSection_completion___block_invoke;
  v18[3] = &unk_1E7678190;
  v18[4] = self;
  v19 = ofSectionCopy;
  v21 = sourceCopy;
  v22 = a2;
  v20 = sectionCopy;
  v14 = sourceCopy;
  v15 = sectionCopy;
  v16 = ofSectionCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v18];
  [(MPSectionedIdentifierList *)self _loadDataSource:v14 forSection:v15 completion:completionCopy];
}

void __82__MPSectionedIdentifierList_addDataSource_section_beforeTailOfSection_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _sectionHeadEntryMapWithExclusiveAccessToken:v4];
  v14 = [v5 objectForKeyedSubscript:*(a1 + 40)];

  v6 = v14;
  if (!v14)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:551 description:{@"Could not head entry for section identifier: %@", *(a1 + 40)}];

    v6 = 0;
  }

  v7 = [v6 tailEntry];
  v8 = [v7 previousEntry];

  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:553 description:{@"Could not find tail's previous entry for section identifier: %@", *(a1 + 40)}];
  }

  v9 = *(a1 + 32);
  v10 = [MPSectionedIdentifierListPosition positionForTailOfSection:*(a1 + 40)];
  v11 = [v9 _firstSectionIDBeforePosition:v10 withExclusiveAccessToken:v4];

  [*(*(a1 + 32) + 56) insertObject:*(a1 + 48) atIndex:{objc_msgSend(*(*(a1 + 32) + 56), "indexOfObject:", v11) + 1}];
  [*(a1 + 32) _insertDataSource:*(a1 + 56) forSection:*(a1 + 48) afterEntry:v8 withExclusiveAccessToken:v4];
}

- (void)addDataSource:(id)source section:(id)section afterTailOfSection:(id)ofSection completion:(id)completion
{
  sourceCopy = source;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__MPSectionedIdentifierList_addDataSource_section_afterTailOfSection_completion___block_invoke;
  v18[3] = &unk_1E7678190;
  v18[4] = self;
  v19 = ofSectionCopy;
  v21 = sourceCopy;
  v22 = a2;
  v20 = sectionCopy;
  v14 = sourceCopy;
  v15 = sectionCopy;
  v16 = ofSectionCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v18];
  [(MPSectionedIdentifierList *)self _loadDataSource:v14 forSection:v15 completion:completionCopy];
}

void __81__MPSectionedIdentifierList_addDataSource_section_afterTailOfSection_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _sectionHeadEntryMapWithExclusiveAccessToken:v4];
  v10 = [v5 objectForKeyedSubscript:*(a1 + 40)];

  v6 = v10;
  if (!v10)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:539 description:{@"Could not head entry for section identifier: %@", *(a1 + 40)}];

    v6 = 0;
  }

  v7 = [v6 tailEntry];
  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:541 description:{@"Could not find tail entry for section identifier: %@", *(a1 + 40)}];
  }

  [*(*(a1 + 32) + 56) insertObject:*(a1 + 48) atIndex:{objc_msgSend(*(*(a1 + 32) + 56), "indexOfObject:", *(a1 + 40)) + 1}];
  [*(a1 + 32) _insertDataSource:*(a1 + 56) forSection:*(a1 + 48) afterEntry:v7 withExclusiveAccessToken:v4];
}

- (void)addDataSource:(id)source section:(id)section afterItem:(id)item inSection:(id)inSection completion:(id)completion
{
  sourceCopy = source;
  sectionCopy = section;
  itemCopy = item;
  inSectionCopy = inSection;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __82__MPSectionedIdentifierList_addDataSource_section_afterItem_inSection_completion___block_invoke;
  v25 = &unk_1E76781B8;
  selfCopy = self;
  v27 = itemCopy;
  v28 = inSectionCopy;
  v29 = sectionCopy;
  v30 = sourceCopy;
  v31 = a2;
  v17 = sourceCopy;
  v18 = sectionCopy;
  v19 = inSectionCopy;
  v20 = itemCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:&v22];
  [(MPSectionedIdentifierList *)self _loadDataSource:v17 forSection:v18 completion:completionCopy, v22, v23, v24, v25, selfCopy];
}

void __82__MPSectionedIdentifierList_addDataSource_section_afterItem_inSection_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v3 _itemEntry:v4 sectionIdentifier:v5 withExclusiveAccessToken:v6];
  v12 = [v7 latestUserClone];

  if (!v12)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:528 description:{@"Could not find item entry for identifier: %@", *(a1 + 40)}];
  }

  v8 = *(a1 + 32);
  v9 = [MPSectionedIdentifierListPosition positionForItem:*(a1 + 40) inSection:*(a1 + 48)];
  v10 = [v8 _firstSectionIDBeforePosition:v9 withExclusiveAccessToken:v6];

  [*(*(a1 + 32) + 56) insertObject:*(a1 + 56) atIndex:{objc_msgSend(*(*(a1 + 32) + 56), "indexOfObject:", v10) + 1}];
  [*(a1 + 32) _insertDataSource:*(a1 + 64) forSection:*(a1 + 56) afterEntry:v12 withExclusiveAccessToken:v6];
}

- (id)_firstSectionIDBeforePosition:(id)position withExclusiveAccessToken:(id)token
{
  positionCopy = position;
  tokenCopy = token;
  context = objc_autoreleasePoolPush();
  v9 = [(MPSectionedIdentifierList *)self enumeratorWithOptions:16777241 startPosition:positionCopy endPosition:0 withExclusiveAccessToken:tokenCopy];
  v10 = [v9 nextObjectWithExclusiveAccessToken:tokenCopy];
  if (v10)
  {
    v11 = v10;
    do
    {
      entryType = [v11 entryType];
      if (entryType <= 1)
      {
        if (!entryType)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = currentHandler;
          v15 = a2;
          selfCopy3 = self;
          v17 = 513;
          v18 = @"Unexpected encounter of Unknown entry";
          goto LABEL_14;
        }

        if (entryType == 1)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = currentHandler;
          v15 = a2;
          selfCopy3 = self;
          v17 = 507;
          v18 = @"Unexpected encounter of Start entry";
          goto LABEL_14;
        }
      }

      else
      {
        if (entryType == 2 || entryType == 4)
        {
          trackingEntryResult = [v11 trackingEntryResult];
          sectionIdentifier = [trackingEntryResult sectionIdentifier];

          if (sectionIdentifier)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        if (entryType == 5)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v14 = currentHandler;
          v15 = a2;
          selfCopy3 = self;
          v17 = 510;
          v18 = @"Unexpected encounter of End entry";
LABEL_14:
          [currentHandler handleFailureInMethod:v15 object:selfCopy3 file:@"MPSectionedIdentifierList.m" lineNumber:v17 description:v18];
        }
      }

LABEL_15:
      v21 = [v9 nextObjectWithExclusiveAccessToken:tokenCopy];

      v11 = v21;
    }

    while (v21);
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:520 description:@"Could not find section identifier to update orderedSections"];

  v11 = 0;
  sectionIdentifier = 0;
LABEL_17:

  objc_autoreleasePoolPop(context);

  return sectionIdentifier;
}

- (void)addDataSource:(id)source section:(id)section afterHeadOfSection:(id)ofSection completion:(id)completion
{
  sourceCopy = source;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__MPSectionedIdentifierList_addDataSource_section_afterHeadOfSection_completion___block_invoke;
  v18[3] = &unk_1E7678190;
  v18[4] = self;
  v19 = ofSectionCopy;
  v21 = sourceCopy;
  v22 = a2;
  v20 = sectionCopy;
  v14 = sourceCopy;
  v15 = sectionCopy;
  v16 = ofSectionCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v18];
  [(MPSectionedIdentifierList *)self _loadDataSource:v14 forSection:v15 completion:completionCopy];
}

void __81__MPSectionedIdentifierList_addDataSource_section_afterHeadOfSection_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _sectionHeadEntryMapWithExclusiveAccessToken:v4];
  v7 = [v5 objectForKeyedSubscript:*(a1 + 40)];

  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPSectionedIdentifierList.m" lineNumber:486 description:{@"Could not find head entry for section identifier: %@", *(a1 + 40)}];
  }

  [*(*(a1 + 32) + 56) insertObject:*(a1 + 48) atIndex:{objc_msgSend(*(*(a1 + 32) + 56), "indexOfObject:", *(a1 + 40)) + 1}];
  [*(a1 + 32) _insertDataSource:*(a1 + 56) forSection:*(a1 + 48) afterEntry:v7 withExclusiveAccessToken:v4];
}

- (void)addDataSourceAtStart:(id)start section:(id)section completion:(id)completion
{
  startCopy = start;
  sectionCopy = section;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__MPSectionedIdentifierList_addDataSourceAtStart_section_completion___block_invoke;
  v13[3] = &unk_1E7678168;
  v13[4] = self;
  v14 = sectionCopy;
  v15 = startCopy;
  v10 = startCopy;
  v11 = sectionCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v13];
  [(MPSectionedIdentifierList *)self _loadDataSource:v10 forSection:v11 completion:completionCopy];
}

void __69__MPSectionedIdentifierList_addDataSourceAtStart_section_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 56);
  v5 = a2;
  [v4 insertObject:v3 atIndex:0];
  [*(a1 + 32) _insertDataSource:*(a1 + 48) forSection:*(a1 + 40) afterEntry:0 withExclusiveAccessToken:v5];
}

- (id)enumeratorWithOptions:(unint64_t)options startPosition:(id)position endPosition:(id)endPosition withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  endPositionCopy = endPosition;
  v12 = [(MPSectionedIdentifierList *)self _entryForPosition:position withExclusiveAccessToken:tokenCopy];
  v13 = [(MPSectionedIdentifierList *)self _entryForPosition:endPositionCopy withExclusiveAccessToken:tokenCopy];

  v14 = off_1E7672A10;
  if ((options & 8) != 0)
  {
    v14 = off_1E7672A20;
  }

  v15 = [objc_alloc(*v14) initWithSectionedIdentifierList:self options:options startEntry:v12 endEntry:v13 withExclusiveAccessToken:tokenCopy];

  return v15;
}

- (id)enumeratorWithOptions:(unint64_t)options startPosition:(id)position endPosition:(id)endPosition
{
  positionCopy = position;
  endPositionCopy = endPosition;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__MPSectionedIdentifierList_enumeratorWithOptions_startPosition_endPosition___block_invoke;
  v14[3] = &unk_1E7678140;
  v14[4] = self;
  v15 = positionCopy;
  v16 = endPositionCopy;
  optionsCopy = options;
  v10 = endPositionCopy;
  v11 = positionCopy;
  v12 = [(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnObject:v14];

  return v12;
}

- (int64_t)performWithExclusiveAccessAndReturnInteger:(id)integer
{
  integerCopy = integer;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (_MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken != -1)
  {
    dispatch_once(&_MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken, &__block_literal_global_12848);
  }

  v5 = _MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey;
  if (pthread_getspecific(_MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey))
  {
    v6 = [MPPThreadKeyExclusiveAccessToken tokenWithKey:v5 owner:self];
    v7 = integerCopy[2](integerCopy, v6);
    v15[3] = v7;
  }

  else
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__MPSectionedIdentifierList_performWithExclusiveAccessAndReturnInteger___block_invoke;
    block[3] = &unk_1E7681308;
    v13 = &v14;
    block[4] = self;
    v12 = integerCopy;
    dispatch_sync(accessQueue, block);
    v6 = v12;
  }

  v9 = v15[3];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __72__MPSectionedIdentifierList_performWithExclusiveAccessAndReturnInteger___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = [MPDispatchQueueExclusiveAccessToken tokenWithQueue:*(a1[4] + 16) owner:?];
  *(*(a1[6] + 8) + 24) = (*(v2 + 16))(v2, v3);
}

- (BOOL)performWithExclusiveAccessAndReturnBOOL:(id)l
{
  lCopy = l;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (_MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken != -1)
  {
    dispatch_once(&_MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken, &__block_literal_global_12848);
  }

  v5 = _MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey;
  if (pthread_getspecific(_MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey))
  {
    v6 = [MPPThreadKeyExclusiveAccessToken tokenWithKey:v5 owner:self];
    v7 = lCopy[2](lCopy, v6);
    *(v15 + 24) = v7;
  }

  else
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MPSectionedIdentifierList_performWithExclusiveAccessAndReturnBOOL___block_invoke;
    block[3] = &unk_1E7681308;
    v13 = &v14;
    block[4] = self;
    v12 = lCopy;
    dispatch_sync(accessQueue, block);
    v6 = v12;
  }

  v9 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __69__MPSectionedIdentifierList_performWithExclusiveAccessAndReturnBOOL___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = [MPDispatchQueueExclusiveAccessToken tokenWithQueue:*(a1[4] + 16) owner:?];
  *(*(a1[6] + 8) + 24) = (*(v2 + 16))(v2, v3);
}

- (id)performWithExclusiveAccessAndReturnObject:(id)object
{
  objectCopy = object;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12853;
  v19 = __Block_byref_object_dispose__12854;
  v20 = 0;
  if (_MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken != -1)
  {
    dispatch_once(&_MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken, &__block_literal_global_12848);
  }

  v5 = _MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey;
  if (pthread_getspecific(_MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey))
  {
    v6 = [MPPThreadKeyExclusiveAccessToken tokenWithKey:v5 owner:self];
    v7 = objectCopy[2](objectCopy, v6);
    v8 = v16[5];
    v16[5] = v7;
  }

  else
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__MPSectionedIdentifierList_performWithExclusiveAccessAndReturnObject___block_invoke;
    block[3] = &unk_1E7681308;
    v14 = &v15;
    block[4] = self;
    v13 = objectCopy;
    dispatch_sync(accessQueue, block);
    v6 = v13;
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __71__MPSectionedIdentifierList_performWithExclusiveAccessAndReturnObject___block_invoke(void *a1)
{
  v2 = a1[5];
  v6 = [MPDispatchQueueExclusiveAccessToken tokenWithQueue:*(a1[4] + 16) owner:?];
  v3 = (*(v2 + 16))(v2, v6);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)performWithExclusiveAccess:(id)access
{
  accessCopy = access;
  if (_MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken != -1)
  {
    dispatch_once(&_MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken, &__block_literal_global_12848);
  }

  v5 = _MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey;
  if (pthread_getspecific(_MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey))
  {
    v6 = [MPPThreadKeyExclusiveAccessToken tokenWithKey:v5 owner:self];
    accessCopy[2](accessCopy, v6);
  }

  else
  {
    accessQueue = self->_accessQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__MPSectionedIdentifierList_performWithExclusiveAccess___block_invoke;
    v8[3] = &unk_1E76824C8;
    v8[4] = self;
    v9 = accessCopy;
    dispatch_sync(accessQueue, v8);
  }
}

void __56__MPSectionedIdentifierList_performWithExclusiveAccess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MPDispatchQueueExclusiveAccessToken tokenWithQueue:*(*(a1 + 32) + 16) owner:?];
  (*(v1 + 16))(v1, v2);
}

- (void)replaceDataSource:(id)source forSection:(id)section completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  sectionCopy = section;
  completionCopy = completion;
  array = [MEMORY[0x1E695DF70] array];
  v13 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v14 = os_signpost_id_make_with_pointer(v13, self);

  v15 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138543362;
    v34 = sectionCopy;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SIL-Replace", "section=%{public}@", buf, 0xCu);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __69__MPSectionedIdentifierList_replaceDataSource_forSection_completion___block_invoke;
  v27[3] = &unk_1E76780F0;
  v27[4] = self;
  v28 = sectionCopy;
  v31 = v14;
  v32 = a2;
  v29 = array;
  v30 = sourceCopy;
  v17 = sourceCopy;
  v18 = array;
  v19 = sectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v27];
  v20 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v21 = v20;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SIL-Replace-Reload", &unk_1A2797D62, buf, 2u);
  }

  v22 = [[_MPIdentifierListSectionProxy alloc] initWithSection:v19 sectionedIdentifierList:self existingItemIdentifiers:v18];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__MPSectionedIdentifierList_replaceDataSource_forSection_completion___block_invoke_55;
  v24[3] = &unk_1E7678118;
  v25 = completionCopy;
  v26 = v14;
  v23 = completionCopy;
  [v17 reloadSection:v22 completion:v24];
}

void __69__MPSectionedIdentifierList_replaceDataSource_forSection_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  [v3 assertHasExclusiveAccessForOwner:a1[4]];
  v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v5 = v4;
  v6 = a1[8];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SIL-Replace-Enumerate", &unk_1A2797D62, buf, 2u);
  }

  v7 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a1[9] object:a1[4] file:@"MPSectionedIdentifierList.m" lineNumber:344 description:{@"Could not find head entry for section identifier: %@", a1[5]}];
  }

  v8 = [[MPSectionedIdentifierListEnumerator alloc] initWithSectionedIdentifierList:a1[4] options:33 startEntry:v7 endEntry:0 withExclusiveAccessToken:v3];
  v9 = [(MPSectionedIdentifierListEnumerator *)v8 nextObjectWithExclusiveAccessToken:v3];
  if (v9)
  {
    v10 = v9;
    while (1)
    {
      if ([v10 entryType] == 3)
      {
        v11 = [v10 itemResult];
        v12 = [v11 sectionIdentifier];
        v13 = [v12 isEqualToString:a1[5]];

        if (v13)
        {
          v14 = a1[6];
          v15 = [v10 itemResult];
          v16 = [v15 itemIdentifier];
          [v14 addObject:v16];
        }
      }

      else if ([v10 entryType] == 4)
      {
        v17 = [v10 trackingEntryResult];
        v18 = [v17 sectionIdentifier];
        v19 = [v18 isEqualToString:a1[5]];

        if (v19)
        {
LABEL_14:

          break;
        }
      }

      v20 = [(MPSectionedIdentifierListEnumerator *)v8 nextObjectWithExclusiveAccessToken:v3];

      v10 = v20;
      if (!v20)
      {
        goto LABEL_14;
      }
    }
  }

  [v7 setDataSource:a1[7]];
  v21 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v22 = v21;
  v23 = a1[8];
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v22, OS_SIGNPOST_INTERVAL_END, v23, "SIL-Replace-Enumerate", &unk_1A2797D62, v25, 2u);
  }
}

void __69__MPSectionedIdentifierList_replaceDataSource_forSection_completion___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SIL-Replace-Reload", &unk_1A2797D62, buf, 2u);
  }

  v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A238D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SIL-Replace", &unk_1A2797D62, v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_encodeEntry:(id)entry withExclusiveAccessToken:(id)token
{
  entryCopy = entry;
  tokenCopy = token;
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__12853;
  v28 = __Block_byref_object_dispose__12854;
  v9 = entryCopy;
  v10 = v9;
  v11 = 0;
  v29 = v9;
  while (1)
  {
    v12 = [v9 encodableNextEntriesWithExclusiveAccessToken:tokenCopy];

    if (!v12 || ![v12 count])
    {
      break;
    }

    if ([v12 count] == 1)
    {
      firstObject = [v12 firstObject];
      [array addObject:firstObject];
      v14 = v25[5];
      v25[5] = firstObject;
    }

    else
    {
      if ([v12 count] < 2)
      {
        goto LABEL_9;
      }

      v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __67__MPSectionedIdentifierList__encodeEntry_withExclusiveAccessToken___block_invoke;
      v19[3] = &unk_1E76780C8;
      v14 = v15;
      v23 = &v24;
      v20 = v14;
      selfCopy = self;
      v22 = tokenCopy;
      [v12 enumerateObjectsUsingBlock:v19];
      v16 = [v14 copy];
      [array addObject:v16];
    }

LABEL_9:
    v9 = v25[5];
    v11 = v12;
  }

  v17 = [array copy];
  _Block_object_dispose(&v24, 8);

  return v17;
}

void __67__MPSectionedIdentifierList__encodeEntry_withExclusiveAccessToken___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    [v5 addObject:v11];
    v6 = [*(a1 + 40) _encodeEntry:v11 withExclusiveAccessToken:*(a1 + 48)];
    [v5 addObjectsFromArray:v6];

    v7 = *(a1 + 32);
    v8 = [v5 copy];
    [v7 addObject:v8];
  }

  else
  {
    [*(a1 + 32) addObject:v11];
    v9 = *(*(a1 + 56) + 8);
    v10 = v11;
    v5 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

- (void)encodeWithCoder:(id)coder withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  coderCopy = coder;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  [coderCopy encodeObject:self->_identifier forKey:@"id"];
  [coderCopy encodeInteger:self->_itemCount forKey:@"ic"];
  [coderCopy encodeBool:self->_automaticallyReversesNonDestructiveDataSourceEdits forKey:@"arne"];
  v7 = [(MPSectionedIdentifierList *)self _encodeEntry:self withExclusiveAccessToken:tokenCopy];

  [coderCopy encodeObject:v7 forKey:@"el"];
  [coderCopy encodeObject:self->_orderedSections forKey:@"os"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__MPSectionedIdentifierList_encodeWithCoder___block_invoke;
  v6[3] = &unk_1E767BF10;
  v6[4] = self;
  v7 = coderCopy;
  v5 = coderCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v6];
}

- (void)_stitchPreviousEntry:(id)entry toEntry:(id)toEntry cloneIndex:(id)index
{
  entryCopy = entry;
  toEntryCopy = toEntry;
  indexCopy = index;
  [toEntryCopy setPreviousEntry:entryCopy];
  if ([toEntryCopy entryType] != 4)
  {
    if (entryCopy)
    {
      [entryCopy addNextEntry:toEntryCopy];
    }

    else
    {
      [(NSMutableArray *)self->_startEntries addObject:toEntryCopy];
    }
  }

  entryType = [toEntryCopy entryType];
  switch(entryType)
  {
    case 4:
      [entryCopy setTailEntry:toEntryCopy];
      [toEntryCopy setSectionHeadEntry:entryCopy];
      break;
    case 3:
      v14 = toEntryCopy;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__MPSectionedIdentifierList__stitchPreviousEntry_toEntry_cloneIndex___block_invoke;
      aBlock[3] = &unk_1E76780A0;
      v30 = indexCopy;
      v15 = _Block_copy(aBlock);
      positionKey = [v14 positionKey];
      generation = [positionKey generation];
      v18 = [generation isEqualToString:@"1"];

      if (v18)
      {
        if ([v14 hasClones])
        {
          sectionIdentifier = [v14 sectionIdentifier];
          itemIdentifier = [v14 itemIdentifier];
          v21 = v15[2](v15, sectionIdentifier, itemIdentifier);

          [v21 setRootEntry:v14];
        }

        sectionHeadEntryMap = self->_sectionHeadEntryMap;
        sectionIdentifier2 = [v14 sectionIdentifier];
        clonedEntries = [(NSMutableDictionary *)sectionHeadEntryMap objectForKeyedSubscript:sectionIdentifier2];
        identifiersItemEntryMap = [clonedEntries identifiersItemEntryMap];
        itemIdentifier2 = [v14 itemIdentifier];
        [identifiersItemEntryMap setObject:v14 forKeyedSubscript:itemIdentifier2];
      }

      else
      {
        sectionIdentifier3 = [v14 sectionIdentifier];
        itemIdentifier3 = [v14 itemIdentifier];
        sectionIdentifier2 = v15[2](v15, sectionIdentifier3, itemIdentifier3);

        clonedEntries = [sectionIdentifier2 clonedEntries];
        [clonedEntries addObject:v14];
      }

      break;
    case 2:
      v12 = self->_sectionHeadEntryMap;
      sectionIdentifier4 = [toEntryCopy sectionIdentifier];
      [(NSMutableDictionary *)v12 setObject:toEntryCopy forKeyedSubscript:sectionIdentifier4];

      break;
  }
}

_MPSectionedIdentifierListCloneIndexEntry *__69__MPSectionedIdentifierList__stitchPreviousEntry_toEntry_cloneIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E69B1470] pairWithFirst:a2 second:a3];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(_MPSectionedIdentifierListCloneIndexEntry);
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (void)_stitchLastItemEntryToHeadEntry:(id)entry branchList:(id)list
{
  v32[1] = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  listCopy = list;
  if ([listCopy count] >= 2)
  {
    v26 = entryCopy;
    sectionIdentifier = [entryCopy sectionIdentifier];
    v25 = listCopy;
    v8 = [listCopy objectAtIndexedSubscript:1];
    v9 = v8;
    if ((_NSIsNSArray() & 1) == 0)
    {
      v32[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    }

    v24 = v8;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    reverseObjectEnumerator = [v9 reverseObjectEnumerator];
    v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          if (_NSIsNSArray())
          {
            firstObject = [v15 firstObject];

            v15 = firstObject;
          }

          v17 = v15;
          if ([v17 entryType] == 3)
          {
            v18 = v17;
            if (([v18 isUserCloned] & 1) == 0)
            {
              sectionIdentifier2 = [v18 sectionIdentifier];
              v20 = [sectionIdentifier2 isEqualToString:sectionIdentifier];

              hostedSectionIdentifier = [v18 hostedSectionIdentifier];
              v22 = [hostedSectionIdentifier isEqualToString:sectionIdentifier];

              if (v20 & 1) != 0 || (v22)
              {
                [v26 setLastItemEntry:v18];

                goto LABEL_20;
              }
            }
          }
        }

        v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:

    listCopy = v25;
    entryCopy = v26;
  }
}

- (void)_stitchWithPreviousEntry:(id)entry list:(id)list cloneIndex:(id)index
{
  v39 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  listCopy = list;
  indexCopy = index;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__12853;
  v36 = __Block_byref_object_dispose__12854;
  v22 = entryCopy;
  v37 = v22;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = listCopy;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v12)
  {
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        v16 = _NSIsNSArray();
        v17 = v15;
        v18 = v33[5];
        if (v16)
        {
          v19 = v18;
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __70__MPSectionedIdentifierList__stitchWithPreviousEntry_list_cloneIndex___block_invoke;
          v23[3] = &unk_1E7678078;
          v23[4] = self;
          v20 = v19;
          v24 = v20;
          v25 = indexCopy;
          v27 = &v32;
          v21 = v17;
          v26 = v21;
          [v21 enumerateObjectsUsingBlock:v23];
        }

        else
        {
          [(MPSectionedIdentifierList *)self _stitchPreviousEntry:v18 toEntry:v17 cloneIndex:indexCopy, v22];
          v21 = v33[5];
          v33[5] = v17;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v32, 8);
}

void __70__MPSectionedIdentifierList__stitchWithPreviousEntry_list_cloneIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (_NSIsNSArray())
  {
    [*(a1 + 32) _stitchWithPreviousEntry:*(a1 + 40) list:v7 cloneIndex:*(a1 + 48)];
  }

  else
  {
    v6 = v7;
    [*(a1 + 32) _stitchPreviousEntry:*(a1 + 40) toEntry:v6 cloneIndex:*(a1 + 48)];
    if (!a3)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      if ([v6 entryType] == 4)
      {
        [*(a1 + 32) _stitchLastItemEntryToHeadEntry:*(a1 + 40) branchList:*(a1 + 56)];
      }
    }
  }
}

- (MPSectionedIdentifierList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPSectionedIdentifierList *)self init];
  v6 = v5;
  if (v5)
  {
    [(MPSectionedIdentifierList *)v5 _beforeInitWithCoder:coderCopy];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_itemCount = [coderCopy decodeIntegerForKey:@"ic"];
    v6->_automaticallyReversesNonDestructiveDataSourceEdits = [coderCopy decodeBoolForKey:@"arne"];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"el"];

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(MPSectionedIdentifierList *)v6 _stitchWithPreviousEntry:0 list:v12 cloneIndex:v13];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __43__MPSectionedIdentifierList_initWithCoder___block_invoke;
    v32[3] = &unk_1E7678050;
    v14 = v6;
    v33 = v14;
    [v13 enumerateKeysAndObjectsUsingBlock:v32];
    lastObject = [v12 lastObject];
    if (_NSIsNSArray())
    {
      firstObject = [lastObject firstObject];

      lastObject = firstObject;
    }

    objc_storeStrong(v14 + 4, lastObject);
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"os"];

    if (v20)
    {
      objc_storeStrong(v14 + 7, v20);
    }

    else
    {
      v30 = v13;
      v31 = v12;
      context = objc_autoreleasePoolPush();
      v21 = [v14 enumeratorWithOptions:16777233];
      nextObject = [v21 nextObject];
      if (nextObject)
      {
        v23 = nextObject;
        do
        {
          if ([v23 entryType] == 2)
          {
            v24 = v14[7];
            trackingEntryResult = [v23 trackingEntryResult];
            sectionIdentifier = [trackingEntryResult sectionIdentifier];
            [v24 addObject:sectionIdentifier];
          }

          nextObject2 = [v21 nextObject];

          v23 = nextObject2;
        }

        while (nextObject2);
      }

      objc_autoreleasePoolPop(context);
      v13 = v30;
      v12 = v31;
    }
  }

  return v6;
}

void __43__MPSectionedIdentifierList_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 clonedEntries];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"positionKey" ascending:1];
  v32[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v10 = [v7 sortedArrayUsingDescriptors:v9];

  v11 = [v10 mutableCopy];
  v12 = [v6 rootEntry];
  [v12 setClonedEntries:v11];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * v17);
        v19 = [v6 rootEntry];
        [v18 setRootEntry:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v20 = [v6 rootEntry];
  v21 = [v20 latestDataSourceClone];
  v22 = *(*(a1 + 32) + 40);
  v23 = [v5 first];
  v24 = [v22 objectForKeyedSubscript:v23];
  v25 = [v24 identifiersItemEntryMap];
  v26 = [v5 second];
  [v25 setObject:v21 forKeyedSubscript:v26];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  msv_compactDescription = [(NSMutableArray *)self->_orderedSections msv_compactDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p id=%@ sections=[%@]>", v4, self, identifier, msv_compactDescription];

  return v7;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(MPSectionedIdentifierList *)self enumeratorWithOptions:16777247];
  nextObject = [v4 nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      if (([v6 entryType] - 2) <= 2)
      {
        [v6 prepareForDealloc];
      }

      nextObject2 = [v4 nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = self;
  v8.super_class = MPSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v8 dealloc];
}

- (MPSectionedIdentifierList)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = MPSectionedIdentifierList;
  v5 = [(MPSectionedIdentifierList *)&v19 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.mediaplayer.MPSectionedIdentifierList/accessQueue", 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v6;

    if (identifierCopy)
    {
      v8 = identifierCopy;
    }

    else
    {
      v8 = MSVNanoIDCreateTaggedPointer();
    }

    identifier = v5->_identifier;
    v5->_identifier = v8;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sectionHeadEntryMap = v5->_sectionHeadEntryMap;
    v5->_sectionHeadEntryMap = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    sectionTransactionCallouts = v5->_sectionTransactionCallouts;
    v5->_sectionTransactionCallouts = dictionary2;

    array = [MEMORY[0x1E695DF70] array];
    startEntries = v5->_startEntries;
    v5->_startEntries = array;

    array2 = [MEMORY[0x1E695DF70] array];
    orderedSections = v5->_orderedSections;
    v5->_orderedSections = array2;
  }

  return v5;
}

+ (void)_performWithoutRequiringExclusivity:(id)exclusivity
{
  v3 = _MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken;
  exclusivityCopy = exclusivity;
  if (v3 != -1)
  {
    dispatch_once(&_MPSectionIdentifierListExclusivityDisabledPThreadKey_sOnceToken, &__block_literal_global_12848);
  }

  v5 = _MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey;
  pthread_setspecific(_MPSectionIdentifierListExclusivityDisabledPThreadKey_sThreadKey, 1);
  exclusivityCopy[2](exclusivityCopy);

  pthread_setspecific(v5, 0);
}

- (id)_debugDescriptionWithEnumerator:(id)enumerator lengths:(id *)lengths
{
  v128[5] = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  array = [MEMORY[0x1E695DF70] array];
  v99 = enumeratorCopy;
  nextObject = [enumeratorCopy nextObject];
  branchDepth = [nextObject branchDepth];
  LODWORD(v114) = 0;
  LODWORD(v115) = 0;
  LODWORD(v112) = 0;
  LODWORD(v113) = 0;
  v7 = 0;
  v8 = 0;
  v100 = &stru_1F149ECA8;
  v108 = array;
  do
  {
    v9 = branchDepth;
    obj = objc_autoreleasePoolPush();
    nextObject2 = [v99 nextObject];
    branchDepth2 = [nextObject2 branchDepth];
    v12 = v9 - v8;
    v116 = v9;
    context = branchDepth2;
    v110 = nextObject2;
    if (v9 == v8)
    {
      v13 = branchDepth2;
    }

    else
    {
      if (v9 > v8)
      {
        v14 = (2 * v8) | 1;
        do
        {
          v15 = [&stru_1F149ECA8 stringByPaddingToLength:v14 withString:@" ┃" startingAtIndex:1];
          v16 = [v15 stringByAppendingString:@"⤵︎"];
          v128[0] = v16;
          v128[1] = &stru_1F149ECA8;
          v128[2] = &stru_1F149ECA8;
          v128[3] = &stru_1F149ECA8;
          v128[4] = &stru_1F149ECA8;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:5];
          [array addObject:v17];

          v14 += 2;
          --v12;
        }

        while (v12);
      }

      v18 = [&stru_1F149ECA8 stringByPaddingToLength:2 * v9 withString:@"┃ " startingAtIndex:0];

      v100 = v18;
      nextObject2 = v110;
      v13 = context;
    }

    annotationDelegate = [(MPSectionedIdentifierList *)self annotationDelegate];
    if (nextObject2)
    {
      v20 = v13 < v9;
    }

    else
    {
      v20 = 1;
    }

    v21 = v20;
    entryType = [nextObject entryType];
    if (entryType <= 2)
    {
      if (entryType)
      {
        v23 = 0x1E695D000uLL;
        if (entryType == 1)
        {
          v29 = v7;
          v24 = [(__CFString *)v100 stringByAppendingString:@"┏◨ START"];
          v30 = &stru_1F149ECA8;
          v31 = &stru_1F149ECA8;
          v32 = &stru_1F149ECA8;
          sectionIdentifier = &stru_1F149ECA8;
        }

        else if (entryType == 2)
        {
          v24 = [(__CFString *)v100 stringByAppendingString:@"┣◑ HEAD"];
          trackingEntryResult = [nextObject trackingEntryResult];
          sectionIdentifier = [trackingEntryResult sectionIdentifier];

          if (objc_opt_respondsToSelector())
          {
            v101 = sectionIdentifier;
            v27 = [annotationDelegate debugDescriptionForSection:sectionIdentifier];
            v28 = v27;
            v29 = v7;
            if (v27)
            {
              v30 = v27;
            }

            else
            {
              v30 = &stru_1F149ECA8;
            }

            v31 = &stru_1F149ECA8;
            v32 = &stru_1F149ECA8;
            sectionIdentifier = v101;
          }

          else
          {
            v29 = v7;
            v30 = &stru_1F149ECA8;
            v31 = &stru_1F149ECA8;
            v32 = &stru_1F149ECA8;
          }
        }

        else
        {
          v29 = v7;
          v30 = &stru_1F149ECA8;
          v31 = &stru_1F149ECA8;
          v32 = &stru_1F149ECA8;
          sectionIdentifier = &stru_1F149ECA8;
          v24 = &stru_1F149ECA8;
        }

        goto LABEL_74;
      }

      v29 = v7;
      v30 = &stru_1F149ECA8;
      v31 = &stru_1F149ECA8;
      v32 = &stru_1F149ECA8;
      sectionIdentifier = &stru_1F149ECA8;
      v24 = @"UNKNOWN";
LABEL_54:
      v23 = 0x1E695D000;
      goto LABEL_74;
    }

    if (entryType != 3)
    {
      v29 = v7;
      if (entryType == 4)
      {
        trackingEntryResult2 = [nextObject trackingEntryResult];
        sectionIdentifier2 = [trackingEntryResult2 sectionIdentifier];
        if (v21)
        {
          v52 = @"┗◐ TAIL";
        }

        else
        {
          v52 = @"┣◐ TAIL";
        }

        v24 = [(__CFString *)v100 stringByAppendingString:v52];

        sectionIdentifier = sectionIdentifier2;
        v30 = &stru_1F149ECA8;
        v31 = &stru_1F149ECA8;
        v32 = &stru_1F149ECA8;
      }

      else
      {
        v30 = &stru_1F149ECA8;
        v31 = &stru_1F149ECA8;
        v32 = &stru_1F149ECA8;
        if (entryType == 5)
        {
          v24 = @"┗◧ END";
        }

        else
        {
          v24 = &stru_1F149ECA8;
        }

        sectionIdentifier = &stru_1F149ECA8;
      }

      goto LABEL_54;
    }

    v102 = v7;
    itemResult = [nextObject itemResult];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList+Debugging.m" lineNumber:81 description:{@"debugDescription is counting on itemResult being an instance of %@", objc_opt_class()}];
    }

    if (v21)
    {
      v34 = @"┗◉ ITEM";
    }

    else
    {
      v34 = @"┣◉ ITEM";
    }

    v96 = [(__CFString *)v100 stringByAppendingString:v34];
    sectionIdentifier = [itemResult sectionIdentifier];
    itemIdentifier = [itemResult itemIdentifier];
    v32 = [@"- " stringByAppendingString:itemIdentifier];

    state = [itemResult state];
    v38 = v37;
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __80__MPSectionedIdentifierList_Debugging___debugDescriptionWithEnumerator_lengths___block_invoke;
    v124[3] = &unk_1E7678398;
    v124[4] = self;
    v97 = itemResult;
    v125 = v97;
    v39 = [(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v124];
    v40 = MEMORY[0x1E696AEC0];
    if ((state & 0x100) != 0)
    {
      v41 = @"⛔️";
    }

    else
    {
      v41 = @"▫️";
    }

    if (state)
    {
      v42 = @"🔅";
    }

    else
    {
      v42 = @"▫️";
    }

    if ((state & 0x1000000) != 0)
    {
      v43 = @"🛑";
    }

    else
    {
      v43 = @"▫️";
    }

    if ((state & 0x10000) != 0)
    {
      v44 = @"🔆";
    }

    else
    {
      v44 = @"▫️";
    }

    v45 = (state >> 40) & 1;
    if ((state & 0x100000000) != 0)
    {
      v49 = @"🆔";
    }

    else if (state & 0x10000000000) != 0 && (v95 = v38, v94 = MEMORY[0x1E696AEC0], v46 = v41, v47 = v42, v48 = [v97 isRemoved], v42 = v47, v41 = v46, v40 = v94, v45 = (state >> 40) & 1, v38 = v95, (v48))
    {
      LODWORD(v45) = 1;
      v49 = @"✴️";
    }

    else
    {
      v49 = @"❇️";
      if ((state & 0x1000000000000) == 0)
      {
        v49 = @"▫️";
      }
    }

    v53 = @"🆘";
    if (v39)
    {
      v53 = @"✳️";
    }

    if ((state & 0x100000000000000) == 0)
    {
      v53 = @"▫️";
    }

    v54 = [v40 stringWithFormat:@"%@%@%@%@%@%@", v41, v42, v43, v44, v49, v53];
    v31 = v54;
    if (v45)
    {
      v55 = [(__CFString *)v54 stringByAppendingFormat:@" (%ld)", v38];

      v31 = v55;
    }

    v29 = v102;
    v30 = &stru_1F149ECA8;
    if (objc_opt_respondsToSelector())
    {
      itemIdentifier2 = [v97 itemIdentifier];
      sectionIdentifier3 = [v97 sectionIdentifier];
      v58 = [annotationDelegate debugDescriptionForItem:itemIdentifier2 inSection:sectionIdentifier3];

      if (v58)
      {
        v30 = v58;
      }

      else
      {
        v30 = &stru_1F149ECA8;
      }

      v29 = v102;
    }

    v23 = 0x1E695D000;
    v24 = v96;
LABEL_74:
    v103 = annotationDelegate;
    v59 = [(__CFString *)v24 length];
    if (v112 <= v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = v112;
    }

    v112 = v60;
    v61 = [(__CFString *)sectionIdentifier length];
    if (v113 <= v61)
    {
      v62 = v61;
    }

    else
    {
      v62 = v113;
    }

    v113 = v62;
    v63 = [(__CFString *)v32 length];
    if (v114 <= v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = v114;
    }

    v114 = v64;
    v65 = [(__CFString *)v31 length];
    if (v115 <= v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = v115;
    }

    v115 = v66;
    v67 = v24;
    v127[0] = v24;
    v127[1] = sectionIdentifier;
    v68 = v32;
    v69 = sectionIdentifier;
    v70 = v68;
    v127[2] = v68;
    v127[3] = v31;
    v71 = v31;
    v72 = v30;
    v127[4] = v30;
    v73 = [*(v23 + 3784) arrayWithObjects:v127 count:5];
    [v108 addObject:v73];

    if (v29 <= 0xC7)
    {
      v75 = v110;
      v76 = v110;

      nextObject = v76;
      v74 = obj;
    }

    else
    {
      context = v116;
      v74 = obj;
      v75 = v110;
    }

    v77 = v29;
    v78 = v29 + 1;

    objc_autoreleasePoolPop(v74);
    array = v108;
    branchDepth = context;
    if (v77 > 0xC7)
    {
      break;
    }

    v7 = v78;
    v8 = v116;
  }

  while (nextObject);
  v104 = v78;
  string = [MEMORY[0x1E696AD60] string];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obja = v108;
  v111 = [obja countByEnumeratingWithState:&v120 objects:v126 count:16];
  if (v111)
  {
    v109 = *v121;
    do
    {
      for (i = 0; i != v111; ++i)
      {
        if (*v121 != v109)
        {
          objc_enumerationMutation(obja);
        }

        v82 = *(*(&v120 + 1) + 8 * i);
        contexta = objc_autoreleasePoolPush();
        if ([string length] >= 2)
        {
          [string appendString:@"\n"];
        }

        v117 = [v82 objectAtIndexedSubscript:0];
        v83 = [v117 stringByPaddingToLength:v112 withString:@" " startingAtIndex:0];
        v84 = [v82 objectAtIndexedSubscript:1];
        v85 = [v84 stringByLeftPaddingToLength:v113 withString:@" " startingAtIndex:0];
        v86 = [v82 objectAtIndexedSubscript:2];
        v87 = [v86 stringByPaddingToLength:v114 withString:@" " startingAtIndex:0];
        v88 = [v82 objectAtIndexedSubscript:3];
        v89 = [v88 stringByPaddingToLength:v115 withString:@" " startingAtIndex:0];
        v90 = [v82 objectAtIndexedSubscript:4];
        [string appendFormat:@"%@ %@ %@ %@ %@", v83, v85, v87, v89, v90, 0];

        objc_autoreleasePoolPop(contexta);
      }

      v111 = [obja countByEnumeratingWithState:&v120 objects:v126 count:16];
    }

    while (v111);
  }

  if (v104 < [(MPSectionedIdentifierList *)self itemCount])
  {
    [string appendFormat:@"... and %lld more", -[MPSectionedIdentifierList itemCount](self, "itemCount") - v104];
  }

  if (lengths)
  {
    lengths->var0 = v112;
    lengths->var1 = v113;
    lengths->var2 = v114;
    lengths->var3 = v115;
  }

  return string;
}

BOOL __80__MPSectionedIdentifierList_Debugging___debugDescriptionWithEnumerator_lengths___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:a2];
  v4 = [*(a1 + 40) sectionIdentifier];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 identifiersItemEntryMap];
  v7 = [*(a1 + 40) itemIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = v8 == *(a1 + 40);

  return v9;
}

- (NSString)debugDescription
{
  v3 = [(MPSectionedIdentifierList *)self enumeratorWithOptions:23];
  v4 = [(MPSectionedIdentifierList *)self _debugDescriptionWithEnumerator:v3 lengths:0];

  return v4;
}

@end
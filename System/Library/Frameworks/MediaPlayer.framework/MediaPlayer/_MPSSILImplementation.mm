@interface _MPSSILImplementation
- (BOOL)_isSequentialSection:(id)section withExclusiveAccessToken:(id)token;
- (_MPSSILImplementation)initWithCoder:(id)coder;
- (_MPSSILImplementation)initWithSectionedIdentifierList:(id)list randomSource:(id)source startingItemEntry:(id)entry withExclusiveAccessToken:(id)token;
- (id)_createShuffleCloneForItem:(id)item inSection:(id)section withExclusiveAccessToken:(id)token;
- (id)orderedSectionIdentifiers;
- (int64_t)itemCount;
- (void)_addShuffleSection:(id)section dataSource:(id)source withExclusiveAccessToken:(id)token;
- (void)_appendShuffledItems:(id)items withExclusiveAccessToken:(id)token;
- (void)_beforeInitWithCoder:(id)coder;
- (void)_dequeueCandidatesWithQuota:(int64_t)quota withExclusiveAccessToken:(id)token;
- (void)_enumerator:(id)_enumerator didEncounterEntry:(id)entry withExclusiveAccessToken:(id)token;
- (void)_reverseEnumeratorWillStartAtEnd:(id)end withExclusiveAccessToken:(id)token;
- (void)_updateOrderedSectionIDsWithExclusiveAccessToken:(id)token;
- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially afterItem:(id)item inSection:(id)inSection;
- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially afterTailOfSection:(id)ofSection;
- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially beforeTailOfSection:(id)ofSection;
- (void)addDataSourceAtEnd:(id)end section:(id)section sequentially:(BOOL)sequentially;
- (void)addDataSourceAtStart:(id)start section:(id)section sequentially:(BOOL)sequentially;
- (void)dataSourceInsertItems:(id)items afterItem:(id)item inSection:(id)section;
- (void)dataSourceInsertItemsAtHead:(id)head inSection:(id)section;
- (void)dataSourceInsertItemsAtTail:(id)tail inSection:(id)section;
- (void)dataSourceReloadItems:(id)items inSection:(id)section;
- (void)dataSourceRemoveItems:(id)items fromSection:(id)section;
- (void)dequeueCandidatesWithQuota:(int64_t)quota;
- (void)encodeWithCoder:(id)coder withExclusiveAccessToken:(id)token;
- (void)safelyReshuffleAfterItem:(id)item inSection:(id)section;
@end

@implementation _MPSSILImplementation

- (void)_dequeueCandidatesWithQuota:(int64_t)quota withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:quota];
  if (quota >= 1)
  {
    do
    {
      if (![(NSMutableArray *)self->_candidateItems count])
      {
        break;
      }

      v6 = [(MPRandomDistribution *)self->_randomDistribution nextIntWithUpperBound:[(NSMutableArray *)self->_candidateItems count]];
      v7 = [(NSMutableArray *)self->_candidateItems objectAtIndexedSubscript:v6];
      [(NSMutableArray *)self->_candidateItems removeObjectAtIndex:v6];
      v8 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
      sectionIdentifier = [v7 sectionIdentifier];
      v10 = [v8 objectForKeyedSubscript:sectionIdentifier];
      dataSource = [v10 dataSource];

      if ([v7 isRemoved] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v7, "sectionIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "itemIdentifier"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(dataSource, "section:shouldShuffleExcludeItem:", v17, v18), v18, v17, (v19))
      {
        v12 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
        sectionIdentifier2 = [v7 sectionIdentifier];
        v14 = [v12 objectForKeyedSubscript:sectionIdentifier2];
        identifiersItemEntryMap = [v14 identifiersItemEntryMap];
        itemIdentifier = [v7 itemIdentifier];
        [identifiersItemEntryMap setObject:0 forKeyedSubscript:itemIdentifier];
      }

      else
      {
        [v21 addObject:v7];
        --quota;
      }
    }

    while (quota > 0);
  }

  if ([v21 count])
  {
    [(_MPSSILImplementation *)self _appendShuffledItems:v21 withExclusiveAccessToken:tokenCopy];
    delegate = [(MPSectionedIdentifierList *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate didDequeueShuffledItemsInSSIL:self];
    }
  }
}

- (id)_createShuffleCloneForItem:(id)item inSection:(id)section withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  sectionCopy = section;
  itemCopy = item;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  v11 = [MPSectionedIdentifierListItemEntry itemEntryWithSectionIdentifier:sectionCopy itemIdentifier:itemCopy];
  [v11 setHostedSectionIdentifier:@"🔀"];
  v12 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];

  v13 = [v12 objectForKeyedSubscript:sectionCopy];

  identifiersItemEntryMap = [v13 identifiersItemEntryMap];
  [identifiersItemEntryMap setObject:v11 forKeyedSubscript:itemCopy];

  return v11;
}

- (void)_appendShuffledItems:(id)items withExclusiveAccessToken:(id)token
{
  itemsCopy = items;
  tokenCopy = token;
  v8 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
  v9 = [v8 objectForKeyedSubscript:@"🔀"];

  [tokenCopy assertHasExclusiveAccessForOwner:self];
  self->super._itemCount += [itemsCopy count];
  v10 = [MPSectionedIdentifierListPosition positionForTailOfSection:@"🔀"];
  v11 = [(MPSectionedIdentifierList *)self enumeratorWithOptions:11 startPosition:v10 endPosition:0 withExclusiveAccessToken:tokenCopy];

  v12 = [v11 nextObjectWithExclusiveAccessToken:tokenCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:855 description:{@"MPSSIL unexpected enumeration result: %@", objc_opt_class()}];
  }

  [(MPSectionedIdentifierList *)self _addBranchToEntry:v12 entries:itemsCopy withExclusiveAccessToken:tokenCopy];
  lastObject = [itemsCopy lastObject];
  [v9 setLastItemEntry:lastObject];
}

- (void)_addShuffleSection:(id)section dataSource:(id)source withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  sourceCopy = source;
  sectionCopy = section;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  v12 = [MPSectionedIdentifierListHeadEntry headEntryWithSectionIdentifier:sectionCopy];
  [v12 setDataSource:sourceCopy];

  [v12 setShuffledHead:1];
  v11 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];

  [v11 setObject:v12 forKeyedSubscript:sectionCopy];
}

- (void)_reverseEnumeratorWillStartAtEnd:(id)end withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  [(_MPSSILImplementation *)self _dequeueCandidatesWithQuota:[(NSMutableArray *)self->_candidateItems count] withExclusiveAccessToken:tokenCopy];
}

- (BOOL)_isSequentialSection:(id)section withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  sectionCopy = section;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  v8 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
  v9 = [v8 objectForKeyedSubscript:sectionCopy];

  previousEntry = [v9 previousEntry];
  if (previousEntry)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(MPSectionedIdentifierList *)self _startEntriesWithExclusiveAccessToken:tokenCopy];
    v11 = [v12 containsObject:v9];
  }

  return v11;
}

- (void)_enumerator:(id)_enumerator didEncounterEntry:(id)entry withExclusiveAccessToken:(id)token
{
  entryCopy = entry;
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  nextEntries = [entryCopy nextEntries];
  v9 = [nextEntries indexOfObjectPassingTest:&__block_literal_global_12381];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL && [entryCopy branchDepth] <= 1)
  {
    [(_MPSSILImplementation *)self _dequeueCandidatesWithQuota:+[MPShuffleableSectionedIdentifierList withExclusiveAccessToken:"enumerationCandidateDequeueQuota"], tokenCopy];
  }
}

- (void)_updateOrderedSectionIDsWithExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  array = [MEMORY[0x1E695DF70] array];
  v5 = [(MPSectionedIdentifierList *)self enumeratorWithOptions:17 startPosition:0 endPosition:0 withExclusiveAccessToken:tokenCopy];
  v6 = [v5 nextObjectWithExclusiveAccessToken:tokenCopy];
  if (v6)
  {
    v7 = v6;
    do
    {
      if ([v7 entryType] == 2)
      {
        trackingEntryResult = [v7 trackingEntryResult];
        sectionIdentifier = [trackingEntryResult sectionIdentifier];
        [array addObject:sectionIdentifier];
      }

      v10 = [v5 nextObjectWithExclusiveAccessToken:tokenCopy];

      v7 = v10;
    }

    while (v10);
  }

  v11 = [array copy];
  orderedSectionIDs = self->_orderedSectionIDs;
  self->_orderedSectionIDs = v11;
}

- (id)orderedSectionIdentifiers
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50___MPSSILImplementation_orderedSectionIdentifiers__block_invoke;
  v4[3] = &unk_1E76783C0;
  v4[4] = self;
  v2 = [(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnObject:v4];

  return v2;
}

- (int64_t)itemCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34___MPSSILImplementation_itemCount__block_invoke;
  v4[3] = &unk_1E76783E8;
  v4[4] = self;
  v4[5] = &v5;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)dataSourceReloadItems:(id)items inSection:(id)section
{
  itemsCopy = items;
  sectionCopy = section;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57___MPSSILImplementation_dataSourceReloadItems_inSection___block_invoke;
  v10[3] = &unk_1E7678168;
  v10[4] = self;
  v11 = sectionCopy;
  v12 = itemsCopy;
  v8 = itemsCopy;
  v9 = sectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v10];
}

- (void)dataSourceRemoveItems:(id)items fromSection:(id)section
{
  itemsCopy = items;
  sectionCopy = section;
  array = [MEMORY[0x1E695DF70] array];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59___MPSSILImplementation_dataSourceRemoveItems_fromSection___block_invoke;
  v13[3] = &unk_1E7678280;
  v9 = itemsCopy;
  v14 = v9;
  selfCopy = self;
  v10 = sectionCopy;
  v16 = v10;
  v11 = array;
  v17 = v11;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v13];
  if ([v11 count])
  {
    v12.receiver = self;
    v12.super_class = _MPSSILImplementation;
    [(MPSectionedIdentifierList *)&v12 dataSourceRemoveItems:v11 fromSection:v10];
  }
}

- (void)dataSourceInsertItemsAtTail:(id)tail inSection:(id)section
{
  tailCopy = tail;
  sectionCopy = section;
  if (![tailCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:701 description:{@"Invalid insertion (no item identifiers) in section: %@", sectionCopy}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63___MPSSILImplementation_dataSourceInsertItemsAtTail_inSection___block_invoke;
  v13[3] = &unk_1E7677F40;
  v13[4] = self;
  v9 = sectionCopy;
  v14 = v9;
  v10 = tailCopy;
  v15 = v10;
  if ([(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v13])
  {
    v12.receiver = self;
    v12.super_class = _MPSSILImplementation;
    [(MPSectionedIdentifierList *)&v12 dataSourceInsertItemsAtTail:v10 inSection:v9];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:682 description:{@"Invalid insertion (no item identifiers) in section: %@", sectionCopy}];
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67___MPSSILImplementation_dataSourceInsertItems_afterItem_inSection___block_invoke;
  v16[3] = &unk_1E7677F40;
  v16[4] = self;
  v12 = sectionCopy;
  v17 = v12;
  v13 = itemsCopy;
  v18 = v13;
  if ([(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v16])
  {
    v15.receiver = self;
    v15.super_class = _MPSSILImplementation;
    [(MPSectionedIdentifierList *)&v15 dataSourceInsertItems:v13 afterItem:itemCopy inSection:v12];
  }
}

- (void)dataSourceInsertItemsAtHead:(id)head inSection:(id)section
{
  headCopy = head;
  sectionCopy = section;
  if (![headCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:663 description:{@"Invalid insertion (no item identifiers) in section: %@", sectionCopy}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63___MPSSILImplementation_dataSourceInsertItemsAtHead_inSection___block_invoke;
  v13[3] = &unk_1E7677F40;
  v13[4] = self;
  v9 = sectionCopy;
  v14 = v9;
  v10 = headCopy;
  v15 = v10;
  if ([(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v13])
  {
    v12.receiver = self;
    v12.super_class = _MPSSILImplementation;
    [(MPSectionedIdentifierList *)&v12 dataSourceInsertItemsAtHead:v10 inSection:v9];
  }
}

- (void)addDataSourceAtEnd:(id)end section:(id)section sequentially:(BOOL)sequentially
{
  endCopy = end;
  sectionCopy = section;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___MPSSILImplementation_addDataSourceAtEnd_section_sequentially___block_invoke;
  v12[3] = &unk_1E7677EC8;
  sequentiallyCopy = sequentially;
  v12[4] = self;
  v13 = endCopy;
  v14 = sectionCopy;
  v10 = sectionCopy;
  v11 = endCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v12];
}

- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially beforeTailOfSection:(id)ofSection
{
  sourceCopy = source;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80___MPSSILImplementation_addDataSource_section_sequentially_beforeTailOfSection___block_invoke;
  v16[3] = &unk_1E7677F18;
  sequentiallyCopy = sequentially;
  v16[4] = self;
  v17 = ofSectionCopy;
  v18 = sourceCopy;
  v19 = sectionCopy;
  v13 = sectionCopy;
  v14 = sourceCopy;
  v15 = ofSectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v16];
}

- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially afterTailOfSection:(id)ofSection
{
  sourceCopy = source;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79___MPSSILImplementation_addDataSource_section_sequentially_afterTailOfSection___block_invoke;
  v16[3] = &unk_1E7677F18;
  sequentiallyCopy = sequentially;
  v16[4] = self;
  v17 = ofSectionCopy;
  v18 = sourceCopy;
  v19 = sectionCopy;
  v13 = sectionCopy;
  v14 = sourceCopy;
  v15 = ofSectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v16];
}

- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially afterItem:(id)item inSection:(id)inSection
{
  sourceCopy = source;
  sectionCopy = section;
  itemCopy = item;
  inSectionCopy = inSection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80___MPSSILImplementation_addDataSource_section_sequentially_afterItem_inSection___block_invoke;
  v20[3] = &unk_1E7677EF0;
  sequentiallyCopy = sequentially;
  v20[4] = self;
  v21 = inSectionCopy;
  v22 = itemCopy;
  v23 = sourceCopy;
  v24 = sectionCopy;
  v16 = sectionCopy;
  v17 = sourceCopy;
  v18 = itemCopy;
  v19 = inSectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v20];
}

- (void)addDataSourceAtStart:(id)start section:(id)section sequentially:(BOOL)sequentially
{
  startCopy = start;
  sectionCopy = section;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67___MPSSILImplementation_addDataSourceAtStart_section_sequentially___block_invoke;
  v12[3] = &unk_1E7677EC8;
  sequentiallyCopy = sequentially;
  v12[4] = self;
  v13 = startCopy;
  v14 = sectionCopy;
  v10 = sectionCopy;
  v11 = startCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v12];
}

- (void)safelyReshuffleAfterItem:(id)item inSection:(id)section
{
  itemCopy = item;
  sectionCopy = section;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60___MPSSILImplementation_safelyReshuffleAfterItem_inSection___block_invoke;
  v10[3] = &unk_1E7678168;
  v10[4] = self;
  v11 = sectionCopy;
  v12 = itemCopy;
  v8 = itemCopy;
  v9 = sectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v10];
}

- (void)dequeueCandidatesWithQuota:(int64_t)quota
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52___MPSSILImplementation_dequeueCandidatesWithQuota___block_invoke;
  v3[3] = &unk_1E7678008;
  v3[4] = self;
  v3[5] = quota;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v3];
}

- (void)encodeWithCoder:(id)coder withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  v16.receiver = self;
  v16.super_class = _MPSSILImplementation;
  coderCopy = coder;
  [(MPSectionedIdentifierList *)&v16 encodeWithCoder:coderCopy withExclusiveAccessToken:tokenCopy];
  [tokenCopy assertHasExclusiveAccessForOwner:self];
  [coderCopy encodeObject:self->_candidateItems forKey:@"cani"];
  [coderCopy encodeObject:self->_randomDistribution forKey:@"rand"];
  v8 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count") - 1}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66___MPSSILImplementation_encodeWithCoder_withExclusiveAccessToken___block_invoke;
  v13[3] = &unk_1E7677FE0;
  v13[4] = self;
  v14 = tokenCopy;
  v15 = v9;
  v10 = v9;
  v11 = tokenCopy;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
  v12 = [v10 copy];
  [coderCopy encodeObject:v12 forKey:@"ssh"];

  [coderCopy encodeObject:self->_orderedSectionIDs forKey:@"osi"];
}

- (void)_beforeInitWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = _MPSSILImplementation;
  [(MPSectionedIdentifierList *)&v22 _beforeInitWithCoder:coderCopy];
  v5 = objc_alloc_init(_MPSSILImplementationInitToken);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ssh"];

  v10 = [(MPSectionedIdentifierList *)self _sectionHeadEntryMapWithExclusiveAccessToken:v5];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        sectionIdentifier = [v16 sectionIdentifier];
        [v10 setObject:v16 forKeyedSubscript:sectionIdentifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v13);
  }
}

- (_MPSSILImplementation)initWithCoder:(id)coder
{
  v39 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = _MPSSILImplementation;
  v5 = [(MPSectionedIdentifierList *)&v37 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v32 = coderCopy;
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"cani"];
    candidateItems = v5->_candidateItems;
    v5->_candidateItems = v9;

    v30 = objc_alloc_init(_MPSSILImplementationInitToken);
    v11 = [(MPSectionedIdentifierList *)v5 _sectionHeadEntryMapWithExclusiveAccessToken:?];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = v5;
    v12 = v5->_candidateItems;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          sectionIdentifier = [v17 sectionIdentifier];
          v19 = [v11 objectForKeyedSubscript:sectionIdentifier];
          identifiersItemEntryMap = [v19 identifiersItemEntryMap];
          itemIdentifier = [v17 itemIdentifier];
          [identifiersItemEntryMap setObject:v17 forKeyedSubscript:itemIdentifier];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    coderCopy = v32;
    v22 = [v32 decodeObjectOfClass:objc_opt_class() forKey:@"rand"];
    v5 = v31;
    randomDistribution = v31->_randomDistribution;
    v31->_randomDistribution = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v32 decodeObjectOfClasses:v26 forKey:@"osi"];
    orderedSectionIDs = v31->_orderedSectionIDs;
    v31->_orderedSectionIDs = v27;

    if (!v31->_orderedSectionIDs)
    {
      [(_MPSSILImplementation *)v31 _updateOrderedSectionIDsWithExclusiveAccessToken:v30];
    }
  }

  return v5;
}

- (_MPSSILImplementation)initWithSectionedIdentifierList:(id)list randomSource:(id)source startingItemEntry:(id)entry withExclusiveAccessToken:(id)token
{
  v58[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  sourceCopy = source;
  entryCopy = entry;
  tokenCopy = token;
  identifier = [listCopy identifier];
  v56.receiver = self;
  v56.super_class = _MPSSILImplementation;
  v15 = [(MPSectionedIdentifierList *)&v56 initWithIdentifier:identifier];

  v52 = v15;
  if (v15)
  {
    v49 = sourceCopy;
    v16 = objc_alloc_init(_MPSSILImplementationInitToken);
    v17 = [MPSectionedIdentifierListHeadEntry headEntryWithSectionIdentifier:@"🔀"];
    v18 = [(MPSectionedIdentifierList *)v15 _sectionHeadEntryMapWithExclusiveAccessToken:v16];
    [v18 setObject:v17 forKeyedSubscript:@"🔀"];

    v48 = v17;
    [(MPSectionedIdentifierList *)v52 _insertDataSourceHead:v17 afterEntry:0 withExclusiveAccessToken:v16];
    v58[0] = @"🔀";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    orderedSectionIDs = v52->_orderedSectionIDs;
    v52->_orderedSectionIDs = v19;

    [tokenCopy assertHasExclusiveAccessForOwner:listCopy];
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(listCopy, "_itemCountWithExclusiveAccessToken:", tokenCopy)}];
    candidateItems = v52->_candidateItems;
    v52->_candidateItems = v21;

    v23 = [listCopy _sectionHeadEntryMapWithExclusiveAccessToken:tokenCopy];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __113___MPSSILImplementation_initWithSectionedIdentifierList_randomSource_startingItemEntry_withExclusiveAccessToken___block_invoke;
    v53[3] = &unk_1E7677FB8;
    v24 = v52;
    v54 = v24;
    v25 = v16;
    v55 = v25;
    [v23 enumerateKeysAndObjectsUsingBlock:v53];

    v50 = listCopy;
    v26 = [listCopy enumeratorWithOptions:0x1000000 startPosition:0 endPosition:0 withExclusiveAccessToken:tokenCopy];
    v27 = [v26 nextObjectWithExclusiveAccessToken:tokenCopy];
    v51 = v25;
    if (v27)
    {
      v28 = v27;
      while ([v28 entryType] != 3)
      {
LABEL_13:
        v37 = [v26 nextObjectWithExclusiveAccessToken:tokenCopy];

        v28 = v37;
        if (!v37)
        {
          goto LABEL_14;
        }
      }

      itemResult = [v28 itemResult];
      itemIdentifier = [itemResult itemIdentifier];

      itemResult2 = [v28 itemResult];
      sectionIdentifier = [itemResult2 sectionIdentifier];

      sectionIdentifier2 = [entryCopy sectionIdentifier];
      if ([sectionIdentifier isEqual:sectionIdentifier2])
      {
        itemIdentifier2 = [entryCopy itemIdentifier];
        v35 = [itemIdentifier isEqual:itemIdentifier2];

        v25 = v51;
        if (v35)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
      }

      v36 = [(_MPSSILImplementation *)v24 _createShuffleCloneForItem:itemIdentifier inSection:sectionIdentifier withExclusiveAccessToken:v25];
      if (v36)
      {
        [(NSMutableArray *)v52->_candidateItems addObject:v36];
      }

      goto LABEL_12;
    }

LABEL_14:
    v38 = [MPRandomDistribution alloc];
    sourceCopy = v49;
    v39 = v49;
    if (!v49)
    {
      v39 = objc_alloc_init(MPARC4RandomSource);
    }

    v40 = [(MPRandomDistribution *)v38 initWithRandomSource:v39 lowestValue:0 highestValue:0x7FFFFFFFLL];
    randomDistribution = v24->_randomDistribution;
    v24->_randomDistribution = v40;

    if (!v49)
    {
    }

    v42 = +[MPShuffleableSectionedIdentifierList initialCandidateDequeueQuota];
    if (entryCopy)
    {
      itemIdentifier3 = [entryCopy itemIdentifier];
      sectionIdentifier3 = [entryCopy sectionIdentifier];
      v45 = [(_MPSSILImplementation *)v24 _createShuffleCloneForItem:itemIdentifier3 inSection:sectionIdentifier3 withExclusiveAccessToken:v51];

      v25 = v51;
      v57 = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      [(_MPSSILImplementation *)v24 _appendShuffledItems:v46 withExclusiveAccessToken:v51];

      if (v42 >= 2)
      {
        [(_MPSSILImplementation *)v24 _dequeueCandidatesWithQuota:v42 - 1 withExclusiveAccessToken:v51];
      }
    }

    else
    {
      [(_MPSSILImplementation *)v24 _dequeueCandidatesWithQuota:v42 withExclusiveAccessToken:v25];
    }

    listCopy = v50;
  }

  return v52;
}

@end
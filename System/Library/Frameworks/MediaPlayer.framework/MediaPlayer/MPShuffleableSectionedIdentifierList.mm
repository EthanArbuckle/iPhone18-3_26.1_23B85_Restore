@interface MPShuffleableSectionedIdentifierList
- (BOOL)hasSection:(id)section;
- (MPShuffleableSectionedIdentifierList)initWithCoder:(id)coder;
- (NSString)debugDescription;
- (id)_candidateItemsWithExclusiveAccessToken:(id)token;
- (id)_shuffledListWithExclusiveAccessToken:(id)token;
- (id)enumeratorWithOptions:(unint64_t)options startPosition:(id)position endPosition:(id)endPosition withExclusiveAccessToken:(id)token;
- (id)orderedSectionIdentifiers;
- (int64_t)_itemCountWithExclusiveAccessToken:(id)token;
- (void)_dequeueCandidatesWithQuota:(int64_t)quota withExclusiveAccessToken:(id)token;
- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially afterItem:(id)item inSection:(id)inSection completion:(id)completion;
- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially afterTailOfSection:(id)ofSection completion:(id)completion;
- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially beforeTailOfSection:(id)ofSection completion:(id)completion;
- (void)addDataSourceAtEnd:(id)end section:(id)section sequentially:(BOOL)sequentially completion:(id)completion;
- (void)addDataSourceAtStart:(id)start section:(id)section sequentially:(BOOL)sequentially completion:(id)completion;
- (void)dataSourceInsertItems:(id)items afterItem:(id)item inSection:(id)section;
- (void)dataSourceInsertItemsAtHead:(id)head inSection:(id)section;
- (void)dataSourceInsertItemsAtTail:(id)tail inSection:(id)section;
- (void)dataSourceReloadItems:(id)items inSection:(id)section;
- (void)dataSourceRemoveItems:(id)items fromSection:(id)section;
- (void)didDequeueShuffledItemsInSSIL:(id)l;
- (void)encodeWithCoder:(id)coder withExclusiveAccessToken:(id)token;
- (void)moveItem:(id)item fromSection:(id)section afterHeadOfSection:(id)ofSection;
- (void)moveItem:(id)item fromSection:(id)section afterItem:(id)afterItem inSection:(id)inSection;
- (void)moveItem:(id)item fromSection:(id)section afterTailOfSection:(id)ofSection;
- (void)moveItemToEnd:(id)end fromSection:(id)section;
- (void)moveItemToStart:(id)start fromSection:(id)section;
- (void)removeItem:(id)item fromSection:(id)section;
- (void)replaceDataSource:(id)source forSection:(id)section completion:(id)completion;
- (void)safelyReshuffleAfterItem:(id)item inSection:(id)section;
- (void)setShuffleType:(int64_t)type startingItem:(id)item inSection:(id)section randomSource:(id)source;
@end

@implementation MPShuffleableSectionedIdentifierList

- (id)orderedSectionIdentifiers
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MPShuffleableSectionedIdentifierList_orderedSectionIdentifiers__block_invoke;
  v6[3] = &unk_1E76783C0;
  v6[4] = self;
  orderedSectionIdentifiers = [(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnObject:v6];
  if (!orderedSectionIdentifiers)
  {
    v5.receiver = self;
    v5.super_class = MPShuffleableSectionedIdentifierList;
    orderedSectionIdentifiers = [(MPSectionedIdentifierList *)&v5 orderedSectionIdentifiers];
  }

  return orderedSectionIdentifiers;
}

id __65__MPShuffleableSectionedIdentifierList_orderedSectionIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  v3 = [v2 orderedSectionIdentifiers];

  return v3;
}

- (id)_shuffledListWithExclusiveAccessToken:(id)token
{
  [token assertHasExclusiveAccessForOwner:self];
  shuffledList = self->_shuffledList;

  return shuffledList;
}

- (void)_dequeueCandidatesWithQuota:(int64_t)quota withExclusiveAccessToken:(id)token
{
  v5 = [(MPShuffleableSectionedIdentifierList *)self _shuffledListWithExclusiveAccessToken:token];
  [v5 dequeueCandidatesWithQuota:quota];
}

- (id)_candidateItemsWithExclusiveAccessToken:(id)token
{
  v3 = [(MPShuffleableSectionedIdentifierList *)self _shuffledListWithExclusiveAccessToken:token];
  candidateItems = [v3 candidateItems];
  v5 = [candidateItems copy];

  return v5;
}

- (void)didDequeueShuffledItemsInSSIL:(id)l
{
  delegate = [(MPSectionedIdentifierList *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didDequeueShuffledItemsInSectionedIdentifierList:self];
  }
}

- (void)dataSourceReloadItems:(id)items inSection:(id)section
{
  itemsCopy = items;
  sectionCopy = section;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__MPShuffleableSectionedIdentifierList_dataSourceReloadItems_inSection___block_invoke;
  v11[3] = &unk_1E7678168;
  v11[4] = self;
  v12 = itemsCopy;
  v13 = sectionCopy;
  v8 = sectionCopy;
  v9 = itemsCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v11];
  v10.receiver = self;
  v10.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v10 dataSourceReloadItems:v9 inSection:v8];
}

void __72__MPShuffleableSectionedIdentifierList_dataSourceReloadItems_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 dataSourceReloadItems:*(a1 + 40) inSection:*(a1 + 48)];
}

- (void)dataSourceRemoveItems:(id)items fromSection:(id)section
{
  itemsCopy = items;
  sectionCopy = section;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__MPShuffleableSectionedIdentifierList_dataSourceRemoveItems_fromSection___block_invoke;
  v11[3] = &unk_1E7678168;
  v11[4] = self;
  v12 = itemsCopy;
  v13 = sectionCopy;
  v8 = sectionCopy;
  v9 = itemsCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v11];
  v10.receiver = self;
  v10.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v10 dataSourceRemoveItems:v9 fromSection:v8];
}

void __74__MPShuffleableSectionedIdentifierList_dataSourceRemoveItems_fromSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 dataSourceRemoveItems:*(a1 + 40) fromSection:*(a1 + 48)];
}

- (void)dataSourceInsertItemsAtTail:(id)tail inSection:(id)section
{
  tailCopy = tail;
  sectionCopy = section;
  if (![tailCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:388 description:{@"Invalid insertion (no item identifiers) in section: %@", sectionCopy}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__MPShuffleableSectionedIdentifierList_dataSourceInsertItemsAtTail_inSection___block_invoke;
  v13[3] = &unk_1E7678168;
  v13[4] = self;
  v14 = tailCopy;
  v15 = sectionCopy;
  v9 = sectionCopy;
  v10 = tailCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v13];
  v12.receiver = self;
  v12.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v12 dataSourceInsertItemsAtTail:v10 inSection:v9];
}

void __78__MPShuffleableSectionedIdentifierList_dataSourceInsertItemsAtTail_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 dataSourceInsertItemsAtTail:*(a1 + 40) inSection:*(a1 + 48)];
}

- (void)dataSourceInsertItems:(id)items afterItem:(id)item inSection:(id)section
{
  itemsCopy = items;
  itemCopy = item;
  sectionCopy = section;
  if (![itemsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:380 description:{@"Invalid insertion (no item identifiers) in section: %@", sectionCopy}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__MPShuffleableSectionedIdentifierList_dataSourceInsertItems_afterItem_inSection___block_invoke;
  v17[3] = &unk_1E7678280;
  v17[4] = self;
  v18 = itemsCopy;
  v19 = itemCopy;
  v20 = sectionCopy;
  v12 = sectionCopy;
  v13 = itemCopy;
  v14 = itemsCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v17];
  v16.receiver = self;
  v16.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v16 dataSourceInsertItems:v14 afterItem:v13 inSection:v12];
}

void __82__MPShuffleableSectionedIdentifierList_dataSourceInsertItems_afterItem_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 dataSourceInsertItems:*(a1 + 40) afterItem:*(a1 + 48) inSection:*(a1 + 56)];
}

- (void)dataSourceInsertItemsAtHead:(id)head inSection:(id)section
{
  headCopy = head;
  sectionCopy = section;
  if (![headCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:372 description:{@"Invalid insertion (no item identifiers) in section: %@", sectionCopy}];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__MPShuffleableSectionedIdentifierList_dataSourceInsertItemsAtHead_inSection___block_invoke;
  v13[3] = &unk_1E7678168;
  v13[4] = self;
  v14 = headCopy;
  v15 = sectionCopy;
  v9 = sectionCopy;
  v10 = headCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v13];
  v12.receiver = self;
  v12.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v12 dataSourceInsertItemsAtHead:v10 inSection:v9];
}

void __78__MPShuffleableSectionedIdentifierList_dataSourceInsertItemsAtHead_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 dataSourceInsertItemsAtHead:*(a1 + 40) inSection:*(a1 + 48)];
}

- (int64_t)_itemCountWithExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  v5 = [(MPShuffleableSectionedIdentifierList *)self _shuffledListWithExclusiveAccessToken:tokenCopy];
  v6 = v5;
  if (v5)
  {
    itemCount = [v5 itemCount];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MPShuffleableSectionedIdentifierList;
    itemCount = [(MPSectionedIdentifierList *)&v10 _itemCountWithExclusiveAccessToken:tokenCopy];
  }

  v8 = itemCount;

  return v8;
}

- (void)removeItem:(id)item fromSection:(id)section
{
  itemCopy = item;
  sectionCopy = section;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__MPShuffleableSectionedIdentifierList_removeItem_fromSection___block_invoke;
  v11[3] = &unk_1E7678168;
  v11[4] = self;
  v12 = itemCopy;
  v13 = sectionCopy;
  v8 = sectionCopy;
  v9 = itemCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v11];
  v10.receiver = self;
  v10.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v10 removeItem:v9 fromSection:v8];
}

void __63__MPShuffleableSectionedIdentifierList_removeItem_fromSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 removeItem:*(a1 + 40) fromSection:*(a1 + 48)];
}

- (void)moveItem:(id)item fromSection:(id)section afterTailOfSection:(id)ofSection
{
  itemCopy = item;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterTailOfSection___block_invoke;
  v16[3] = &unk_1E7677F90;
  v16[4] = self;
  v12 = ofSectionCopy;
  v17 = v12;
  v20 = a2;
  v13 = itemCopy;
  v18 = v13;
  v14 = sectionCopy;
  v19 = v14;
  if (![(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v16])
  {
    v15.receiver = self;
    v15.super_class = MPShuffleableSectionedIdentifierList;
    [(MPSectionedIdentifierList *)&v15 moveItem:v13 fromSection:v14 afterTailOfSection:v12];
  }
}

BOOL __80__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterTailOfSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  v4 = v3;
  if (v3)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __80__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterTailOfSection___block_invoke_2;
    v13 = &unk_1E7678258;
    v5 = v3;
    v14 = v5;
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v15 = v6;
    v16 = v8;
    v17 = v7;
    [v5 performWithExclusiveAccess:&v10];
    [v5 moveItem:*(a1 + 48) fromSection:*(a1 + 56) afterTailOfSection:{*(a1 + 40), v10, v11, v12, v13}];
  }

  return v4 != 0;
}

void __80__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterTailOfSection___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) _isSequentialSection:*(a1 + 40) withExclusiveAccessToken:a2] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:343 description:{@"Can only move after a section tail that is in the shuffled SIL: afterSectionIdentifier=%@", *(a1 + 40)}];
  }
}

- (void)moveItem:(id)item fromSection:(id)section afterHeadOfSection:(id)ofSection
{
  itemCopy = item;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterHeadOfSection___block_invoke;
  v16[3] = &unk_1E7677F90;
  v16[4] = self;
  v12 = ofSectionCopy;
  v17 = v12;
  v20 = a2;
  v13 = itemCopy;
  v18 = v13;
  v14 = sectionCopy;
  v19 = v14;
  if (![(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v16])
  {
    v15.receiver = self;
    v15.super_class = MPShuffleableSectionedIdentifierList;
    [(MPSectionedIdentifierList *)&v15 moveItem:v13 fromSection:v14 afterHeadOfSection:v12];
  }
}

BOOL __80__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterHeadOfSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  v4 = v3;
  if (v3)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __80__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterHeadOfSection___block_invoke_2;
    v13 = &unk_1E7678258;
    v5 = v3;
    v14 = v5;
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v15 = v6;
    v16 = v8;
    v17 = v7;
    [v5 performWithExclusiveAccess:&v10];
    [v5 moveItem:*(a1 + 48) fromSection:*(a1 + 56) afterHeadOfSection:{*(a1 + 40), v10, v11, v12, v13}];
  }

  return v4 != 0;
}

void __80__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterHeadOfSection___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) _isSequentialSection:*(a1 + 40) withExclusiveAccessToken:a2] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:326 description:{@"Can only move after a section head that is in the shuffled SIL: afterSectionIdentifier=%@", *(a1 + 40)}];
  }
}

- (void)moveItem:(id)item fromSection:(id)section afterItem:(id)afterItem inSection:(id)inSection
{
  itemCopy = item;
  sectionCopy = section;
  afterItemCopy = afterItem;
  inSectionCopy = inSection;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __81__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterItem_inSection___block_invoke;
  v19[3] = &unk_1E7677F68;
  v19[4] = self;
  v14 = itemCopy;
  v20 = v14;
  v15 = sectionCopy;
  v21 = v15;
  v16 = afterItemCopy;
  v22 = v16;
  v17 = inSectionCopy;
  v23 = v17;
  if (![(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v19])
  {
    v18.receiver = self;
    v18.super_class = MPShuffleableSectionedIdentifierList;
    [(MPSectionedIdentifierList *)&v18 moveItem:v14 fromSection:v15 afterItem:v16 inSection:v17];
  }
}

BOOL __81__MPShuffleableSectionedIdentifierList_moveItem_fromSection_afterItem_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  v4 = v3;
  if (v3)
  {
    [v3 moveItem:*(a1 + 40) fromSection:*(a1 + 48) afterItem:*(a1 + 56) inSection:*(a1 + 64)];
  }

  return v4 != 0;
}

- (void)moveItemToEnd:(id)end fromSection:(id)section
{
  endCopy = end;
  sectionCopy = section;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__MPShuffleableSectionedIdentifierList_moveItemToEnd_fromSection___block_invoke;
  v11[3] = &unk_1E7677F40;
  v11[4] = self;
  v8 = endCopy;
  v12 = v8;
  v9 = sectionCopy;
  v13 = v9;
  if (![(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v11])
  {
    v10.receiver = self;
    v10.super_class = MPShuffleableSectionedIdentifierList;
    [(MPSectionedIdentifierList *)&v10 moveItemToEnd:v8 fromSection:v9];
  }
}

BOOL __66__MPShuffleableSectionedIdentifierList_moveItemToEnd_fromSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  v4 = v3;
  if (v3)
  {
    [v3 moveItemToEnd:*(a1 + 40) fromSection:*(a1 + 48)];
  }

  return v4 != 0;
}

- (void)moveItemToStart:(id)start fromSection:(id)section
{
  startCopy = start;
  sectionCopy = section;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__MPShuffleableSectionedIdentifierList_moveItemToStart_fromSection___block_invoke;
  v11[3] = &unk_1E7677F40;
  v11[4] = self;
  v8 = startCopy;
  v12 = v8;
  v9 = sectionCopy;
  v13 = v9;
  if (![(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v11])
  {
    v10.receiver = self;
    v10.super_class = MPShuffleableSectionedIdentifierList;
    [(MPSectionedIdentifierList *)&v10 moveItemToStart:v8 fromSection:v9];
  }
}

BOOL __68__MPShuffleableSectionedIdentifierList_moveItemToStart_fromSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  v4 = v3;
  if (v3)
  {
    [v3 moveItemToStart:*(a1 + 40) fromSection:*(a1 + 48)];
  }

  return v4 != 0;
}

- (void)replaceDataSource:(id)source forSection:(id)section completion:(id)completion
{
  sourceCopy = source;
  sectionCopy = section;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__MPShuffleableSectionedIdentifierList_replaceDataSource_forSection_completion___block_invoke;
  v14[3] = &unk_1E7678168;
  v14[4] = self;
  v15 = sectionCopy;
  v16 = sourceCopy;
  v10 = sourceCopy;
  v11 = sectionCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v14];
  v13.receiver = self;
  v13.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v13 replaceDataSource:v10 forSection:v11 completion:completionCopy];
}

void __80__MPShuffleableSectionedIdentifierList_replaceDataSource_forSection_completion___block_invoke(id *a1, uint64_t a2)
{
  v3 = [a1[4] _shuffledListWithExclusiveAccessToken:a2];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __80__MPShuffleableSectionedIdentifierList_replaceDataSource_forSection_completion___block_invoke_2;
    v5[3] = &unk_1E7678168;
    v6 = v3;
    v7 = a1[5];
    v8 = a1[6];
    [v6 performWithExclusiveAccess:v5];
  }
}

void __80__MPShuffleableSectionedIdentifierList_replaceDataSource_forSection_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:a2];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  [v4 setDataSource:*(a1 + 48)];
}

- (void)addDataSourceAtEnd:(id)end section:(id)section sequentially:(BOOL)sequentially completion:(id)completion
{
  endCopy = end;
  sectionCopy = section;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__MPShuffleableSectionedIdentifierList_addDataSourceAtEnd_section_sequentially_completion___block_invoke;
  v16[3] = &unk_1E7677EC8;
  v16[4] = self;
  v17 = endCopy;
  v18 = sectionCopy;
  sequentiallyCopy = sequentially;
  v12 = sectionCopy;
  v13 = endCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v16];
  v15.receiver = self;
  v15.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v15 addDataSourceAtEnd:v13 section:v12 completion:completionCopy];
}

void __91__MPShuffleableSectionedIdentifierList_addDataSourceAtEnd_section_sequentially_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 addDataSourceAtEnd:*(a1 + 40) section:*(a1 + 48) sequentially:*(a1 + 56)];
}

- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially beforeTailOfSection:(id)ofSection completion:(id)completion
{
  sourceCopy = source;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__MPShuffleableSectionedIdentifierList_addDataSource_section_sequentially_beforeTailOfSection_completion___block_invoke;
  v20[3] = &unk_1E7677F18;
  v20[4] = self;
  v21 = sourceCopy;
  sequentiallyCopy = sequentially;
  v22 = sectionCopy;
  v23 = ofSectionCopy;
  v15 = ofSectionCopy;
  v16 = sectionCopy;
  v17 = sourceCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v20];
  v19.receiver = self;
  v19.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v19 addDataSource:v17 section:v16 beforeTailOfSection:v15 completion:completionCopy];
}

void __106__MPShuffleableSectionedIdentifierList_addDataSource_section_sequentially_beforeTailOfSection_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 addDataSource:*(a1 + 40) section:*(a1 + 48) sequentially:*(a1 + 64) beforeTailOfSection:*(a1 + 56)];
}

- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially afterTailOfSection:(id)ofSection completion:(id)completion
{
  sourceCopy = source;
  sectionCopy = section;
  ofSectionCopy = ofSection;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __105__MPShuffleableSectionedIdentifierList_addDataSource_section_sequentially_afterTailOfSection_completion___block_invoke;
  v20[3] = &unk_1E7677F18;
  v20[4] = self;
  v21 = sourceCopy;
  sequentiallyCopy = sequentially;
  v22 = sectionCopy;
  v23 = ofSectionCopy;
  v15 = ofSectionCopy;
  v16 = sectionCopy;
  v17 = sourceCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v20];
  v19.receiver = self;
  v19.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v19 addDataSource:v17 section:v16 afterTailOfSection:v15 completion:completionCopy];
}

void __105__MPShuffleableSectionedIdentifierList_addDataSource_section_sequentially_afterTailOfSection_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 addDataSource:*(a1 + 40) section:*(a1 + 48) sequentially:*(a1 + 64) afterTailOfSection:*(a1 + 56)];
}

- (void)addDataSource:(id)source section:(id)section sequentially:(BOOL)sequentially afterItem:(id)item inSection:(id)inSection completion:(id)completion
{
  sourceCopy = source;
  sectionCopy = section;
  itemCopy = item;
  inSectionCopy = inSection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __106__MPShuffleableSectionedIdentifierList_addDataSource_section_sequentially_afterItem_inSection_completion___block_invoke;
  v24[3] = &unk_1E7677EF0;
  v24[4] = self;
  v25 = sourceCopy;
  sequentiallyCopy = sequentially;
  v26 = sectionCopy;
  v27 = itemCopy;
  v28 = inSectionCopy;
  v18 = inSectionCopy;
  v19 = itemCopy;
  v20 = sectionCopy;
  v21 = sourceCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v24];
  v23.receiver = self;
  v23.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v23 addDataSource:v21 section:v20 afterItem:v19 inSection:v18 completion:completionCopy];
}

void __106__MPShuffleableSectionedIdentifierList_addDataSource_section_sequentially_afterItem_inSection_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 addDataSource:*(a1 + 40) section:*(a1 + 48) sequentially:*(a1 + 72) afterItem:*(a1 + 56) inSection:*(a1 + 64)];
}

- (void)addDataSourceAtStart:(id)start section:(id)section sequentially:(BOOL)sequentially completion:(id)completion
{
  startCopy = start;
  sectionCopy = section;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__MPShuffleableSectionedIdentifierList_addDataSourceAtStart_section_sequentially_completion___block_invoke;
  v16[3] = &unk_1E7677EC8;
  v16[4] = self;
  v17 = startCopy;
  v18 = sectionCopy;
  sequentiallyCopy = sequentially;
  v12 = sectionCopy;
  v13 = startCopy;
  completionCopy = completion;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v16];
  v15.receiver = self;
  v15.super_class = MPShuffleableSectionedIdentifierList;
  [(MPSectionedIdentifierList *)&v15 addDataSourceAtStart:v13 section:v12 completion:completionCopy];
}

void __93__MPShuffleableSectionedIdentifierList_addDataSourceAtStart_section_sequentially_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  [v3 addDataSourceAtStart:*(a1 + 40) section:*(a1 + 48) sequentially:*(a1 + 56)];
}

- (id)enumeratorWithOptions:(unint64_t)options startPosition:(id)position endPosition:(id)endPosition withExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  endPositionCopy = endPosition;
  positionCopy = position;
  v13 = [(MPShuffleableSectionedIdentifierList *)self _shuffledListWithExclusiveAccessToken:tokenCopy];
  v14 = v13;
  if ((options & 0x1000000) != 0 || !v13)
  {
    v18.receiver = self;
    v18.super_class = MPShuffleableSectionedIdentifierList;
    v15 = [(MPSectionedIdentifierList *)&v18 enumeratorWithOptions:options startPosition:positionCopy endPosition:endPositionCopy withExclusiveAccessToken:tokenCopy];
  }

  else
  {
    v15 = [v13 enumeratorWithOptions:options startPosition:positionCopy endPosition:endPositionCopy];
  }

  v16 = v15;

  return v16;
}

- (BOOL)hasSection:(id)section
{
  sectionCopy = section;
  if ([sectionCopy isEqualToString:@"🔀"])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__MPShuffleableSectionedIdentifierList_hasSection___block_invoke;
    v9[3] = &unk_1E7677EA0;
    v9[4] = self;
    v5 = [(MPSectionedIdentifierList *)self performWithExclusiveAccessAndReturnBOOL:v9];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MPShuffleableSectionedIdentifierList;
    v5 = [(MPSectionedIdentifierList *)&v8 hasSection:sectionCopy];
  }

  v6 = v5;

  return v6;
}

BOOL __51__MPShuffleableSectionedIdentifierList_hasSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _shuffledListWithExclusiveAccessToken:a2];
  v3 = v2 != 0;

  return v3;
}

- (void)safelyReshuffleAfterItem:(id)item inSection:(id)section
{
  itemCopy = item;
  sectionCopy = section;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__MPShuffleableSectionedIdentifierList_safelyReshuffleAfterItem_inSection___block_invoke;
  v10[3] = &unk_1E7678168;
  v10[4] = self;
  v11 = itemCopy;
  v12 = sectionCopy;
  v8 = sectionCopy;
  v9 = itemCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v10];
}

void __75__MPShuffleableSectionedIdentifierList_safelyReshuffleAfterItem_inSection___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if (v3[13])
  {
    v4 = [v3 _shuffledListWithExclusiveAccessToken:a2];
    [v4 safelyReshuffleAfterItem:a1[5] inSection:a1[6]];
  }
}

- (void)setShuffleType:(int64_t)type startingItem:(id)item inSection:(id)section randomSource:(id)source
{
  itemCopy = item;
  sectionCopy = section;
  sourceCopy = source;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__MPShuffleableSectionedIdentifierList_setShuffleType_startingItem_inSection_randomSource___block_invoke;
  v17[3] = &unk_1E76780F0;
  v17[4] = self;
  v18 = sectionCopy;
  v19 = itemCopy;
  v20 = sourceCopy;
  typeCopy = type;
  v22 = a2;
  v14 = sourceCopy;
  v15 = itemCopy;
  v16 = sectionCopy;
  [(MPSectionedIdentifierList *)self performWithExclusiveAccess:v17];
}

void __91__MPShuffleableSectionedIdentifierList_setShuffleType_startingItem_inSection_randomSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v28 = v3;
  if (v4[13] == v5)
  {
    v6 = v4[14];
    if (v6 == *(a1 + 40))
    {
      v7 = [v6 isEqual:?];
      v4 = *(a1 + 32);
      if (v7)
      {
        v8 = v4[15];
        v3 = v28;
        if (v8 == *(a1 + 48))
        {
          v9 = [v8 isEqual:?];
          v3 = v28;
          if (v9)
          {
            goto LABEL_19;
          }

          v4 = *(a1 + 32);
        }
      }

      else
      {
        v3 = v28;
      }
    }

    v5 = *(a1 + 64);
  }

  v4[13] = v5;
  if ((v5 - 1) < 2)
  {
    v16 = *(a1 + 32);
    v17 = *(v16 + 96);
    *(v16 + 96) = 0;

    v18 = [*(a1 + 40) copy];
    v19 = *(a1 + 32);
    v20 = *(v19 + 112);
    *(v19 + 112) = v18;

    v21 = [*(a1 + 48) copy];
    v22 = *(a1 + 32);
    v23 = *(v22 + 120);
    *(v22 + 120) = v21;

    v24 = *(a1 + 48);
    if (v24)
    {
      v15 = [*(a1 + 32) _itemEntry:v24 sectionIdentifier:*(a1 + 40) withExclusiveAccessToken:v28];
    }

    else
    {
      v15 = 0;
    }

    v25 = [[_MPSSILImplementation alloc] initWithSectionedIdentifierList:*(a1 + 32) randomSource:*(a1 + 56) startingItemEntry:v15 withExclusiveAccessToken:v28];
    v26 = *(a1 + 32);
    v27 = *(v26 + 96);
    *(v26 + 96) = v25;

    [*(*(a1 + 32) + 96) setDelegate:?];
  }

  else if (v5 == 1000)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"MPShuffleableSectionedIdentifierList.m" lineNumber:164 description:@"Unsupported shuffle type: MPShuffleTypeUserDefault"];
  }

  else
  {
    if (v5)
    {
      goto LABEL_19;
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 96);
    *(v10 + 96) = 0;

    v12 = *(a1 + 32);
    v13 = *(v12 + 120);
    *(v12 + 120) = 0;

    v14 = *(a1 + 32);
    v15 = *(v14 + 112);
    *(v14 + 112) = 0;
  }

  v3 = v28;
LABEL_19:
}

- (void)encodeWithCoder:(id)coder withExclusiveAccessToken:(id)token
{
  v8.receiver = self;
  v8.super_class = MPShuffleableSectionedIdentifierList;
  tokenCopy = token;
  coderCopy = coder;
  [(MPSectionedIdentifierList *)&v8 encodeWithCoder:coderCopy withExclusiveAccessToken:tokenCopy];
  [tokenCopy assertHasExclusiveAccessForOwner:{self, v8.receiver, v8.super_class}];

  [coderCopy encodeInteger:self->_shuffleType forKey:@"st"];
  [coderCopy encodeObject:self->_shuffledList forKey:@"sl"];
  [coderCopy encodeObject:self->_shuffleStartingSectionIdentifier forKey:@"ssi"];
  [coderCopy encodeObject:self->_shuffleStartingSectionIdentifier forKey:@"sii"];
}

- (MPShuffleableSectionedIdentifierList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MPShuffleableSectionedIdentifierList;
  v5 = [(MPSectionedIdentifierList *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shuffleType = [coderCopy decodeIntegerForKey:@"st"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sl"];
    shuffledList = v5->_shuffledList;
    v5->_shuffledList = v6;

    [(MPSectionedIdentifierList *)v5->_shuffledList setDelegate:v5];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ssi"];
    shuffleStartingSectionIdentifier = v5->_shuffleStartingSectionIdentifier;
    v5->_shuffleStartingSectionIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sii"];
    shuffleStartingItemIdentifier = v5->_shuffleStartingItemIdentifier;
    v5->_shuffleStartingItemIdentifier = v10;
  }

  return v5;
}

- (NSString)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12985;
  v9 = __Block_byref_object_dispose__12986;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__MPShuffleableSectionedIdentifierList_Debugging__debugDescription__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPSectionedIdentifierList _performWithoutRequiringExclusivity:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __67__MPShuffleableSectionedIdentifierList_Debugging__debugDescription__block_invoke(uint64_t a1)
{
  v1 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) enumeratorWithOptions:23];
  v45 = 0;
  v46 = 0;
  v3 = [*(v1 + 32) _debugDescriptionWithEnumerator:v2 lengths:&v45];
  v4 = [v3 mutableCopy];
  v5 = *(*(v1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(v1 + 32);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __67__MPShuffleableSectionedIdentifierList_Debugging__debugDescription__block_invoke_2;
  v44[3] = &unk_1E76783C0;
  v44[4] = v7;
  v8 = [v7 performWithExclusiveAccessAndReturnObject:v44];
  if ([v8 count])
  {
    v33 = v2;
    [*(*(*(v1 + 40) + 8) + 40) appendString:@"\n┏◀ 🔀 Candidates"];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = v8;
    obj = v8;
    v36 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v36)
    {
      v35 = *v41;
      v9 = &stru_1F149ECA8;
      do
      {
        v10 = 0;
        do
        {
          if (*v41 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v40 + 1) + 8 * v10);
          context = objc_autoreleasePoolPush();
          v12 = MEMORY[0x1E696AEC0];
          v13 = [v11 itemIdentifier];
          v14 = [v12 stringWithFormat:@"- %@", v13];

          v15 = [*(v1 + 32) annotationDelegate];
          v16 = v9;
          if (objc_opt_respondsToSelector())
          {
            v17 = [v11 itemIdentifier];
            v18 = [v11 sectionIdentifier];
            v19 = [v15 debugDescriptionForItem:v17 inSection:v18];

            if (v19)
            {
              v16 = v19;
            }

            else
            {
              v16 = v9;
            }
          }

          v20 = *(*(*(v1 + 40) + 8) + 40);
          v21 = [@"┣◉ ITEM" stringByPaddingToLength:v45 withString:@" " startingAtIndex:0];
          v22 = [v11 sectionIdentifier];
          [v22 stringByPaddingToLength:SHIDWORD(v45) withString:@" " startingAtIndex:0];
          v23 = v38 = v15;
          [v14 stringByPaddingToLength:v46 withString:@" " startingAtIndex:0];
          v37 = v14;
          v25 = v24 = v1;
          [(__CFString *)v9 stringByPaddingToLength:SHIDWORD(v46) withString:@" " startingAtIndex:0];
          v27 = v26 = v9;
          [v20 appendFormat:@"\n%@ %@ %@ %@ %@", v21, v23, v25, v27, v16, 0];

          v9 = v26;
          v1 = v24;

          objc_autoreleasePoolPop(context);
          ++v10;
        }

        while (v36 != v10);
        v36 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v36);
    }

    [*(*(*(v1 + 40) + 8) + 40) appendString:@"\n┗◁ 🔀 Candidates"];
    v8 = v32;
    v2 = v33;
  }

  if ([*(v1 + 32) shuffleType])
  {
    v28 = [*(v1 + 32) enumeratorWithOptions:16777239];
    [*(*(*(v1 + 40) + 8) + 40) appendString:@"\n"];
    v29 = *(v1 + 32);
    v30 = *(*(*(v1 + 40) + 8) + 40);
    v31 = [v29 _debugDescriptionWithEnumerator:v28 lengths:0];
    [v30 appendString:v31];
  }
}

@end
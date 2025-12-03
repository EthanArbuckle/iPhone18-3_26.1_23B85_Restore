@interface _MPIdentifierListSectionProxy
- (MPSectionedIdentifierList)sectionedIdentifierList;
- (NSArray)itemIdentifiers;
- (_MPIdentifierListSectionProxy)initWithSection:(id)section sectionedIdentifierList:(id)list existingItemIdentifiers:(id)identifiers;
- (void)applyChanges:(id)changes itemLookupBlock:(id)block;
- (void)insertItems:(id)items afterItem:(id)item;
- (void)insertItemsAtHead:(id)head;
- (void)insertItemsAtTail:(id)tail;
- (void)moveItem:(id)item afterItem:(id)afterItem;
- (void)moveItemToHead:(id)head;
- (void)moveItemToTail:(id)tail;
- (void)removeItems:(id)items;
- (void)updateItems:(id)items;
- (void)updateSection;
@end

@implementation _MPIdentifierListSectionProxy

- (MPSectionedIdentifierList)sectionedIdentifierList
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);

  return WeakRetained;
}

- (void)applyChanges:(id)changes itemLookupBlock:(id)block
{
  v38 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  blockCopy = block;
  if ([changesCopy hasChanges])
  {
    WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
    v9 = os_log_create("com.apple.amp.mediaplayer", "SIL");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sectionIdentifier = self->_sectionIdentifier;
      *buf = 138543618;
      v35 = sectionIdentifier;
      v36 = 2114;
      v37 = changesCopy;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] applyChanges:… | begin transaction [] changes=%{public}@", buf, 0x16u);
    }

    [WeakRetained dataSourceBeginTransactionForSection:self->_sectionIdentifier];
    mutableItemIdentifiers = self->_mutableItemIdentifiers;
    updatedIndexes = [changesCopy updatedIndexes];
    v13 = [(NSMutableArray *)mutableItemIdentifiers objectsAtIndexes:updatedIndexes];
    v14 = [v13 mutableCopy];

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62___MPIdentifierListSectionProxy_applyChanges_itemLookupBlock___block_invoke;
    v29[3] = &unk_1E7678348;
    v16 = v15;
    v30 = v16;
    selfCopy = self;
    v17 = blockCopy;
    v33 = v17;
    v18 = v14;
    v32 = v18;
    [changesCopy enumerateMovesUsingBlock:v29];
    if ([v18 count])
    {
      [(_MPIdentifierListSectionProxy *)self updateItems:v18];
    }

    v19 = self->_mutableItemIdentifiers;
    deletedIndexes = [changesCopy deletedIndexes];
    v21 = [(NSMutableArray *)v19 objectsAtIndexes:deletedIndexes];

    insertedIndexes = [changesCopy insertedIndexes];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __62___MPIdentifierListSectionProxy_applyChanges_itemLookupBlock___block_invoke_2;
    v27[3] = &unk_1E7678370;
    v27[4] = self;
    v28 = v17;
    [insertedIndexes enumerateRangesUsingBlock:v27];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __62___MPIdentifierListSectionProxy_applyChanges_itemLookupBlock___block_invoke_3;
    v26[3] = &unk_1E7681A30;
    v26[4] = self;
    [v16 enumerateKeysAndObjectsUsingBlock:v26];
    if ([v21 count])
    {
      [(_MPIdentifierListSectionProxy *)self removeItems:v21];
    }

    [WeakRetained dataSourceEndTransactionForSection:self->_sectionIdentifier];
    v23 = os_log_create("com.apple.amp.mediaplayer", "SIL");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_sectionIdentifier;
      *buf = 138543618;
      v35 = v24;
      v36 = 2114;
      v37 = changesCopy;
      _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] applyChanges:… | end transaction [] changes=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    WeakRetained = os_log_create("com.apple.amp.mediaplayer", "SIL");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_sectionIdentifier;
      *buf = 138543618;
      v35 = v25;
      v36 = 2114;
      v37 = changesCopy;
      _os_log_impl(&dword_1A238D000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] applyChanges:… | ignoring [no changes] changes=%{public}@", buf, 0x16u);
    }
  }
}

- (NSArray)itemIdentifiers
{
  v2 = [(NSMutableArray *)self->_mutableItemIdentifiers copy];

  return v2;
}

- (void)updateItems:(id)items
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v7 = [itemsCopy count];
    msv_compactDescription = [itemsCopy msv_compactDescription];
    v10 = 138543874;
    v11 = sectionIdentifier;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = msv_compactDescription;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] updateItems:(:%lld)[%{public}@]", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceReloadItems:itemsCopy inSection:self->_sectionIdentifier];
}

- (void)updateSection
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v6 = 138543362;
    v7 = sectionIdentifier;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] updateSection", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceUpdateSection:self->_sectionIdentifier];
}

- (void)removeItems:(id)items
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v7 = [itemsCopy count];
    msv_compactDescription = [itemsCopy msv_compactDescription];
    v10 = 138543874;
    v11 = sectionIdentifier;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = msv_compactDescription;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] removeItems:(:%lld)[%{public}@]", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceRemoveItems:itemsCopy fromSection:self->_sectionIdentifier];

  [(NSMutableArray *)self->_mutableItemIdentifiers removeObjectsInArray:itemsCopy];
}

- (void)moveItemToTail:(id)tail
{
  v12 = *MEMORY[0x1E69E9840];
  tailCopy = tail;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v8 = 138543618;
    v9 = sectionIdentifier;
    v10 = 2114;
    v11 = tailCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] moveItemToTail:%{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceMoveItemToTail:tailCopy inSection:self->_sectionIdentifier];

  [(NSMutableArray *)self->_mutableItemIdentifiers removeObject:tailCopy];
  [(NSMutableArray *)self->_mutableItemIdentifiers addObject:tailCopy];
}

- (void)moveItem:(id)item afterItem:(id)afterItem
{
  v23 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  afterItemCopy = afterItem;
  v9 = [itemCopy isEqualToString:afterItemCopy];
  v10 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      sectionIdentifier = self->_sectionIdentifier;
      *buf = 138543874;
      v18 = sectionIdentifier;
      v19 = 2114;
      v20 = itemCopy;
      v21 = 2114;
      v22 = afterItemCopy;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] moveItem:%{public}@ afterItem:%{public}@ | ignoring [declaration doesn't declare anything]", buf, 0x20u);
    }
  }

  else
  {
    if (v11)
    {
      v13 = self->_sectionIdentifier;
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = itemCopy;
      v21 = 2114;
      v22 = afterItemCopy;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] moveItem:%{public}@ afterItem:%{public}@", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
    [WeakRetained dataSourceMoveItem:itemCopy afterItem:afterItemCopy inSection:self->_sectionIdentifier];

    [(NSMutableArray *)self->_mutableItemIdentifiers removeObject:itemCopy];
    v15 = [(NSMutableArray *)self->_mutableItemIdentifiers indexOfObject:afterItemCopy];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:1172 description:{@"Did not find item %@ to move after.", afterItemCopy}];
    }

    [(NSMutableArray *)self->_mutableItemIdentifiers insertObject:itemCopy atIndex:v15 + 1];
  }
}

- (void)moveItemToHead:(id)head
{
  v12 = *MEMORY[0x1E69E9840];
  headCopy = head;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v8 = 138543618;
    v9 = sectionIdentifier;
    v10 = 2114;
    v11 = headCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] moveItemToHead:%{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceMoveItemToHead:headCopy inSection:self->_sectionIdentifier];

  [(NSMutableArray *)self->_mutableItemIdentifiers removeObject:headCopy];
  [(NSMutableArray *)self->_mutableItemIdentifiers insertObject:headCopy atIndex:0];
}

- (void)insertItemsAtTail:(id)tail
{
  v16 = *MEMORY[0x1E69E9840];
  tailCopy = tail;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v7 = [tailCopy count];
    msv_compactDescription = [tailCopy msv_compactDescription];
    v10 = 138543874;
    v11 = sectionIdentifier;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = msv_compactDescription;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] insertItemsAtTail:(:%lld)[%{public}@]", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceInsertItemsAtTail:tailCopy inSection:self->_sectionIdentifier];

  [(NSMutableArray *)self->_mutableItemIdentifiers addObjectsFromArray:tailCopy];
}

- (void)insertItems:(id)items afterItem:(id)item
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemCopy = item;
  v9 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v11 = [itemsCopy count];
    msv_compactDescription = [itemsCopy msv_compactDescription];
    *buf = 138544130;
    v19 = sectionIdentifier;
    v20 = 2114;
    v21 = itemCopy;
    v22 = 2048;
    v23 = v11;
    v24 = 2114;
    v25 = msv_compactDescription;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] insertItems:… afterItem:%{public}@ | [] items=(:%lld)[%{public}@]", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceInsertItems:itemsCopy afterItem:itemCopy inSection:self->_sectionIdentifier];

  v14 = [(NSMutableArray *)self->_mutableItemIdentifiers indexOfObject:itemCopy];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:1146 description:{@"Did not find item %@ to insert after.", itemCopy}];
  }

  mutableItemIdentifiers = self->_mutableItemIdentifiers;
  v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v14 + 1, objc_msgSend(itemsCopy, "count")}];
  [(NSMutableArray *)mutableItemIdentifiers insertObjects:itemsCopy atIndexes:v16];
}

- (void)insertItemsAtHead:(id)head
{
  v18 = *MEMORY[0x1E69E9840];
  headCopy = head;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v7 = [headCopy count];
    msv_compactDescription = [headCopy msv_compactDescription];
    v12 = 138543874;
    v13 = sectionIdentifier;
    v14 = 2048;
    v15 = v7;
    v16 = 2114;
    v17 = msv_compactDescription;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] insertItemsAtHead:(:%lld)[%{public}@]", &v12, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceInsertItemsAtHead:headCopy inSection:self->_sectionIdentifier];

  mutableItemIdentifiers = self->_mutableItemIdentifiers;
  v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(headCopy, "count")}];
  [(NSMutableArray *)mutableItemIdentifiers insertObjects:headCopy atIndexes:v11];
}

- (_MPIdentifierListSectionProxy)initWithSection:(id)section sectionedIdentifierList:(id)list existingItemIdentifiers:(id)identifiers
{
  v30 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  listCopy = list;
  identifiersCopy = identifiers;
  v21.receiver = self;
  v21.super_class = _MPIdentifierListSectionProxy;
  v11 = [(_MPIdentifierListSectionProxy *)&v21 init];
  if (v11)
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "SIL");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [listCopy identifier];
      v14 = [identifiersCopy count];
      msv_compactDescription = [identifiersCopy msv_compactDescription];
      *buf = 138544130;
      v23 = sectionCopy;
      v24 = 2114;
      v25 = identifier;
      v26 = 2048;
      v27 = v14;
      v28 = 2114;
      v29 = msv_compactDescription;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] init | [] sil=%{public}@ items=(:%lld)[%{public}@]", buf, 0x2Au);
    }

    v16 = [sectionCopy copy];
    sectionIdentifier = v11->_sectionIdentifier;
    v11->_sectionIdentifier = v16;

    objc_storeWeak(&v11->_sectionedIdentifierList, listCopy);
    v18 = [identifiersCopy mutableCopy];
    mutableItemIdentifiers = v11->_mutableItemIdentifiers;
    v11->_mutableItemIdentifiers = v18;
  }

  return v11;
}

@end
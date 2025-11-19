@interface _MPIdentifierListSectionProxy
- (MPSectionedIdentifierList)sectionedIdentifierList;
- (NSArray)itemIdentifiers;
- (_MPIdentifierListSectionProxy)initWithSection:(id)a3 sectionedIdentifierList:(id)a4 existingItemIdentifiers:(id)a5;
- (void)applyChanges:(id)a3 itemLookupBlock:(id)a4;
- (void)insertItems:(id)a3 afterItem:(id)a4;
- (void)insertItemsAtHead:(id)a3;
- (void)insertItemsAtTail:(id)a3;
- (void)moveItem:(id)a3 afterItem:(id)a4;
- (void)moveItemToHead:(id)a3;
- (void)moveItemToTail:(id)a3;
- (void)removeItems:(id)a3;
- (void)updateItems:(id)a3;
- (void)updateSection;
@end

@implementation _MPIdentifierListSectionProxy

- (MPSectionedIdentifierList)sectionedIdentifierList
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);

  return WeakRetained;
}

- (void)applyChanges:(id)a3 itemLookupBlock:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 hasChanges])
  {
    WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
    v9 = os_log_create("com.apple.amp.mediaplayer", "SIL");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sectionIdentifier = self->_sectionIdentifier;
      *buf = 138543618;
      v35 = sectionIdentifier;
      v36 = 2114;
      v37 = v6;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] applyChanges:… | begin transaction [] changes=%{public}@", buf, 0x16u);
    }

    [WeakRetained dataSourceBeginTransactionForSection:self->_sectionIdentifier];
    mutableItemIdentifiers = self->_mutableItemIdentifiers;
    v12 = [v6 updatedIndexes];
    v13 = [(NSMutableArray *)mutableItemIdentifiers objectsAtIndexes:v12];
    v14 = [v13 mutableCopy];

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62___MPIdentifierListSectionProxy_applyChanges_itemLookupBlock___block_invoke;
    v29[3] = &unk_1E7678348;
    v16 = v15;
    v30 = v16;
    v31 = self;
    v17 = v7;
    v33 = v17;
    v18 = v14;
    v32 = v18;
    [v6 enumerateMovesUsingBlock:v29];
    if ([v18 count])
    {
      [(_MPIdentifierListSectionProxy *)self updateItems:v18];
    }

    v19 = self->_mutableItemIdentifiers;
    v20 = [v6 deletedIndexes];
    v21 = [(NSMutableArray *)v19 objectsAtIndexes:v20];

    v22 = [v6 insertedIndexes];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __62___MPIdentifierListSectionProxy_applyChanges_itemLookupBlock___block_invoke_2;
    v27[3] = &unk_1E7678370;
    v27[4] = self;
    v28 = v17;
    [v22 enumerateRangesUsingBlock:v27];

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
      v37 = v6;
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
      v37 = v6;
      _os_log_impl(&dword_1A238D000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] applyChanges:… | ignoring [no changes] changes=%{public}@", buf, 0x16u);
    }
  }
}

- (NSArray)itemIdentifiers
{
  v2 = [(NSMutableArray *)self->_mutableItemIdentifiers copy];

  return v2;
}

- (void)updateItems:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v7 = [v4 count];
    v8 = [v4 msv_compactDescription];
    v10 = 138543874;
    v11 = sectionIdentifier;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] updateItems:(:%lld)[%{public}@]", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceReloadItems:v4 inSection:self->_sectionIdentifier];
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

- (void)removeItems:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v7 = [v4 count];
    v8 = [v4 msv_compactDescription];
    v10 = 138543874;
    v11 = sectionIdentifier;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] removeItems:(:%lld)[%{public}@]", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceRemoveItems:v4 fromSection:self->_sectionIdentifier];

  [(NSMutableArray *)self->_mutableItemIdentifiers removeObjectsInArray:v4];
}

- (void)moveItemToTail:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v8 = 138543618;
    v9 = sectionIdentifier;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] moveItemToTail:%{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceMoveItemToTail:v4 inSection:self->_sectionIdentifier];

  [(NSMutableArray *)self->_mutableItemIdentifiers removeObject:v4];
  [(NSMutableArray *)self->_mutableItemIdentifiers addObject:v4];
}

- (void)moveItem:(id)a3 afterItem:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 isEqualToString:v8];
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
      v20 = v7;
      v21 = 2114;
      v22 = v8;
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
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] moveItem:%{public}@ afterItem:%{public}@", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
    [WeakRetained dataSourceMoveItem:v7 afterItem:v8 inSection:self->_sectionIdentifier];

    [(NSMutableArray *)self->_mutableItemIdentifiers removeObject:v7];
    v15 = [(NSMutableArray *)self->_mutableItemIdentifiers indexOfObject:v8];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:1172 description:{@"Did not find item %@ to move after.", v8}];
    }

    [(NSMutableArray *)self->_mutableItemIdentifiers insertObject:v7 atIndex:v15 + 1];
  }
}

- (void)moveItemToHead:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v8 = 138543618;
    v9 = sectionIdentifier;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] moveItemToHead:%{public}@", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceMoveItemToHead:v4 inSection:self->_sectionIdentifier];

  [(NSMutableArray *)self->_mutableItemIdentifiers removeObject:v4];
  [(NSMutableArray *)self->_mutableItemIdentifiers insertObject:v4 atIndex:0];
}

- (void)insertItemsAtTail:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v7 = [v4 count];
    v8 = [v4 msv_compactDescription];
    v10 = 138543874;
    v11 = sectionIdentifier;
    v12 = 2048;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] insertItemsAtTail:(:%lld)[%{public}@]", &v10, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceInsertItemsAtTail:v4 inSection:self->_sectionIdentifier];

  [(NSMutableArray *)self->_mutableItemIdentifiers addObjectsFromArray:v4];
}

- (void)insertItems:(id)a3 afterItem:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v11 = [v7 count];
    v12 = [v7 msv_compactDescription];
    *buf = 138544130;
    v19 = sectionIdentifier;
    v20 = 2114;
    v21 = v8;
    v22 = 2048;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] insertItems:… afterItem:%{public}@ | [] items=(:%lld)[%{public}@]", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceInsertItems:v7 afterItem:v8 inSection:self->_sectionIdentifier];

  v14 = [(NSMutableArray *)self->_mutableItemIdentifiers indexOfObject:v8];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierList.m" lineNumber:1146 description:{@"Did not find item %@ to insert after.", v8}];
  }

  mutableItemIdentifiers = self->_mutableItemIdentifiers;
  v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v14 + 1, objc_msgSend(v7, "count")}];
  [(NSMutableArray *)mutableItemIdentifiers insertObjects:v7 atIndexes:v16];
}

- (void)insertItemsAtHead:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "SIL");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    v7 = [v4 count];
    v8 = [v4 msv_compactDescription];
    v12 = 138543874;
    v13 = sectionIdentifier;
    v14 = 2048;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] insertItemsAtHead:(:%lld)[%{public}@]", &v12, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionedIdentifierList);
  [WeakRetained dataSourceInsertItemsAtHead:v4 inSection:self->_sectionIdentifier];

  mutableItemIdentifiers = self->_mutableItemIdentifiers;
  v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v4, "count")}];
  [(NSMutableArray *)mutableItemIdentifiers insertObjects:v4 atIndexes:v11];
}

- (_MPIdentifierListSectionProxy)initWithSection:(id)a3 sectionedIdentifierList:(id)a4 existingItemIdentifiers:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = _MPIdentifierListSectionProxy;
  v11 = [(_MPIdentifierListSectionProxy *)&v21 init];
  if (v11)
  {
    v12 = os_log_create("com.apple.amp.mediaplayer", "SIL");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 identifier];
      v14 = [v10 count];
      v15 = [v10 msv_compactDescription];
      *buf = 138544130;
      v23 = v8;
      v24 = 2114;
      v25 = v13;
      v26 = 2048;
      v27 = v14;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&dword_1A238D000, v12, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] init | [] sil=%{public}@ items=(:%lld)[%{public}@]", buf, 0x2Au);
    }

    v16 = [v8 copy];
    sectionIdentifier = v11->_sectionIdentifier;
    v11->_sectionIdentifier = v16;

    objc_storeWeak(&v11->_sectionedIdentifierList, v9);
    v18 = [v10 mutableCopy];
    mutableItemIdentifiers = v11->_mutableItemIdentifiers;
    v11->_mutableItemIdentifiers = v18;
  }

  return v11;
}

@end
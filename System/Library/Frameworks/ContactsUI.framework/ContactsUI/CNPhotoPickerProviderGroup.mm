@interface CNPhotoPickerProviderGroup
+ (id)addItemsGroupWithProviders:(id)a3 environment:(id)a4;
+ (id)animojiGroupWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5;
+ (id)emojiGroupWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5;
+ (id)injectedItemsGroupWithEnvironment:(id)a3;
+ (id)suggestionsGroupWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5;
- (BOOL)hasAddedProviderItems;
- (CNPhotoPickerProviderGroup)initWithProviders:(id)a3 groupType:(int64_t)a4 environment:(id)a5 allowAddItem:(BOOL)a6;
- (CNPhotoPickerProviderGroupDelegate)delegate;
- (NSArray)addItems;
- (id)itemsForProviderIdentifier:(id)a3;
- (id)providerItemAtIndex:(int64_t)a3;
- (id)suggestionsProviderPrecedingFacesProvider;
- (int64_t)addProviderItem:(id)a3;
- (int64_t)numberOfItems;
- (int64_t)removeProviderItem:(id)a3;
- (void)loadProvidersItemsForSize:(CGSize)a3 itemsPerRow:(double)a4 scale:(double)a5 RTL:(BOOL)a6;
- (void)providerItemDidUpdate:(id)a3;
- (void)reloadDisplayItemsNotifyDelegate:(BOOL)a3 requiresFullReload:(BOOL)a4;
- (void)removeAllAddedProviderItems;
- (void)setItemsPerRow:(unint64_t)a3 requiresFullReload:(BOOL)a4;
@end

@implementation CNPhotoPickerProviderGroup

- (CNPhotoPickerProviderGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)providerItemDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerProviderGroup *)self callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CNPhotoPickerProviderGroup_providerItemDidUpdate___block_invoke;
  v7[3] = &unk_1E74E77C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __52__CNPhotoPickerProviderGroup_providerItemDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoPickerProviderGroup:*(a1 + 32) didUpdateItem:*(a1 + 40)];
}

- (BOOL)hasAddedProviderItems
{
  v2 = *MEMORY[0x1E6996530];
  v3 = [(CNPhotoPickerProviderGroup *)self addedItems];
  LOBYTE(v2) = (*(v2 + 16))(v2, v3);

  return v2 ^ 1;
}

- (void)removeAllAddedProviderItems
{
  [(CNPhotoPickerProviderGroup *)self setAddedItems:MEMORY[0x1E695E0F0]];

  [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:0];
}

- (int64_t)removeProviderItem:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNPhotoPickerProviderGroup *)self displayItems];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(CNPhotoPickerProviderGroup *)self addedItems];
    v8 = [v7 indexOfObject:v4];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(CNPhotoPickerProviderGroup *)self paddingItems];
      v10 = [v9 containsObject:v4];

      if (!v10)
      {
        v20 = [(CNPhotoPickerProviderGroup *)self removedItems];
        v21 = [v20 arrayByAddingObject:v4];
        [(CNPhotoPickerProviderGroup *)self setRemovedItems:v21];

LABEL_11:
        [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:0];
        goto LABEL_12;
      }

      v11 = [(CNPhotoPickerProviderGroup *)self paddingItems];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __49__CNPhotoPickerProviderGroup_removeProviderItem___block_invoke_2;
      v26 = &unk_1E74E66D0;
      v12 = v4;
      v27 = v12;
      v13 = [v11 _cn_filter:&v23];
      [(CNPhotoPickerProviderGroup *)self setPaddingItems:v13, v23, v24, v25, v26];

      v14 = [(CNPhotoPickerProviderGroup *)self removedPaddingItems];
      if (v14)
      {
        v15 = [(CNPhotoPickerProviderGroup *)self removedPaddingItems];
        v16 = [v15 arrayByAddingObject:v12];
        [(CNPhotoPickerProviderGroup *)self setRemovedPaddingItems:v16];
      }

      else
      {
        v30[0] = v12;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        [(CNPhotoPickerProviderGroup *)self setRemovedPaddingItems:v15];
      }

      v19 = v27;
    }

    else
    {
      v17 = [(CNPhotoPickerProviderGroup *)self addedItems];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __49__CNPhotoPickerProviderGroup_removeProviderItem___block_invoke;
      v28[3] = &unk_1E74E66D0;
      v29 = v4;
      v18 = [v17 _cn_filter:v28];
      [(CNPhotoPickerProviderGroup *)self setAddedItems:v18];

      v19 = v29;
    }

    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

- (int64_t)addProviderItem:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v12 count:1];
  v7 = [(CNPhotoPickerProviderGroup *)self addedItems:v12];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];
  [(CNPhotoPickerProviderGroup *)self setAddedItems:v8];

  [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:0];
  v9 = [(CNPhotoPickerProviderGroup *)self displayItems];
  v10 = [v9 indexOfObject:v5];

  return v10;
}

- (id)providerItemAtIndex:(int64_t)a3
{
  if ([(CNPhotoPickerProviderGroup *)self numberOfItems]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(CNPhotoPickerProviderGroup *)self displayItems];
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (int64_t)numberOfItems
{
  v2 = [(CNPhotoPickerProviderGroup *)self displayItems];
  v3 = [v2 count];

  return v3;
}

- (NSArray)addItems
{
  v8[1] = *MEMORY[0x1E69E9840];
  addItems = self->_addItems;
  if (!addItems)
  {
    v4 = [[CNPhotoPickerGlyphProviderItem alloc] initWithSymbolImageNamed:@"plus"];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = self->_addItems;
    self->_addItems = v5;

    addItems = self->_addItems;
  }

  return addItems;
}

- (void)reloadDisplayItemsNotifyDelegate:(BOOL)a3 requiresFullReload:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(CNPhotoPickerProviderGroup *)self addedItems];
  [v7 addObject:v8];

  v9 = [(CNPhotoPickerProviderGroup *)self providers];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__CNPhotoPickerProviderGroup_reloadDisplayItemsNotifyDelegate_requiresFullReload___block_invoke;
  v16[3] = &unk_1E74E1AD8;
  v16[4] = self;
  v10 = v7;
  v17 = v10;
  [v9 _cn_each:v16];

  if ([(CNPhotoPickerProviderGroup *)self allowAddItem])
  {
    v11 = [(CNPhotoPickerProviderGroup *)self addItems];
    [v10 insertObject:v11 atIndex:0];
  }

  v12 = [v10 _cn_flatten];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__CNPhotoPickerProviderGroup_reloadDisplayItemsNotifyDelegate_requiresFullReload___block_invoke_3;
  v15[3] = &unk_1E74E66D0;
  v15[4] = self;
  v13 = [v12 _cn_filter:v15];

  [(CNPhotoPickerProviderGroup *)self prepareDisplayItems:v13];
  if (v5)
  {
    v14 = [(CNPhotoPickerProviderGroup *)self delegate];
    [v14 photoPickerProviderGroupDidUpdate:self requiresFullReload:v4];
  }
}

void __82__CNPhotoPickerProviderGroup_reloadDisplayItemsNotifyDelegate_requiresFullReload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 itemsForProviderIdentifier:v5];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) _cn_insertNonNilObject:v6 atIndex:0];
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __82__CNPhotoPickerProviderGroup_reloadDisplayItemsNotifyDelegate_requiresFullReload___block_invoke_2;
      v8[3] = &unk_1E74E66D0;
      v8[4] = *(a1 + 32);
      v7 = [v6 _cn_filter:v8];

      [*(a1 + 40) _cn_addNonNilObject:v7];
      v6 = v7;
    }
  }
}

BOOL __82__CNPhotoPickerProviderGroup_reloadDisplayItemsNotifyDelegate_requiresFullReload___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 removedItems];
  v5 = [v4 indexOfObjectIdenticalTo:v3];

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

BOOL __82__CNPhotoPickerProviderGroup_reloadDisplayItemsNotifyDelegate_requiresFullReload___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 addedItems];
  v5 = [v4 indexOfObject:v3];

  return v5 == 0x7FFFFFFFFFFFFFFFLL;
}

- (id)itemsForProviderIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setItemsPerRow:(unint64_t)a3 requiresFullReload:(BOOL)a4
{
  if (self->_itemsPerRow != a3)
  {
    self->_itemsPerRow = a3;
    [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:1 requiresFullReload:a4];
  }
}

- (id)suggestionsProviderPrecedingFacesProvider
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (-[CNPhotoPickerProviderGroup providers](self, "providers"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 indexOfObjectPassingTest:&__block_literal_global_1589], v3, v5 = v4 - 1, v4 == 1) || (-[CNPhotoPickerProviderGroup providers](self, "providers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v9 = 0;
  }

  else
  {
    v8 = [(CNPhotoPickerProviderGroup *)self providers];
    v9 = [v8 objectAtIndex:v5];
  }

  return v9;
}

uint64_t __71__CNPhotoPickerProviderGroup_suggestionsProviderPrecedingFacesProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)loadProvidersItemsForSize:(CGSize)a3 itemsPerRow:(double)a4 scale:(double)a5 RTL:(BOOL)a6
{
  height = a3.height;
  width = a3.width;
  self->_itemsPerRow = a4;
  v11 = [(CNPhotoPickerProviderGroup *)self workQueue];
  v12 = [(CNPhotoPickerProviderGroup *)self providerItemRenderingQueue];
  v13 = [(CNPhotoPickerProviderGroup *)self callbackQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__CNPhotoPickerProviderGroup_loadProvidersItemsForSize_itemsPerRow_scale_RTL___block_invoke;
  v16[3] = &unk_1E74E1A90;
  v19 = width;
  v20 = height;
  v21 = a5;
  v22 = a6;
  v16[4] = self;
  v17 = v12;
  v18 = v13;
  v14 = v13;
  v15 = v12;
  [v11 performBlock:v16];
}

void __78__CNPhotoPickerProviderGroup_loadProvidersItemsForSize_itemsPerRow_scale_RTL___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) suggestionsProviderPrecedingFacesProvider];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) providers];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 loadItemsForSize:*(a1 + 80) scale:*(a1 + 40) RTL:*(a1 + 48) renderingQueue:*(a1 + 32) callbackQueue:*(a1 + 56) itemDelegate:{*(a1 + 64), *(a1 + 72)}];
        v9 = *(a1 + 48);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __78__CNPhotoPickerProviderGroup_loadProvidersItemsForSize_itemsPerRow_scale_RTL___block_invoke_2;
        v14[3] = &unk_1E74E2610;
        v14[4] = *(a1 + 32);
        v14[5] = v7;
        v15 = v8;
        v16 = v7 == v2;
        v10 = v8;
        [v9 performBlock:v14];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v11 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__CNPhotoPickerProviderGroup_loadProvidersItemsForSize_itemsPerRow_scale_RTL___block_invoke_3;
  v13[3] = &unk_1E74E6A88;
  v13[4] = *(a1 + 32);
  [v11 performBlock:v13];
}

uint64_t __78__CNPhotoPickerProviderGroup_loadProvidersItemsForSize_itemsPerRow_scale_RTL___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) itemsGroupedByProvider];
  v4 = [*(a1 + 40) identifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);

  return [v5 reloadDisplayItemsNotifyDelegate:v6];
}

void __78__CNPhotoPickerProviderGroup_loadProvidersItemsForSize_itemsPerRow_scale_RTL___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoPickerProviderGroupDidUpdate:*(a1 + 32) requiresFullReload:0];
}

- (CNPhotoPickerProviderGroup)initWithProviders:(id)a3 groupType:(int64_t)a4 environment:(id)a5 allowAddItem:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a5;
  v31.receiver = self;
  v31.super_class = CNPhotoPickerProviderGroup;
  v13 = [(CNPhotoPickerProviderGroup *)&v31 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_providers, a3);
    v14->_groupType = a4;
    v14->_allowAddItem = v6;
    v15 = MEMORY[0x1E695E0F0];
    v16 = MEMORY[0x1E695E0F0];
    if (v6)
    {
      v16 = [(CNPhotoPickerProviderGroup *)v14 addItems];
    }

    displayItems = v14->_displayItems;
    v14->_displayItems = v16;

    addedItems = v14->_addedItems;
    v14->_addedItems = v15;

    removedItems = v14->_removedItems;
    v14->_removedItems = v15;

    v20 = [MEMORY[0x1E695DF90] dictionary];
    itemsGroupedByProvider = v14->_itemsGroupedByProvider;
    v14->_itemsGroupedByProvider = v20;

    v22 = [v12 defaultSchedulerProvider];
    v23 = [v22 newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerProvider.workQueue"];
    workQueue = v14->_workQueue;
    v14->_workQueue = v23;

    v25 = [v22 newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerProvider.ProviderItem.workQueue"];
    providerItemRenderingQueue = v14->_providerItemRenderingQueue;
    v14->_providerItemRenderingQueue = v25;

    v27 = [v22 mainThreadScheduler];
    callbackQueue = v14->_callbackQueue;
    v14->_callbackQueue = v27;

    v29 = v14;
  }

  return v14;
}

+ (id)addItemsGroupWithProviders:(id)a3 environment:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNPhotoPickerProviderAddItemsGroup alloc] initWithProviders:v6 environment:v5];

  return v7;
}

+ (id)emojiGroupWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [[CNPhotoPickerProviderEmojiGroup alloc] initWithProviders:v8 environment:v7 allowAddItem:v5];

  return v9;
}

+ (id)animojiGroupWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [[CNPhotoPickerProviderAnimojiGroup alloc] initWithProviders:v8 environment:v7 allowAddItem:v5];

  return v9;
}

+ (id)suggestionsGroupWithProviders:(id)a3 environment:(id)a4 allowAddItem:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [[CNPhotoPickerProviderSuggestionsGroup alloc] initWithProviders:v8 environment:v7 allowAddItem:v5];

  return v9;
}

+ (id)injectedItemsGroupWithEnvironment:(id)a3
{
  v3 = a3;
  v4 = [[CNPhotoPickerProviderInjectedItemsGroup alloc] initWithEnvironment:v3];

  return v4;
}

@end
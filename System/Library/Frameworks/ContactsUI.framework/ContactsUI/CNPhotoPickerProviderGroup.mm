@interface CNPhotoPickerProviderGroup
+ (id)addItemsGroupWithProviders:(id)providers environment:(id)environment;
+ (id)animojiGroupWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item;
+ (id)emojiGroupWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item;
+ (id)injectedItemsGroupWithEnvironment:(id)environment;
+ (id)suggestionsGroupWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item;
- (BOOL)hasAddedProviderItems;
- (CNPhotoPickerProviderGroup)initWithProviders:(id)providers groupType:(int64_t)type environment:(id)environment allowAddItem:(BOOL)item;
- (CNPhotoPickerProviderGroupDelegate)delegate;
- (NSArray)addItems;
- (id)itemsForProviderIdentifier:(id)identifier;
- (id)providerItemAtIndex:(int64_t)index;
- (id)suggestionsProviderPrecedingFacesProvider;
- (int64_t)addProviderItem:(id)item;
- (int64_t)numberOfItems;
- (int64_t)removeProviderItem:(id)item;
- (void)loadProvidersItemsForSize:(CGSize)size itemsPerRow:(double)row scale:(double)scale RTL:(BOOL)l;
- (void)providerItemDidUpdate:(id)update;
- (void)reloadDisplayItemsNotifyDelegate:(BOOL)delegate requiresFullReload:(BOOL)reload;
- (void)removeAllAddedProviderItems;
- (void)setItemsPerRow:(unint64_t)row requiresFullReload:(BOOL)reload;
@end

@implementation CNPhotoPickerProviderGroup

- (CNPhotoPickerProviderGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)providerItemDidUpdate:(id)update
{
  updateCopy = update;
  callbackQueue = [(CNPhotoPickerProviderGroup *)self callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CNPhotoPickerProviderGroup_providerItemDidUpdate___block_invoke;
  v7[3] = &unk_1E74E77C0;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  [callbackQueue performBlock:v7];
}

void __52__CNPhotoPickerProviderGroup_providerItemDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoPickerProviderGroup:*(a1 + 32) didUpdateItem:*(a1 + 40)];
}

- (BOOL)hasAddedProviderItems
{
  v2 = *MEMORY[0x1E6996530];
  addedItems = [(CNPhotoPickerProviderGroup *)self addedItems];
  LOBYTE(v2) = (*(v2 + 16))(v2, addedItems);

  return v2 ^ 1;
}

- (void)removeAllAddedProviderItems
{
  [(CNPhotoPickerProviderGroup *)self setAddedItems:MEMORY[0x1E695E0F0]];

  [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:0];
}

- (int64_t)removeProviderItem:(id)item
{
  v30[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  displayItems = [(CNPhotoPickerProviderGroup *)self displayItems];
  v6 = [displayItems indexOfObject:itemCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    addedItems = [(CNPhotoPickerProviderGroup *)self addedItems];
    v8 = [addedItems indexOfObject:itemCopy];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      paddingItems = [(CNPhotoPickerProviderGroup *)self paddingItems];
      v10 = [paddingItems containsObject:itemCopy];

      if (!v10)
      {
        removedItems = [(CNPhotoPickerProviderGroup *)self removedItems];
        v21 = [removedItems arrayByAddingObject:itemCopy];
        [(CNPhotoPickerProviderGroup *)self setRemovedItems:v21];

LABEL_11:
        [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:0];
        goto LABEL_12;
      }

      paddingItems2 = [(CNPhotoPickerProviderGroup *)self paddingItems];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __49__CNPhotoPickerProviderGroup_removeProviderItem___block_invoke_2;
      v26 = &unk_1E74E66D0;
      v12 = itemCopy;
      v27 = v12;
      v13 = [paddingItems2 _cn_filter:&v23];
      [(CNPhotoPickerProviderGroup *)self setPaddingItems:v13, v23, v24, v25, v26];

      removedPaddingItems = [(CNPhotoPickerProviderGroup *)self removedPaddingItems];
      if (removedPaddingItems)
      {
        removedPaddingItems2 = [(CNPhotoPickerProviderGroup *)self removedPaddingItems];
        v16 = [removedPaddingItems2 arrayByAddingObject:v12];
        [(CNPhotoPickerProviderGroup *)self setRemovedPaddingItems:v16];
      }

      else
      {
        v30[0] = v12;
        removedPaddingItems2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        [(CNPhotoPickerProviderGroup *)self setRemovedPaddingItems:removedPaddingItems2];
      }

      v19 = v27;
    }

    else
    {
      addedItems2 = [(CNPhotoPickerProviderGroup *)self addedItems];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __49__CNPhotoPickerProviderGroup_removeProviderItem___block_invoke;
      v28[3] = &unk_1E74E66D0;
      v29 = itemCopy;
      v18 = [addedItems2 _cn_filter:v28];
      [(CNPhotoPickerProviderGroup *)self setAddedItems:v18];

      v19 = v29;
    }

    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

- (int64_t)addProviderItem:(id)item
{
  v13 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v4 = MEMORY[0x1E695DEC8];
  itemCopy2 = item;
  v6 = [v4 arrayWithObjects:&itemCopy count:1];
  v7 = [(CNPhotoPickerProviderGroup *)self addedItems:itemCopy];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];
  [(CNPhotoPickerProviderGroup *)self setAddedItems:v8];

  [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:0];
  displayItems = [(CNPhotoPickerProviderGroup *)self displayItems];
  v10 = [displayItems indexOfObject:itemCopy2];

  return v10;
}

- (id)providerItemAtIndex:(int64_t)index
{
  if ([(CNPhotoPickerProviderGroup *)self numberOfItems]<= index)
  {
    v6 = 0;
  }

  else
  {
    displayItems = [(CNPhotoPickerProviderGroup *)self displayItems];
    v6 = [displayItems objectAtIndexedSubscript:index];
  }

  return v6;
}

- (int64_t)numberOfItems
{
  displayItems = [(CNPhotoPickerProviderGroup *)self displayItems];
  v3 = [displayItems count];

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

- (void)reloadDisplayItemsNotifyDelegate:(BOOL)delegate requiresFullReload:(BOOL)reload
{
  reloadCopy = reload;
  delegateCopy = delegate;
  array = [MEMORY[0x1E695DF70] array];
  addedItems = [(CNPhotoPickerProviderGroup *)self addedItems];
  [array addObject:addedItems];

  providers = [(CNPhotoPickerProviderGroup *)self providers];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__CNPhotoPickerProviderGroup_reloadDisplayItemsNotifyDelegate_requiresFullReload___block_invoke;
  v16[3] = &unk_1E74E1AD8;
  v16[4] = self;
  v10 = array;
  v17 = v10;
  [providers _cn_each:v16];

  if ([(CNPhotoPickerProviderGroup *)self allowAddItem])
  {
    addItems = [(CNPhotoPickerProviderGroup *)self addItems];
    [v10 insertObject:addItems atIndex:0];
  }

  _cn_flatten = [v10 _cn_flatten];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__CNPhotoPickerProviderGroup_reloadDisplayItemsNotifyDelegate_requiresFullReload___block_invoke_3;
  v15[3] = &unk_1E74E66D0;
  v15[4] = self;
  v13 = [_cn_flatten _cn_filter:v15];

  [(CNPhotoPickerProviderGroup *)self prepareDisplayItems:v13];
  if (delegateCopy)
  {
    delegate = [(CNPhotoPickerProviderGroup *)self delegate];
    [delegate photoPickerProviderGroupDidUpdate:self requiresFullReload:reloadCopy];
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

- (id)itemsForProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemsGroupedByProvider = [(CNPhotoPickerProviderGroup *)self itemsGroupedByProvider];
  v6 = [itemsGroupedByProvider valueForKey:identifierCopy];

  return v6;
}

- (void)setItemsPerRow:(unint64_t)row requiresFullReload:(BOOL)reload
{
  if (self->_itemsPerRow != row)
  {
    self->_itemsPerRow = row;
    [(CNPhotoPickerProviderGroup *)self reloadDisplayItemsNotifyDelegate:1 requiresFullReload:reload];
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
    providers = [(CNPhotoPickerProviderGroup *)self providers];
    v9 = [providers objectAtIndex:v5];
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

- (void)loadProvidersItemsForSize:(CGSize)size itemsPerRow:(double)row scale:(double)scale RTL:(BOOL)l
{
  height = size.height;
  width = size.width;
  self->_itemsPerRow = row;
  workQueue = [(CNPhotoPickerProviderGroup *)self workQueue];
  providerItemRenderingQueue = [(CNPhotoPickerProviderGroup *)self providerItemRenderingQueue];
  callbackQueue = [(CNPhotoPickerProviderGroup *)self callbackQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__CNPhotoPickerProviderGroup_loadProvidersItemsForSize_itemsPerRow_scale_RTL___block_invoke;
  v16[3] = &unk_1E74E1A90;
  v19 = width;
  v20 = height;
  scaleCopy = scale;
  lCopy = l;
  v16[4] = self;
  v17 = providerItemRenderingQueue;
  v18 = callbackQueue;
  v14 = callbackQueue;
  v15 = providerItemRenderingQueue;
  [workQueue performBlock:v16];
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

- (CNPhotoPickerProviderGroup)initWithProviders:(id)providers groupType:(int64_t)type environment:(id)environment allowAddItem:(BOOL)item
{
  itemCopy = item;
  providersCopy = providers;
  environmentCopy = environment;
  v31.receiver = self;
  v31.super_class = CNPhotoPickerProviderGroup;
  v13 = [(CNPhotoPickerProviderGroup *)&v31 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_providers, providers);
    v14->_groupType = type;
    v14->_allowAddItem = itemCopy;
    v15 = MEMORY[0x1E695E0F0];
    addItems = MEMORY[0x1E695E0F0];
    if (itemCopy)
    {
      addItems = [(CNPhotoPickerProviderGroup *)v14 addItems];
    }

    displayItems = v14->_displayItems;
    v14->_displayItems = addItems;

    addedItems = v14->_addedItems;
    v14->_addedItems = v15;

    removedItems = v14->_removedItems;
    v14->_removedItems = v15;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    itemsGroupedByProvider = v14->_itemsGroupedByProvider;
    v14->_itemsGroupedByProvider = dictionary;

    defaultSchedulerProvider = [environmentCopy defaultSchedulerProvider];
    v23 = [defaultSchedulerProvider newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerProvider.workQueue"];
    workQueue = v14->_workQueue;
    v14->_workQueue = v23;

    v25 = [defaultSchedulerProvider newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerProvider.ProviderItem.workQueue"];
    providerItemRenderingQueue = v14->_providerItemRenderingQueue;
    v14->_providerItemRenderingQueue = v25;

    mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];
    callbackQueue = v14->_callbackQueue;
    v14->_callbackQueue = mainThreadScheduler;

    v29 = v14;
  }

  return v14;
}

+ (id)addItemsGroupWithProviders:(id)providers environment:(id)environment
{
  environmentCopy = environment;
  providersCopy = providers;
  v7 = [[CNPhotoPickerProviderAddItemsGroup alloc] initWithProviders:providersCopy environment:environmentCopy];

  return v7;
}

+ (id)emojiGroupWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item
{
  itemCopy = item;
  environmentCopy = environment;
  providersCopy = providers;
  v9 = [[CNPhotoPickerProviderEmojiGroup alloc] initWithProviders:providersCopy environment:environmentCopy allowAddItem:itemCopy];

  return v9;
}

+ (id)animojiGroupWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item
{
  itemCopy = item;
  environmentCopy = environment;
  providersCopy = providers;
  v9 = [[CNPhotoPickerProviderAnimojiGroup alloc] initWithProviders:providersCopy environment:environmentCopy allowAddItem:itemCopy];

  return v9;
}

+ (id)suggestionsGroupWithProviders:(id)providers environment:(id)environment allowAddItem:(BOOL)item
{
  itemCopy = item;
  environmentCopy = environment;
  providersCopy = providers;
  v9 = [[CNPhotoPickerProviderSuggestionsGroup alloc] initWithProviders:providersCopy environment:environmentCopy allowAddItem:itemCopy];

  return v9;
}

+ (id)injectedItemsGroupWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [[CNPhotoPickerProviderInjectedItemsGroup alloc] initWithEnvironment:environmentCopy];

  return v4;
}

@end
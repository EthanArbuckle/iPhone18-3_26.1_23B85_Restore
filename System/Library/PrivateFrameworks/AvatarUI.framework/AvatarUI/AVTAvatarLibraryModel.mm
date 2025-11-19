@interface AVTAvatarLibraryModel
- (AVTAvatarLibraryModel)initWithAvatarStore:(id)a3 avtViewSessionProvider:(id)a4 environment:(id)a5;
- (AVTAvatarLibraryModelDelegate)delegate;
- (NSArray)libraryItems;
- (id)libraryItemsFromAvatarRecords:(id)a3;
- (int64_t)indexForRecord:(id)a3;
- (unint64_t)numberOfRecords;
- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4;
- (void)avatarEditorViewControllerDidCancel:(id)a3;
- (void)insertItemForRecord:(id)a3 atIndex:(unint64_t)a4;
- (void)load;
- (void)performActionOnItemAtIndex:(unint64_t)a3;
- (void)presentActionSheetForRecordItem:(id)a3 atIndex:(unint64_t)a4;
- (void)presentEditor:(id)a3 forCreating:(BOOL)a4;
- (void)presetShareSheetWithRecords:(id)a3 fromItem:(id)a4;
- (void)reloadDataForRecords:(id)a3;
- (void)removeItemForRecordAtIndex:(unint64_t)a3;
- (void)storeDidChangeNotification:(id)a3;
- (void)updateForCreatedRecord:(id)a3;
- (void)updateForEditedRecord:(id)a3;
@end

@implementation AVTAvatarLibraryModel

- (AVTAvatarLibraryModel)initWithAvatarStore:(id)a3 avtViewSessionProvider:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = AVTAvatarLibraryModel;
  v12 = [(AVTAvatarLibraryModel *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarStore, a3);
    objc_storeStrong(&v13->_environment, a5);
    v14 = objc_alloc_init(AVTAvatarLibraryCreateNewItem);
    createNewItem = v13->_createNewItem;
    v13->_createNewItem = v14;

    v16 = [MEMORY[0x1E695DF70] arrayWithObject:v13->_createNewItem];
    mutableLibraryItems = v13->_mutableLibraryItems;
    v13->_mutableLibraryItems = v16;

    objc_storeStrong(&v13->_viewSessionProvider, a4);
    v18 = [v11 notificationCenter];
    [v18 addObserver:v13 selector:sel_storeDidChangeNotification_ name:*MEMORY[0x1E698E308] object:0];
  }

  return v13;
}

- (NSArray)libraryItems
{
  v2 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
  v3 = [v2 copy];

  return v3;
}

- (unint64_t)numberOfRecords
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(AVTAvatarLibraryModel *)self libraryItems:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        v5 += objc_opt_isKindOfClass() & 1;
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)storeDidChangeNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(AVTAvatarLibraryModel *)self avatarStore];

  if (v4 != v5)
  {

    [(AVTAvatarLibraryModel *)self load];
  }
}

- (void)load
{
  v3 = [MEMORY[0x1E698E310] requestForCustomAvatars];
  v4 = [(AVTAvatarLibraryModel *)self avatarStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AVTAvatarLibraryModel_load__block_invoke;
  v5[3] = &unk_1E7F3B7D0;
  v5[4] = self;
  [v4 fetchAvatarsForFetchRequest:v3 completionHandler:v5];
}

void __29__AVTAvatarLibraryModel_load__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __29__AVTAvatarLibraryModel_load__block_invoke_2;
    v7[3] = &unk_1E7F3AD60;
    v7[4] = *(a1 + 32);
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)performActionOnItemAtIndex:(unint64_t)a3
{
  v5 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
  v9 = [v5 objectAtIndexedSubscript:a3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVTAvatarLibraryModel *)self presentActionSheetForRecordItem:v9 atIndex:a3];
  }

  else
  {
    v6 = [(AVTAvatarLibraryModel *)self avatarStore];
    v7 = [(AVTAvatarLibraryModel *)self viewSessionProvider];
    v8 = [AVTAvatarEditorViewController viewControllerForCreatingAvatarInStore:v6 avtViewSessionProvider:v7];

    [(AVTAvatarLibraryModel *)self presentEditor:v8 forCreating:1];
  }
}

- (void)presentEditor:(id)a3 forCreating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(AVTAvatarLibraryModel *)self setIsCreatingAvatar:v4];
  [v6 setDelegate:self];
  v7 = [(AVTAvatarLibraryModel *)self delegate];
  [v7 presetEditorViewController:v6];
}

- (void)presentActionSheetForRecordItem:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v35 = a4;
    v8 = [v6 avatarRecord];
    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v10 = AVTAvatarUIBundle();
    v11 = [v10 localizedStringForKey:@"EDIT" value:&stru_1F39618F0 table:@"Localized"];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke;
    v47[3] = &unk_1E7F3B7F8;
    v12 = v8;
    v48 = v12;
    v49 = self;
    v13 = [AVTComponentFactory alertActionWithTitle:v11 style:0 handler:v47];
    [v9 addAction:v13];

    v14 = AVTAvatarUIBundle();
    v15 = [v14 localizedStringForKey:@"SHARE" value:&stru_1F39618F0 table:@"Localized"];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_2;
    v44[3] = &unk_1E7F3B820;
    v44[4] = self;
    v16 = v12;
    v45 = v16;
    v17 = v7;
    v46 = v17;
    v18 = [AVTComponentFactory alertActionWithTitle:v15 style:0 handler:v44];
    [v9 addAction:v18];

    v19 = AVTAvatarUIBundle();
    v20 = [v19 localizedStringForKey:@"SHARE ALL" value:&stru_1F39618F0 table:@"Localized"];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_3;
    v42[3] = &unk_1E7F3B7F8;
    v42[4] = self;
    v34 = v17;
    v43 = v34;
    v21 = [AVTComponentFactory alertActionWithTitle:v20 style:0 handler:v42];
    [v9 addAction:v21];

    v22 = [(AVTAvatarLibraryModel *)self avatarStore];
    LODWORD(v20) = [v22 canCreateAvatarWithError:0];

    if (v20)
    {
      v23 = AVTAvatarUIBundle();
      v24 = [v23 localizedStringForKey:@"DUPLICATE" value:&stru_1F39618F0 table:@"Localized"];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_4;
      v39[3] = &unk_1E7F3B898;
      v39[4] = self;
      v40 = v16;
      v41 = v35;
      v25 = [AVTComponentFactory alertActionWithTitle:v24 style:0 handler:v39];
      [v9 addAction:v25];
    }

    v26 = AVTAvatarUIBundle();
    v27 = [v26 localizedStringForKey:@"DELETE" value:&stru_1F39618F0 table:@"Localized"];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_7;
    v36[3] = &unk_1E7F3B898;
    v36[4] = self;
    v37 = v16;
    v38 = v35;
    v28 = v16;
    v29 = [AVTComponentFactory alertActionWithTitle:v27 style:0 handler:v36];
    [v9 addAction:v29];

    v30 = AVTAvatarUIBundle();
    v31 = [v30 localizedStringForKey:@"CANCEL" value:&stru_1F39618F0 table:@"Localized"];
    v32 = [AVTComponentFactory alertActionWithTitle:v31 style:1 handler:0];
    [v9 addAction:v32];

    v33 = [(AVTAvatarLibraryModel *)self delegate];
    [v33 presentUIViewController:v9 forItem:v34];
  }
}

void __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) viewSessionProvider];
  v4 = [*(a1 + 40) avatarStore];
  v5 = [AVTAvatarEditorViewController viewControllerForEditingAvatar:v2 avtViewSessionProvider:v3 store:v4];

  [*(a1 + 40) presentEditor:v5 forCreating:0];
}

void __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_2(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v4[0] = a1[5];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 presetShareSheetWithRecords:v3 fromItem:a1[6]];
}

void __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarStore];
  v3 = [MEMORY[0x1E698E310] requestForCustomAvatars];
  v5 = [v2 avatarsForFetchRequest:v3 error:0];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) presetShareSheetWithRecords:v5 fromItem:*(a1 + 40)];
    v4 = v5;
  }
}

void __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_5;
  v5[3] = &unk_1E7F3B870;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v5[5] = v4;
  [v2 duplicateAvatar:v3 completionBlock:v5];
}

void __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_6;
    block[3] = &unk_1E7F3B848;
    block[4] = *(a1 + 32);
    v7 = v5;
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) insertItemForRecord:*(a1 + 40) atIndex:*(a1 + 48) + 1];
  v2 = [*(a1 + 32) delegate];
  [v2 didAddRecord:*(a1 + 40)];
}

void __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_8;
  v5[3] = &unk_1E7F3B8C0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v7 = v4;
  v6 = v3;
  [v2 deleteAvatar:v6 completionHandler:v5];
}

void __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_8(void *a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_9;
    block[3] = &unk_1E7F3B848;
    v3 = a1[5];
    v2 = a1[6];
    block[4] = a1[4];
    v6 = v2;
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __65__AVTAvatarLibraryModel_presentActionSheetForRecordItem_atIndex___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) removeItemForRecordAtIndex:*(a1 + 48)];
  v2 = [*(a1 + 32) delegate];
  [v2 didDeleteRecord:*(a1 + 40)];
}

- (id)libraryItemsFromAvatarRecords:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [AVTAvatarLibraryRecordItem alloc];
        v13 = [(AVTAvatarLibraryModel *)self environment];
        v14 = [(AVTAvatarLibraryRecordItem *)v12 initWithAvatarRecord:v11 environment:v13];

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = [(AVTAvatarLibraryModel *)self avatarStore];
  v16 = [v15 canCreateAvatarWithError:0];

  if (v16)
  {
    v17 = [(AVTAvatarLibraryModel *)self createNewItem];
    [v5 addObject:v17];
  }

  return v5;
}

- (void)insertItemForRecord:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [AVTAvatarLibraryRecordItem alloc];
  v8 = [(AVTAvatarLibraryModel *)self environment];
  v22 = [(AVTAvatarLibraryRecordItem *)v7 initWithAvatarRecord:v6 environment:v8];

  v9 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
  [v9 insertObject:v22 atIndex:a4];

  v10 = [(AVTAvatarLibraryModel *)self avatarStore];
  v11 = [v10 canCreateAvatarWithError:0];
  if (v11)
  {
    goto LABEL_4;
  }

  v12 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
  v13 = [(AVTAvatarLibraryModel *)self createNewItem];
  v14 = [v12 containsObject:v13];

  if (v14)
  {
    v10 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
    v15 = [(AVTAvatarLibraryModel *)self createNewItem];
    [v10 removeObject:v15];

LABEL_4:
    v16 = v11 ^ 1;

    goto LABEL_6;
  }

  v16 = 0;
LABEL_6:
  v17 = [(AVTAvatarLibraryModel *)self delegate];
  v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
  if (v16)
  {
    v19 = MEMORY[0x1E696AC90];
    v20 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
    v21 = [v19 indexSetWithIndex:{objc_msgSend(v20, "count") - 1}];
    [v17 insertItemsAtIndexes:v18 deleteItemsAtIndexes:v21 reloadItemsAtIndexes:0];
  }

  else
  {
    [v17 insertItemsAtIndexes:v18 deleteItemsAtIndexes:0 reloadItemsAtIndexes:0];
  }
}

- (void)removeItemForRecordAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
  [v5 removeObjectAtIndex:a3];

  v6 = [v4 avatarStore];
  if ([v6 canCreateAvatarWithError:0])
  {
    v7 = [v4 mutableLibraryItems];
    v8 = [v4 createNewItem];
    v9 = [v7 containsObject:v8];

    if (!v9)
    {
      v10 = [v4 mutableLibraryItems];
      v11 = [v4 createNewItem];
      [v10 addObject:v11];

      v16 = [v4 delegate];
      v12 = MEMORY[0x1E696AC90];
      v4 = [v4 mutableLibraryItems];
      v13 = [v12 indexSetWithIndex:{objc_msgSend(v4, "count") - 1}];
      v14 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v16 = [v4 delegate];
  v14 = 0;
  v13 = 0;
LABEL_6:
  v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  [v16 insertItemsAtIndexes:v13 deleteItemsAtIndexes:v15 reloadItemsAtIndexes:0];

  if (v14)
  {
  }
}

- (void)reloadDataForRecords:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
  v6 = [(AVTAvatarLibraryModel *)self libraryItemsFromAvatarRecords:v4];

  [v5 setArray:v6];
  v8 = [(AVTAvatarLibraryModel *)self delegate];
  v7 = [(AVTAvatarLibraryModel *)self libraryItems];
  [v8 didUpdateLibraryItems:v7];
}

- (void)updateForCreatedRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarLibraryModel *)self libraryItems];
  -[AVTAvatarLibraryModel insertItemForRecord:atIndex:](self, "insertItemForRecord:atIndex:", v4, [v5 count] - 1);

  v6 = [(AVTAvatarLibraryModel *)self delegate];
  [v6 didAddRecord:v4];
}

- (void)updateForEditedRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarLibraryModel *)self indexForRecord:v4];
  v6 = [AVTAvatarLibraryRecordItem alloc];
  v7 = [(AVTAvatarLibraryModel *)self environment];
  v12 = [(AVTAvatarLibraryRecordItem *)v6 initWithAvatarRecord:v4 environment:v7];

  v8 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
  [v8 replaceObjectAtIndex:v5 withObject:v12];

  v9 = [(AVTAvatarLibraryModel *)self delegate];
  v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5];
  [v9 insertItemsAtIndexes:0 deleteItemsAtIndexes:0 reloadItemsAtIndexes:v10];

  v11 = [(AVTAvatarLibraryModel *)self delegate];
  [v11 didEditRecord:v4];
}

- (int64_t)indexForRecord:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarLibraryModel *)self mutableLibraryItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AVTAvatarLibraryModel_indexForRecord___block_invoke;
  v9[3] = &unk_1E7F3B8E8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __40__AVTAvatarLibraryModel_indexForRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 avatarRecord];
    v5 = [v4 identifier];
    v6 = [*(a1 + 32) identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)presetShareSheetWithRecords:(id)a3 fromItem:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (([v12 conformsToProtocol:&unk_1F39F9480] & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v12}];
        }

        v13 = v12;
        if (([v13 isPuppet] & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v13}];
          }

          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItems:v6 applicationActivities:0];
  v15 = [(AVTAvatarLibraryModel *)self delegate];
  [v15 presentUIViewController:v14 forItem:v17];
}

- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarLibraryModel *)self delegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__AVTAvatarLibraryModel_avatarEditorViewController_didFinishWithAvatarRecord___block_invoke;
  v10[3] = &unk_1E7F3AD60;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 dismissController:v7 completion:v10];
}

uint64_t __78__AVTAvatarLibraryModel_avatarEditorViewController_didFinishWithAvatarRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCreatingAvatar];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setIsCreatingAvatar:0];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 updateForCreatedRecord:v5];
  }

  else
  {
    v7 = *(a1 + 40);

    return [v3 updateForEditedRecord:v7];
  }
}

- (void)avatarEditorViewControllerDidCancel:(id)a3
{
  v4 = a3;
  [(AVTAvatarLibraryModel *)self setIsCreatingAvatar:0];
  v5 = [(AVTAvatarLibraryModel *)self delegate];
  [v5 dismissController:v4 completion:0];
}

- (AVTAvatarLibraryModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
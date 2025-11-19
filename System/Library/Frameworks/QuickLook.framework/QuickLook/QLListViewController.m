@interface QLListViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (QLListViewController)initWithPreviewItemStore:(id)a3 currentPreviewItem:(id)a4;
- (QLListViewControllerDelegate)archiveDelegate;
- (UIBarButtonItem)barButton;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addPath:(id)a3 fromPreviewItem:(id)a4 intoArray:(id)a5;
- (void)_generateItemsAndFolders;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)setBarButton:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation QLListViewController

- (QLListViewController)initWithPreviewItemStore:(id)a3 currentPreviewItem:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = QLListViewController;
  v9 = [(QLListViewController *)&v29 init];
  if (v9)
  {
    v10 = objc_opt_new();
    cellManager = v9->_cellManager;
    v9->_cellManager = v10;

    objc_storeStrong(&v9->_previewItemStore, a3);
    objc_storeStrong(&v9->_currentPreviewItem, a4);
    v12 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:0];
    tableViewController = v9->_tableViewController;
    v9->_tableViewController = v12;

    v14 = [(UITableViewController *)v9->_tableViewController tableView];
    [v14 setDataSource:v9];

    v15 = [(UITableViewController *)v9->_tableViewController tableView];
    [v15 setDelegate:v9];

    if (_UISolariumEnabled())
    {
      v16 = [MEMORY[0x277D75348] clearColor];
      v17 = [(UITableViewController *)v9->_tableViewController tableView];
      [v17 setBackgroundColor:v16];
    }

    v18 = [(QLItem *)v9->_currentPreviewItem previewItemTitle];
    [(UITableViewController *)v9->_tableViewController setTitle:v18];

    v19 = _UISolariumEnabled();
    v20 = objc_alloc(MEMORY[0x277D751E0]);
    v21 = v20;
    if (v19)
    {
      v22 = [v20 initWithBarButtonSystemItem:0 target:v9 action:sel__dismiss];
    }

    else
    {
      v23 = QLLocalizedString();
      v22 = [v21 initWithTitle:v23 style:2 target:v9 action:sel__dismiss];
    }

    v24 = [(UITableViewController *)v9->_tableViewController navigationItem];
    [v24 setRightBarButtonItem:v22];

    v30[0] = v9->_tableViewController;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [(QLListViewController *)v9 setViewControllers:v25];

    [(QLListViewController *)v9 setModalPresentationStyle:0];
    if ([(QLPreviewItemStore *)v9->_previewItemStore isArchive])
    {
      [(QLListViewController *)v9 _generateItemsAndFolders];
    }

    v26 = v9;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setBarButton:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_barButton);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_barButton, obj);

    if (obj)
    {
      [(QLListViewController *)self setModalPresentationStyle:7];
      v6 = [(QLListViewController *)self popoverPresentationController];
      [v6 setBarButtonItem:obj];
      if (_UISolariumEnabled())
      {
        [MEMORY[0x277D75348] clearColor];
      }

      else
      {
        [MEMORY[0x277D75348] systemBackgroundColor];
      }
      v7 = ;
      [v6 setBackgroundColor:v7];

      [v6 setDelegate:self];
      [v6 setPermittedArrowDirections:15];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v4 = [a3 presentationStyle];

  [(QLListViewController *)self _updateNavigationBarVisibilityForPresentationStyle:v4];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_itemsWithFolders)
  {
    return [(NSArray *)self->_itemsWithFolders count:a3];
  }

  else
  {
    return [(QLPreviewItemStore *)self->_previewItemStore numberOfItems:a3];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithIdentifier:kQLArchiveCellIdentifier];
  if (!v8)
  {
    v8 = +[QLListCell listCell];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  itemsWithFolders = self->_itemsWithFolders;
  if (itemsWithFolders)
  {
    v10 = -[NSArray objectAtIndexedSubscript:](itemsWithFolders, "objectAtIndexedSubscript:", [v7 item]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(v18 + 5, v10);
      v11 = [v10 relativePath];
      [v11 pathComponents];
    }

    else
    {
      v11 = [v10 lastPathComponent];
      [v8 setFolderName:v11];
      [v10 pathComponents];
    }
    v12 = ;
    [v8 setFileDepthLevel:{objc_msgSend(v12, "count")}];
  }

  else
  {
    previewItemStore = self->_previewItemStore;
    v14 = [v7 item];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__QLListViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v16[3] = &unk_278B57280;
    v16[4] = &v17;
    [(QLPreviewItemStore *)previewItemStore previewItemAtIndex:v14 withCompletionHandler:v16];
  }

  if (v18[5])
  {
    [v8 setItem:?];
    -[QLListCellManager setupCell:withItem:atIndex:](self->_cellManager, "setupCell:withItem:atIndex:", v8, v18[5], [v7 item]);
  }

  _Block_object_dispose(&v17, 8);

  return v8;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  itemsWithFolders = self->_itemsWithFolders;
  if (itemsWithFolders)
  {
    v5 = -[NSArray objectAtIndexedSubscript:](itemsWithFolders, "objectAtIndexedSubscript:", [a4 item]);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = isKindOfClass ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  itemsWithFolders = self->_itemsWithFolders;
  if (itemsWithFolders)
  {
    v10 = -[NSArray objectAtIndexedSubscript:](itemsWithFolders, "objectAtIndexedSubscript:", [v7 item]);
    v11 = v17[5];
    v17[5] = v10;
  }

  else
  {
    previewItemStore = self->_previewItemStore;
    v13 = [v7 item];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__QLListViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v15[3] = &unk_278B57280;
    v15[4] = &v16;
    [(QLPreviewItemStore *)previewItemStore previewItemAtIndex:v13 withCompletionHandler:v15];
  }

  v14 = [(QLListViewController *)self archiveDelegate];
  [v14 didSelectPreviewItem:v17[5]];

  [(QLListViewController *)self _dismiss];
  _Block_object_dispose(&v16, 8);
}

- (void)_generateItemsAndFolders
{
  v3 = objc_opt_new();
  if ([(QLPreviewItemStore *)self->_previewItemStore numberOfItems])
  {
    v4 = 0;
    v5 = MEMORY[0x277D85DD0];
    do
    {
      previewItemStore = self->_previewItemStore;
      v8[0] = v5;
      v8[1] = 3221225472;
      v8[2] = __48__QLListViewController__generateItemsAndFolders__block_invoke;
      v8[3] = &unk_278B57630;
      v8[4] = self;
      v9 = v3;
      [(QLPreviewItemStore *)previewItemStore previewItemAtIndex:v4 withCompletionHandler:v8];

      ++v4;
    }

    while ([(QLPreviewItemStore *)self->_previewItemStore numberOfItems]> v4);
  }

  itemsWithFolders = self->_itemsWithFolders;
  self->_itemsWithFolders = v3;
}

void __48__QLListViewController__generateItemsAndFolders__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 relativePath];
  [v3 _addPath:v5 fromPreviewItem:v4 intoArray:*(a1 + 40)];
}

- (void)_addPath:(id)a3 fromPreviewItem:(id)a4 intoArray:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (v14 && ([v14 isEqualToString:&stru_284D5E510] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", @"/") & 1) == 0)
  {
    v10 = [v14 stringByDeletingLastPathComponent];
    [(QLListViewController *)self _addPath:v10 fromPreviewItem:v8 intoArray:v9];

    v11 = [v8 relativePath];
    LODWORD(v10) = [v14 isEqualToString:v11];

    v12 = v9;
    if (v10)
    {
      v13 = v8;
    }

    else
    {
      if ([v9 containsObject:v14])
      {
        goto LABEL_9;
      }

      v12 = v9;
      v13 = v14;
    }

    [v12 addObject:v13];
  }

LABEL_9:
}

- (QLListViewControllerDelegate)archiveDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_archiveDelegate);

  return WeakRetained;
}

- (UIBarButtonItem)barButton
{
  WeakRetained = objc_loadWeakRetained(&self->_barButton);

  return WeakRetained;
}

@end
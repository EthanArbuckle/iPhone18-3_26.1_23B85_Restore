@interface QLListViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (QLListViewController)initWithPreviewItemStore:(id)store currentPreviewItem:(id)item;
- (QLListViewControllerDelegate)archiveDelegate;
- (UIBarButtonItem)barButton;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addPath:(id)path fromPreviewItem:(id)item intoArray:(id)array;
- (void)_generateItemsAndFolders;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)setBarButton:(id)button;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation QLListViewController

- (QLListViewController)initWithPreviewItemStore:(id)store currentPreviewItem:(id)item
{
  v30[1] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  itemCopy = item;
  v29.receiver = self;
  v29.super_class = QLListViewController;
  v9 = [(QLListViewController *)&v29 init];
  if (v9)
  {
    v10 = objc_opt_new();
    cellManager = v9->_cellManager;
    v9->_cellManager = v10;

    objc_storeStrong(&v9->_previewItemStore, store);
    objc_storeStrong(&v9->_currentPreviewItem, item);
    v12 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:0];
    tableViewController = v9->_tableViewController;
    v9->_tableViewController = v12;

    tableView = [(UITableViewController *)v9->_tableViewController tableView];
    [tableView setDataSource:v9];

    tableView2 = [(UITableViewController *)v9->_tableViewController tableView];
    [tableView2 setDelegate:v9];

    if (_UISolariumEnabled())
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      tableView3 = [(UITableViewController *)v9->_tableViewController tableView];
      [tableView3 setBackgroundColor:clearColor];
    }

    previewItemTitle = [(QLItem *)v9->_currentPreviewItem previewItemTitle];
    [(UITableViewController *)v9->_tableViewController setTitle:previewItemTitle];

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

    navigationItem = [(UITableViewController *)v9->_tableViewController navigationItem];
    [navigationItem setRightBarButtonItem:v22];

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

- (void)setBarButton:(id)button
{
  obj = button;
  WeakRetained = objc_loadWeakRetained(&self->_barButton);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_barButton, obj);

    if (obj)
    {
      [(QLListViewController *)self setModalPresentationStyle:7];
      popoverPresentationController = [(QLListViewController *)self popoverPresentationController];
      [popoverPresentationController setBarButtonItem:obj];
      if (_UISolariumEnabled())
      {
        [MEMORY[0x277D75348] clearColor];
      }

      else
      {
        [MEMORY[0x277D75348] systemBackgroundColor];
      }
      v7 = ;
      [popoverPresentationController setBackgroundColor:v7];

      [popoverPresentationController setDelegate:self];
      [popoverPresentationController setPermittedArrowDirections:15];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationStyle = [presentation presentationStyle];

  [(QLListViewController *)self _updateNavigationBarVisibilityForPresentationStyle:presentationStyle];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (self->_itemsWithFolders)
  {
    return [(NSArray *)self->_itemsWithFolders count:view];
  }

  else
  {
    return [(QLPreviewItemStore *)self->_previewItemStore numberOfItems:view];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:kQLArchiveCellIdentifier];
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
    v10 = -[NSArray objectAtIndexedSubscript:](itemsWithFolders, "objectAtIndexedSubscript:", [pathCopy item]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(v18 + 5, v10);
      relativePath = [v10 relativePath];
      [relativePath pathComponents];
    }

    else
    {
      relativePath = [v10 lastPathComponent];
      [v8 setFolderName:relativePath];
      [v10 pathComponents];
    }
    v12 = ;
    [v8 setFileDepthLevel:{objc_msgSend(v12, "count")}];
  }

  else
  {
    previewItemStore = self->_previewItemStore;
    item = [pathCopy item];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__QLListViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v16[3] = &unk_278B57280;
    v16[4] = &v17;
    [(QLPreviewItemStore *)previewItemStore previewItemAtIndex:item withCompletionHandler:v16];
  }

  if (v18[5])
  {
    [v8 setItem:?];
    -[QLListCellManager setupCell:withItem:atIndex:](self->_cellManager, "setupCell:withItem:atIndex:", v8, v18[5], [pathCopy item]);
  }

  _Block_object_dispose(&v17, 8);

  return v8;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  itemsWithFolders = self->_itemsWithFolders;
  if (itemsWithFolders)
  {
    v5 = -[NSArray objectAtIndexedSubscript:](itemsWithFolders, "objectAtIndexedSubscript:", [path item]);
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  itemsWithFolders = self->_itemsWithFolders;
  if (itemsWithFolders)
  {
    v10 = -[NSArray objectAtIndexedSubscript:](itemsWithFolders, "objectAtIndexedSubscript:", [pathCopy item]);
    v11 = v17[5];
    v17[5] = v10;
  }

  else
  {
    previewItemStore = self->_previewItemStore;
    item = [pathCopy item];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__QLListViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    v15[3] = &unk_278B57280;
    v15[4] = &v16;
    [(QLPreviewItemStore *)previewItemStore previewItemAtIndex:item withCompletionHandler:v15];
  }

  archiveDelegate = [(QLListViewController *)self archiveDelegate];
  [archiveDelegate didSelectPreviewItem:v17[5]];

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

- (void)_addPath:(id)path fromPreviewItem:(id)item intoArray:(id)array
{
  pathCopy = path;
  itemCopy = item;
  arrayCopy = array;
  if (pathCopy && ([pathCopy isEqualToString:&stru_284D5E510] & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"/") & 1) == 0)
  {
    stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
    [(QLListViewController *)self _addPath:stringByDeletingLastPathComponent fromPreviewItem:itemCopy intoArray:arrayCopy];

    relativePath = [itemCopy relativePath];
    LODWORD(stringByDeletingLastPathComponent) = [pathCopy isEqualToString:relativePath];

    v12 = arrayCopy;
    if (stringByDeletingLastPathComponent)
    {
      v13 = itemCopy;
    }

    else
    {
      if ([arrayCopy containsObject:pathCopy])
      {
        goto LABEL_9;
      }

      v12 = arrayCopy;
      v13 = pathCopy;
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
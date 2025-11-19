@interface WFChooseImageViewController
- (WFChooseImageViewController)initWithCollection:(id)a3 selectedIndexes:(id)a4;
- (WFChooseImageViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancel;
- (void)cell:(id)a3 didSelectImageViewAtIndex:(unint64_t)a4;
- (void)done;
- (void)setItemsPerRow:(int64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WFChooseImageViewController

- (WFChooseImageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cell:(id)a3 didSelectImageViewAtIndex:(unint64_t)a4
{
  v19 = a3;
  v6 = [(WFChooseImageViewController *)self tableView];
  v7 = [v6 indexPathForCell:v19];
  v8 = a4 + self->_itemsPerRow * [v7 row];

  v9 = [(WFContentCollection *)self->_collection items];
  if (v8 >= [v9 count])
  {
    v11 = v9;
  }

  else
  {
    v10 = [(WFContentCollection *)self->_collection items];
    v11 = [v10 objectAtIndex:v8];

    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = [(WFChooseImageViewController *)self maximumNumberOfItems];
    v13 = [(WFChooseImageViewController *)self minimumNumberOfItems];
    v14 = [(NSMutableSet *)self->_selectedItems containsObject:v11];
    selectedItems = self->_selectedItems;
    if (v14)
    {
      [(NSMutableSet *)selectedItems removeObject:v11];
    }

    else if (v12 - 1 >= [(NSMutableSet *)selectedItems count])
    {
      [(NSMutableSet *)self->_selectedItems addObject:v11];
    }

    if ([(NSMutableSet *)self->_selectedItems count]== 1 && [(WFChooseImageViewController *)self maximumNumberOfItems]== 1)
    {
      [(WFChooseImageViewController *)self done];
    }

    else
    {
      [v19 setSelected:-[NSMutableSet containsObject:](self->_selectedItems atIndex:{"containsObject:", v11), v8 % self->_itemsPerRow}];
      v16 = [(NSMutableSet *)self->_selectedItems count]>= v13;
      v17 = [(WFChooseImageViewController *)self navigationItem];
      v18 = [v17 rightBarButtonItem];
      [v18 setEnabled:v16];
    }
  }

LABEL_13:
}

- (void)done
{
  v3 = MEMORY[0x277CFC2E0];
  v4 = [(NSMutableSet *)self->_selectedItems allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__WFChooseImageViewController_done__block_invoke;
  v8[3] = &unk_278C36ED8;
  v8[4] = self;
  v5 = [v4 sortedArrayUsingComparator:v8];
  v6 = [v3 collectionWithItems:v5];

  v7 = [(WFChooseImageViewController *)self delegate];
  [v7 chooseImageController:self didSelectItems:v6];
}

uint64_t __35__WFChooseImageViewController_done__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(*(a1 + 32) + 1112);
  v7 = a3;
  v8 = a2;
  v9 = [v6 items];
  v10 = [v9 indexOfObject:v8];

  v11 = [v5 numberWithUnsignedInteger:v10];
  v12 = MEMORY[0x277CCABB0];
  v13 = [*(*(a1 + 32) + 1112) items];
  v14 = [v13 indexOfObject:v7];

  v15 = [v12 numberWithUnsignedInteger:v14];
  v16 = [v11 compare:v15];

  return v16;
}

- (void)cancel
{
  v3 = [(WFChooseImageViewController *)self delegate];
  [v3 chooseImageControllerDidCancel:self];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = [(WFChooseImageViewController *)self tableView:a3];
  [v5 bounds];
  v6 = floor((CGRectGetWidth(v8) - self->_itemsPerRow + 1.0) / self->_itemsPerRow);

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"WFImageContentItemCellIdentifier"];
  if (!v7)
  {
    v7 = [[WFImageContentItemCell alloc] initWithStyle:0 reuseIdentifier:@"WFImageContentItemCellIdentifier"];
  }

  v8 = [v6 row];
  itemsPerRow = self->_itemsPerRow;
  v10 = itemsPerRow * v8;
  v11 = [(WFContentCollection *)self->_collection items];
  v12 = [v11 count];
  v13 = v12 - self->_itemsPerRow * [v6 row];

  if (itemsPerRow >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = itemsPerRow;
  }

  v15 = [(WFContentCollection *)self->_collection items];
  v16 = [v15 subarrayWithRange:{v10, v14}];
  v17 = [v16 mutableCopy];

  while ([v17 count] < self->_itemsPerRow)
  {
    v18 = [MEMORY[0x277CBEB68] null];
    [v17 addObject:v18];
  }

  [(WFImageContentItemCell *)v7 setItems:v17];
  [(WFImageContentItemCell *)v7 setDelegate:self];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__WFChooseImageViewController_tableView_cellForRowAtIndexPath___block_invoke;
  v22[3] = &unk_278C36EB0;
  v19 = v7;
  v23 = v19;
  v24 = self;
  [v17 enumerateObjectsUsingBlock:v22];
  v20 = v19;

  return v19;
}

void __63__WFChooseImageViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = 0;
  }

  else
  {
    v5 = v6;
  }

  v7 = v5;
  [*(a1 + 32) setSelected:objc_msgSend(*(*(a1 + 40) + 1048) atIndex:{"containsObject:", v5), a3}];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WFContentCollection *)self->_collection items:a3];
  v6 = vcvtpd_s64_f64([v5 count] / self->_itemsPerRow);

  return v6;
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = WFChooseImageViewController;
  [(WFChooseImageViewController *)&v17 viewDidLayoutSubviews];
  p_lastFrame = &self->_lastFrame;
  v4 = [(WFChooseImageViewController *)self tableView];
  [v4 frame];
  v18.origin.x = v5;
  v18.origin.y = v6;
  v18.size.width = v7;
  v18.size.height = v8;
  v9 = CGRectEqualToRect(self->_lastFrame, v18);

  if (!v9)
  {
    v10 = [(WFChooseImageViewController *)self tableView];
    [v10 contentSize];
    [(WFChooseImageViewController *)self setItemsPerRow:vcvtmd_s64_f64(v11 / 80.0)];

    v12 = [(WFChooseImageViewController *)self tableView];
    [v12 frame];
    p_lastFrame->origin.x = v13;
    p_lastFrame->origin.y = v14;
    p_lastFrame->size.width = v15;
    p_lastFrame->size.height = v16;
  }
}

- (void)setItemsPerRow:(int64_t)a3
{
  if (a3)
  {
    self->_itemsPerRow = a3;
    v3 = [(WFChooseImageViewController *)self tableView];
    [v3 reloadData];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WFChooseImageViewController;
  [(WFChooseImageViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(WFChooseImageViewController *)self tableView];
  [v4 setSeparatorColor:v3];
}

- (WFChooseImageViewController)initWithCollection:(id)a3 selectedIndexes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = WFChooseImageViewController;
  v9 = [(WFChooseImageViewController *)&v21 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    v10->_itemsPerRow = 4;
    v11 = objc_alloc(MEMORY[0x277CBEB58]);
    v12 = [v7 items];
    v13 = [v12 objectsAtIndexes:v8];
    v14 = [v11 initWithArray:v13];
    selectedItems = v10->_selectedItems;
    v10->_selectedItems = v14;

    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v10 action:sel_done];
    [v16 setStyle:2];
    v17 = [(WFChooseImageViewController *)v10 navigationItem];
    [v17 setRightBarButtonItem:v16];

    v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v10 action:sel_cancel];
    v19 = [(WFChooseImageViewController *)v10 navigationItem];
    [v19 setLeftBarButtonItem:v18];
  }

  return v10;
}

@end
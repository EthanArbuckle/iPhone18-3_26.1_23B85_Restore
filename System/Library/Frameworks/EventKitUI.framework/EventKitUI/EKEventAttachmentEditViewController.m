@interface EKEventAttachmentEditViewController
- (EKEventAttachmentEditViewController)initWithFrame:(CGRect)a3 attachments:(id)a4 sourceIsManaged:(BOOL)a5;
- (EKEventAttachmentEditViewControllerDelegate)delegate;
- (id)owningEventForAttachmentCellController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation EKEventAttachmentEditViewController

- (EKEventAttachmentEditViewController)initWithFrame:(CGRect)a3 attachments:(id)a4 sourceIsManaged:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v20.receiver = self;
  v20.super_class = EKEventAttachmentEditViewController;
  v12 = [(EKEditItemViewController *)&v20 initWithFrame:x, y, width, height];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:2 style:{x, y, width, height}];
    table = v12->_table;
    v12->_table = v13;

    v15 = [EKEventAttachmentCellController cellControllersForAttachments:v11 givenExistingControllers:0 sourceIsManaged:v5];
    cellControllers = v12->_cellControllers;
    v12->_cellControllers = v15;

    [(NSArray *)v12->_cellControllers makeObjectsPerformSelector:sel_setDelegate_ withObject:v12];
    v17 = EventKitUIBundle();
    v18 = [v17 localizedStringForKey:@"Attachments" value:&stru_1F4EF6790 table:0];
    [(EKEventAttachmentEditViewController *)v12 setTitle:v18];
  }

  return v12;
}

- (void)loadView
{
  v3 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:2 style:{self->super._initialFrame.origin.x, self->super._initialFrame.origin.y, self->super._initialFrame.size.width, self->super._initialFrame.size.height}];
  table = self->_table;
  self->_table = v3;

  [(UITableView *)self->_table setDataSource:self];
  [(UITableView *)self->_table setDelegate:self];
  [(UITableView *)self->_table setAutoresizingMask:18];
  v5 = self->_table;

  [(EKEventAttachmentEditViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = EKEventAttachmentEditViewController;
  [(EKEditItemViewController *)&v7 viewDidLoad];
  if (self->super._modal)
  {
    v3 = [(EKEventAttachmentEditViewController *)self navigationItem];
    [v3 setLeftBarButtonItem:0];

    v4 = [(EKEventAttachmentEditViewController *)self navigationItem];
    [v4 setHidesBackButton:1];

    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_saveAndDismiss];
    v6 = [(EKEventAttachmentEditViewController *)self navigationItem];
    [v6 setRightBarButtonItem:v5];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  if (v6 >= -[NSArray count](self->_cellControllers, "count") || (-[NSArray objectAtIndex:](self->_cellControllers, "objectAtIndex:", [v5 row]), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "cell"), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = [v7 row];
  v8 = v28[3];
  if ((v8 & 0x8000000000000000) != 0 || v8 >= [(NSArray *)self->_cellControllers count])
  {
    v15 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x1E69DC8E8];
    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Remove attachment" value:@"Remove" table:0];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __100__EKEventAttachmentEditViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
    v20 = &unk_1E8440990;
    objc_copyWeak(&v25, &location);
    v24 = &v27;
    v21 = self;
    v22 = v6;
    v23 = v7;
    v12 = [v9 contextualActionWithStyle:1 title:v11 handler:&v17];

    v13 = MEMORY[0x1E69DCFC0];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObject:{v12, v17, v18, v19, v20, v21}];
    v15 = [v13 configurationWithActions:v14];

    [v15 setPerformsFirstActionWithFullSwipe:0];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v27, 8);

  return v15;
}

void __100__EKEventAttachmentEditViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = [WeakRetained[135] objectAtIndex:*(*(*(a1 + 56) + 8) + 24)];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:WeakRetained[135]];
  [v8 removeObjectAtIndex:*(*(*(a1 + 56) + 8) + 24)];
  v9 = [v7 attachment];
  v10 = [WeakRetained delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [WeakRetained delegate];
    v13 = [v12 owningEventForAttachmentEditViewController:*(a1 + 32)];
  }

  else
  {
    v13 = 0;
  }

  [v13 removeAttachment:v9];
  objc_storeStrong(WeakRetained + 135, v8);
  v14 = *(a1 + 40);
  v18[0] = *(a1 + 48);
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v14 deleteRowsAtIndexPaths:v15 withRowAnimation:0];

  v16 = [*(a1 + 32) delegate];
  LOBYTE(v15) = objc_opt_respondsToSelector();

  if (v15)
  {
    v17 = [*(a1 + 32) delegate];
    [v17 attachmentEditViewController:*(a1 + 32) attachmentDidChange:*(*(*(a1 + 56) + 8) + 24)];
  }

  v5[2](v5, 1);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a4;
  v5 = [v7 row];
  if (v5 < [(NSArray *)self->_cellControllers count])
  {
    v6 = -[NSArray objectAtIndex:](self->_cellControllers, "objectAtIndex:", [v7 row]);
    [v6 cellSelected];
  }

  [(UITableView *)self->_table selectRowAtIndexPath:0 animated:1 scrollPosition:0];
}

- (id)owningEventForAttachmentCellController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 owningEventForAttachmentEditViewController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (EKEventAttachmentEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
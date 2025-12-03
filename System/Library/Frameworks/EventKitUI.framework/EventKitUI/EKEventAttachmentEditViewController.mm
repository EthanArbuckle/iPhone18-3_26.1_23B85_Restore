@interface EKEventAttachmentEditViewController
- (EKEventAttachmentEditViewController)initWithFrame:(CGRect)frame attachments:(id)attachments sourceIsManaged:(BOOL)managed;
- (EKEventAttachmentEditViewControllerDelegate)delegate;
- (id)owningEventForAttachmentCellController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation EKEventAttachmentEditViewController

- (EKEventAttachmentEditViewController)initWithFrame:(CGRect)frame attachments:(id)attachments sourceIsManaged:(BOOL)managed
{
  managedCopy = managed;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attachmentsCopy = attachments;
  v20.receiver = self;
  v20.super_class = EKEventAttachmentEditViewController;
  height = [(EKEditItemViewController *)&v20 initWithFrame:x, y, width, height];
  if (height)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:2 style:{x, y, width, height}];
    table = height->_table;
    height->_table = v13;

    v15 = [EKEventAttachmentCellController cellControllersForAttachments:attachmentsCopy givenExistingControllers:0 sourceIsManaged:managedCopy];
    cellControllers = height->_cellControllers;
    height->_cellControllers = v15;

    [(NSArray *)height->_cellControllers makeObjectsPerformSelector:sel_setDelegate_ withObject:height];
    v17 = EventKitUIBundle();
    v18 = [v17 localizedStringForKey:@"Attachments" value:&stru_1F4EF6790 table:0];
    [(EKEventAttachmentEditViewController *)height setTitle:v18];
  }

  return height;
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
    navigationItem = [(EKEventAttachmentEditViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:0];

    navigationItem2 = [(EKEventAttachmentEditViewController *)self navigationItem];
    [navigationItem2 setHidesBackButton:1];

    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_saveAndDismiss];
    navigationItem3 = [(EKEventAttachmentEditViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:v5];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  if (v6 >= -[NSArray count](self->_cellControllers, "count") || (-[NSArray objectAtIndex:](self->_cellControllers, "objectAtIndex:", [pathCopy row]), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "cell"), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = [pathCopy row];
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
    selfCopy = self;
    v22 = viewCopy;
    v23 = pathCopy;
    v12 = [v9 contextualActionWithStyle:1 title:v11 handler:&v17];

    v13 = MEMORY[0x1E69DCFC0];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObject:{v12, v17, v18, v19, v20, selfCopy}];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if (v5 < [(NSArray *)self->_cellControllers count])
  {
    v6 = -[NSArray objectAtIndex:](self->_cellControllers, "objectAtIndex:", [pathCopy row]);
    [v6 cellSelected];
  }

  [(UITableView *)self->_table selectRowAtIndexPath:0 animated:1 scrollPosition:0];
}

- (id)owningEventForAttachmentCellController:(id)controller
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
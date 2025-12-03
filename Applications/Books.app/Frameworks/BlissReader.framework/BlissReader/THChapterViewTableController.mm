@interface THChapterViewTableController
- (THChapterViewTableController)initWithChapterTitle:(id)title delegate:(id)delegate;
- (THChapterViewTableControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated completion:(id)completion;
- (void)p_doneButtonPressed:(id)pressed;
- (void)presentOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation THChapterViewTableController

- (THChapterViewTableController)initWithChapterTitle:(id)title delegate:(id)delegate
{
  titleCopy = title;
  delegateCopy = delegate;
  v36.receiver = self;
  v36.super_class = THChapterViewTableController;
  v8 = [(THChapterViewTableController *)&v36 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [[UITableViewController alloc] initWithStyle:0];
    v11 = [[UINavigationController alloc] initWithRootViewController:v10];
    navigationController = v9->_navigationController;
    v9->_navigationController = v11;

    v13 = +[UIColor bc_booksBackground];
    view = [(UINavigationController *)v9->_navigationController view];
    [view setBackgroundColor:v13];

    v15 = +[UIColor bc_booksBackground];
    navigationBar = [(UINavigationController *)v9->_navigationController navigationBar];
    [navigationBar setBackgroundColor:v15];

    v17 = +[UIColor bc_booksBackground];
    navigationBar2 = [(UINavigationController *)v9->_navigationController navigationBar];
    [navigationBar2 setBarTintColor:v17];

    v19 = +[UIColor bc_booksKeyColor];
    navigationBar3 = [(UINavigationController *)v9->_navigationController navigationBar];
    [navigationBar3 setTintColor:v19];

    [v10 setTitle:titleCopy];
    tableView = [v10 tableView];
    [tableView setDelegate:v9];

    tableView2 = [v10 tableView];
    [tableView2 setDataSource:v9];

    if (+[UIFont bc_accessibilityFontSizesEnabled])
    {
      v23 = UITableViewAutomaticDimension;
    }

    else
    {
      v23 = 44.0;
    }

    tableView3 = [v10 tableView];
    [tableView3 setRowHeight:v23];

    tableView4 = [v10 tableView];
    [tableView4 setEstimatedRowHeight:44.0];

    v26 = objc_opt_new();
    tableView5 = [v10 tableView];
    [tableView5 setTableFooterView:v26];

    v28 = +[UIColor bc_booksBackground];
    tableView6 = [v10 tableView];
    [tableView6 setBackgroundColor:v28];

    v30 = THBundle();
    v31 = [UINib nibWithNibName:@"THChapterViewTableController" bundle:v30];

    tableView7 = [v10 tableView];
    [tableView7 registerNib:v31 forCellReuseIdentifier:@"THChapterViewTableControllerCell"];

    v33 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v9 action:"p_doneButtonPressed:"];
    navigationItem = [v10 navigationItem];
    [navigationItem setRightBarButtonItem:v33];
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  tableView = [topViewController tableView];
  [tableView setDelegate:0];

  tableView2 = [topViewController tableView];
  [tableView2 setDataSource:0];

  v6.receiver = self;
  v6.super_class = THChapterViewTableController;
  [(THChapterViewTableController *)&v6 dealloc];
}

- (void)contentSizeCategoryDidChange
{
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  tableView = [topViewController tableView];
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    v4 = UITableViewAutomaticDimension;
  }

  else
  {
    v4 = 44.0;
  }

  tableView2 = [topViewController tableView];
  [tableView2 setRowHeight:v4];

  tableView3 = [topViewController tableView];
  [tableView3 setEstimatedRowHeight:44.0];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  visibleCells = [tableView visibleCells];
  v8 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v12 + 1) + 8 * i) contentSizeCategoryDidChange];
      }

      v9 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [tableView reloadData];
}

- (void)p_doneButtonPressed:(id)pressed
{
  delegate = [(THChapterViewTableController *)self delegate];
  [delegate chapterViewTableDoneButtonPressed:self];
}

- (void)presentOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentingViewController = [(UINavigationController *)self->_navigationController presentingViewController];

  if (presentingViewController)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    [controllerCopy presentViewController:self->_navigationController animated:animatedCopy completion:completionCopy];
  }
}

- (void)dismissAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentingViewController = [(UINavigationController *)self->_navigationController presentingViewController];

  if (presentingViewController)
  {
    [(UINavigationController *)self->_navigationController dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(THChapterViewTableController *)self delegate:view];
  v6 = [v5 chapterViewTableNumberOfEntries:self];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:{@"THChapterViewTableControllerCell", path}];
  if (!v4)
  {
    v4 = [[THChapterViewTableControllerCell alloc] initWithStyle:0 reuseIdentifier:@"THChapterViewTableControllerCell"];
  }

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (v8)
  {
    delegate = [(THChapterViewTableController *)self delegate];
    v10 = [delegate chapterViewTable:self entryForIndex:{objc_msgSend(pathCopy, "row")}];

    title = [v10 title];
    titleLabel = [v8 titleLabel];
    [titleLabel setText:title];

    sectionIdentifier = [v10 sectionIdentifier];
    sectionLabel = [v8 sectionLabel];
    [sectionLabel setText:sectionIdentifier];

    displayPageNumber = [v10 displayPageNumber];
    pageLabel = [v8 pageLabel];
    [pageLabel setText:displayPageNumber];

    [v8 updateLabels];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(THChapterViewTableController *)self delegate];
  v6 = [pathCopy row];

  [delegate chapterViewTable:self selectedEntryWithIndex:v6];
}

- (THChapterViewTableControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
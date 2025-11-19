@interface THChapterViewTableController
- (THChapterViewTableController)initWithChapterTitle:(id)a3 delegate:(id)a4;
- (THChapterViewTableControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3 completion:(id)a4;
- (void)p_doneButtonPressed:(id)a3;
- (void)presentOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation THChapterViewTableController

- (THChapterViewTableController)initWithChapterTitle:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = THChapterViewTableController;
  v8 = [(THChapterViewTableController *)&v36 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    v10 = [[UITableViewController alloc] initWithStyle:0];
    v11 = [[UINavigationController alloc] initWithRootViewController:v10];
    navigationController = v9->_navigationController;
    v9->_navigationController = v11;

    v13 = +[UIColor bc_booksBackground];
    v14 = [(UINavigationController *)v9->_navigationController view];
    [v14 setBackgroundColor:v13];

    v15 = +[UIColor bc_booksBackground];
    v16 = [(UINavigationController *)v9->_navigationController navigationBar];
    [v16 setBackgroundColor:v15];

    v17 = +[UIColor bc_booksBackground];
    v18 = [(UINavigationController *)v9->_navigationController navigationBar];
    [v18 setBarTintColor:v17];

    v19 = +[UIColor bc_booksKeyColor];
    v20 = [(UINavigationController *)v9->_navigationController navigationBar];
    [v20 setTintColor:v19];

    [v10 setTitle:v6];
    v21 = [v10 tableView];
    [v21 setDelegate:v9];

    v22 = [v10 tableView];
    [v22 setDataSource:v9];

    if (+[UIFont bc_accessibilityFontSizesEnabled])
    {
      v23 = UITableViewAutomaticDimension;
    }

    else
    {
      v23 = 44.0;
    }

    v24 = [v10 tableView];
    [v24 setRowHeight:v23];

    v25 = [v10 tableView];
    [v25 setEstimatedRowHeight:44.0];

    v26 = objc_opt_new();
    v27 = [v10 tableView];
    [v27 setTableFooterView:v26];

    v28 = +[UIColor bc_booksBackground];
    v29 = [v10 tableView];
    [v29 setBackgroundColor:v28];

    v30 = THBundle();
    v31 = [UINib nibWithNibName:@"THChapterViewTableController" bundle:v30];

    v32 = [v10 tableView];
    [v32 registerNib:v31 forCellReuseIdentifier:@"THChapterViewTableControllerCell"];

    v33 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v9 action:"p_doneButtonPressed:"];
    v34 = [v10 navigationItem];
    [v34 setRightBarButtonItem:v33];
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3 = [(UINavigationController *)self->_navigationController topViewController];
  v4 = [v3 tableView];
  [v4 setDelegate:0];

  v5 = [v3 tableView];
  [v5 setDataSource:0];

  v6.receiver = self;
  v6.super_class = THChapterViewTableController;
  [(THChapterViewTableController *)&v6 dealloc];
}

- (void)contentSizeCategoryDidChange
{
  v2 = [(UINavigationController *)self->_navigationController topViewController];
  v3 = [v2 tableView];
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    v4 = UITableViewAutomaticDimension;
  }

  else
  {
    v4 = 44.0;
  }

  v5 = [v2 tableView];
  [v5 setRowHeight:v4];

  v6 = [v2 tableView];
  [v6 setEstimatedRowHeight:44.0];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v3 visibleCells];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * i) contentSizeCategoryDidChange];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [v3 reloadData];
}

- (void)p_doneButtonPressed:(id)a3
{
  v4 = [(THChapterViewTableController *)self delegate];
  [v4 chapterViewTableDoneButtonPressed:self];
}

- (void)presentOnViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v10 = a3;
  v8 = a5;
  v9 = [(UINavigationController *)self->_navigationController presentingViewController];

  if (v9)
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    [v10 presentViewController:self->_navigationController animated:v6 completion:v8];
  }
}

- (void)dismissAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(UINavigationController *)self->_navigationController presentingViewController];

  if (v6)
  {
    [(UINavigationController *)self->_navigationController dismissViewControllerAnimated:v4 completion:v7];
  }

  else if (v7)
  {
    v7[2]();
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(THChapterViewTableController *)self delegate:a3];
  v6 = [v5 chapterViewTableNumberOfEntries:self];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:{@"THChapterViewTableControllerCell", a4}];
  if (!v4)
  {
    v4 = [[THChapterViewTableControllerCell alloc] initWithStyle:0 reuseIdentifier:@"THChapterViewTableControllerCell"];
  }

  return v4;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v17 = a5;
  v7 = a4;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (v8)
  {
    v9 = [(THChapterViewTableController *)self delegate];
    v10 = [v9 chapterViewTable:self entryForIndex:{objc_msgSend(v17, "row")}];

    v11 = [v10 title];
    v12 = [v8 titleLabel];
    [v12 setText:v11];

    v13 = [v10 sectionIdentifier];
    v14 = [v8 sectionLabel];
    [v14 setText:v13];

    v15 = [v10 displayPageNumber];
    v16 = [v8 pageLabel];
    [v16 setText:v15];

    [v8 updateLabels];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v7 = [(THChapterViewTableController *)self delegate];
  v6 = [v5 row];

  [v7 chapterViewTable:self selectedEntryWithIndex:v6];
}

- (THChapterViewTableControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface MTBasePodcastListViewController
- (BOOL)indexPathIsCurrentlySelectedRow:(id)a3;
- (MTRefreshControlDelegate)refreshDelegate;
- (MTSourceListDelegate)delegate;
- (SEL)selectorForRefreshControl;
- (id)_selectItemWithUuid:(id)a3;
- (id)firstValidIndexPath;
- (id)newCellInstanceWithReuseIdentifier:(id)a3;
- (id)storedUuid;
- (id)tableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)targetForRefreshControl;
- (int64_t)flattenedCellIndexForIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)configureCell:(id)a3 withObject:(id)a4 atIndexPath:(id)a5;
- (void)configureRowHeight;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)dealloc;
- (void)didEndDraggingScrollView;
- (void)didReceiveMemoryWarning;
- (void)endRefreshingWhenDraggingCompletes;
- (void)loadView;
- (void)restoreSelection;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)selectItemWithUuid:(id)a3 forceScroll:(BOOL)a4;
- (void)setAttributedTitleForRefreshControl:(id)a3;
- (void)setRefreshing:(BOOL)a3;
- (void)setSelectorForRefreshControl:(SEL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updatedDefaults:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MTBasePodcastListViewController

- (id)storedUuid
{
  v2 = [objc_opt_class() defaultsKey];

  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [objc_opt_class() defaultsKey];
    v5 = [v3 stringForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newCellInstanceWithReuseIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[MTPodcastCell alloc] initWithStyle:0 reuseIdentifier:v3];

  return v4;
}

- (void)configureCell:(id)a3 withObject:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSException exceptionWithName:@"MTAbstractMethod" reason:@"Handle this method in the subclass" userInfo:0];
  objc_exception_throw(v10);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  v5 = [(MTFetchedTableViewController *)self frc];
  v6 = [v5 objectAtIndexPath:v13];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 uuid];
    v8 = [(MTBasePodcastListViewController *)self delegate];
    [v8 sourceList:self didSelectItemUuid:v7 atIndexPath:v13];

    v9 = [objc_opt_class() defaultsKey];

    if (v9)
    {
      v10 = +[NSUserDefaults standardUserDefaults];
      v11 = [objc_opt_class() defaultsKey];
      [v10 setObject:v7 forKey:v11];

      v12 = [(MTBasePodcastListViewController *)self _selectItemWithUuid:v7];
    }
  }
}

- (void)restoreSelection
{
  v3 = [(MTBasePodcastListViewController *)self storedUuid];
  [(MTBasePodcastListViewController *)self setSelectedUuid:v3];

  v4 = [(MTBasePodcastListViewController *)self selectedUuid];
  [(MTBasePodcastListViewController *)self selectItemWithUuid:v4 forceScroll:0];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(MTBasePodcastListViewController *)self didEndDraggingScrollView];
  }
}

- (void)didEndDraggingScrollView
{
  if (self->_endRefreshWhenDraggingEnds)
  {
    [(MTBasePodcastListViewController *)self setRefreshing:0];
    self->_endRefreshWhenDraggingEnds = 0;
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTBasePodcastListViewController;
  return [(MTFetchedTableViewController *)&v4 numberOfSectionsInTableView:a3];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = MTBasePodcastListViewController;
  return [(MTFetchedTableViewController *)&v5 tableView:a3 numberOfRowsInSection:a4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6.receiver = self;
  v6.super_class = MTBasePodcastListViewController;
  v4 = [(MTFetchedTableViewController *)&v6 tableView:a3 cellForRowAtIndexPath:a4];

  return v4;
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = a4;
  v16.receiver = self;
  v16.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v16 controller:a3 didChangeObject:v12 atIndexPath:a5 forChangeType:a6 newIndexPath:a7];
  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 uuid];
  }

  else
  {
    v13 = 0;
  }

  if ([v13 isEqual:self->_selectedUuid])
  {
    if (a6 == 2)
    {
      v14 = [(MTBasePodcastListViewController *)self navigationController];
      v15 = [v14 popToRootViewControllerAnimated:1];
    }

    else
    {
      v14 = [(MTBasePodcastListViewController *)self delegate];
      [v14 sourceList:self didUpdateSelectedItemUuid:v13];
    }
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v6 controllerDidChangeContent:a3];
  v4 = [(MTBasePodcastListViewController *)self tableView];
  if (![(MTFetchedTableViewController *)self changeIsUserDriven]&& ([(MTBasePodcastListViewController *)self isHorizontallyCompact]& 1) == 0)
  {
    v5 = [v4 indexPathForSelectedRow];
    if (v5)
    {
    }

    else if ([v4 numberOfRowsInSection:0] >= 1)
    {
      [(MTBasePodcastListViewController *)self restoreSelection];
    }
  }
}

- (id)tableView
{
  v4.receiver = self;
  v4.super_class = MTBasePodcastListViewController;
  v2 = [(MTBasePodcastListViewController *)&v4 tableView];

  return v2;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v8 viewWillDisappear:a3];
  v4 = [(MTBasePodcastListViewController *)self refreshControl];
  v5 = [v4 isRefreshing];

  if (v5)
  {
    v6 = [(MTBasePodcastListViewController *)self refreshControl];
    [v6 endRefreshing];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:NSUserDefaultsDidChangeNotification object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTBasePodcastListViewController *)self tableView];
  v6 = [v5 indexPathForSelectedRow];

  v32.receiver = self;
  v32.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v32 viewWillAppear:v3];
  v7 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:0];
  v8 = [(MTBasePodcastListViewController *)self tableView];
  [v8 reloadData];

  v9 = [(MTBasePodcastListViewController *)self splitViewController];
  v10 = [v9 isHorizontallyCompact];

  if ((v10 & 1) == 0)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"updatedDefaults:" name:NSUserDefaultsDidChangeNotification object:0];

    v12 = [(MTBasePodcastListViewController *)self tableView];
    [v12 selectRowAtIndexPath:v6 animated:0 scrollPosition:0];

    [(MTBasePodcastListViewController *)self restoreSelection];
  }

  [UIView setAnimationsEnabled:v7];
  v13 = [(MTBasePodcastListViewController *)self refreshControl];

  if (v13)
  {
    v14 = [(MTBasePodcastListViewController *)self refreshControl];
    v15 = [v14 isRefreshing];

    if ((v15 & 1) == 0)
    {
      v16 = [(MTBasePodcastListViewController *)self refreshControl];
      [v16 beginRefreshing];

      v17 = [(MTBasePodcastListViewController *)self refreshControl];
      [v17 endRefreshing];
    }

    v18 = [(MTBasePodcastListViewController *)self refreshControl];
    v19 = [(MTBasePodcastListViewController *)self attributedTitleForRefreshControl];
    [v18 setAttributedTitle:v19];

    if ([(MTBasePodcastListViewController *)self isRefreshing])
    {
      v20 = [(MTBasePodcastListViewController *)self refreshControl];
      v21 = [v20 isRefreshing];

      if ((v21 & 1) == 0)
      {
        v22 = [(MTBasePodcastListViewController *)self tableView];
        [v22 setAdjustContentOffsetForRefreshControlAsNeeded:1];

        v23 = [(MTBasePodcastListViewController *)self refreshControl];
        [v23 beginRefreshing];

        v24 = dispatch_time(0, 100000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001450F4;
        block[3] = &unk_1004D8358;
        block[4] = self;
        dispatch_after(v24, &_dispatch_main_q, block);
      }
    }
  }

  else
  {
    v25 = [(MTBasePodcastListViewController *)self targetForRefreshControl];
    [(MTBasePodcastListViewController *)self selectorForRefreshControl];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = objc_alloc_init(UIRefreshControl);
      v28 = [(MTBasePodcastListViewController *)self targetForRefreshControl];
      [v27 addTarget:v28 action:-[MTBasePodcastListViewController selectorForRefreshControl](self forControlEvents:{"selectorForRefreshControl"), 4096}];

      v29 = [(MTBasePodcastListViewController *)self attributedTitleForRefreshControl];
      [v27 setAttributedTitle:v29];

      [(MTFetchedTableViewController *)self setRefreshControl:v27];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10014513C;
      v30[3] = &unk_1004D8358;
      v30[4] = self;
      dispatch_async(&_dispatch_main_q, v30);
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MTBasePodcastListViewController;
  [(MTBasePodcastListViewController *)&v7 viewDidAppear:a3];
  if ([(MTBasePodcastListViewController *)self isHorizontallyCompact])
  {
    v4 = [(MTBasePodcastListViewController *)self tableView];
    v5 = [(MTBasePodcastListViewController *)self tableView];
    v6 = [v5 indexPathForSelectedRow];
    [v4 deselectRowAtIndexPath:v6 animated:1];
  }

  [(MTBasePodcastListViewController *)self simulateMemoryWarning];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v2 didReceiveMemoryWarning];
}

- (void)loadView
{
  v3 = [MTTableView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v5 = [(MTTableView *)v3 initWithFrame:2 style:?];

  [(MTTableView *)v5 setAutoresizingMask:18];
  [(MTTableView *)v5 setDataSource:self];
  [(MTTableView *)v5 setDelegate:self];
  [(MTTableView *)v5 setSeparatorStyle:1];
  [(MTTableView *)v5 setSeparatorInset:0.0, 70.0, 0.0, 0.0];
  [(MTBasePodcastListViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v7 viewDidLoad];
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = [(MTBasePodcastListViewController *)self tableView];
  [v4 setTableFooterView:v3];

  v5 = [(MTBasePodcastListViewController *)self storedUuid];
  [(MTBasePodcastListViewController *)self setSelectedUuid:v5];

  [(MTBasePodcastListViewController *)self configureRowHeight];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)configureRowHeight
{
  v3 = [(MTBasePodcastListViewController *)self tableView];
  [(MTGenericCell *)MTPodcastCell heightForWidth:1.79769313e308];
  [v3 setEstimatedRowHeight:?];

  v4 = [(MTBasePodcastListViewController *)self tableView];
  [v4 setRowHeight:UITableViewAutomaticDimension];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v4 dealloc];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(MTBasePodcastListViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [(MTBasePodcastListViewController *)self tableView];
  v6 = [v5 tableHeaderView];

  [v6 setNeedsLayout];
}

- (void)setRefreshing:(BOOL)a3
{
  if (self->_refreshing == a3)
  {
    return;
  }

  v3 = a3;
  if (a3)
  {
    self->_refreshing = a3;
    goto LABEL_9;
  }

  v5 = [(MTBasePodcastListViewController *)self tableView];
  v6 = [v5 isDragging];

  if (!v6)
  {
    self->_refreshing = v3;
    v7 = [(MTBasePodcastListViewController *)self tableView];
    [v7 reloadData];

LABEL_9:
    [(MTFetchedTableViewController *)self setChangeIsUserDriven:v3];
    if (self->_refreshing)
    {
      v8 = [(MTBasePodcastListViewController *)self refreshControl];
      v9 = [v8 isRefreshing];

      if (!v9)
      {
        v12 = [(MTBasePodcastListViewController *)self refreshControl];
        [v12 beginRefreshing];
        goto LABEL_15;
      }

      if (self->_refreshing)
      {
        goto LABEL_16;
      }
    }

    v10 = [(MTBasePodcastListViewController *)self refreshControl];
    v11 = [v10 isRefreshing];

    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = [(MTBasePodcastListViewController *)self refreshControl];
    [v12 endRefreshing];
LABEL_15:

LABEL_16:
    if (!self->_refreshing)
    {
      v13 = [(MTBasePodcastListViewController *)self refreshDelegate];
      [v13 didEndRefreshing];
    }

    return;
  }

  [(MTBasePodcastListViewController *)self endRefreshingWhenDraggingCompletes];
}

- (void)endRefreshingWhenDraggingCompletes
{
  v3 = [(MTBasePodcastListViewController *)self tableView];
  v4 = [v3 isDragging];

  if (v4)
  {
    self->_endRefreshWhenDraggingEnds = 1;
  }

  else
  {

    [(MTBasePodcastListViewController *)self setRefreshing:0];
  }
}

- (void)setAttributedTitleForRefreshControl:(id)a3
{
  v6 = a3;
  if (![(NSAttributedString *)self->_attributedTitleForRefreshControl isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_attributedTitleForRefreshControl, a3);
    v5 = [(MTBasePodcastListViewController *)self refreshControl];
    [v5 setAttributedTitle:v6];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  v6 = [v5 textLabel];
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  v9 = [v5 backgroundView];

  v8 = +[UIColor backgroundColor];
  [v9 setBackgroundColor:v8];
}

- (int64_t)flattenedCellIndexForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(MTBasePodcastListViewController *)self tableView];
  v7 = [(MTBasePodcastListViewController *)self numberOfSectionsInTableView:v6];

  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [(MTBasePodcastListViewController *)self tableView];
      v10 += [(MTBasePodcastListViewController *)self tableView:v11 numberOfRowsInSection:v9];

      ++v9;
      v12 = [v4 section];
      v13 = [(MTBasePodcastListViewController *)self tableView];
      v14 = [(MTBasePodcastListViewController *)self numberOfSectionsInTableView:v13];

      if (v12 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }
    }

    while (v15 > v9);
  }

  v16 = [v4 row];

  return v16 + v10;
}

- (void)updatedDefaults:(id)a3
{
  v4 = [objc_opt_class() defaultsKey];

  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100145AE8;
    block[3] = &unk_1004D8358;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)firstValidIndexPath
{
  v2 = [(MTBasePodcastListViewController *)self tableView];
  v3 = [v2 dataSource];
  if ([v3 tableView:v2 numberOfRowsInSection:0])
  {
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_selectItemWithUuid:(id)a3
{
  v4 = a3;
  v5 = [(MTFetchedTableViewController *)self frc];
  v6 = [v5 fetchedObjects];
  v7 = [v6 count];

  if (v7)
  {
    v12 = 0;
    v13 = 0;
    [(MTBasePodcastListViewController *)self getObjectId:&v13 andIndexPath:&v12 forItemWithUuid:v4];
    v8 = v13;
    v9 = v12;
    if (v9)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    [(MTBasePodcastListViewController *)self setSelectedUuid:v10];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  return v9;
}

- (void)selectItemWithUuid:(id)a3 forceScroll:(BOOL)a4
{
  v4 = a4;
  v6 = [(MTBasePodcastListViewController *)self _selectItemWithUuid:a3];
  if (v6 || ([(MTBasePodcastListViewController *)self firstValidIndexPath], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v6;
    if (![(MTBasePodcastListViewController *)self indexPathIsCurrentlySelectedRow:v6]|| v4)
    {
      v7 = [(MTBasePodcastListViewController *)self tableView];
      [v7 selectRowAtIndexPath:v9 animated:0 scrollPosition:2];

      v8 = [(MTBasePodcastListViewController *)self tableView];
      [(MTBasePodcastListViewController *)self tableView:v8 didSelectRowAtIndexPath:v9];
    }

    v6 = v9;
  }
}

- (BOOL)indexPathIsCurrentlySelectedRow:(id)a3
{
  v4 = a3;
  v5 = [(MTBasePodcastListViewController *)self tableView];
  v6 = [v5 indexPathForSelectedRow];
  v7 = [v4 isEqual:v6];

  return v7;
}

- (MTSourceListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MTRefreshControlDelegate)refreshDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshDelegate);

  return WeakRetained;
}

- (SEL)selectorForRefreshControl
{
  if (self->_selectorForRefreshControl)
  {
    return self->_selectorForRefreshControl;
  }

  else
  {
    return 0;
  }
}

- (void)setSelectorForRefreshControl:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selectorForRefreshControl = v3;
}

- (id)targetForRefreshControl
{
  WeakRetained = objc_loadWeakRetained(&self->_targetForRefreshControl);

  return WeakRetained;
}

@end
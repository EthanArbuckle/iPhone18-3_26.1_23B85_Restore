@interface MTBasePodcastListViewController
- (BOOL)indexPathIsCurrentlySelectedRow:(id)row;
- (MTRefreshControlDelegate)refreshDelegate;
- (MTSourceListDelegate)delegate;
- (SEL)selectorForRefreshControl;
- (id)_selectItemWithUuid:(id)uuid;
- (id)firstValidIndexPath;
- (id)newCellInstanceWithReuseIdentifier:(id)identifier;
- (id)storedUuid;
- (id)tableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)targetForRefreshControl;
- (int64_t)flattenedCellIndexForIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)configureCell:(id)cell withObject:(id)object atIndexPath:(id)path;
- (void)configureRowHeight;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
- (void)didEndDraggingScrollView;
- (void)didReceiveMemoryWarning;
- (void)endRefreshingWhenDraggingCompletes;
- (void)loadView;
- (void)restoreSelection;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)selectItemWithUuid:(id)uuid forceScroll:(BOOL)scroll;
- (void)setAttributedTitleForRefreshControl:(id)control;
- (void)setRefreshing:(BOOL)refreshing;
- (void)setSelectorForRefreshControl:(SEL)control;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updatedDefaults:(id)defaults;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MTBasePodcastListViewController

- (id)storedUuid
{
  defaultsKey = [objc_opt_class() defaultsKey];

  if (defaultsKey)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    defaultsKey2 = [objc_opt_class() defaultsKey];
    v5 = [v3 stringForKey:defaultsKey2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)newCellInstanceWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[MTPodcastCell alloc] initWithStyle:0 reuseIdentifier:identifierCopy];

  return v4;
}

- (void)configureCell:(id)cell withObject:(id)object atIndexPath:(id)path
{
  cellCopy = cell;
  objectCopy = object;
  pathCopy = path;
  v10 = [NSException exceptionWithName:@"MTAbstractMethod" reason:@"Handle this method in the subclass" userInfo:0];
  objc_exception_throw(v10);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(MTFetchedTableViewController *)self frc];
  v6 = [v5 objectAtIndexPath:pathCopy];

  if (objc_opt_respondsToSelector())
  {
    uuid = [v6 uuid];
    delegate = [(MTBasePodcastListViewController *)self delegate];
    [delegate sourceList:self didSelectItemUuid:uuid atIndexPath:pathCopy];

    defaultsKey = [objc_opt_class() defaultsKey];

    if (defaultsKey)
    {
      v10 = +[NSUserDefaults standardUserDefaults];
      defaultsKey2 = [objc_opt_class() defaultsKey];
      [v10 setObject:uuid forKey:defaultsKey2];

      v12 = [(MTBasePodcastListViewController *)self _selectItemWithUuid:uuid];
    }
  }
}

- (void)restoreSelection
{
  storedUuid = [(MTBasePodcastListViewController *)self storedUuid];
  [(MTBasePodcastListViewController *)self setSelectedUuid:storedUuid];

  selectedUuid = [(MTBasePodcastListViewController *)self selectedUuid];
  [(MTBasePodcastListViewController *)self selectItemWithUuid:selectedUuid forceScroll:0];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4.receiver = self;
  v4.super_class = MTBasePodcastListViewController;
  return [(MTFetchedTableViewController *)&v4 numberOfSectionsInTableView:view];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5.receiver = self;
  v5.super_class = MTBasePodcastListViewController;
  return [(MTFetchedTableViewController *)&v5 tableView:view numberOfRowsInSection:section];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = MTBasePodcastListViewController;
  v4 = [(MTFetchedTableViewController *)&v6 tableView:view cellForRowAtIndexPath:path];

  return v4;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v16 controller:controller didChangeObject:objectCopy atIndexPath:path forChangeType:type newIndexPath:indexPath];
  if (objc_opt_respondsToSelector())
  {
    uuid = [objectCopy uuid];
  }

  else
  {
    uuid = 0;
  }

  if ([uuid isEqual:self->_selectedUuid])
  {
    if (type == 2)
    {
      navigationController = [(MTBasePodcastListViewController *)self navigationController];
      v15 = [navigationController popToRootViewControllerAnimated:1];
    }

    else
    {
      navigationController = [(MTBasePodcastListViewController *)self delegate];
      [navigationController sourceList:self didUpdateSelectedItemUuid:uuid];
    }
  }
}

- (void)controllerDidChangeContent:(id)content
{
  v6.receiver = self;
  v6.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v6 controllerDidChangeContent:content];
  tableView = [(MTBasePodcastListViewController *)self tableView];
  if (![(MTFetchedTableViewController *)self changeIsUserDriven]&& ([(MTBasePodcastListViewController *)self isHorizontallyCompact]& 1) == 0)
  {
    indexPathForSelectedRow = [tableView indexPathForSelectedRow];
    if (indexPathForSelectedRow)
    {
    }

    else if ([tableView numberOfRowsInSection:0] >= 1)
    {
      [(MTBasePodcastListViewController *)self restoreSelection];
    }
  }
}

- (id)tableView
{
  v4.receiver = self;
  v4.super_class = MTBasePodcastListViewController;
  tableView = [(MTBasePodcastListViewController *)&v4 tableView];

  return tableView;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v8 viewWillDisappear:disappear];
  refreshControl = [(MTBasePodcastListViewController *)self refreshControl];
  isRefreshing = [refreshControl isRefreshing];

  if (isRefreshing)
  {
    refreshControl2 = [(MTBasePodcastListViewController *)self refreshControl];
    [refreshControl2 endRefreshing];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:NSUserDefaultsDidChangeNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  tableView = [(MTBasePodcastListViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  v32.receiver = self;
  v32.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v32 viewWillAppear:appearCopy];
  v7 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:0];
  tableView2 = [(MTBasePodcastListViewController *)self tableView];
  [tableView2 reloadData];

  splitViewController = [(MTBasePodcastListViewController *)self splitViewController];
  isHorizontallyCompact = [splitViewController isHorizontallyCompact];

  if ((isHorizontallyCompact & 1) == 0)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"updatedDefaults:" name:NSUserDefaultsDidChangeNotification object:0];

    tableView3 = [(MTBasePodcastListViewController *)self tableView];
    [tableView3 selectRowAtIndexPath:indexPathForSelectedRow animated:0 scrollPosition:0];

    [(MTBasePodcastListViewController *)self restoreSelection];
  }

  [UIView setAnimationsEnabled:v7];
  refreshControl = [(MTBasePodcastListViewController *)self refreshControl];

  if (refreshControl)
  {
    refreshControl2 = [(MTBasePodcastListViewController *)self refreshControl];
    isRefreshing = [refreshControl2 isRefreshing];

    if ((isRefreshing & 1) == 0)
    {
      refreshControl3 = [(MTBasePodcastListViewController *)self refreshControl];
      [refreshControl3 beginRefreshing];

      refreshControl4 = [(MTBasePodcastListViewController *)self refreshControl];
      [refreshControl4 endRefreshing];
    }

    refreshControl5 = [(MTBasePodcastListViewController *)self refreshControl];
    attributedTitleForRefreshControl = [(MTBasePodcastListViewController *)self attributedTitleForRefreshControl];
    [refreshControl5 setAttributedTitle:attributedTitleForRefreshControl];

    if ([(MTBasePodcastListViewController *)self isRefreshing])
    {
      refreshControl6 = [(MTBasePodcastListViewController *)self refreshControl];
      isRefreshing2 = [refreshControl6 isRefreshing];

      if ((isRefreshing2 & 1) == 0)
      {
        tableView4 = [(MTBasePodcastListViewController *)self tableView];
        [tableView4 setAdjustContentOffsetForRefreshControlAsNeeded:1];

        refreshControl7 = [(MTBasePodcastListViewController *)self refreshControl];
        [refreshControl7 beginRefreshing];

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
    targetForRefreshControl = [(MTBasePodcastListViewController *)self targetForRefreshControl];
    [(MTBasePodcastListViewController *)self selectorForRefreshControl];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      v27 = objc_alloc_init(UIRefreshControl);
      targetForRefreshControl2 = [(MTBasePodcastListViewController *)self targetForRefreshControl];
      [v27 addTarget:targetForRefreshControl2 action:-[MTBasePodcastListViewController selectorForRefreshControl](self forControlEvents:{"selectorForRefreshControl"), 4096}];

      attributedTitleForRefreshControl2 = [(MTBasePodcastListViewController *)self attributedTitleForRefreshControl];
      [v27 setAttributedTitle:attributedTitleForRefreshControl2];

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

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MTBasePodcastListViewController;
  [(MTBasePodcastListViewController *)&v7 viewDidAppear:appear];
  if ([(MTBasePodcastListViewController *)self isHorizontallyCompact])
  {
    tableView = [(MTBasePodcastListViewController *)self tableView];
    tableView2 = [(MTBasePodcastListViewController *)self tableView];
    indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
    [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
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
  tableView = [(MTBasePodcastListViewController *)self tableView];
  [tableView setTableFooterView:v3];

  storedUuid = [(MTBasePodcastListViewController *)self storedUuid];
  [(MTBasePodcastListViewController *)self setSelectedUuid:storedUuid];

  [(MTBasePodcastListViewController *)self configureRowHeight];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)configureRowHeight
{
  tableView = [(MTBasePodcastListViewController *)self tableView];
  [(MTGenericCell *)MTPodcastCell heightForWidth:1.79769313e308];
  [tableView setEstimatedRowHeight:?];

  tableView2 = [(MTBasePodcastListViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTBasePodcastListViewController;
  [(MTFetchedTableViewController *)&v4 dealloc];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  view = [(MTBasePodcastListViewController *)self view];
  [view setNeedsLayout];

  tableView = [(MTBasePodcastListViewController *)self tableView];
  tableHeaderView = [tableView tableHeaderView];

  [tableHeaderView setNeedsLayout];
}

- (void)setRefreshing:(BOOL)refreshing
{
  if (self->_refreshing == refreshing)
  {
    return;
  }

  refreshingCopy = refreshing;
  if (refreshing)
  {
    self->_refreshing = refreshing;
    goto LABEL_9;
  }

  tableView = [(MTBasePodcastListViewController *)self tableView];
  isDragging = [tableView isDragging];

  if (!isDragging)
  {
    self->_refreshing = refreshingCopy;
    tableView2 = [(MTBasePodcastListViewController *)self tableView];
    [tableView2 reloadData];

LABEL_9:
    [(MTFetchedTableViewController *)self setChangeIsUserDriven:refreshingCopy];
    if (self->_refreshing)
    {
      refreshControl = [(MTBasePodcastListViewController *)self refreshControl];
      isRefreshing = [refreshControl isRefreshing];

      if (!isRefreshing)
      {
        refreshControl2 = [(MTBasePodcastListViewController *)self refreshControl];
        [refreshControl2 beginRefreshing];
        goto LABEL_15;
      }

      if (self->_refreshing)
      {
        goto LABEL_16;
      }
    }

    refreshControl3 = [(MTBasePodcastListViewController *)self refreshControl];
    isRefreshing2 = [refreshControl3 isRefreshing];

    if (!isRefreshing2)
    {
      goto LABEL_16;
    }

    refreshControl2 = [(MTBasePodcastListViewController *)self refreshControl];
    [refreshControl2 endRefreshing];
LABEL_15:

LABEL_16:
    if (!self->_refreshing)
    {
      refreshDelegate = [(MTBasePodcastListViewController *)self refreshDelegate];
      [refreshDelegate didEndRefreshing];
    }

    return;
  }

  [(MTBasePodcastListViewController *)self endRefreshingWhenDraggingCompletes];
}

- (void)endRefreshingWhenDraggingCompletes
{
  tableView = [(MTBasePodcastListViewController *)self tableView];
  isDragging = [tableView isDragging];

  if (isDragging)
  {
    self->_endRefreshWhenDraggingEnds = 1;
  }

  else
  {

    [(MTBasePodcastListViewController *)self setRefreshing:0];
  }
}

- (void)setAttributedTitleForRefreshControl:(id)control
{
  controlCopy = control;
  if (![(NSAttributedString *)self->_attributedTitleForRefreshControl isEqualToAttributedString:?])
  {
    objc_storeStrong(&self->_attributedTitleForRefreshControl, control);
    refreshControl = [(MTBasePodcastListViewController *)self refreshControl];
    [refreshControl setAttributedTitle:controlCopy];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  v7 = +[UIColor clearColor];
  [textLabel setBackgroundColor:v7];

  backgroundView = [cellCopy backgroundView];

  v8 = +[UIColor backgroundColor];
  [backgroundView setBackgroundColor:v8];
}

- (int64_t)flattenedCellIndexForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  tableView = [(MTBasePodcastListViewController *)self tableView];
  v7 = [(MTBasePodcastListViewController *)self numberOfSectionsInTableView:tableView];

  if (section >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = section;
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
      tableView2 = [(MTBasePodcastListViewController *)self tableView];
      v10 += [(MTBasePodcastListViewController *)self tableView:tableView2 numberOfRowsInSection:v9];

      ++v9;
      section2 = [pathCopy section];
      tableView3 = [(MTBasePodcastListViewController *)self tableView];
      v14 = [(MTBasePodcastListViewController *)self numberOfSectionsInTableView:tableView3];

      if (section2 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = section2;
      }
    }

    while (v15 > v9);
  }

  v16 = [pathCopy row];

  return v16 + v10;
}

- (void)updatedDefaults:(id)defaults
{
  defaultsKey = [objc_opt_class() defaultsKey];

  if (defaultsKey)
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
  tableView = [(MTBasePodcastListViewController *)self tableView];
  dataSource = [tableView dataSource];
  if ([dataSource tableView:tableView numberOfRowsInSection:0])
  {
    v4 = [NSIndexPath indexPathForRow:0 inSection:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_selectItemWithUuid:(id)uuid
{
  uuidCopy = uuid;
  v5 = [(MTFetchedTableViewController *)self frc];
  fetchedObjects = [v5 fetchedObjects];
  v7 = [fetchedObjects count];

  if (v7)
  {
    v12 = 0;
    v13 = 0;
    [(MTBasePodcastListViewController *)self getObjectId:&v13 andIndexPath:&v12 forItemWithUuid:uuidCopy];
    v8 = v13;
    v9 = v12;
    if (v9)
    {
      v10 = uuidCopy;
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

- (void)selectItemWithUuid:(id)uuid forceScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  v6 = [(MTBasePodcastListViewController *)self _selectItemWithUuid:uuid];
  if (v6 || ([(MTBasePodcastListViewController *)self firstValidIndexPath], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v6;
    if (![(MTBasePodcastListViewController *)self indexPathIsCurrentlySelectedRow:v6]|| scrollCopy)
    {
      tableView = [(MTBasePodcastListViewController *)self tableView];
      [tableView selectRowAtIndexPath:v9 animated:0 scrollPosition:2];

      tableView2 = [(MTBasePodcastListViewController *)self tableView];
      [(MTBasePodcastListViewController *)self tableView:tableView2 didSelectRowAtIndexPath:v9];
    }

    v6 = v9;
  }
}

- (BOOL)indexPathIsCurrentlySelectedRow:(id)row
{
  rowCopy = row;
  tableView = [(MTBasePodcastListViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];
  v7 = [rowCopy isEqual:indexPathForSelectedRow];

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

- (void)setSelectorForRefreshControl:(SEL)control
{
  if (control)
  {
    controlCopy = control;
  }

  else
  {
    controlCopy = 0;
  }

  self->_selectorForRefreshControl = controlCopy;
}

- (id)targetForRefreshControl
{
  WeakRetained = objc_loadWeakRetained(&self->_targetForRefreshControl);

  return WeakRetained;
}

@end
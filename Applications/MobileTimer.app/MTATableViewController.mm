@interface MTATableViewController
- (MTATableViewController)initWithTableViewStyle:(int64_t)style;
- (void)_numberOfItemsDidChangeAnimated:(BOOL)animated;
- (void)_reloadData:(id)data;
- (void)_reloadUI:(id)i;
- (void)dealloc;
- (void)dismissAddViewController:(id)controller;
- (void)finishAddViewControllerDismissal:(BOOL)dismissal;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)reloadState:(id)state;
- (void)scrollToTop;
- (void)showAddViewWithCompletion:(id)completion;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MTATableViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MTATableViewController;
  [(MTATableViewController *)&v9 viewDidLoad];
  tableView = [(MTATableViewController *)self tableView];
  [(MTATableViewController *)self itemsTableRowHeight];
  [tableView setRowHeight:v4];

  tableView2 = [(MTATableViewController *)self tableView];
  [tableView2 setSeparatorStyle:1];

  tableView3 = [(MTATableViewController *)self tableView];
  [tableView3 _setTopPadding:0.0];

  tableView4 = [(MTATableViewController *)self tableView];
  [tableView4 _setBottomPadding:0.0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"reloadState" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (MTATableViewController)initWithTableViewStyle:(int64_t)style
{
  v10.receiver = self;
  v10.super_class = MTATableViewController;
  v3 = [(MTATableViewController *)&v10 initWithStyle:style];
  if (v3)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:v3 action:"showAddView"];
    addButton = v3->_addButton;
    v3->_addButton = v4;

    v6 = v3->_addButton;
    navigationItem = [(MTATableViewController *)v3 navigationItem];
    [navigationItem setRightBarButtonItem:v6];

    v8 = v3;
  }

  return v3;
}

- (void)showAddViewWithCompletion:(id)completion
{
  completionCopy = completion;
  addViewController = [(MTATableViewController *)self addViewController];
  if (MTUIIsVeryWidePhoneSize() && MTUIIsPhoneIdiom())
  {
    [addViewController setModalPresentationStyle:2];
  }

  presentationController = [addViewController presentationController];
  [presentationController setDelegate:self];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002B03C;
  v8[3] = &unk_1000AE238;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(MTATableViewController *)self presentViewController:addViewController animated:1 completion:v8];
}

- (void)dismissAddViewController:(id)controller
{
  v4 = +[UIApplication sharedApplication];
  isSuspended = [v4 isSuspended];

  [(MTATableViewController *)self finishAddViewControllerDismissal:isSuspended ^ 1];
  navigationController = [(MTATableViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:isSuspended ^ 1 completion:0];
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  v4 = +[UIApplication sharedApplication];
  isSuspended = [v4 isSuspended];

  [(MTATableViewController *)self finishAddViewControllerDismissal:isSuspended ^ 1];
}

- (void)finishAddViewControllerDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  tableView = [(MTATableViewController *)self tableView];
  tableView2 = [(MTATableViewController *)self tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

  [(MTATableViewController *)self _numberOfItemsDidChangeAnimated:dismissalCopy];
}

- (void)_numberOfItemsDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  numberOfItemsIncludingSleep = [(MTATableViewController *)self numberOfItemsIncludingSleep];
  v6 = numberOfItemsIncludingSleep;
  v7 = numberOfItemsIncludingSleep < 1 && animatedCopy;
  v8 = numberOfItemsIncludingSleep > 0;
  if (numberOfItemsIncludingSleep <= 0 && !self->_noItemsView && [(MTATableViewController *)self isViewLoaded]&& (+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    noItemsText = [(MTATableViewController *)self noItemsText];
    v10 = [[_UIContentUnavailableView alloc] initWithFrame:noItemsText title:1 style:0 includeBackdrop:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    noItemsView = self->_noItemsView;
    self->_noItemsView = v10;

    [(_UIContentUnavailableView *)self->_noItemsView setVibrantOptions:0];
    v12 = self->_noItemsView;
    tableView = [(MTATableViewController *)self tableView];
    [tableView setBackgroundView:v12];
  }

  if (v7)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002B404;
    v18[3] = &unk_1000ADEA8;
    v18[4] = self;
    v19 = v8;
    [UIView animateWithDuration:v18 animations:0.25];
  }

  else
  {
    v14 = 1.0;
    if (v6 > 0)
    {
      v14 = 0.0;
    }

    [(_UIContentUnavailableView *)self->_noItemsView setAlpha:v14];
  }

  numberOfItems = [(MTATableViewController *)self numberOfItems];
  if (numberOfItems < 1)
  {
    editButtonItem = 0;
  }

  else
  {
    editButtonItem = [(MTATableViewController *)self editButtonItem];
  }

  navigationItem = [(MTATableViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:editButtonItem];

  if (numberOfItems >= 1)
  {
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v4.receiver = self;
  v4.super_class = MTATableViewController;
  [(MTATableViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002B50C;
  v3[3] = &unk_1000AD9F0;
  v3[4] = self;
  [(MTATableViewController *)self _reloadData:v3];
}

- (void)viewDidAppear:(BOOL)appear
{
  tableView = [(MTATableViewController *)self tableView];
  [tableView flashScrollIndicators];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  navigationController = [(MTATableViewController *)self navigationController];
  [navigationController setEditing:0 animated:0];

  v6.receiver = self;
  v6.super_class = MTATableViewController;
  [(MTATableViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)viewDidUnload
{
  noItemsView = self->_noItemsView;
  self->_noItemsView = 0;

  v4.receiver = self;
  v4.super_class = MTATableViewController;
  [(MTATableViewController *)&v4 viewDidUnload];
}

- (void)reloadState:(id)state
{
  stateCopy = state;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reloading table view state", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B708;
  v7[3] = &unk_1000AE238;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  [(MTATableViewController *)self _reloadData:v7];
}

- (void)_reloadUI:(id)i
{
  iCopy = i;
  [(MTATableViewController *)self _numberOfItemsDidChangeAnimated:0];
  v4 = iCopy;
  if (iCopy)
  {
    (*(iCopy + 2))(iCopy);
    v4 = iCopy;
  }
}

- (void)_reloadData:(id)data
{
  dataCopy = data;
  tableView = [(MTATableViewController *)self tableView];
  [tableView reloadData];

  v5 = dataCopy;
  if (dataCopy)
  {
    (*(dataCopy + 2))(dataCopy);
    v5 = dataCopy;
  }
}

- (void)scrollToTop
{
  y = CGPointZero.y;
  tableView = [(MTATableViewController *)self tableView];
  [tableView adjustedContentInset];
  v6 = y - v5;

  tableView2 = [(MTATableViewController *)self tableView];
  [tableView2 setContentOffset:1 animated:{CGPointZero.x, v6}];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    if (path)
    {
      [(MTATableViewController *)self _numberOfItemsDidChangeAnimated:1];
    }
  }
}

@end
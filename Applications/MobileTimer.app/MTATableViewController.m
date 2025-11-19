@interface MTATableViewController
- (MTATableViewController)initWithTableViewStyle:(int64_t)a3;
- (void)_numberOfItemsDidChangeAnimated:(BOOL)a3;
- (void)_reloadData:(id)a3;
- (void)_reloadUI:(id)a3;
- (void)dealloc;
- (void)dismissAddViewController:(id)a3;
- (void)finishAddViewControllerDismissal:(BOOL)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)reloadState:(id)a3;
- (void)scrollToTop;
- (void)showAddViewWithCompletion:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MTATableViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MTATableViewController;
  [(MTATableViewController *)&v9 viewDidLoad];
  v3 = [(MTATableViewController *)self tableView];
  [(MTATableViewController *)self itemsTableRowHeight];
  [v3 setRowHeight:v4];

  v5 = [(MTATableViewController *)self tableView];
  [v5 setSeparatorStyle:1];

  v6 = [(MTATableViewController *)self tableView];
  [v6 _setTopPadding:0.0];

  v7 = [(MTATableViewController *)self tableView];
  [v7 _setBottomPadding:0.0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"reloadState" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (MTATableViewController)initWithTableViewStyle:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = MTATableViewController;
  v3 = [(MTATableViewController *)&v10 initWithStyle:a3];
  if (v3)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:v3 action:"showAddView"];
    addButton = v3->_addButton;
    v3->_addButton = v4;

    v6 = v3->_addButton;
    v7 = [(MTATableViewController *)v3 navigationItem];
    [v7 setRightBarButtonItem:v6];

    v8 = v3;
  }

  return v3;
}

- (void)showAddViewWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MTATableViewController *)self addViewController];
  if (MTUIIsVeryWidePhoneSize() && MTUIIsPhoneIdiom())
  {
    [v5 setModalPresentationStyle:2];
  }

  v6 = [v5 presentationController];
  [v6 setDelegate:self];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002B03C;
  v8[3] = &unk_1000AE238;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(MTATableViewController *)self presentViewController:v5 animated:1 completion:v8];
}

- (void)dismissAddViewController:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 isSuspended];

  [(MTATableViewController *)self finishAddViewControllerDismissal:v5 ^ 1];
  v6 = [(MTATableViewController *)self navigationController];
  [v6 dismissViewControllerAnimated:v5 ^ 1 completion:0];
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 isSuspended];

  [(MTATableViewController *)self finishAddViewControllerDismissal:v5 ^ 1];
}

- (void)finishAddViewControllerDismissal:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTATableViewController *)self tableView];
  v6 = [(MTATableViewController *)self tableView];
  v7 = [v6 indexPathForSelectedRow];
  [v5 deselectRowAtIndexPath:v7 animated:0];

  [(MTATableViewController *)self _numberOfItemsDidChangeAnimated:v3];
}

- (void)_numberOfItemsDidChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTATableViewController *)self numberOfItemsIncludingSleep];
  v6 = v5;
  v7 = v5 < 1 && v3;
  v8 = v5 > 0;
  if (v5 <= 0 && !self->_noItemsView && [(MTATableViewController *)self isViewLoaded]&& (+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    v9 = [(MTATableViewController *)self noItemsText];
    v10 = [[_UIContentUnavailableView alloc] initWithFrame:v9 title:1 style:0 includeBackdrop:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    noItemsView = self->_noItemsView;
    self->_noItemsView = v10;

    [(_UIContentUnavailableView *)self->_noItemsView setVibrantOptions:0];
    v12 = self->_noItemsView;
    v13 = [(MTATableViewController *)self tableView];
    [v13 setBackgroundView:v12];
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

  v15 = [(MTATableViewController *)self numberOfItems];
  if (v15 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [(MTATableViewController *)self editButtonItem];
  }

  v17 = [(MTATableViewController *)self navigationItem];
  [v17 setLeftBarButtonItem:v16];

  if (v15 >= 1)
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

- (void)viewWillAppear:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002B50C;
  v3[3] = &unk_1000AD9F0;
  v3[4] = self;
  [(MTATableViewController *)self _reloadData:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = [(MTATableViewController *)self tableView];
  [v3 flashScrollIndicators];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTATableViewController *)self navigationController];
  [v5 setEditing:0 animated:0];

  v6.receiver = self;
  v6.super_class = MTATableViewController;
  [(MTATableViewController *)&v6 viewDidDisappear:v3];
}

- (void)viewDidUnload
{
  noItemsView = self->_noItemsView;
  self->_noItemsView = 0;

  v4.receiver = self;
  v4.super_class = MTATableViewController;
  [(MTATableViewController *)&v4 viewDidUnload];
}

- (void)reloadState:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [(MTATableViewController *)self _reloadData:v7];
}

- (void)_reloadUI:(id)a3
{
  v5 = a3;
  [(MTATableViewController *)self _numberOfItemsDidChangeAnimated:0];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)_reloadData:(id)a3
{
  v6 = a3;
  v4 = [(MTATableViewController *)self tableView];
  [v4 reloadData];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

- (void)scrollToTop
{
  y = CGPointZero.y;
  v4 = [(MTATableViewController *)self tableView];
  [v4 adjustedContentInset];
  v6 = y - v5;

  v7 = [(MTATableViewController *)self tableView];
  [v7 setContentOffset:1 animated:{CGPointZero.x, v6}];
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    if (a5)
    {
      [(MTATableViewController *)self _numberOfItemsDidChangeAnimated:1];
    }
  }
}

@end
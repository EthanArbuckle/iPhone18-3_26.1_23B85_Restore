@interface TransitDirectionsListViewController
- (GEOComposedRoute)route;
- (NSDirectionalEdgeInsets)_separatorInsetsForIndexPath:(id)path;
- (TransitDirectionsListViewController)init;
- (TransitDirectionsListViewController)initWithRoute:(id)route forNavigation:(BOOL)navigation;
- (UIScrollView)scrollView;
- (UIScrollViewDelegate)scrollViewDelegate;
- (double)_heightOfFinalRow;
- (void)_willBecomeCurrent;
- (void)loadView;
- (void)setRoute:(id)route;
- (void)setScrollViewDelegate:(id)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TransitDirectionsListViewController

- (double)_heightOfFinalRow
{
  allStepViews = [(TransitDirectionsListView *)self->_listView allStepViews];
  lastObject = [allStepViews lastObject];

  [lastObject bounds];
  Height = 0.0;
  if (CGRectGetHeight(v6) >= 0.0)
  {
    [lastObject bounds];
    Height = CGRectGetHeight(v7);
  }

  return Height;
}

- (void)_willBecomeCurrent
{
  dataSource = [(TransitDirectionsListViewController *)self dataSource];
  [dataSource collapseAllItems];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v5 viewDidDisappear:disappear];
  dataSource = [(TransitDirectionsListViewController *)self dataSource];
  [dataSource setActive:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v6 viewWillAppear:appear];
  _shouldReloadForReferenceDateUpdates = [(TransitDirectionsListViewController *)self _shouldReloadForReferenceDateUpdates];
  dataSource = [(TransitDirectionsListViewController *)self dataSource];
  [dataSource setActive:_shouldReloadForReferenceDateUpdates];
}

- (NSDirectionalEdgeInsets)_separatorInsetsForIndexPath:(id)path
{
  *&v12 = _UICollectionViewListLayoutSectionAutomaticDimension;
  *(&v12 + 1) = _UICollectionViewListLayoutSectionAutomaticDimension;
  *&v13 = _UICollectionViewListLayoutSectionAutomaticDimension;
  *(&v13 + 1) = _UICollectionViewListLayoutSectionAutomaticDimension;
  pathCopy = path;
  dataSource = [(TransitDirectionsListViewController *)self dataSource];
  v6 = [dataSource shouldShowSeparatorForItemAtIndexPath:pathCopy insets:&v12];

  if ((v6 & 1) == 0)
  {
    v7 = _UICollectionViewListSectionSeparatorInsetHidden[1];
    v12 = _UICollectionViewListSectionSeparatorInsetHidden[0];
    v13 = v7;
  }

  v9 = *(&v12 + 1);
  v8 = *&v12;
  v11 = *(&v13 + 1);
  v10 = *&v13;
  result.trailing = v11;
  result.bottom = v10;
  result.leading = v9;
  result.top = v8;
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v4 viewDidAppear:appear];
  [(TransitDirectionsListView *)self->_listView becomeFirstResponder];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = TransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v7 viewDidLoad];
  [(TransitDirectionsListViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  listView = self->_listView;
  dataSource = [(TransitDirectionsListViewController *)self dataSource];
  [dataSource setListView:listView];

  dataSource2 = [(TransitDirectionsListViewController *)self dataSource];
  [(TransitDirectionsListView *)self->_listView setListDelegate:dataSource2];

  dataSource3 = [(TransitDirectionsListViewController *)self dataSource];
  [(TransitDirectionsListView *)self->_listView setDataSource:dataSource3];
}

- (void)loadView
{
  v3 = [TransitDirectionsListView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v5 = [(TransitDirectionsListView *)v3 initWithFrame:?];

  v6 = +[UIColor clearColor];
  [(TransitDirectionsListView *)v5 setBackgroundColor:v6];

  [(TransitDirectionsListView *)v5 setOpaque:0];
  [(TransitDirectionsListView *)v5 setAutoresizingMask:18];
  [(TransitDirectionsListView *)v5 setLayoutMargins:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(TransitDirectionsListView *)v5 setPreservesSuperviewLayoutMargins:1];
  [(TransitDirectionsListView *)v5 setClipsToBounds:1];
  listView = self->_listView;
  self->_listView = v5;
  v8 = v5;

  [(TransitDirectionsListViewController *)self setView:self->_listView];
}

- (UIScrollView)scrollView
{
  [(TransitDirectionsListViewController *)self loadViewIfNeeded];
  listView = self->_listView;

  return listView;
}

- (void)setScrollViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  dataSource = [(TransitDirectionsListViewController *)self dataSource];
  [dataSource setScrollViewDelegate:delegateCopy];
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  dataSource = [(TransitDirectionsListViewController *)self dataSource];
  scrollViewDelegate = [dataSource scrollViewDelegate];

  return scrollViewDelegate;
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  route = [(TransitDirectionsListViewController *)self route];

  v5 = routeCopy;
  if (route != routeCopy)
  {
    [(TransitDirectionsStepsListDataSource *)self->_dataSource setRoute:routeCopy];
    v5 = routeCopy;
  }
}

- (GEOComposedRoute)route
{
  dataSource = [(TransitDirectionsListViewController *)self dataSource];
  route = [dataSource route];

  return route;
}

- (TransitDirectionsListViewController)initWithRoute:(id)route forNavigation:(BOOL)navigation
{
  navigationCopy = navigation;
  routeCopy = route;
  v7 = [(TransitDirectionsListViewController *)self init];
  v8 = v7;
  if (v7)
  {
    dataSource = v7->_dataSource;
    if (navigationCopy)
    {
      [(TransitDirectionsStepsListDataSource *)dataSource setEnableNavigationUpdates:1];
      [(TransitDirectionsStepsListDataSource *)v8->_dataSource setAllowStepSelection:1];
    }

    else
    {
      [(TransitDirectionsStepsListDataSource *)dataSource setRoute:routeCopy];
    }
  }

  return v8;
}

- (TransitDirectionsListViewController)init
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsListViewController;
  v2 = [(TransitDirectionsListViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init([objc_opt_class() dataSourceClass]);
    dataSource = v2->_dataSource;
    v2->_dataSource = v3;
  }

  return v2;
}

@end
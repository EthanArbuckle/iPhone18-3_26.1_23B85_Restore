@interface TransitDirectionsListViewController
- (GEOComposedRoute)route;
- (NSDirectionalEdgeInsets)_separatorInsetsForIndexPath:(id)a3;
- (TransitDirectionsListViewController)init;
- (TransitDirectionsListViewController)initWithRoute:(id)a3 forNavigation:(BOOL)a4;
- (UIScrollView)scrollView;
- (UIScrollViewDelegate)scrollViewDelegate;
- (double)_heightOfFinalRow;
- (void)_willBecomeCurrent;
- (void)loadView;
- (void)setRoute:(id)a3;
- (void)setScrollViewDelegate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TransitDirectionsListViewController

- (double)_heightOfFinalRow
{
  v2 = [(TransitDirectionsListView *)self->_listView allStepViews];
  v3 = [v2 lastObject];

  [v3 bounds];
  Height = 0.0;
  if (CGRectGetHeight(v6) >= 0.0)
  {
    [v3 bounds];
    Height = CGRectGetHeight(v7);
  }

  return Height;
}

- (void)_willBecomeCurrent
{
  v2 = [(TransitDirectionsListViewController *)self dataSource];
  [v2 collapseAllItems];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v5 viewDidDisappear:a3];
  v4 = [(TransitDirectionsListViewController *)self dataSource];
  [v4 setActive:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v6 viewWillAppear:a3];
  v4 = [(TransitDirectionsListViewController *)self _shouldReloadForReferenceDateUpdates];
  v5 = [(TransitDirectionsListViewController *)self dataSource];
  [v5 setActive:v4];
}

- (NSDirectionalEdgeInsets)_separatorInsetsForIndexPath:(id)a3
{
  *&v12 = _UICollectionViewListLayoutSectionAutomaticDimension;
  *(&v12 + 1) = _UICollectionViewListLayoutSectionAutomaticDimension;
  *&v13 = _UICollectionViewListLayoutSectionAutomaticDimension;
  *(&v13 + 1) = _UICollectionViewListLayoutSectionAutomaticDimension;
  v4 = a3;
  v5 = [(TransitDirectionsListViewController *)self dataSource];
  v6 = [v5 shouldShowSeparatorForItemAtIndexPath:v4 insets:&v12];

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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v4 viewDidAppear:a3];
  [(TransitDirectionsListView *)self->_listView becomeFirstResponder];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = TransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v7 viewDidLoad];
  [(TransitDirectionsListViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  listView = self->_listView;
  v4 = [(TransitDirectionsListViewController *)self dataSource];
  [v4 setListView:listView];

  v5 = [(TransitDirectionsListViewController *)self dataSource];
  [(TransitDirectionsListView *)self->_listView setListDelegate:v5];

  v6 = [(TransitDirectionsListViewController *)self dataSource];
  [(TransitDirectionsListView *)self->_listView setDataSource:v6];
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

- (void)setScrollViewDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TransitDirectionsListViewController *)self dataSource];
  [v5 setScrollViewDelegate:v4];
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  v2 = [(TransitDirectionsListViewController *)self dataSource];
  v3 = [v2 scrollViewDelegate];

  return v3;
}

- (void)setRoute:(id)a3
{
  v6 = a3;
  v4 = [(TransitDirectionsListViewController *)self route];

  v5 = v6;
  if (v4 != v6)
  {
    [(TransitDirectionsStepsListDataSource *)self->_dataSource setRoute:v6];
    v5 = v6;
  }
}

- (GEOComposedRoute)route
{
  v2 = [(TransitDirectionsListViewController *)self dataSource];
  v3 = [v2 route];

  return v3;
}

- (TransitDirectionsListViewController)initWithRoute:(id)a3 forNavigation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TransitDirectionsListViewController *)self init];
  v8 = v7;
  if (v7)
  {
    dataSource = v7->_dataSource;
    if (v4)
    {
      [(TransitDirectionsStepsListDataSource *)dataSource setEnableNavigationUpdates:1];
      [(TransitDirectionsStepsListDataSource *)v8->_dataSource setAllowStepSelection:1];
    }

    else
    {
      [(TransitDirectionsStepsListDataSource *)dataSource setRoute:v6];
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
@interface CarAdvisoryListCardViewController
- (CarAdvisoryListCardViewController)initWithRoute:(id)route delegate:(id)delegate;
- (CarAdvisoryListCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (id)itemAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)title;
- (id)uniqueName;
- (void)setRoute:(id)route;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CarAdvisoryListCardViewController

- (CarAdvisoryListCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)preferredFocusEnvironments
{
  if ([(CarAdvisoryListCardViewController *)self isViewLoaded])
  {
    tableView = [(CarBaseSearchViewController *)self tableView];
    preferredFocusEnvironments = [tableView preferredFocusEnvironments];
  }

  else
  {
    preferredFocusEnvironments = &__NSArray0__struct;
  }

  return preferredFocusEnvironments;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarAdvisoryListCardViewController *)self isViewLoaded])
  {
    tableView = [(CarBaseSearchViewController *)self tableView];
    _car_visibleCells = [tableView _car_visibleCells];
  }

  else
  {
    _car_visibleCells = &__NSArray0__struct;
  }

  return _car_visibleCells;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  advisoryItems = self->_advisoryItems;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSArray objectAtIndex:](advisoryItems, "objectAtIndex:", [pathCopy row]);
  delegate = [(CarAdvisoryListCardViewController *)self delegate];
  [delegate advisoryListCardDidSelectAdvisoryItem:v9];

  v11.receiver = self;
  v11.super_class = CarAdvisoryListCardViewController;
  [(CarBaseSearchViewController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(CarAdvisoryListCardViewController *)self itemAtIndexPath:pathCopy];
  v9 = +[CarSearchItemCell reuseIdentifier];
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccessibilityIdentifier:@"CarAdvisoryCell"];
  v11 = +[UIColor systemBackgroundColor];
  [v10 setBackgroundColor:v11];

  v12 = [(CarBaseSearchViewController *)self modelForItemAtIndexPath:pathCopy];

  if (!v12)
  {
    v12 = [CarSearchItemCellModel modelWithUpdateBlock:0];
    [v8 updateModel:v12];
  }

  [v10 setupWithModel:v12 cellStyle:{-[CarBaseSearchViewController cellStyle](self, "cellStyle")}];

  return v10;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if (v5 >= [(NSArray *)self->_advisoryItems count])
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndex:](self->_advisoryItems, "objectAtIndex:", [pathCopy row]);
  }

  return v6;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = [[UITableViewHeaderFooterView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setAlpha:0.0];

  return v4;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = [[UITableViewHeaderFooterView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setAlpha:0.0];

  return v4;
}

- (id)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = CarAdvisoryListCardViewController;
  [(CarAdvisoryListCardViewController *)&v25 viewDidLoad];
  view = [(CarAdvisoryListCardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarAdvisoryListCard"];

  v4 = [[CarTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarBaseSearchViewController *)self setTableView:v4];

  tableView = [(CarBaseSearchViewController *)self tableView];
  [tableView setAccessibilityIdentifier:@"CarAdvisoryListCardTableView"];

  tableView2 = [(CarBaseSearchViewController *)self tableView];
  [tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView3 = [(CarBaseSearchViewController *)self tableView];
  LODWORD(v8) = 1148846080;
  [tableView3 setContentCompressionResistancePriority:0 forAxis:v8];

  tableView4 = [(CarBaseSearchViewController *)self tableView];
  LODWORD(v10) = 1148846080;
  [tableView4 setContentCompressionResistancePriority:1 forAxis:v10];

  tableView5 = [(CarBaseSearchViewController *)self tableView];
  [tableView5 setDataSource:self];

  tableView6 = [(CarBaseSearchViewController *)self tableView];
  [tableView6 setDelegate:self];

  v13 = +[UIColor clearColor];
  tableView7 = [(CarBaseSearchViewController *)self tableView];
  [tableView7 setBackgroundColor:v13];

  tableView8 = [(CarBaseSearchViewController *)self tableView];
  [tableView8 _setHeaderAndFooterViewsFloat:0];

  tableView9 = [(CarBaseSearchViewController *)self tableView];
  [tableView9 setRowHeight:44.0];

  tableView10 = [(CarBaseSearchViewController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[CarSearchItemCell reuseIdentifier];
  [tableView10 registerClass:v18 forCellReuseIdentifier:v19];

  view2 = [(CarAdvisoryListCardViewController *)self view];
  tableView11 = [(CarBaseSearchViewController *)self tableView];
  [view2 addSubview:tableView11];

  tableView12 = [(CarBaseSearchViewController *)self tableView];
  view3 = [(CarAdvisoryListCardViewController *)self view];
  v24 = [tableView12 _maps_constraintsForCenteringInView:view3];
  [NSLayoutConstraint activateConstraints:v24];
}

- (id)title
{
  numberOfItems = [(CarAdvisoryListCardViewController *)self numberOfItems];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (numberOfItems <= 1)
  {
    v5 = @"RoutePlanning_advisory";
  }

  else
  {
    v5 = @"RoutePlanning_advisories";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

- (void)setRoute:(id)route
{
  if (self->_route != route)
  {
    clickableAdvisory = [route clickableAdvisory];
    advisoryItems = [clickableAdvisory advisoryItems];
    advisoryItems = self->_advisoryItems;
    self->_advisoryItems = advisoryItems;
  }
}

- (CarAdvisoryListCardViewController)initWithRoute:(id)route delegate:(id)delegate
{
  routeCopy = route;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CarAdvisoryListCardViewController;
  v8 = [(CarBaseSearchViewController *)&v12 initWithDisabledETAUpdates:1];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    [(CarAdvisoryListCardViewController *)v9 setRoute:routeCopy];
    tableView = [(CarBaseSearchViewController *)v9 tableView];
    [tableView reloadData];
  }

  return v9;
}

@end
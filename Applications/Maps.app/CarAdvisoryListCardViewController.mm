@interface CarAdvisoryListCardViewController
- (CarAdvisoryListCardViewController)initWithRoute:(id)a3 delegate:(id)a4;
- (CarAdvisoryListCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (id)itemAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)title;
- (id)uniqueName;
- (void)setRoute:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
    v3 = [(CarBaseSearchViewController *)self tableView];
    v4 = [v3 preferredFocusEnvironments];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarAdvisoryListCardViewController *)self isViewLoaded])
  {
    v3 = [(CarBaseSearchViewController *)self tableView];
    v4 = [v3 _car_visibleCells];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  advisoryItems = self->_advisoryItems;
  v7 = a4;
  v8 = a3;
  v9 = -[NSArray objectAtIndex:](advisoryItems, "objectAtIndex:", [v7 row]);
  v10 = [(CarAdvisoryListCardViewController *)self delegate];
  [v10 advisoryListCardDidSelectAdvisoryItem:v9];

  v11.receiver = self;
  v11.super_class = CarAdvisoryListCardViewController;
  [(CarBaseSearchViewController *)&v11 tableView:v8 didSelectRowAtIndexPath:v7];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CarAdvisoryListCardViewController *)self itemAtIndexPath:v6];
  v9 = +[CarSearchItemCell reuseIdentifier];
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  [v10 setAccessibilityIdentifier:@"CarAdvisoryCell"];
  v11 = +[UIColor systemBackgroundColor];
  [v10 setBackgroundColor:v11];

  v12 = [(CarBaseSearchViewController *)self modelForItemAtIndexPath:v6];

  if (!v12)
  {
    v12 = [CarSearchItemCellModel modelWithUpdateBlock:0];
    [v8 updateModel:v12];
  }

  [v10 setupWithModel:v12 cellStyle:{-[CarBaseSearchViewController cellStyle](self, "cellStyle")}];

  return v10;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if (v5 >= [(NSArray *)self->_advisoryItems count])
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndex:](self->_advisoryItems, "objectAtIndex:", [v4 row]);
  }

  return v6;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = [[UITableViewHeaderFooterView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setAlpha:0.0];

  return v4;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
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
  v3 = [(CarAdvisoryListCardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarAdvisoryListCard"];

  v4 = [[CarTableView alloc] initWithFrame:2 style:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(CarBaseSearchViewController *)self setTableView:v4];

  v5 = [(CarBaseSearchViewController *)self tableView];
  [v5 setAccessibilityIdentifier:@"CarAdvisoryListCardTableView"];

  v6 = [(CarBaseSearchViewController *)self tableView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(CarBaseSearchViewController *)self tableView];
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v8];

  v9 = [(CarBaseSearchViewController *)self tableView];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];

  v11 = [(CarBaseSearchViewController *)self tableView];
  [v11 setDataSource:self];

  v12 = [(CarBaseSearchViewController *)self tableView];
  [v12 setDelegate:self];

  v13 = +[UIColor clearColor];
  v14 = [(CarBaseSearchViewController *)self tableView];
  [v14 setBackgroundColor:v13];

  v15 = [(CarBaseSearchViewController *)self tableView];
  [v15 _setHeaderAndFooterViewsFloat:0];

  v16 = [(CarBaseSearchViewController *)self tableView];
  [v16 setRowHeight:44.0];

  v17 = [(CarBaseSearchViewController *)self tableView];
  v18 = objc_opt_class();
  v19 = +[CarSearchItemCell reuseIdentifier];
  [v17 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = [(CarAdvisoryListCardViewController *)self view];
  v21 = [(CarBaseSearchViewController *)self tableView];
  [v20 addSubview:v21];

  v22 = [(CarBaseSearchViewController *)self tableView];
  v23 = [(CarAdvisoryListCardViewController *)self view];
  v24 = [v22 _maps_constraintsForCenteringInView:v23];
  [NSLayoutConstraint activateConstraints:v24];
}

- (id)title
{
  v2 = [(CarAdvisoryListCardViewController *)self numberOfItems];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2 <= 1)
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

- (void)setRoute:(id)a3
{
  if (self->_route != a3)
  {
    v7 = [a3 clickableAdvisory];
    v5 = [v7 advisoryItems];
    advisoryItems = self->_advisoryItems;
    self->_advisoryItems = v5;
  }
}

- (CarAdvisoryListCardViewController)initWithRoute:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CarAdvisoryListCardViewController;
  v8 = [(CarBaseSearchViewController *)&v12 initWithDisabledETAUpdates:1];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    [(CarAdvisoryListCardViewController *)v9 setRoute:v6];
    v10 = [(CarBaseSearchViewController *)v9 tableView];
    [v10 reloadData];
  }

  return v9;
}

@end
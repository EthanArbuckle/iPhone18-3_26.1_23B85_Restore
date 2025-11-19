@interface CarCollectionListCardViewController
- (CarCollectionListCardViewController)initWithCollections:(id)a3 delegate:(id)a4;
- (CarCollectionListCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)setCollections:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CarCollectionListCardViewController

- (CarCollectionListCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarCollectionListCardViewController *)self isViewLoaded])
  {
    v3 = [(CarTableView *)self->_tableView _car_visibleCells];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v10 = [(CarCollectionListCardViewController *)self delegate];
  v7 = [(CarCollectionListCardViewController *)self collections];
  v8 = [v6 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  [v10 collectionListCard:self didSelectCollection:v9];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CarCollectionCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(CarCollectionListCardViewController *)self collections];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  [v9 setupWithCollectionHandler:v12];

  return v9;
}

- (void)setCollections:(id)a3
{
  v5 = a3;
  if (self->_collections != v5)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      objc_storeStrong(&self->_collections, a3);
      [(CarTableView *)self->_tableView reloadData];
      goto LABEL_10;
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarCollectionListCardViewController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_8;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

    v13 = [(NSArray *)self->_collections count];
    *buf = 138543874;
    v15 = v12;
    v16 = 2048;
    v17 = v13;
    v18 = 2048;
    v19 = [(NSArray *)v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] CarSearchCategoriesCardVC didUpdate collections, previously: %ld, now: %ld", buf, 0x20u);

    goto LABEL_9;
  }

LABEL_10:
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = CarCollectionListCardViewController;
  [(CarCollectionListCardViewController *)&v16 viewDidLoad];
  v3 = [(CarCollectionListCardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarCollectionListCard"];

  v4 = objc_alloc_init(CarTableView);
  tableView = self->_tableView;
  self->_tableView = v4;

  [(CarTableView *)self->_tableView setAccessibilityIdentifier:@"CarCollectionListCardTableView"];
  [(CarTableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1148846080;
  [(CarTableView *)self->_tableView setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [(CarTableView *)self->_tableView setContentCompressionResistancePriority:1 forAxis:v7];
  [(CarTableView *)self->_tableView setDataSource:self];
  [(CarTableView *)self->_tableView setDelegate:self];
  v8 = +[UIColor clearColor];
  [(CarTableView *)self->_tableView setBackgroundColor:v8];

  [(CarTableView *)self->_tableView setRowHeight:UITableViewAutomaticDimension];
  v9 = self->_tableView;
  v10 = objc_opt_class();
  v11 = +[CarCollectionCell reuseIdentifier];
  [(CarTableView *)v9 registerClass:v10 forCellReuseIdentifier:v11];

  v12 = [(CarCollectionListCardViewController *)self view];
  [v12 addSubview:self->_tableView];

  v13 = self->_tableView;
  v14 = [(CarCollectionListCardViewController *)self view];
  v15 = [(CarTableView *)v13 _maps_constraintsForCenteringInView:v14];
  [NSLayoutConstraint activateConstraints:v15];
}

- (CarCollectionListCardViewController)initWithCollections:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CarCollectionListCardViewController;
  v9 = [(CarCollectionListCardViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collections, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

@end
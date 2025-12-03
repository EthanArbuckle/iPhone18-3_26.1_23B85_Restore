@interface CarCollectionListCardViewController
- (CarCollectionListCardViewController)initWithCollections:(id)collections delegate:(id)delegate;
- (CarCollectionListCardViewControllerDelegate)delegate;
- (NSArray)focusOrderSubItems;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)setCollections:(id)collections;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
    _car_visibleCells = [(CarTableView *)self->_tableView _car_visibleCells];
  }

  else
  {
    _car_visibleCells = &__NSArray0__struct;
  }

  return _car_visibleCells;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  delegate = [(CarCollectionListCardViewController *)self delegate];
  collections = [(CarCollectionListCardViewController *)self collections];
  v8 = [pathCopy row];

  v9 = [collections objectAtIndexedSubscript:v8];
  [delegate collectionListCard:self didSelectCollection:v9];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CarCollectionCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  collections = [(CarCollectionListCardViewController *)self collections];
  v11 = [pathCopy row];

  v12 = [collections objectAtIndexedSubscript:v11];

  [v9 setupWithCollectionHandler:v12];

  return v9;
}

- (void)setCollections:(id)collections
{
  collectionsCopy = collections;
  if (self->_collections != collectionsCopy)
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      objc_storeStrong(&self->_collections, collections);
      [(CarTableView *)self->_tableView reloadData];
      goto LABEL_10;
    }

    selfCopy = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarCollectionListCardViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v9, selfCopy, v11];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v9, selfCopy];
LABEL_8:

    v13 = [(NSArray *)self->_collections count];
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 2048;
    v17 = v13;
    v18 = 2048;
    v19 = [(NSArray *)collectionsCopy count];
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
  view = [(CarCollectionListCardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarCollectionListCard"];

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

  view2 = [(CarCollectionListCardViewController *)self view];
  [view2 addSubview:self->_tableView];

  v13 = self->_tableView;
  view3 = [(CarCollectionListCardViewController *)self view];
  v15 = [(CarTableView *)v13 _maps_constraintsForCenteringInView:view3];
  [NSLayoutConstraint activateConstraints:v15];
}

- (CarCollectionListCardViewController)initWithCollections:(id)collections delegate:(id)delegate
{
  collectionsCopy = collections;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CarCollectionListCardViewController;
  v9 = [(CarCollectionListCardViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collections, collections);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end
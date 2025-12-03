@interface GeoRequestResponseLogBundleIdTableViewController
- (GeoRequestResponseLogBundleIdTableViewController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_addRow;
- (void)_editBundleId:(id)id completion:(id)completion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GeoRequestResponseLogBundleIdTableViewController

- (void)_editBundleId:(id)id completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005C5D3C;
  v8[3] = &unk_101624E78;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = [GeoRequestResponseLogBundleIdAlertController alertControllerWithBundleId:id completionHandler:v8];
  [(GeoRequestResponseLogBundleIdTableViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_addRow
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005C621C;
  v2[3] = &unk_10165EF00;
  v2[4] = self;
  [(GeoRequestResponseLogBundleIdTableViewController *)self _editBundleId:&stru_1016631F0 completion:v2];
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1005C6494;
  v12 = &unk_101631C00;
  selfCopy = self;
  pathCopy = path;
  v4 = pathCopy;
  v5 = [UIContextualAction contextualActionWithStyle:1 title:@"Delete" handler:&v9];
  v15 = v5;
  selfCopy = [NSArray arrayWithObjects:&v15 count:1, v9, v10, v11, v12, selfCopy];
  v7 = [UISwipeActionsConfiguration configurationWithActions:selfCopy];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"row"];
  [v6 setSelectionStyle:0];
  bundleIds = self->_bundleIds;
  v8 = [pathCopy row];

  v9 = [(NSMutableArray *)bundleIds objectAtIndexedSubscript:v8];
  textLabel = [v6 textLabel];
  [textLabel setText:v9];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_bundleIds, "objectAtIndexedSubscript:", [pathCopy row]);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005C6750;
  v11[3] = &unk_101622F00;
  v11[4] = self;
  v12 = pathCopy;
  v13 = viewCopy;
  v9 = viewCopy;
  v10 = pathCopy;
  [(GeoRequestResponseLogBundleIdTableViewController *)self _editBundleId:v8 completion:v11];

  [v9 deselectRowAtIndexPath:v10 animated:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = objc_alloc_init(UILabel);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setText:@"Bundle Ids are matched exactly. An id may end in * to perform a prefix match (e.g. com.apple.* to filter on all internal apps)"];
  [v4 setNumberOfLines:0];
  v5 = objc_alloc_init(UIView);
  [v5 addSubview:v4];
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [v5 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  v20[0] = v17;
  trailingAnchor = [v5 trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:8.0];
  v20[1] = v6;
  topAnchor = [v4 topAnchor];
  topAnchor2 = [v5 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v20[2] = v9;
  bottomAnchor = [v5 bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:8.0];
  v20[3] = v12;
  v13 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v13];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = GeoRequestResponseLogBundleIdTableViewController;
  [(GeoRequestResponseLogBundleIdTableViewController *)&v8 viewWillAppear:appear];
  v4 = GEOConfigGetSet();
  allObjects = [v4 allObjects];
  v6 = [allObjects mutableCopy];
  bundleIds = self->_bundleIds;
  self->_bundleIds = v6;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = GeoRequestResponseLogBundleIdTableViewController;
  [(GeoRequestResponseLogBundleIdTableViewController *)&v6 viewDidLoad];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:4 target:self action:"_addRow"];
  navigationItem = [(GeoRequestResponseLogBundleIdTableViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  tableView = [(GeoRequestResponseLogBundleIdTableViewController *)self tableView];
  [tableView setSectionHeaderHeight:UITableViewAutomaticDimension];
}

- (GeoRequestResponseLogBundleIdTableViewController)init
{
  v3.receiver = self;
  v3.super_class = GeoRequestResponseLogBundleIdTableViewController;
  return [(GeoRequestResponseLogBundleIdTableViewController *)&v3 initWithStyle:0];
}

@end
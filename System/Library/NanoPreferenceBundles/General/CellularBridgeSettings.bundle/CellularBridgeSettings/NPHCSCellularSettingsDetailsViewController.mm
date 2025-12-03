@interface NPHCSCellularSettingsDetailsViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)titleForHeaderInSection:(unint64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation NPHCSCellularSettingsDetailsViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = NPHCSCellularSettingsDetailsViewController;
  [(NPHCSCellularSettingsDetailsViewController *)&v10 viewDidLoad];
  appDataUsageItem = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
  displayName = [appDataUsageItem displayName];
  [(NPHCSCellularSettingsDetailsViewController *)self setTitle:displayName];

  appDataUsageItem2 = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
  childObjects = [appDataUsageItem2 childObjects];
  v7 = +[NPHCSAppCellularDataUsageItem userSelectedComparator];
  v8 = [childObjects sortedArrayUsingComparator:v7];
  appDataUsageItem3 = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
  [appDataUsageItem3 setChildObjects:v8];
}

- (id)titleForHeaderInSection:(unint64_t)section
{
  if (section || (-[NPHCSCellularSettingsDetailsViewController appDataUsageItem](self, "appDataUsageItem"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isForAnApp], v4, !v5))
  {
    v10 = 0;
  }

  else
  {
    appDataUsageItem = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
    displayName = [appDataUsageItem displayName];

    if ([displayName length])
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"ALLOW_DATA_ACCESS_FORMAT" value:&stru_1CD90 table:0];
      v10 = [NSString stringWithFormat:v9, displayName];
    }

    else
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v8 localizedStringForKey:@"ALLOW_DATA_ACCESS" value:&stru_1CD90 table:0];
    }
  }

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem:view];
  childObjects = [v4 childObjects];
  v6 = [childObjects count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  appDataUsageItem = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
  childObjects = [appDataUsageItem childObjects];
  v10 = [pathCopy row];

  v11 = [childObjects objectAtIndexedSubscript:v10];
  v12 = [NPHCSAppCellularDataUsageCell cellForTableView:viewCopy reuseIdentifier:@"cellularDetailViewCellIdentifier" appDataUsageItem:v11 isCellularSetup:[(NPHCSCellularSettingsDetailsViewController *)self isCellularSetup]];

  imageView = [v12 imageView];
  [imageView setImage:0];

  [v12 setAccessoryView:0];
  [v12 setAccessoryType:0];
  if (+[NPHSharedUtilities isActiveWatchChinaRegionCellular])
  {
    detailTextLabel = [v12 detailTextLabel];
    [detailTextLabel setText:0];
  }

  return v12;
}

@end
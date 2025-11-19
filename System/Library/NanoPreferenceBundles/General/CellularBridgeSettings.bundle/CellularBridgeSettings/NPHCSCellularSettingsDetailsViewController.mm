@interface NPHCSCellularSettingsDetailsViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)titleForHeaderInSection:(unint64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation NPHCSCellularSettingsDetailsViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = NPHCSCellularSettingsDetailsViewController;
  [(NPHCSCellularSettingsDetailsViewController *)&v10 viewDidLoad];
  v3 = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
  v4 = [v3 displayName];
  [(NPHCSCellularSettingsDetailsViewController *)self setTitle:v4];

  v5 = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
  v6 = [v5 childObjects];
  v7 = +[NPHCSAppCellularDataUsageItem userSelectedComparator];
  v8 = [v6 sortedArrayUsingComparator:v7];
  v9 = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
  [v9 setChildObjects:v8];
}

- (id)titleForHeaderInSection:(unint64_t)a3
{
  if (a3 || (-[NPHCSCellularSettingsDetailsViewController appDataUsageItem](self, "appDataUsageItem"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isForAnApp], v4, !v5))
  {
    v10 = 0;
  }

  else
  {
    v6 = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
    v7 = [v6 displayName];

    if ([v7 length])
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"ALLOW_DATA_ACCESS_FORMAT" value:&stru_1CD90 table:0];
      v10 = [NSString stringWithFormat:v9, v7];
    }

    else
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v8 localizedStringForKey:@"ALLOW_DATA_ACCESS" value:&stru_1CD90 table:0];
    }
  }

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem:a3];
  v5 = [v4 childObjects];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPHCSCellularSettingsDetailsViewController *)self appDataUsageItem];
  v9 = [v8 childObjects];
  v10 = [v6 row];

  v11 = [v9 objectAtIndexedSubscript:v10];
  v12 = [NPHCSAppCellularDataUsageCell cellForTableView:v7 reuseIdentifier:@"cellularDetailViewCellIdentifier" appDataUsageItem:v11 isCellularSetup:[(NPHCSCellularSettingsDetailsViewController *)self isCellularSetup]];

  v13 = [v12 imageView];
  [v13 setImage:0];

  [v12 setAccessoryView:0];
  [v12 setAccessoryType:0];
  if (+[NPHSharedUtilities isActiveWatchChinaRegionCellular])
  {
    v14 = [v12 detailTextLabel];
    [v14 setText:0];
  }

  return v12;
}

@end
@interface NPHCSAppCellularDataUsageCell
- (NPHCSAppCellularDataUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 appDataUsageItem:(id)a5;
- (void)_cellularDataPolicySwitchFlipped:(id)a3;
- (void)_setIcon;
- (void)prepareForReuse;
@end

@implementation NPHCSAppCellularDataUsageCell

- (NPHCSAppCellularDataUsageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 appDataUsageItem:(id)a5
{
  v8 = a5;
  v20.receiver = self;
  v20.super_class = NPHCSAppCellularDataUsageCell;
  v9 = [(NPHCSAppCellularDataUsageCell *)&v20 initWithStyle:a3 reuseIdentifier:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [(NPHCSAppCellularDataUsageCell *)v9 imageView];
    [v11 setImage:0];

    v12 = [(NPHCSAppCellularDataUsageCell *)v10 textLabel];
    [v12 setNumberOfLines:0];

    v13 = [(NPHCSAppCellularDataUsageCell *)v10 detailTextLabel];
    [v13 setNumberOfLines:0];

    [(NPHCSAppCellularDataUsageCell *)v10 setAppDataUsageItem:v8];
    if (+[NPHSharedUtilities isActiveWatchChinaRegionCellular](NPHSharedUtilities, "isActiveWatchChinaRegionCellular") || (-[NPHCSAppCellularDataUsageCell appDataUsageItem](v10, "appDataUsageItem"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isForAnApp], v14, (v15 & 1) == 0))
    {
      [(NPHCSAppCellularDataUsageCell *)v10 setAccessoryType:1];
    }

    else
    {
      v16 = objc_alloc_init(UISwitch);
      [(NPHCSAppCellularDataUsageCell *)v10 setAccessorySwitch:v16];

      v17 = [(NPHCSAppCellularDataUsageCell *)v10 accessorySwitch];
      [v17 addTarget:v10 action:"_cellularDataPolicySwitchFlipped:" forControlEvents:4096];

      v18 = [(NPHCSAppCellularDataUsageCell *)v10 accessorySwitch];
      [(NPHCSAppCellularDataUsageCell *)v10 setAccessoryView:v18];

      [(NPHCSAppCellularDataUsageCell *)v10 setSelectionStyle:0];
    }
  }

  return v10;
}

- (void)_setIcon
{
  objc_initWeak(&location, self);
  v3 = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
  v4 = [v3 isForAnApp];

  if (v4)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_37A4;
    v19[3] = &unk_1C628;
    objc_copyWeak(&v20, &location);
    v5 = objc_retainBlock(v19);
    v18 = 0;
    v6 = +[UIScreen mainScreen];
    v7 = [v6 traitCollection];
    [v7 displayScale];
    if (v8 <= 2.0)
    {
      v9 = 47;
    }

    else
    {
      v9 = 48;
    }

    v10 = +[NanoResourceGrabber sharedInstance];
    v11 = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
    v12 = [v11 bundleID];
    [v10 getCachedIconForBundleID:v12 iconVariant:v9 outIconImage:&v18 updateBlock:v5];

    if (v18)
    {
      v13 = [(NPHCSAppCellularDataUsageCell *)self imageView];
      [v13 setImage:v18];
    }

    else
    {
      v14 = [(NPHCSAppCellularDataUsageCell *)self imageView];
      v15 = PSBlankIconImage();
      [v14 setImage:v15];

      v13 = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
      v16 = [v13 bundleID];
      v17 = dispatch_get_global_queue(0, 0);
      [v10 getIconForBundleID:v16 iconVariant:v9 queue:v17 block:v5 timeout:10.0];
    }

    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&location);
}

- (void)_cellularDataPolicySwitchFlipped:(id)a3
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NPHCSAppCellularDataUsageCell _cellularDataPolicySwitchFlipped:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v5 = [(NPHCSAppCellularDataUsageCell *)self accessorySwitch];
  v6 = [v5 isOn];

  v7 = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
  [v7 setUsagePoliciesForCellular:v6];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = NPHCSAppCellularDataUsageCell;
  [(NPHCSAppCellularDataUsageCell *)&v4 prepareForReuse];
  [(NPHCSAppCellularDataUsageCell *)self setAppDataUsageItem:0];
  v3 = [(NPHCSAppCellularDataUsageCell *)self imageView];
  [v3 setImage:0];
}

@end
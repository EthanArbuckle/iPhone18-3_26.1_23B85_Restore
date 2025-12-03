@interface NPHCSAppCellularDataUsageCell
- (NPHCSAppCellularDataUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier appDataUsageItem:(id)item;
- (void)_cellularDataPolicySwitchFlipped:(id)flipped;
- (void)_setIcon;
- (void)prepareForReuse;
@end

@implementation NPHCSAppCellularDataUsageCell

- (NPHCSAppCellularDataUsageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier appDataUsageItem:(id)item
{
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = NPHCSAppCellularDataUsageCell;
  v9 = [(NPHCSAppCellularDataUsageCell *)&v20 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    imageView = [(NPHCSAppCellularDataUsageCell *)v9 imageView];
    [imageView setImage:0];

    textLabel = [(NPHCSAppCellularDataUsageCell *)v10 textLabel];
    [textLabel setNumberOfLines:0];

    detailTextLabel = [(NPHCSAppCellularDataUsageCell *)v10 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];

    [(NPHCSAppCellularDataUsageCell *)v10 setAppDataUsageItem:itemCopy];
    if (+[NPHSharedUtilities isActiveWatchChinaRegionCellular](NPHSharedUtilities, "isActiveWatchChinaRegionCellular") || (-[NPHCSAppCellularDataUsageCell appDataUsageItem](v10, "appDataUsageItem"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isForAnApp], v14, (v15 & 1) == 0))
    {
      [(NPHCSAppCellularDataUsageCell *)v10 setAccessoryType:1];
    }

    else
    {
      v16 = objc_alloc_init(UISwitch);
      [(NPHCSAppCellularDataUsageCell *)v10 setAccessorySwitch:v16];

      accessorySwitch = [(NPHCSAppCellularDataUsageCell *)v10 accessorySwitch];
      [accessorySwitch addTarget:v10 action:"_cellularDataPolicySwitchFlipped:" forControlEvents:4096];

      accessorySwitch2 = [(NPHCSAppCellularDataUsageCell *)v10 accessorySwitch];
      [(NPHCSAppCellularDataUsageCell *)v10 setAccessoryView:accessorySwitch2];

      [(NPHCSAppCellularDataUsageCell *)v10 setSelectionStyle:0];
    }
  }

  return v10;
}

- (void)_setIcon
{
  objc_initWeak(&location, self);
  appDataUsageItem = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
  isForAnApp = [appDataUsageItem isForAnApp];

  if (isForAnApp)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_37A4;
    v19[3] = &unk_1C628;
    objc_copyWeak(&v20, &location);
    v5 = objc_retainBlock(v19);
    v18 = 0;
    v6 = +[UIScreen mainScreen];
    traitCollection = [v6 traitCollection];
    [traitCollection displayScale];
    if (v8 <= 2.0)
    {
      v9 = 47;
    }

    else
    {
      v9 = 48;
    }

    v10 = +[NanoResourceGrabber sharedInstance];
    appDataUsageItem2 = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
    bundleID = [appDataUsageItem2 bundleID];
    [v10 getCachedIconForBundleID:bundleID iconVariant:v9 outIconImage:&v18 updateBlock:v5];

    if (v18)
    {
      imageView = [(NPHCSAppCellularDataUsageCell *)self imageView];
      [imageView setImage:v18];
    }

    else
    {
      imageView2 = [(NPHCSAppCellularDataUsageCell *)self imageView];
      v15 = PSBlankIconImage();
      [imageView2 setImage:v15];

      imageView = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
      bundleID2 = [imageView bundleID];
      v17 = dispatch_get_global_queue(0, 0);
      [v10 getIconForBundleID:bundleID2 iconVariant:v9 queue:v17 block:v5 timeout:10.0];
    }

    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&location);
}

- (void)_cellularDataPolicySwitchFlipped:(id)flipped
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NPHCSAppCellularDataUsageCell _cellularDataPolicySwitchFlipped:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  accessorySwitch = [(NPHCSAppCellularDataUsageCell *)self accessorySwitch];
  isOn = [accessorySwitch isOn];

  appDataUsageItem = [(NPHCSAppCellularDataUsageCell *)self appDataUsageItem];
  [appDataUsageItem setUsagePoliciesForCellular:isOn];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = NPHCSAppCellularDataUsageCell;
  [(NPHCSAppCellularDataUsageCell *)&v4 prepareForReuse];
  [(NPHCSAppCellularDataUsageCell *)self setAppDataUsageItem:0];
  imageView = [(NPHCSAppCellularDataUsageCell *)self imageView];
  [imageView setImage:0];
}

@end
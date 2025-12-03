@interface HSPCDetectedPairedAccessoryViewController
- (HSPCDetectedPairedAccessoryViewController)initWithCoordinator:(id)coordinator config:(id)config;
@end

@implementation HSPCDetectedPairedAccessoryViewController

- (HSPCDetectedPairedAccessoryViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  category = [configCopy category];
  categoryType = [category categoryType];

  v12 = [[HUHomeAccessoryTileView alloc] initWithFrame:categoryType categoryType:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v25.receiver = self;
  v25.super_class = HSPCDetectedPairedAccessoryViewController;
  v13 = [(HSPCDetectedViewController *)&v25 initWithCenterContentView:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, config);
    objc_storeStrong(&v14->_coordinator, coordinator);
    addedAccessory = [configCopy addedAccessory];
    matterDeviceTypeID = [addedAccessory matterDeviceTypeID];
    v17 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCDetectedPairedAccessoryViewController *)v14 setTitle:v17];

    v18 = [(HSPCDetectedPairedAccessoryViewController *)v14 addProminentDismissButtonWithTitleKey:@"HUOkTitle"];
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(a2);
      addedAccessory2 = [configCopy addedAccessory];
      matterDeviceTypeID2 = [addedAccessory2 matterDeviceTypeID];
      addedAccessory3 = [configCopy addedAccessory];
      *buf = 138413058;
      v27 = v14;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = matterDeviceTypeID2;
      v32 = 2112;
      v33 = addedAccessory3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ accessory: %@", buf, 0x2Au);
    }
  }

  return v14;
}

@end
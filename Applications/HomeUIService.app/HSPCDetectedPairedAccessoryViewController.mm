@interface HSPCDetectedPairedAccessoryViewController
- (HSPCDetectedPairedAccessoryViewController)initWithCoordinator:(id)a3 config:(id)a4;
@end

@implementation HSPCDetectedPairedAccessoryViewController

- (HSPCDetectedPairedAccessoryViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 category];
  v11 = [v10 categoryType];

  v12 = [[HUHomeAccessoryTileView alloc] initWithFrame:v11 categoryType:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v25.receiver = self;
  v25.super_class = HSPCDetectedPairedAccessoryViewController;
  v13 = [(HSPCDetectedViewController *)&v25 initWithCenterContentView:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, a4);
    objc_storeStrong(&v14->_coordinator, a3);
    v15 = [v9 addedAccessory];
    v16 = [v15 matterDeviceTypeID];
    v17 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCDetectedPairedAccessoryViewController *)v14 setTitle:v17];

    v18 = [(HSPCDetectedPairedAccessoryViewController *)v14 addProminentDismissButtonWithTitleKey:@"HUOkTitle"];
    v19 = HFLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(a2);
      v21 = [v9 addedAccessory];
      v22 = [v21 matterDeviceTypeID];
      v23 = [v9 addedAccessory];
      *buf = 138413058;
      v27 = v14;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ accessory: %@", buf, 0x2Au);
    }
  }

  return v14;
}

@end
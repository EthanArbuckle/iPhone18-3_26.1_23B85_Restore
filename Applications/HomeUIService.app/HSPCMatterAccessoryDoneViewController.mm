@interface HSPCMatterAccessoryDoneViewController
- (HFIconDescriptor)iconDescriptor;
- (HSPCMatterAccessoryDoneViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (void)viewDidLoad;
@end

@implementation HSPCMatterAccessoryDoneViewController

- (HSPCMatterAccessoryDoneViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v10 setIconSize:5];
  v35.receiver = self;
  v35.super_class = HSPCMatterAccessoryDoneViewController;
  v11 = [(HSPCFixedSizeCenterContentViewController *)&v35 initWithCenterContentView:v10];
  v12 = v11;
  if (v11)
  {
    v31 = v9;
    objc_storeStrong(&v11->_config, a4);
    objc_storeStrong(&v12->_coordinator, a3);
    objc_storeStrong(&v12->_iconView, v10);
    v34 = [v8 activeTuple];
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      v32 = [v8 setupAccessoryDescription];
      v15 = [v32 setupAccessoryPayload];
      v16 = [v15 matterDeviceTypeID];
      v17 = [v8 setupAccessoryDescription];
      v18 = [v17 setupAccessoryPayload];
      v19 = [v8 setupAccessoryDescription];
      *buf = 138413314;
      v37 = v12;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v16;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = v19;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ setupAccessoryPayload: %@ setupAccessoryDescription: %@", buf, 0x34u);
    }

    v20 = [v8 numberOfAccessoriesInSameCategory];
    v21 = [v8 matterDeviceSetupRequest];
    v33 = [v21 ecosystemName];

    v22 = [v34 accessoryCategoryOrPrimaryServiceType];
    v23 = [v8 setupAccessoryDescription];
    v24 = [v23 setupAccessoryPayload];
    v25 = [v24 matterDeviceTypeID];
    v26 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    if (v20 == 1)
    {
      [NSString stringWithFormat:v26, v33, v30];
    }

    else
    {
      [NSString stringWithFormat:v26, v20, v33];
    }
    v27 = ;
    [(HSPCMatterAccessoryDoneViewController *)v12 setTitle:v27];

    v28 = [(HSPCMatterAccessoryDoneViewController *)v12 addProminentDismissButtonWithTitleKey:@"HUDoneTitle"];
    v9 = v31;
  }

  return v12;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HSPCMatterAccessoryDoneViewController;
  [(HSPCFixedSizeCenterContentViewController *)&v5 viewDidLoad];
  v3 = [(HSPCMatterAccessoryDoneViewController *)self iconDescriptor];
  v4 = [(HSPCMatterAccessoryDoneViewController *)self iconView];
  [v4 updateWithIconDescriptor:v3 displayStyle:1 animated:0];
}

- (HFIconDescriptor)iconDescriptor
{
  v3 = [(HSPCMatterAccessoryDoneViewController *)self coordinator];
  v4 = [v3 activeTuple];
  v5 = [v4 accessoryCategoryOrPrimaryServiceType];
  v6 = [(HSPCMatterAccessoryDoneViewController *)self coordinator];
  v7 = [v6 setupAccessoryDescription];
  v8 = [v7 setupAccessoryPayload];
  v9 = [v8 matterDeviceTypeID];
  v10 = [HFAccessoryType matterDeviceType:v9];
  v11 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:v5 matterDeviceType:v10];

  v12 = [(HSPCMatterAccessoryDoneViewController *)self coordinator];
  v13 = [v12 activeTuple];
  v14 = [v13 accessory];
  v15 = [HFServiceIconFactory overrideIconDescriptorForMultiServiceAccessory:v14 iconDescriptor:v11];

  return v15;
}

- (id)commitConfiguration
{
  v2 = [(HSPCMatterAccessoryDoneViewController *)self coordinator];
  v3 = [v2 requiresDismissalConfirmation] ^ 1;

  v4 = [NSNumber numberWithUnsignedInteger:v3];
  v5 = [NAFuture futureWithResult:v4];

  return v5;
}

@end
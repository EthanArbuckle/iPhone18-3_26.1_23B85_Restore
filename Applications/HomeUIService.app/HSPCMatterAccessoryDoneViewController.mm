@interface HSPCMatterAccessoryDoneViewController
- (HFIconDescriptor)iconDescriptor;
- (HSPCMatterAccessoryDoneViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (void)viewDidLoad;
@end

@implementation HSPCMatterAccessoryDoneViewController

- (HSPCMatterAccessoryDoneViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v10 = [[HUIconView alloc] initWithFrame:1 contentMode:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v10 setIconSize:5];
  v35.receiver = self;
  v35.super_class = HSPCMatterAccessoryDoneViewController;
  v11 = [(HSPCFixedSizeCenterContentViewController *)&v35 initWithCenterContentView:v10];
  v12 = v11;
  if (v11)
  {
    v31 = configCopy;
    objc_storeStrong(&v11->_config, config);
    objc_storeStrong(&v12->_coordinator, coordinator);
    objc_storeStrong(&v12->_iconView, v10);
    activeTuple = [coordinatorCopy activeTuple];
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromSelector(a2);
      setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
      setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
      matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
      setupAccessoryDescription2 = [coordinatorCopy setupAccessoryDescription];
      setupAccessoryPayload2 = [setupAccessoryDescription2 setupAccessoryPayload];
      setupAccessoryDescription3 = [coordinatorCopy setupAccessoryDescription];
      *buf = 138413314;
      v37 = v12;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = matterDeviceTypeID;
      v42 = 2112;
      v43 = setupAccessoryPayload2;
      v44 = 2112;
      v45 = setupAccessoryDescription3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ setupAccessoryPayload: %@ setupAccessoryDescription: %@", buf, 0x34u);
    }

    numberOfAccessoriesInSameCategory = [coordinatorCopy numberOfAccessoriesInSameCategory];
    matterDeviceSetupRequest = [coordinatorCopy matterDeviceSetupRequest];
    ecosystemName = [matterDeviceSetupRequest ecosystemName];

    accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
    setupAccessoryDescription4 = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload3 = [setupAccessoryDescription4 setupAccessoryPayload];
    matterDeviceTypeID2 = [setupAccessoryPayload3 matterDeviceTypeID];
    v26 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    if (numberOfAccessoriesInSameCategory == 1)
    {
      [NSString stringWithFormat:v26, ecosystemName, v30];
    }

    else
    {
      [NSString stringWithFormat:v26, numberOfAccessoriesInSameCategory, ecosystemName];
    }
    v27 = ;
    [(HSPCMatterAccessoryDoneViewController *)v12 setTitle:v27];

    v28 = [(HSPCMatterAccessoryDoneViewController *)v12 addProminentDismissButtonWithTitleKey:@"HUDoneTitle"];
    configCopy = v31;
  }

  return v12;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HSPCMatterAccessoryDoneViewController;
  [(HSPCFixedSizeCenterContentViewController *)&v5 viewDidLoad];
  iconDescriptor = [(HSPCMatterAccessoryDoneViewController *)self iconDescriptor];
  iconView = [(HSPCMatterAccessoryDoneViewController *)self iconView];
  [iconView updateWithIconDescriptor:iconDescriptor displayStyle:1 animated:0];
}

- (HFIconDescriptor)iconDescriptor
{
  coordinator = [(HSPCMatterAccessoryDoneViewController *)self coordinator];
  activeTuple = [coordinator activeTuple];
  accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
  coordinator2 = [(HSPCMatterAccessoryDoneViewController *)self coordinator];
  setupAccessoryDescription = [coordinator2 setupAccessoryDescription];
  setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
  matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
  v10 = [HFAccessoryType matterDeviceType:matterDeviceTypeID];
  v11 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:accessoryCategoryOrPrimaryServiceType matterDeviceType:v10];

  coordinator3 = [(HSPCMatterAccessoryDoneViewController *)self coordinator];
  activeTuple2 = [coordinator3 activeTuple];
  accessory = [activeTuple2 accessory];
  v15 = [HFServiceIconFactory overrideIconDescriptorForMultiServiceAccessory:accessory iconDescriptor:v11];

  return v15;
}

- (id)commitConfiguration
{
  coordinator = [(HSPCMatterAccessoryDoneViewController *)self coordinator];
  v3 = [coordinator requiresDismissalConfirmation] ^ 1;

  v4 = [NSNumber numberWithUnsignedInteger:v3];
  v5 = [NAFuture futureWithResult:v4];

  return v5;
}

@end
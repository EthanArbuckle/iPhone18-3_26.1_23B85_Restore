@interface HSPCPairingViewController
- (HSPCPairingViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)iconDescriptor;
- (void)updatePairingStatus:(id)status phase:(unint64_t)phase;
@end

@implementation HSPCPairingViewController

- (HSPCPairingViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v28.receiver = self;
  v28.super_class = HSPCPairingViewController;
  v10 = [(HSPCCenterIconViewController *)&v28 initWithCoordinator:coordinatorCopy config:configCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_config, config);
    objc_storeStrong(&v11->_coordinator, coordinator);
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
      setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
      matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
      setupAccessoryDescription2 = [coordinatorCopy setupAccessoryDescription];
      setupAccessoryPayload2 = [setupAccessoryDescription2 setupAccessoryPayload];
      *buf = 138413058;
      v30 = v11;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = matterDeviceTypeID;
      v35 = 2112;
      v36 = setupAccessoryPayload2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ setupAccessoryPayload: %@", buf, 0x2Au);
    }

    activeTuple = [coordinatorCopy activeTuple];
    accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
    setupAccessoryDescription3 = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload3 = [setupAccessoryDescription3 setupAccessoryPayload];
    matterDeviceTypeID2 = [setupAccessoryPayload3 matterDeviceTypeID];
    v24 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCPairingViewController *)v11 setTitle:v24];

    v25 = HULocalizedString();
    [(HSPCPairingViewController *)v11 setSubtitle:v25];

    v26 = HFLocalizedString();
    [(HSPCPairingViewController *)v11 showActivityIndicatorWithStatus:v26];
  }

  return v11;
}

- (id)iconDescriptor
{
  coordinator = [(HSPCPairingViewController *)self coordinator];
  activeTuple = [coordinator activeTuple];
  accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
  coordinator2 = [(HSPCPairingViewController *)self coordinator];
  setupAccessoryDescription = [coordinator2 setupAccessoryDescription];
  setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
  matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
  v10 = [HFAccessoryType matterDeviceType:matterDeviceTypeID];
  v11 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:accessoryCategoryOrPrimaryServiceType matterDeviceType:v10];

  coordinator3 = [(HSPCPairingViewController *)self coordinator];
  activeTuple2 = [coordinator3 activeTuple];
  accessory = [activeTuple2 accessory];
  v15 = [HFServiceIconFactory overrideIconDescriptorForMultiServiceAccessory:accessory iconDescriptor:v11];

  return v15;
}

- (void)updatePairingStatus:(id)status phase:(unint64_t)phase
{
  if (phase == 2)
  {
    [(HSPCPairingViewController *)self setSubtitle:status];
  }

  else
  {
    [(HSPCPairingViewController *)self showActivityIndicatorWithStatus:status];
  }

  view = [(HSPCPairingViewController *)self view];
  [view layoutIfNeeded];
}

@end
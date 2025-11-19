@interface HSPCPairingViewController
- (HSPCPairingViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)iconDescriptor;
- (void)updatePairingStatus:(id)a3 phase:(unint64_t)a4;
@end

@implementation HSPCPairingViewController

- (HSPCPairingViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v8 = a3;
  v9 = a4;
  v28.receiver = self;
  v28.super_class = HSPCPairingViewController;
  v10 = [(HSPCCenterIconViewController *)&v28 initWithCoordinator:v8 config:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_config, a4);
    objc_storeStrong(&v11->_coordinator, a3);
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      v14 = [v8 setupAccessoryDescription];
      v15 = [v14 setupAccessoryPayload];
      v16 = [v15 matterDeviceTypeID];
      v17 = [v8 setupAccessoryDescription];
      v18 = [v17 setupAccessoryPayload];
      *buf = 138413058;
      v30 = v11;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = v16;
      v35 = 2112;
      v36 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@:%@: matterDeviceTypeID: %@ setupAccessoryPayload: %@", buf, 0x2Au);
    }

    v19 = [v8 activeTuple];
    v20 = [v19 accessoryCategoryOrPrimaryServiceType];
    v21 = [v8 setupAccessoryDescription];
    v22 = [v21 setupAccessoryPayload];
    v23 = [v22 matterDeviceTypeID];
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
  v3 = [(HSPCPairingViewController *)self coordinator];
  v4 = [v3 activeTuple];
  v5 = [v4 accessoryCategoryOrPrimaryServiceType];
  v6 = [(HSPCPairingViewController *)self coordinator];
  v7 = [v6 setupAccessoryDescription];
  v8 = [v7 setupAccessoryPayload];
  v9 = [v8 matterDeviceTypeID];
  v10 = [HFAccessoryType matterDeviceType:v9];
  v11 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:v5 matterDeviceType:v10];

  v12 = [(HSPCPairingViewController *)self coordinator];
  v13 = [v12 activeTuple];
  v14 = [v13 accessory];
  v15 = [HFServiceIconFactory overrideIconDescriptorForMultiServiceAccessory:v14 iconDescriptor:v11];

  return v15;
}

- (void)updatePairingStatus:(id)a3 phase:(unint64_t)a4
{
  if (a4 == 2)
  {
    [(HSPCPairingViewController *)self setSubtitle:a3];
  }

  else
  {
    [(HSPCPairingViewController *)self showActivityIndicatorWithStatus:a3];
  }

  v5 = [(HSPCPairingViewController *)self view];
  [v5 layoutIfNeeded];
}

@end
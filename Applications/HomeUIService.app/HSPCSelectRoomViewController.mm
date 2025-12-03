@interface HSPCSelectRoomViewController
- (HSPCSelectRoomViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)shouldSkip;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
@end

@implementation HSPCSelectRoomViewController

- (HSPCSelectRoomViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v19.receiver = self;
  v19.super_class = HSPCSelectRoomViewController;
  v9 = [(HSPCSelectRoomViewController *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
    activeTuple = [coordinatorCopy activeTuple];
    accessoryCategoryOrPrimaryServiceType = [activeTuple accessoryCategoryOrPrimaryServiceType];
    setupAccessoryDescription = [coordinatorCopy setupAccessoryDescription];
    setupAccessoryPayload = [setupAccessoryDescription setupAccessoryPayload];
    matterDeviceTypeID = [setupAccessoryPayload matterDeviceTypeID];
    v16 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCSelectRoomViewController *)v10 setTitle:v16];

    v17 = [(HSPCSelectRoomViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

- (id)commitConfiguration
{
  contentView = [(HSPCSelectRoomViewController *)self contentView];
  pickerView = [contentView pickerView];
  v5 = [pickerView selectedRowInComponent:0];

  roomProvider = [(HSPCSelectRoomViewController *)self roomProvider];
  items = [roomProvider items];
  v8 = [items count];

  config = [(HSPCSelectRoomViewController *)self config];
  v10 = config;
  if (v5 >= v8)
  {
    [config setRoomName:0];

    v16 = [NAFuture futureWithResult:&off_1000CD870];
  }

  else
  {
    isSetupInitiatedByOtherMatterEcosystem = [config isSetupInitiatedByOtherMatterEcosystem];

    if (isSetupInitiatedByOtherMatterEcosystem)
    {
      v12 = objc_opt_class();
      config2 = [(HSPCSelectRoomViewController *)self config];
      if (config2)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = config2;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        if (!v15)
        {
          sub_1000774F0(config2, v12);
        }
      }

      else
      {
        v15 = 0;
      }

      roomProvider2 = [(HSPCSelectRoomViewController *)self roomProvider];
      items2 = [roomProvider2 items];
      v25 = [items2 objectAtIndexedSubscript:v5];
      [v15 setSelectedPartnerRoom:v25];

      v16 = [NAFuture futureWithResult:&off_1000CD870];
    }

    else
    {
      roomProvider3 = [(HSPCSelectRoomViewController *)self roomProvider];
      items3 = [roomProvider3 items];
      v19 = [items3 objectAtIndexedSubscript:v5];
      config3 = [(HSPCSelectRoomViewController *)self config];
      [config3 setRoomName:v19];

      config4 = [(HSPCSelectRoomViewController *)self config];
      configureRoom = [config4 configureRoom];
      v16 = [configureRoom hs_commitConfigurationFutureWithContextMessage:@"Set Room"];
    }
  }

  return v16;
}

- (id)hu_preloadContent
{
  coordinator = [(HSPCSelectRoomViewController *)self coordinator];
  config = [(HSPCSelectRoomViewController *)self config];
  v5 = [HSPCRoomProviderFactory providerForCoordinator:coordinator config:config];
  [(HSPCSelectRoomViewController *)self setRoomProvider:v5];

  roomProvider = [(HSPCSelectRoomViewController *)self roomProvider];
  loadData = [roomProvider loadData];
  v8 = +[NAScheduler mainThreadScheduler];
  v9 = [loadData reschedule:v8];

  return v9;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v5 = [(HSPCSelectRoomViewController *)self config:view];
  isSetupInitiatedByOtherMatterEcosystem = [v5 isSetupInitiatedByOtherMatterEcosystem];

  roomProvider = [(HSPCSelectRoomViewController *)self roomProvider];
  items = [roomProvider items];
  v9 = [items count];

  return v9 + (isSetupInitiatedByOtherMatterEcosystem ^ 1);
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = [(HSPCSelectRoomViewController *)self roomProvider:view];
  items = [v7 items];
  if ([items count] <= row)
  {
    v13 = HULocalizedString();
  }

  else
  {
    roomProvider = [(HSPCSelectRoomViewController *)self roomProvider];
    roomProvider2 = [(HSPCSelectRoomViewController *)self roomProvider];
    items2 = [roomProvider2 items];
    v12 = [items2 objectAtIndexedSubscript:row];
    v13 = [roomProvider userFacingStringForItem:v12];
  }

  return v13;
}

- (id)shouldSkip
{
  config = [(HSPCSelectRoomViewController *)self config];
  isSetupInitiatedByOtherMatterEcosystem = [config isSetupInitiatedByOtherMatterEcosystem];

  roomProvider = [(HSPCSelectRoomViewController *)self roomProvider];
  items = [roomProvider items];
  v7 = [items count] < 2;

  v8 = [NSNumber numberWithBool:v7 & isSetupInitiatedByOtherMatterEcosystem];
  v9 = [NAFuture futureWithResult:v8];

  return v9;
}

@end
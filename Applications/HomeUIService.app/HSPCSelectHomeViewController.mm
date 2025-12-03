@interface HSPCSelectHomeViewController
- (HSPCSelectHomeViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
@end

@implementation HSPCSelectHomeViewController

- (HSPCSelectHomeViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v14.receiver = self;
  v14.super_class = HSPCSelectHomeViewController;
  v9 = [(HSPCSelectHomeViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, config);
    objc_storeStrong(&v10->_coordinator, coordinator);
    v11 = HULocalizedString();
    [(HSPCSelectHomeViewController *)v10 setTitle:v11];

    v12 = [(HSPCSelectHomeViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

- (id)commitConfiguration
{
  contentView = [(HSPCSelectHomeViewController *)self contentView];
  pickerView = [contentView pickerView];
  v5 = [pickerView selectedRowInComponent:0];

  homeProvider = [(HSPCSelectHomeViewController *)self homeProvider];
  items = [homeProvider items];
  v8 = [items count];

  if (v5 < v8)
  {
    config = [(HSPCSelectHomeViewController *)self config];
    isSetupInitiatedByOtherMatterEcosystem = [config isSetupInitiatedByOtherMatterEcosystem];

    homeProvider2 = [(HSPCSelectHomeViewController *)self homeProvider];
    items2 = [homeProvider2 items];
    v13 = [items2 objectAtIndexedSubscript:v5];
    if (isSetupInitiatedByOtherMatterEcosystem)
    {

      v14 = objc_opt_class();
      config2 = [(HSPCSelectHomeViewController *)self config];
      if (config2)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = config2;
        }

        else
        {
          v16 = 0;
        }

        items2 = v16;
        if (!items2)
        {
          sub_1000774F0(config2, v14);
        }
      }

      else
      {
        items2 = 0;
      }

      [items2 setSelectedPartnerHome:v13];
    }

    else
    {
      config3 = [(HSPCSelectHomeViewController *)self config];
      [config3 setHome:v13];

      v13 = homeProvider2;
    }
  }

  v18 = [NAFuture futureWithResult:&off_1000CD390];

  return v18;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v5 = [(HSPCSelectHomeViewController *)self coordinator:view];
  isUsingCHIPCommunicationProtocol = [v5 isUsingCHIPCommunicationProtocol];

  homeProvider = [(HSPCSelectHomeViewController *)self homeProvider];
  items = [homeProvider items];
  v9 = [items count];

  LODWORD(v10) = isUsingCHIPCommunicationProtocol ^ 1;
  if (v9)
  {
    v10 = v10;
  }

  else
  {
    v10 = 1;
  }

  return v9 + v10;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = [(HSPCSelectHomeViewController *)self homeProvider:view];
  items = [v7 items];
  if ([items count] <= row)
  {
    v13 = HULocalizedString();
  }

  else
  {
    homeProvider = [(HSPCSelectHomeViewController *)self homeProvider];
    homeProvider2 = [(HSPCSelectHomeViewController *)self homeProvider];
    items2 = [homeProvider2 items];
    v12 = [items2 objectAtIndexedSubscript:row];
    v13 = [homeProvider userFacingStringForItem:v12];
  }

  return v13;
}

- (id)hu_preloadContent
{
  coordinator = [(HSPCSelectHomeViewController *)self coordinator];
  config = [(HSPCSelectHomeViewController *)self config];
  v5 = [HSPCHomeProviderFactory providerForCoordinator:coordinator config:config];
  [(HSPCSelectHomeViewController *)self setHomeProvider:v5];

  homeProvider = [(HSPCSelectHomeViewController *)self homeProvider];
  loadData = [homeProvider loadData];
  v8 = +[NAScheduler mainThreadScheduler];
  v9 = [loadData reschedule:v8];

  return v9;
}

@end
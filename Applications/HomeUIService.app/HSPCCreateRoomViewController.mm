@interface HSPCCreateRoomViewController
- (HSPCCreateRoomViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
@end

@implementation HSPCCreateRoomViewController

- (HSPCCreateRoomViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  v7.receiver = self;
  v7.super_class = HSPCCreateRoomViewController;
  v4 = [(HSPCTextFieldViewController *)&v7 initWithCoordinator:coordinator config:config];
  if (v4)
  {
    v5 = HULocalizedString();
    [(HSPCCreateRoomViewController *)v4 setTitle:v5];
  }

  return v4;
}

- (id)commitConfiguration
{
  [(HSPCTextFieldViewController *)self endEditing];
  textFieldText = [(HSPCTextFieldViewController *)self textFieldText];
  config = [(HSPCTextFieldViewController *)self config];
  isSetupInitiatedByOtherMatterEcosystem = [config isSetupInitiatedByOtherMatterEcosystem];

  if (isSetupInitiatedByOtherMatterEcosystem)
  {
    v6 = [[MTSDeviceSetupRoom alloc] initWithName:textFieldText];
    v7 = objc_opt_class();
    config2 = [(HSPCTextFieldViewController *)self config];
    if (config2)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = config2;
      }

      else
      {
        v9 = 0;
      }

      config4 = v9;
      if (!config4)
      {
        sub_1000774F0(config2, v7);
      }
    }

    else
    {
      config4 = 0;
    }

    [config4 setSelectedPartnerRoom:v6];
    v13 = [NAFuture futureWithResult:&off_1000CD468];
  }

  else
  {
    config3 = [(HSPCTextFieldViewController *)self config];
    [config3 setRoomName:textFieldText];

    v6 = [NSString stringWithFormat:@"Create Room: %@", textFieldText];
    config4 = [(HSPCTextFieldViewController *)self config];
    configureRoom = [config4 configureRoom];
    v13 = [configureRoom hs_commitConfigurationFutureWithContextMessage:v6];
  }

  return v13;
}

@end
@interface HSPCCreateRoomViewController
- (HSPCCreateRoomViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
@end

@implementation HSPCCreateRoomViewController

- (HSPCCreateRoomViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7.receiver = self;
  v7.super_class = HSPCCreateRoomViewController;
  v4 = [(HSPCTextFieldViewController *)&v7 initWithCoordinator:a3 config:a4];
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
  v3 = [(HSPCTextFieldViewController *)self textFieldText];
  v4 = [(HSPCTextFieldViewController *)self config];
  v5 = [v4 isSetupInitiatedByOtherMatterEcosystem];

  if (v5)
  {
    v6 = [[MTSDeviceSetupRoom alloc] initWithName:v3];
    v7 = objc_opt_class();
    v8 = [(HSPCTextFieldViewController *)self config];
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      if (!v10)
      {
        sub_1000774F0(v8, v7);
      }
    }

    else
    {
      v10 = 0;
    }

    [v10 setSelectedPartnerRoom:v6];
    v13 = [NAFuture futureWithResult:&off_1000CD468];
  }

  else
  {
    v11 = [(HSPCTextFieldViewController *)self config];
    [v11 setRoomName:v3];

    v6 = [NSString stringWithFormat:@"Create Room: %@", v3];
    v10 = [(HSPCTextFieldViewController *)self config];
    v12 = [v10 configureRoom];
    v13 = [v12 hs_commitConfigurationFutureWithContextMessage:v6];
  }

  return v13;
}

@end
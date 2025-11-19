@interface HSPCSelectRoomViewController
- (HSPCSelectRoomViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)shouldSkip;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
@end

@implementation HSPCSelectRoomViewController

- (HSPCSelectRoomViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = HSPCSelectRoomViewController;
  v9 = [(HSPCSelectRoomViewController *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
    v11 = [v7 activeTuple];
    v12 = [v11 accessoryCategoryOrPrimaryServiceType];
    v13 = [v7 setupAccessoryDescription];
    v14 = [v13 setupAccessoryPayload];
    v15 = [v14 matterDeviceTypeID];
    v16 = HFLocalizedCategoryOrPrimaryServiceTypeString();
    [(HSPCSelectRoomViewController *)v10 setTitle:v16];

    v17 = [(HSPCSelectRoomViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

- (id)commitConfiguration
{
  v3 = [(HSPCSelectRoomViewController *)self contentView];
  v4 = [v3 pickerView];
  v5 = [v4 selectedRowInComponent:0];

  v6 = [(HSPCSelectRoomViewController *)self roomProvider];
  v7 = [v6 items];
  v8 = [v7 count];

  v9 = [(HSPCSelectRoomViewController *)self config];
  v10 = v9;
  if (v5 >= v8)
  {
    [v9 setRoomName:0];

    v16 = [NAFuture futureWithResult:&off_1000CD870];
  }

  else
  {
    v11 = [v9 isSetupInitiatedByOtherMatterEcosystem];

    if (v11)
    {
      v12 = objc_opt_class();
      v13 = [(HSPCSelectRoomViewController *)self config];
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        if (!v15)
        {
          sub_1000774F0(v13, v12);
        }
      }

      else
      {
        v15 = 0;
      }

      v23 = [(HSPCSelectRoomViewController *)self roomProvider];
      v24 = [v23 items];
      v25 = [v24 objectAtIndexedSubscript:v5];
      [v15 setSelectedPartnerRoom:v25];

      v16 = [NAFuture futureWithResult:&off_1000CD870];
    }

    else
    {
      v17 = [(HSPCSelectRoomViewController *)self roomProvider];
      v18 = [v17 items];
      v19 = [v18 objectAtIndexedSubscript:v5];
      v20 = [(HSPCSelectRoomViewController *)self config];
      [v20 setRoomName:v19];

      v21 = [(HSPCSelectRoomViewController *)self config];
      v22 = [v21 configureRoom];
      v16 = [v22 hs_commitConfigurationFutureWithContextMessage:@"Set Room"];
    }
  }

  return v16;
}

- (id)hu_preloadContent
{
  v3 = [(HSPCSelectRoomViewController *)self coordinator];
  v4 = [(HSPCSelectRoomViewController *)self config];
  v5 = [HSPCRoomProviderFactory providerForCoordinator:v3 config:v4];
  [(HSPCSelectRoomViewController *)self setRoomProvider:v5];

  v6 = [(HSPCSelectRoomViewController *)self roomProvider];
  v7 = [v6 loadData];
  v8 = +[NAScheduler mainThreadScheduler];
  v9 = [v7 reschedule:v8];

  return v9;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = [(HSPCSelectRoomViewController *)self config:a3];
  v6 = [v5 isSetupInitiatedByOtherMatterEcosystem];

  v7 = [(HSPCSelectRoomViewController *)self roomProvider];
  v8 = [v7 items];
  v9 = [v8 count];

  return v9 + (v6 ^ 1);
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = [(HSPCSelectRoomViewController *)self roomProvider:a3];
  v8 = [v7 items];
  if ([v8 count] <= a4)
  {
    v13 = HULocalizedString();
  }

  else
  {
    v9 = [(HSPCSelectRoomViewController *)self roomProvider];
    v10 = [(HSPCSelectRoomViewController *)self roomProvider];
    v11 = [v10 items];
    v12 = [v11 objectAtIndexedSubscript:a4];
    v13 = [v9 userFacingStringForItem:v12];
  }

  return v13;
}

- (id)shouldSkip
{
  v3 = [(HSPCSelectRoomViewController *)self config];
  v4 = [v3 isSetupInitiatedByOtherMatterEcosystem];

  v5 = [(HSPCSelectRoomViewController *)self roomProvider];
  v6 = [v5 items];
  v7 = [v6 count] < 2;

  v8 = [NSNumber numberWithBool:v7 & v4];
  v9 = [NAFuture futureWithResult:v8];

  return v9;
}

@end
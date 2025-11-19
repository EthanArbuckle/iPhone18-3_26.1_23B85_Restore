@interface HSPCSelectHomeViewController
- (HSPCSelectHomeViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)hu_preloadContent;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
@end

@implementation HSPCSelectHomeViewController

- (HSPCSelectHomeViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HSPCSelectHomeViewController;
  v9 = [(HSPCSelectHomeViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a4);
    objc_storeStrong(&v10->_coordinator, a3);
    v11 = HULocalizedString();
    [(HSPCSelectHomeViewController *)v10 setTitle:v11];

    v12 = [(HSPCSelectHomeViewController *)v10 addProminentButtonWithTitleKey:@"HUContinueTitle" target:v10 futureSelector:"commitConfiguration"];
  }

  return v10;
}

- (id)commitConfiguration
{
  v3 = [(HSPCSelectHomeViewController *)self contentView];
  v4 = [v3 pickerView];
  v5 = [v4 selectedRowInComponent:0];

  v6 = [(HSPCSelectHomeViewController *)self homeProvider];
  v7 = [v6 items];
  v8 = [v7 count];

  if (v5 < v8)
  {
    v9 = [(HSPCSelectHomeViewController *)self config];
    v10 = [v9 isSetupInitiatedByOtherMatterEcosystem];

    v11 = [(HSPCSelectHomeViewController *)self homeProvider];
    v12 = [v11 items];
    v13 = [v12 objectAtIndexedSubscript:v5];
    if (v10)
    {

      v14 = objc_opt_class();
      v15 = [(HSPCSelectHomeViewController *)self config];
      if (v15)
      {
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v12 = v16;
        if (!v12)
        {
          sub_1000774F0(v15, v14);
        }
      }

      else
      {
        v12 = 0;
      }

      [v12 setSelectedPartnerHome:v13];
    }

    else
    {
      v17 = [(HSPCSelectHomeViewController *)self config];
      [v17 setHome:v13];

      v13 = v11;
    }
  }

  v18 = [NAFuture futureWithResult:&off_1000CD390];

  return v18;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = [(HSPCSelectHomeViewController *)self coordinator:a3];
  v6 = [v5 isUsingCHIPCommunicationProtocol];

  v7 = [(HSPCSelectHomeViewController *)self homeProvider];
  v8 = [v7 items];
  v9 = [v8 count];

  LODWORD(v10) = v6 ^ 1;
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

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = [(HSPCSelectHomeViewController *)self homeProvider:a3];
  v8 = [v7 items];
  if ([v8 count] <= a4)
  {
    v13 = HULocalizedString();
  }

  else
  {
    v9 = [(HSPCSelectHomeViewController *)self homeProvider];
    v10 = [(HSPCSelectHomeViewController *)self homeProvider];
    v11 = [v10 items];
    v12 = [v11 objectAtIndexedSubscript:a4];
    v13 = [v9 userFacingStringForItem:v12];
  }

  return v13;
}

- (id)hu_preloadContent
{
  v3 = [(HSPCSelectHomeViewController *)self coordinator];
  v4 = [(HSPCSelectHomeViewController *)self config];
  v5 = [HSPCHomeProviderFactory providerForCoordinator:v3 config:v4];
  [(HSPCSelectHomeViewController *)self setHomeProvider:v5];

  v6 = [(HSPCSelectHomeViewController *)self homeProvider];
  v7 = [v6 loadData];
  v8 = +[NAScheduler mainThreadScheduler];
  v9 = [v7 reschedule:v8];

  return v9;
}

@end
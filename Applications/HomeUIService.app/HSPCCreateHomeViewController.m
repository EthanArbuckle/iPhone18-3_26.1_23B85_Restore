@interface HSPCCreateHomeViewController
- (HSPCCreateHomeViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)commitConfiguration;
- (id)hu_preloadContent;
@end

@implementation HSPCCreateHomeViewController

- (HSPCCreateHomeViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v8.receiver = self;
  v8.super_class = HSPCCreateHomeViewController;
  v4 = [(HSPCTextFieldViewController *)&v8 initWithCoordinator:a3 config:a4];
  if (v4)
  {
    v5 = HULocalizedString();
    [(HSPCCreateHomeViewController *)v4 setTitle:v5];

    v6 = [[HFHomeBuilder alloc] initWithExistingObject:0 inHome:0];
    [(HSPCCreateHomeViewController *)v4 setBuilder:v6];
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
    v6 = objc_opt_class();
    v7 = [(HSPCTextFieldViewController *)self config];
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      if (!v9)
      {
        sub_1000774F0(v7, v6);
      }
    }

    else
    {
      v9 = 0;
    }

    v17 = [[MTSDeviceSetupHome alloc] initWithName:v3];
    [v9 setSelectedPartnerHome:v17];

    v16 = [NAFuture futureWithResult:&off_1000CD5D0];
  }

  else
  {
    v10 = [(HSPCCreateHomeViewController *)self builder];
    [v10 setName:v3];

    objc_initWeak(&location, self);
    v11 = [(HSPCCreateHomeViewController *)self builder];
    v12 = [v11 commitItem];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000269A8;
    v19[3] = &unk_1000C5830;
    objc_copyWeak(&v20, &location);
    v13 = [v12 flatMap:v19];
    v14 = [(HSPCTextFieldViewController *)self textFieldText];
    v15 = [NSString stringWithFormat:@"Create Home %@", v14];
    v16 = [v13 hs_commitConfigurationFutureWithContextMessage:v15];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (id)hu_preloadContent
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v3 allHomesFuture];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026B2C;
  v7[3] = &unk_1000C6718;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

@end
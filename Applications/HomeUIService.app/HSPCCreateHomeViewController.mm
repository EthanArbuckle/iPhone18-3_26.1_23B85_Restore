@interface HSPCCreateHomeViewController
- (HSPCCreateHomeViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)commitConfiguration;
- (id)hu_preloadContent;
@end

@implementation HSPCCreateHomeViewController

- (HSPCCreateHomeViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  v8.receiver = self;
  v8.super_class = HSPCCreateHomeViewController;
  v4 = [(HSPCTextFieldViewController *)&v8 initWithCoordinator:coordinator config:config];
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
  textFieldText = [(HSPCTextFieldViewController *)self textFieldText];
  config = [(HSPCTextFieldViewController *)self config];
  isSetupInitiatedByOtherMatterEcosystem = [config isSetupInitiatedByOtherMatterEcosystem];

  if (isSetupInitiatedByOtherMatterEcosystem)
  {
    v6 = objc_opt_class();
    config2 = [(HSPCTextFieldViewController *)self config];
    if (config2)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = config2;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      if (!v9)
      {
        sub_1000774F0(config2, v6);
      }
    }

    else
    {
      v9 = 0;
    }

    v17 = [[MTSDeviceSetupHome alloc] initWithName:textFieldText];
    [v9 setSelectedPartnerHome:v17];

    v16 = [NAFuture futureWithResult:&off_1000CD5D0];
  }

  else
  {
    builder = [(HSPCCreateHomeViewController *)self builder];
    [builder setName:textFieldText];

    objc_initWeak(&location, self);
    builder2 = [(HSPCCreateHomeViewController *)self builder];
    commitItem = [builder2 commitItem];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000269A8;
    v19[3] = &unk_1000C5830;
    objc_copyWeak(&v20, &location);
    v13 = [commitItem flatMap:v19];
    textFieldText2 = [(HSPCTextFieldViewController *)self textFieldText];
    v15 = [NSString stringWithFormat:@"Create Home %@", textFieldText2];
    v16 = [v13 hs_commitConfigurationFutureWithContextMessage:v15];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (id)hu_preloadContent
{
  v3 = +[HFHomeKitDispatcher sharedDispatcher];
  allHomesFuture = [v3 allHomesFuture];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026B2C;
  v7[3] = &unk_1000C6718;
  v7[4] = self;
  v5 = [allHomesFuture flatMap:v7];

  return v5;
}

@end
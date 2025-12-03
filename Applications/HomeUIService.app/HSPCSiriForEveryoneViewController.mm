@interface HSPCSiriForEveryoneViewController
- (HSPCSiriForEveryoneViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_enableMultiUser;
@end

@implementation HSPCSiriForEveryoneViewController

- (HSPCSiriForEveryoneViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v8 = [UIImageView alloc];
  v9 = HUImageNamed();
  v10 = [v8 initWithImage:v9];

  [v10 setContentMode:2];
  v21.receiver = self;
  v21.super_class = HSPCSiriForEveryoneViewController;
  v11 = [(HSPCFixedSizeCenterContentViewController *)&v21 initWithCenterContentView:v10];
  v12 = v11;
  if (v11)
  {
    [(HSPCSiriForEveryoneViewController *)v11 setConfig:configCopy];
    [(HSPCSiriForEveryoneViewController *)v12 setCoordinator:coordinatorCopy];
    config = [(HSPCSiriForEveryoneViewController *)v12 config];
    home = [config home];
    users = [home users];
    [users count];

    v16 = HULocalizedString();
    [(HSPCSiriForEveryoneViewController *)v12 setTitle:v16];

    v17 = HULocalizedString();
    v18 = [(HSPCSiriForEveryoneViewController *)v12 addProminentButtonWithLocalizedTitle:v17 target:v12 futureSelector:"_enableMultiUser"];

    v19 = HULocalizedString();
    [(HSPCSiriForEveryoneViewController *)v12 setSubtitle:v19];
  }

  return v12;
}

- (id)_enableMultiUser
{
  config = [(HSPCSiriForEveryoneViewController *)self config];
  home = [config home];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100026458;
  v14 = &unk_1000C6030;
  v15 = home;
  v5 = home;
  v6 = [NAFuture futureWithBlock:&v11];
  v16[0] = v6;
  v7 = [(HSPCSiriForEveryoneViewController *)self commitConfiguration:v11];
  v16[1] = v7;
  v8 = [NSArray arrayWithObjects:v16 count:2];
  v9 = [NAFuture chainFutures:v8];

  return v9;
}

@end
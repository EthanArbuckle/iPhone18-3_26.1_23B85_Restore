@interface HSPCNameInputSourcesViewController
+ (id)applicableServicesForAccessory:(id)a3;
+ (id)inputSourceServicesForAccessory:(id)a3;
- (BOOL)areAllServicesFrozen;
- (BOOL)shouldServiceBeFrozen:(id)a3;
- (BOOL)shouldServiceStartEnabled:(id)a3;
- (HSPCNameInputSourcesViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)cellReuseIdentifierForService:(id)a3;
- (id)characteristicTypesToPreload;
- (id)serviceComparator;
- (id)servicesToPreload;
- (id)shouldSkip;
- (void)viewDidLoad;
@end

@implementation HSPCNameInputSourcesViewController

- (id)servicesToPreload
{
  v2 = [(HSPCNameServicesViewController *)self config];
  v3 = [v2 addedAccessory];

  v4 = [objc_opt_class() inputSourceServicesForAccessory:v3];

  return v4;
}

- (id)characteristicTypesToPreload
{
  v8.receiver = self;
  v8.super_class = HSPCNameInputSourcesViewController;
  v2 = [(HSPCNameServicesViewController *)&v8 characteristicTypesToPreload];
  v3 = [v2 mutableCopy];

  v9[0] = HMCharacteristicTypeIsConfigured;
  v9[1] = HMCharacteristicTypeCurrentVisibilityState;
  v9[2] = HMCharacteristicTypeTargetVisibilityState;
  v4 = [NSArray arrayWithObjects:v9 count:3];
  v5 = [NSSet setWithArray:v4];
  [v3 unionSet:v5];

  v6 = [v3 copy];

  return v6;
}

- (id)shouldSkip
{
  v3 = objc_opt_class();
  v4 = [(HSPCNameServicesViewController *)self config];
  v5 = [v4 addedAccessory];
  v6 = [v3 applicableServicesForAccessory:v5];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 count] == 0);
  v8 = [NAFuture futureWithResult:v7];

  return v8;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HSPCNameInputSourcesViewController;
  [(HSPCNameServicesViewController *)&v8 viewDidLoad];
  v3 = [(HSPCNameInputSourcesViewController *)self areAllServicesFrozen];
  v4 = off_1000C4940;
  if (!v3)
  {
    v4 = off_1000C4950;
  }

  [(__objc2_class *)*v4 leadingSeparatorMargin];
  v6 = v5;
  v7 = [(HSPCNameServicesViewController *)self tableView];
  [v7 setSeparatorInset:{0.0, v6, 0.0, 0.0}];
}

+ (id)inputSourceServicesForAccessory:(id)a3
{
  v3 = a3;
  v4 = [v3 hf_primaryService];
  v5 = [v3 hf_visibleServices];

  v6 = [v4 hf_childServices];
  v7 = [v5 setByAddingObjectsFromSet:v6];

  v8 = [v7 na_filter:&stru_1000C6AD0];

  return v8;
}

+ (id)applicableServicesForAccessory:(id)a3
{
  v3 = [a1 inputSourceServicesForAccessory:a3];
  v4 = [v3 na_filter:&stru_1000C6AF0];

  return v4;
}

- (id)serviceComparator
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D81C;
  v4[3] = &unk_1000C6B40;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (HSPCNameInputSourcesViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7.receiver = self;
  v7.super_class = HSPCNameInputSourcesViewController;
  v4 = [(HSPCNameServicesViewController *)&v7 initWithCoordinator:a3 config:a4];
  if (v4)
  {
    v5 = HULocalizedString();
    [(HSPCNameInputSourcesViewController *)v4 setTitle:v5];

    [(HSPCNameInputSourcesViewController *)v4 setSubtitle:0];
  }

  return v4;
}

- (BOOL)shouldServiceStartEnabled:(id)a3
{
  v3 = [a3 hf_characteristicOfType:HMCharacteristicTypeCurrentVisibilityState];
  objc_opt_class();
  v4 = [v3 value];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 integerValue] != 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)shouldServiceBeFrozen:(id)a3
{
  v3 = [a3 hf_characteristicOfType:HMCharacteristicTypeTargetVisibilityState];
  v4 = [v3 hf_isWritable];

  return v4 ^ 1;
}

- (id)cellReuseIdentifierForService:(id)a3
{
  v4 = [(HSPCNameServicesViewController *)self frozenServices];
  v5 = [v4 count];
  v6 = [(HSPCNameServicesViewController *)self services];
  v7 = [v6 count];

  v8 = off_1000C4940;
  if (v5 != v7)
  {
    v8 = off_1000C4950;
  }

  v9 = [(__objc2_class *)*v8 _reuseIdentifier];

  return v9;
}

- (BOOL)areAllServicesFrozen
{
  v3 = [(HSPCNameServicesViewController *)self frozenServices];
  v4 = [v3 count];
  v5 = [(HSPCNameServicesViewController *)self services];
  LOBYTE(v4) = v4 == [v5 count];

  return v4;
}

@end
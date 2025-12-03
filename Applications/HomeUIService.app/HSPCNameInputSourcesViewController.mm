@interface HSPCNameInputSourcesViewController
+ (id)applicableServicesForAccessory:(id)accessory;
+ (id)inputSourceServicesForAccessory:(id)accessory;
- (BOOL)areAllServicesFrozen;
- (BOOL)shouldServiceBeFrozen:(id)frozen;
- (BOOL)shouldServiceStartEnabled:(id)enabled;
- (HSPCNameInputSourcesViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)cellReuseIdentifierForService:(id)service;
- (id)characteristicTypesToPreload;
- (id)serviceComparator;
- (id)servicesToPreload;
- (id)shouldSkip;
- (void)viewDidLoad;
@end

@implementation HSPCNameInputSourcesViewController

- (id)servicesToPreload
{
  config = [(HSPCNameServicesViewController *)self config];
  addedAccessory = [config addedAccessory];

  v4 = [objc_opt_class() inputSourceServicesForAccessory:addedAccessory];

  return v4;
}

- (id)characteristicTypesToPreload
{
  v8.receiver = self;
  v8.super_class = HSPCNameInputSourcesViewController;
  characteristicTypesToPreload = [(HSPCNameServicesViewController *)&v8 characteristicTypesToPreload];
  v3 = [characteristicTypesToPreload mutableCopy];

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
  config = [(HSPCNameServicesViewController *)self config];
  addedAccessory = [config addedAccessory];
  v6 = [v3 applicableServicesForAccessory:addedAccessory];
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 count] == 0);
  v8 = [NAFuture futureWithResult:v7];

  return v8;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HSPCNameInputSourcesViewController;
  [(HSPCNameServicesViewController *)&v8 viewDidLoad];
  areAllServicesFrozen = [(HSPCNameInputSourcesViewController *)self areAllServicesFrozen];
  v4 = off_1000C4940;
  if (!areAllServicesFrozen)
  {
    v4 = off_1000C4950;
  }

  [(__objc2_class *)*v4 leadingSeparatorMargin];
  v6 = v5;
  tableView = [(HSPCNameServicesViewController *)self tableView];
  [tableView setSeparatorInset:{0.0, v6, 0.0, 0.0}];
}

+ (id)inputSourceServicesForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  hf_primaryService = [accessoryCopy hf_primaryService];
  hf_visibleServices = [accessoryCopy hf_visibleServices];

  hf_childServices = [hf_primaryService hf_childServices];
  v7 = [hf_visibleServices setByAddingObjectsFromSet:hf_childServices];

  v8 = [v7 na_filter:&stru_1000C6AD0];

  return v8;
}

+ (id)applicableServicesForAccessory:(id)accessory
{
  v3 = [self inputSourceServicesForAccessory:accessory];
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

- (HSPCNameInputSourcesViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  v7.receiver = self;
  v7.super_class = HSPCNameInputSourcesViewController;
  v4 = [(HSPCNameServicesViewController *)&v7 initWithCoordinator:coordinator config:config];
  if (v4)
  {
    v5 = HULocalizedString();
    [(HSPCNameInputSourcesViewController *)v4 setTitle:v5];

    [(HSPCNameInputSourcesViewController *)v4 setSubtitle:0];
  }

  return v4;
}

- (BOOL)shouldServiceStartEnabled:(id)enabled
{
  v3 = [enabled hf_characteristicOfType:HMCharacteristicTypeCurrentVisibilityState];
  objc_opt_class();
  value = [v3 value];
  if (objc_opt_isKindOfClass())
  {
    v5 = value;
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

- (BOOL)shouldServiceBeFrozen:(id)frozen
{
  v3 = [frozen hf_characteristicOfType:HMCharacteristicTypeTargetVisibilityState];
  hf_isWritable = [v3 hf_isWritable];

  return hf_isWritable ^ 1;
}

- (id)cellReuseIdentifierForService:(id)service
{
  frozenServices = [(HSPCNameServicesViewController *)self frozenServices];
  v5 = [frozenServices count];
  services = [(HSPCNameServicesViewController *)self services];
  v7 = [services count];

  v8 = off_1000C4940;
  if (v5 != v7)
  {
    v8 = off_1000C4950;
  }

  _reuseIdentifier = [(__objc2_class *)*v8 _reuseIdentifier];

  return _reuseIdentifier;
}

- (BOOL)areAllServicesFrozen
{
  frozenServices = [(HSPCNameServicesViewController *)self frozenServices];
  v4 = [frozenServices count];
  services = [(HSPCNameServicesViewController *)self services];
  LOBYTE(v4) = v4 == [services count];

  return v4;
}

@end
@interface AppleEthernetSettingsController
- (AppleEthernetSettingsController)initWithDefaultConfigForInterface:(id)interface;
- (void)detailsContextChanged;
- (void)networkSettingsViewController:(id)controller saveConfig:(id)config errorHandler:(id)handler;
- (void)refresh;
- (void)viewDidLoad;
@end

@implementation AppleEthernetSettingsController

- (AppleEthernetSettingsController)initWithDefaultConfigForInterface:(id)interface
{
  interfaceCopy = interface;
  v18.receiver = self;
  v18.super_class = AppleEthernetSettingsController;
  v6 = [(AppleEthernetSettingsController *)&v18 init];
  if (v6)
  {
    v7 = [[AppleEthernetConfigurator alloc] initWithInterface:interfaceCopy];
    configurator = v6->_configurator;
    v6->_configurator = v7;

    [(AppleEthernetConfigurator *)v6->_configurator setSettingsDelegate:v6];
    objc_storeStrong(&v6->_interface, interface);
    v9 = objc_alloc_init(AppleEthernetSettingsConfig);
    displayName = [interfaceCopy displayName];
    [(AppleEthernetSettingsConfig *)v9 setSsid:displayName];

    v11 = objc_alloc_init(AppleEthernetDetailsContext);
    detailsContext = v6->_detailsContext;
    v6->_detailsContext = v11;

    [(AppleEthernetDetailsContext *)v6->_detailsContext setDelegate:v6];
    v13 = [[WFNetworkSettingsViewController alloc] initWithConfig:v9 detailsContext:v6->_detailsContext hardwareMACAddress:0];
    settingsViewController = v6->_settingsViewController;
    v6->_settingsViewController = v13;

    [(WFNetworkSettingsViewController *)v6->_settingsViewController setDataCoordinator:v6];
    v15 = dispatch_queue_create("com.apple.AppleEthernetSettingsController", 0);
    queue = v6->_queue;
    v6->_queue = v15;
  }

  return v6;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = AppleEthernetSettingsController;
  [(AppleEthernetSettingsController *)&v16 viewDidLoad];
  [(AppleEthernetSettingsController *)self addChildViewController:self->_settingsViewController];
  view = [(AppleEthernetSettingsController *)self view];
  view2 = [(WFNetworkSettingsViewController *)self->_settingsViewController view];
  [view addSubview:view2];

  view3 = [(AppleEthernetSettingsController *)self view];
  [view3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view4 = [(WFNetworkSettingsViewController *)self->_settingsViewController view];
  [view4 setFrame:{v7, v9, v11, v13}];

  displayName = [(AppleEthernetInterface *)self->_interface displayName];
  [(AppleEthernetSettingsController *)self setTitle:displayName];

  [(AppleEthernetSettingsController *)self refresh];
}

- (void)refresh
{
  objc_initWeak(&location, self);
  v3 = self->_configurator;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4980;
  block[3] = &unk_106C0;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (void)networkSettingsViewController:(id)controller saveConfig:(id)config errorHandler:(id)handler
{
  configCopy = config;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Save pressed in settings view.", v7, 2u);
  }

  [(AppleEthernetConfigurator *)self->_configurator saveConfig:configCopy];
}

- (void)detailsContextChanged
{
  configurator = self->_configurator;
  config = [(WFNetworkSettingsViewController *)self->_settingsViewController config];
  [(AppleEthernetConfigurator *)configurator saveConfig:config];
}

@end
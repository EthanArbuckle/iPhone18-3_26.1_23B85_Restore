@interface AppleEthernetSettingsController
- (AppleEthernetSettingsController)initWithDefaultConfigForInterface:(id)a3;
- (void)detailsContextChanged;
- (void)networkSettingsViewController:(id)a3 saveConfig:(id)a4 errorHandler:(id)a5;
- (void)refresh;
- (void)viewDidLoad;
@end

@implementation AppleEthernetSettingsController

- (AppleEthernetSettingsController)initWithDefaultConfigForInterface:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = AppleEthernetSettingsController;
  v6 = [(AppleEthernetSettingsController *)&v18 init];
  if (v6)
  {
    v7 = [[AppleEthernetConfigurator alloc] initWithInterface:v5];
    configurator = v6->_configurator;
    v6->_configurator = v7;

    [(AppleEthernetConfigurator *)v6->_configurator setSettingsDelegate:v6];
    objc_storeStrong(&v6->_interface, a3);
    v9 = objc_alloc_init(AppleEthernetSettingsConfig);
    v10 = [v5 displayName];
    [(AppleEthernetSettingsConfig *)v9 setSsid:v10];

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
  v3 = [(AppleEthernetSettingsController *)self view];
  v4 = [(WFNetworkSettingsViewController *)self->_settingsViewController view];
  [v3 addSubview:v4];

  v5 = [(AppleEthernetSettingsController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(WFNetworkSettingsViewController *)self->_settingsViewController view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(AppleEthernetInterface *)self->_interface displayName];
  [(AppleEthernetSettingsController *)self setTitle:v15];

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

- (void)networkSettingsViewController:(id)a3 saveConfig:(id)a4 errorHandler:(id)a5
{
  v6 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Save pressed in settings view.", v7, 2u);
  }

  [(AppleEthernetConfigurator *)self->_configurator saveConfig:v6];
}

- (void)detailsContextChanged
{
  configurator = self->_configurator;
  v3 = [(WFNetworkSettingsViewController *)self->_settingsViewController config];
  [(AppleEthernetConfigurator *)configurator saveConfig:v3];
}

@end
@interface AppleEthernetController
- (AppleEthernetController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)processInterfaces:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)refresh;
- (void)renameInterfaces:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AppleEthernetController

- (AppleEthernetController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = AppleEthernetController;
  v4 = [(AppleEthernetController *)&v12 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ETHERNET" value:&stru_10828 table:@"Ethernet"];
    [(AppleEthernetController *)v4 setTitle:v6];
    v7 = [(AppleEthernetController *)v4 navigationItem];
    [v7 setLargeTitleDisplayMode:2];

    v8 = +[PSSystemConfigurationDynamicStoreEthernetWatcher sharedManager];
    interfaceWatcher = v4->_interfaceWatcher;
    v4->_interfaceWatcher = v8;

    settingsController = v4->_settingsController;
    v4->_settingsController = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = AppleEthernetController;
  [(AppleEthernetController *)&v12 viewDidLoad];
  v3 = [(PSSystemConfigurationDynamicStoreEthernetWatcher *)self->_interfaceWatcher ethernetNetworkInterfaces];
  v4 = [(AppleEthernetController *)self processInterfaces:v3];
  interfaces = self->_interfaces;
  self->_interfaces = v4;

  v6 = [UITableView alloc];
  v7 = [(AppleEthernetController *)self view];
  [v7 frame];
  v8 = [v6 initWithFrame:2 style:?];
  interfacesView = self->_interfacesView;
  self->_interfacesView = v8;

  [(UITableView *)self->_interfacesView registerClass:objc_opt_class() forCellReuseIdentifier:@"InterfaceCell"];
  [(UITableView *)self->_interfacesView setDelegate:self];
  [(UITableView *)self->_interfacesView setDataSource:self];
  [(UITableView *)self->_interfacesView setAutoresizingMask:18];
  [(UITableView *)self->_interfacesView setCellLayoutMarginsFollowReadableWidth:1];
  v10 = [(AppleEthernetController *)self view];
  [v10 addSubview:self->_interfacesView];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"refresh" name:PSEthernetChangedNotification object:0];
}

- (void)refresh
{
  v3 = [(PSSystemConfigurationDynamicStoreEthernetWatcher *)self->_interfaceWatcher ethernetNetworkInterfaces];
  v4 = [(AppleEthernetController *)self processInterfaces:v3];
  interfaces = self->_interfaces;
  self->_interfaces = v4;

  interfacesView = self->_interfacesView;

  [(UITableView *)interfacesView reloadData];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  interfaces = self->_interfaces;
  v6 = a4;
  v9 = -[NSArray objectAtIndex:](interfaces, "objectAtIndex:", [v6 row]);
  v7 = [[AppleEthernetSettingsController alloc] initWithDefaultConfigForInterface:v9];
  settingsController = self->_settingsController;
  self->_settingsController = v7;

  [(AppleEthernetController *)self showController:self->_settingsController animate:1];
  [(UITableView *)self->_interfacesView deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  interfacesView = self->_interfacesView;
  v6 = a4;
  v7 = [(UITableView *)interfacesView dequeueReusableCellWithIdentifier:@"InterfaceCell"];
  interfaces = self->_interfaces;
  v9 = [v6 row];

  v10 = [(NSArray *)interfaces objectAtIndex:v9];
  [v7 initializeWithInterface:v10];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_interfaces count];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"INTERFACES" value:&stru_10828 table:@"Ethernet"];
  }

  return v4;
}

- (id)processInterfaces:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_alloc_init(AppleEthernetInterface);
        v13 = v11;
        LocalizedDisplayName = SCNetworkInterfaceGetLocalizedDisplayName(v13);
        [(AppleEthernetInterface *)v12 setDisplayName:LocalizedDisplayName, v16];
        [(AppleEthernetInterface *)v12 setBSDName:SCNetworkInterfaceGetBSDName(v13)];
        CFRelease(v13);
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(AppleEthernetController *)self sortInterfaces:v5];
  [(AppleEthernetController *)self renameInterfaces:v5];

  return v5;
}

- (void)renameInterfaces:(id)a3
{
  v3 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    LODWORD(v7) = 0;
    v8 = 0;
    v9 = *v20;
    do
    {
      v10 = 0;
      v18 = v8;
      v11 = -v8;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        if (!v6 || (([*(*(&v19 + 1) + 8 * v10) displayName], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v6), v13, v14) ? (v15 = v11 == v10) : (v15 = 1), v15))
        {
          [v12 displayName];
          v16 = v6;
          v6 = LODWORD(v7) = 1;
        }

        else
        {
          v16 = [v12 displayName];
          v7 = (v7 + 1);
          v17 = [NSString stringWithFormat:@"%@ %u", v16, v7];
          [v12 setDisplayName:v17];
        }

        ++v10;
      }

      while (v5 != v10);
      v8 = &v5[v18];
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }
}

@end
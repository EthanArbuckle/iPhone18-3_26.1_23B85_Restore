@interface ASAccessoryResetWiFiViewController
- (ASAccessoryResetWiFiViewController)initWithDevices:(id)devices;
- (id)imageWithTypeIdentifier:(id)identifier;
- (id)settingsIconImageDescriptor;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)didTapConfirm:(id)confirm;
- (void)handleDAEvent:(id)event;
- (void)viewDidLoad;
@end

@implementation ASAccessoryResetWiFiViewController

- (ASAccessoryResetWiFiViewController)initWithDevices:(id)devices
{
  v4 = +[ASAccessoryInfoViewFactory resetWiFiControllerTitle];
  v5 = +[ASAccessoryInfoViewFactory resetWiFiControllerDetailText];
  v18.receiver = self;
  v18.super_class = ASAccessoryResetWiFiViewController;
  v6 = [(OBTableWelcomeController *)&v18 initWithTitle:v4 detailText:v5 icon:0 adoptTableViewScrollView:1];

  if (v6)
  {
    wifiAwareDevices = v6->_wifiAwareDevices;
    v6->_wifiAwareDevices = MEMORY[0x277CBEBF8];

    v8 = objc_alloc_init(MEMORY[0x277D04780]);
    session = v6->_session;
    v6->_session = v8;

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__ASAccessoryResetWiFiViewController_initWithDevices___block_invoke;
    v16[3] = &unk_278A01E50;
    v10 = v6;
    v17 = v10;
    [(DASession *)v6->_session setEventHandler:v16];
    [(DASession *)v6->_session activate];
    v11 = [(ASAccessoryResetWiFiViewController *)v10 imageWithTypeIdentifier:@"com.apple.graphic-icon.wifi"];
    wifiIcon = v10->_wifiIcon;
    v10->_wifiIcon = v11;

    v13 = [(ASAccessoryResetWiFiViewController *)v10 imageWithTypeIdentifier:@"com.apple.graphic-icon.accessories"];
    multiTechIcon = v10->_multiTechIcon;
    v10->_multiTechIcon = v13;
  }

  return v6;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = ASAccessoryResetWiFiViewController;
  [(OBTableWelcomeController *)&v21 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  view = [(ASAccessoryResetWiFiViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:2 style:?];
  [(OBTableWelcomeController *)self setTableView:v5];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setBackgroundColor:clearColor];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setAllowsSelection:0];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setDataSource:self];

  boldButton = [MEMORY[0x277D37618] boldButton];
  confirmButton = self->_confirmButton;
  self->_confirmButton = boldButton;

  v13 = self->_confirmButton;
  v14 = +[ASAccessoryInfoViewFactory resetWiFiControllerButtonTitle];
  [(OBBoldTrayButton *)v13 setTitle:v14 forState:0];

  [(OBBoldTrayButton *)self->_confirmButton addTarget:self action:sel_didTapConfirm_ forControlEvents:64];
  configuration = [(OBBoldTrayButton *)self->_confirmButton configuration];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [configuration setBaseBackgroundColor:systemRedColor];

  [(OBBoldTrayButton *)self->_confirmButton setConfiguration:configuration];
  buttonTray = [(ASAccessoryResetWiFiViewController *)self buttonTray];
  [buttonTray addButton:self->_confirmButton];

  v18 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel_];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v18];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 reloadData];
}

- (void)handleDAEvent:(id)event
{
  eventType = [event eventType];
  if (eventType <= 0x2A && ((1 << eventType) & 0x70000000400) != 0)
  {
    session = self->_session;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__ASAccessoryResetWiFiViewController_handleDAEvent___block_invoke;
    v6[3] = &unk_278A01EE0;
    v6[4] = self;
    [(DASession *)session getDevicesWithFlags:1032 completionHandler:v6];
  }
}

void __52__ASAccessoryResetWiFiViewController_handleDAEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5 && !a3)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 wifiAwareOTAName];

          if (v13)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__ASAccessoryResetWiFiViewController_handleDAEvent___block_invoke_2;
    v16[3] = &unk_278A01B90;
    v16[4] = *(a1 + 32);
    v17 = v6;
    v14 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __52__ASAccessoryResetWiFiViewController_handleDAEvent___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) sortedArrayUsingComparator:&__block_literal_global_0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1280);
  *(v3 + 1280) = v2;

  v5 = [*(a1 + 32) tableView];
  [v5 reloadData];
}

BOOL __52__ASAccessoryResetWiFiViewController_handleDAEvent___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  return v5 < v6;
}

- (void)didTapConfirm:(id)confirm
{
  confirmCopy = confirm;
  if (gLogCategory_ASAccessoryResetWiFiViewController <= 30 && (gLogCategory_ASAccessoryResetWiFiViewController != -1 || _LogCategory_Initialize()))
  {
    [ASAccessoryResetWiFiViewController didTapConfirm:];
  }

  [(DASession *)self->_session resetWiFiIdentifier:&__block_literal_global_23];
  [(ASAccessoryResetWiFiViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v41 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"accessory_cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"accessory_cell"];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_wifiAwareDevices, "objectAtIndexedSubscript:", [pathCopy row]);
  defaultContentConfiguration = [v7 defaultContentConfiguration];
  name = [v8 name];
  v34 = v7;
  v35 = pathCopy;
  if (name && (v11 = name, [v8 name], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", &stru_28499D698), v12, v11, (v13 & 1) == 0))
  {
    name2 = [v8 name];
  }

  else
  {
    name2 = [v8 bluetoothOTAName];
    if (!name2)
    {
      wifiAwareOTAName = [v8 wifiAwareOTAName];
      [defaultContentConfiguration setText:wifiAwareOTAName];

      goto LABEL_9;
    }
  }

  [defaultContentConfiguration setText:name2];
LABEL_9:

  appAccessInfoMap = [v8 appAccessInfoMap];
  allKeys = [appAccessInfoMap allKeys];

  array = [MEMORY[0x277CBEB18] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = allKeys;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:*(*(&v36 + 1) + 8 * i) allowPlaceholder:1 error:0];
        localizedName = [v24 localizedName];
        [array addObject:localizedName];
      }

      v21 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v21);
  }

  v26 = [array sortedArrayUsingComparator:&__block_literal_global_34];
  firstObject = [v26 firstObject];

  if (([v8 flags] & 0x400) != 0)
  {
    [ASAccessoryInfoViewFactory resetWiFiControllerCellSubtitlePairedDevice:firstObject];
  }

  else
  {
    [ASAccessoryInfoViewFactory resetWiFiControllerCellSubtitleAccessory:firstObject];
  }
  v28 = ;
  [defaultContentConfiguration setSecondaryText:v28];

  bluetoothIdentifier = [v8 bluetoothIdentifier];

  v30 = &OBJC_IVAR___ASAccessoryResetWiFiViewController__multiTechIcon;
  if (!bluetoothIdentifier)
  {
    v30 = &OBJC_IVAR___ASAccessoryResetWiFiViewController__wifiIcon;
  }

  [defaultContentConfiguration setImage:*(&self->super.super.super.super.super.super.isa + *v30)];
  [v34 setContentConfiguration:defaultContentConfiguration];
  secondarySystemFillColor = [MEMORY[0x277D75348] secondarySystemFillColor];
  [v34 setBackgroundColor:secondarySystemFillColor];

  v32 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)imageWithTypeIdentifier:(id)identifier
{
  v4 = MEMORY[0x277D1B1A8];
  identifierCopy = identifier;
  v6 = [[v4 alloc] initWithType:identifierCopy];

  settingsIconImageDescriptor = [(ASAccessoryResetWiFiViewController *)self settingsIconImageDescriptor];
  v8 = [v6 prepareImageForDescriptor:settingsIconImageDescriptor];

  v9 = MEMORY[0x277D755B8];
  cGImage = [v8 CGImage];
  [v8 scale];
  v11 = [v9 imageWithCGImage:cGImage scale:0 orientation:?];

  return v11;
}

- (id)settingsIconImageDescriptor
{
  v2 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
  [v2 setDrawBorder:1];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  [v2 setAppearance:{objc_msgSend(currentTraitCollection, "userInterfaceStyle") != 1}];

  currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([currentTraitCollection2 layoutDirection])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v2 setLanguageDirection:v5];

  currentTraitCollection3 = [MEMORY[0x277D75C80] currentTraitCollection];
  [v2 setContrast:{objc_msgSend(currentTraitCollection3, "accessibilityContrast") == 1}];

  return v2;
}

@end
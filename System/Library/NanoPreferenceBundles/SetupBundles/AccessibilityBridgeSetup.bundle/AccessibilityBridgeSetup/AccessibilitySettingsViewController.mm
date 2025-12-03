@interface AccessibilitySettingsViewController
- (AccessibilitySettingsViewController)initWithAccessibilityOptions:(id)options device:(id)device;
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)alternateButtonPressed:(id)pressed;
- (void)suggestedButtonPressed:(id)pressed;
- (void)switchToggled:(id)toggled;
- (void)viewDidLoad;
@end

@implementation AccessibilitySettingsViewController

- (AccessibilitySettingsViewController)initWithAccessibilityOptions:(id)options device:(id)device
{
  optionsCopy = options;
  deviceCopy = device;
  v27.receiver = self;
  v27.super_class = AccessibilitySettingsViewController;
  v9 = [(AccessibilitySettingsViewController *)&v27 initWithTitle:&stru_82A0 detailText:0 icon:0 contentLayout:3];
  v10 = v9;
  if (v9)
  {
    [(AccessibilitySettingsViewController *)v9 setStyle:10];
    objc_storeStrong(&v10->_accessibilityOptions, options);
    objc_storeStrong(&v10->_device, device);
    v11 = +[NSMutableDictionary dictionary];
    customizedAccessibilityOptions = v10->_customizedAccessibilityOptions;
    v10->_customizedAccessibilityOptions = v11;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = optionsCopy;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(NSMutableDictionary *)v10->_customizedAccessibilityOptions setObject:&__kCFBooleanTrue forKeyedSubscript:*(*(&v23 + 1) + 8 * v17), v23];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    v18 = [(NSMutableDictionary *)v10->_customizedAccessibilityOptions objectForKeyedSubscript:&off_8618];
    bOOLValue = [v18 BOOLValue];

    v20 = [(NSMutableDictionary *)v10->_customizedAccessibilityOptions objectForKeyedSubscript:&off_8630];
    bOOLValue2 = [v20 BOOLValue];

    if (bOOLValue && bOOLValue2)
    {
      [(NSMutableDictionary *)v10->_customizedAccessibilityOptions setObject:&__kCFBooleanFalse forKeyedSubscript:&off_8630];
    }
  }

  return v10;
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = AccessibilitySettingsViewController;
  [(AccessibilitySettingsViewController *)&v46 viewDidLoad];
  v45 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"Accessibility" inBundle:?];
  if (v3)
  {
    headerView = [(AccessibilitySettingsViewController *)self headerView];
    [headerView setIcon:v3 accessibilityLabel:0];
  }

  alternateChoiceButton = [(AccessibilitySettingsViewController *)self alternateChoiceButton];
  [alternateChoiceButton titleLabel];
  v6 = v44 = v3;
  [v6 setNumberOfLines:0];

  alternateChoiceButton2 = [(AccessibilitySettingsViewController *)self alternateChoiceButton];
  titleLabel = [alternateChoiceButton2 titleLabel];
  [titleLabel setLineBreakMode:0];

  v9 = [AXContentSizedTableView alloc];
  contentView = [(AccessibilitySettingsViewController *)self contentView];
  [contentView bounds];
  v11 = [(AXContentSizedTableView *)v9 initWithFrame:2 style:?];
  [(AccessibilitySettingsViewController *)self setTableView:v11];

  tableView = [(AccessibilitySettingsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"AXSettingCellReuseIdentifier"];

  tableView2 = [(AccessibilitySettingsViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(AccessibilitySettingsViewController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(AccessibilitySettingsViewController *)self tableView];
  [tableView4 setDataSource:self];

  v16 = BPSSeparatorColor();
  tableView5 = [(AccessibilitySettingsViewController *)self tableView];
  [tableView5 setSeparatorColor:v16];

  tableView6 = [(AccessibilitySettingsViewController *)self tableView];
  [tableView6 setScrollEnabled:0];

  contentView2 = [(AccessibilitySettingsViewController *)self contentView];
  tableView7 = [(AccessibilitySettingsViewController *)self tableView];
  [contentView2 addSubview:tableView7];

  tableView8 = [(AccessibilitySettingsViewController *)self tableView];
  [tableView8 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView3 = [(AccessibilitySettingsViewController *)self contentView];
  topAnchor = [contentView3 topAnchor];
  tableView9 = [(AccessibilitySettingsViewController *)self tableView];
  topAnchor2 = [tableView9 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[0] = v39;
  contentView4 = [(AccessibilitySettingsViewController *)self contentView];
  leadingAnchor = [contentView4 leadingAnchor];
  tableView10 = [(AccessibilitySettingsViewController *)self tableView];
  leadingAnchor2 = [tableView10 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[1] = v34;
  contentView5 = [(AccessibilitySettingsViewController *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  tableView11 = [(AccessibilitySettingsViewController *)self tableView];
  trailingAnchor2 = [tableView11 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[2] = v24;
  contentView6 = [(AccessibilitySettingsViewController *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  tableView12 = [(AccessibilitySettingsViewController *)self tableView];
  bottomAnchor2 = [tableView12 bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[3] = v29;
  v30 = [NSArray arrayWithObjects:v47 count:4];
  [NSLayoutConstraint activateConstraints:v30];

  tableView13 = [(AccessibilitySettingsViewController *)self tableView];
  [tableView13 reloadData];
}

- (void)suggestedButtonPressed:(id)pressed
{
  customizedAccessibilityOptions = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  device = [(AccessibilitySettingsViewController *)self device];
  accessibilitySetAccessibilityOptionsOnDevice(customizedAccessibilityOptions, device);

  miniFlowDelegate = [(AccessibilitySettingsViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (void)alternateButtonPressed:(id)pressed
{
  v4 = +[NSMutableDictionary dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessibilityOptions = [(AccessibilitySettingsViewController *)self accessibilityOptions];
  v6 = [accessibilityOptions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(accessibilityOptions);
        }

        [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:*(*(&v12 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [accessibilityOptions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  device = [(AccessibilitySettingsViewController *)self device];
  accessibilitySetAccessibilityOptionsOnDevice(v4, device);

  miniFlowDelegate = [(AccessibilitySettingsViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  accessibilityOptions = [(AccessibilitySettingsViewController *)self accessibilityOptions];
  v4 = [accessibilityOptions count];

  return v4;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  accessibilityOptions = [(AccessibilitySettingsViewController *)self accessibilityOptions];
  v6 = [accessibilityOptions objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return accessibilityLocalizedDescriptionForSetupOption(unsignedIntegerValue);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"AXSettingCellReuseIdentifier" forIndexPath:pathCopy];
  [v7 setSelectionStyle:0];
  accessibilityOptions = [(AccessibilitySettingsViewController *)self accessibilityOptions];
  section = [pathCopy section];

  v10 = [accessibilityOptions objectAtIndexedSubscript:section];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  textLabel = [v7 textLabel];
  v13 = accessibilityLocalizedStringForSetupOption(unsignedIntegerValue);
  [textLabel setText:v13];

  customizedAccessibilityOptions = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  v15 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v16 = [customizedAccessibilityOptions objectForKeyedSubscript:v15];
  bOOLValue = [v16 BOOLValue];

  v18 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v18 setOn:bOOLValue animated:0];
  [v18 setTag:unsignedIntegerValue];
  [v18 addTarget:self action:"switchToggled:" forControlEvents:4096];
  [v7 setAccessoryView:v18];

  return v7;
}

- (void)switchToggled:(id)toggled
{
  toggledCopy = toggled;
  v4 = [toggledCopy tag];
  v5 = v4;
  if (v4 == &dword_0 + 2)
  {
    isOn = [toggledCopy isOn];
    isOn2 = 0;
  }

  else
  {
    if (v4)
    {
      isOn2 = 0;
    }

    else
    {
      isOn2 = [toggledCopy isOn];
    }

    isOn = 0;
  }

  customizedAccessibilityOptions = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  v9 = [customizedAccessibilityOptions objectForKeyedSubscript:&off_8618];
  bOOLValue = [v9 BOOLValue];

  customizedAccessibilityOptions2 = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  v12 = [customizedAccessibilityOptions2 objectForKeyedSubscript:&off_8630];
  bOOLValue2 = [v12 BOOLValue];

  if (isOn2 && bOOLValue2)
  {
    v14 = toggledCopy;
LABEL_11:
    [v14 setOn:0 animated:0];
    goto LABEL_13;
  }

  v14 = toggledCopy;
  if ((isOn & bOOLValue) == 1)
  {
    goto LABEL_11;
  }

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [toggledCopy isOn]);
  customizedAccessibilityOptions3 = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  v17 = [NSNumber numberWithUnsignedInteger:v5];
  [customizedAccessibilityOptions3 setObject:v15 forKeyedSubscript:v17];

LABEL_13:
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end
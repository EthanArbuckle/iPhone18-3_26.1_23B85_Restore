@interface AccessibilitySettingsViewController
- (AccessibilitySettingsViewController)initWithAccessibilityOptions:(id)a3 device:(id)a4;
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)alternateButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)switchToggled:(id)a3;
- (void)viewDidLoad;
@end

@implementation AccessibilitySettingsViewController

- (AccessibilitySettingsViewController)initWithAccessibilityOptions:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = AccessibilitySettingsViewController;
  v9 = [(AccessibilitySettingsViewController *)&v27 initWithTitle:&stru_82A0 detailText:0 icon:0 contentLayout:3];
  v10 = v9;
  if (v9)
  {
    [(AccessibilitySettingsViewController *)v9 setStyle:10];
    objc_storeStrong(&v10->_accessibilityOptions, a3);
    objc_storeStrong(&v10->_device, a4);
    v11 = +[NSMutableDictionary dictionary];
    customizedAccessibilityOptions = v10->_customizedAccessibilityOptions;
    v10->_customizedAccessibilityOptions = v11;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v7;
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
    v19 = [v18 BOOLValue];

    v20 = [(NSMutableDictionary *)v10->_customizedAccessibilityOptions objectForKeyedSubscript:&off_8630];
    v21 = [v20 BOOLValue];

    if (v19 && v21)
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
    v4 = [(AccessibilitySettingsViewController *)self headerView];
    [v4 setIcon:v3 accessibilityLabel:0];
  }

  v5 = [(AccessibilitySettingsViewController *)self alternateChoiceButton];
  [v5 titleLabel];
  v6 = v44 = v3;
  [v6 setNumberOfLines:0];

  v7 = [(AccessibilitySettingsViewController *)self alternateChoiceButton];
  v8 = [v7 titleLabel];
  [v8 setLineBreakMode:0];

  v9 = [AXContentSizedTableView alloc];
  v10 = [(AccessibilitySettingsViewController *)self contentView];
  [v10 bounds];
  v11 = [(AXContentSizedTableView *)v9 initWithFrame:2 style:?];
  [(AccessibilitySettingsViewController *)self setTableView:v11];

  v12 = [(AccessibilitySettingsViewController *)self tableView];
  [v12 registerClass:objc_opt_class() forCellReuseIdentifier:@"AXSettingCellReuseIdentifier"];

  v13 = [(AccessibilitySettingsViewController *)self tableView];
  [v13 setRowHeight:UITableViewAutomaticDimension];

  v14 = [(AccessibilitySettingsViewController *)self tableView];
  [v14 setDelegate:self];

  v15 = [(AccessibilitySettingsViewController *)self tableView];
  [v15 setDataSource:self];

  v16 = BPSSeparatorColor();
  v17 = [(AccessibilitySettingsViewController *)self tableView];
  [v17 setSeparatorColor:v16];

  v18 = [(AccessibilitySettingsViewController *)self tableView];
  [v18 setScrollEnabled:0];

  v19 = [(AccessibilitySettingsViewController *)self contentView];
  v20 = [(AccessibilitySettingsViewController *)self tableView];
  [v19 addSubview:v20];

  v21 = [(AccessibilitySettingsViewController *)self tableView];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v43 = [(AccessibilitySettingsViewController *)self contentView];
  v41 = [v43 topAnchor];
  v42 = [(AccessibilitySettingsViewController *)self tableView];
  v40 = [v42 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v47[0] = v39;
  v38 = [(AccessibilitySettingsViewController *)self contentView];
  v36 = [v38 leadingAnchor];
  v37 = [(AccessibilitySettingsViewController *)self tableView];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v47[1] = v34;
  v33 = [(AccessibilitySettingsViewController *)self contentView];
  v32 = [v33 trailingAnchor];
  v22 = [(AccessibilitySettingsViewController *)self tableView];
  v23 = [v22 trailingAnchor];
  v24 = [v32 constraintEqualToAnchor:v23];
  v47[2] = v24;
  v25 = [(AccessibilitySettingsViewController *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [(AccessibilitySettingsViewController *)self tableView];
  v28 = [v27 bottomAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v47[3] = v29;
  v30 = [NSArray arrayWithObjects:v47 count:4];
  [NSLayoutConstraint activateConstraints:v30];

  v31 = [(AccessibilitySettingsViewController *)self tableView];
  [v31 reloadData];
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  v5 = [(AccessibilitySettingsViewController *)self device];
  accessibilitySetAccessibilityOptionsOnDevice(v4, v5);

  v6 = [(AccessibilitySettingsViewController *)self miniFlowDelegate];
  [v6 miniFlowStepComplete:self];
}

- (void)alternateButtonPressed:(id)a3
{
  v4 = +[NSMutableDictionary dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AccessibilitySettingsViewController *)self accessibilityOptions];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:*(*(&v12 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(AccessibilitySettingsViewController *)self device];
  accessibilitySetAccessibilityOptionsOnDevice(v4, v10);

  v11 = [(AccessibilitySettingsViewController *)self miniFlowDelegate];
  [v11 miniFlowStepComplete:self];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(AccessibilitySettingsViewController *)self accessibilityOptions];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(AccessibilitySettingsViewController *)self accessibilityOptions];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 unsignedIntegerValue];

  return accessibilityLocalizedDescriptionForSetupOption(v7);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"AXSettingCellReuseIdentifier" forIndexPath:v6];
  [v7 setSelectionStyle:0];
  v8 = [(AccessibilitySettingsViewController *)self accessibilityOptions];
  v9 = [v6 section];

  v10 = [v8 objectAtIndexedSubscript:v9];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v7 textLabel];
  v13 = accessibilityLocalizedStringForSetupOption(v11);
  [v12 setText:v13];

  v14 = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  v15 = [NSNumber numberWithUnsignedInteger:v11];
  v16 = [v14 objectForKeyedSubscript:v15];
  v17 = [v16 BOOLValue];

  v18 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v18 setOn:v17 animated:0];
  [v18 setTag:v11];
  [v18 addTarget:self action:"switchToggled:" forControlEvents:4096];
  [v7 setAccessoryView:v18];

  return v7;
}

- (void)switchToggled:(id)a3
{
  v18 = a3;
  v4 = [v18 tag];
  v5 = v4;
  if (v4 == &dword_0 + 2)
  {
    v7 = [v18 isOn];
    v6 = 0;
  }

  else
  {
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v18 isOn];
    }

    v7 = 0;
  }

  v8 = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  v9 = [v8 objectForKeyedSubscript:&off_8618];
  v10 = [v9 BOOLValue];

  v11 = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  v12 = [v11 objectForKeyedSubscript:&off_8630];
  v13 = [v12 BOOLValue];

  if (v6 && v13)
  {
    v14 = v18;
LABEL_11:
    [v14 setOn:0 animated:0];
    goto LABEL_13;
  }

  v14 = v18;
  if ((v7 & v10) == 1)
  {
    goto LABEL_11;
  }

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isOn]);
  v16 = [(AccessibilitySettingsViewController *)self customizedAccessibilityOptions];
  v17 = [NSNumber numberWithUnsignedInteger:v5];
  [v16 setObject:v15 forKeyedSubscript:v17];

LABEL_13:
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end
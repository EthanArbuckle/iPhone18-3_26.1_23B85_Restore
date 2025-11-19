@interface FBADevicePairingViewController
- (BOOL)shouldShowDevUI;
- (FBAPairingPresentationDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 loadingSpinnerViewForSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_showInternalUIIfNeeded;
- (void)awakeFromNib;
- (void)didCancel;
- (void)didChangeDeviceParingWithDeviceAdded:(id)a3 removed:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)didTapForgetDevice:(id)a3;
- (void)dismissSelf;
- (void)handleDeviceTapWithDevice:(id)a3 inSection:(unint64_t)a4;
- (void)reload;
- (void)setupBarButtonItems;
- (void)showDevUI;
- (void)showFBAPairing;
- (void)showPinPairingViewForDevice:(id)a3;
- (void)showTextViewWithText:(id)a3 title:(id)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)toggleDev;
- (void)viewDidLoad;
@end

@implementation FBADevicePairingViewController

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = FBADevicePairingViewController;
  [(FBADevicePairingViewController *)&v3 awakeFromNib];
  [(FBADevicePairingViewController *)self setContext:2];
  [(FBADevicePairingViewController *)self setPinPairingInProgress:0];
  [(FBADevicePairingViewController *)self setFilterPlatform:0];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = FBADevicePairingViewController;
  [(FBADevicePairingViewController *)&v9 viewDidLoad];
  +[FBADevicePairingCell estimatedRowHeight];
  v4 = v3;
  v5 = [(FBADevicePairingViewController *)self tableView];
  [v5 setEstimatedRowHeight:v4];

  v6 = [(FBADevicePairingViewController *)self tableView];
  [v6 setRowHeight:UITableViewAutomaticDimension];

  v7 = [(FBADevicePairingViewController *)self tableView];
  [v7 setEstimatedSectionHeaderHeight:40.0];

  v8 = [(FBADevicePairingViewController *)self tableView];
  [v8 setSectionHeaderHeight:UITableViewAutomaticDimension];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FBADevicePairingViewController;
  [(FBADevicePairingViewController *)&v2 didReceiveMemoryWarning];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->__internalMode)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(FBADevicePairingViewController *)self deviceGroups];
  v6 = [v5 objectAtIndex:a4];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    v6 = [(FBADevicePairingViewController *)self tableView:a3 loadingSpinnerViewForSection:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 loadingSpinnerViewForSection:(int64_t)a4
{
  v6 = a3;
  v7 = [UIStackView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v11 setAxis:0];
  [v11 setAlignment:3];
  [v11 setSpacing:1.17549435e-38];
  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v13 = [(FBADevicePairingViewController *)self tableView:v6 titleForHeaderInSection:a4];

  [v12 setText:v13];
  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v12 setFont:v14];

  v15 = +[UIColor secondaryLabelColor];
  [v12 setTextColor:v15];

  [v12 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v16) = 1144750080;
  [v12 setContentHuggingPriority:0 forAxis:v16];
  [v12 sizeToFit];
  [v11 addArrangedSubview:v12];
  v17 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v17 startAnimating];
  [v11 addArrangedSubview:v17];
  [v11 setLayoutMarginsRelativeArrangement:1];
  [v11 setDirectionalLayoutMargins:{10.0, 16.0, 10.0, 16.0}];

  return v11;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  switch(a4)
  {
    case 0:
      v7 = @"MY_DEVICES";
      goto LABEL_9;
    case 2:
      if (self->__internalMode)
      {
        v8 = @"All Devices Visible to DED";
      }

      else
      {
        v8 = 0;
      }

      break;
    case 1:
      v7 = @"OTHER_DEVICES";
LABEL_9:
      v9 = +[NSBundle mainBundle];
      v8 = [v9 localizedStringForKey:v7 value:&stru_1000E2210 table:0];

      break;
    default:
      v8 = 0;
      break;
  }

  return v8;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([a3 numberOfSections] - 1 == a4)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"DEVICE_PAIRING_FOOTER_TEXT" value:&stru_1000E2210 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10010AFD0 != -1)
  {
    sub_100092FBC();
  }

  v8 = [v6 dequeueReusableCellWithIdentifier:qword_10010AFD8 forIndexPath:v7];
  if ([v7 section] == 1)
  {
    v9 = [v8 accessibilityTraits];
    v10 = UIAccessibilityTraitButton | v9;
    v11 = @"DEVICE_CELL_HINT_TAP_TO_PAIR";
  }

  else
  {
    v12 = UIAccessibilityTraitButton;
    v10 = [v8 accessibilityTraits] & ~v12;
    v11 = @"DEVICE_CELL_HINT_PAIRED";
  }

  [v8 setAccessibilityTraits:v10];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:v11 value:&stru_1000E2210 table:0];
  [v8 setAccessibilityHint:v14];

  v15 = [(FBADevicePairingViewController *)self deviceGroups];
  v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  [v8 updateWithDevice:v17 showsDetail:objc_msgSend(v7 showsTransport:{"section") == 0, self->__internalMode}];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(FBADevicePairingViewController *)self deviceGroups];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  v9 = +[FBALog ded];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 publicLogDescription];
    v13 = 138543362;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "selected [%{public}@] on pairing view", &v13, 0xCu);
  }

  v11 = +[FBALog ded];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100092FD0();
  }

  -[FBADevicePairingViewController handleDeviceTapWithDevice:inSection:](self, "handleDeviceTapWithDevice:inSection:", v8, [v5 section]);
  v12 = [(FBADevicePairingViewController *)self tableView];
  [v12 deselectRowAtIndexPath:v5 animated:1];
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(FBADevicePairingViewController *)self deviceGroups];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  if (self->__internalMode)
  {
    v9 = [v8 name];
    if ([v9 isEqualToString:&stru_1000E2210])
    {
      v10 = @"Device Data";
    }

    else
    {
      v10 = [v8 name];
    }

    v13 = [v8 debugDetails];
    [(FBADevicePairingViewController *)self showTextViewWithText:v13 title:v10];

LABEL_10:
    goto LABEL_11;
  }

  if (![v5 section])
  {
    v11 = [v8 isCurrentDevice];
    v12 = +[FBALog ded];
    v10 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100093040();
      }

      goto LABEL_10;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 publicLogDescription];
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "showing device detail on device [%{public}@]", &v20, 0xCu);
    }

    v15 = [(FBADevicePairingViewController *)self storyboard];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 instantiateViewControllerWithIdentifier:v17];

    [v18 setDevice:v8];
    [v18 setDelegate:self];
    v19 = [(FBADevicePairingViewController *)self navigationController];
    [v19 pushViewController:v18 animated:1];
  }

LABEL_11:
}

- (void)didTapForgetDevice:(id)a3
{
  v4 = a3;
  v5 = [(FBADevicePairingViewController *)self pairedDevices];
  if ([v5 containsObject:v4])
  {
    v6 = [v4 isCurrentDevice];
    v7 = [v4 isFBKPaired];

    if (v7 && !v6)
    {
      [v4 removeFBKPairing];
      [(FBADevicePairingViewController *)self didChangeDeviceParingWithDeviceAdded:0 removed:v4];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = +[FBALog ded];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100093080(v4, v8);
  }

LABEL_9:
}

- (void)handleDeviceTapWithDevice:(id)a3 inSection:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 2)
  {
    if (self->__internalMode)
    {
      v9 = +[FBALog ded];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100093188();
      }

      if (([v7 isFBKPaired] & 1) == 0 && (objc_msgSend(v7, "isCurrentDevice") & 1) == 0)
      {
        v10 = +[FBALog ded];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_1000931F8();
        }

        [(FBADevicePairingViewController *)self handleDeviceTapWithDevice:v7 inSection:1];
      }
    }
  }

  else if (a4 == 1)
  {
    if ([v6 needsPairing] && (objc_msgSend(v7, "dedSharingDevice"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      [(FBADevicePairingViewController *)self showPinPairingViewForDevice:v7];
    }

    else if ([v7 isReady])
    {
      [v7 pairToFBK];
      [(FBADevicePairingViewController *)self didChangeDeviceParingWithDeviceAdded:v7 removed:0];
    }

    else
    {
      v11 = +[FBALog ded];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100093114();
      }
    }
  }
}

- (void)reload
{
  v3 = +[FBALog ded];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "reload devices view", buf, 2u);
  }

  v4 = +[FBKDeviceManager sharedInstance];
  v5 = [v4 configuredDevices];
  [(FBADevicePairingViewController *)self setPairedDevices:v5];

  if ([(FBADevicePairingViewController *)self context]== 4 && ([(FBADevicePairingViewController *)self filterPlatform], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = DEDDevicePlatformiOS;
    v8 = [(FBADevicePairingViewController *)self filterPlatform];
    if ([v8 isEqualToString:DEDDevicePlatformUnspecified])
    {
      v9 = v7;
    }

    else
    {
      v9 = [(FBADevicePairingViewController *)self filterPlatform];
    }

    v11 = v9;

    v12 = +[FBKDeviceManager sharedInstance];
    v13 = [v12 notConfiguredDevices];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000197D0;
    v25[3] = &unk_1000DEE08;
    v26 = v11;
    v10 = v11;
    v14 = [v13 ded_selectItemsPassingTest:v25];
    [(FBADevicePairingViewController *)self setNotConfiguredDevice:v14];
  }

  else
  {
    v7 = +[FBKDeviceManager sharedInstance];
    v10 = [v7 notConfiguredDevices];
    [(FBADevicePairingViewController *)self setNotConfiguredDevice:v10];
  }

  if (self->__internalMode)
  {
    v15 = +[FBKDeviceManager sharedInstance];
    v16 = [v15 allDevices];
    [(FBADevicePairingViewController *)self set_allDevices:v16];
  }

  v17 = [(FBADevicePairingViewController *)self pairedDevices];
  v29[0] = v17;
  v18 = [(FBADevicePairingViewController *)self notConfiguredDevice];
  v29[1] = v18;
  v19 = [NSArray arrayWithObjects:v29 count:2];
  [(FBADevicePairingViewController *)self setDeviceGroups:v19];

  if (self->__internalMode)
  {
    v20 = [(FBADevicePairingViewController *)self pairedDevices];
    v28[0] = v20;
    v21 = [(FBADevicePairingViewController *)self notConfiguredDevice];
    v28[1] = v21;
    v22 = [(FBADevicePairingViewController *)self _allDevices];
    v28[2] = v22;
    v23 = [NSArray arrayWithObjects:v28 count:3];
    [(FBADevicePairingViewController *)self setDeviceGroups:v23];
  }

  v24 = [(FBADevicePairingViewController *)self tableView];
  [v24 reloadData];
}

- (void)showPinPairingViewForDevice:(id)a3
{
  v4 = a3;
  v5 = [(FBADevicePairingViewController *)self storyboard];
  v6 = self;
  v7 = +[FBKDeviceManager sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019998;
  v11[3] = &unk_1000DEAE0;
  v11[4] = v6;
  v12 = v6;
  v13 = v5;
  v14 = v4;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v7 beginPairingDevice:v8 showUIBlock:v11];
}

- (void)setupBarButtonItems
{
  v3 = [(FBADevicePairingViewController *)self context];
  if ((v3 - 2) < 2)
  {
    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissSelf"];
    v5 = [(FBADevicePairingViewController *)self navigationItem];
    v6 = v5;
    v7 = v8;
  }

  else
  {
    if (v3 == 1)
    {
      v8 = [(FBADevicePairingViewController *)self navigationItem];
      [v8 setRightBarButtonItem:0];
      goto LABEL_8;
    }

    if (v3 != 4)
    {
      return;
    }

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didCancel"];
    v4 = [(FBADevicePairingViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v8];

    v5 = [(FBADevicePairingViewController *)self navigationItem];
    v6 = v5;
    v7 = 0;
  }

  [v5 setRightBarButtonItem:v7];

LABEL_8:
}

- (void)didCancel
{
  v3 = +[FBALog ded];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "device pairing view did cancel", v9, 2u);
  }

  v4 = [(FBADevicePairingViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(FBADevicePairingViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(FBADevicePairingViewController *)self delegate];
      [v8 pairingViewDidCancel];
    }
  }
}

- (void)dismissSelf
{
  v3 = +[FBALog ded];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "device pairing view did hit done", buf, 2u);
  }

  v4 = [(FBADevicePairingViewController *)self delegate];
  v5 = [(FBADevicePairingViewController *)self presentingViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019DB0;
  v7[3] = &unk_1000DE430;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

- (void)didChangeDeviceParingWithDeviceAdded:(id)a3 removed:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(FBADevicePairingViewController *)self delegate];

  if (v7)
  {
    v8 = [(FBADevicePairingViewController *)self delegate];
    [v8 pairedDevicesDidChangeWithAddedDevice:v9 removed:v6];
  }

  [(FBADevicePairingViewController *)self reload];
}

- (void)showTextViewWithText:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FBADevicePairingViewController *)self storyboard];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v12 = [v8 instantiateViewControllerWithIdentifier:v10];

  [v12 setTitle:v6];
  [v12 setText:v7];

  v11 = [(FBADevicePairingViewController *)self navigationController];
  [v11 pushViewController:v12 animated:1];
}

- (void)toggleDev
{
  [(FBADevicePairingViewController *)self set_internalMode:[(FBADevicePairingViewController *)self _internalMode]^ 1];

  [(FBADevicePairingViewController *)self reload];
}

- (void)showFBAPairing
{
  v3 = +[FBKGroupedDevice inspectFBKPairing];
  [(FBADevicePairingViewController *)self showTextViewWithText:v3 title:@"FBA Paired Devices"];
}

- (void)showDevUI
{
  v3 = [(FBADevicePairingViewController *)self navigationController];
  [v3 setToolbarHidden:0 animated:1];

  v4 = [UIBarButtonItem alloc];
  v6 = v5 = @"Show FBA Pairing";
  v7 = [v4 initWithTitle:v6 style:0 target:self action:"showFBAPairing"];

  v8 = [UIBarButtonItem alloc];
  v10 = v9 = @"Toggle Internal Details";
  v11 = [v8 initWithTitle:v10 style:0 target:self action:"toggleDev"];

  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:{0, v7}];
  v15[1] = v12;
  v15[2] = v11;
  v13 = [NSArray arrayWithObjects:v15 count:3];
  [(FBADevicePairingViewController *)self setToolbarItems:v13];

  v14 = [(FBADevicePairingViewController *)self navigationController];
  [v14 setToolbarHidden:0];

  [(FBADevicePairingViewController *)self reload];
}

- (void)_showInternalUIIfNeeded
{
  if ([(FBADevicePairingViewController *)self shouldShowDevUI])
  {

    [(FBADevicePairingViewController *)self showDevUI];
  }

  else
  {
    [(FBADevicePairingViewController *)self set_internalMode:0];
    v3 = [(FBADevicePairingViewController *)self navigationController];
    [v3 setToolbarHidden:1];

    [(FBADevicePairingViewController *)self setToolbarItems:&__NSArray0__struct];
  }
}

- (BOOL)shouldShowDevUI
{
  v2 = FBKIsInternalInstall();
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:FBKShowDevicePairingInternal];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (FBAPairingPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface FBADevicePairingViewController
- (BOOL)shouldShowDevUI;
- (FBAPairingPresentationDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view loadingSpinnerViewForSection:(int64_t)section;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_showInternalUIIfNeeded;
- (void)awakeFromNib;
- (void)didCancel;
- (void)didChangeDeviceParingWithDeviceAdded:(id)added removed:(id)removed;
- (void)didReceiveMemoryWarning;
- (void)didTapForgetDevice:(id)device;
- (void)dismissSelf;
- (void)handleDeviceTapWithDevice:(id)device inSection:(unint64_t)section;
- (void)reload;
- (void)setupBarButtonItems;
- (void)showDevUI;
- (void)showFBAPairing;
- (void)showPinPairingViewForDevice:(id)device;
- (void)showTextViewWithText:(id)text title:(id)title;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
  tableView = [(FBADevicePairingViewController *)self tableView];
  [tableView setEstimatedRowHeight:v4];

  tableView2 = [(FBADevicePairingViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(FBADevicePairingViewController *)self tableView];
  [tableView3 setEstimatedSectionHeaderHeight:40.0];

  tableView4 = [(FBADevicePairingViewController *)self tableView];
  [tableView4 setSectionHeaderHeight:UITableViewAutomaticDimension];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FBADevicePairingViewController;
  [(FBADevicePairingViewController *)&v2 didReceiveMemoryWarning];
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  deviceGroups = [(FBADevicePairingViewController *)self deviceGroups];
  v6 = [deviceGroups objectAtIndex:section];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section == 1)
  {
    v6 = [(FBADevicePairingViewController *)self tableView:view loadingSpinnerViewForSection:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view loadingSpinnerViewForSection:(int64_t)section
{
  viewCopy = view;
  v7 = [UIStackView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v11 setAxis:0];
  [v11 setAlignment:3];
  [v11 setSpacing:1.17549435e-38];
  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v13 = [(FBADevicePairingViewController *)self tableView:viewCopy titleForHeaderInSection:section];

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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  switch(section)
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([view numberOfSections] - 1 == section)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (qword_10010AFD0 != -1)
  {
    sub_100092FBC();
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:qword_10010AFD8 forIndexPath:pathCopy];
  if ([pathCopy section] == 1)
  {
    accessibilityTraits = [v8 accessibilityTraits];
    v10 = UIAccessibilityTraitButton | accessibilityTraits;
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

  deviceGroups = [(FBADevicePairingViewController *)self deviceGroups];
  v16 = [deviceGroups objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [v8 updateWithDevice:v17 showsDetail:objc_msgSend(pathCopy showsTransport:{"section") == 0, self->__internalMode}];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  deviceGroups = [(FBADevicePairingViewController *)self deviceGroups];
  v7 = [deviceGroups objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v9 = +[FBALog ded];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    publicLogDescription = [v8 publicLogDescription];
    v13 = 138543362;
    v14 = publicLogDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "selected [%{public}@] on pairing view", &v13, 0xCu);
  }

  v11 = +[FBALog ded];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100092FD0();
  }

  -[FBADevicePairingViewController handleDeviceTapWithDevice:inSection:](self, "handleDeviceTapWithDevice:inSection:", v8, [pathCopy section]);
  tableView = [(FBADevicePairingViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  deviceGroups = [(FBADevicePairingViewController *)self deviceGroups];
  v7 = [deviceGroups objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if (self->__internalMode)
  {
    name = [v8 name];
    if ([name isEqualToString:&stru_1000E2210])
    {
      name2 = @"Device Data";
    }

    else
    {
      name2 = [v8 name];
    }

    debugDetails = [v8 debugDetails];
    [(FBADevicePairingViewController *)self showTextViewWithText:debugDetails title:name2];

LABEL_10:
    goto LABEL_11;
  }

  if (![pathCopy section])
  {
    isCurrentDevice = [v8 isCurrentDevice];
    v12 = +[FBALog ded];
    name2 = v12;
    if (isCurrentDevice)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100093040();
      }

      goto LABEL_10;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      publicLogDescription = [v8 publicLogDescription];
      v20 = 138543362;
      v21 = publicLogDescription;
      _os_log_impl(&_mh_execute_header, name2, OS_LOG_TYPE_DEFAULT, "showing device detail on device [%{public}@]", &v20, 0xCu);
    }

    storyboard = [(FBADevicePairingViewController *)self storyboard];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [storyboard instantiateViewControllerWithIdentifier:v17];

    [v18 setDevice:v8];
    [v18 setDelegate:self];
    navigationController = [(FBADevicePairingViewController *)self navigationController];
    [navigationController pushViewController:v18 animated:1];
  }

LABEL_11:
}

- (void)didTapForgetDevice:(id)device
{
  deviceCopy = device;
  pairedDevices = [(FBADevicePairingViewController *)self pairedDevices];
  if ([pairedDevices containsObject:deviceCopy])
  {
    isCurrentDevice = [deviceCopy isCurrentDevice];
    isFBKPaired = [deviceCopy isFBKPaired];

    if (isFBKPaired && !isCurrentDevice)
    {
      [deviceCopy removeFBKPairing];
      [(FBADevicePairingViewController *)self didChangeDeviceParingWithDeviceAdded:0 removed:deviceCopy];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = +[FBALog ded];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100093080(deviceCopy, v8);
  }

LABEL_9:
}

- (void)handleDeviceTapWithDevice:(id)device inSection:(unint64_t)section
{
  deviceCopy = device;
  v7 = deviceCopy;
  if (section == 2)
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

  else if (section == 1)
  {
    if ([deviceCopy needsPairing] && (objc_msgSend(v7, "dedSharingDevice"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
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
  configuredDevices = [v4 configuredDevices];
  [(FBADevicePairingViewController *)self setPairedDevices:configuredDevices];

  if ([(FBADevicePairingViewController *)self context]== 4 && ([(FBADevicePairingViewController *)self filterPlatform], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = DEDDevicePlatformiOS;
    filterPlatform = [(FBADevicePairingViewController *)self filterPlatform];
    if ([filterPlatform isEqualToString:DEDDevicePlatformUnspecified])
    {
      filterPlatform2 = v7;
    }

    else
    {
      filterPlatform2 = [(FBADevicePairingViewController *)self filterPlatform];
    }

    v11 = filterPlatform2;

    v12 = +[FBKDeviceManager sharedInstance];
    notConfiguredDevices = [v12 notConfiguredDevices];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000197D0;
    v25[3] = &unk_1000DEE08;
    v26 = v11;
    notConfiguredDevices2 = v11;
    v14 = [notConfiguredDevices ded_selectItemsPassingTest:v25];
    [(FBADevicePairingViewController *)self setNotConfiguredDevice:v14];
  }

  else
  {
    v7 = +[FBKDeviceManager sharedInstance];
    notConfiguredDevices2 = [v7 notConfiguredDevices];
    [(FBADevicePairingViewController *)self setNotConfiguredDevice:notConfiguredDevices2];
  }

  if (self->__internalMode)
  {
    v15 = +[FBKDeviceManager sharedInstance];
    allDevices = [v15 allDevices];
    [(FBADevicePairingViewController *)self set_allDevices:allDevices];
  }

  pairedDevices = [(FBADevicePairingViewController *)self pairedDevices];
  v29[0] = pairedDevices;
  notConfiguredDevice = [(FBADevicePairingViewController *)self notConfiguredDevice];
  v29[1] = notConfiguredDevice;
  v19 = [NSArray arrayWithObjects:v29 count:2];
  [(FBADevicePairingViewController *)self setDeviceGroups:v19];

  if (self->__internalMode)
  {
    pairedDevices2 = [(FBADevicePairingViewController *)self pairedDevices];
    v28[0] = pairedDevices2;
    notConfiguredDevice2 = [(FBADevicePairingViewController *)self notConfiguredDevice];
    v28[1] = notConfiguredDevice2;
    _allDevices = [(FBADevicePairingViewController *)self _allDevices];
    v28[2] = _allDevices;
    v23 = [NSArray arrayWithObjects:v28 count:3];
    [(FBADevicePairingViewController *)self setDeviceGroups:v23];
  }

  tableView = [(FBADevicePairingViewController *)self tableView];
  [tableView reloadData];
}

- (void)showPinPairingViewForDevice:(id)device
{
  deviceCopy = device;
  storyboard = [(FBADevicePairingViewController *)self storyboard];
  selfCopy = self;
  v7 = +[FBKDeviceManager sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019998;
  v11[3] = &unk_1000DEAE0;
  v11[4] = selfCopy;
  v12 = selfCopy;
  v13 = storyboard;
  v14 = deviceCopy;
  v8 = deviceCopy;
  v9 = storyboard;
  v10 = selfCopy;
  [v7 beginPairingDevice:v8 showUIBlock:v11];
}

- (void)setupBarButtonItems
{
  context = [(FBADevicePairingViewController *)self context];
  if ((context - 2) < 2)
  {
    navigationItem2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissSelf"];
    navigationItem = [(FBADevicePairingViewController *)self navigationItem];
    v6 = navigationItem;
    v7 = navigationItem2;
  }

  else
  {
    if (context == 1)
    {
      navigationItem2 = [(FBADevicePairingViewController *)self navigationItem];
      [navigationItem2 setRightBarButtonItem:0];
      goto LABEL_8;
    }

    if (context != 4)
    {
      return;
    }

    navigationItem2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didCancel"];
    navigationItem3 = [(FBADevicePairingViewController *)self navigationItem];
    [navigationItem3 setLeftBarButtonItem:navigationItem2];

    navigationItem = [(FBADevicePairingViewController *)self navigationItem];
    v6 = navigationItem;
    v7 = 0;
  }

  [navigationItem setRightBarButtonItem:v7];

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

  delegate = [(FBADevicePairingViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(FBADevicePairingViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(FBADevicePairingViewController *)self delegate];
      [delegate3 pairingViewDidCancel];
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

  delegate = [(FBADevicePairingViewController *)self delegate];
  presentingViewController = [(FBADevicePairingViewController *)self presentingViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019DB0;
  v7[3] = &unk_1000DE430;
  v8 = delegate;
  v6 = delegate;
  [presentingViewController dismissViewControllerAnimated:1 completion:v7];
}

- (void)didChangeDeviceParingWithDeviceAdded:(id)added removed:(id)removed
{
  addedCopy = added;
  removedCopy = removed;
  delegate = [(FBADevicePairingViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(FBADevicePairingViewController *)self delegate];
    [delegate2 pairedDevicesDidChangeWithAddedDevice:addedCopy removed:removedCopy];
  }

  [(FBADevicePairingViewController *)self reload];
}

- (void)showTextViewWithText:(id)text title:(id)title
{
  titleCopy = title;
  textCopy = text;
  storyboard = [(FBADevicePairingViewController *)self storyboard];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v12 = [storyboard instantiateViewControllerWithIdentifier:v10];

  [v12 setTitle:titleCopy];
  [v12 setText:textCopy];

  navigationController = [(FBADevicePairingViewController *)self navigationController];
  [navigationController pushViewController:v12 animated:1];
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
  navigationController = [(FBADevicePairingViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:1];

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

  navigationController2 = [(FBADevicePairingViewController *)self navigationController];
  [navigationController2 setToolbarHidden:0];

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
    navigationController = [(FBADevicePairingViewController *)self navigationController];
    [navigationController setToolbarHidden:1];

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
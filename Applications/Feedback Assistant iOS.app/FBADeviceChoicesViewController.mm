@interface FBADeviceChoicesViewController
- (FBADeviceChoiceDelegate)choiceDelegate;
- (FBADeviceChoicesViewController)initWithCoder:(id)coder;
- (FBADeviceChoicesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_UIContentUnavailableView)contentUnavailableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)commonInit;
- (void)didCancel;
- (void)didTapDone;
- (void)hideContentUnavailableView;
- (void)showContentUnavailableView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation FBADeviceChoicesViewController

- (void)commonInit
{
  self->_isMultiSelect = 0;
  v3 = [NSMutableSet setWithCapacity:10];
  selectedDevices = self->_selectedDevices;
  self->_selectedDevices = v3;

  _objc_release_x1();
}

- (FBADeviceChoicesViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FBADeviceChoicesViewController;
  v3 = [(FBADeviceChoicesViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(FBADeviceChoicesViewController *)v3 commonInit];
  }

  return v4;
}

- (FBADeviceChoicesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = FBADeviceChoicesViewController;
  v4 = [(FBADeviceChoicesViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(FBADeviceChoicesViewController *)v4 commonInit];
  }

  return v5;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = FBADeviceChoicesViewController;
  [(FBADeviceChoicesViewController *)&v25 viewDidLoad];
  [(FBADeviceChoicesViewController *)self setClearsSelectionOnViewWillAppear:1];
  +[FBADevicePairingCell estimatedRowHeight];
  v4 = v3;
  tableView = [(FBADeviceChoicesViewController *)self tableView];
  [tableView setEstimatedRowHeight:v4];

  tableView2 = [(FBADeviceChoicesViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = +[NSBundle mainBundle];
  v10 = [UINib nibWithNibName:v8 bundle:v9];

  tableView3 = [(FBADeviceChoicesViewController *)self tableView];
  [tableView3 registerNib:v10 forCellReuseIdentifier:v8];

  deviceChoices = [(FBADeviceChoicesViewController *)self deviceChoices];

  if (deviceChoices)
  {
    deviceChoices2 = [(FBADeviceChoicesViewController *)self deviceChoices];
    allObjects = [deviceChoices2 allObjects];
    v15 = [FBKGroupedDevice sortedDevices:allObjects];
    [(FBADeviceChoicesViewController *)self setSortedChoices:v15];
  }

  else
  {
    [(FBADeviceChoicesViewController *)self setSortedChoices:&__NSArray0__struct];
  }

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"ADD_DEVICE" value:@"Add Device" table:0];
  navigationItem = [(FBADeviceChoicesViewController *)self navigationItem];
  [navigationItem setTitle:v17];

  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didCancel"];
  navigationItem2 = [(FBADeviceChoicesViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v19];

  if ([(FBADeviceChoicesViewController *)self isMultiSelect])
  {
    v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"didTapDone"];
    navigationItem3 = [(FBADeviceChoicesViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:v21];

    navigationItem4 = [(FBADeviceChoicesViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem4 rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];
  }
}

- (void)didTapDone
{
  if ([(FBADeviceChoicesViewController *)self isMultiSelect])
  {
    choiceDelegate = [(FBADeviceChoicesViewController *)self choiceDelegate];
    selectedDevices = [(FBADeviceChoicesViewController *)self selectedDevices];
    v4 = [NSSet setWithSet:selectedDevices];
    [choiceDelegate deviceChoicesController:self didChooseDevices:v4];
  }

  else
  {
    v5 = +[FBALog ded];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100092724(v5);
    }
  }
}

- (void)didCancel
{
  choiceDelegate = [(FBADeviceChoicesViewController *)self choiceDelegate];
  [choiceDelegate deviceChoicesControllerDidCancelWithController:self];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(FBADeviceChoicesViewController *)self sortedChoices:view];
  v6 = [v5 count];

  if (v6)
  {
    [(FBADeviceChoicesViewController *)self hideContentUnavailableView];
  }

  else
  {
    [(FBADeviceChoicesViewController *)self showContentUnavailableView];
  }

  return v6;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section || ![(FBADeviceChoicesViewController *)self tableView:view numberOfRowsInSection:?])
  {
    v4 = 0;
  }

  else
  {
    isMultiSelect = [(FBADeviceChoicesViewController *)self isMultiSelect];
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    if (isMultiSelect)
    {
      v9 = @"DEVICE_PICKER_FOOTER_MULTI_SELECT";
      v10 = @"To share diagnostic logs with Apple, select all of the devices experiencing this issue. If your device is not listed, make sure it is nearby, online, and signed in to your iCloud account.";
    }

    else
    {
      v9 = @"DEVICE_PICKER_FOOTER_SINGLE_SELECT";
      v10 = @"To share diagnostic logs with Apple, select the device experiencing this issue. If your device is not listed, make sure it is nearby, online, and signed in to your iCloud account.";
    }

    v4 = [v7 localizedStringForKey:v9 value:v10 table:0];
  }

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section || ![(FBADeviceChoicesViewController *)self tableView:view numberOfRowsInSection:?])
  {
    v4 = 0;
  }

  else
  {
    isMultiSelect = [(FBADeviceChoicesViewController *)self isMultiSelect];
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    if (isMultiSelect)
    {
      v9 = @"DEVICE_PICKER_HEADER_MULTI_SELECT";
      v10 = @"Select Devices";
    }

    else
    {
      v9 = @"DEVICE_PICKER_HEADER_SINGLE_SELECT";
      v10 = @"Select Device";
    }

    v4 = [v7 localizedStringForKey:v9 value:v10 table:0];
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = qword_10010AF70;
  pathCopy = path;
  viewCopy = view;
  if (v6 != -1)
  {
    sub_100092768();
  }

  v9 = [viewCopy dequeueReusableCellWithIdentifier:qword_10010AF78 forIndexPath:pathCopy];

  sortedChoices = [(FBADeviceChoicesViewController *)self sortedChoices];
  v11 = [pathCopy row];

  v12 = [sortedChoices objectAtIndexedSubscript:v11];

  selectedDevices = [(FBADeviceChoicesViewController *)self selectedDevices];
  v14 = [selectedDevices containsObject:v12];

  [v9 updateWithDevice:v12 showsDetail:0 showsTransport:0 isSelected:v14];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sortedChoices = [(FBADeviceChoicesViewController *)self sortedChoices];
  v9 = [sortedChoices objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v10 = +[FBALog ded];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    publicLogDescription = [v9 publicLogDescription];
    *buf = 138543362;
    v25 = publicLogDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "did tap device [%{public}@] on device picker", buf, 0xCu);
  }

  if ([(FBADeviceChoicesViewController *)self isMultiSelect])
  {
    selectedDevices = [(FBADeviceChoicesViewController *)self selectedDevices];
    v13 = [selectedDevices containsObject:v9];

    selectedDevices2 = [(FBADeviceChoicesViewController *)self selectedDevices];
    v15 = selectedDevices2;
    if (v13)
    {
      [selectedDevices2 removeObject:v9];
    }

    else
    {
      sortedChoices2 = [(FBADeviceChoicesViewController *)self sortedChoices];
      v19 = [sortedChoices2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      [v15 addObject:v19];
    }

    v23 = pathCopy;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    [viewCopy reloadRowsAtIndexPaths:v20 withRowAnimation:100];

    selectedDevices3 = [(FBADeviceChoicesViewController *)self selectedDevices];
    v21 = [selectedDevices3 count] != 0;
    navigationItem = [(FBADeviceChoicesViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:v21];
  }

  else
  {
    selectedDevices3 = [(FBADeviceChoicesViewController *)self choiceDelegate];
    navigationItem = [NSSet setWithObject:v9];
    [selectedDevices3 deviceChoicesController:self didChooseDevices:navigationItem];
  }
}

- (void)showContentUnavailableView
{
  contentUnavailableView = [(FBADeviceChoicesViewController *)self contentUnavailableView];
  tableView = [(FBADeviceChoicesViewController *)self tableView];
  [tableView setBackgroundView:contentUnavailableView];
}

- (void)hideContentUnavailableView
{
  tableView = [(FBADeviceChoicesViewController *)self tableView];
  [tableView setBackgroundView:0];
}

- (_UIContentUnavailableView)contentUnavailableView
{
  contentUnavailableView = self->_contentUnavailableView;
  if (!contentUnavailableView)
  {
    v4 = [_UIContentUnavailableView alloc];
    view = [(FBADeviceChoicesViewController *)self view];
    [view frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"NO_MORE_DEVICES_TITLE" value:&stru_1000E2210 table:0];
    v16 = [v4 initWithFrame:v15 title:0 style:{v7, v9, v11, v13}];
    v17 = self->_contentUnavailableView;
    self->_contentUnavailableView = v16;

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"NO_MORE_DEVICES_MESSAGE" value:&stru_1000E2210 table:0];
    [(_UIContentUnavailableView *)self->_contentUnavailableView setMessage:v19];

    contentUnavailableView = self->_contentUnavailableView;
  }

  return contentUnavailableView;
}

- (FBADeviceChoiceDelegate)choiceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_choiceDelegate);

  return WeakRetained;
}

@end
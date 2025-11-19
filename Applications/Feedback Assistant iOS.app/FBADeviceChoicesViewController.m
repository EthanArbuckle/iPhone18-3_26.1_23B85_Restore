@interface FBADeviceChoicesViewController
- (FBADeviceChoiceDelegate)choiceDelegate;
- (FBADeviceChoicesViewController)initWithCoder:(id)a3;
- (FBADeviceChoicesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_UIContentUnavailableView)contentUnavailableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)commonInit;
- (void)didCancel;
- (void)didTapDone;
- (void)hideContentUnavailableView;
- (void)showContentUnavailableView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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

- (FBADeviceChoicesViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FBADeviceChoicesViewController;
  v3 = [(FBADeviceChoicesViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(FBADeviceChoicesViewController *)v3 commonInit];
  }

  return v4;
}

- (FBADeviceChoicesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = FBADeviceChoicesViewController;
  v4 = [(FBADeviceChoicesViewController *)&v7 initWithNibName:a3 bundle:a4];
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
  v5 = [(FBADeviceChoicesViewController *)self tableView];
  [v5 setEstimatedRowHeight:v4];

  v6 = [(FBADeviceChoicesViewController *)self tableView];
  [v6 setRowHeight:UITableViewAutomaticDimension];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = +[NSBundle mainBundle];
  v10 = [UINib nibWithNibName:v8 bundle:v9];

  v11 = [(FBADeviceChoicesViewController *)self tableView];
  [v11 registerNib:v10 forCellReuseIdentifier:v8];

  v12 = [(FBADeviceChoicesViewController *)self deviceChoices];

  if (v12)
  {
    v13 = [(FBADeviceChoicesViewController *)self deviceChoices];
    v14 = [v13 allObjects];
    v15 = [FBKGroupedDevice sortedDevices:v14];
    [(FBADeviceChoicesViewController *)self setSortedChoices:v15];
  }

  else
  {
    [(FBADeviceChoicesViewController *)self setSortedChoices:&__NSArray0__struct];
  }

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"ADD_DEVICE" value:@"Add Device" table:0];
  v18 = [(FBADeviceChoicesViewController *)self navigationItem];
  [v18 setTitle:v17];

  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didCancel"];
  v20 = [(FBADeviceChoicesViewController *)self navigationItem];
  [v20 setLeftBarButtonItem:v19];

  if ([(FBADeviceChoicesViewController *)self isMultiSelect])
  {
    v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"didTapDone"];
    v22 = [(FBADeviceChoicesViewController *)self navigationItem];
    [v22 setRightBarButtonItem:v21];

    v23 = [(FBADeviceChoicesViewController *)self navigationItem];
    v24 = [v23 rightBarButtonItem];
    [v24 setEnabled:0];
  }
}

- (void)didTapDone
{
  if ([(FBADeviceChoicesViewController *)self isMultiSelect])
  {
    v6 = [(FBADeviceChoicesViewController *)self choiceDelegate];
    v3 = [(FBADeviceChoicesViewController *)self selectedDevices];
    v4 = [NSSet setWithSet:v3];
    [v6 deviceChoicesController:self didChooseDevices:v4];
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
  v3 = [(FBADeviceChoicesViewController *)self choiceDelegate];
  [v3 deviceChoicesControllerDidCancelWithController:self];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(FBADeviceChoicesViewController *)self sortedChoices:a3];
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 || ![(FBADeviceChoicesViewController *)self tableView:a3 numberOfRowsInSection:?])
  {
    v4 = 0;
  }

  else
  {
    v6 = [(FBADeviceChoicesViewController *)self isMultiSelect];
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    if (v6)
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 || ![(FBADeviceChoicesViewController *)self tableView:a3 numberOfRowsInSection:?])
  {
    v4 = 0;
  }

  else
  {
    v6 = [(FBADeviceChoicesViewController *)self isMultiSelect];
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    if (v6)
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = qword_10010AF70;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    sub_100092768();
  }

  v9 = [v8 dequeueReusableCellWithIdentifier:qword_10010AF78 forIndexPath:v7];

  v10 = [(FBADeviceChoicesViewController *)self sortedChoices];
  v11 = [v7 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  v13 = [(FBADeviceChoicesViewController *)self selectedDevices];
  v14 = [v13 containsObject:v12];

  [v9 updateWithDevice:v12 showsDetail:0 showsTransport:0 isSelected:v14];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FBADeviceChoicesViewController *)self sortedChoices];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v10 = +[FBALog ded];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 publicLogDescription];
    *buf = 138543362;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "did tap device [%{public}@] on device picker", buf, 0xCu);
  }

  if ([(FBADeviceChoicesViewController *)self isMultiSelect])
  {
    v12 = [(FBADeviceChoicesViewController *)self selectedDevices];
    v13 = [v12 containsObject:v9];

    v14 = [(FBADeviceChoicesViewController *)self selectedDevices];
    v15 = v14;
    if (v13)
    {
      [v14 removeObject:v9];
    }

    else
    {
      v18 = [(FBADeviceChoicesViewController *)self sortedChoices];
      v19 = [v18 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
      [v15 addObject:v19];
    }

    v23 = v7;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    [v6 reloadRowsAtIndexPaths:v20 withRowAnimation:100];

    v16 = [(FBADeviceChoicesViewController *)self selectedDevices];
    v21 = [v16 count] != 0;
    v17 = [(FBADeviceChoicesViewController *)self navigationItem];
    v22 = [v17 rightBarButtonItem];
    [v22 setEnabled:v21];
  }

  else
  {
    v16 = [(FBADeviceChoicesViewController *)self choiceDelegate];
    v17 = [NSSet setWithObject:v9];
    [v16 deviceChoicesController:self didChooseDevices:v17];
  }
}

- (void)showContentUnavailableView
{
  v4 = [(FBADeviceChoicesViewController *)self contentUnavailableView];
  v3 = [(FBADeviceChoicesViewController *)self tableView];
  [v3 setBackgroundView:v4];
}

- (void)hideContentUnavailableView
{
  v2 = [(FBADeviceChoicesViewController *)self tableView];
  [v2 setBackgroundView:0];
}

- (_UIContentUnavailableView)contentUnavailableView
{
  contentUnavailableView = self->_contentUnavailableView;
  if (!contentUnavailableView)
  {
    v4 = [_UIContentUnavailableView alloc];
    v5 = [(FBADeviceChoicesViewController *)self view];
    [v5 frame];
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
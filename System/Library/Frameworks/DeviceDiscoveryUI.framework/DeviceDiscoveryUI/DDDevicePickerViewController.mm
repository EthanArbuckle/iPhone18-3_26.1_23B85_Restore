@interface DDDevicePickerViewController
+ (BOOL)isSupportedForBrowseDescriptor:(id)a3 parameters:(id)a4;
- (DDDevicePickerViewController)initWithBrowseDescriptor:(id)a3 parameters:(id)a4;
- (void)viewDidLoad;
@end

@implementation DDDevicePickerViewController

+ (BOOL)isSupportedForBrowseDescriptor:(id)a3 parameters:(id)a4
{
  if (isSupportedForBrowseDescriptor_parameters__onceToken != -1)
  {
    +[DDDevicePickerViewController isSupportedForBrowseDescriptor:parameters:];
  }

  return isSupportedForBrowseDescriptor_parameters__isSupported;
}

void __74__DDDevicePickerViewController_isSupportedForBrowseDescriptor_parameters___block_invoke()
{
  v0 = GestaltCopyAnswer();
  isSupportedForBrowseDescriptor_parameters__isSupported = [v0 isEqual:{@"AppleTV5, 3"}] ^ 1;
}

- (DDDevicePickerViewController)initWithBrowseDescriptor:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DDDevicePickerViewController;
  v8 = [(DDDevicePickerViewController *)&v14 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = _DDUICoreLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_238060000, v9, OS_LOG_TYPE_INFO, "Creating _ChildViewController for non-TV device", v13, 2u);
    }

    v10 = [[DDDevicePickerSceneViewController alloc] initWithBrowseDescriptor:v6 parameters:v7];
    childViewController = v8->_childViewController;
    v8->_childViewController = v10;
  }

  return v8;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = DDDevicePickerViewController;
  [(DDDevicePickerViewController *)&v31 viewDidLoad];
  [(DDDevicePickerViewController *)self addChildViewController:self->_childViewController];
  v3 = [(DDDevicePickerViewController *)self view];
  v4 = [(DDDevicePicker *)self->_childViewController view];
  [v3 addSubview:v4];

  [(DDDevicePicker *)self->_childViewController didMoveToParentViewController:self];
  v5 = [(DDDevicePicker *)self->_childViewController view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(DDDevicePickerViewController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 frame];
  v10 = v9;

  v11 = [(DDDevicePicker *)self->_childViewController view];
  v12 = [v11 topAnchor];
  v13 = [(DDDevicePickerViewController *)self view];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:-v10];
  [v6 addObject:v15];

  v16 = [(DDDevicePicker *)self->_childViewController view];
  v17 = [v16 leadingAnchor];
  v18 = [(DDDevicePickerViewController *)self view];
  v19 = [v18 leadingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v6 addObject:v20];

  v21 = [(DDDevicePicker *)self->_childViewController view];
  v22 = [v21 trailingAnchor];
  v23 = [(DDDevicePickerViewController *)self view];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [v6 addObject:v25];

  v26 = [(DDDevicePicker *)self->_childViewController view];
  v27 = [v26 bottomAnchor];
  v28 = [(DDDevicePickerViewController *)self view];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v6 addObject:v30];

  [MEMORY[0x277CCAAD0] activateConstraints:v6];
}

@end
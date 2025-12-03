@interface DDDevicePickerViewController
+ (BOOL)isSupportedForBrowseDescriptor:(id)descriptor parameters:(id)parameters;
- (DDDevicePickerViewController)initWithBrowseDescriptor:(id)descriptor parameters:(id)parameters;
- (void)viewDidLoad;
@end

@implementation DDDevicePickerViewController

+ (BOOL)isSupportedForBrowseDescriptor:(id)descriptor parameters:(id)parameters
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

- (DDDevicePickerViewController)initWithBrowseDescriptor:(id)descriptor parameters:(id)parameters
{
  descriptorCopy = descriptor;
  parametersCopy = parameters;
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

    v10 = [[DDDevicePickerSceneViewController alloc] initWithBrowseDescriptor:descriptorCopy parameters:parametersCopy];
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
  view = [(DDDevicePickerViewController *)self view];
  view2 = [(DDDevicePicker *)self->_childViewController view];
  [view addSubview:view2];

  [(DDDevicePicker *)self->_childViewController didMoveToParentViewController:self];
  view3 = [(DDDevicePicker *)self->_childViewController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  array = [MEMORY[0x277CBEB18] array];
  navigationController = [(DDDevicePickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v10 = v9;

  view4 = [(DDDevicePicker *)self->_childViewController view];
  topAnchor = [view4 topAnchor];
  view5 = [(DDDevicePickerViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v10];
  [array addObject:v15];

  view6 = [(DDDevicePicker *)self->_childViewController view];
  leadingAnchor = [view6 leadingAnchor];
  view7 = [(DDDevicePickerViewController *)self view];
  leadingAnchor2 = [view7 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v20];

  view8 = [(DDDevicePicker *)self->_childViewController view];
  trailingAnchor = [view8 trailingAnchor];
  view9 = [(DDDevicePickerViewController *)self view];
  trailingAnchor2 = [view9 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v25];

  view10 = [(DDDevicePicker *)self->_childViewController view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(DDDevicePickerViewController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v30];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

@end
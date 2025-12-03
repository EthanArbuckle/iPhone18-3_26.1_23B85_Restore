@interface AAUIInheritanceShareDataViewController
- (void)_addICloudBackupIconViewToView:(id)view;
- (void)_addICloudIconViewToView:(id)view;
- (void)viewDidLoad;
@end

@implementation AAUIInheritanceShareDataViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AAUIInheritanceShareDataViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  headerView = [(AAUIInheritanceShareDataViewController *)self headerView];
  customIconContainerView = [headerView customIconContainerView];

  [(AAUIInheritanceShareDataViewController *)self _addICloudBackupIconViewToView:customIconContainerView];
  [(AAUIInheritanceShareDataViewController *)self _addICloudIconViewToView:customIconContainerView];
}

- (void)_addICloudBackupIconViewToView:(id)view
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69A8A00];
  viewCopy = view;
  v21 = [[v4 alloc] initWithType:@"com.apple.graphic-icon.icloud-backup"];
  v6 = [AAUIAsyncIconImageBridge hostingControllerWithIcon:v21 size:76.0, 76.0];
  [(AAUIInheritanceShareDataViewController *)self addChildViewController:v6];
  view = [v6 view];
  [viewCopy addSubview:view];

  [v6 didMoveToParentViewController:self];
  view2 = [v6 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  widthAnchor = [view2 widthAnchor];
  v19 = [widthAnchor constraintEqualToConstant:76.0];
  v22[0] = v19;
  centerXAnchor = [view2 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:-20.5];
  v22[1] = v10;
  heightAnchor = [view2 heightAnchor];
  v12 = [heightAnchor constraintEqualToConstant:76.0];
  v22[2] = v12;
  centerYAnchor = [view2 centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];

  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v22[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v17 activateConstraints:v16];
}

- (void)_addICloudIconViewToView:(id)view
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69A8A00];
  viewCopy = view;
  v21 = [[v4 alloc] initWithType:@"com.apple.application-icon.icloud"];
  v6 = [AAUIAsyncIconImageBridge hostingControllerWithIcon:v21 size:76.0, 76.0];
  [(AAUIInheritanceShareDataViewController *)self addChildViewController:v6];
  view = [v6 view];
  [viewCopy addSubview:view];

  [v6 didMoveToParentViewController:self];
  view2 = [v6 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  widthAnchor = [view2 widthAnchor];
  v19 = [widthAnchor constraintEqualToConstant:76.0];
  v22[0] = v19;
  centerXAnchor = [view2 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:20.5];
  v22[1] = v10;
  heightAnchor = [view2 heightAnchor];
  v12 = [heightAnchor constraintEqualToConstant:76.0];
  v22[2] = v12;
  centerYAnchor = [view2 centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];

  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v22[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v17 activateConstraints:v16];
}

@end
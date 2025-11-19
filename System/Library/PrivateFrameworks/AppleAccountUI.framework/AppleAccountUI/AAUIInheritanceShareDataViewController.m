@interface AAUIInheritanceShareDataViewController
- (void)_addICloudBackupIconViewToView:(id)a3;
- (void)_addICloudIconViewToView:(id)a3;
- (void)viewDidLoad;
@end

@implementation AAUIInheritanceShareDataViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AAUIInheritanceShareDataViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  v3 = [(AAUIInheritanceShareDataViewController *)self headerView];
  v4 = [v3 customIconContainerView];

  [(AAUIInheritanceShareDataViewController *)self _addICloudBackupIconViewToView:v4];
  [(AAUIInheritanceShareDataViewController *)self _addICloudIconViewToView:v4];
}

- (void)_addICloudBackupIconViewToView:(id)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69A8A00];
  v5 = a3;
  v21 = [[v4 alloc] initWithType:@"com.apple.graphic-icon.icloud-backup"];
  v6 = [AAUIAsyncIconImageBridge hostingControllerWithIcon:v21 size:76.0, 76.0];
  [(AAUIInheritanceShareDataViewController *)self addChildViewController:v6];
  v7 = [v6 view];
  [v5 addSubview:v7];

  [v6 didMoveToParentViewController:self];
  v8 = [v6 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  v20 = [v8 widthAnchor];
  v19 = [v20 constraintEqualToConstant:76.0];
  v22[0] = v19;
  v18 = [v8 centerXAnchor];
  v9 = [v5 centerXAnchor];
  v10 = [v18 constraintEqualToAnchor:v9 constant:-20.5];
  v22[1] = v10;
  v11 = [v8 heightAnchor];
  v12 = [v11 constraintEqualToConstant:76.0];
  v22[2] = v12;
  v13 = [v8 centerYAnchor];
  v14 = [v5 centerYAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v22[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v17 activateConstraints:v16];
}

- (void)_addICloudIconViewToView:(id)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69A8A00];
  v5 = a3;
  v21 = [[v4 alloc] initWithType:@"com.apple.application-icon.icloud"];
  v6 = [AAUIAsyncIconImageBridge hostingControllerWithIcon:v21 size:76.0, 76.0];
  [(AAUIInheritanceShareDataViewController *)self addChildViewController:v6];
  v7 = [v6 view];
  [v5 addSubview:v7];

  [v6 didMoveToParentViewController:self];
  v8 = [v6 view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  v20 = [v8 widthAnchor];
  v19 = [v20 constraintEqualToConstant:76.0];
  v22[0] = v19;
  v18 = [v8 centerXAnchor];
  v9 = [v5 centerXAnchor];
  v10 = [v18 constraintEqualToAnchor:v9 constant:20.5];
  v22[1] = v10;
  v11 = [v8 heightAnchor];
  v12 = [v11 constraintEqualToConstant:76.0];
  v22[2] = v12;
  v13 = [v8 centerYAnchor];
  v14 = [v5 centerYAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v22[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v17 activateConstraints:v16];
}

@end
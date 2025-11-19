@interface HSPCLockAccessUpdateViewController
- (HSPCLockAccessUpdateViewController)initWithCoordinator:(id)a3 config:(id)a4;
- (id)hu_preloadContent;
- (void)viewDidLoad;
@end

@implementation HSPCLockAccessUpdateViewController

- (HSPCLockAccessUpdateViewController)initWithCoordinator:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [HULockAccessUpdateViewController alloc];
  v10 = [v8 home];
  v11 = [v9 initWithHome:v10];
  lockAccessUpdateViewController = self->_lockAccessUpdateViewController;
  self->_lockAccessUpdateViewController = v11;

  v28.receiver = self;
  v28.super_class = HSPCLockAccessUpdateViewController;
  v13 = [(HSPCLockAccessUpdateViewController *)&v28 initWithContentView:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_config, a4);
    objc_storeStrong(&v14->_coordinator, a3);
    v15 = sub_100063A44(@"HSLockAccessUpdate_Title");
    [(HSPCLockAccessUpdateViewController *)v14 setTitle:v15];

    v16 = sub_100063A44(@"HSLockAccessUpdate_Description");
    [(HSPCLockAccessUpdateViewController *)v14 setSubtitle:v16];

    v17 = [v8 home];
    v18 = [v17 name];
    v25 = sub_100063B5C(@"HSLockAccessUpdate_Enable_Format", @"%@", v19, v20, v21, v22, v23, v24, v18);
    v26 = [(HSPCLockAccessUpdateViewController *)v14 addProminentButtonWithLocalizedTitle:v25 target:v14 futureSelector:"commitConfiguration"];
  }

  return v14;
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = HSPCLockAccessUpdateViewController;
  [(HSPCLockAccessUpdateViewController *)&v38 viewDidLoad];
  v3 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  [(HSPCLockAccessUpdateViewController *)self addChildViewController:v3];

  v4 = [(HSPCLockAccessUpdateViewController *)self contentView];
  v5 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  v6 = [v5 contentView];
  [v4 addSubview:v6];

  v7 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  v8 = [v7 contentView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  v36 = [v37 contentView];
  v34 = [v36 topAnchor];
  v35 = [(HSPCLockAccessUpdateViewController *)self contentView];
  v33 = [v35 mainContentGuide];
  v32 = [v33 topAnchor];
  v31 = [v34 constraintEqualToAnchor:v32];
  v39[0] = v31;
  v30 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  v29 = [v30 contentView];
  v27 = [v29 bottomAnchor];
  v28 = [(HSPCLockAccessUpdateViewController *)self contentView];
  v26 = [v28 mainContentGuide];
  v25 = [v26 bottomAnchor];
  v24 = [v27 constraintEqualToAnchor:v25];
  v39[1] = v24;
  v23 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  v22 = [v23 contentView];
  v20 = [v22 leadingAnchor];
  v21 = [(HSPCLockAccessUpdateViewController *)self contentView];
  v19 = [v21 mainContentGuide];
  v9 = [v19 leadingAnchor];
  v10 = [v20 constraintEqualToAnchor:v9];
  v39[2] = v10;
  v11 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  v12 = [v11 contentView];
  v13 = [v12 trailingAnchor];
  v14 = [(HSPCLockAccessUpdateViewController *)self contentView];
  v15 = [v14 mainContentGuide];
  v16 = [v15 trailingAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];
  v39[3] = v17;
  v18 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

- (id)hu_preloadContent
{
  v2 = [(HSPCLockAccessUpdateViewController *)self lockAccessUpdateViewController];
  v3 = [v2 hu_preloadContent];

  return v3;
}

@end
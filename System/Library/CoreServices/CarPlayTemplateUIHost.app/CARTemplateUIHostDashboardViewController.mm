@interface CARTemplateUIHostDashboardViewController
- (void)_button1Triggered;
- (void)_button2Triggered;
- (void)_button3Triggered;
- (void)viewDidLoad;
@end

@implementation CARTemplateUIHostDashboardViewController

- (void)viewDidLoad
{
  v100.receiver = self;
  v100.super_class = CARTemplateUIHostDashboardViewController;
  [(CARTemplateUIHostDashboardViewController *)&v100 viewDidLoad];
  view = [(CARTemplateUIHostDashboardViewController *)self view];
  v4 = +[UIColor redColor];
  [view setBackgroundColor:v4];

  v5 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = +[UIColor blueColor];
  [v9 setBackgroundColor:v10];

  view2 = [(CARTemplateUIHostDashboardViewController *)self view];
  [view2 addSubview:v9];

  v99 = v9;
  [(CARTemplateUIHostDashboardViewController *)self setSafeView:v9];
  v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setText:@"Dashboard"];
  v13 = +[UIColor whiteColor];
  [v12 setTextColor:v13];

  [v12 setNumberOfLines:4];
  [v12 setTextAlignment:1];
  [v12 sizeToFit];
  [v9 addSubview:v12];
  v14 = v12;
  [(CARTemplateUIHostDashboardViewController *)self setLabel:v12];
  v15 = [CARTemplateUIDashboardButton buttonWithType:1];
  [v15 addTarget:self action:"_button1Triggered" forControlEvents:0x2000];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setTitle:@"1" forState:0];
  [v15 sizeToFit];
  [(CARTemplateUIHostDashboardViewController *)self setButton1:v15];
  view3 = [(CARTemplateUIHostDashboardViewController *)self view];
  [view3 addSubview:v15];

  v17 = +[UIColor yellowColor];
  [v15 setTintColor:v17];

  v18 = [CARTemplateUIDashboardButton buttonWithType:1];
  [v18 addTarget:self action:"_button2Triggered" forControlEvents:0x2000];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setTitle:@"2" forState:0];
  [v18 sizeToFit];
  [(CARTemplateUIHostDashboardViewController *)self setButton2:v18];
  view4 = [(CARTemplateUIHostDashboardViewController *)self view];
  [view4 addSubview:v18];

  v20 = +[UIColor yellowColor];
  [v18 setTintColor:v20];

  v21 = [CARTemplateUIDashboardButton buttonWithType:1];
  [v21 addTarget:self action:"_button3Triggered" forControlEvents:0x2000];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setTitle:@"3" forState:0];
  [v21 sizeToFit];
  [(CARTemplateUIHostDashboardViewController *)self setButton3:v21];
  view5 = [(CARTemplateUIHostDashboardViewController *)self view];
  [view5 addSubview:v21];

  v23 = +[UIColor yellowColor];
  [v21 setTintColor:v23];

  v24 = objc_alloc_init(UILayoutGuide);
  view6 = [(CARTemplateUIHostDashboardViewController *)self view];
  [view6 addLayoutGuide:v24];

  centerXAnchor = [v24 centerXAnchor];
  view7 = [(CARTemplateUIHostDashboardViewController *)self view];
  centerXAnchor2 = [view7 centerXAnchor];
  v86 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v102[0] = v86;
  centerYAnchor = [v24 centerYAnchor];
  view8 = [(CARTemplateUIHostDashboardViewController *)self view];
  centerYAnchor2 = [view8 centerYAnchor];
  v78 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v102[1] = v78;
  v96 = v15;
  topAnchor = [v15 topAnchor];
  bottomAnchor = [v14 bottomAnchor];
  v72 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v102[2] = v72;
  topAnchor2 = [v18 topAnchor];
  v97 = v14;
  bottomAnchor2 = [v14 bottomAnchor];
  v66 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
  v102[3] = v66;
  topAnchor3 = [v21 topAnchor];
  bottomAnchor3 = [v14 bottomAnchor];
  v60 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v102[4] = v60;
  v26 = v24;
  bottomAnchor4 = [v24 bottomAnchor];
  bottomAnchor5 = [v21 bottomAnchor];
  v54 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v102[5] = v54;
  leftAnchor = [v15 leftAnchor];
  v98 = v24;
  leftAnchor2 = [v24 leftAnchor];
  v48 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v102[6] = v48;
  rightAnchor = [v15 rightAnchor];
  v95 = v18;
  leftAnchor3 = [v18 leftAnchor];
  v28 = [rightAnchor constraintEqualToAnchor:leftAnchor3 constant:-5.0];
  v102[7] = v28;
  rightAnchor2 = [v18 rightAnchor];
  v30 = v21;
  v94 = v21;
  leftAnchor4 = [v21 leftAnchor];
  v32 = [rightAnchor2 constraintEqualToAnchor:leftAnchor4 constant:-5.0];
  v102[8] = v32;
  rightAnchor3 = [v30 rightAnchor];
  rightAnchor4 = [v26 rightAnchor];
  v35 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v102[9] = v35;
  v36 = [NSArray arrayWithObjects:v102 count:10];
  [NSLayoutConstraint activateConstraints:v36];

  topAnchor4 = [v99 topAnchor];
  view9 = [(CARTemplateUIHostDashboardViewController *)self view];
  safeAreaLayoutGuide = [view9 safeAreaLayoutGuide];
  topAnchor5 = [safeAreaLayoutGuide topAnchor];
  v85 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v101[0] = v85;
  leftAnchor5 = [v99 leftAnchor];
  view10 = [(CARTemplateUIHostDashboardViewController *)self view];
  safeAreaLayoutGuide2 = [view10 safeAreaLayoutGuide];
  leftAnchor6 = [safeAreaLayoutGuide2 leftAnchor];
  v75 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  v101[1] = v75;
  rightAnchor5 = [v99 rightAnchor];
  view11 = [(CARTemplateUIHostDashboardViewController *)self view];
  safeAreaLayoutGuide3 = [view11 safeAreaLayoutGuide];
  rightAnchor6 = [safeAreaLayoutGuide3 rightAnchor];
  v65 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  v101[2] = v65;
  bottomAnchor6 = [v99 bottomAnchor];
  view12 = [(CARTemplateUIHostDashboardViewController *)self view];
  safeAreaLayoutGuide4 = [view12 safeAreaLayoutGuide];
  bottomAnchor7 = [safeAreaLayoutGuide4 bottomAnchor];
  v55 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v101[3] = v55;
  centerXAnchor3 = [v97 centerXAnchor];
  centerXAnchor4 = [v99 centerXAnchor];
  v49 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v101[4] = v49;
  topAnchor6 = [v97 topAnchor];
  topAnchor7 = [v98 topAnchor];
  v39 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  v101[5] = v39;
  leftAnchor7 = [v97 leftAnchor];
  leftAnchor8 = [v99 leftAnchor];
  v42 = [leftAnchor7 constraintLessThanOrEqualToAnchor:leftAnchor8 constant:4.0];
  v101[6] = v42;
  rightAnchor7 = [v97 rightAnchor];
  rightAnchor8 = [v99 rightAnchor];
  v45 = [rightAnchor7 constraintLessThanOrEqualToAnchor:rightAnchor8 constant:-4.0];
  v101[7] = v45;
  v46 = [NSArray arrayWithObjects:v101 count:8];
  [NSLayoutConstraint activateConstraints:v46];
}

- (void)_button1Triggered
{
  safeView = [(CARTemplateUIHostDashboardViewController *)self safeView];
  v2 = +[UIColor redColor];
  [safeView setBackgroundColor:v2];
}

- (void)_button2Triggered
{
  safeView = [(CARTemplateUIHostDashboardViewController *)self safeView];
  v2 = +[UIColor blueColor];
  [safeView setBackgroundColor:v2];
}

- (void)_button3Triggered
{
  objc_opt_class();
  view = [(CARTemplateUIHostDashboardViewController *)self view];
  window = [view window];
  if (window && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = window;
  }

  else
  {
    v8 = 0;
  }

  button1 = [(CARTemplateUIHostDashboardViewController *)self button1];
  [button1 setHidden:1];

  button2 = [(CARTemplateUIHostDashboardViewController *)self button2];
  [button2 setHidden:1];

  button3 = [(CARTemplateUIHostDashboardViewController *)self button3];
  [button3 setHidden:1];

  [v8 setFocusableViews:&__NSArray0__struct];
}

@end
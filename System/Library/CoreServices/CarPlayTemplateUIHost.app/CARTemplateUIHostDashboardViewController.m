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
  v3 = [(CARTemplateUIHostDashboardViewController *)self view];
  v4 = +[UIColor redColor];
  [v3 setBackgroundColor:v4];

  v5 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = +[UIColor blueColor];
  [v9 setBackgroundColor:v10];

  v11 = [(CARTemplateUIHostDashboardViewController *)self view];
  [v11 addSubview:v9];

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
  v16 = [(CARTemplateUIHostDashboardViewController *)self view];
  [v16 addSubview:v15];

  v17 = +[UIColor yellowColor];
  [v15 setTintColor:v17];

  v18 = [CARTemplateUIDashboardButton buttonWithType:1];
  [v18 addTarget:self action:"_button2Triggered" forControlEvents:0x2000];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setTitle:@"2" forState:0];
  [v18 sizeToFit];
  [(CARTemplateUIHostDashboardViewController *)self setButton2:v18];
  v19 = [(CARTemplateUIHostDashboardViewController *)self view];
  [v19 addSubview:v18];

  v20 = +[UIColor yellowColor];
  [v18 setTintColor:v20];

  v21 = [CARTemplateUIDashboardButton buttonWithType:1];
  [v21 addTarget:self action:"_button3Triggered" forControlEvents:0x2000];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setTitle:@"3" forState:0];
  [v21 sizeToFit];
  [(CARTemplateUIHostDashboardViewController *)self setButton3:v21];
  v22 = [(CARTemplateUIHostDashboardViewController *)self view];
  [v22 addSubview:v21];

  v23 = +[UIColor yellowColor];
  [v21 setTintColor:v23];

  v24 = objc_alloc_init(UILayoutGuide);
  v25 = [(CARTemplateUIHostDashboardViewController *)self view];
  [v25 addLayoutGuide:v24];

  v90 = [v24 centerXAnchor];
  v92 = [(CARTemplateUIHostDashboardViewController *)self view];
  v88 = [v92 centerXAnchor];
  v86 = [v90 constraintEqualToAnchor:v88];
  v102[0] = v86;
  v82 = [v24 centerYAnchor];
  v84 = [(CARTemplateUIHostDashboardViewController *)self view];
  v80 = [v84 centerYAnchor];
  v78 = [v82 constraintEqualToAnchor:v80];
  v102[1] = v78;
  v96 = v15;
  v76 = [v15 topAnchor];
  v74 = [v14 bottomAnchor];
  v72 = [v76 constraintEqualToAnchor:v74];
  v102[2] = v72;
  v70 = [v18 topAnchor];
  v97 = v14;
  v68 = [v14 bottomAnchor];
  v66 = [v70 constraintEqualToAnchor:v68];
  v102[3] = v66;
  v64 = [v21 topAnchor];
  v62 = [v14 bottomAnchor];
  v60 = [v64 constraintEqualToAnchor:v62];
  v102[4] = v60;
  v26 = v24;
  v58 = [v24 bottomAnchor];
  v56 = [v21 bottomAnchor];
  v54 = [v58 constraintEqualToAnchor:v56];
  v102[5] = v54;
  v52 = [v15 leftAnchor];
  v98 = v24;
  v50 = [v24 leftAnchor];
  v48 = [v52 constraintEqualToAnchor:v50];
  v102[6] = v48;
  v47 = [v15 rightAnchor];
  v95 = v18;
  v27 = [v18 leftAnchor];
  v28 = [v47 constraintEqualToAnchor:v27 constant:-5.0];
  v102[7] = v28;
  v29 = [v18 rightAnchor];
  v30 = v21;
  v94 = v21;
  v31 = [v21 leftAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:-5.0];
  v102[8] = v32;
  v33 = [v30 rightAnchor];
  v34 = [v26 rightAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  v102[9] = v35;
  v36 = [NSArray arrayWithObjects:v102 count:10];
  [NSLayoutConstraint activateConstraints:v36];

  v91 = [v99 topAnchor];
  v93 = [(CARTemplateUIHostDashboardViewController *)self view];
  v89 = [v93 safeAreaLayoutGuide];
  v87 = [v89 topAnchor];
  v85 = [v91 constraintEqualToAnchor:v87];
  v101[0] = v85;
  v81 = [v99 leftAnchor];
  v83 = [(CARTemplateUIHostDashboardViewController *)self view];
  v79 = [v83 safeAreaLayoutGuide];
  v77 = [v79 leftAnchor];
  v75 = [v81 constraintEqualToAnchor:v77];
  v101[1] = v75;
  v71 = [v99 rightAnchor];
  v73 = [(CARTemplateUIHostDashboardViewController *)self view];
  v69 = [v73 safeAreaLayoutGuide];
  v67 = [v69 rightAnchor];
  v65 = [v71 constraintEqualToAnchor:v67];
  v101[2] = v65;
  v61 = [v99 bottomAnchor];
  v63 = [(CARTemplateUIHostDashboardViewController *)self view];
  v59 = [v63 safeAreaLayoutGuide];
  v57 = [v59 bottomAnchor];
  v55 = [v61 constraintEqualToAnchor:v57];
  v101[3] = v55;
  v53 = [v97 centerXAnchor];
  v51 = [v99 centerXAnchor];
  v49 = [v53 constraintEqualToAnchor:v51];
  v101[4] = v49;
  v37 = [v97 topAnchor];
  v38 = [v98 topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  v101[5] = v39;
  v40 = [v97 leftAnchor];
  v41 = [v99 leftAnchor];
  v42 = [v40 constraintLessThanOrEqualToAnchor:v41 constant:4.0];
  v101[6] = v42;
  v43 = [v97 rightAnchor];
  v44 = [v99 rightAnchor];
  v45 = [v43 constraintLessThanOrEqualToAnchor:v44 constant:-4.0];
  v101[7] = v45;
  v46 = [NSArray arrayWithObjects:v101 count:8];
  [NSLayoutConstraint activateConstraints:v46];
}

- (void)_button1Triggered
{
  v3 = [(CARTemplateUIHostDashboardViewController *)self safeView];
  v2 = +[UIColor redColor];
  [v3 setBackgroundColor:v2];
}

- (void)_button2Triggered
{
  v3 = [(CARTemplateUIHostDashboardViewController *)self safeView];
  v2 = +[UIColor blueColor];
  [v3 setBackgroundColor:v2];
}

- (void)_button3Triggered
{
  objc_opt_class();
  v3 = [(CARTemplateUIHostDashboardViewController *)self view];
  v4 = [v3 window];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v5 = [(CARTemplateUIHostDashboardViewController *)self button1];
  [v5 setHidden:1];

  v6 = [(CARTemplateUIHostDashboardViewController *)self button2];
  [v6 setHidden:1];

  v7 = [(CARTemplateUIHostDashboardViewController *)self button3];
  [v7 setHidden:1];

  [v8 setFocusableViews:&__NSArray0__struct];
}

@end
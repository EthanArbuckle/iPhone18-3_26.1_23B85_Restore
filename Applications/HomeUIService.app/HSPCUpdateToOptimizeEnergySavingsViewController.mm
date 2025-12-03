@interface HSPCUpdateToOptimizeEnergySavingsViewController
+ (id)_createCenterContentView;
- (HSPCUpdateToOptimizeEnergySavingsViewController)initWithCoordinator:(id)coordinator config:(id)config;
@end

@implementation HSPCUpdateToOptimizeEnergySavingsViewController

- (HSPCUpdateToOptimizeEnergySavingsViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v8 = +[HSPCUpdateToOptimizeEnergySavingsViewController _createCenterContentView];
  v15.receiver = self;
  v15.super_class = HSPCUpdateToOptimizeEnergySavingsViewController;
  v9 = [(HSPCFixedSizeCenterContentViewController *)&v15 initWithCenterContentView:v8 size:1 pinSides:180.0, 180.0];

  if (v9)
  {
    v10 = sub_100063A44(@"HSThermostatUnqualifiedHome_Title");
    [(HSPCUpdateToOptimizeEnergySavingsViewController *)v9 setTitle:v10];

    v11 = sub_100063A44(@"HSThermostatUnqualifiedHome_TopDescription");
    [(HSPCUpdateToOptimizeEnergySavingsViewController *)v9 setSubtitle:v11];

    [(HSPCUpdateToOptimizeEnergySavingsViewController *)v9 setCoordinator:coordinatorCopy];
    [(HSPCUpdateToOptimizeEnergySavingsViewController *)v9 setConfig:configCopy];
    v12 = sub_100063A44(@"HSThermostatUnqualifiedHome_Continue");
    v13 = [(HSPCUpdateToOptimizeEnergySavingsViewController *)v9 addProminentButtonWithTitleKey:v12 target:v9 futureSelector:"commitConfiguration"];
  }

  return v9;
}

+ (id)_createCenterContentView
{
  v2 = [UIImageView alloc];
  v3 = [UIImage systemImageNamed:@"moon.stars.fill"];
  v4 = [v2 initWithImage:v3];

  v5 = +[UIColor orangeColor];
  [v4 setTintColor:v5];

  v6 = [UIImageView alloc];
  v7 = [UIImage systemImageNamed:@"house.fill"];
  v8 = [v6 initWithImage:v7];

  v9 = +[UIColor orangeColor];
  [v8 setTintColor:v9];

  v10 = [UIImageView alloc];
  v11 = [UIImage systemImageNamed:@"figure.walk.departure"];
  v12 = [v10 initWithImage:v11];

  v13 = +[UIColor orangeColor];
  [v12 setTintColor:v13];

  v14 = [UIImageView alloc];
  v15 = [UIImage systemImageNamed:@"clock.fill"];
  v16 = [v14 initWithImage:v15];

  v17 = +[UIColor orangeColor];
  [v16 setTintColor:v17];

  v18 = [UIStackView alloc];
  v58[0] = v4;
  v58[1] = v8;
  v58[2] = v12;
  v58[3] = v16;
  v19 = v16;
  v20 = [NSArray arrayWithObjects:v58 count:4];
  v21 = [v18 initWithArrangedSubviews:v20];

  [v21 setAxis:0];
  [v21 setDistribution:3];
  v22 = v21;
  [v21 setSpacing:6.0];
  v23 = [PRXLabel labelWithStyle:1];
  v24 = sub_100063A44(@"HSThermostatUnqualifiedHome_BottomDescription");
  v55 = v23;
  [v23 setText:v24];

  v25 = [UIStackView alloc];
  v57[0] = v22;
  v57[1] = v23;
  v26 = v22;
  v54 = v22;
  v27 = [NSArray arrayWithObjects:v57 count:2];
  v28 = [v25 initWithArrangedSubviews:v27];

  [v28 setAxis:1];
  [v28 setAlignment:3];
  v40 = v28;
  [v28 setSpacing:8.0];
  heightAnchor = [v26 heightAnchor];
  v51 = [heightAnchor constraintEqualToConstant:56.0];
  v56[0] = v51;
  v53 = v4;
  heightAnchor2 = [v4 heightAnchor];
  v48 = [heightAnchor2 constraintEqualToConstant:56.0];
  v56[1] = v48;
  widthAnchor = [v4 widthAnchor];
  v46 = [widthAnchor constraintEqualToConstant:56.0];
  v56[2] = v46;
  v49 = v8;
  heightAnchor3 = [v8 heightAnchor];
  v43 = [heightAnchor3 constraintEqualToConstant:56.0];
  v56[3] = v43;
  widthAnchor2 = [v8 widthAnchor];
  v29 = [widthAnchor2 constraintEqualToConstant:56.0];
  v56[4] = v29;
  v45 = v12;
  heightAnchor4 = [v12 heightAnchor];
  v31 = [heightAnchor4 constraintEqualToConstant:56.0];
  v56[5] = v31;
  widthAnchor3 = [v12 widthAnchor];
  v33 = [widthAnchor3 constraintEqualToConstant:56.0];
  v56[6] = v33;
  v42 = v19;
  heightAnchor5 = [v19 heightAnchor];
  v35 = [heightAnchor5 constraintEqualToConstant:56.0];
  v56[7] = v35;
  widthAnchor4 = [v19 widthAnchor];
  v37 = [widthAnchor4 constraintEqualToConstant:56.0];
  v56[8] = v37;
  v38 = [NSArray arrayWithObjects:v56 count:9];
  [NSLayoutConstraint activateConstraints:v38];

  return v40;
}

@end
@interface BuddyMigrationBaseDisconnectController
- (BuddyMigrationBaseDisconnectController)initWithConnectionType:(int64_t)a3 featureFlags:(id)a4 deviceProvider:(id)a5;
- (void)_setupSolariumViewLabel;
- (void)viewDidLoad;
@end

@implementation BuddyMigrationBaseDisconnectController

- (BuddyMigrationBaseDisconnectController)initWithConnectionType:(int64_t)a3 featureFlags:(id)a4 deviceProvider:(id)a5
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  objc_storeStrong(v21 + 4, location);
  if (v19 == 1)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"MIGRATION_DISCONNECT_TITLE_WIRED" value:&stru_10032F900 table:@"Migration"];
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"MIGRATION_DISCONNECT_TITLE_WIRELESS" value:&stru_10032F900 table:@"Migration"];
  }

  v8 = *(v21 + 3);
  *(v21 + 3) = v7;

  if ([location isSolariumEnabled])
  {
    if ([v17 type] == 1)
    {
      objc_storeStrong(v21 + 2, @"ipad.badge.exclamationmark");
    }

    else
    {
      objc_storeStrong(v21 + 2, @"iphone.badge.exclamationmark");
    }

    v9 = v21;
    v21 = 0;
    v16.receiver = v9;
    v16.super_class = BuddyMigrationBaseDisconnectController;
    v21 = [(BuddyMigrationBaseDisconnectController *)&v16 initWithTitle:&stru_10032F900 detailText:0 icon:0];
    objc_storeStrong(&v21, v21);
  }

  else
  {
    v10 = v21;
    v11 = *(v21 + 3);
    v12 = [UIImage imageNamed:@"Alert Icon"];
    v21 = 0;
    v15.receiver = v10;
    v15.super_class = BuddyMigrationBaseDisconnectController;
    v21 = [(BuddyMigrationBaseDisconnectController *)&v15 initWithTitle:v11 detailText:0 icon:v12];
    objc_storeStrong(&v21, v21);
  }

  v13 = v21;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v21, 0);
  return v13;
}

- (void)viewDidLoad
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyMigrationBaseDisconnectController;
  [(BuddyMigrationBaseDisconnectController *)&v7 viewDidLoad];
  v2 = [(BuddyMigrationBaseDisconnectController *)v9 headerView];
  [v2 setIconInheritsTint:1];

  v3 = +[UIColor redColor];
  v4 = [(BuddyMigrationBaseDisconnectController *)v9 headerView];
  [v4 setTintColor:v3];

  v5 = [(BuddyMigrationBaseDisconnectController *)v9 navigationItem];
  [v5 setHidesBackButton:1];

  v6 = [(BuddyMigrationBaseDisconnectController *)v9 featureFlags];
  LOBYTE(v4) = [(BuddyFeatureFlags *)v6 isSolariumEnabled];

  if (v4)
  {
    [(BuddyMigrationBaseDisconnectController *)v9 _setupSolariumViewLabel];
  }
}

- (void)_setupSolariumViewLabel
{
  v69 = self;
  v68 = a2;
  v2 = [(BuddyMigrationBaseDisconnectController *)self text];
  v66 = 0;
  v3 = 0;
  if (v2)
  {
    v67 = [(BuddyMigrationBaseDisconnectController *)v69 imageName];
    v66 = 1;
    v3 = v67 != 0;
  }

  if (v66)
  {
  }

  if (v3)
  {
    v65 = objc_alloc_init(UIView);
    [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [(BuddyMigrationBaseDisconnectController *)v69 view];
    [v4 addSubview:v65];

    v64 = +[UIColor labelColor];
    v63 = +[UIColor redColor];
    v71[0] = v63;
    v71[1] = v64;
    v5 = [NSArray arrayWithObjects:v71 count:2];
    v62 = [UIImageSymbolConfiguration configurationWithPaletteColors:v5];

    v6 = [(BuddyMigrationBaseDisconnectController *)v69 imageName];
    v61 = [UIImage systemImageNamed:v6 withConfiguration:v62];

    v60 = [[UIImageView alloc] initWithImage:v61];
    [v60 setContentMode:2];
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    location = objc_alloc_init(UILabel);
    [location setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(BuddyMigrationBaseDisconnectController *)v69 text];
    [location setText:v7];

    [location setNumberOfLines:0];
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [location setFont:v8];

    [location setTextAlignment:1];
    LODWORD(v9) = 1148846080;
    [location setContentHuggingPriority:1 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [location setContentCompressionResistancePriority:1 forAxis:v10];
    [v65 addSubview:v60];
    [v65 addSubview:location];
    v57 = [v65 leadingAnchor];
    v58 = [(BuddyMigrationBaseDisconnectController *)v69 view];
    v56 = [v58 leadingAnchor];
    v55 = [v57 constraintGreaterThanOrEqualToAnchor:?];
    v70[0] = v55;
    v53 = [v65 trailingAnchor];
    v54 = [(BuddyMigrationBaseDisconnectController *)v69 view];
    v52 = [v54 trailingAnchor];
    v51 = [v53 constraintLessThanOrEqualToAnchor:?];
    v70[1] = v51;
    v49 = [v65 topAnchor];
    v50 = [(BuddyMigrationBaseDisconnectController *)v69 view];
    v48 = [v50 topAnchor];
    v47 = [v49 constraintGreaterThanOrEqualToAnchor:?];
    v70[2] = v47;
    v45 = [v65 bottomAnchor];
    v46 = [(BuddyMigrationBaseDisconnectController *)v69 view];
    v44 = [v46 bottomAnchor];
    v43 = [v45 constraintLessThanOrEqualToAnchor:?];
    v70[3] = v43;
    v41 = [v65 centerYAnchor];
    v42 = [(BuddyMigrationBaseDisconnectController *)v69 view];
    v40 = [v42 centerYAnchor];
    v39 = [v41 constraintEqualToAnchor:?];
    v70[4] = v39;
    v37 = [v65 centerXAnchor];
    v38 = [(BuddyMigrationBaseDisconnectController *)v69 view];
    v36 = [v38 centerXAnchor];
    v35 = [v37 constraintEqualToAnchor:?];
    v70[5] = v35;
    v34 = [v60 heightAnchor];
    v33 = [v34 constraintEqualToConstant:82.0];
    v70[6] = v33;
    v32 = [v60 topAnchor];
    v31 = [v65 topAnchor];
    v30 = [v32 constraintEqualToAnchor:?];
    v70[7] = v30;
    v29 = [location topAnchor];
    v28 = [v60 bottomAnchor];
    v27 = [v29 constraintEqualToAnchor:12.0 constant:?];
    v70[8] = v27;
    v26 = [location bottomAnchor];
    v25 = [v65 bottomAnchor];
    v24 = [v26 constraintEqualToAnchor:?];
    v70[9] = v24;
    v23 = [location leadingAnchor];
    v22 = [v65 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:?];
    v70[10] = v21;
    v11 = [location trailingAnchor];
    v12 = [v65 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v70[11] = v13;
    v14 = [v60 centerXAnchor];
    v15 = [v65 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v70[12] = v16;
    v17 = [location centerXAnchor];
    v18 = [v65 centerXAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v70[13] = v19;
    v20 = [NSArray arrayWithObjects:v70 count:14];
    [NSLayoutConstraint activateConstraints:v20];

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v63, 0);
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
  }
}

@end
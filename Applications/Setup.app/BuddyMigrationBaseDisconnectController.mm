@interface BuddyMigrationBaseDisconnectController
- (BuddyMigrationBaseDisconnectController)initWithConnectionType:(int64_t)type featureFlags:(id)flags deviceProvider:(id)provider;
- (void)_setupSolariumViewLabel;
- (void)viewDidLoad;
@end

@implementation BuddyMigrationBaseDisconnectController

- (BuddyMigrationBaseDisconnectController)initWithConnectionType:(int64_t)type featureFlags:(id)flags deviceProvider:(id)provider
{
  selfCopy = self;
  v20 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, flags);
  v17 = 0;
  objc_storeStrong(&v17, provider);
  objc_storeStrong(selfCopy + 4, location);
  if (typeCopy == 1)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"MIGRATION_DISCONNECT_TITLE_WIRED" value:&stru_10032F900 table:@"Migration"];
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v7 = [(NSBundle *)v6 localizedStringForKey:@"MIGRATION_DISCONNECT_TITLE_WIRELESS" value:&stru_10032F900 table:@"Migration"];
  }

  v8 = *(selfCopy + 3);
  *(selfCopy + 3) = v7;

  if ([location isSolariumEnabled])
  {
    if ([v17 type] == 1)
    {
      objc_storeStrong(selfCopy + 2, @"ipad.badge.exclamationmark");
    }

    else
    {
      objc_storeStrong(selfCopy + 2, @"iphone.badge.exclamationmark");
    }

    v9 = selfCopy;
    selfCopy = 0;
    v16.receiver = v9;
    v16.super_class = BuddyMigrationBaseDisconnectController;
    selfCopy = [(BuddyMigrationBaseDisconnectController *)&v16 initWithTitle:&stru_10032F900 detailText:0 icon:0];
    objc_storeStrong(&selfCopy, selfCopy);
  }

  else
  {
    v10 = selfCopy;
    v11 = *(selfCopy + 3);
    v12 = [UIImage imageNamed:@"Alert Icon"];
    selfCopy = 0;
    v15.receiver = v10;
    v15.super_class = BuddyMigrationBaseDisconnectController;
    selfCopy = [(BuddyMigrationBaseDisconnectController *)&v15 initWithTitle:v11 detailText:0 icon:v12];
    objc_storeStrong(&selfCopy, selfCopy);
  }

  v13 = selfCopy;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyMigrationBaseDisconnectController;
  [(BuddyMigrationBaseDisconnectController *)&v7 viewDidLoad];
  headerView = [(BuddyMigrationBaseDisconnectController *)selfCopy headerView];
  [headerView setIconInheritsTint:1];

  v3 = +[UIColor redColor];
  headerView2 = [(BuddyMigrationBaseDisconnectController *)selfCopy headerView];
  [headerView2 setTintColor:v3];

  navigationItem = [(BuddyMigrationBaseDisconnectController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  featureFlags = [(BuddyMigrationBaseDisconnectController *)selfCopy featureFlags];
  LOBYTE(headerView2) = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled];

  if (headerView2)
  {
    [(BuddyMigrationBaseDisconnectController *)selfCopy _setupSolariumViewLabel];
  }
}

- (void)_setupSolariumViewLabel
{
  selfCopy = self;
  v68 = a2;
  text = [(BuddyMigrationBaseDisconnectController *)self text];
  v66 = 0;
  v3 = 0;
  if (text)
  {
    imageName = [(BuddyMigrationBaseDisconnectController *)selfCopy imageName];
    v66 = 1;
    v3 = imageName != 0;
  }

  if (v66)
  {
  }

  if (v3)
  {
    v65 = objc_alloc_init(UIView);
    [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(BuddyMigrationBaseDisconnectController *)selfCopy view];
    [view addSubview:v65];

    v64 = +[UIColor labelColor];
    v63 = +[UIColor redColor];
    v71[0] = v63;
    v71[1] = v64;
    v5 = [NSArray arrayWithObjects:v71 count:2];
    v62 = [UIImageSymbolConfiguration configurationWithPaletteColors:v5];

    imageName2 = [(BuddyMigrationBaseDisconnectController *)selfCopy imageName];
    v61 = [UIImage systemImageNamed:imageName2 withConfiguration:v62];

    v60 = [[UIImageView alloc] initWithImage:v61];
    [v60 setContentMode:2];
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    location = objc_alloc_init(UILabel);
    [location setTranslatesAutoresizingMaskIntoConstraints:0];
    text2 = [(BuddyMigrationBaseDisconnectController *)selfCopy text];
    [location setText:text2];

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
    leadingAnchor = [v65 leadingAnchor];
    view2 = [(BuddyMigrationBaseDisconnectController *)selfCopy view];
    leadingAnchor2 = [view2 leadingAnchor];
    v55 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:?];
    v70[0] = v55;
    trailingAnchor = [v65 trailingAnchor];
    view3 = [(BuddyMigrationBaseDisconnectController *)selfCopy view];
    trailingAnchor2 = [view3 trailingAnchor];
    v51 = [trailingAnchor constraintLessThanOrEqualToAnchor:?];
    v70[1] = v51;
    topAnchor = [v65 topAnchor];
    view4 = [(BuddyMigrationBaseDisconnectController *)selfCopy view];
    topAnchor2 = [view4 topAnchor];
    v47 = [topAnchor constraintGreaterThanOrEqualToAnchor:?];
    v70[2] = v47;
    bottomAnchor = [v65 bottomAnchor];
    view5 = [(BuddyMigrationBaseDisconnectController *)selfCopy view];
    bottomAnchor2 = [view5 bottomAnchor];
    v43 = [bottomAnchor constraintLessThanOrEqualToAnchor:?];
    v70[3] = v43;
    centerYAnchor = [v65 centerYAnchor];
    view6 = [(BuddyMigrationBaseDisconnectController *)selfCopy view];
    centerYAnchor2 = [view6 centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:?];
    v70[4] = v39;
    centerXAnchor = [v65 centerXAnchor];
    view7 = [(BuddyMigrationBaseDisconnectController *)selfCopy view];
    centerXAnchor2 = [view7 centerXAnchor];
    v35 = [centerXAnchor constraintEqualToAnchor:?];
    v70[5] = v35;
    heightAnchor = [v60 heightAnchor];
    v33 = [heightAnchor constraintEqualToConstant:82.0];
    v70[6] = v33;
    topAnchor3 = [v60 topAnchor];
    topAnchor4 = [v65 topAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:?];
    v70[7] = v30;
    topAnchor5 = [location topAnchor];
    bottomAnchor3 = [v60 bottomAnchor];
    v27 = [topAnchor5 constraintEqualToAnchor:12.0 constant:?];
    v70[8] = v27;
    bottomAnchor4 = [location bottomAnchor];
    bottomAnchor5 = [v65 bottomAnchor];
    v24 = [bottomAnchor4 constraintEqualToAnchor:?];
    v70[9] = v24;
    leadingAnchor3 = [location leadingAnchor];
    leadingAnchor4 = [v65 leadingAnchor];
    v21 = [leadingAnchor3 constraintEqualToAnchor:?];
    v70[10] = v21;
    trailingAnchor3 = [location trailingAnchor];
    trailingAnchor4 = [v65 trailingAnchor];
    v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v70[11] = v13;
    centerXAnchor3 = [v60 centerXAnchor];
    centerXAnchor4 = [v65 centerXAnchor];
    v16 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v70[12] = v16;
    centerXAnchor5 = [location centerXAnchor];
    centerXAnchor6 = [v65 centerXAnchor];
    v19 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
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
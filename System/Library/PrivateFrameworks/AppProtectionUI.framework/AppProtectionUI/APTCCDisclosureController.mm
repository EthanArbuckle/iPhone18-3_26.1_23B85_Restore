@interface APTCCDisclosureController
- (APTCCDisclosureController)initWithApplication:(id)application users:(id)users includeDoneButton:(BOOL)button scrollViewAssistant:(id)assistant;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setScrollContentInsets;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation APTCCDisclosureController

- (APTCCDisclosureController)initWithApplication:(id)application users:(id)users includeDoneButton:(BOOL)button scrollViewAssistant:(id)assistant
{
  buttonCopy = button;
  v60[2] = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  usersCopy = users;
  usersCopy2 = users;
  assistantCopy = assistant;
  assistantCopy2 = assistant;
  v54 = [applicationCopy findApplicationRecordWithError:0];
  localizedName = [v54 localizedName];
  v11 = APGetPreferredAuthenticationMechanism() - 1;
  if (v11 >= 3)
  {
    v13 = APUIDefaultFrameworkLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [APTCCDisclosureController initWithApplication:v13 users:? includeDoneButton:? scrollViewAssistant:?];
    }

    v12 = @"TCC_ACCESS_HEADER_FMT_PASSCODE";
  }

  else
  {
    v12 = off_1E7A42008[v11];
  }

  v14 = APUIFrameworkBundle();
  v15 = [v14 localizedStringForKey:v12 value:&stru_1F2485CF8 table:@"Localizable"];

  v53 = localizedName;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, localizedName];

  v17 = MEMORY[0x1E696AEC0];
  v18 = APGetPreferredAuthenticationMechanismLocKey();
  v19 = [v17 stringWithFormat:@"TCC_ACCESS_DETAIL_FMT_%@", v18];
  v20 = APUILocStr(v19);

  v59.receiver = self;
  v59.super_class = APTCCDisclosureController;
  v21 = [(OBTableWelcomeController *)&v59 initWithTitle:v16 detailText:v20 icon:0 adoptTableViewScrollView:1];

  v22 = [APSymbolBadgedAppIconView alloc];
  +[APSymbolBadgedAppIconView metricsForEducation];
  v57 = applicationCopy;
  v23 = [(APSymbolBadgedAppIconView *)v22 initWithApplication:applicationCopy symbolType:@"com.apple.appprotection.lock.education" metrics:v58];
  [(APSymbolBadgedAppIconView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  headerView = [(APTCCDisclosureController *)v21 headerView];
  customIconContainerView = [headerView customIconContainerView];
  [customIconContainerView setClipsToBounds:0];

  headerView2 = [(APTCCDisclosureController *)v21 headerView];
  customIconContainerView2 = [headerView2 customIconContainerView];
  [customIconContainerView2 addSubview:v23];

  v49 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(APSymbolBadgedAppIconView *)v23 centerXAnchor];
  headerView3 = [(APTCCDisclosureController *)v21 headerView];
  customIconContainerView3 = [headerView3 customIconContainerView];
  centerXAnchor2 = [customIconContainerView3 centerXAnchor];
  v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v60[0] = v30;
  v52 = v23;
  centerYAnchor = [(APSymbolBadgedAppIconView *)v23 centerYAnchor];
  headerView4 = [(APTCCDisclosureController *)v21 headerView];
  customIconContainerView4 = [headerView4 customIconContainerView];
  centerYAnchor2 = [customIconContainerView4 centerYAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v60[1] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  [v49 activateConstraints:v36];

  if (v21)
  {
    objc_storeStrong(&v21->_app, application);
    objc_storeStrong(&v21->_scrollViewAssistant, assistantCopy);
    objc_storeStrong(&v21->_users, usersCopy);
    if (buttonCopy)
    {
      boldButton = [MEMORY[0x1E69B7D00] boldButton];
      doneButton = v21->_doneButton;
      v21->_doneButton = boldButton;

      v39 = v21->_doneButton;
      v40 = APUIFrameworkBundle();
      v41 = [v40 localizedStringForKey:@"DONE" value:&stru_1F2485CF8 table:@"Localizable"];
      [(OBBoldTrayButton *)v39 setTitle:v41 forState:0];

      buttonTray = [(APTCCDisclosureController *)v21 buttonTray];
      [buttonTray addButton:v21->_doneButton];
    }
  }

  v43 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = APTCCDisclosureController;
  [(OBTableWelcomeController *)&v12 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"APTCCDisclosureCell"];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDataSource:self];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [tableView4 setBackgroundColor:clearColor];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setBackgroundView:0];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(OBTableWelcomeController *)self tableView];
  v7 = [tableView dequeueReusableCellWithIdentifier:@"APTCCDisclosureCell"];

  users = self->_users;
  v9 = [pathCopy row];

  v10 = [(NSArray *)users objectAtIndex:v9];
  [v7 configureForRecord:v10];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_users count];
  }
}

- (void)setScrollContentInsets
{
  scrollViewAssistant = self->_scrollViewAssistant;
  scrollView = [(OBTableWelcomeController *)self scrollView];
  [(APButtonTrayScrollViewAssistant *)scrollViewAssistant performAdjustmentsForScrollView:scrollView];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = APTCCDisclosureController;
  [(OBTableWelcomeController *)&v3 viewDidLayoutSubviews];
  [(APTCCDisclosureController *)self setScrollContentInsets];
}

@end
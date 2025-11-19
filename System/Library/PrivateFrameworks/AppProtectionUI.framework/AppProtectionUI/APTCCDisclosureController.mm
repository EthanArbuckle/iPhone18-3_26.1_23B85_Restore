@interface APTCCDisclosureController
- (APTCCDisclosureController)initWithApplication:(id)a3 users:(id)a4 includeDoneButton:(BOOL)a5 scrollViewAssistant:(id)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setScrollContentInsets;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation APTCCDisclosureController

- (APTCCDisclosureController)initWithApplication:(id)a3 users:(id)a4 includeDoneButton:(BOOL)a5 scrollViewAssistant:(id)a6
{
  v48 = a5;
  v60[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v47 = a4;
  v56 = a4;
  v46 = a6;
  v55 = a6;
  v54 = [v9 findApplicationRecordWithError:0];
  v10 = [v54 localizedName];
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

  v53 = v10;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, v10];

  v17 = MEMORY[0x1E696AEC0];
  v18 = APGetPreferredAuthenticationMechanismLocKey();
  v19 = [v17 stringWithFormat:@"TCC_ACCESS_DETAIL_FMT_%@", v18];
  v20 = APUILocStr(v19);

  v59.receiver = self;
  v59.super_class = APTCCDisclosureController;
  v21 = [(OBTableWelcomeController *)&v59 initWithTitle:v16 detailText:v20 icon:0 adoptTableViewScrollView:1];

  v22 = [APSymbolBadgedAppIconView alloc];
  +[APSymbolBadgedAppIconView metricsForEducation];
  v57 = v9;
  v23 = [(APSymbolBadgedAppIconView *)v22 initWithApplication:v9 symbolType:@"com.apple.appprotection.lock.education" metrics:v58];
  [(APSymbolBadgedAppIconView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [(APTCCDisclosureController *)v21 headerView];
  v25 = [v24 customIconContainerView];
  [v25 setClipsToBounds:0];

  v26 = [(APTCCDisclosureController *)v21 headerView];
  v27 = [v26 customIconContainerView];
  [v27 addSubview:v23];

  v49 = MEMORY[0x1E696ACD8];
  v50 = [(APSymbolBadgedAppIconView *)v23 centerXAnchor];
  v51 = [(APTCCDisclosureController *)v21 headerView];
  v28 = [v51 customIconContainerView];
  v29 = [v28 centerXAnchor];
  v30 = [v50 constraintEqualToAnchor:v29];
  v60[0] = v30;
  v52 = v23;
  v31 = [(APSymbolBadgedAppIconView *)v23 centerYAnchor];
  v32 = [(APTCCDisclosureController *)v21 headerView];
  v33 = [v32 customIconContainerView];
  v34 = [v33 centerYAnchor];
  v35 = [v31 constraintEqualToAnchor:v34];
  v60[1] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  [v49 activateConstraints:v36];

  if (v21)
  {
    objc_storeStrong(&v21->_app, a3);
    objc_storeStrong(&v21->_scrollViewAssistant, v46);
    objc_storeStrong(&v21->_users, v47);
    if (v48)
    {
      v37 = [MEMORY[0x1E69B7D00] boldButton];
      doneButton = v21->_doneButton;
      v21->_doneButton = v37;

      v39 = v21->_doneButton;
      v40 = APUIFrameworkBundle();
      v41 = [v40 localizedStringForKey:@"DONE" value:&stru_1F2485CF8 table:@"Localizable"];
      [(OBBoldTrayButton *)v39 setTitle:v41 forState:0];

      v42 = [(APTCCDisclosureController *)v21 buttonTray];
      [v42 addButton:v21->_doneButton];
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

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"APTCCDisclosureCell"];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setDataSource:self];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setDelegate:self];

  v8 = [(OBTableWelcomeController *)self tableView];
  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v8 setBackgroundColor:v9];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setBackgroundView:0];

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(OBTableWelcomeController *)self tableView];
  v7 = [v6 dequeueReusableCellWithIdentifier:@"APTCCDisclosureCell"];

  users = self->_users;
  v9 = [v5 row];

  v10 = [(NSArray *)users objectAtIndex:v9];
  [v7 configureForRecord:v10];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
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
  v3 = [(OBTableWelcomeController *)self scrollView];
  [(APButtonTrayScrollViewAssistant *)scrollViewAssistant performAdjustmentsForScrollView:v3];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = APTCCDisclosureController;
  [(OBTableWelcomeController *)&v3 viewDidLayoutSubviews];
  [(APTCCDisclosureController *)self setScrollContentInsets];
}

@end
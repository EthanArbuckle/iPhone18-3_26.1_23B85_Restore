@interface COSTinkerFamilyMemberSelectionViewController
- (COSTinkerFamilyMemberSelectionViewController)init;
- (id)detailString;
- (id)familyMemberAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)titleString;
- (int64_t)logicalSectionFromSectionNumber:(int64_t)a3;
- (int64_t)sectionNumberFromSection:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)showMustUnpairFirstAlert:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation COSTinkerFamilyMemberSelectionViewController

- (COSTinkerFamilyMemberSelectionViewController)init
{
  v5.receiver = self;
  v5.super_class = COSTinkerFamilyMemberSelectionViewController;
  v2 = [(COSTinkerFamilyMemberSelectionViewController *)&v5 initWithTitle:&stru_10026E598 detailText:0 icon:0 contentLayout:3];
  v3 = v2;
  if (v2)
  {
    [(COSTinkerFamilyMemberSelectionViewController *)v2 setStyle:0];
  }

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = COSTinkerFamilyMemberSelectionViewController;
  [(COSTinkerFamilyMemberSelectionViewController *)&v8 viewDidAppear:a3];
  if (self)
  {
    v4 = self->_tableView;
    tableView = self->_tableView;
  }

  else
  {
    v4 = 0;
    tableView = 0;
  }

  v6 = tableView;
  v7 = [(UITableView *)v6 indexPathForSelectedRow];
  [(UITableView *)v4 deselectRowAtIndexPath:v7 animated:1];
}

- (int64_t)sectionNumberFromSection:(int64_t)a3
{
  v5 = 0;
  while ([(COSTinkerFamilyMemberSelectionViewController *)self logicalSectionFromSectionNumber:v5]!= a3)
  {
    if (++v5 == 3)
    {
      return 0;
    }
  }

  return v5;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_FAMILY_MEMBERS_NAV_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (id)detailString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TINKER_FAMILY_MEMBERS_DETAIL" value:&stru_10026E598 table:@"Localizable-tinker"];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[COSTinkerFamilyMemberSelectionViewController logicalSectionFromSectionNumber:](self, "logicalSectionFromSectionNumber:", [v7 section]);
  if (v8 == 2)
  {
    sub_10018C2F4(v6, self, &v15);
    v9 = v15;
  }

  else
  {
    v10 = v8 == 1;
    v11 = [(COSTinkerFamilyMemberSelectionViewController *)self familyMemberAtIndexPath:v7];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v9 = [v6 dequeueReusableCellWithIdentifier:v13];

    sub_10018B2C0(v9, v11, v10);
  }

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(COSTinkerFamilyMemberSelectionViewController *)self logicalSectionFromSectionNumber:a4];
  if (!v4)
  {
    v5 = @"TINKER_FAMILY_MEMBER_READY_FOR_SETUP_HEADER";
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = @"TINKER_FAMILY_MEMBER_ALREADY_SETUP_HEADER";
LABEL_5:
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable-tinker"];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(COSTinkerFamilyMemberSelectionViewController *)self logicalSectionFromSectionNumber:a4];
  if (v4 == 1)
  {
    v5 = @"TINKER_FAMILY_MEMBER_ALREADY_SETUP_FOOTER";
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = @"TINKER_FAMILY_MEMBER_ADD_FOOTER";
LABEL_5:
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_10026E598 table:@"Localizable-tinker"];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[COSTinkerFamilyMemberSelectionViewController logicalSectionFromSectionNumber:](self, "logicalSectionFromSectionNumber:", [v5 section]);
  if (v6 == 2)
  {
    v7 = pbb_accountsignin_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating a new family member", &v15, 2u);
    }

    v8 = [UIApp setupController];
    [v8 setTinkerFamilyMember:0];

    v9 = [(COSTinkerFamilyMemberSelectionViewController *)self delegate];
    [v9 buddyControllerDone:self nextControllerClass:objc_opt_class()];
  }

  else
  {
    v10 = v6;
    v9 = [(COSTinkerFamilyMemberSelectionViewController *)self familyMemberAtIndexPath:v5];
    if (v10 == 1)
    {
      sub_10018C4D8(self, v9, v5);
    }

    else
    {
      v11 = pbb_accountsignin_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v9 appleID];
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Selected family member -- %@", &v15, 0xCu);
      }

      v13 = [UIApp setupController];
      [v13 setTinkerFamilyMember:v9];

      v14 = [(COSTinkerFamilyMemberSelectionViewController *)self delegate];
      [v14 buddyControllerDone:self];
    }
  }
}

- (void)showMustUnpairFirstAlert:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v14 = [v5 localizedStringForKey:@"TINKER_FAMILY_MEMBER_UNPAIR_FIRST_TITLE" value:&stru_10026E598 table:@"Localizable-tinker"];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"TINKER_FAMILY_MEMBER_UNPAIR_FIRST_DETAIL" value:&stru_10026E598 table:@"Localizable-tinker"];
  v8 = [v4 firstName];

  v9 = [NSString stringWithFormat:v7, v8];

  v10 = [UIAlertController alertControllerWithTitle:v14 message:v9 preferredStyle:1];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:0];
  [v10 addAction:v13];

  [(COSTinkerFamilyMemberSelectionViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)viewDidLoad
{
  sub_10012EBBC();
  v78 = v2;
  v79 = v3;
  v5 = v4;
  v73.receiver = v4;
  v73.super_class = COSTinkerFamilyMemberSelectionViewController;
  [(COSTinkerFamilyMemberSelectionViewController *)&v73 viewDidLoad];
  v6 = [COSSelfSizingTableView alloc];
  v7 = [v5 contentView];
  [v7 bounds];
  v8 = [(COSSelfSizingTableView *)v6 initWithFrame:2 style:?];
  sub_10018BB68(v5, v8);

  v9 = [v5 contentView];
  v10 = v9;
  if (v5)
  {
    [v9 addSubview:*(v5 + 56)];

    v11 = *(v5 + 56);
  }

  else
  {
    [v9 addSubview:0];

    v11 = 0;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = [v5 contentView];
  v12 = [v65 topAnchor];
  if (v5)
  {
    sub_10012EB88();
  }

  else
  {
    v13 = 0;
  }

  v63 = v13;
  v62 = [v63 topAnchor];
  v61 = [v12 constraintEqualToAnchor:?];
  v74 = v61;
  v60 = [v5 contentView];
  v14 = [v60 bottomAnchor];
  if (v5)
  {
    sub_10012EB88();
  }

  else
  {
    v15 = 0;
  }

  v58 = v15;
  v57 = [v58 bottomAnchor];
  v56 = [v14 constraintEqualToAnchor:?];
  v75 = v56;
  v55 = [v5 contentView];
  v16 = [v55 leadingAnchor];
  if (v5)
  {
    sub_10012EB88();
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [v18 leadingAnchor];
  v54 = v16;
  v20 = [v16 constraintEqualToAnchor:v19];
  v76 = v20;
  v21 = [v5 contentView];
  v22 = [v21 trailingAnchor];
  v64 = v12;
  v59 = v14;
  if (v5)
  {
    sub_10012EB88();
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  v25 = [v24 trailingAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];
  v77 = v26;
  v27 = [NSArray arrayWithObjects:&v74 count:4];
  [NSLayoutConstraint activateConstraints:v27];

  if (v5)
  {
    v28 = &OBJC_IVAR___COSSoftwareUpdateTableView__revLockBootProgressIndicatorTotalDuration;
    [sub_10012EB7C() setScrollEnabled:0];
    v29 = *(v5 + 56);
  }

  else
  {
    [0 setScrollEnabled:0];
    v29 = 0;
    v28 = &OBJC_IVAR___COSSoftwareUpdateTableView__revLockBootProgressIndicatorTotalDuration;
  }

  v30 = v29;
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  [v30 registerClass:v31 forCellReuseIdentifier:v33];

  if (v5)
  {
    v34 = *(v5 + v28[525]);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  [v35 registerClass:objc_opt_class() forCellReuseIdentifier:@"AddNewCellIdentifier"];

  if (v5)
  {
    [sub_10012EB7C() setRowHeight:?];
    v36 = sub_10012EB7C();
  }

  else
  {
    [0 setRowHeight:UITableViewAutomaticDimension];
    v36 = 0;
  }

  [v36 setDelegate:v5];
  if (v5)
  {
    v37 = sub_10012EB7C();
  }

  else
  {
    v37 = 0;
  }

  [v37 setDataSource:v5];
  v38 = [UIApp setupController];
  v39 = [v38 activePairingDevice];

  v40 = [v39 valueForProperty:NRDevicePropertySerialNumber];
  sub_10018BB7C(v5, v40);

  v41 = [UIApp setupController];
  v42 = [v41 familyCircle];

  v43 = sub_1000093AC();
  v44 = +[NSMutableArray array];
  v45 = +[NSMutableDictionary dictionary];
  v46 = [v42 members];
  v66 = _NSConcreteStackBlock;
  v67 = 3221225472;
  v68 = sub_10012E198;
  v69 = &unk_10026C9F0;
  v47 = v44;
  v70 = v47;
  v71 = v43;
  v48 = v45;
  v72 = v48;
  v49 = v43;
  [v46 enumerateObjectsUsingBlock:&v66];

  sub_10018BB90(v5, v47);
  sub_10018BBA4(v5, v48);
  v50 = [v42 members];
  v51 = [v50 count];
  if (v5)
  {
    *(v5 + 24) = v51 >= 6;

    v52 = sub_10012EB7C();
  }

  else
  {

    v52 = 0;
  }

  [v52 reloadData];
  v53 = +[NSNotificationCenter defaultCenter];
  [v53 addObserver:v5 selector:"contentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];

  sub_10012EBA0();
}

- (int64_t)logicalSectionFromSectionNumber:(int64_t)a3
{
  sub_10012EBBC();
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  sub_10012EB94();
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v24 = 0;
    v10 = 0;
    v11 = MEMORY[0];
    v12 = NRDevicePropertySerialNumber;
    do
    {
      v13 = 0;
      do
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(8 * v13);
        if (v4)
        {
          v15 = *(v4 + 40);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        v17 = [v14 appleID];
        v18 = [v16 objectForKey:v17];

        v19 = [v18 valueForProperty:v12];
        v20 = v19;
        if (v18 && (!v4 ? (v21 = 0) : (v21 = *(v4 + 48)), ([v19 isEqualToString:v21] & 1) == 0))
        {
          ++v24;
        }

        else
        {
          ++v10;
        }

        v13 = v13 + 1;
      }

      while (v9 != v13);
      sub_10012EB94();
      v22 = [v6 countByEnumeratingWithState:? objects:? count:?];
      v9 = v22;
    }

    while (v22);
  }

  sub_10012EBA0();
  return result;
}

- (id)familyMemberAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[COSTinkerFamilyMemberSelectionViewController logicalSectionFromSectionNumber:](self, "logicalSectionFromSectionNumber:", [v4 section]);
  v6 = [v4 row];

  if (self)
  {
    activePairingDeviceSerialNumber = self->_activePairingDeviceSerialNumber;
  }

  else
  {
    activePairingDeviceSerialNumber = 0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018BEE0;
  v12[3] = &unk_10026CA18;
  v12[4] = self;
  v13 = activePairingDeviceSerialNumber;
  v8 = v13;
  v9 = objc_retainBlock(v12);
  v10 = (v9[2])(v9, v6, v5 == 0);

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  sub_10012EBBC();
  v5 = v4;
  [v4 logicalSectionFromSectionNumber:v6];
  if (v5)
  {
    v7 = v5[4];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  sub_10012EB94();
  obj = v9;
  v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = MEMORY[0];
    v15 = NRDevicePropertySerialNumber;
    do
    {
      v16 = 0;
      do
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(8 * v16);
        if (v5)
        {
          v18 = v5[5];
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        v20 = [v17 appleID];
        v21 = [v19 objectForKey:v20];

        v22 = [v21 valueForProperty:v15];
        v23 = v22;
        if (v21 && (!v5 ? (v24 = 0) : (v24 = v5[6]), ([v22 isEqualToString:v24] & 1) == 0))
        {
          ++v12;
        }

        else
        {
          ++v13;
        }

        v16 = v16 + 1;
      }

      while (v11 != v16);
      sub_10012EB94();
      v25 = [obj countByEnumeratingWithState:? objects:? count:?];
      v11 = v25;
    }

    while (v25);
  }

  sub_10012EBA0();
  return result;
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  if (self)
  {
    self = self->_tableView;
  }

  [(COSTinkerFamilyMemberSelectionViewController *)self reloadData];
}

@end
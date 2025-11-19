@interface PHContactsAndBlockTableViewController
- (BOOL)areUnknownContactsBlocked;
- (CNAvatarViewControllerSettings)avatarViewControllerSettings;
- (PHContactsAndBlockTableViewController)initWithContactArray:(id)a3 unknownContacts:(id)a4 contactHandles:(id)a5 tableViewModel:(id)a6;
- (id)contactAtIndex:(int64_t)a3;
- (id)contactForContact:(id)a3 contactStore:(id)a4;
- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4;
- (id)handleAtIndex:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)reportSectionNeedsUpdate;
- (void)setUpReportAndBlockSection;
- (void)setUpTableView;
- (void)showBlockAllAlert;
- (void)showBlockUnknownAlert;
- (void)showReportAlert;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PHContactsAndBlockTableViewController

- (PHContactsAndBlockTableViewController)initWithContactArray:(id)a3 unknownContacts:(id)a4 contactHandles:(id)a5 tableViewModel:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = PHContactsAndBlockTableViewController;
  v15 = [(PHTableViewController *)&v20 initWithStyle:2];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contactArray, a3);
    objc_storeStrong(&v16->_unknownContacts, a4);
    objc_storeStrong(&v16->_contactHandles, a5);
    [(PHContactsAndBlockTableViewController *)v16 setTableViewModel:v14];
    v17 = objc_alloc_init(CNContactFormatter);
    [(PHContactsAndBlockTableViewController *)v16 setContactFormatter:v17];

    v18 = [(PHContactsAndBlockTableViewController *)v16 contactFormatter];
    [v18 setStyle:0];
  }

  return v16;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PHContactsAndBlockTableViewController;
  [(PHTableViewController *)&v6 viewDidLoad];
  [(PHContactsAndBlockTableViewController *)self setUpTableView];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"reportSectionNeedsUpdate" name:TUPrivacyRulesChangedNotification object:0];

  v7 = objc_opt_class();
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(PHContactsAndBlockTableViewController *)self registerForTraitChanges:v4 withAction:"reportSectionNeedsUpdate"];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHContactsAndBlockTableViewController;
  [(PHTableViewController *)&v4 dealloc];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
  }

  else
  {
    [(PHContactsAndBlockTableViewController *)self contactArray];
  }
  v4 = ;
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section])
  {
    v15 = +[(PHTableViewCell *)PHContactsTableViewCell];
    v14 = [v6 dequeueReusableCellWithIdentifier:v15 forIndexPath:v7];

    v10 = -[PHContactsAndBlockTableViewController contactAtIndex:](self, "contactAtIndex:", [v7 row]);
    v16 = -[PHContactsAndBlockTableViewController handleAtIndex:](self, "handleAtIndex:", [v7 row]);
    if (v10)
    {
      v17 = [v14 avatarViewController];
      if (!v17)
      {
        v18 = [CNAvatarViewController alloc];
        v19 = [(PHContactsAndBlockTableViewController *)self avatarViewControllerSettings];
        v17 = [v18 initWithSettings:v19];

        [v17 setObjectViewControllerDelegate:self];
        [v14 setAvatarViewController:v17];
      }

      v39 = v10;
      v20 = [NSArray arrayWithObjects:&v39 count:1];
      v21 = [v14 avatarViewController];
      [v21 setContacts:v20];

      v22 = [(PHContactsAndBlockTableViewController *)self contactFormatter];
      v23 = [v22 stringFromContact:v10];

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = [v16 value];
        if (!v24)
        {
          v32 = +[NSBundle mainBundle];
          v24 = [v32 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_10028F310 table:@"PHRecents"];
        }
      }

      v33 = [v14 titleLabel];
      [v33 setText:v24];

      v34 = [v14 titleLabel];
      [v34 setNumberOfLines:1];

      v35 = [v14 titleLabel];
      [v35 setLineBreakMode:4];
    }

    goto LABEL_28;
  }

  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "loading isBlocked:", v38, 2u);
  }

  v9 = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v11 = +[PHReportTableViewCell reuseIdentifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = [v6 dequeueReusableCellWithIdentifier:v10];
    if (v13)
    {
      v14 = v13;
      goto LABEL_29;
    }

    v31 = PHReportTableViewCell;
    goto LABEL_21;
  }

  v25 = +[PHBlockTableViewCell reuseIdentifier];
  v26 = [v10 isEqualToString:v25];

  if (!v26)
  {
    v31 = PHBlockTableViewCell;
LABEL_21:
    v16 = [(__objc2_class *)v31 reuseIdentifier];
    v14 = [v6 dequeueReusableCellWithIdentifier:v16 forIndexPath:v7];
    goto LABEL_28;
  }

  v14 = [v6 dequeueReusableCellWithIdentifier:v10];
  if (!v14)
  {
    v27 = +[PHBlockTableViewCell reuseIdentifier];
    v14 = [v6 dequeueReusableCellWithIdentifier:v27 forIndexPath:v7];
  }

  v28 = PHDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(PHContactsAndBlockTableViewController *)self areUnknownContactsBlocked];
    v38[0] = 67109120;
    v38[1] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "loading isBlocked: %d", v38, 8u);
  }

  if ([(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowBlockAll])
  {
    v30 = 0;
  }

  else
  {
    if (![(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowBlockUnknown])
    {
      goto LABEL_29;
    }

    v30 = 1;
  }

  v36 = [(PHContactsAndBlockTableViewController *)self areUnknownContactsBlocked];
  v16 = [(PHContactsAndBlockTableViewController *)self traitCollection];
  [v14 updateCellOfFlow:v30 isBlocked:v36 style:{objc_msgSend(v16, "userInterfaceStyle")}];
LABEL_28:

LABEL_29:

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v32 = a3;
  v6 = a4;
  if (([(PHContactsAndBlockTableViewController *)self isEditing]& 1) == 0)
  {
    v7 = [v32 cellForRowAtIndexPath:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = -[PHContactsAndBlockTableViewController contactAtIndex:](self, "contactAtIndex:", [v6 row]);
      v9 = [(PHContactsAndBlockTableViewController *)self customInfoButtonAction];

      if (v9)
      {
        [v32 rectForRowAtIndexPath:v6];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [(PHContactsAndBlockTableViewController *)self view];
        [v18 convertPoint:0 toView:{v11, v13}];
        v20 = v19;
        v22 = v21;

        v23 = [(PHContactsAndBlockTableViewController *)self customInfoButtonAction];
        v24 = [(PHContactsAndBlockTableViewController *)self view];
        (v23)[2](v23, v8, v24, v20, v22, v15, v17);

LABEL_23:
        goto LABEL_24;
      }

      v26 = -[PHContactsAndBlockTableViewController handleAtIndex:](self, "handleAtIndex:", [v6 row]);
      if ([v8 hasBeenPersisted])
      {
        [PHContactViewController viewControllerForContact:v8];
      }

      else
      {
        [PHContactViewController viewControllerForUnknownContact:v8];
      }
      v27 = ;
      v28 = v27;
      if (v27)
      {
        [v27 setHandle:v26];
        v29 = [(PHContactsAndBlockTableViewController *)self navigationController];
        [v29 pushViewController:v28 animated:1];

        [v28 setAllowsEditing:1];
        [v28 setAllowsActions:1];
        [v28 setActions:{objc_msgSend(v28, "actions") | 0x80}];
        v30 = +[CNContactStore suggestedContactStore];
        [v28 setContactStore:v30];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PHContactsAndBlockTableViewController *)self showReportAlert];
        }

        goto LABEL_22;
      }

      if (![(PHContactsAndBlockTableViewController *)self areUnknownContactsBlocked])
      {
        if ([(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowBlockAll])
        {
          [(PHContactsAndBlockTableViewController *)self showBlockAllAlert];
        }

        else if ([(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowBlockUnknown])
        {
          [(PHContactsAndBlockTableViewController *)self showBlockUnknownAlert];
        }

        v31 = [(PHContactsAndBlockTableViewController *)self tableViewModel];
        [v31 fetchSharing];

        goto LABEL_22;
      }

      v8 = [(PHContactsAndBlockTableViewController *)self tableViewModel];
      v25 = [(PHContactsAndBlockTableViewController *)self unknownContacts];
      [v8 unblockWithContacts:v25];
    }

LABEL_22:
    [v32 deselectRowAtIndexPath:v6 animated:0];
    goto LABEL_23;
  }

LABEL_24:
}

- (BOOL)areUnknownContactsBlocked
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(PHContactsAndBlockTableViewController *)self unknownContacts];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 &= [*(*(&v9 + 1) + 8 * i) mp_isBlocked];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & 1;
}

- (void)showBlockAllAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_REPORT_BLOCK_ALERT_TITLE" value:&stru_10028F310 table:@"PHRecents"];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"REPORT_FACETIME_ALERT_CANCEL" value:&stru_10028F310 table:@"PHRecents"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_BLOCK_ALL" value:&stru_10028F310 table:@"PHRecents"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __58__PHContactsAndBlockTableViewController_showBlockAllAlert__block_invoke;
  v12[3] = &unk_100285468;
  v12[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:2 handler:v12];

  [v5 addAction:v8];
  [v5 addAction:v11];
  [(PHContactsAndBlockTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

void __58__PHContactsAndBlockTableViewController_showBlockAllAlert__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) tableViewModel];
  v2 = [*(a1 + 32) unknownContacts];
  [v3 blockContacts:v2 safetyCheckPresenter:*(a1 + 32)];
}

- (void)showBlockUnknownAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_REPORT_BLOCK_ALERT_TITLE" value:&stru_10028F310 table:@"PHRecents"];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"REPORT_FACETIME_ALERT_CANCEL" value:&stru_10028F310 table:@"PHRecents"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_BLOCK_UNKNOWN" value:&stru_10028F310 table:@"PHRecents"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __62__PHContactsAndBlockTableViewController_showBlockUnknownAlert__block_invoke;
  v12[3] = &unk_100285468;
  v12[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:2 handler:v12];

  [v5 addAction:v8];
  [v5 addAction:v11];
  [(PHContactsAndBlockTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

void __62__PHContactsAndBlockTableViewController_showBlockUnknownAlert__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) tableViewModel];
  v2 = [*(a1 + 32) unknownContacts];
  [v3 blockContacts:v2 safetyCheckPresenter:*(a1 + 32)];
}

- (void)setUpReportAndBlockSection
{
  v3 = +[NSMutableArray array];
  [(PHContactsAndBlockTableViewController *)self setReportAndBlockSection:v3];

  if ([(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowReportInitiator])
  {
    v4 = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
    v5 = +[PHReportTableViewCell reuseIdentifier];
    [v4 addObject:v5];
  }

  if ([(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowBlockAll]|| [(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowBlockUnknown])
  {
    v7 = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
    v6 = +[PHBlockTableViewCell reuseIdentifier];
    [v7 addObject:v6];
  }
}

- (void)showReportAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"RECENTS_REPORT_SINGLE_PARTICIPANT_AlERT_MESSAGE" value:&stru_10028F310 table:@"PHRecents"];
  v5 = [(PHContactsAndBlockTableViewController *)self tableViewModel];
  v6 = [v5 formattedInitiatorValue];
  v7 = [NSString stringWithFormat:v4, v6];

  v8 = [UIAlertController alertControllerWithTitle:0 message:v7 preferredStyle:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"REPORT_FACETIME_ALERT_CANCEL" value:&stru_10028F310 table:@"PHRecents"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"REPORT_SINGLE_PARTICIPANT_AlERT_REPORT_TITLE" value:&stru_10028F310 table:@"PHRecents"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __56__PHContactsAndBlockTableViewController_showReportAlert__block_invoke;
  v15[3] = &unk_100285468;
  v15[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:2 handler:v15];

  [v8 addAction:v11];
  [v8 addAction:v14];
  [(PHContactsAndBlockTableViewController *)self presentViewController:v8 animated:1 completion:0];
}

void __56__PHContactsAndBlockTableViewController_showReportAlert__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  v2 = [v1 recentCall];
  [v1 reportWithRecentCall:v2];
}

- (id)contactAtIndex:(int64_t)a3
{
  v4 = [(PHContactsAndBlockTableViewController *)self contactArray];
  v5 = v4;
  if (a3 < 0 || [v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (id)handleAtIndex:(int64_t)a3
{
  v5 = [(PHContactsAndBlockTableViewController *)self contactHandles];
  if (a3 < 0 || (-[PHContactsAndBlockTableViewController contactHandles](self, "contactHandles"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 <= a3))
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (CNAvatarViewControllerSettings)avatarViewControllerSettings
{
  avatarViewControllerSettings = self->_avatarViewControllerSettings;
  if (!avatarViewControllerSettings)
  {
    v4 = +[CNAvatarViewControllerSettings defaultSettings];
    v5 = self->_avatarViewControllerSettings;
    self->_avatarViewControllerSettings = v4;

    avatarViewControllerSettings = self->_avatarViewControllerSettings;
  }

  return avatarViewControllerSettings;
}

- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 2)
  {
    if (v9)
    {
      v10 = [v5 value];
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v15, 0x16u);
    }

    v11 = [v5 value];
    v12 = TUFormattedPhoneNumber();
  }

  else
  {
    if (v9)
    {
      v13 = [v5 value];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v15, 0xCu);
    }

    v12 = [v5 value];
  }

  return v12;
}

- (void)setUpTableView
{
  v3 = [(PHContactsAndBlockTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[(PHTableViewCell *)PHContactsTableViewCell];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(PHContactsAndBlockTableViewController *)self tableView];
  v7 = objc_opt_class();
  v8 = +[PHBlockTableViewCell reuseIdentifier];
  [v6 registerClass:v7 forCellReuseIdentifier:v8];

  v9 = [(PHContactsAndBlockTableViewController *)self tableView];
  v10 = objc_opt_class();
  v11 = +[PHReportTableViewCell reuseIdentifier];
  [v9 registerClass:v10 forCellReuseIdentifier:v11];

  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v13 = [(PHContactsAndBlockTableViewController *)self tableView];
  [v13 setTableFooterView:v12];

  [(PHContactsAndBlockTableViewController *)self setUpReportAndBlockSection];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __55__PHContactsAndBlockTableViewController_setUpTableView__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __55__PHContactsAndBlockTableViewController_setUpTableView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = [*(a1 + 32) tableView];
  [v3 setNeedsLayout];
}

- (void)reportSectionNeedsUpdate
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "block cell update", buf, 2u);
  }

  v4 = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
    v7 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v6 count] - 1, 1);

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __65__PHContactsAndBlockTableViewController_reportSectionNeedsUpdate__block_invoke;
    v9[3] = &unk_1002852E0;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    [UIView performWithoutAnimation:v9];
  }
}

void __65__PHContactsAndBlockTableViewController_reportSectionNeedsUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v4 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 reconfigureRowsAtIndexPaths:v3];
}

- (id)contactForContact:(id)a3 contactStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[CNUIFavoritesEntryPicker descriptorForRequiredKeys];
  v23 = v7;
  v8 = [NSArray arrayWithObjects:&v23 count:1];

  if ([v5 areKeysAvailable:v8])
  {
    v9 = v5;
  }

  else
  {
    v10 = [NSMutableArray arrayWithArray:v8];
    v11 = [v5 availableKeyDescriptor];
    if (v11)
    {
      [v10 addObject:v11];
    }

    v12 = [v5 identifier];
    v16 = 0;
    v9 = [v6 unifiedContactWithIdentifier:v12 keysToFetch:v10 error:&v16];
    v13 = v16;

    if (!v9)
    {
      v14 = PHDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = v5;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not retrieve a compatible contact using contact (%@) and contact store (%@) due to an error (%@).", buf, 0x20u);
      }
    }
  }

  return v9;
}

@end
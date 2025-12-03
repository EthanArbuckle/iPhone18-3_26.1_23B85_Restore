@interface PHContactsAndBlockTableViewController
- (BOOL)areUnknownContactsBlocked;
- (CNAvatarViewControllerSettings)avatarViewControllerSettings;
- (PHContactsAndBlockTableViewController)initWithContactArray:(id)array unknownContacts:(id)contacts contactHandles:(id)handles tableViewModel:(id)model;
- (id)contactAtIndex:(int64_t)index;
- (id)contactForContact:(id)contact contactStore:(id)store;
- (id)formattedNameForHandle:(id)handle countryCode:(id)code;
- (id)handleAtIndex:(int64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)reportSectionNeedsUpdate;
- (void)setUpReportAndBlockSection;
- (void)setUpTableView;
- (void)showBlockAllAlert;
- (void)showBlockUnknownAlert;
- (void)showReportAlert;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PHContactsAndBlockTableViewController

- (PHContactsAndBlockTableViewController)initWithContactArray:(id)array unknownContacts:(id)contacts contactHandles:(id)handles tableViewModel:(id)model
{
  arrayCopy = array;
  contactsCopy = contacts;
  handlesCopy = handles;
  modelCopy = model;
  v20.receiver = self;
  v20.super_class = PHContactsAndBlockTableViewController;
  v15 = [(PHTableViewController *)&v20 initWithStyle:2];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contactArray, array);
    objc_storeStrong(&v16->_unknownContacts, contacts);
    objc_storeStrong(&v16->_contactHandles, handles);
    [(PHContactsAndBlockTableViewController *)v16 setTableViewModel:modelCopy];
    v17 = objc_alloc_init(CNContactFormatter);
    [(PHContactsAndBlockTableViewController *)v16 setContactFormatter:v17];

    contactFormatter = [(PHContactsAndBlockTableViewController *)v16 contactFormatter];
    [contactFormatter setStyle:0];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v15 = +[(PHTableViewCell *)PHContactsTableViewCell];
    v14 = [viewCopy dequeueReusableCellWithIdentifier:v15 forIndexPath:pathCopy];

    v10 = -[PHContactsAndBlockTableViewController contactAtIndex:](self, "contactAtIndex:", [pathCopy row]);
    reuseIdentifier = -[PHContactsAndBlockTableViewController handleAtIndex:](self, "handleAtIndex:", [pathCopy row]);
    if (v10)
    {
      avatarViewController = [v14 avatarViewController];
      if (!avatarViewController)
      {
        v18 = [CNAvatarViewController alloc];
        avatarViewControllerSettings = [(PHContactsAndBlockTableViewController *)self avatarViewControllerSettings];
        avatarViewController = [v18 initWithSettings:avatarViewControllerSettings];

        [avatarViewController setObjectViewControllerDelegate:self];
        [v14 setAvatarViewController:avatarViewController];
      }

      v39 = v10;
      v20 = [NSArray arrayWithObjects:&v39 count:1];
      avatarViewController2 = [v14 avatarViewController];
      [avatarViewController2 setContacts:v20];

      contactFormatter = [(PHContactsAndBlockTableViewController *)self contactFormatter];
      v23 = [contactFormatter stringFromContact:v10];

      if (v23)
      {
        value = v23;
      }

      else
      {
        value = [reuseIdentifier value];
        if (!value)
        {
          v32 = +[NSBundle mainBundle];
          value = [v32 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_10010E930 table:@"PHRecents"];
        }
      }

      titleLabel = [v14 titleLabel];
      [titleLabel setText:value];

      titleLabel2 = [v14 titleLabel];
      [titleLabel2 setNumberOfLines:1];

      titleLabel3 = [v14 titleLabel];
      [titleLabel3 setLineBreakMode:4];
    }

    goto LABEL_28;
  }

  v8 = sub_100003B9C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "loading isBlocked:", v38, 2u);
  }

  reportAndBlockSection = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
  v10 = [reportAndBlockSection objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v11 = +[PHReportTableViewCell reuseIdentifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v10];
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
    reuseIdentifier = [(__objc2_class *)v31 reuseIdentifier];
    v14 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:pathCopy];
    goto LABEL_28;
  }

  v14 = [viewCopy dequeueReusableCellWithIdentifier:v10];
  if (!v14)
  {
    v27 = +[PHBlockTableViewCell reuseIdentifier];
    v14 = [viewCopy dequeueReusableCellWithIdentifier:v27 forIndexPath:pathCopy];
  }

  v28 = sub_100003B9C();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    areUnknownContactsBlocked = [(PHContactsAndBlockTableViewController *)self areUnknownContactsBlocked];
    v38[0] = 67109120;
    v38[1] = areUnknownContactsBlocked;
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

  areUnknownContactsBlocked2 = [(PHContactsAndBlockTableViewController *)self areUnknownContactsBlocked];
  reuseIdentifier = [(PHContactsAndBlockTableViewController *)self traitCollection];
  [v14 updateCellOfFlow:v30 isBlocked:areUnknownContactsBlocked2 style:{objc_msgSend(reuseIdentifier, "userInterfaceStyle")}];
LABEL_28:

LABEL_29:

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([(PHContactsAndBlockTableViewController *)self isEditing]& 1) == 0)
  {
    v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tableViewModel2 = -[PHContactsAndBlockTableViewController contactAtIndex:](self, "contactAtIndex:", [pathCopy row]);
      customInfoButtonAction = [(PHContactsAndBlockTableViewController *)self customInfoButtonAction];

      if (customInfoButtonAction)
      {
        [viewCopy rectForRowAtIndexPath:pathCopy];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        view = [(PHContactsAndBlockTableViewController *)self view];
        [view convertPoint:0 toView:{v11, v13}];
        v20 = v19;
        v22 = v21;

        customInfoButtonAction2 = [(PHContactsAndBlockTableViewController *)self customInfoButtonAction];
        view2 = [(PHContactsAndBlockTableViewController *)self view];
        (customInfoButtonAction2)[2](customInfoButtonAction2, tableViewModel2, view2, v20, v22, v15, v17);

LABEL_23:
        goto LABEL_24;
      }

      v26 = -[PHContactsAndBlockTableViewController handleAtIndex:](self, "handleAtIndex:", [pathCopy row]);
      if ([tableViewModel2 hasBeenPersisted])
      {
        [PHContactViewController viewControllerForContact:tableViewModel2];
      }

      else
      {
        [PHContactViewController viewControllerForUnknownContact:tableViewModel2];
      }
      v27 = ;
      v28 = v27;
      if (v27)
      {
        [v27 setHandle:v26];
        navigationController = [(PHContactsAndBlockTableViewController *)self navigationController];
        [navigationController pushViewController:v28 animated:1];

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

        tableViewModel = [(PHContactsAndBlockTableViewController *)self tableViewModel];
        [tableViewModel fetchSharing];

        goto LABEL_22;
      }

      tableViewModel2 = [(PHContactsAndBlockTableViewController *)self tableViewModel];
      unknownContacts = [(PHContactsAndBlockTableViewController *)self unknownContacts];
      [tableViewModel2 unblockWithContacts:unknownContacts];
    }

LABEL_22:
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
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
  unknownContacts = [(PHContactsAndBlockTableViewController *)self unknownContacts];
  v3 = [unknownContacts countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(unknownContacts);
        }

        v6 &= [*(*(&v9 + 1) + 8 * i) mp_isBlocked];
      }

      v4 = [unknownContacts countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v4 = [v3 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_REPORT_BLOCK_ALERT_TITLE" value:&stru_10010E930 table:@"PHRecents"];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"REPORT_FACETIME_ALERT_CANCEL" value:&stru_10010E930 table:@"PHRecents"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_BLOCK_ALL" value:&stru_10010E930 table:@"PHRecents"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002CC64;
  v12[3] = &unk_10010B308;
  v12[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:2 handler:v12];

  [v5 addAction:v8];
  [v5 addAction:v11];
  [(PHContactsAndBlockTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)showBlockUnknownAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_REPORT_BLOCK_ALERT_TITLE" value:&stru_10010E930 table:@"PHRecents"];
  v5 = [UIAlertController alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"REPORT_FACETIME_ALERT_CANCEL" value:&stru_10010E930 table:@"PHRecents"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_BLOCK_UNKNOWN" value:&stru_10010E930 table:@"PHRecents"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002CEB4;
  v12[3] = &unk_10010B308;
  v12[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:2 handler:v12];

  [v5 addAction:v8];
  [v5 addAction:v11];
  [(PHContactsAndBlockTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)setUpReportAndBlockSection
{
  v3 = +[NSMutableArray array];
  [(PHContactsAndBlockTableViewController *)self setReportAndBlockSection:v3];

  if ([(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowReportInitiator])
  {
    reportAndBlockSection = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
    v5 = +[PHReportTableViewCell reuseIdentifier];
    [reportAndBlockSection addObject:v5];
  }

  if ([(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowBlockAll]|| [(PHContactsReportAndBlockTableViewModel *)self->_tableViewModel shouldShowBlockUnknown])
  {
    reportAndBlockSection2 = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
    v6 = +[PHBlockTableViewCell reuseIdentifier];
    [reportAndBlockSection2 addObject:v6];
  }
}

- (void)showReportAlert
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"RECENTS_REPORT_SINGLE_PARTICIPANT_AlERT_MESSAGE" value:&stru_10010E930 table:@"PHRecents"];
  tableViewModel = [(PHContactsAndBlockTableViewController *)self tableViewModel];
  formattedInitiatorValue = [tableViewModel formattedInitiatorValue];
  v7 = [NSString stringWithFormat:v4, formattedInitiatorValue];

  v8 = [UIAlertController alertControllerWithTitle:0 message:v7 preferredStyle:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"REPORT_FACETIME_ALERT_CANCEL" value:&stru_10010E930 table:@"PHRecents"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"REPORT_SINGLE_PARTICIPANT_AlERT_REPORT_TITLE" value:&stru_10010E930 table:@"PHRecents"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002D25C;
  v15[3] = &unk_10010B308;
  v15[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:2 handler:v15];

  [v8 addAction:v11];
  [v8 addAction:v14];
  [(PHContactsAndBlockTableViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (id)contactAtIndex:(int64_t)index
{
  contactArray = [(PHContactsAndBlockTableViewController *)self contactArray];
  v5 = contactArray;
  if (index < 0 || [contactArray count] <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:index];
  }

  return v6;
}

- (id)handleAtIndex:(int64_t)index
{
  contactHandles = [(PHContactsAndBlockTableViewController *)self contactHandles];
  if (index < 0 || (-[PHContactsAndBlockTableViewController contactHandles](self, "contactHandles"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 <= index))
  {
    v8 = 0;
  }

  else
  {
    v8 = [contactHandles objectAtIndexedSubscript:index];
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

- (id)formattedNameForHandle:(id)handle countryCode:(id)code
{
  handleCopy = handle;
  codeCopy = code;
  type = [handleCopy type];
  v8 = sub_100003B9C();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (type == 2)
  {
    if (v9)
    {
      value = [handleCopy value];
      v15 = 138412546;
      v16 = value;
      v17 = 2112;
      v18 = codeCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v15, 0x16u);
    }

    value2 = [handleCopy value];
    value4 = TUFormattedPhoneNumber();
  }

  else
  {
    if (v9)
    {
      value3 = [handleCopy value];
      v15 = 138412290;
      v16 = value3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v15, 0xCu);
    }

    value4 = [handleCopy value];
  }

  return value4;
}

- (void)setUpTableView
{
  tableView = [(PHContactsAndBlockTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[(PHTableViewCell *)PHContactsTableViewCell];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  tableView2 = [(PHContactsAndBlockTableViewController *)self tableView];
  v7 = objc_opt_class();
  v8 = +[PHBlockTableViewCell reuseIdentifier];
  [tableView2 registerClass:v7 forCellReuseIdentifier:v8];

  tableView3 = [(PHContactsAndBlockTableViewController *)self tableView];
  v10 = objc_opt_class();
  v11 = +[PHReportTableViewCell reuseIdentifier];
  [tableView3 registerClass:v10 forCellReuseIdentifier:v11];

  v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView4 = [(PHContactsAndBlockTableViewController *)self tableView];
  [tableView4 setTableFooterView:v12];

  [(PHContactsAndBlockTableViewController *)self setUpReportAndBlockSection];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D768;
  block[3] = &unk_10010AD48;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)reportSectionNeedsUpdate
{
  v3 = sub_100003B9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "block cell update", buf, 2u);
  }

  reportAndBlockSection = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
  v5 = [reportAndBlockSection count];

  if (v5)
  {
    reportAndBlockSection2 = [(PHContactsAndBlockTableViewController *)self reportAndBlockSection];
    v7 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [reportAndBlockSection2 count] - 1, 1);

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002D90C;
    v9[3] = &unk_10010B008;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    [UIView performWithoutAnimation:v9];
  }
}

- (id)contactForContact:(id)contact contactStore:(id)store
{
  contactCopy = contact;
  storeCopy = store;
  v7 = +[CNUIFavoritesEntryPicker descriptorForRequiredKeys];
  v23 = v7;
  v8 = [NSArray arrayWithObjects:&v23 count:1];

  if ([contactCopy areKeysAvailable:v8])
  {
    v9 = contactCopy;
  }

  else
  {
    v10 = [NSMutableArray arrayWithArray:v8];
    availableKeyDescriptor = [contactCopy availableKeyDescriptor];
    if (availableKeyDescriptor)
    {
      [v10 addObject:availableKeyDescriptor];
    }

    identifier = [contactCopy identifier];
    v16 = 0;
    v9 = [storeCopy unifiedContactWithIdentifier:identifier keysToFetch:v10 error:&v16];
    v13 = v16;

    if (!v9)
    {
      v14 = sub_100003B9C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v18 = contactCopy;
        v19 = 2112;
        v20 = storeCopy;
        v21 = 2112;
        v22 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not retrieve a compatible contact using contact (%@) and contact store (%@) due to an error (%@).", buf, 0x20u);
      }
    }
  }

  return v9;
}

@end
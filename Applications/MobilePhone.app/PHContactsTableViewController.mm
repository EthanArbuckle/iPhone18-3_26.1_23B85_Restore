@interface PHContactsTableViewController
- (CNAvatarViewControllerSettings)avatarViewControllerSettings;
- (PHContactsTableViewController)initWithContactArray:(id)a3 contactHandles:(id)a4;
- (id)contactAtIndex:(int64_t)a3;
- (id)contactForContact:(id)a3 contactStore:(id)a4;
- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4;
- (id)handleAtIndex:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setUpTableView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PHContactsTableViewController

- (PHContactsTableViewController)initWithContactArray:(id)a3 contactHandles:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PHContactsTableViewController;
  v9 = [(PHContactsTableViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactArray, a3);
    objc_storeStrong(&v10->_contactHandles, a4);
    v11 = objc_alloc_init(CNContactFormatter);
    [(PHContactsTableViewController *)v10 setContactFormatter:v11];

    v12 = [(PHContactsTableViewController *)v10 contactFormatter];
    [v12 setStyle:0];
  }

  return v10;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PHContactsTableViewController;
  [(PHTableViewController *)&v3 viewDidLoad];
  [(PHContactsTableViewController *)self setUpTableView];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PHContactsTableViewController *)self contactArray:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[(PHTableViewCell *)PHContactsTableViewCell];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = -[PHContactsTableViewController contactAtIndex:](self, "contactAtIndex:", [v6 row]);
  v11 = [v6 row];

  v12 = [(PHContactsTableViewController *)self handleAtIndex:v11];
  if (v10)
  {
    v13 = [v9 avatarViewController];
    if (!v13)
    {
      v14 = [CNAvatarViewController alloc];
      v15 = [(PHContactsTableViewController *)self avatarViewControllerSettings];
      v13 = [v14 initWithSettings:v15];

      [v13 setObjectViewControllerDelegate:self];
      [v9 setAvatarViewController:v13];
    }

    v26 = v10;
    v16 = [NSArray arrayWithObjects:&v26 count:1];
    v17 = [v9 avatarViewController];
    [v17 setContacts:v16];

    v18 = [(PHContactsTableViewController *)self contactFormatter];
    v19 = [v18 stringFromContact:v10];

    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = [v12 value];
      if (!v20)
      {
        v21 = +[NSBundle mainBundle];
        v20 = [v21 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_10028F310 table:@"PHRecents"];
      }
    }

    v22 = [v9 titleLabel];
    [v22 setText:v20];

    v23 = [v9 titleLabel];
    [v23 setNumberOfLines:1];

    v24 = [v9 titleLabel];
    [v24 setLineBreakMode:4];
  }

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v27 = a3;
  v6 = a4;
  if (([(PHContactsTableViewController *)self isEditing]& 1) == 0)
  {
    v7 = -[PHContactsTableViewController contactAtIndex:](self, "contactAtIndex:", [v6 row]);
    v8 = [(PHContactsTableViewController *)self customInfoButtonAction];

    if (v8)
    {
      [v27 rectForRowAtIndexPath:v6];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [(PHContactsTableViewController *)self view];
      [v17 convertPoint:0 toView:{v10, v12}];
      v19 = v18;
      v21 = v20;

      v22 = [(PHContactsTableViewController *)self customInfoButtonAction];
      v23 = [(PHContactsTableViewController *)self view];
      (v22)[2](v22, v7, v23, v19, v21, v14, v16);
    }

    else
    {
      v22 = -[PHContactsTableViewController handleAtIndex:](self, "handleAtIndex:", [v6 row]);
      if ([v7 hasBeenPersisted])
      {
        [PHContactViewController viewControllerForContact:v7];
      }

      else
      {
        [PHContactViewController viewControllerForUnknownContact:v7];
      }
      v24 = ;
      v23 = v24;
      if (v24)
      {
        [v24 setHandle:v22];
        v25 = [(PHContactsTableViewController *)self navigationController];
        [v25 pushViewController:v23 animated:1];

        [v23 setAllowsEditing:1];
        [v23 setAllowsActions:1];
        [v23 setActions:{objc_msgSend(v23, "actions") | 0x80}];
        v26 = +[CNContactStore suggestedContactStore];
        [v23 setContactStore:v26];
      }

      [v27 deselectRowAtIndexPath:v6 animated:0];
    }
  }
}

- (id)contactAtIndex:(int64_t)a3
{
  v4 = [(PHContactsTableViewController *)self contactArray];
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
  v5 = [(PHContactsTableViewController *)self contactHandles];
  if (a3 < 0 || (-[PHContactsTableViewController contactHandles](self, "contactHandles"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 <= a3))
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
  v3 = [(PHContactsTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[(PHTableViewCell *)PHContactsTableViewCell];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v7 = [(PHContactsTableViewController *)self tableView];
  [v7 setTableFooterView:v6];

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 preferredContentSizeCategory];
  [(PHContactTableViewCell *)PHContactsTableViewCell separatorInsetForContentSizeCategory:v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(PHContactsTableViewController *)self tableView];
  [v18 setSeparatorInset:{v11, v13, v15, v17}];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __47__PHContactsTableViewController_setUpTableView__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void __47__PHContactsTableViewController_setUpTableView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];

  v3 = [*(a1 + 32) tableView];
  [v3 setNeedsLayout];
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
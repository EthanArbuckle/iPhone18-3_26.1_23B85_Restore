@interface PHContactsTableViewController
- (CNAvatarViewControllerSettings)avatarViewControllerSettings;
- (PHContactsTableViewController)initWithContactArray:(id)array contactHandles:(id)handles;
- (id)contactAtIndex:(int64_t)index;
- (id)contactForContact:(id)contact contactStore:(id)store;
- (id)formattedNameForHandle:(id)handle countryCode:(id)code;
- (id)handleAtIndex:(int64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setUpTableView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PHContactsTableViewController

- (PHContactsTableViewController)initWithContactArray:(id)array contactHandles:(id)handles
{
  arrayCopy = array;
  handlesCopy = handles;
  v14.receiver = self;
  v14.super_class = PHContactsTableViewController;
  v9 = [(PHContactsTableViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactArray, array);
    objc_storeStrong(&v10->_contactHandles, handles);
    v11 = objc_alloc_init(CNContactFormatter);
    [(PHContactsTableViewController *)v10 setContactFormatter:v11];

    contactFormatter = [(PHContactsTableViewController *)v10 contactFormatter];
    [contactFormatter setStyle:0];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PHContactsTableViewController *)self contactArray:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[(PHTableViewCell *)PHContactsTableViewCell];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  v10 = -[PHContactsTableViewController contactAtIndex:](self, "contactAtIndex:", [pathCopy row]);
  v11 = [pathCopy row];

  v12 = [(PHContactsTableViewController *)self handleAtIndex:v11];
  if (v10)
  {
    avatarViewController = [v9 avatarViewController];
    if (!avatarViewController)
    {
      v14 = [CNAvatarViewController alloc];
      avatarViewControllerSettings = [(PHContactsTableViewController *)self avatarViewControllerSettings];
      avatarViewController = [v14 initWithSettings:avatarViewControllerSettings];

      [avatarViewController setObjectViewControllerDelegate:self];
      [v9 setAvatarViewController:avatarViewController];
    }

    v27 = v10;
    v16 = [NSArray arrayWithObjects:&v27 count:1];
    avatarViewController2 = [v9 avatarViewController];
    [avatarViewController2 setContacts:v16];

    contactFormatter = [(PHContactsTableViewController *)self contactFormatter];
    v19 = [contactFormatter stringFromContact:v10];

    if (v19)
    {
      value = v19;
    }

    else
    {
      value = [v12 value];
      if (!value)
      {
        v21 = +[NSBundle mainBundle];
        value = [v21 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_10010E930 table:@"PHRecents"];
      }
    }

    titleLabel = [v9 titleLabel];
    [titleLabel setText:value];

    titleLabel2 = [v9 titleLabel];
    [titleLabel2 setNumberOfLines:1];

    titleLabel3 = [v9 titleLabel];
    [titleLabel3 setLineBreakMode:4];

    v25 = +[UIColor clearColor];
    [v9 setBackgroundColor:v25];
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([(PHContactsTableViewController *)self isEditing]& 1) == 0)
  {
    v7 = -[PHContactsTableViewController contactAtIndex:](self, "contactAtIndex:", [pathCopy row]);
    customInfoButtonAction = [(PHContactsTableViewController *)self customInfoButtonAction];

    if (customInfoButtonAction)
    {
      [viewCopy rectForRowAtIndexPath:pathCopy];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      view = [(PHContactsTableViewController *)self view];
      [view convertPoint:0 toView:{v10, v12}];
      v19 = v18;
      v21 = v20;

      customInfoButtonAction2 = [(PHContactsTableViewController *)self customInfoButtonAction];
      view2 = [(PHContactsTableViewController *)self view];
      (customInfoButtonAction2)[2](customInfoButtonAction2, v7, view2, v19, v21, v14, v16);
    }

    else
    {
      customInfoButtonAction2 = -[PHContactsTableViewController handleAtIndex:](self, "handleAtIndex:", [pathCopy row]);
      if ([v7 hasBeenPersisted])
      {
        [PHContactViewController viewControllerForContact:v7];
      }

      else
      {
        [PHContactViewController viewControllerForUnknownContact:v7];
      }
      v24 = ;
      view2 = v24;
      if (v24)
      {
        [v24 setHandle:customInfoButtonAction2];
        navigationController = [(PHContactsTableViewController *)self navigationController];
        [navigationController pushViewController:view2 animated:1];

        [view2 setAllowsEditing:1];
        [view2 setAllowsActions:1];
        [view2 setActions:{objc_msgSend(view2, "actions") | 0x80}];
        v26 = +[CNContactStore suggestedContactStore];
        [view2 setContactStore:v26];
      }

      [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
    }
  }
}

- (id)contactAtIndex:(int64_t)index
{
  contactArray = [(PHContactsTableViewController *)self contactArray];
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
  contactHandles = [(PHContactsTableViewController *)self contactHandles];
  if (index < 0 || (-[PHContactsTableViewController contactHandles](self, "contactHandles"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 <= index))
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
  tableView = [(PHContactsTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[(PHTableViewCell *)PHContactsTableViewCell];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView2 = [(PHContactsTableViewController *)self tableView];
  [tableView2 setTableFooterView:v6];

  v8 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v8 preferredContentSizeCategory];
  [(PHContactTableViewCell *)PHContactsTableViewCell separatorInsetForContentSizeCategory:preferredContentSizeCategory];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  tableView3 = [(PHContactsTableViewController *)self tableView];
  [tableView3 setSeparatorInset:{v11, v13, v15, v17}];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013FE4;
  block[3] = &unk_10010AD48;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
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